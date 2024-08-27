struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<bool>,
    d: u32,
    e: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<Struct_1, 23>;

var<private> global2: array<vec4<u32>, 16>;

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_1(arg_0: bool) -> u32 {
    return ~(~(~(~4294967295u)));
}

fn func_3() -> i32 {
    let var_0 = global1[_wgslsmith_index_u32(global3.x, 23u)];
    let var_1 = 320f;
    var var_2 = ~u_input.c;
    let var_3 = abs(-1i);
    let var_4 = false;
    return -1i;
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = Struct_3(global1[_wgslsmith_index_u32(22110u, 23u)], _wgslsmith_dot_vec4_u32(vec4<u32>((51750u | global3.x) >> (0u % 32u), countOneBits(78080u >> (1u % 32u)), global3.x, 45982u), vec4<u32>(global3.x, 160093u, firstLeadingBit(countOneBits(4294967295u)), ~func_1(false))), vec2<u32>(~global3.x, _wgslsmith_mod_u32(global3.x, 36276u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2136f, 547f, -517f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-362f, -115f, 890f)))), ~abs(func_3()));
    let var_1 = global1[_wgslsmith_index_u32(firstTrailingBit(~firstLeadingBit(func_1(true))), 23u)];
    let var_2 = var_0;
    global1 = array<Struct_1, 23>();
    global3 = abs(vec2<u32>(func_1(!(var_1.a && true)), ~_wgslsmith_sub_u32(var_1.d, 0u) ^ _wgslsmith_dot_vec4_u32(~vec4<u32>(var_2.a.e, var_1.b.x, var_1.b.x, var_2.b), ~vec4<u32>(global3.x, var_1.b.x, 4294967295u, var_1.e))));
    return Struct_3(Struct_1(all(select(select(vec4<bool>(true, var_2.a.c.x, var_1.a, var_2.a.c.x), vec4<bool>(var_2.a.c.x, var_0.a.c.x, var_1.c.x, true), true), !vec4<bool>(true, var_1.c.x, false, true), var_2.a.c.x)), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(28739u, global3.x, var_2.b), vec3<u32>(var_1.e, 0u, global3.x) ^ vec3<u32>(var_2.c.x, var_0.c.x, var_0.a.b.x)), var_1.b ^ ~var_0.a.b, var_2.a.b), vec2<bool>(true, true && (arg_0 != 15471i)), _wgslsmith_sub_u32(~1u, _wgslsmith_div_u32(~4294967295u, 1u)), _wgslsmith_dot_vec2_u32(~(~var_2.a.b.xz), firstTrailingBit(vec2<u32>(var_2.b, global3.x)))), var_2.b, var_1.b.zx ^ vec2<u32>(~(var_1.e >> (25319u % 32u)), ~var_2.a.d), var_0.d, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~(-u_input.b);
    var var_0 = _wgslsmith_div_vec3_u32(abs(~min(max(vec3<u32>(global3.x, global3.x, global3.x), vec3<u32>(global3.x, global3.x, 4294967295u)), vec3<u32>(1u, global3.x, 78378u) | vec3<u32>(global3.x, global3.x, 4294967295u))), _wgslsmith_add_vec3_u32(vec3<u32>(global3.x, 0u, _wgslsmith_div_u32(~62281u, 1u)), vec3<u32>(_wgslsmith_mult_u32(max(global3.x, global3.x), 0u), func_1(true), global3.x)));
    global1 = array<Struct_1, 23>();
    global2 = array<vec4<u32>, 16>();
    let var_1 = func_2(-max(u_input.c, -78416i));
    let var_2 = vec2<u32>(global3.x, firstLeadingBit(1u));
    global1 = array<Struct_1, 23>();
    var_0 = vec3<u32>(var_2.x, ~_wgslsmith_sub_u32(global3.x >> (6470u % 32u), 286u ^ var_0.x) | min(~16891u, _wgslsmith_clamp_u32(var_0.x >> (4294967295u % 32u), _wgslsmith_dot_vec3_u32(var_1.a.b, var_1.a.b), max(1u, 4294967295u))), select(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(var_1.a.b, vec3<u32>(1u, global3.x, 1u)), 33703u), ~(~(var_2.x ^ 61460u)), var_1.a.c.x | true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(abs(4294967295u), ~var_1.c.x), func_1(!var_1.a.c.x), ~(var_2.x ^ var_0.x), 9649u), vec4<u32>(_wgslsmith_dot_vec2_u32(reverseBits(var_2), vec2<u32>(12532u, 4294967295u)), ~4870u, func_2(u_input.c).a.b.x & var_0.x, var_0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-var_1.d.x), var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x - var_1.d.x), -1253f), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(1976f, var_1.d.x, 401f, var_1.d.x) + vec4<f32>(-1000f, -371f, var_1.d.x, var_1.d.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(400f)) + _wgslsmith_f_op_f32(-var_1.d.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_1.d.x - 785f), _wgslsmith_f_op_f32(235f - 1578f)))), _wgslsmith_div_vec2_u32(~var_2, abs(var_1.a.b.yz)));
}

