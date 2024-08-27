struct Struct_1 {
    a: bool,
    b: vec3<f32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 13>;

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1(arg_0: vec3<bool>, arg_1: u32) -> f32 {
    let var_0 = ~_wgslsmith_sub_vec3_i32(abs(abs(~vec3<i32>(1i, 9682i, 50239i))), _wgslsmith_add_vec3_i32(vec3<i32>(1i, 1i, 1i), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(-48198i, -2147483647i, -12621i)), vec3<i32>(-54884i, -28786i, -22413i))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1370f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1045f - 643f)) * _wgslsmith_f_op_f32(-1831f + _wgslsmith_f_op_f32(f32(-1f) * -870f))))));
    global0 = array<Struct_4, 13>();
    global0 = array<Struct_4, 13>();
    let var_2 = global0[_wgslsmith_index_u32(37399u, 13u)];
    return _wgslsmith_f_op_f32(min(var_1, -841f));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-401f + -974f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(966f, 350f, false)))) - -665f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2068f + _wgslsmith_f_op_f32(f32(-1f) * -200f)), _wgslsmith_f_op_f32(ceil(1f))), _wgslsmith_f_op_f32(-1f)), vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(1365f, 2307f, false)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(700f, 1f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(211f * 1151f), -1773f)) * _wgslsmith_f_op_f32(select(187f, -343f, false))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(334f + -517f) - _wgslsmith_f_op_f32(374f + 1000f))))));
    var var_1 = _wgslsmith_add_i32(_wgslsmith_add_i32(~0i, 1i) << (firstTrailingBit(65532u) % 32u), abs(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-6864i, 6697i, -33174i), vec3<i32>(-75762i, 0i, 0i)))) ^ -40409i);
    var var_2 = _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(round(var_0.x))));
    let var_3 = false;
    var_2 = _wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(abs(-1000f)));
    return _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(trunc(-1167f)));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    var var_0 = Struct_2(false, vec2<u32>(746u, _wgslsmith_sub_u32(~_wgslsmith_mult_u32(u_input.a, u_input.a), 45326u)), ~vec3<u32>(32210u, _wgslsmith_div_u32(u_input.b.x, 4294967295u) ^ ~4294967295u, ~(~u_input.b.x)));
    global0 = array<Struct_4, 13>();
    let var_1 = Struct_2(true, ~var_0.b, ~_wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, var_0.c.x, u_input.b.x), ~vec3<u32>(u_input.a, 4294967295u, 1u), vec3<bool>(var_0.a, var_0.a, false)), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a, u_input.b.x, 101149u) ^ var_0.c, ~var_0.c)));
    var var_2 = _wgslsmith_f_op_f32(func_3());
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1455f)));
    return Struct_1(var_1.a, _wgslsmith_f_op_vec3_f32(arg_0 * vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(468f - arg_0.x) * _wgslsmith_f_op_f32(ceil(arg_0.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1367f, -164f, 145f))) - vec3<f32>(-824f, -286f, -819f)) + vec3<f32>(_wgslsmith_f_op_f32(-2217f + 303f), -1398f, _wgslsmith_f_op_f32(func_1(vec3<bool>(true, false, true), u_input.a)))))));
    var_0 = func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_0.b.x, -1329f, var_0.b.x), var_0.b), _wgslsmith_f_op_vec3_f32(abs(var_0.b)))) * vec3<f32>(_wgslsmith_f_op_f32(-1301f * -566f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.b.x, -2329f)), var_0.b.x, all(vec3<bool>(false, var_0.a, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1180f - var_0.b.x))))));
    let var_1 = func_2(var_0.b);
    let var_2 = func_2(var_1.b);
    let var_3 = Struct_2(any(vec2<bool>(!(!var_2.a), any(!vec2<bool>(false, var_1.a)))), max(~u_input.b, _wgslsmith_sub_vec2_u32(~u_input.b, firstTrailingBit(vec2<u32>(1u, 52807u))) ^ u_input.b), select(_wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, u_input.a, u_input.b.x), vec3<u32>(u_input.b.x, u_input.a, u_input.b.x)), ~15116u, u_input.b.x ^ 1u), ~vec3<u32>(18428u, 10049u, 4774u)), firstTrailingBit(abs(vec3<u32>(5951u, 28784u, 61780u))), vec3<bool>(-478f <= _wgslsmith_f_op_f32(func_1(vec3<bool>(var_1.a, false, false), 4294967295u)), var_0.a, var_2.a)));
    var_0 = var_1;
    let var_4 = _wgslsmith_div_f32(-1037f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x * var_2.b.x) * -1970f), var_2.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(247f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(548f * -141f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_4 - 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1354f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(633f, var_4, 888f, var_2.b.x) - vec4<f32>(var_4, var_0.b.x, -164f, -763f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.x, var_4, var_4, 1449f) * vec4<f32>(1000f, var_2.b.x, var_2.b.x, 544f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, var_0.b.x, -1000f, -664f), vec4<f32>(var_0.b.x, -235f, 1865f, -192f)))))), select(~(~var_3.b.x), abs(~var_3.c.x), (_wgslsmith_div_f32(var_0.b.x, var_4) <= _wgslsmith_f_op_f32(ceil(-305f))) != all(select(vec2<bool>(true, var_1.a), vec2<bool>(var_2.a, var_0.a), vec2<bool>(var_2.a, true)))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, _wgslsmith_sub_i32(1i, 21087i)) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -1i), ~vec2<i32>(-1i, -2147483647i)), _wgslsmith_clamp_i32(select(~(-2147483647i), 0i, !var_1.a), firstTrailingBit(_wgslsmith_div_i32(0i, -24650i)), firstTrailingBit(1i))), vec2<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), reverseBits(vec2<i32>(1i, 1i)))));
}

