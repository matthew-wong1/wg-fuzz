struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 15> = array<vec4<f32>, 15>(vec4<f32>(-344f, 454f, 1285f, 1910f), vec4<f32>(-2384f, 236f, 1540f, -520f), vec4<f32>(1857f, -104f, 630f, -651f), vec4<f32>(-456f, 811f, -904f, -211f), vec4<f32>(2099f, 2987f, -335f, 735f), vec4<f32>(2189f, 1000f, -335f, -435f), vec4<f32>(434f, 1122f, 1079f, 1000f), vec4<f32>(1218f, 212f, -881f, 195f), vec4<f32>(-546f, 1831f, -357f, -264f), vec4<f32>(564f, -555f, 1703f, 783f), vec4<f32>(-137f, -1460f, -3051f, 1000f), vec4<f32>(587f, -734f, 350f, 434f), vec4<f32>(1159f, 532f, 1220f, -201f), vec4<f32>(-167f, 473f, 773f, 361f), vec4<f32>(-111f, 522f, -1072f, -1356f));

var<private> global1: Struct_1 = Struct_1(0u, vec4<bool>(false, false, true, false), false);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> u32 {
    var var_0 = Struct_1(firstTrailingBit(_wgslsmith_div_u32(reverseBits(_wgslsmith_add_u32(global1.a, u_input.a.x)), 4294967295u)), vec4<bool>(true, global1.c, true | global1.b.x, global1.c && true), select(global1.b.x, false, false));
    var var_1 = var_0.a;
    var var_2 = firstLeadingBit(vec2<i32>(1i, _wgslsmith_mult_i32(42300i, abs(firstTrailingBit(2147483647i)))));
    var var_3 = Struct_1(1u | var_0.a, select(select(vec4<bool>(true, false, any(vec3<bool>(global1.b.x, false, false)), any(var_0.b.zz)), global1.b, select(var_0.b, var_0.b, false)), var_0.b, u_input.a.x <= u_input.a.x), reverseBits(abs(~var_0.a)) < 0u);
    let var_4 = global1.c;
    return 19288u;
}

fn func_2(arg_0: f32) -> Struct_1 {
    let var_0 = firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global1.a, 2982u), reverseBits(vec3<u32>(global1.a, 4294967295u, 1u))), ~_wgslsmith_div_u32(u_input.a.x, global1.a), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(17702u, 78223u, u_input.a.x, 52621u), vec4<u32>(u_input.a.x, u_input.a.x, global1.a, u_input.a.x)), vec4<u32>(14858u, 24883u, u_input.a.x, u_input.a.x))), firstTrailingBit((vec3<u32>(50489u, global1.a, u_input.a.x) << (vec3<u32>(5040u, 1u, u_input.a.x) % vec3<u32>(32u))) ^ min(vec3<u32>(u_input.a.x, u_input.a.x, 40585u), vec3<u32>(1u, 0u, 4294967295u)))));
    var var_1 = global1.b.x & global1.c;
    let var_2 = Struct_1(155374u << (firstLeadingBit(func_3() ^ _wgslsmith_mult_u32(var_0.x, 5275u)) % 32u), select(global1.b, !global1.b, global1.c), false);
    let var_3 = _wgslsmith_sub_i32(25192i, _wgslsmith_sub_i32(-min(1i, -1246i), ~min(_wgslsmith_mod_i32(-21341i, 2147483647i), 1i)));
    var var_4 = ~(~(~(~func_3())));
    return Struct_1(43785u, vec4<bool>(!all(select(vec2<bool>(true, global1.c), var_2.b.yx, true)), global1.b.x | var_2.b.x, false, !(any(vec2<bool>(global1.c, true)) != true)), any(var_2.b.yw));
}

fn func_1() -> Struct_1 {
    global1 = func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-402f + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -432f), _wgslsmith_f_op_f32(f32(-1f) * -317f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-168f - -1038f)))));
    let var_0 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(217f, -1692f, -669f)), vec3<f32>(1f, _wgslsmith_f_op_f32(step(-1092f, -250f)), _wgslsmith_f_op_f32(f32(-1f) * -804f))), vec3<f32>(_wgslsmith_f_op_f32(-1394f - _wgslsmith_div_f32(1424f, -2069f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1333f + -705f) + _wgslsmith_f_op_f32(347f - 1085f)), _wgslsmith_f_op_f32(ceil(-2550f))), global1.c))));
    global0 = array<vec4<f32>, 15>();
    let var_1 = u_input.a;
    let var_2 = func_2(_wgslsmith_f_op_f32(f32(-1f) * -882f));
    return var_2;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: Struct_1) -> bool {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1203f, -1424f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1323f - _wgslsmith_f_op_f32(2000f + 1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-101f - 575f) * _wgslsmith_f_op_f32(f32(-1f) * -1849f)))));
    var var_1 = Struct_1(~func_1().a, !vec4<bool>(!global1.b.x, false, !global1.b.x || (global1.b.x & arg_2.b.x), true), !(-arg_1.x > firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_1.x, 10363i, arg_1.x), vec3<i32>(arg_1.x, 0i, arg_1.x)))));
    var var_2 = max(~max(~vec2<i32>(22347i, 44097i), vec2<i32>(2147483647i, arg_1.x) >> (vec2<u32>(1u, 70403u) % vec2<u32>(32u))), arg_1);
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x * 761f) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(1030f, -235f)), _wgslsmith_f_op_f32(ceil(var_0.x)))), 2697f))));
    var var_4 = arg_0;
    return true;
}

fn func_5(arg_0: u32, arg_1: f32) -> Struct_1 {
    var var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), arg_1), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), 821f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(473f)), arg_1))), _wgslsmith_f_op_f32(-1f), arg_1);
    var var_1 = vec3<u32>(~global1.a, ~global1.a, _wgslsmith_mod_u32(52180u, 88068u));
    var var_2 = global1.b.yw;
    var var_3 = Struct_1(select(var_1.x, arg_0, !(!(var_1.x > 17503u))), func_2(var_0.x).b, false);
    let var_4 = var_0.yx;
    return Struct_1(var_3.a, vec4<bool>(2006u <= ~func_3(), any(!(!vec4<bool>(var_3.b.x, false, false, global1.c))), var_3.b.x, !(all(global1.b) | !global1.c)), var_3.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.b.xx;
    global1 = func_5(8087u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * -477f)), func_4(Struct_1(32287u, vec4<bool>(var_0.x, false, true, var_0.x), global1.c), vec2<i32>(44468i, -2147483647i), func_1()))) - 294f));
    global0 = array<vec4<f32>, 15>();
    var_0 = vec2<bool>(!var_0.x, func_5(func_3(), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1278f - 819f))))).b.x);
    var var_1 = func_1();
    global1 = Struct_1(countOneBits(select(max(u_input.a.x, 69043u), 1u, var_1.b.x)), global1.b, true);
    global1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(firstTrailingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -40453i), vec2<i32>(1i, 2147483647i))), -11394i) >> (~_wgslsmith_dot_vec4_u32(vec4<u32>(9417u, 0u, 0u, 12000u), vec4<u32>(u_input.a.x, 0u, 38075u, u_input.a.x)) % 32u), 4294967295u >> (func_1().a % 32u));
}

