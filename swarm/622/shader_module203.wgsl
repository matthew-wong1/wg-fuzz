struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: u32,
    d: vec3<u32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 2>;

var<private> global1: array<u32, 2> = array<u32, 2>(4294967295u, 4294967295u);

var<private> global2: u32 = 0u;

var<private> global3: Struct_2 = Struct_2(-4524i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_1(arg_0: bool, arg_1: Struct_2) -> vec4<u32> {
    let var_0 = arg_0;
    var var_1 = 1166f;
    var_1 = -1208f;
    var_1 = _wgslsmith_f_op_f32(ceil(-1602f));
    var var_2 = vec2<u32>(142741u << (~global1[_wgslsmith_index_u32(u_input.c.x, 2u)] % 32u), global1[_wgslsmith_index_u32(~abs(~u_input.c.x), 2u)]);
    return vec4<u32>(~_wgslsmith_div_u32(~var_2.x, _wgslsmith_mod_u32(1u, 1u)) | ~_wgslsmith_mod_u32(~36014u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(36102u, 2u)], global1[_wgslsmith_index_u32(0u, 2u)], 1u, 0u), vec4<u32>(var_2.x, 26516u, global1[_wgslsmith_index_u32(1u, 2u)], u_input.c.x))), 1971u, _wgslsmith_dot_vec4_u32(firstTrailingBit(~(~vec4<u32>(22696u, var_2.x, var_2.x, 4294967295u))), vec4<u32>(17232u, var_2.x, global1[_wgslsmith_index_u32(4294967295u, 2u)], 4294967295u)), global1[_wgslsmith_index_u32(20887u, 2u)]);
}

fn func_2() -> Struct_2 {
    let var_0 = -1632f;
    global3 = Struct_2(global3.a);
    let var_1 = all(!select(vec2<bool>(true, true), vec2<bool>(true, true), var_0 == global0[_wgslsmith_index_u32(u_input.c.x, 2u)]));
    global0 = array<f32, 2>();
    global0 = array<f32, 2>();
    return Struct_2(_wgslsmith_sub_i32(~u_input.a.x, 0i) & (global3.a << (u_input.c.x % 32u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_2, arg_2: bool) -> Struct_1 {
    let var_0 = arg_1;
    global3 = func_2();
    global2 = 4807u;
    let var_1 = _wgslsmith_add_u32(u_input.c.x, abs(~(~_wgslsmith_sub_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(54780u, 2u)], 2u)], 2u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)], 2u)], 2u)]))));
    let var_2 = arg_2;
    return Struct_1(~var_1, vec2<bool>(true, false), arg_0.x, -(~(3334i << (~u_input.c.x % 32u))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_2 {
    global3 = Struct_2(arg_0.x);
    let var_0 = select(-1i, global3.a, arg_1.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(1698f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(23981u << (arg_1.a % 32u), 2u)])), -597f, global0[_wgslsmith_index_u32(1u, 2u)]));
    let var_2 = var_1.xw;
    global1 = array<u32, 2>();
    return Struct_2(-_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(arg_0.x, -5295i, global3.a), arg_0.xyy) & _wgslsmith_sub_vec3_i32(u_input.a.wzz, vec3<i32>(u_input.b.x, global3.a, -16411i)), min(arg_0.ywz << (vec3<u32>(4294967295u, 25613u, 99540u) % vec3<u32>(32u)), vec3<i32>(7927i, -1i, 0i))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.c.x, 24121u, u_input.c.x) ^ vec4<u32>(32179u, 4294967295u, 25434u, u_input.c.x), func_1(true, Struct_2(global3.a)))), 2u)]));
    let var_1 = func_4(~(~(~u_input.a)), func_3(!vec2<bool>(any(vec4<bool>(false, true, true, false)), true), func_2(), all(select(select(vec2<bool>(false, false), vec2<bool>(false, true), false), vec2<bool>(false, false), true))));
    global0 = array<f32, 2>();
    let var_2 = firstTrailingBit(2147483647i) << (~4294967295u % 32u);
    global0 = array<f32, 2>();
    global2 = ~21356u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(~u_input.c, ~min(vec3<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)], global1[_wgslsmith_index_u32(u_input.c.x, 2u)], 0u), vec3<u32>(0u, 9720u, global1[_wgslsmith_index_u32(u_input.c.x, 2u)]))), _wgslsmith_div_f32(global0[_wgslsmith_index_u32(~(~_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 2u)], 2u)], 57067u)), 2u)], global0[_wgslsmith_index_u32(0u, 2u)]), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~abs(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)], 28031u, global1[_wgslsmith_index_u32(u_input.c.x, 2u)], 4294967295u)), _wgslsmith_mult_vec4_u32(~vec4<u32>(global1[_wgslsmith_index_u32(59792u, 2u)], 0u, u_input.c.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 2u)], 2u)]), vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(55333u, 2u)], 2u)], global1[_wgslsmith_index_u32(1u, 2u)], u_input.c.x, 4294967295u) | vec4<u32>(1u, 4530u, global1[_wgslsmith_index_u32(0u, 2u)], 4294967295u)), vec4<u32>(u_input.c.x, func_1(true, Struct_2(-25281i)).x, countOneBits(u_input.c.x), 0u)), ~((vec4<u32>(51868u, global1[_wgslsmith_index_u32(u_input.c.x, 2u)], u_input.c.x, 9243u) | vec4<u32>(0u, u_input.c.x, 0u, 4294967295u)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(0u, 39057u, u_input.c.x, 4294967295u), vec4<u32>(u_input.c.x, u_input.c.x, 0u, global1[_wgslsmith_index_u32(u_input.c.x, 2u)])) % vec4<u32>(32u)))), ~u_input.c, _wgslsmith_f_op_f32(ceil(127f)));
}

