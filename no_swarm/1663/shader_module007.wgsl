struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<bool>,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 6>;

var<private> global1: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(1468f, -1389f, 235f), vec3<f32>(1467f, 1000f, -1000f), vec3<f32>(305f, -541f, 1064f), vec3<f32>(1087f, 563f, -1597f), vec3<f32>(206f, 1805f, 1796f), vec3<f32>(853f, -689f, -714f), vec3<f32>(-1588f, -184f, 2186f), vec3<f32>(-557f, 577f, -228f), vec3<f32>(444f, 802f, 148f), vec3<f32>(-1000f, 1183f, 222f), vec3<f32>(777f, -1000f, -1000f), vec3<f32>(1141f, 537f, 390f), vec3<f32>(-567f, -1000f, -253f), vec3<f32>(935f, -463f, -670f), vec3<f32>(-920f, 961f, -110f), vec3<f32>(-1457f, -627f, 964f), vec3<f32>(326f, -1366f, -814f), vec3<f32>(-442f, -511f, 1570f), vec3<f32>(1801f, -821f, 878f), vec3<f32>(-1217f, 510f, -1141f), vec3<f32>(1000f, -826f, 784f), vec3<f32>(422f, 168f, 1091f), vec3<f32>(-341f, -1097f, 1436f), vec3<f32>(251f, 151f, 501f), vec3<f32>(2556f, 853f, 1035f), vec3<f32>(-173f, 1252f, 1200f), vec3<f32>(1436f, 337f, 1584f), vec3<f32>(131f, -1150f, 427f));

var<private> global2: u32 = 1u;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: vec3<f32>, arg_1: bool, arg_2: u32, arg_3: vec4<i32>) -> bool {
    var var_0 = -19183i;
    global1 = array<vec3<f32>, 28>();
    global1 = array<vec3<f32>, 28>();
    return true;
}

fn func_3(arg_0: i32, arg_1: u32) -> u32 {
    let var_0 = 34229u | _wgslsmith_div_u32(arg_1, u_input.c);
    let var_1 = max(firstTrailingBit(_wgslsmith_mult_vec2_u32((vec2<u32>(0u, 51833u) >> (vec2<u32>(0u, u_input.a) % vec2<u32>(32u))) >> (~vec2<u32>(54022u, u_input.b) % vec2<u32>(32u)), abs(vec2<u32>(27683u, 4294967295u)))), abs(reverseBits(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(var_0, 1u)))) & ~reverseBits(abs(vec2<u32>(arg_1, 1u))));
    var var_2 = vec2<i32>(-(~_wgslsmith_mod_i32(1i, 1i)), ~_wgslsmith_sub_i32(arg_0, u_input.d));
    global0 = array<Struct_1, 6>();
    var var_3 = 79290u;
    return _wgslsmith_mod_u32(~min(1u | (4294967295u | u_input.a), 0u), ~(~(~_wgslsmith_add_u32(var_0, 13938u))));
}

fn func_2(arg_0: bool) -> Struct_1 {
    let var_0 = select(select(vec2<bool>(true, func_3(u_input.d, 6637u) > 19838u), !select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(arg_0, true), arg_0), true), select(vec2<bool>(true, !arg_0), select(!vec2<bool>(arg_0, arg_0), !vec2<bool>(arg_0, true), arg_0), !vec2<bool>(arg_0, false))), select(!(!select(vec2<bool>(arg_0, arg_0), vec2<bool>(false, arg_0), false)), vec2<bool>(-12680i <= _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -5329i, u_input.d), vec3<i32>(-2686i, 17931i, u_input.d)), any(vec3<bool>(true, false, true))), vec2<bool>(true, true)), select(!vec2<bool>(func_1(vec3<f32>(292f, -800f, -907f), arg_0, u_input.a, vec4<i32>(u_input.d, u_input.d, u_input.d, u_input.d)), u_input.b <= 20635u), !(!select(vec2<bool>(false, true), vec2<bool>(false, false), arg_0)), select(select(vec2<bool>(true, arg_0), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0), true), vec2<bool>(arg_0, arg_0)), !(!vec2<bool>(arg_0, false)), !select(vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, arg_0)))));
    global2 = 0u;
    var var_1 = any(var_0);
    global0 = array<Struct_1, 6>();
    global2 = ~21874u;
    return global0[_wgslsmith_index_u32(u_input.c, 6u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 6>();
    let var_0 = func_2(any(vec3<bool>(func_1(_wgslsmith_f_op_vec3_f32(abs(global1[_wgslsmith_index_u32(u_input.a, 28u)])), true, ~14687u, select(vec4<i32>(-24413i, u_input.d, -23807i, u_input.d), vec4<i32>(u_input.d, -42890i, u_input.d, u_input.d), true)), any(vec4<bool>(true, true, true, true)), false)));
    var var_1 = vec2<u32>(25732u, ~(~abs(u_input.c)));
    global0 = array<Struct_1, 6>();
    global2 = _wgslsmith_mult_u32(59855u, 0u);
    let var_2 = var_0.a;
    global1 = array<vec3<f32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1259f) - var_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -366f))), _wgslsmith_mult_u32(~firstLeadingBit(var_1.x) >> (u_input.b % 32u), var_1.x), u_input.d, vec2<u32>(u_input.b, ((var_1.x & u_input.a) >> (var_1.x % 32u)) & 1u), vec3<f32>(_wgslsmith_f_op_f32(min(-465f, 960f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -616f)), var_0.a.x));
}

