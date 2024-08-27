struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: bool,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: u32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = -33555i;

var<private> global2: array<Struct_2, 15>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: u32, arg_1: u32, arg_2: vec4<f32>) -> bool {
    global0 = all(!vec4<bool>(true, all(vec2<bool>(false, true)) || true, all(vec2<bool>(false, false)) && true, u_input.a <= ~1u));
    global0 = !(!any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), true))));
    var var_0 = min(_wgslsmith_mult_u32(~0u, _wgslsmith_clamp_u32(41428u, 1u, firstTrailingBit(~u_input.a))), _wgslsmith_dot_vec2_u32(~max(vec2<u32>(arg_0, arg_0), u_input.b.yy), ~select(~vec2<u32>(arg_1, arg_0), u_input.b.xx, vec2<bool>(true, true))));
    var var_1 = select(vec4<bool>(true, false, true, any(select(vec4<bool>(false, false, true, false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true), false), true))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), !select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true))), true);
    let var_2 = Struct_3(Struct_1(reverseBits(25392u), !(!(!vec4<bool>(false, false, var_1.x, var_1.x))), var_1.x, true, u_input.c), global2[_wgslsmith_index_u32(~arg_0, 15u)], ~_wgslsmith_clamp_u32(~1u, arg_0, arg_0 ^ _wgslsmith_sub_u32(1u, arg_0)), Struct_1(firstTrailingBit(countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0, 4294967295u, 4294967295u), vec4<u32>(arg_1, 1u, 0u, 1u)))), !vec4<bool>(false, true, all(vec4<bool>(true, var_1.x, var_1.x, var_1.x)), false), true, true, _wgslsmith_sub_vec4_i32(select(u_input.c, _wgslsmith_sub_vec4_i32(u_input.c, vec4<i32>(u_input.c.x, -4706i, u_input.c.x, u_input.c.x)), all(vec2<bool>(true, var_1.x))), vec4<i32>(_wgslsmith_div_i32(u_input.c.x, u_input.c.x), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -1i, 2147483647i, u_input.c.x), u_input.c), ~u_input.c.x, _wgslsmith_add_i32(5387i, u_input.c.x)))), Struct_1(~countOneBits(~0u), select(select(vec4<bool>(var_1.x, false, true, true), !vec4<bool>(false, false, false, var_1.x), var_1.x), !vec4<bool>(var_1.x, var_1.x, false, var_1.x), var_1.x), true, select(var_1.x && true, false, var_1.x), vec4<i32>(~u_input.c.x, u_input.c.x, -2147483647i, -34279i) >> (max(~vec4<u32>(arg_0, 1u, 14219u, arg_0), reverseBits(vec4<u32>(55417u, 21230u, 16412u, 20731u))) % vec4<u32>(32u))));
    return !var_1.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec2<u32>) -> vec3<u32> {
    var var_0 = 1i;
    global1 = ~((i32(-1i) * -(u_input.c.x << (arg_2.x % 32u))) >> (arg_2.x % 32u));
    var var_1 = Struct_4(Struct_3(Struct_1(~14457u, arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 1i, u_input.c.x, u_input.c.x), u_input.c) > (u_input.c.x | -2147483647i), true, u_input.c), Struct_2(Struct_1(~arg_3.x, vec4<bool>(arg_0.x, false, true, false), false, arg_0.x, u_input.c), vec2<i32>(u_input.c.x, 2147483647i), Struct_1(4184u ^ arg_3.x, select(vec4<bool>(arg_0.x, false, true, true), arg_0, vec4<bool>(arg_0.x, true, true, true)), !arg_0.x, true, -vec4<i32>(u_input.c.x, u_input.c.x, 2147483647i, u_input.c.x))), _wgslsmith_mod_u32(7526u, ~0u), Struct_1(_wgslsmith_mult_u32(~u_input.a, 4294967295u), vec4<bool>(!arg_0.x, all(vec4<bool>(true, true, true, arg_0.x)), arg_0.x, true), arg_0.x, true, u_input.c), Struct_1(firstLeadingBit(arg_2.x), select(vec4<bool>(arg_0.x, arg_0.x, true, true), !arg_0, select(vec4<bool>(false, true, false, true), vec4<bool>(false, arg_0.x, arg_0.x, true), vec4<bool>(false, arg_0.x, arg_0.x, false))), true, !arg_0.x, select(countOneBits(vec4<i32>(u_input.c.x, 0i, u_input.c.x, u_input.c.x)), vec4<i32>(50749i, u_input.c.x, u_input.c.x, u_input.c.x), vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x)))), arg_0.xzy);
    global2 = array<Struct_2, 15>();
    let var_2 = var_1.a.e.a >> ((~(select(u_input.a, 60702u, false) >> (4294967295u % 32u)) << (1u % 32u)) % 32u);
    return vec3<u32>(firstTrailingBit(_wgslsmith_clamp_u32(1u, ~4294967295u, 4294967295u)), var_2, arg_3.x);
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> bool {
    var var_0 = arg_0;
    let var_1 = _wgslsmith_mod_vec3_u32(u_input.b, _wgslsmith_mod_vec3_u32(firstLeadingBit(vec3<u32>(~4294967295u, 31057u, 0u)), func_4(select(select(vec4<bool>(arg_0.a.c, var_0.c.b.x, false, true), vec4<bool>(false, var_0.a.b.x, arg_0.a.b.x, false), false), vec4<bool>(arg_0.c.c, var_0.c.c, arg_0.a.c, arg_0.a.b.x), func_3(u_input.a, u_input.a, vec4<f32>(-1187f, 830f, 246f, arg_1))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(arg_1, 499f, arg_1), vec3<f32>(arg_1, -1000f, 844f))), vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.zz, vec2<u32>(8870u, 35792u)), _wgslsmith_sub_u32(var_0.c.a, arg_0.c.a), ~32372u), u_input.b.zy)));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1202f);
    global0 = !(!var_0.c.b.x);
    let var_3 = var_1.yy;
    return true;
}

fn func_1() -> Struct_1 {
    var var_0 = global2[_wgslsmith_index_u32(1532u, 15u)];
    var var_1 = any(var_0.c.b.zwy);
    global2 = array<Struct_2, 15>();
    global0 = func_2(global2[_wgslsmith_index_u32(~countOneBits(30174u), 15u)], _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -825f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1185f)))));
    global2 = array<Struct_2, 15>();
    return Struct_1(56872u, vec4<bool>(false, _wgslsmith_div_i32(var_0.c.e.x, i32(-1i) * -1i) > 2147483647i, any(vec3<bool>(true, var_0.c.b.x, var_0.c.c)), true), var_0.c.d, var_0.c.b.x, vec4<i32>(~_wgslsmith_sub_i32(u_input.c.x, var_0.b.x) << (~firstTrailingBit(58842u) % 32u), ~_wgslsmith_sub_i32(-25439i, -u_input.c.x), _wgslsmith_div_i32(~var_0.c.e.x | ~u_input.c.x, u_input.c.x), -1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~vec4<u32>(33742u, firstTrailingBit(4294967295u), ~(~u_input.b.x), 1u));
    var var_1 = Struct_4(Struct_3(Struct_1(u_input.a, vec4<bool>(true, false, any(vec4<bool>(false, true, true, true)), true), true, select(true, true, all(vec2<bool>(false, false))), abs(reverseBits(u_input.c))), Struct_2(Struct_1(~8025u, vec4<bool>(true, true, true, true), false, true, vec4<i32>(u_input.c.x, u_input.c.x, 1i, u_input.c.x)), -(~vec2<i32>(1i, u_input.c.x)), func_1()), var_0.x, func_1(), func_1()), func_1().b.zzy);
    var var_2 = Struct_2(func_1(), countOneBits(vec2<i32>(u_input.c.x, u_input.c.x)), func_1());
    var var_3 = func_1();
    let var_4 = Struct_2(var_1.a.d, firstLeadingBit(firstTrailingBit(~var_2.a.e.zy)), func_1());
    let var_5 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1050f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(859f)) - -1000f), !var_3.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1000f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -792f), -1897f)))), any(var_2.c.b) && all(var_3.b)));
    var var_6 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-857f, -854f, var_5, 1109f)) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_5, var_5, var_5, var_5))))) * _wgslsmith_div_vec4_f32(vec4<f32>(-560f, _wgslsmith_f_op_f32(floor(-2661f)), _wgslsmith_f_op_f32(613f - var_5), 1443f), vec4<f32>(150f, var_5, var_5, _wgslsmith_f_op_f32(min(-910f, -1000f))))), _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(reverseBits(firstLeadingBit(var_3.e.xxz)), vec3<i32>(30825i, var_3.e.x & u_input.c.x, abs(10586i))), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.c.x, -2147483647i, var_4.c.e.x) ^ vec3<i32>(-10961i, var_4.b.x, 46642i), u_input.c.yzx)), ~u_input.c.x, var_1.a.d.e.zy);
}

