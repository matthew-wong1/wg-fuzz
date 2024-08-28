struct Struct_1 {
    a: vec4<i32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<vec3<u32>, 22> = array<vec3<u32>, 22>(vec3<u32>(46141u, 4294967295u, 1u), vec3<u32>(1u, 23807u, 18780u), vec3<u32>(1u, 0u, 3222u), vec3<u32>(0u, 31446u, 1u), vec3<u32>(4294967295u, 1u, 29013u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(1u, 4294967295u, 17155u), vec3<u32>(35459u, 103323u, 0u), vec3<u32>(4294967295u, 34512u, 1u), vec3<u32>(4294967295u, 0u, 7685u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(36530u, 42716u, 1u), vec3<u32>(27121u, 2001u, 0u), vec3<u32>(0u, 42048u, 0u), vec3<u32>(11067u, 4294967295u, 5136u), vec3<u32>(9640u, 0u, 10789u), vec3<u32>(60798u, 4294967295u, 18028u), vec3<u32>(86837u, 22020u, 0u), vec3<u32>(35558u, 21503u, 4294967295u), vec3<u32>(0u, 25658u, 1u), vec3<u32>(4294967295u, 50250u, 1u), vec3<u32>(18222u, 4846u, 1u));

var<private> global2: bool;

var<private> global3: Struct_1 = Struct_1(vec4<i32>(-22307i, 5921i, -21264i, 14730i), vec3<f32>(2404f, 1000f, 1000f));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> vec4<i32> {
    global3 = Struct_1(min(vec4<i32>(1i & global3.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global3.a.x, global3.a.x, -2147483647i), vec3<i32>(6533i, global3.a.x, -1i)), -2147483647i, 1i), _wgslsmith_sub_vec4_i32(global3.a, firstLeadingBit(vec4<i32>(global3.a.x, 30680i, global3.a.x, global3.a.x)))) << (countOneBits(select(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 0u, 15523u, 84729u), vec4<u32>(21229u, u_input.a, 11066u, u_input.a)), ~vec4<u32>(u_input.a, 90989u, 36072u, u_input.b.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)))) % vec4<u32>(32u)), _wgslsmith_div_vec3_f32(vec3<f32>(-1693f, -984f, global3.b.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global3.b + vec3<f32>(global3.b.x, 494f, global3.b.x)) * _wgslsmith_f_op_vec3_f32(-global3.b)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(global3.b + vec3<f32>(global3.b.x, -1775f, 1000f)))))));
    let var_0 = countOneBits(global3.a);
    var var_1 = u_input.a;
    global1 = array<vec3<u32>, 22>();
    let var_2 = global3.b.x;
    return countOneBits(global3.a);
}

fn func_2() -> Struct_1 {
    global2 = true;
    global2 = true & all(vec4<bool>(any(vec4<bool>(true, true, true, true)), false, any(select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), false)), any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    global3 = Struct_1(-global3.a, global3.b);
    var var_0 = Struct_1(func_3(), _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.b.x, global3.b.x, -1000f) - global3.b));
    var var_1 = ~firstTrailingBit(var_0.a.x);
    return Struct_1(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(i32(-1i) * -1i, global3.a.x), _wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(var_0.a.yz, vec2<i32>(75169i, global3.a.x)), global3.a.xz)), func_3().x << (reverseBits(~u_input.b.x) % 32u), global3.a.x & 0i, -2147483647i), _wgslsmith_f_op_vec3_f32(global3.b - _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(min(global3.b.x, 1716f)), _wgslsmith_f_op_f32(-var_0.b.x), _wgslsmith_f_op_f32(-var_0.b.x)) + var_0.b)));
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    global0 = _wgslsmith_f_op_f32(sign(var_0.b.x));
    var var_1 = -select(-_wgslsmith_add_i32(36228i, var_0.a.x), _wgslsmith_mult_i32(0i, global3.a.x << (22086u % 32u)), false) & global3.a.x;
    global3 = Struct_1(_wgslsmith_div_vec4_i32(global3.a, firstTrailingBit(_wgslsmith_mult_vec4_i32(global3.a, ~var_0.a))), _wgslsmith_div_vec3_f32(global3.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, var_0.b.x, global3.b.x)))));
    var var_2 = _wgslsmith_mult_u32(u_input.a, 0u);
    return Struct_1(var_0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global3.b, var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<u32>, 22>();
    let var_0 = global3.a.x;
    global3 = func_1();
    global3 = Struct_1(-firstTrailingBit(-(~vec4<i32>(global3.a.x, global3.a.x, global3.a.x, global3.a.x))), _wgslsmith_f_op_vec3_f32(-global3.b));
    global0 = 1144f;
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(356f, global3.b.x) * _wgslsmith_f_op_f32(global3.b.x + global3.b.x)), global3.b.x) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1793f - _wgslsmith_f_op_f32(round(global3.b.x))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -886f))))) - -1087f);
    let x = u_input.a;
    s_output = StorageBuffer(max(global1[_wgslsmith_index_u32(3323u, 22u)], vec3<u32>(firstTrailingBit(0u), ~u_input.b.x, 0u)) & global1[_wgslsmith_index_u32(~(~1u), 22u)]);
}

