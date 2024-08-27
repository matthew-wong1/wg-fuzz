struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
    d: i32,
    e: vec4<bool>,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: vec3<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 5> = array<i32, 5>(58906i, -58926i, -21909i, -1i, i32(-2147483648));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: Struct_2, arg_1: Struct_4, arg_2: vec2<i32>, arg_3: u32) -> bool {
    let var_0 = abs(arg_2);
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    var var_1 = !(var_0.x == 2147483647i);
    return false;
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>) -> f32 {
    let var_0 = Struct_1(arg_0.b.b.x <= arg_0.b.b.x);
    let var_1 = arg_0.b.c;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.c.x, 777f, arg_0.b.c.x, 952f))) + vec4<f32>(var_1.x, 1502f, var_1.x, 957f))) - vec4<f32>(_wgslsmith_f_op_f32(round(arg_0.a)), _wgslsmith_f_op_f32(max(-679f, -1044f)), _wgslsmith_f_op_f32(floor(-359f)), arg_0.b.c.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, 2023f, _wgslsmith_f_op_f32(var_1.x + -1319f), arg_0.b.c.x)));
    global0 = array<i32, 5>();
    global0 = array<i32, 5>();
    return var_2.x;
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    let var_0 = vec3<bool>(false, arg_0.x, arg_0.x);
    let var_1 = ~_wgslsmith_mod_u32(0u, 1u);
    let var_2 = 72775u;
    global0 = array<i32, 5>();
    let var_3 = u_input.b.xx;
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1294f * -1299f)) + _wgslsmith_f_op_f32(f32(-1f) * -2381f)), _wgslsmith_f_op_f32(func_3(Struct_3(_wgslsmith_f_op_f32(floor(329f)), Struct_2(Struct_1(false), vec2<u32>(4294967295u, 1u), vec2<f32>(2193f, -532f), u_input.b.x, vec4<bool>(arg_0.x, true, false, var_0.x)), Struct_1(var_0.x)), ~min(vec3<u32>(101029u, var_2, 4294967295u), vec3<u32>(var_2, var_1, var_1))))), Struct_2(Struct_1(!func_1(Struct_2(Struct_1(arg_0.x), vec2<u32>(4294967295u, 4294967295u), vec2<f32>(1459f, -579f), 26795i, vec4<bool>(var_0.x, true, var_0.x, false)), Struct_4(u_input.b.zww, Struct_1(false)), vec2<i32>(var_3.x, var_3.x), 10698u)), vec2<u32>(var_2, ~_wgslsmith_div_u32(var_2, 1u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1515f, -464f) * vec2<f32>(788f, 619f)))), (i32(-1i) * -2147483647i) ^ countOneBits(_wgslsmith_add_i32(u_input.a, 2147483647i)), select(vec4<bool>(true, true, true, true), vec4<bool>(65615u < var_2, var_0.x, !var_0.x, false), false)), Struct_1(arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(-1170f, Struct_2(Struct_1(true), vec2<u32>(~4294967295u << (0u % 32u), 53272u), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-426f, -440f)))))), ~(-53390i), !vec4<bool>(func_1(Struct_2(Struct_1(true), vec2<u32>(31991u, 1u), vec2<f32>(-994f, 891f), global0[_wgslsmith_index_u32(40636u, 5u)], vec4<bool>(true, true, true, false)), Struct_4(vec3<i32>(u_input.b.x, u_input.a, global0[_wgslsmith_index_u32(175u, 5u)]), Struct_1(false)), vec2<i32>(-58036i, -1i), 4294967295u), true, true, true)), Struct_1(false));
    var_0 = func_2(vec2<bool>(!var_0.b.e.x, all(var_0.b.e) & true));
    var var_1 = _wgslsmith_add_vec3_i32(firstTrailingBit(min(firstTrailingBit(vec3<i32>(-2147483647i, var_0.b.d, u_input.a)), -vec3<i32>(var_0.b.d, -20356i, var_0.b.d))), u_input.b.xzy);
    let var_2 = vec4<u32>(~(~var_0.b.b.x), 4294967295u << (abs(~var_0.b.b.x & var_0.b.b.x) % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(35804u, 0u, var_0.b.b.x, ~countOneBits(var_0.b.b.x)), reverseBits(select(vec4<u32>(var_0.b.b.x, var_0.b.b.x, var_0.b.b.x, 4294967295u), vec4<u32>(var_0.b.b.x, var_0.b.b.x, 4294967295u, 4294967295u), vec4<bool>(true, var_0.b.a.a, true, true)) ^ abs(vec4<u32>(var_0.b.b.x, 18878u, var_0.b.b.x, var_0.b.b.x)))), abs(~1u ^ var_0.b.b.x));
    var_0 = func_2(var_0.b.e.yy);
    var var_3 = Struct_3(_wgslsmith_f_op_f32(-1000f + var_0.a), var_0.b, func_2(!vec2<bool>(func_2(var_0.b.e.wz).b.a.a, var_0.b.a.a)).c);
    let x = u_input.a;
    s_output = StorageBuffer(168u, -(~_wgslsmith_add_vec4_i32(-vec4<i32>(-2147483647i, var_0.b.d, -6534i, var_3.b.d), abs(u_input.b))), ~max(~var_2, ~vec4<u32>(1978u, var_0.b.b.x, var_3.b.b.x, var_2.x)), 0i);
}

