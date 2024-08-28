struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: vec2<f32>,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: vec3<u32>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = u_input.a.x;
    global0 = _wgslsmith_add_u32(min(~1u, ~var_0), reverseBits(86700u));
    var var_1 = select(!select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(!arg_0.a, false, all(vec4<bool>(arg_0.a, arg_0.a, false, arg_0.a))), true), select(select(vec3<bool>(arg_0.a, !arg_0.a, select(true, arg_0.a, true)), select(!vec3<bool>(arg_0.a, arg_0.a, arg_0.a), select(vec3<bool>(false, false, arg_0.a), vec3<bool>(arg_0.a, false, arg_0.a), arg_0.a), true), select(vec3<bool>(arg_0.a, arg_0.a, true), vec3<bool>(true, true, true), vec3<bool>(arg_0.a, true, false))), !select(vec3<bool>(false, true, arg_0.a), select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(false, arg_0.a, arg_0.a), vec3<bool>(true, true, arg_0.a)), arg_0.a), !any(vec3<bool>(arg_0.a, false, true)) || arg_0.a), 4294967295u != countOneBits(_wgslsmith_mod_u32(var_0, _wgslsmith_add_u32(4294967295u, global1.x))));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1583f - _wgslsmith_f_op_f32(arg_0.b.a - arg_0.b.a)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.b.a))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.b.a - -458f), -452f))));
    let var_3 = ~u_input.b.zy;
    return max(_wgslsmith_div_vec3_i32(u_input.b.zzx, -vec3<i32>(u_input.b.x, firstTrailingBit(0i), -13824i)), u_input.b.yyw);
}

fn func_2(arg_0: i32) -> Struct_3 {
    let var_0 = reverseBits(_wgslsmith_dot_vec3_i32(u_input.b.zyz, func_3(Struct_2(true, Struct_1(-412f)))));
    let var_1 = Struct_3(_wgslsmith_dot_vec3_i32(reverseBits(vec3<i32>(arg_0, u_input.b.x, -2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(5507i, u_input.b.x, u_input.b.x), u_input.b.zwz) << (_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, 0u), vec3<u32>(0u, u_input.a.x, 46787u)) % vec3<u32>(32u))) << (~(~0u) % 32u), _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(global1.xy, vec2<u32>(u_input.a.x & 39862u, 28260u), ~(~global1.xx)), vec2<u32>(0u, _wgslsmith_mult_u32(43688u, u_input.a.x))));
    global1 = vec3<u32>(_wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, 70421u, u_input.a.x), vec3<u32>(global1.x, 1u, 39918u)), vec3<u32>(global1.x, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, global1.x, global1.x, var_1.b), ~vec4<u32>(var_1.b, global1.x, u_input.a.x, global1.x)), 20966u)), 64758u, firstTrailingBit(0u));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1494f * _wgslsmith_f_op_f32(f32(-1f) * -976f)))), 1f))));
    var var_3 = vec4<bool>(!all(vec3<bool>(true, any(vec3<bool>(false, true, true)), true)), reverseBits(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.b.x, 9216i)), -u_input.b.xx)) <= -var_0, all(vec2<bool>(true, true)), true);
    return var_1;
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: bool) -> f32 {
    global0 = ~(~(~4294967295u) | ~arg_0.b);
    global1 = ~(~min(~(vec3<u32>(arg_0.b, 1u, arg_0.b) ^ vec3<u32>(u_input.a.x, 0u, arg_0.b)), vec3<u32>(_wgslsmith_sub_u32(global1.x, 46071u), 1u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.b, 3282u, 4294967295u, u_input.a.x), vec4<u32>(4294967295u, 0u, arg_0.b, u_input.a.x)))));
    var var_0 = ~_wgslsmith_clamp_i32(1i, u_input.b.x, 29765i);
    var_0 = u_input.b.x;
    var var_1 = vec3<bool>(false, 119f >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(824f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(990f))))), true);
    return 666f;
}

fn func_1() -> vec4<u32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(-636f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-563f * 237f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(932f, 1177f, false)), -1231f))), _wgslsmith_f_op_f32(func_4(func_2(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i)) >> ((21389u | global1.x) % 32u)), firstLeadingBit(func_2(u_input.b.x).a | _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 38112i), u_input.b.zx)), !all(vec2<bool>(true, true)))));
    let var_1 = vec3<u32>(_wgslsmith_dot_vec3_u32(min(~vec3<u32>(34709u, 4294967295u, u_input.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 7960u, u_input.a.x), vec3<u32>(global1.x, 13351u, global1.x))), ~_wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 57307u, u_input.a.x), vec3<u32>(14374u, 4294967295u, global1.x))) ^ ~_wgslsmith_sub_u32(u_input.a.x, max(global1.x, u_input.a.x)), 4294967295u, 0u);
    global1 = _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(var_1, ~var_1), vec3<u32>(global1.x, ~(_wgslsmith_clamp_u32(u_input.a.x, var_1.x, global1.x) >> (1158u % 32u)), _wgslsmith_dot_vec4_u32(vec4<u32>(23526u, global1.x, global1.x, 4294967295u) | vec4<u32>(0u, 86850u, global1.x, 5858u), select(vec4<u32>(global1.x, 18624u, global1.x, var_1.x), vec4<u32>(global1.x, global1.x, var_1.x, 0u), true))));
    var var_2 = Struct_2(true, Struct_1(var_0.x));
    var var_3 = -767f;
    return vec4<u32>(min(23890u, max(1u, ~18775u)) << (global1.x % 32u), _wgslsmith_div_u32(0u, var_1.x), u_input.a.x, 108355u);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = 40587u;
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1112f, 1000f))) - _wgslsmith_f_op_f32(-1f)));
    let var_1 = (abs(func_1()) & max(~vec4<u32>(u_input.a.x, 66605u, global1.x, u_input.a.x), vec4<u32>(u_input.a.x & u_input.a.x, u_input.a.x, u_input.a.x, 97233u))) << (vec4<u32>(~1u, abs(10362u), ~1u, global1.x) % vec4<u32>(32u));
    var var_2 = -1037f;
    global1 = var_1.yxx ^ var_1.yxy;
    global0 = ~(min(u_input.a.x >> (~var_1.x % 32u), global1.x) | 1u);
    let x = u_input.a;
    s_output = StorageBuffer(func_3(Struct_2(false, Struct_1(_wgslsmith_f_op_f32(-599f - 1000f)))).x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -112f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(1143f, 400f)), -946f)) - -1000f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(924f, 1000f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(196f, -860f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-257f, 566f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -782f), -1878f)), firstLeadingBit(vec2<i32>(u_input.b.x, 15552i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(212f)), _wgslsmith_f_op_f32(f32(-1f) * -1011f)) + -372f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -395f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(625f * 956f), _wgslsmith_f_op_f32(-825f + 163f)))))));
}

