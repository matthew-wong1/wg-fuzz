struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 0i;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, true, false));

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, true, false, true)), Struct_1(vec4<bool>(true, false, true, true)));

var<private> global3: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, true, false)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_dot_vec2_u32(min(firstTrailingBit(vec2<u32>(1u, ~8433u)), firstLeadingBit(vec2<u32>(1u, 1u))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(_wgslsmith_mult_u32(reverseBits(0u), max(18683u, 4294967295u)), _wgslsmith_mod_u32(1u, 1u))));
    let var_1 = _wgslsmith_f_op_f32(-136f * 1f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-622f)))));
    let var_2 = vec2<i32>(~_wgslsmith_dot_vec2_i32(-(~vec2<i32>(u_input.a, 1i)), _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(2147483647i, 24262i))), -8772i & _wgslsmith_sub_i32(_wgslsmith_div_i32(-29903i, u_input.a) & _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.b.x), vec4<i32>(-12929i, u_input.b.x, -14235i, 0i)), _wgslsmith_mult_i32(0i, u_input.b.x) | _wgslsmith_mod_i32(34686i, u_input.a)));
    let var_3 = -_wgslsmith_mod_i32(-(-var_2.x ^ -u_input.b.x), _wgslsmith_mod_i32(_wgslsmith_clamp_i32(min(var_2.x, -1i), 0i, u_input.a), ~(~var_2.x)));
    global0 = 59729i;
    return global1.a.zzx;
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: i32) -> vec3<f32> {
    let var_0 = Struct_2(select(global1.a.xxz, global1.a.yyw, true), vec4<bool>(select(global1.a.x, true, true), any(func_3()), !all(global1.a.yzy), true), u_input.b.x);
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), 235f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1771f))), vec3<f32>(193f, -1099f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_1)) * _wgslsmith_f_op_f32(-arg_0.x)))));
    global1 = Struct_1(select(global1.a, select(vec4<bool>(true, true, true, true), select(var_0.b, vec4<bool>(true, true, true, var_0.b.x), global1.a.x), select(!vec4<bool>(var_0.b.x, false, var_0.b.x, var_0.a.x), select(vec4<bool>(global1.a.x, false, global1.a.x, true), var_0.b, var_0.b), global1.a)), any(select(!global1.a.wwz, !var_0.b.zxw, all(vec3<bool>(global1.a.x, true, global1.a.x))))));
    global3 = array<Struct_1, 2>();
    global1 = global3[_wgslsmith_index_u32(reverseBits(~(1u >> (1u % 32u))) | (_wgslsmith_mod_u32(~20459u, firstTrailingBit(1u)) ^ ~min(~75852u, 9945u)), 2u)];
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2196f + arg_0.x) + _wgslsmith_f_op_f32(trunc(var_1.x)))), arg_0.x, arg_1) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-arg_1), -121f, 442f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1037f, arg_1, arg_0.x) * vec3<f32>(var_1.x, arg_1, arg_1)), global1.a.wyx)) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1081f, var_1.x, -2024f) - vec3<f32>(arg_1, var_1.x, 986f)) - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_1, -493f, -749f), vec3<f32>(arg_1, 543f, arg_0.x))))))));
}

fn func_1() -> vec4<u32> {
    var var_0 = -307f;
    global2 = array<Struct_1, 7>();
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(-248f, 844f, -1278f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-1222f, -337f, -345f) + vec3<f32>(-228f, -178f, 570f))), _wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(802f, -1969f) * vec2<f32>(-1528f, 1169f)), 280f, -11187i)))))) * vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2030f * 1610f))), _wgslsmith_f_op_f32(-1000f - 121f)));
    return firstLeadingBit(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(0u, firstTrailingBit(5314u), 4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(43664u, 6547u, 20185u), vec3<u32>(25022u, 4294967295u, 1u))), vec4<u32>(28709u, ~0u, 4294967295u >> (0u % 32u), 44219u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1348f - -214f) * _wgslsmith_div_f32(-972f, -610f)))))));
    let var_1 = false;
    var var_2 = _wgslsmith_mod_i32(-1i, u_input.a);
    var var_3 = u_input.a & ~u_input.b.x;
    var var_4 = var_1;
    var var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_0 * var_0), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(max(var_0, var_0))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-139f + var_0)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0, -201f, 621f) - vec3<f32>(var_0, -834f, 492f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(1641f, -1461f, var_0) * vec3<f32>(1257f, var_0, -546f))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-2391f, var_0, -1000f))))));
    let var_6 = _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(~select(select(vec4<u32>(4294967295u, 1u, 4294967295u, 115743u), vec4<u32>(32449u, 0u, 1u, 4294967295u), true), vec4<u32>(15035u, 23331u, 22692u, 1263u), global1.a), vec4<u32>(1u, 4294967295u, 4294967295u, 89340u)), ~select(func_1(), vec4<u32>(1u, 1u, 1u, 1u), !select(global1.a, global1.a, global1.a)));
    global0 = u_input.a;
    var var_7 = vec3<i32>(-select(u_input.a, 0i, true), _wgslsmith_mult_i32(-((-2147483647i >> (var_6.x % 32u)) | -2147483647i), -1i), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) + var_5.x), -551f, var_0), vec2<i32>(-1i) * -vec2<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_7.x, u_input.b.x, -2322i, var_7.x), vec4<i32>(2147483647i, u_input.b.x, -2147483647i, var_7.x))), -1781f);
}

