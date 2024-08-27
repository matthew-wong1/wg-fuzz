struct Struct_1 {
    a: f32,
    b: bool,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: bool,
    b: Struct_1,
    c: Struct_3,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: f32 = -1000f;

var<private> global2: array<f32, 16> = array<f32, 16>(922f, 1071f, 1388f, -979f, 1000f, -363f, -1155f, -399f, -832f, 722f, -1000f, 797f, 1770f, 137f, 185f, 120f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<bool>) -> u32 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.a))));
    global0 = Struct_2(vec4<f32>(-109f, _wgslsmith_f_op_f32(global0.a.x + 941f), _wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -853f)));
    global2 = array<f32, 16>();
    global2 = array<f32, 16>();
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -716f)) * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b.x, 16u)])))))));
    return _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, 16048u, u_input.b.x, 8661u) & vec4<u32>(u_input.a, u_input.b.x, 55609u, 26793u), vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), ~(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, u_input.b.x) | vec4<u32>(4294967295u, u_input.a, 8027u, u_input.a)), _wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.b.x, u_input.a, 37995u, 18606u), vec4<u32>(7368u, u_input.a, u_input.b.x, 0u)), vec4<u32>(u_input.b.x, u_input.a, 0u, 19093u) >> (vec4<u32>(4294967295u, 56753u, 94493u, u_input.a) % vec4<u32>(32u)))), vec4<u32>(max(u_input.b.x, ~u_input.a), 0u, ~(~u_input.a), ~u_input.b.x)), _wgslsmith_div_u32(4294967295u, 4294967295u));
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: vec3<u32>) -> vec4<f32> {
    let var_0 = global0.a.x;
    global0 = Struct_2(global0.a);
    global2 = array<f32, 16>();
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 16u)] * -256f), _wgslsmith_f_op_f32(314f + global2[_wgslsmith_index_u32(arg_2, 16u)])) * arg_1.a.zz), vec2<f32>(global0.a.x, 1f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(exp2(arg_1.a.xw)), _wgslsmith_f_op_vec2_f32(-global0.a.wx)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_1.a.yz)) + vec2<f32>(_wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(3367u, 16u)])), _wgslsmith_f_op_f32(abs(184f)))))));
    global2 = array<f32, 16>();
    return _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(-273f - 1871f))), _wgslsmith_div_f32(var_1.x, var_1.x), -968f, -1549f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1613f * arg_1.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.a.x), global0.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2201f), 1683f, arg_1.a.x < _wgslsmith_f_op_f32(max(1432f, 2416f)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), -315f))));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(func_4(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), false)), Struct_2(global0.a), firstTrailingBit(func_3(vec3<bool>(false, true, true))), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1983u, 30257u), ~u_input.b << (abs(vec3<u32>(9844u, 50574u, 4294967295u)) % vec3<u32>(32u))))));
    global2 = array<f32, 16>();
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-862f))))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), global0.a.x, -447f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, true, true, true), Struct_2(_wgslsmith_f_op_vec4_f32(global0.a - vec4<f32>(global0.a.x, 1836f, -1000f, -1000f))), ~firstTrailingBit(12332u), u_input.b)))));
    global0 = Struct_2(global0.a);
    let var_1 = Struct_2(global0.a);
    return -2280f;
}

fn func_1(arg_0: bool) -> Struct_2 {
    global2 = array<f32, 16>();
    global2 = array<f32, 16>();
    let var_0 = ~(~_wgslsmith_mult_vec3_i32(~vec3<i32>(2147483647i, 0i, -3626i), vec3<i32>(0i, -41967i, 0i)) << (abs(~_wgslsmith_mult_vec3_u32(u_input.b, vec3<u32>(u_input.a, u_input.a, u_input.b.x))) % vec3<u32>(32u)));
    let var_1 = firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.a, 26939u, 4294967295u, 4294967295u) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.b.x, u_input.b.x, 4294967295u), vec4<u32>(4421u, u_input.a, 4294967295u, 27601u)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_div_u32(u_input.b.x, 0u), _wgslsmith_mod_u32(u_input.a, 40788u), 16977u, ~0u)), _wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, 0u, 4294967295u, 9236u), vec4<u32>(u_input.a, 25700u, 32104u, u_input.b.x), true), vec4<u32>(u_input.b.x, 1u, _wgslsmith_mult_u32(u_input.a, u_input.a), 4294967295u >> (0u % 32u)))));
    let var_2 = ~(~u_input.b.x);
    return Struct_2(vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(~u_input.b.yy)), -264f)), _wgslsmith_f_op_vec4_f32(func_4(vec4<bool>(true, true, arg_0, arg_0), Struct_2(_wgslsmith_f_op_vec4_f32(exp2(global0.a))), var_2, var_1.zwz)).x, -1032f, 1000f));
}

fn func_5(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: u32, arg_3: Struct_2) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(3693u, 16u)];
    return any(arg_0) & true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(global0.a);
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x - _wgslsmith_f_op_f32(199f - global2[_wgslsmith_index_u32(u_input.a, 16u)])) * _wgslsmith_f_op_f32(round(391f))) + global0.a.x));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -245f);
    let var_0 = select((!all(vec2<bool>(false, false)) | ((0u >> (u_input.b.x % 32u)) <= (u_input.a | 7020u))) && (true && func_5(select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), true), Struct_2(global0.a), 54921u, func_1(false))), true && (all(vec4<bool>(false, true, true, false)) || !(u_input.b.x <= 1u)), -2147483647i != -_wgslsmith_dot_vec4_i32(~vec4<i32>(40378i, 2147483647i, 2147483647i, 0i), vec4<i32>(0i, -12599i, 0i, -1i)));
    global1 = _wgslsmith_f_op_f32(f32(-1f) * -787f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-196f * global2[_wgslsmith_index_u32(~7408u, 16u)]), 1i);
}

