struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
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

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<Struct_1, 26> = array<Struct_1, 26>(Struct_1(4294967295u, vec2<f32>(-2335f, -399f), vec4<u32>(4294967295u, 62650u, 78167u, 4294967295u)), Struct_1(30185u, vec2<f32>(-445f, 1600f), vec4<u32>(20201u, 20972u, 0u, 1u)), Struct_1(67234u, vec2<f32>(2481f, 992f), vec4<u32>(18298u, 0u, 0u, 4294967295u)), Struct_1(0u, vec2<f32>(-109f, -1429f), vec4<u32>(4294967295u, 1u, 4294967295u, 57961u)), Struct_1(4294967295u, vec2<f32>(1419f, 667f), vec4<u32>(61829u, 70148u, 2854u, 4294967295u)), Struct_1(4294967295u, vec2<f32>(127f, -1195f), vec4<u32>(4294967295u, 21317u, 35556u, 83265u)), Struct_1(6344u, vec2<f32>(212f, 1000f), vec4<u32>(16559u, 4294967295u, 1u, 81489u)), Struct_1(39442u, vec2<f32>(187f, -1651f), vec4<u32>(1u, 23375u, 74188u, 4294967295u)), Struct_1(1u, vec2<f32>(-1000f, -1099f), vec4<u32>(32150u, 4294967295u, 4294967295u, 0u)), Struct_1(0u, vec2<f32>(2097f, -444f), vec4<u32>(1u, 20420u, 4294967295u, 34889u)), Struct_1(4294967295u, vec2<f32>(1000f, 1112f), vec4<u32>(4294967295u, 1u, 108572u, 83809u)), Struct_1(0u, vec2<f32>(-721f, 603f), vec4<u32>(1u, 14965u, 1u, 0u)), Struct_1(8885u, vec2<f32>(411f, -482f), vec4<u32>(4294967295u, 89344u, 24460u, 0u)), Struct_1(4294967295u, vec2<f32>(380f, -979f), vec4<u32>(19636u, 7316u, 1u, 28782u)), Struct_1(25903u, vec2<f32>(339f, -1489f), vec4<u32>(13820u, 0u, 0u, 21797u)), Struct_1(1u, vec2<f32>(-1802f, -1162f), vec4<u32>(4294967295u, 5247u, 1u, 4294967295u)), Struct_1(17413u, vec2<f32>(-549f, -613f), vec4<u32>(4294967295u, 50626u, 0u, 53563u)), Struct_1(1u, vec2<f32>(-728f, 3809f), vec4<u32>(4294967295u, 10885u, 4294967295u, 4294967295u)), Struct_1(80655u, vec2<f32>(273f, 213f), vec4<u32>(79925u, 77575u, 8093u, 1u)), Struct_1(4294967295u, vec2<f32>(1243f, 1162f), vec4<u32>(0u, 4294967295u, 87666u, 12165u)), Struct_1(28151u, vec2<f32>(-1000f, -1000f), vec4<u32>(0u, 4294967295u, 1u, 0u)), Struct_1(52130u, vec2<f32>(556f, 727f), vec4<u32>(75518u, 14304u, 0u, 0u)), Struct_1(0u, vec2<f32>(-232f, 1000f), vec4<u32>(0u, 0u, 13509u, 48727u)), Struct_1(4294967295u, vec2<f32>(511f, -537f), vec4<u32>(8605u, 41137u, 1u, 12822u)), Struct_1(8880u, vec2<f32>(-288f, -288f), vec4<u32>(0u, 4294967295u, 0u, 1u)), Struct_1(3004u, vec2<f32>(423f, -373f), vec4<u32>(1u, 55941u, 12045u, 0u)));

var<private> global2: array<f32, 1> = array<f32, 1>(-1442f);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global1 = array<Struct_1, 26>();
    global1 = array<Struct_1, 26>();
    let var_0 = select(52178u, select(u_input.b, u_input.b, false), true);
    global1 = array<Struct_1, 26>();
    global0 = array<Struct_1, 14>();
    return true;
}

fn func_2(arg_0: vec4<bool>, arg_1: bool, arg_2: Struct_1) -> StorageBuffer {
    let var_0 = !(!(!arg_0));
    global1 = array<Struct_1, 26>();
    global2 = array<f32, 1>();
    global1 = array<Struct_1, 26>();
    global2 = array<f32, 1>();
    return StorageBuffer(1907f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mult_u32(~8330u, u_input.b ^ arg_2.c.x)), 1u)]), _wgslsmith_dot_vec2_u32(abs(select(vec2<u32>(arg_2.c.x, arg_2.a), _wgslsmith_clamp_vec2_u32(vec2<u32>(arg_2.a, 19658u), vec2<u32>(1u, u_input.a), vec2<u32>(0u, arg_2.c.x)), var_0.x)), vec2<u32>(u_input.b, ~(~1u))), arg_2.c.yx, firstLeadingBit(_wgslsmith_clamp_u32(u_input.a, u_input.b, 0u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_add_vec3_i32(vec3<i32>(1i, 25345i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, 2147483647i, 9994i), firstTrailingBit(vec3<i32>(1i, 1i, 1i)))), -vec3<i32>(_wgslsmith_mod_i32(-10672i, max(19391i, -5165i)), 0i, 1i));
    let var_1 = select(vec4<bool>(true, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 1u)] - _wgslsmith_f_op_f32(min(-297f, global2[_wgslsmith_index_u32(u_input.b, 1u)]))) <= _wgslsmith_div_f32(230f, _wgslsmith_f_op_f32(floor(306f))), all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false))), any(vec2<bool>(true, true))), !vec4<bool>(true, !any(vec2<bool>(true, false)), all(vec4<bool>(true, true, true, true)), true), false);
    var var_2 = var_0;
    global1 = array<Struct_1, 26>();
    var var_3 = all(!(!vec2<bool>(!var_1.x, var_1.x)));
    let x = u_input.a;
    s_output = func_2(!(!var_1), func_1(_wgslsmith_add_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, var_0.x, 1i), vec4<i32>(var_2.x, -2147483647i, var_2.x, var_2.x), vec4<i32>(var_0.x, -5223i, var_0.x, 12322i))), ~(vec4<i32>(var_2.x, var_2.x, var_2.x, var_2.x) >> (vec4<u32>(u_input.a, 12833u, u_input.a, 0u) % vec4<u32>(32u))))), global0[_wgslsmith_index_u32(u_input.b ^ _wgslsmith_clamp_u32(1u, ~u_input.b << (117419u % 32u), select(28711u, u_input.a, false)), 14u)]);
}

