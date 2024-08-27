struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 15>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    var var_0 = Struct_1(!(!(!select(vec3<bool>(false, true, arg_0), vec3<bool>(arg_0, false, false), vec3<bool>(true, false, false)))));
    let var_1 = true;
    var var_2 = Struct_2(Struct_1(!var_0.a), ~1u, Struct_1(!select(!var_0.a, vec3<bool>(var_0.a.x, var_1, var_1), !arg_0)));
    var var_3 = vec4<i32>(59164i, -28984i << (_wgslsmith_mult_u32(var_2.b, select(~var_2.b, ~u_input.a, true)) % 32u), -1026i, _wgslsmith_add_i32(u_input.d.x, (u_input.d.x >> (~var_2.b % 32u)) & 9435i));
    var var_4 = var_2.c;
    return vec4<bool>(~26367u <= (~firstTrailingBit(37036u) | ~reverseBits(350u)), arg_0, !(!all(vec3<bool>(false, var_0.a.x, true))), any(select(vec4<bool>(all(vec3<bool>(false, false, var_1)), true, false, true), select(vec4<bool>(true, var_2.c.a.x, var_0.a.x, var_0.a.x), select(vec4<bool>(true, var_1, var_1, var_1), vec4<bool>(false, false, arg_0, false), vec4<bool>(true, var_0.a.x, arg_0, false)), vec4<bool>(true, var_1, true, var_2.a.a.x)), all(vec2<bool>(true, true)))));
}

fn func_2() -> f32 {
    var var_0 = Struct_3(all(func_3(!select(true, true, false))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(332f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1232f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(775f + -832f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-456f, -1421f))))));
    var var_1 = ~(~min(~select(vec4<u32>(44430u, 17374u, u_input.a, u_input.e.x), u_input.b, var_0.a), _wgslsmith_clamp_vec4_u32(abs(u_input.b), vec4<u32>(1u, 30288u, 59068u, u_input.c), u_input.b)));
    var_1 = u_input.b;
    let var_2 = Struct_2(Struct_1(func_3(false).zxy), 105167u, Struct_1(func_3(func_3(var_0.a & var_0.a).x).xyw));
    var var_3 = reverseBits(-min(~(~vec4<i32>(-1i, u_input.d.x, -44870i, 0i)), ~(-vec4<i32>(u_input.d.x, 3699i, u_input.d.x, 1i))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(-865f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_0.b.x, var_0.b.x, true)), _wgslsmith_f_op_f32(ceil(var_0.b.x)))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(715f, -1251f, false)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(var_0.b.x * var_0.b.x)), var_1.x == u_input.b.x)))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_2, arg_2: bool, arg_3: i32) -> vec4<f32> {
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    global0 = array<vec2<bool>, 15>();
    return vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(152f - 593f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-222f * -609f), _wgslsmith_div_f32(-1566f, 1470f)), true)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1884f, 497f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-732f)) - _wgslsmith_f_op_f32(abs(992f))), true)))), 1439f, _wgslsmith_f_op_f32(func_2()));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1649f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(434f)) * -2288f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1038f * 1139f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(236f)) - _wgslsmith_f_op_f32(f32(-1f) * -224f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1575f) - -2651f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1(Struct_2(Struct_1(vec3<bool>(true, true, true)), 4294967295u, Struct_1(vec3<bool>(false, false, false))), Struct_2(Struct_1(vec3<bool>(false, true, true)), 0u, Struct_1(vec3<bool>(true, false, false))), false, u_input.d.x)) * vec4<f32>(-306f, -1156f, 318f, 118f))))));
    var var_1 = _wgslsmith_clamp_vec3_i32(firstLeadingBit(select(vec3<i32>(37972i, _wgslsmith_mult_i32(u_input.d.x, u_input.d.x), u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), vec3<bool>(true, true, true))), vec3<i32>(u_input.d.x, u_input.d.x, 50309i), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(min(-29313i, u_input.d.x), u_input.d.x), select(-u_input.d.x, i32(-1i) * -18746i, true), 7355i), max(select(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x), min(vec3<i32>(-2147483647i, 0i, -1i), vec3<i32>(0i, 40772i, u_input.d.x)), true), _wgslsmith_add_vec3_i32(-vec3<i32>(u_input.d.x, u_input.d.x, 36021i), countOneBits(vec3<i32>(9778i, u_input.d.x, -2147483647i))))));
    var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(~_wgslsmith_add_i32(reverseBits(u_input.d.x), -2147483647i), ~(~1i << (~u_input.c % 32u)), var_1.x), ~vec3<i32>(_wgslsmith_sub_i32(abs(u_input.d.x), ~2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, u_input.d.x), vec2<i32>(0i, -69356i)) | ~var_1.x, -1i));
    let var_2 = vec3<bool>(false, true, any(func_3(!any(vec4<bool>(false, false, true, true))).xxz));
    let var_3 = -58457i >> (reverseBits(~u_input.c) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(vec3<i32>(2147483647i, -var_3, 1i >> (u_input.a % 32u)) << (u_input.e.ywy % vec3<u32>(32u))), -abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d.x, -1i, 1i), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, 11346i, u_input.d.x), vec3<i32>(u_input.d.x, 2147483647i, var_3)))));
}

