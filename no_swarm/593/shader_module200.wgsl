struct Struct_1 {
    a: i32,
    b: vec3<bool>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 4>;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(3877i, vec3<bool>(false, true, false), vec2<f32>(-2457f, 717f), vec4<f32>(-993f, -415f, -2074f, -1000f), 19149i), Struct_1(1i, vec3<bool>(false, true, false), vec2<f32>(365f, 403f), vec4<f32>(-1719f, -897f, 1429f, -340f), 0i), Struct_1(0i, vec3<bool>(false, true, false), vec2<f32>(759f, -667f), vec4<f32>(-306f, -294f, -527f, -1248f), i32(-2147483648)), Struct_1(2147483647i, vec3<bool>(true, true, false), vec2<f32>(-150f, 1000f), vec4<f32>(-708f, 1000f, -686f, -205f), 1i), Struct_1(i32(-2147483648), vec3<bool>(true, true, false), vec2<f32>(231f, -751f), vec4<f32>(1083f, 365f, 935f, 838f), -1i), Struct_1(-37811i, vec3<bool>(false, false, false), vec2<f32>(-1697f, -345f), vec4<f32>(1843f, 1745f, 639f, 736f), -66237i), Struct_1(-1i, vec3<bool>(false, false, false), vec2<f32>(700f, -770f), vec4<f32>(982f, -184f, -394f, 1146f), 112730i), Struct_1(-1i, vec3<bool>(true, false, false), vec2<f32>(-541f, -1039f), vec4<f32>(-745f, -892f, 196f, 1320f), 0i), Struct_1(1i, vec3<bool>(true, false, true), vec2<f32>(-1000f, 900f), vec4<f32>(936f, -2070f, -1511f, 1139f), 9997i), Struct_1(-11808i, vec3<bool>(false, true, false), vec2<f32>(137f, 648f), vec4<f32>(-250f, -2699f, 2903f, 711f), 35006i), Struct_1(0i, vec3<bool>(true, true, true), vec2<f32>(-1000f, 1281f), vec4<f32>(171f, -702f, -1545f, -953f), 1i), Struct_1(-3430i, vec3<bool>(false, false, false), vec2<f32>(822f, 290f), vec4<f32>(592f, -1000f, -1231f, -311f), 57694i), Struct_1(i32(-2147483648), vec3<bool>(true, true, true), vec2<f32>(737f, 559f), vec4<f32>(-137f, -103f, -1009f, 1146f), 4781i), Struct_1(1i, vec3<bool>(false, false, false), vec2<f32>(166f, -460f), vec4<f32>(451f, 469f, 437f, -1006f), -1i), Struct_1(-1i, vec3<bool>(false, true, false), vec2<f32>(779f, -138f), vec4<f32>(-1000f, 1000f, -314f, -1131f), 2670i), Struct_1(1i, vec3<bool>(false, true, true), vec2<f32>(-1199f, -811f), vec4<f32>(1472f, -210f, -320f, -647f), -5203i));

var<private> global2: u32;

var<private> global3: i32;

var<private> global4: Struct_3;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: bool, arg_1: vec3<u32>, arg_2: bool) -> u32 {
    let var_0 = ~(-_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, -55596i), -9117i)) >> (~u_input.c.x % 32u);
    return ~(~_wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(global4.c.x), _wgslsmith_dot_vec3_u32(vec3<u32>(68508u, arg_1.x, global4.c.x), u_input.d)), select(global4.c.x, _wgslsmith_dot_vec3_u32(arg_1, vec3<u32>(74911u, u_input.c.x, 26907u)), true)));
}

fn func_2(arg_0: vec3<u32>, arg_1: vec2<i32>) -> vec3<u32> {
    var var_0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d.x, global4.c.x, ~countOneBits(8928u)), ~abs(arg_0));
    var var_1 = _wgslsmith_div_vec3_i32(vec3<i32>(u_input.e & firstTrailingBit(~0i), abs(1i), 1i), firstTrailingBit(global4.a) ^ (vec3<i32>(-1i) * -firstLeadingBit(u_input.a.wyw)));
    global0 = array<vec4<f32>, 4>();
    var var_2 = abs(vec2<u32>(_wgslsmith_add_u32(arg_0.x, 75619u) ^ ~arg_0.x, _wgslsmith_mult_u32(~u_input.d.x, 9039u >> (var_0.x % 32u)))) ^ ~(~_wgslsmith_mod_vec2_u32(global4.c.yz, vec2<u32>(arg_0.x, 1u)));
    let var_3 = vec3<u32>(0u, ~abs(u_input.b.x << (4294967295u % 32u)), ~_wgslsmith_dot_vec3_u32(u_input.c.zxy, abs(arg_0)) >> (~global4.c.x % 32u));
    return vec3<u32>(~(~(abs(var_3.x) << (arg_0.x % 32u))), ~(~global4.c.x & (u_input.d.x >> (61040u % 32u))), func_3(global4.b.b.x, ~(global4.c.wzx << (vec3<u32>(25309u, 0u, 4294967295u) % vec3<u32>(32u))) | ~abs(vec3<u32>(1u, 96822u, global4.c.x)), any(select(!vec4<bool>(global4.b.b.x, global4.b.b.x, global4.b.b.x, false), select(vec4<bool>(true, global4.b.b.x, false, true), vec4<bool>(global4.b.b.x, true, false, false), global4.b.b.x), !vec4<bool>(false, true, true, global4.b.b.x)))));
}

fn func_1() -> StorageBuffer {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(global4.c.wxy, func_2(_wgslsmith_div_vec3_u32(~global4.c.xyw, ~vec3<u32>(0u, 0u, global4.c.x)), vec2<i32>(u_input.e | 1i, 13029i))), ~4294967295u, global4.c.x);
    var var_1 = i32(-1i) * -2147483647i;
    global2 = global4.c.x;
    global2 = _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(1u, ~_wgslsmith_sub_u32(u_input.d.x & 1u, 4294967295u), ~abs(~var_0.x), select(~(~u_input.b.x), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.x, 4294967295u, var_0.x), vec3<u32>(u_input.b.x, 46097u, 30354u)), vec3<u32>(1u, 1u, global4.c.x)), global4.b.b.x)));
    let var_2 = var_0.yx;
    return StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global4.b.d.zx * global4.b.d.zx), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global4.b.d.x)) * vec2<f32>(global4.b.d.x, global4.b.d.x))), select(global4.b.b.xz, select(select(global4.b.b.yx, global4.b.b.xy, vec2<bool>(global4.b.b.x, true)), vec2<bool>(true, true), true), true))), ~(-(i32(-1i) * -2147483647i)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -233f), global4.b.c.x, global4.b.d.x, global4.b.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = max(u_input.b.x, ~(42415u ^ ~global4.c.x) << (~select(global4.c.x, global4.c.x, true) % 32u));
    global3 = _wgslsmith_clamp_i32(i32(-1i) * -1i, global4.b.e, 2147483647i);
    let var_1 = -_wgslsmith_add_i32(-1i, (-1i >> (~global4.c.x % 32u)) | u_input.a.x);
    var_0 = select(_wgslsmith_mod_u32(u_input.c.x, _wgslsmith_mod_u32(~u_input.c.x, 4294967295u)), firstLeadingBit(_wgslsmith_dot_vec3_u32(u_input.d ^ global4.c.wzx, vec3<u32>(global4.c.x, u_input.b.x, 4294967295u)) & min(1u, max(u_input.b.x, u_input.d.x))), !all(select(!vec4<bool>(global4.b.b.x, global4.b.b.x, global4.b.b.x, global4.b.b.x), vec4<bool>(global4.b.b.x, false, global4.b.b.x, true), any(vec3<bool>(global4.b.b.x, global4.b.b.x, global4.b.b.x)))));
    let var_2 = global1[_wgslsmith_index_u32(u_input.d.x, 16u)];
    let x = u_input.a;
    s_output = func_1();
}

