struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), -1i);

var<private> global2: array<vec3<i32>, 5>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_3, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec4<u32> {
    var var_0 = Struct_1(!vec4<bool>(all(vec2<bool>(true, true)) | true, 1i > ~arg_0.d.x, true & all(vec4<bool>(false, false, true, false)), _wgslsmith_add_i32(1i, arg_1.x) > _wgslsmith_div_i32(arg_2.x, arg_0.d.x)), ~u_input.b.x | (0u & (max(arg_0.c, 3239u) ^ 44967u)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), arg_0.a.x)));
    let var_1 = !(!vec3<bool>(true, false, var_0.a.x));
    let var_2 = countOneBits(u_input.a);
    var var_3 = any(vec4<bool>((_wgslsmith_f_op_f32(-arg_0.b) != _wgslsmith_f_op_f32(f32(-1f) * -527f)) || true, true, any(var_1.yz), false));
    let var_4 = countOneBits(u_input.b.wx);
    return ~_wgslsmith_mult_vec4_u32(reverseBits(u_input.b), u_input.b);
}

fn func_2() -> Struct_1 {
    var var_0 = select(_wgslsmith_dot_vec4_u32(func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, 408f, -796f, 619f)), _wgslsmith_div_f32(-490f, 295f), 1u, vec2<i32>(global1.x, global1.x) ^ vec2<i32>(global1.x, u_input.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1036f, 1276f))), -(~vec2<i32>(u_input.a, -728i)), _wgslsmith_add_vec2_i32(vec2<i32>(17327i, u_input.a), vec2<i32>(54352i, global1.x)) << (u_input.b.zy % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(771f, -1199f, -1194f))) + vec3<f32>(376f, 271f, -426f))), vec4<u32>(u_input.b.x, _wgslsmith_clamp_u32(min(1u, u_input.b.x), reverseBits(u_input.b.x), u_input.b.x), 5099u, 25665u << (0u % 32u))), u_input.b.x, global1.x > _wgslsmith_mult_i32(1i, abs(~(-1i))));
    var var_1 = !all(select(vec3<bool>(true, true, all(vec3<bool>(false, true, true))), vec3<bool>(true, all(vec4<bool>(true, false, false, false)), true), vec3<bool>(true, any(vec4<bool>(true, false, true, true)), any(vec3<bool>(true, true, false)))));
    var var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 227f, -615f, 439f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1492f, 182f, -603f, 1097f) + vec4<f32>(-238f, -133f, -464f, -1585f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-653f, 430f, 1156f, -272f) + vec4<f32>(1000f, -532f, 1383f, -1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-741f, -1000f, -1448f, 1447f)), vec4<bool>(true, true, true, true)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-242f, -1189f, 867f, -412f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-447f, 1086f, -180f, 2762f))))));
    var var_4 = any(vec4<bool>(!all(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false))), true, true, !(_wgslsmith_f_op_f32(-var_3.x) < -1000f)));
    return Struct_1(!select(select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false)), vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true)), true), firstLeadingBit(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.yy, abs(vec2<u32>(0u, 1u))), min(func_3(Struct_3(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x), 495f, 38575u, vec2<i32>(global1.x, -1i), vec2<f32>(var_3.x, -533f)), vec2<i32>(u_input.a, global1.x), vec2<i32>(30759i, 28034i), var_3.zzw).wx, u_input.b.wx ^ u_input.b.xy))), 993f);
}

fn func_1(arg_0: f32, arg_1: vec4<f32>) -> Struct_1 {
    global2 = array<vec3<i32>, 5>();
    let var_0 = Struct_2(_wgslsmith_dot_vec2_u32(u_input.b.zy, vec2<u32>(_wgslsmith_clamp_u32(u_input.b.x, ~9581u, 4294967295u), 1u)), func_2());
    var var_1 = u_input.b.wx;
    global1 = vec2<i32>(-1i) * -(reverseBits(vec2<i32>(0i, global1.x)) >> ((u_input.b.xy ^ ~u_input.b.zw) % vec2<u32>(32u)));
    let var_2 = var_0.a;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_mult_u32(~(~u_input.b.x), min(4294967295u, u_input.b.x)), func_1(_wgslsmith_f_op_f32(-542f - -284f), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(2044f, -1558f, -579f, -818f) - vec4<f32>(778f, 201f, 575f, 1000f)))))));
    var_0 = Struct_2(~reverseBits(u_input.b.x), var_0.b);
    let var_1 = func_1(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-218f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.c - 2366f) - 1000f)), var_0.b.c)), vec4<f32>(var_0.b.c, -1120f, var_0.b.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.b.c - -435f), -688f)) * 810f)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-772f)) - func_2().c) * var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(min(0i, 1026i), -u_input.a, ~2230i, ~u_input.a) >> (vec4<u32>(var_0.b.b ^ var_0.a, 0u, ~u_input.b.x, u_input.b.x << ((u_input.b.x << (33568u % 32u)) % 32u)) % vec4<u32>(32u)), ~(~select(u_input.b, u_input.b, !vec4<bool>(false, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x))), 42790u, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(42308u, 9501u), vec2<u32>(var_0.b.b, 4294967295u)), ~vec2<u32>(var_1.b, u_input.b.x)), min(u_input.b.wx, u_input.b.zy)) | u_input.b.wy, _wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, u_input.b.x), ~(~u_input.b.zx)) & ((~0u >> ((10152u ^ var_1.b) % 32u)) | ~(35512u >> (0u % 32u))));
}

