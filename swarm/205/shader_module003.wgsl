struct Struct_1 {
    a: vec3<i32>,
    b: u32,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<f32>,
    c: u32,
    d: vec3<f32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -268f;

var<private> global1: array<Struct_3, 5>;

var<private> global2: array<vec2<u32>, 14> = array<vec2<u32>, 14>(vec2<u32>(4595u, 7365u), vec2<u32>(6437u, 4294967295u), vec2<u32>(34379u, 0u), vec2<u32>(1u, 28695u), vec2<u32>(65327u, 4294967295u), vec2<u32>(1u, 84495u), vec2<u32>(0u, 1u), vec2<u32>(1u, 1u), vec2<u32>(1u, 4294967295u), vec2<u32>(12163u, 51907u), vec2<u32>(1u, 0u), vec2<u32>(1u, 34391u), vec2<u32>(1u, 34151u), vec2<u32>(4294967295u, 1u));

var<private> global3: u32;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> i32 {
    let var_0 = -_wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(~(-vec3<i32>(-19377i, -14404i, -2147483647i)), reverseBits(_wgslsmith_div_vec3_i32(vec3<i32>(-1i, 10501i, 4224i), vec3<i32>(35550i, arg_0.a, -26243i))), vec3<i32>(4375i, 1i, arg_0.a) | firstLeadingBit(vec3<i32>(arg_0.a, 6534i, 2147483647i))), _wgslsmith_mult_vec3_i32(~_wgslsmith_add_vec3_i32(vec3<i32>(-496i, arg_0.a, -2147483647i), vec3<i32>(arg_0.a, 39734i, 0i)), vec3<i32>(reverseBits(arg_0.a), 1i, arg_0.a)));
    return ~(~((-32980i << (u_input.b.x % 32u)) >> (~1u % 32u))) & var_0.x;
}

fn func_2() -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_div_i32(func_3(Struct_2(-2147483647i), vec4<bool>(false, false, false, false)), abs(8459i)) >> (u_input.a.x % 32u));
    global3 = ~0u;
    global2 = array<vec2<u32>, 14>();
    let var_1 = global2[_wgslsmith_index_u32(firstLeadingBit(~(~u_input.a.x)), 14u)];
    let var_2 = _wgslsmith_f_op_f32(floor(1f));
    return vec2<u32>(~_wgslsmith_div_u32(5826u, u_input.a.x), _wgslsmith_mod_u32(reverseBits(var_1.x), abs(abs(~var_1.x))));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<bool>, arg_2: vec2<f32>, arg_3: u32) -> f32 {
    let var_0 = global1[_wgslsmith_index_u32(firstLeadingBit(arg_3), 5u)];
    let var_1 = abs(abs(_wgslsmith_add_vec2_u32(func_2(), abs(vec2<u32>(0u, 4294967295u)) << ((vec2<u32>(1u, 0u) | global2[_wgslsmith_index_u32(1u, 14u)]) % vec2<u32>(32u)))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x));
    global0 = _wgslsmith_f_op_f32(-104f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-1004f + _wgslsmith_f_op_f32(arg_2.x + 1517f)))));
    global1 = array<Struct_3, 5>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(1398f * arg_2.x), true)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(360f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec4<f32>(-460f, 527f, -738f, 795f), vec3<bool>(true, false, false), vec2<f32>(-475f, 676f), 1u))))));
    global2 = array<vec2<u32>, 14>();
    var var_0 = ~global2[_wgslsmith_index_u32(u_input.a.x, 14u)];
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-391f, 307f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1614f, 1522f))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(1000f, 1699f)))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(round(-315f))), _wgslsmith_f_op_f32(-1565f + _wgslsmith_f_op_f32(trunc(-2223f)))), false)) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(ceil(-800f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -580f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-136f, 862f))))))));
    let var_2 = var_1.x;
    global3 = var_0.x;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(_wgslsmith_mult_vec3_u32(vec3<u32>(~var_0.x, var_0.x | 0u, ~11331u), abs(firstTrailingBit(vec3<u32>(u_input.b.x, 19136u, var_0.x))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-357f, _wgslsmith_f_op_f32(trunc(-411f)), -1023f) + vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * 270f), _wgslsmith_f_op_f32(abs(-796f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1115f * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-973f, 1369f) * _wgslsmith_f_op_f32(var_2 + var_1.x)))), ~(~4294967295u), vec3<f32>(var_2, _wgslsmith_f_op_f32(step(var_2, _wgslsmith_f_op_f32(-var_2))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(var_2, var_1.x, 835f, var_2), vec3<bool>(true, true, false), vec2<f32>(var_1.x, var_1.x), 45085u)) - _wgslsmith_f_op_f32(var_1.x - var_2)))), _wgslsmith_div_u32(96948u, u_input.a.x));
}

