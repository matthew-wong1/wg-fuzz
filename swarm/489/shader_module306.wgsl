struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 18> = array<vec2<i32>, 18>(vec2<i32>(-1i, 2147483647i), vec2<i32>(-23348i, 0i), vec2<i32>(-44188i, 1i), vec2<i32>(81854i, i32(-2147483648)), vec2<i32>(-29560i, i32(-2147483648)), vec2<i32>(-5148i, -868i), vec2<i32>(-1i, 2147483647i), vec2<i32>(31845i, 1i), vec2<i32>(-51113i, 27496i), vec2<i32>(13553i, 11520i), vec2<i32>(35270i, 24423i), vec2<i32>(-31617i, 2147483647i), vec2<i32>(-10761i, 78022i), vec2<i32>(-62323i, 7077i), vec2<i32>(1i, 48527i), vec2<i32>(-24587i, i32(-2147483648)), vec2<i32>(1i, 2147483647i), vec2<i32>(1i, -38896i));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_3, arg_2: Struct_5) -> i32 {
    global0 = array<vec2<i32>, 18>();
    let var_0 = Struct_1(-2147483647i);
    global0 = array<vec2<i32>, 18>();
    var var_1 = arg_0.c.wwy;
    var_1 = arg_0.c.xyw;
    return -var_0.a;
}

fn func_2(arg_0: i32, arg_1: vec2<i32>, arg_2: i32, arg_3: u32) -> Struct_1 {
    var var_0 = vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(false, false, false)), true, false), func_3(Struct_4(Struct_2(Struct_1(65660i), Struct_1(57645i), vec4<bool>(false, true, false, false), Struct_1(u_input.c), Struct_1(-72369i)), Struct_1(arg_0), vec4<f32>(-419f, 764f, -1080f, -693f)), Struct_3(vec2<u32>(arg_3, arg_3), 0u, Struct_1(arg_2), Struct_2(Struct_1(-1i), Struct_1(7874i), vec4<bool>(true, false, true, false), Struct_1(1i), Struct_1(arg_0))), Struct_5(Struct_4(Struct_2(Struct_1(arg_0), Struct_1(-55206i), vec4<bool>(false, true, false, false), Struct_1(0i), Struct_1(2634i)), Struct_1(arg_2), vec4<f32>(981f, 443f, -1528f, -1224f)), Struct_1(arg_0), u_input.b.x)) <= -25694i)), all(vec2<bool>(true, any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true))))), true, (~(~arg_1.x) | _wgslsmith_div_i32(u_input.a.x, -u_input.a.x)) >= 35051i);
    var var_1 = !all(select(vec4<bool>(any(vec4<bool>(true, true, true, var_0.x)), var_0.x && var_0.x, var_0.x, false), select(!vec4<bool>(false, false, var_0.x, var_0.x), !vec4<bool>(false, var_0.x, true, var_0.x), select(vec4<bool>(false, var_0.x, false, var_0.x), vec4<bool>(true, true, var_0.x, true), vec4<bool>(var_0.x, var_0.x, var_0.x, true))), !select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(var_0.x, false, var_0.x, var_0.x))));
    var var_2 = _wgslsmith_sub_i32(-2147483647i, arg_1.x);
    var_1 = var_0.x;
    var_0 = select(vec4<bool>(var_0.x, true, var_0.x, !(all(vec3<bool>(false, var_0.x, false)) == false)), select(!select(vec4<bool>(false, true, true, var_0.x), !vec4<bool>(var_0.x, false, true, false), true), vec4<bool>(var_0.x, any(select(vec4<bool>(true, true, false, var_0.x), vec4<bool>(true, false, var_0.x, true), var_0.x)), true, var_0.x), true), select(!vec4<bool>(var_0.x || true, all(vec4<bool>(var_0.x, false, var_0.x, var_0.x)), arg_1.x != 38632i, var_0.x), vec4<bool>(var_0.x, true, all(!var_0.wx), all(select(vec2<bool>(false, false), var_0.wy, var_0.zx))), select(false, true | var_0.x, var_0.x && var_0.x)));
    return Struct_1(countOneBits(-4376i));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1) -> bool {
    let var_0 = select(select(!select(vec4<bool>(arg_0.x, false, arg_0.x, true), select(vec4<bool>(arg_0.x, true, arg_0.x, true), vec4<bool>(arg_0.x, false, true, false), vec4<bool>(true, arg_0.x, false, arg_0.x)), true), select(select(!vec4<bool>(false, false, false, arg_0.x), vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), arg_0.x), select(vec4<bool>(false, false, true, arg_0.x), !vec4<bool>(true, arg_0.x, false, true), !vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x)), false), vec4<bool>(false, arg_0.x, u_input.b.x <= u_input.b.x, arg_0.x)), select(!(!(!vec4<bool>(arg_0.x, arg_0.x, true, arg_0.x))), !select(!vec4<bool>(arg_0.x, arg_0.x, arg_0.x, false), vec4<bool>(true, arg_0.x, arg_0.x, arg_0.x), !arg_0.x), select(arg_0.x, true, arg_0.x)), vec4<bool>(arg_1.a > ~1i, !arg_0.x, arg_0.x, !(!arg_0.x)));
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    let var_1 = select(var_0.xx, !arg_0.yx, vec2<bool>(arg_0.x, true));
    return var_0.x;
}

fn func_1() -> bool {
    global0 = array<vec2<i32>, 18>();
    global0 = array<vec2<i32>, 18>();
    var var_0 = select(select(vec4<bool>(true, func_4(vec3<bool>(true, true, false), func_2(0i, vec2<i32>(u_input.c, u_input.c), u_input.c, 1u)), ~16776u >= _wgslsmith_dot_vec2_u32(u_input.b.zz, u_input.b.yw), true), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), any(vec4<bool>(true, true, true, false))), !select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true)))), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2268f)) == _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-315f - -1000f), _wgslsmith_f_op_f32(863f - -323f), u_input.b.x < 27912u)), any(!select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))), func_4(vec3<bool>(true, true, true), func_2(i32(-1i) * -2147483647i, u_input.a.yz, firstLeadingBit(u_input.a.x), 61629u & u_input.b.x)), any(vec3<bool>(true, true, func_4(vec3<bool>(false, true, false), Struct_1(2147483647i))))), u_input.b.x < ~(~u_input.b.x ^ countOneBits(4294967295u)));
    var var_1 = vec4<bool>(false, var_0.x, true, true);
    let var_2 = Struct_4(Struct_2(func_2(2147483647i, _wgslsmith_mod_vec2_i32(-vec2<i32>(u_input.a.x, u_input.a.x), max(vec2<i32>(-30604i, u_input.c), global0[_wgslsmith_index_u32(0u, 18u)])), _wgslsmith_sub_i32(firstTrailingBit(u_input.c), 37898i), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_mod_u32(4294967295u, u_input.b.x))), Struct_1(0i), !vec4<bool>(u_input.b.x <= u_input.b.x, true, false, !var_1.x), func_2(abs(u_input.c), reverseBits(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, u_input.b.x), 18u)]), _wgslsmith_mult_i32(u_input.c, select(u_input.c, u_input.c, var_1.x)), abs(u_input.b.x) ^ ~62813u), func_2(min(-23285i, u_input.a.x), vec2<i32>(19148i, 10983i >> (u_input.b.x % 32u)), 1i, ~8018u)), func_2(u_input.c, vec2<i32>(_wgslsmith_dot_vec4_i32(min(vec4<i32>(-44994i, u_input.a.x, -46329i, u_input.c), vec4<i32>(u_input.c, 12534i, 5143i, u_input.c)), abs(vec4<i32>(-1i, u_input.a.x, -34166i, -1i))), -abs(-34210i)), ~_wgslsmith_div_i32(u_input.c, u_input.a.x), 1u >> (abs(_wgslsmith_clamp_u32(1u, u_input.b.x, u_input.b.x)) % 32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(226f - 1000f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -533f) * -121f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-224f)) * _wgslsmith_f_op_f32(462f + -1927f)), false)), _wgslsmith_div_f32(517f, 915f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-191f, -792f) - _wgslsmith_f_op_f32(f32(-1f) * -1692f))));
    return var_2.a.c.x && func_4(!var_0.yxx, var_2.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(~select(~4294967295u, ~33138u, func_1()) >> (~(~1u) % 32u), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(firstTrailingBit(vec3<u32>(58405u, 4294967295u, u_input.b.x)), ~vec3<u32>(u_input.b.x, 58337u, u_input.b.x)), abs(vec3<u32>(1u, u_input.b.x, 4294967295u))), ~_wgslsmith_div_u32(~_wgslsmith_div_u32(4294967295u, u_input.b.x), ~u_input.b.x), 4294967295u);
    global0 = array<vec2<i32>, 18>();
    var var_1 = Struct_3(vec2<u32>(firstTrailingBit(abs(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.x, 47873u), vec2<u32>(4294967295u, 1u)))), firstLeadingBit(u_input.b.x)), u_input.b.x, func_2(~u_input.c, _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.c, 2618i), global0[_wgslsmith_index_u32(1u, 18u)]) << (~vec2<u32>(0u, u_input.b.x) % vec2<u32>(32u)), vec2<i32>(-1i) * -vec2<i32>(u_input.a.x, 2147483647i), vec2<i32>(_wgslsmith_mult_i32(-17534i, u_input.c), -u_input.a.x)), ~u_input.c, var_0.x), Struct_2(Struct_1(u_input.c), func_2(~(~u_input.a.x), _wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a.x, u_input.a.x)), -u_input.a.zz), _wgslsmith_sub_i32(-1i, -21844i), var_0.x), vec4<bool>(false, true, true, true), func_2(_wgslsmith_mult_i32(firstTrailingBit(u_input.a.x), ~u_input.c), abs(u_input.a.xz), 1i, u_input.b.x >> (firstTrailingBit(0u) % 32u)), Struct_1(u_input.a.x)));
    var_1 = Struct_3(_wgslsmith_add_vec2_u32(var_1.a, ~var_1.a), select(~15599u, _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(firstTrailingBit(var_0.xyw), var_0.yxz), _wgslsmith_clamp_u32(30237u, 4294967295u, 4294967295u) | var_1.b), !select(var_1.d.c.x, select(false, var_1.d.c.x, var_1.d.c.x), var_1.d.c.x && true)), var_1.d.a, var_1.d);
    global0 = array<vec2<i32>, 18>();
    var var_2 = firstTrailingBit(-29647i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(~(-13130i), -24406i, -1i, -2147483647i), vec4<i32>(35482i, -11114i, abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, var_1.d.a.a, var_1.d.e.a, -6316i), vec4<i32>(var_1.c.a, var_1.d.d.a, -4622i, u_input.a.x))), 1i)));
}

