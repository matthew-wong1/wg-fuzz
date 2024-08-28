struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<u32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true));

var<private> global1: array<vec3<u32>, 24> = array<vec3<u32>, 24>(vec3<u32>(1u, 1u, 0u), vec3<u32>(10690u, 1u, 1u), vec3<u32>(4294967295u, 34858u, 1u), vec3<u32>(7141u, 4711u, 121407u), vec3<u32>(59825u, 1u, 1u), vec3<u32>(92958u, 4294967295u, 1u), vec3<u32>(1u, 118939u, 1u), vec3<u32>(1u, 0u, 1u), vec3<u32>(50363u, 15323u, 4294967295u), vec3<u32>(4294967295u, 15480u, 0u), vec3<u32>(1u, 0u, 53445u), vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(4294967295u, 4294967295u, 31827u), vec3<u32>(24325u, 0u, 1u), vec3<u32>(4294967295u, 24554u, 0u), vec3<u32>(24592u, 73704u, 1u), vec3<u32>(86705u, 1u, 4294967295u), vec3<u32>(43330u, 8388u, 35652u), vec3<u32>(0u, 5553u, 4294967295u), vec3<u32>(74611u, 13240u, 133955u), vec3<u32>(54772u, 21333u, 20181u), vec3<u32>(4294967295u, 28356u, 373u), vec3<u32>(35326u, 11743u, 89847u), vec3<u32>(28062u, 0u, 4294967295u));

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global0 = array<vec2<bool>, 19>();
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_1.b)), arg_0.b));
}

fn func_2(arg_0: vec3<f32>) -> Struct_1 {
    global1 = array<vec3<u32>, 24>();
    var var_0 = true;
    global0 = array<vec2<bool>, 19>();
    var_0 = ~u_input.d.x < _wgslsmith_mod_u32(_wgslsmith_mod_u32(1u, 6938u), u_input.d.x);
    var var_1 = Struct_1(!select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false)), false), _wgslsmith_f_op_f32(f32(-1f) * -370f), ~0i, max(_wgslsmith_clamp_i32(abs(-u_input.a.x), ~(i32(-1i) * -1i), 2147483647i), reverseBits(~_wgslsmith_div_i32(-5152i, 57355i))));
    return Struct_1(vec3<bool>(true, var_1.a.x, false), arg_0.x, var_1.c, reverseBits(0i) << (_wgslsmith_div_u32(min(~u_input.d.x, u_input.d.x & u_input.d.x), _wgslsmith_dot_vec2_u32(u_input.d, u_input.d)) % 32u));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = ~min(_wgslsmith_mod_vec2_u32(_wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(u_input.d.x, u_input.d.x)), u_input.d), vec2<u32>(reverseBits(15535u), 1u)), firstTrailingBit(select(~u_input.d, vec2<u32>(4294967295u, 0u), false)));
    let var_1 = Struct_1(select(!(!select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), all(vec3<bool>(func_2(vec3<f32>(arg_0.x, arg_0.x, -476f)).a.x, true, true))), arg_0.x, u_input.b.x, select(abs(u_input.a.x), ~(-37702i), any(vec3<bool>(true, true, true))));
    let var_2 = Struct_1(!vec3<bool>(!select(var_1.a.x, var_1.a.x, var_1.a.x), var_1.a.x, func_2(vec3<f32>(var_1.b, 1000f, -650f)).a.x), _wgslsmith_f_op_f32(-arg_0.x), select(select(i32(-1i) * -8009i, -countOneBits(u_input.c), func_2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(217f, 877f, arg_0.x)))).a.x), u_input.a.x, var_1.a.x), -u_input.c);
    let var_3 = ~u_input.b.yx;
    let var_4 = Struct_1(!var_2.a, var_1.b, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c, var_2.d, _wgslsmith_sub_i32(-44936i, -u_input.c)), ~vec3<i32>(34493i, var_3.x, -1i)), ~(-countOneBits(var_2.d)));
    return func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-717f, var_1.b, -101f), vec3<f32>(var_1.b, 449f, var_2.b))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.b, 206f, 903f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, 1810f, var_2.b)))))).b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(func_1(Struct_1(vec3<bool>(false, true, false), 1088f, u_input.b.x, u_input.a.x), Struct_1(vec3<bool>(false, false, false), -214f, 19793i, 1i))), _wgslsmith_f_op_f32(f32(-1f) * -673f), -189f) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(776f, _wgslsmith_f_op_f32(f32(-1f) * -1117f), _wgslsmith_div_f32(1789f, 1000f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1678f, -288f, -1171f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-847f, -997f, 242f)), vec3<bool>(true, true, true)))))));
    global1 = array<vec3<u32>, 24>();
    global1 = array<vec3<u32>, 24>();
    var var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -806f), 681f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b, var_0.b), vec2<f32>(var_0.b, 994f))) + vec2<f32>(-969f, var_0.b)))) - _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b, var_0.b)))))));
    var var_2 = func_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -625f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1479f, -859f), vec2<f32>(var_0.b, var_0.b)))), _wgslsmith_f_op_f32(var_1.x - _wgslsmith_f_op_f32(-470f - var_0.b)))), _wgslsmith_f_op_f32(f32(-1f) * -1599f)));
    var_2 = Struct_1(var_2.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.b))))), u_input.c, _wgslsmith_mult_i32(2147483647i, countOneBits(~var_2.d)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xwy >> (~(~abs(global1[_wgslsmith_index_u32(4294967295u, 24u)])) % vec3<u32>(32u)), -(-u_input.a.zw >> (~firstTrailingBit(u_input.d) % vec2<u32>(32u))), abs(firstTrailingBit(min(_wgslsmith_mod_vec2_u32(u_input.d, vec2<u32>(9200u, u_input.d.x)), _wgslsmith_mult_vec2_u32(u_input.d, u_input.d)))), ~vec4<u32>(u_input.d.x, _wgslsmith_div_u32(_wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, 87831u), ~u_input.d.x), u_input.d.x, _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x, countOneBits(45647u))));
}

