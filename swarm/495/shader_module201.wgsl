struct Struct_1 {
    a: vec3<i32>,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: vec3<u32>,
    d: i32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<bool>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32> = vec2<f32>(-432f, -262f);

var<private> global1: array<vec3<u32>, 31>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec2<i32> {
    var var_0 = Struct_3(select(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, false))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, -2147483647i < u_input.c.x, any(vec3<bool>(false, false, false)), true), vec4<bool>(true, true, true, true)), true | (~3801u < (u_input.b << (0u % 32u)))), select(vec2<bool>(_wgslsmith_f_op_f32(select(global0.x, global0.x, false)) <= 400f, 4294967295u == (u_input.b & 12218u)), !(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), vec2<bool>(true, true)), ~global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(21812u, u_input.b), vec2<u32>(4294967295u, u_input.b)), 31u)], u_input.c.x);
    let var_1 = ~abs(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 49197u, var_0.c.x, 76078u), vec4<u32>(4294967295u, 27704u, 90234u, u_input.b)), countOneBits(~vec4<u32>(var_0.c.x, 1u, var_0.c.x, 15463u)), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b, 48266u, 1u, u_input.b), ~vec4<u32>(u_input.b, var_0.c.x, 4294967295u, var_0.c.x))));
    let var_2 = Struct_2(u_input.d.x << (21008u % 32u), 0u, ~var_1, Struct_1(-_wgslsmith_add_vec3_i32(u_input.c.zxy, u_input.d.wxz), 31428u));
    var var_3 = _wgslsmith_f_op_f32(sign(global0.x));
    global1 = array<vec3<u32>, 31>();
    return select(vec2<i32>(1i, 1i), -vec2<i32>(~reverseBits(-1616i), var_0.d), var_0.b.x);
}

fn func_2(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<u32>) -> vec3<i32> {
    var var_0 = -vec2<i32>(-2147483647i, u_input.d.x);
    var var_1 = Struct_4(func_3() >> (~_wgslsmith_mult_vec2_u32(arg_1, ~arg_2.yw) % vec2<u32>(32u)), arg_2, select(vec2<bool>(true, global0.x >= -883f), vec2<bool>(true, true), global0.x > _wgslsmith_f_op_f32(step(-168f, global0.x))), ~9712u);
    let var_2 = Struct_3(select(!(!vec4<bool>(true, var_1.c.x, true, true)), !vec4<bool>(false, !var_1.c.x, var_1.c.x, var_1.c.x), true), var_1.c, ~(~arg_2.yxx), 0i);
    var_1 = Struct_4(countOneBits(-u_input.d.zw), arg_2 ^ arg_2, var_1.c, _wgslsmith_mod_u32(4294967295u, u_input.b));
    var_0 = var_1.a;
    return u_input.c.yxx;
}

fn func_1(arg_0: bool, arg_1: Struct_2, arg_2: bool) -> vec4<u32> {
    var var_0 = vec4<u32>(arg_1.c.x, u_input.b, 34946u, 63318u) >> (reverseBits(~_wgslsmith_sub_vec4_u32(~arg_1.c, abs(vec4<u32>(4294967295u, u_input.b, u_input.b, arg_1.c.x)))) % vec4<u32>(32u));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(~(~u_input.d.zyw), func_2(~(~16333u), _wgslsmith_mod_vec2_u32(var_0.xw, ~vec2<u32>(4294967295u, u_input.b)), _wgslsmith_mult_vec4_u32(arg_1.c, ~vec4<u32>(57019u, var_0.x, 1u, 1u)))), ~(arg_1.b >> ((arg_1.b & var_0.x) % 32u)));
    var var_2 = -vec2<i32>(reverseBits(-arg_1.a), u_input.a.x);
    var var_3 = _wgslsmith_add_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_div_u32(var_0.x, max(1u, var_1.b)), 0u)), max(_wgslsmith_add_vec2_u32(~(arg_1.c.wz >> (vec2<u32>(var_0.x, 29773u) % vec2<u32>(32u))), reverseBits(vec2<u32>(var_1.b, arg_1.d.b))), select(var_0.xx, reverseBits(~arg_1.c.zw), !select(vec2<bool>(false, true), vec2<bool>(arg_2, arg_2), vec2<bool>(arg_2, true)))));
    var var_4 = min(~_wgslsmith_mod_vec4_u32(arg_1.c, arg_1.c), ~(~(~_wgslsmith_sub_vec4_u32(arg_1.c, arg_1.c))));
    return _wgslsmith_add_vec4_u32(countOneBits(~vec4<u32>(_wgslsmith_mod_u32(var_0.x, 54053u), 4294967295u, 0u & var_0.x, ~u_input.b)), vec4<u32>(31869u, var_3.x, _wgslsmith_mult_u32(_wgslsmith_sub_u32(var_1.b, ~1460u), u_input.b), 2908u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(all(vec4<bool>(false, true, false, u_input.d.x != 44846i)), true, any(vec4<bool>(true, true, true, true)), false), select(vec4<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true, true), vec4<bool>(true, all(vec2<bool>(true, true)), firstTrailingBit(u_input.b) != countOneBits(1u), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, -892f, true)) - global0.x) > -854f), !(_wgslsmith_dot_vec4_u32(func_1(false, Struct_2(u_input.c.x, u_input.b, vec4<u32>(0u, 0u, 22769u, 0u), Struct_1(u_input.a.xxz, 1u)), false), vec4<u32>(12492u, u_input.b, u_input.b, 56223u)) > 1u));
    global1 = array<vec3<u32>, 31>();
    var var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) - _wgslsmith_f_op_f32(max(-1000f, _wgslsmith_f_op_f32(-global0.x)))), -1731f) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-348f, -872f)) + vec2<f32>(global0.x, 2379f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global0.x, 601f), vec2<f32>(-287f, global0.x)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -129f))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(462f, var_1.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1760f, global0.x))), _wgslsmith_div_vec2_f32(vec2<f32>(-816f, _wgslsmith_div_f32(global0.x, -1253f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, 510f) - vec2<f32>(global0.x, var_1.x))))));
    let var_2 = !(!vec2<bool>(any(vec2<bool>(var_0.x, var_0.x)), var_0.x));
    global0 = vec2<f32>(global0.x, _wgslsmith_f_op_f32(floor(447f)));
    var var_3 = firstLeadingBit(countOneBits(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 25299u), vec2<u32>(u_input.b, u_input.b))) << (u_input.b % 32u));
    let var_4 = var_0.wyy;
    var var_5 = u_input.c.wwy;
    let x = u_input.a;
    s_output = StorageBuffer(25044u, var_1.x, u_input.c.x, _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, _wgslsmith_clamp_u32(firstTrailingBit(10482u), 42650u, u_input.b)), ~(~(~vec2<u32>(u_input.b, 0u)))));
}

