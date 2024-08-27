struct Struct_1 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(4294967295u, 51259u, 6040u, 0u);

var<private> global1: array<u32, 2> = array<u32, 2>(773u, 23238u);

var<private> global2: bool = false;

var<private> global3: bool;

var<private> global4: i32 = -31176i;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: i32) -> f32 {
    return arg_1.c.x;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    var var_0 = -(firstLeadingBit(u_input.a) | -2147483647i);
    var var_1 = 0i;
    global1 = array<u32, 2>();
    global3 = any(vec2<bool>(true, false)) | all(!(!select(vec3<bool>(true, false, false), vec3<bool>(true, false, true), true)));
    global4 = -14253i;
    return arg_1.a.x;
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1271f, 900f))))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-397f, -1501f), _wgslsmith_f_op_f32(step(1253f, 1410f))))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 0i, -u_input.a), _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.a, u_input.a), select(abs(vec3<i32>(u_input.a, -24464i, u_input.a)), ~vec3<i32>(u_input.a, u_input.a, 0i), true))), vec4<f32>(_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(1000f, 1011f))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -692f)), _wgslsmith_f_op_f32(round(-1398f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1320f + -288f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1019f + -1196f) * 1636f) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(365f, 546f)), _wgslsmith_f_op_f32(min(-760f, 1023f)))))), -_wgslsmith_clamp_i32(max(u_input.a, countOneBits(0i)), u_input.a, u_input.a), -2147483647i);
    let var_1 = vec2<i32>(select(23662i, -abs(max(7204i, var_0.e)), true), u_input.a & 24480i);
    global2 = true;
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.c.x, _wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(-var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.x, 490f) + _wgslsmith_f_op_f32(round(var_0.a.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(true, Struct_1(vec2<f32>(-467f, var_0.a.x), vec3<i32>(-18715i, 2147483647i, -69633i), vec4<f32>(658f, 748f, var_0.a.x, -1020f), -9132i, -2147483647i), 2147483647i)) - _wgslsmith_f_op_f32(func_3(var_0, Struct_1(var_0.a, var_0.b, var_0.c, var_0.d, 2147483647i))))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.c.x))), _wgslsmith_f_op_f32(-var_0.c.x), -1877f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_2(true, Struct_1(vec2<f32>(-2078f, var_0.a.x), var_0.b, var_0.c, -1i, u_input.a), 66556i)), _wgslsmith_f_op_f32(f32(-1f) * -1298f)))))));
    global3 = true;
    return ~4294967295u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(func_1() << (_wgslsmith_mod_u32(~firstTrailingBit(global0.x), 30641u) % 32u), abs(55964u), global0.x, global1[_wgslsmith_index_u32(global0.x, 2u)]);
    let var_1 = ~(-_wgslsmith_mult_vec2_i32(abs(vec2<i32>(1i, u_input.a)), -vec2<i32>(-23862i, u_input.a)));
    global1 = array<u32, 2>();
    let var_2 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-785f * -782f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -312f)))), reverseBits(select(reverseBits(vec3<i32>(-2147483647i, var_1.x, var_1.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_1.x, u_input.a, 52493i) << (vec3<u32>(var_0.x, 1u, 38085u) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(vec3<i32>(u_input.a, -2147483647i, -2147483647i), vec3<i32>(u_input.a, -26260i, -14657i))), true)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(306f, -1068f, 866f, -556f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-255f, -1219f, -1587f, 173f)))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1342f, -1241f, 401f, 236f))))), ~(-u_input.a), var_1.x);
    global0 = select(vec4<u32>(abs(8956u), ~96980u, global0.x, ~35208u), select(vec4<u32>(global0.x, var_0.x, _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(min(global0.x, 1u), 2u)], 4294967295u), _wgslsmith_dot_vec4_u32(select(vec4<u32>(0u, 35832u, var_0.x, global0.x), var_0, vec4<bool>(false, true, true, true)), var_0)), var_0, select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)), true);
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1f, 1f), vec2<f32>(var_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -432f)), vec2<bool>(true, true))), _wgslsmith_add_vec3_i32(vec3<i32>(-(~var_1.x), ~(u_input.a >> (78565u % 32u)), -5841i), var_2.b), vec4<f32>(_wgslsmith_div_f32(var_2.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-806f + -1504f) - var_2.a.x)), 1410f, -270f), u_input.a, -48931i);
    let var_4 = var_2;
    let var_5 = -var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_div_vec4_i32(select(vec4<i32>(var_2.b.x, var_1.x, var_5, 13213i), vec4<i32>(1i, var_4.d, var_2.d, 2147483647i), vec4<bool>(true, true, false, true)) >> (var_0 % vec4<u32>(32u)), vec4<i32>(17631i, var_4.e, u_input.a, ~39915i))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(393f)), 896f)), _wgslsmith_f_op_f32(f32(-1f) * -603f))));
}

