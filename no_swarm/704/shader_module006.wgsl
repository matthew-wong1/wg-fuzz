struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: f32,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 31> = array<vec3<i32>, 31>(vec3<i32>(22637i, 0i, -7868i), vec3<i32>(10045i, 13719i, -11009i), vec3<i32>(2147483647i, 0i, 0i), vec3<i32>(0i, 2147483647i, -25783i), vec3<i32>(i32(-2147483648), -44370i, 50996i), vec3<i32>(-30541i, -28617i, 19164i), vec3<i32>(0i, 2147483647i, i32(-2147483648)), vec3<i32>(i32(-2147483648), 0i, -9548i), vec3<i32>(20434i, i32(-2147483648), -10633i), vec3<i32>(i32(-2147483648), 0i, -17813i), vec3<i32>(i32(-2147483648), 25005i, -43428i), vec3<i32>(47353i, i32(-2147483648), 76652i), vec3<i32>(-6010i, 55414i, 10466i), vec3<i32>(17404i, 3583i, 1i), vec3<i32>(306i, -62327i, -1i), vec3<i32>(921i, 32992i, 9150i), vec3<i32>(i32(-2147483648), -1i, 53093i), vec3<i32>(17672i, -41118i, -33555i), vec3<i32>(-1i, 2147483647i, 20799i), vec3<i32>(0i, 4674i, 14693i), vec3<i32>(i32(-2147483648), -83772i, -47187i), vec3<i32>(70545i, 1i, 49168i), vec3<i32>(-66970i, 0i, -1005i), vec3<i32>(0i, 2147483647i, 2147483647i), vec3<i32>(-21717i, 33606i, 1i), vec3<i32>(-1i, 0i, -38513i), vec3<i32>(34989i, 57652i, -1i), vec3<i32>(-63710i, 2147483647i, 30448i), vec3<i32>(-32812i, -27117i, 3132i), vec3<i32>(i32(-2147483648), -71989i, i32(-2147483648)), vec3<i32>(-6984i, 1i, 2147483647i));

var<private> global1: f32;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: Struct_3) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(arg_0.d.d - 1f);
    global0 = array<vec3<i32>, 31>();
    var var_1 = u_input.c.x;
    var var_2 = Struct_3(~_wgslsmith_mult_u32(0u, u_input.d >> (60579u % 32u)), !(!vec4<bool>(!arg_0.b.x, arg_0.d.b.x >= -1000f, arg_0.b.x & false, true)), select(_wgslsmith_mult_i32(-_wgslsmith_mult_i32(1i, arg_0.c), select(arg_0.c, arg_0.c, false)), arg_0.c, true), Struct_2(62139u, vec2<f32>(var_0, arg_0.d.c.x), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, arg_0.d.d), _wgslsmith_f_op_vec2_f32(sign(arg_0.d.c)), vec2<bool>(true, arg_0.b.x))) - _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(arg_0.d.c)), _wgslsmith_f_op_vec2_f32(arg_0.d.c - arg_0.d.b))), arg_0.d.b.x));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1624f, var_0, 1881f) - vec3<f32>(1030f, -1364f, arg_0.d.d)) - _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-715f, 268f, -1000f))))) + vec3<f32>(-334f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_2.d.d)) + _wgslsmith_f_op_f32(round(arg_0.d.c.x))), _wgslsmith_f_op_f32(var_2.d.b.x + _wgslsmith_f_op_f32(1649f * arg_0.d.c.x)))));
    return select(!arg_0.b.xyz, var_2.b.xzx, arg_0.b.xzz);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<bool>, arg_2: f32) -> vec3<bool> {
    return !(!(!func_1(Struct_3(u_input.b, vec4<bool>(true, true, true, true), -8091i, Struct_2(4294967295u, arg_0.xz, arg_0.xy, 1468f)))));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec3<bool>) -> vec2<i32> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -448f) + _wgslsmith_f_op_f32(sign(-2108f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(905f))))), 1f);
    let var_1 = Struct_3(_wgslsmith_mod_u32(abs(u_input.b), ~u_input.b), select(vec4<bool>(any(func_1(Struct_3(arg_0.x, vec4<bool>(false, false, false, arg_1.x), u_input.a.x, Struct_2(61802u, vec2<f32>(-303f, -566f), vec2<f32>(212f, 1000f), 1185f)))), !all(vec4<bool>(arg_1.x, true, true, arg_1.x)), false, arg_1.x), vec4<bool>(all(func_3(vec3<f32>(-760f, 948f, -1977f), arg_1.zz, -108f)), any(!vec3<bool>(true, arg_1.x, false)), any(vec2<bool>(arg_1.x, arg_1.x)) | true, true), !all(!vec4<bool>(false, arg_1.x, arg_1.x, true))), 1i, Struct_2(u_input.d, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -293f), -1986f), _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(629f, -753f)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-358f, -603f))), true)), _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1000f, -286f))))), -330f));
    var var_2 = reverseBits(0i);
    let var_3 = Struct_1(!all(var_1.b), u_input.d);
    let var_4 = Struct_2(select(u_input.d, 4294967295u, true), _wgslsmith_f_op_vec2_f32(min(var_1.d.c, vec2<f32>(679f, var_1.d.c.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_1.d.b, var_1.d.b)), vec2<f32>(-1851f, var_1.d.c.x)) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.c.x, 487f) + var_1.d.b) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.d.c.x, 288f) + vec2<f32>(701f, -321f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(865f, -627f)))), vec2<f32>(_wgslsmith_div_f32(var_1.d.b.x, var_1.d.b.x), var_1.d.b.x))), var_1.d.d);
    return abs(_wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(~u_input.c.wy, vec2<i32>(firstTrailingBit(-1i), _wgslsmith_dot_vec3_i32(u_input.c.wwy, global0[_wgslsmith_index_u32(0u, 31u)])), vec2<i32>(-35752i, abs(8917i))), vec2<i32>(-_wgslsmith_sub_i32(u_input.c.x, u_input.a.x), abs(u_input.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~_wgslsmith_div_vec2_i32(u_input.c.wz, vec2<i32>(u_input.c.x, abs(u_input.a.x))) ^ -func_2(max(~vec2<u32>(u_input.d, 0u), ~vec2<u32>(1u, 27715u)), !func_1(Struct_3(u_input.d, vec4<bool>(true, false, true, true), 4229i, Struct_2(u_input.b, vec2<f32>(-1652f, -1070f), vec2<f32>(-359f, 802f), -754f))));
    global1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(385f + 1812f) * _wgslsmith_f_op_f32(757f - 1271f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(389f * _wgslsmith_f_op_f32(234f - 825f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1428f + _wgslsmith_f_op_f32(sign(600f))) * _wgslsmith_f_op_f32(max(1f, _wgslsmith_f_op_f32(-443f * 1139f))))), select(select(func_1(Struct_3(u_input.d, vec4<bool>(true, true, true, false), -1i, Struct_2(4294967295u, vec2<f32>(-1000f, 729f), vec2<f32>(-2385f, 2020f), 2340f))).x, false, true), true, !any(vec3<bool>(true, true, true)))));
    global0 = array<vec3<i32>, 31>();
    var var_1 = 779f < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-834f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(273f))) + _wgslsmith_f_op_f32(-772f - _wgslsmith_f_op_f32(718f - 1128f)))));
    let var_3 = u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(0i, _wgslsmith_mod_i32(reverseBits(var_0.x) & _wgslsmith_div_i32(-2147483647i, u_input.a.x), _wgslsmith_div_i32(u_input.a.x, ~(-26034i)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(1u, 42637u, var_3 | 1u, ~35495u), ~_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 0u, var_3, 5693u), vec4<u32>(60014u, u_input.d, u_input.d, 19508u))), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(_wgslsmith_mod_u32(1u, u_input.d), 48833u, u_input.d, u_input.d)), max(_wgslsmith_mult_vec4_u32(~vec4<u32>(var_3, var_3, 4294967295u, 0u), vec4<u32>(var_3, 1u, var_3, u_input.d)), firstTrailingBit(firstTrailingBit(vec4<u32>(var_3, 27984u, u_input.b, 4294967295u))))));
}

