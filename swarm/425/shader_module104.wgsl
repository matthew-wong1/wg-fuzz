struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: vec4<f32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    let var_0 = vec3<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(49548u, 25303u, u_input.b.x), ~vec3<u32>(u_input.b.x, u_input.b.x, u_input.a))), _wgslsmith_dot_vec4_u32(~abs(vec4<u32>(67271u, u_input.a, 17455u, u_input.b.x)), u_input.b), firstLeadingBit(abs(_wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, 7897u), 4294967295u))));
    var var_1 = Struct_4(Struct_1(vec4<i32>(-_wgslsmith_mod_i32(14587i, -37471i), -(i32(-1i) * -2147483647i), -(~35097i), 31544i), any(vec3<bool>(true, true, true)), !(var_0.x < max(0u, 1u)), vec4<f32>(_wgslsmith_f_op_f32(1f * 244f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-934f))), -1550f, -351f)), _wgslsmith_dot_vec3_i32(~(vec3<i32>(-81558i, 31451i, 43695i) << (vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x) % vec3<u32>(32u))), vec3<i32>(1i, 1i, 1i)) < 0i, abs(u_input.b.xx), select(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), !vec3<bool>(all(vec3<bool>(true, true, false)), true, true)));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(554f)));
    let var_3 = var_1.a;
    let var_4 = ~var_1.c.x;
    return _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(-vec2<i32>(~var_3.a.x, -20868i), vec2<i32>(0i, 0i)), var_3.a.zy & ~(-(~vec2<i32>(var_1.a.a.x, var_3.a.x))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_1 {
    let var_0 = func_3();
    var var_1 = vec4<i32>(-1i) * -(firstTrailingBit(-vec4<i32>(-26500i, -11525i, 0i, var_0)) << (abs(u_input.b) % vec4<u32>(32u)));
    let var_2 = ~u_input.a;
    var_1 = vec4<i32>(var_0, var_0, var_0, ~(~min(func_3(), select(var_1.x, var_1.x, arg_0.x))));
    let var_3 = Struct_2(Struct_1(vec4<i32>(-1i, var_1.x, _wgslsmith_add_i32(var_1.x, var_1.x) ^ var_0, _wgslsmith_add_i32(0i, abs(var_0))), true | arg_0.x, all(arg_0), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-881f, -248f, -285f, -955f)))), vec4<f32>(-1000f, 1717f, _wgslsmith_f_op_f32(step(340f, -530f)), -323f), select(true, false, true) | !arg_0.x))));
    return var_3.a;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_4, arg_2: Struct_2) -> vec2<f32> {
    return vec2<f32>(_wgslsmith_f_op_f32(floor(arg_1.a.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.a.d.x, -702f) - -204f))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<f32>, arg_2: i32) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(arg_1 * vec2<f32>(833f, arg_1.x)))) - arg_1), _wgslsmith_f_op_vec2_f32(-arg_1))) * _wgslsmith_f_op_vec2_f32(func_4(arg_1, Struct_4(func_2(vec2<bool>(false, false)), true, arg_0.yz, vec3<bool>(true, true, true)), Struct_2(func_2(vec2<bool>(true, true))))));
    let var_1 = any(select(vec4<bool>(!any(vec2<bool>(true, false)), all(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false))), true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, arg_2 >= arg_2), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), false))));
    var var_2 = all(select(!select(!vec2<bool>(var_1, var_1), select(vec2<bool>(var_1, var_1), vec2<bool>(false, var_1), vec2<bool>(var_1, false)), !vec2<bool>(var_1, false)), select(vec2<bool>(true, true), !select(vec2<bool>(true, true), vec2<bool>(var_1, false), false), var_1), select(select(select(vec2<bool>(var_1, false), vec2<bool>(var_1, var_1), var_1), select(vec2<bool>(var_1, false), vec2<bool>(false, false), false), true), vec2<bool>(var_1, select(var_1, var_1, false)), !(!vec2<bool>(true, var_1)))));
    var var_3 = Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(~(-60444i), arg_2, _wgslsmith_add_i32(49657i, arg_2), -1i | arg_2), abs(vec4<i32>(arg_2, 2147483647i, -1976i, arg_2))), func_2(select(vec2<bool>(var_1, var_1), vec2<bool>(false, false), vec2<bool>(false, var_1))).a.x != ((7518i << (u_input.b.x % 32u)) >> (~u_input.b.x % 32u)), true, _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), _wgslsmith_f_op_f32(-arg_1.x), arg_1.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2275f, -234f, arg_1.x, var_0.x)))));
    let var_4 = var_1 & all(!(!(!vec4<bool>(var_3.a.b, false, var_1, false))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !vec4<bool>(false, !(_wgslsmith_f_op_f32(select(1678f, -612f, true)) != -576f), any(vec4<bool>(true, true, func_1(vec3<u32>(u_input.b.x, 0u, 1u), vec2<f32>(-108f, -1166f), -2147483647i), any(vec3<bool>(true, true, true)))), false);
    var var_1 = true;
    var var_2 = 14525u;
    var_0 = vec4<bool>(true, false, true, true);
    var_1 = false || var_0.x;
    let var_3 = vec4<u32>(_wgslsmith_mod_u32(firstLeadingBit(0u >> (u_input.b.x % 32u)), 0u) >> (40567u % 32u), select(29192u, 15924u, var_0.x), u_input.a, 1u);
    var var_4 = -801f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-879f - -532f) - -1620f), _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(468f, 456f)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1394f, 2197f), vec2<f32>(-225f, 1600f)))), Struct_4(func_2(var_0.xy), var_0.x, vec2<u32>(u_input.a, 1u), vec3<bool>(var_0.x, true, true)), Struct_2(func_2(vec2<bool>(true, false))))).x), ~_wgslsmith_mod_vec2_u32(firstLeadingBit(u_input.b.yw), ~select(vec2<u32>(u_input.b.x, var_3.x), var_3.xz, var_0.xz)), -38393i, _wgslsmith_mult_vec3_i32(max(vec3<i32>(7761i, 74301i, -24303i), vec3<i32>(-12105i, -2147483647i, -2147483647i)) >> (~max(vec3<u32>(1264u, var_3.x, 4294967295u), vec3<u32>(var_3.x, var_3.x, 19209u)) % vec3<u32>(32u)), vec3<i32>(-1i, -35773i, _wgslsmith_add_i32(32805i, 0i) << (~var_3.x % 32u))), vec4<i32>(~1i, _wgslsmith_add_i32(17245i, 31885i), 1i, _wgslsmith_div_i32(_wgslsmith_sub_i32(countOneBits(2147483647i), -9975i >> (var_3.x % 32u)), firstLeadingBit(0i))));
}

