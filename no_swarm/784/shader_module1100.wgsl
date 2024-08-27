struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: u32,
    c: vec2<u32>,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 19> = array<vec2<f32>, 19>(vec2<f32>(-1657f, 1000f), vec2<f32>(2777f, -1431f), vec2<f32>(1776f, 413f), vec2<f32>(1294f, -220f), vec2<f32>(-2077f, 950f), vec2<f32>(-1818f, 1380f), vec2<f32>(1395f, 2056f), vec2<f32>(-149f, 1708f), vec2<f32>(1000f, 115f), vec2<f32>(-1025f, -673f), vec2<f32>(-739f, 2091f), vec2<f32>(1478f, 256f), vec2<f32>(1345f, -1225f), vec2<f32>(122f, -738f), vec2<f32>(-2033f, -112f), vec2<f32>(-351f, -1158f), vec2<f32>(532f, -1000f), vec2<f32>(-884f, 714f), vec2<f32>(-1043f, -513f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_1(arg_0: u32) -> u32 {
    return u_input.d.x;
}

fn func_3(arg_0: Struct_1, arg_1: bool) -> vec2<bool> {
    global0 = array<vec2<f32>, 19>();
    let var_0 = Struct_1(true, min(~max(arg_0.b, ~vec4<u32>(4238u, 0u, arg_0.b.x, u_input.b)), min(_wgslsmith_mult_vec4_u32(arg_0.b, arg_0.b) << (~u_input.d % vec4<u32>(32u)), _wgslsmith_mult_vec4_u32(u_input.d, arg_0.b ^ vec4<u32>(0u, 8566u, arg_0.b.x, 8240u)))), !any(select(!vec4<bool>(false, false, true, arg_0.c), select(vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(true, true, true, arg_0.c), false), select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, arg_0.a), vec4<bool>(arg_0.a, arg_1, true, true)))), reverseBits(vec3<i32>(0i, _wgslsmith_sub_i32(u_input.c, arg_0.d.x), abs(_wgslsmith_div_i32(-54289i, 17787i)))));
    global0 = array<vec2<f32>, 19>();
    let var_1 = Struct_2(arg_0.b, (var_0.b.x >> (arg_0.b.x % 32u)) | _wgslsmith_div_u32(~firstTrailingBit(8549u), ~(~75141u)), select(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(0u, min(var_0.b.x, arg_0.b.x)), arg_0.b.wy | var_0.b.xx), var_0.b.wz & abs(~vec2<u32>(var_0.b.x, 62677u)), true), _wgslsmith_f_op_f32(754f + -243f), vec4<bool>(var_0.a, any(select(vec2<bool>(arg_1, arg_0.a), !vec2<bool>(arg_0.c, arg_0.a), true)), true, true));
    global0 = array<vec2<f32>, 19>();
    return !vec2<bool>(false, all(select(vec3<bool>(false, var_0.c, true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), true)));
}

fn func_2() -> vec4<bool> {
    global0 = array<vec2<f32>, 19>();
    var var_0 = select(func_3(Struct_1(true, vec4<u32>(u_input.d.x, _wgslsmith_mod_u32(u_input.b, u_input.d.x), u_input.b, 3884u), true, select(-vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(46675i, u_input.c, 0i), vec3<bool>(true, true, true))), true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true), !(_wgslsmith_f_op_f32(select(1707f, 634f, false)) <= _wgslsmith_f_op_f32(404f - -957f))), func_3(Struct_1(true, u_input.d & vec4<u32>(u_input.a, 67946u, 0u, u_input.b), true, _wgslsmith_div_vec3_i32(vec3<i32>(-10823i, u_input.c, 2147483647i), vec3<i32>(u_input.c, 2147483647i, 37988i))), -14640i >= u_input.c));
    var_0 = select(!select(vec2<bool>(any(vec3<bool>(var_0.x, false, var_0.x)), var_0.x || true), vec2<bool>(any(vec2<bool>(true, var_0.x)), var_0.x), func_3(Struct_1(true, vec4<u32>(51763u, u_input.a, 4294967295u, u_input.d.x), var_0.x, vec3<i32>(u_input.c, u_input.c, u_input.c)), !var_0.x)), vec2<bool>(select(!var_0.x & !var_0.x, any(select(vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x)), !var_0.x), var_0.x), vec2<bool>(true, all(vec2<bool>(var_0.x, true))));
    var_0 = func_3(Struct_1(true, countOneBits(~u_input.d) << (_wgslsmith_mult_vec4_u32(~u_input.d, vec4<u32>(4294967295u, 0u, 14792u, u_input.d.x)) % vec4<u32>(32u)), 2147483647i > u_input.c, firstTrailingBit(_wgslsmith_mod_vec3_i32(-vec3<i32>(45176i, u_input.c, 2147483647i), vec3<i32>(u_input.c, u_input.c, 40187i)))), !(!(!var_0.x)));
    let var_1 = vec4<bool>(select(func_3(Struct_1(var_0.x & var_0.x, u_input.d, all(vec3<bool>(var_0.x, var_0.x, false)), vec3<i32>(u_input.c, 2147483647i, 24634i) & vec3<i32>(u_input.c, u_input.c, u_input.c)), true).x, true, true), var_0.x, any(!(!vec4<bool>(var_0.x, true, var_0.x, true))), false);
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<u32>(abs(u_input.a), 0u & _wgslsmith_add_u32(func_1(1u), ~u_input.a << (~8311u % 32u)), 4294967295u);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(307f, -193f, -333f, 568f)) * vec4<f32>(-1293f, -776f, 1989f, -600f)))));
    global0 = array<vec2<f32>, 19>();
    let var_2 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(select(true, all(vec4<bool>(false, false, true, false)), false), false, false, !any(vec4<bool>(false, false, true, true))), select(func_2(), vec4<bool>(true, true, true, true), true)), vec4<bool>((var_0.x ^ ~33824u) < countOneBits(_wgslsmith_clamp_u32(76041u, var_0.x, 1u)), false, any(func_2().zxy), true), func_2());
    let var_3 = Struct_1(!any(vec4<bool>(var_2.x, true, u_input.c >= 1i, var_2.x)), u_input.d, any(vec3<bool>(select(func_2().x, var_2.x, true), false, var_2.x)), _wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(-2147483647i, 1i, 2147483647i)), vec3<i32>(2147483647i, ~(-6155i), abs(u_input.c))), vec3<i32>(-19876i, 7024i, u_input.c)));
    let var_4 = _wgslsmith_mod_u32(~19409u, 36802u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_1.x + 1693f));
}

