struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: bool,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct Struct_4 {
    a: i32,
    b: u32,
    c: bool,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 5> = array<u32, 5>(4294967295u, 4294967295u, 12241u, 25851u, 40336u);

var<private> global1: u32;

var<private> global2: vec2<u32>;

var<private> global3: u32 = 1u;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    var var_0 = vec3<i32>(countOneBits(2147483647i), _wgslsmith_clamp_i32(-43744i, countOneBits(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -1i), vec2<i32>(1i, 0i)))), _wgslsmith_dot_vec4_i32(firstLeadingBit(max(vec4<i32>(25164i, 0i, -2147483647i, -2147483647i), vec4<i32>(15395i, 2147483647i, -40116i, 0i))), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, 33781i, -1i, 0i), vec4<i32>(2147483647i, 1i, 1919i, -1i)))), _wgslsmith_div_i32(abs(44748i), _wgslsmith_sub_i32(-19557i, -1i) >> (~_wgslsmith_div_u32(0u, global0[_wgslsmith_index_u32(global2.x, 5u)]) % 32u)));
    var_0 = ~vec3<i32>(firstTrailingBit(~var_0.x), var_0.x, -15854i << (~countOneBits(u_input.a.x) % 32u));
    let var_1 = (29003u ^ ~((u_input.a.x >> (530u % 32u)) & 22604u)) == u_input.a.x;
    var var_2 = _wgslsmith_div_u32(global2.x << (~min(0u ^ global2.x, ~4584u) % 32u), _wgslsmith_sub_u32(~1u & global2.x, global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(global2.x, 5122u), 5u)]));
    var var_3 = _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1407f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f * -1000f))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(787f))), -421f)));
    return global0[_wgslsmith_index_u32(~5061u, 5u)];
}

fn func_2() -> vec4<i32> {
    var var_0 = func_3();
    let var_1 = all(!select(vec4<bool>(true, true, true, true), select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), false), vec4<bool>(true, true, false, false), false), false));
    global1 = global2.x;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-159f * _wgslsmith_div_f32(149f, 1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1265f)))))));
    var var_3 = firstLeadingBit(~1i);
    return ~(abs(reverseBits(vec4<i32>(8854i, -19157i, -1i, -32461i) << (u_input.a % vec4<u32>(32u)))) >> (_wgslsmith_mod_vec4_u32(u_input.a, countOneBits(u_input.a) & ~vec4<u32>(global2.x, 19360u, 0u, global2.x)) % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    global2 = u_input.a.yy;
    var var_0 = select(firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, i32(-1i) * -1i, firstLeadingBit(24355i), -22883i), firstTrailingBit(vec4<i32>(1i, -339i, 31232i, -12094i)))), func_2(), true);
    var var_1 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-501f, 1f)))));
    var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.a, -416f))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(-1165f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) + _wgslsmith_f_op_f32(1195f + var_1.a))))));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-754f * var_1.a) + var_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_div_f32(var_0.a, -475f), var_0.a)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(105f, 1911f) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-212f, var_0.a)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(333f, var_0.a)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, 1000f) * vec2<f32>(var_0.a, 1479f)), vec2<bool>(true, false)))) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, var_0.a) * vec2<f32>(2054f, 1000f)))))))));
    var var_2 = select(vec2<bool>(false, !any(vec2<bool>(true, true))), !vec2<bool>(all(vec2<bool>(false, false)), true), false);
    global0 = array<u32, 5>();
    var var_3 = 1i;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~abs(~u_input.a.wwx)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-361f, -777f) + vec2<f32>(var_1.x, var_1.x))))), _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(-1i, -2147483647i) << ((4294967295u << (global2.x % 32u)) % 32u), -38879i, -75167i), vec3<i32>(1i, 1i, ~select(43658i, -4790i, false))));
}

