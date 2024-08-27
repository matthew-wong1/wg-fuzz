struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: Struct_2,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec3<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<bool, 23> = array<bool, 23>(false, true, false, false, false, false, true, false, true, false, true, false, true, true, true, true, false, false, true, false, true, true, false);

var<private> global2: Struct_2 = Struct_2(Struct_1(-2421i, vec4<f32>(-1528f, -464f, -1499f, -1097f), 1391f, false), Struct_1(48906i, vec4<f32>(-196f, 1340f, 758f, -1859f), -854f, true), 3069f);

var<private> global3: array<u32, 19>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_4 {
    global3 = array<u32, 19>();
    return Struct_4(global0.a, global2.a);
}

fn func_3() -> i32 {
    var var_0 = firstLeadingBit(_wgslsmith_clamp_i32(_wgslsmith_div_i32((global0.b.a << (global3[_wgslsmith_index_u32(global0.a.x, 19u)] % 32u)) | -2147483647i, -min(u_input.a, global2.b.a)), 70020i, global0.b.a));
    let var_1 = vec3<u32>(~_wgslsmith_mod_u32(_wgslsmith_mult_u32(27738u, global0.a.x), min(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(14158u, 19u)], 19u)], 0u)) << (20152u % 32u), ~4294967295u, global3[_wgslsmith_index_u32(4294967295u, 19u)]);
    let var_2 = abs(var_1);
    let var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(537f)), -573f, -761f, global2.a.b.x) - vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(global2.b.b.x, global0.b.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-334f + global0.b.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.b.c), global0.b.b.x)), 591f)), global2.a.b);
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -547f))), ~vec3<i32>(-7975i, u_input.b.x, ~_wgslsmith_div_i32(global2.a.a, -9281i)));
    return u_input.b.x;
}

fn func_2(arg_0: vec3<f32>) -> vec2<u32> {
    let var_0 = Struct_2(global0.b, Struct_1(func_3(), global2.b.b, _wgslsmith_f_op_f32(abs(global0.b.b.x)), global2.b.d), global2.b.b.x);
    global3 = array<u32, 19>();
    global1 = array<bool, 23>();
    var var_1 = global0.a.x;
    var var_2 = ~(~vec4<u32>(firstTrailingBit(global0.a.x), ~21096u, reverseBits(14638u), global3[_wgslsmith_index_u32(18436u, 19u)] | 1u) >> (min(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 27756u, global3[_wgslsmith_index_u32(36884u, 19u)], global0.a.x), vec4<u32>(1u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(114272u, 19u)], 19u)], global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 19u)], 19u)], 4294967295u)), _wgslsmith_mult_vec4_u32(vec4<u32>(global0.a.x, 0u, global0.a.x, 0u), vec4<u32>(0u, 4294967295u, global3[_wgslsmith_index_u32(1u, 19u)], global3[_wgslsmith_index_u32(0u, 19u)]))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global0.a.x, global3[_wgslsmith_index_u32(global0.a.x, 19u)]), vec3<u32>(0u, global0.a.x, 80208u)), _wgslsmith_dot_vec3_u32(vec3<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global0.a.x, 19u)], 19u)], global0.a.x, global3[_wgslsmith_index_u32(0u, 19u)]), vec3<u32>(1u, 1u, global3[_wgslsmith_index_u32(4294967295u, 19u)])), ~4294967295u, countOneBits(global3[_wgslsmith_index_u32(global0.a.x, 19u)]))) % vec4<u32>(32u)));
    return vec2<u32>(4294967295u, min(~_wgslsmith_dot_vec4_u32(~vec4<u32>(15625u, global0.a.x, global0.a.x, global3[_wgslsmith_index_u32(var_2.x, 19u)]), vec4<u32>(48021u, global0.a.x, 10446u, 75539u) ^ vec4<u32>(global3[_wgslsmith_index_u32(30130u, 19u)], 10661u, 0u, 1u)), 0u));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(global2.b.c, ~_wgslsmith_mod_vec3_i32(countOneBits(~u_input.b), u_input.b));
    global1 = array<bool, 23>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b.b.wzz - global0.b.b.yyx))));
    global1 = array<bool, 23>();
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2(_wgslsmith_f_op_vec3_f32(min(global2.b.b.xzx, vec3<f32>(113f, 148f, var_0.x)))), ~global0.a.xz), 23u)] | (abs(global0.b.a >> (global0.a.x % 32u)) > firstLeadingBit(-global0.b.a));
    let var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-321f)) + global2.a.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(var_0.x * 1190f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.c - global0.b.b.x) + -607f)), global0.b.b.x) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2.b.b.x - global0.b.c), 768f, global2.b.c, var_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0.b.b, vec4<f32>(-1000f, -617f, var_0.x, -1430f), global2.a.d))))));
    let var_3 = Struct_3(global3[_wgslsmith_index_u32(global0.a.x, 19u)] >> (global3[_wgslsmith_index_u32(global0.a.x, 19u)] % 32u), _wgslsmith_add_vec3_i32(u_input.b, u_input.b), _wgslsmith_div_f32(-1105f, var_0.x), Struct_2(func_1(var_2.x, _wgslsmith_mult_vec3_i32(reverseBits(u_input.b), ~u_input.b)).b, Struct_1(~(u_input.b.x << (global0.a.x % 32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_2.x, 1806f, 276f, global2.c))) * var_2), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-504f, -239f))), !global0.b.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global0.b.c)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(global2.c, -791f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(max(~global0.b.a, var_3.d.a.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.zz)), global0.a.x, ~(~(~var_3.a)));
}

