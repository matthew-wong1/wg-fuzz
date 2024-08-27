struct Struct_1 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<i32>,
    c: Struct_1,
    d: i32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 29> = array<f32, 29>(-1000f, -1183f, -836f, 1609f, -117f, -136f, 245f, 299f, -328f, -1668f, 397f, 1836f, 286f, 1000f, -1139f, -1960f, 2309f, 157f, -651f, -889f, -225f, -1000f, -345f, 1000f, 1935f, 480f, -938f, 861f, -632f);

var<private> global1: vec2<u32> = vec2<u32>(0u, 1u);

var<private> global2: array<Struct_3, 21>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> f32 {
    var var_0 = 457f;
    global0 = array<f32, 29>();
    global0 = array<f32, 29>();
    let var_1 = 0u;
    let var_2 = Struct_4(Struct_1(~vec2<u32>(u_input.b, _wgslsmith_dot_vec3_u32(vec3<u32>(1555u, u_input.b, u_input.b), vec3<u32>(global1.x, 1u, 1u))), u_input.a), true, Struct_1(vec2<u32>(~1u, ~u_input.b), -max(u_input.a, vec3<i32>(-28288i, u_input.a.x, u_input.d))));
    return -274f;
}

fn func_2(arg_0: vec3<bool>, arg_1: bool) -> vec2<u32> {
    global0 = array<f32, 29>();
    var var_0 = _wgslsmith_f_op_f32(func_3());
    global2 = array<Struct_3, 21>();
    let var_1 = vec2<u32>(global1.x, 104011u) & min(vec2<u32>(0u, u_input.b), min(vec2<u32>(reverseBits(u_input.b), abs(59542u)), select(~vec2<u32>(25387u, 0u), ~vec2<u32>(4294967295u, global1.x), !vec2<bool>(arg_0.x, arg_0.x))));
    let var_2 = _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, global1.x, var_1.x), vec3<u32>(u_input.b, var_1.x, global1.x))), countOneBits(~(~vec3<u32>(u_input.b, 0u, u_input.b)))), 29u)] * -1086f);
    return ~var_1;
}

fn func_1(arg_0: u32) -> Struct_3 {
    global1 = ~firstLeadingBit(vec2<u32>(1u, global1.x)) | ~vec2<u32>(arg_0, 48932u);
    global1 = _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32((_wgslsmith_mult_vec2_u32(vec2<u32>(9259u, 80013u), vec2<u32>(u_input.b, 47608u)) << (vec2<u32>(u_input.b, arg_0) % vec2<u32>(32u))) >> ((func_2(vec3<bool>(false, false, true), false) ^ vec2<u32>(u_input.b, global1.x)) % vec2<u32>(32u)), ~vec2<u32>(4294967295u, 1u) ^ _wgslsmith_div_vec2_u32(vec2<u32>(global1.x, 55829u), vec2<u32>(49341u, global1.x))), ~_wgslsmith_clamp_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(arg_0, 47328u), ~vec2<u32>(arg_0, global1.x), vec2<u32>(u_input.b, arg_0)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(arg_0, 32926u), vec2<u32>(17335u, 70984u)), ~(vec2<u32>(u_input.b, arg_0) & vec2<u32>(u_input.b, 32033u))));
    return global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(36656u, arg_0, arg_0, 0u), vec4<u32>(21719u, global1.x, 52283u, 75922u), vec4<u32>(arg_0, 4294967295u, 4294967295u, 4294967295u)), select(vec4<u32>(arg_0, arg_0, 46851u, 0u), vec4<u32>(11646u, arg_0, u_input.b, arg_0), vec4<bool>(true, true, true, true)))), u_input.b), 21u)];
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> vec3<i32> {
    var var_0 = ~(~(~arg_1.b.a));
    let var_1 = vec2<bool>(all(vec2<bool>(true, true)), true);
    let var_2 = arg_1;
    var var_3 = arg_1.b.a.x;
    var_3 = var_0.x << (65740u % 32u);
    return select(~select(u_input.a, u_input.a, select(vec3<bool>(true, true, true), !vec3<bool>(var_1.x, false, var_1.x), !vec3<bool>(var_1.x, var_1.x, var_1.x))), ~firstLeadingBit(-var_2.b.b) << ((~(~vec3<u32>(20701u, 4294967295u, 50032u)) | _wgslsmith_add_vec3_u32(arg_1.c, var_2.c)) % vec3<u32>(32u)), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(32334u), 21u)];
    let var_1 = Struct_1(var_0.c.zz, ~(~func_4(-51908i, func_1(u_input.b))));
    let var_2 = _wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.b, ~global1.x, ~global1.x >> (4294967295u % 32u), 1u), select(_wgslsmith_mult_vec4_u32(~vec4<u32>(56553u, 1u, global1.x, u_input.b), vec4<u32>(14769u, 1u, 51857u, 9123u)), ~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 6842u, 0u, 34734u), vec4<u32>(var_0.b.a.x, u_input.b, u_input.b, 64342u)), all(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))))), vec4<u32>(12217u, 4294967295u, func_1(4294967295u).b.a.x, func_1(var_0.b.a.x).b.a.x));
    var var_3 = firstTrailingBit(var_1.a);
    var var_4 = var_0.a;
    let var_5 = u_input.a.xz;
    let x = u_input.a;
    s_output = StorageBuffer((-var_1.b.x >> (~global1.x % 32u)) ^ min(var_0.b.b.x, _wgslsmith_dot_vec3_i32(var_0.b.b, var_1.b)));
}

