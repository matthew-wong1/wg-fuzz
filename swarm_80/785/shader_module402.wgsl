struct Struct_1 {
    a: vec4<i32>,
    b: i32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: f32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.c;
    var var_1 = Struct_1(_wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(min(arg_1.b.a.x, 0i), u_input.c, i32(-1i) * -2147483647i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, 2147483647i, -21219i, arg_1.b.a.x), arg_1.b.a, -vec4<i32>(u_input.c, -21200i, arg_1.b.a.x, 1231i))), vec4<i32>(u_input.c, -_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.b.b, -6145i, u_input.c), arg_1.b.a.zww), abs(_wgslsmith_add_i32(arg_1.b.a.x, arg_1.b.b)), _wgslsmith_dot_vec3_i32(-vec3<i32>(2147483647i, 47347i, -2147483647i), vec3<i32>(2147483647i, -1i, arg_1.b.a.x) >> (vec3<u32>(1u, 4294967295u, 18616u) % vec3<u32>(32u)))), arg_1.b.a), select(~u_input.c, i32(-1i) * -_wgslsmith_clamp_i32(arg_1.b.a.x, arg_1.b.b, 2529i), true & all(vec4<bool>(false, true, true, var_0.a))));
    var_0 = arg_1.c;
    let var_2 = arg_1.b;
    var var_3 = !(!vec4<bool>(var_0.a, var_0.a, select(true, true, true), true && any(vec3<bool>(var_0.a, arg_1.c.a, true))));
    return _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(-841f + -1628f)) - arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.x))))), arg_0.x));
}

fn func_4(arg_0: u32, arg_1: f32, arg_2: f32) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(arg_1 * _wgslsmith_f_op_f32(f32(-1f) * -708f)))) + _wgslsmith_f_op_f32(-840f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)))));
    return 1i;
}

fn func_2() -> Struct_1 {
    let var_0 = ~_wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(~vec4<i32>(-2147483647i, u_input.c, u_input.c, 2147483647i), vec4<i32>(u_input.c, u_input.c, -34606i, 1i)), vec4<i32>(u_input.c, _wgslsmith_div_i32(-2147483647i, 6869i), u_input.c, ~u_input.c)) | countOneBits(-vec4<i32>(-2147483647i >> (u_input.a.x % 32u), u_input.c, abs(-64361i), _wgslsmith_dot_vec2_i32(vec2<i32>(2346i, u_input.c), vec2<i32>(17419i, u_input.c))));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(1276f - _wgslsmith_f_op_f32(f32(-1f) * -2409f)), -345f);
    var var_2 = true;
    var var_3 = u_input.a.x;
    var_3 = u_input.a.x;
    return Struct_1(-vec4<i32>(var_0.x, _wgslsmith_clamp_i32(u_input.c, 29273i, -15052i) << ((u_input.a.x >> (76468u % 32u)) % 32u), -u_input.c, -_wgslsmith_add_i32(26184i, 34510i)), -func_4(62028u, _wgslsmith_f_op_f32(func_3(vec4<f32>(-1272f, -1340f, -2087f, -683f), Struct_3(vec2<u32>(u_input.b.x, 0u), Struct_1(vec4<i32>(-2147483647i, 3547i, u_input.c, -2147483647i), 37066i), Struct_2(false)))), _wgslsmith_f_op_f32(var_1.x - -1248f)));
}

fn func_1() -> Struct_1 {
    let var_0 = -247f;
    var var_1 = ~0i;
    var_1 = 0i;
    let var_2 = ~u_input.b.x;
    let var_3 = countOneBits(_wgslsmith_mult_vec4_u32(max(~(~vec4<u32>(var_2, 4294967295u, var_2, var_2)), u_input.a), ~max(vec4<u32>(u_input.a.x, 5529u, u_input.b.x, 1u) | u_input.a, vec4<u32>(1u, 69731u, var_2, var_2))));
    return func_2();
}

fn func_5(arg_0: Struct_1, arg_1: vec3<bool>) -> u32 {
    var var_0 = select(arg_1, !(!arg_1), !vec3<bool>(arg_1.x, true, any(!arg_1)));
    let var_1 = -(arg_0.a.zxw & abs(vec3<i32>(_wgslsmith_mod_i32(9709i, 22510i), -arg_0.a.x, arg_0.a.x)));
    var_0 = !(!(!select(select(vec3<bool>(var_0.x, arg_1.x, arg_1.x), arg_1, vec3<bool>(true, true, true)), !arg_1, false)));
    var var_2 = ~vec2<u32>(28195u, ~u_input.b.x);
    var var_3 = arg_0;
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(898f, _wgslsmith_f_op_f32(f32(-1f) * -848f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(401f, 898f), vec2<f32>(112f, -1675f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-338f, -1226f))))), func_5(func_1(), select(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), false)), u_input.c, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2055f - -1859f)))), -vec3<i32>(1i, max(i32(-1i) * -1i, u_input.c), -(~(-2147483647i))));
}

