struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec3<bool>,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 30>;

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 71368u, 4294967295u, 1u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(any(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(false, true)), true), vec2<bool>(true, true))));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-3837f, 1561f, _wgslsmith_f_op_f32(-1716f * 689f)))));
    let var_2 = 56578i;
    global0 = array<Struct_2, 30>();
    var var_3 = countOneBits(select(vec2<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, u_input.a.x, 4294967295u, u_input.c.x), select(vec4<u32>(global1.x, 4294967295u, global1.x, 1u), vec4<u32>(global1.x, global1.x, 57608u, 4294967295u), vec4<bool>(var_0.a, var_0.a, false, false))), u_input.a.x << (4294967295u % 32u)), u_input.a & (~vec2<u32>(u_input.a.x, u_input.a.x) >> (vec2<u32>(u_input.c.x, global1.x) % vec2<u32>(32u))), select(var_0.a, true, all(select(vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, true))))));
    return _wgslsmith_mod_i32(_wgslsmith_sub_i32(4087i >> ((~u_input.a.x << (var_3.x % 32u)) % 32u), _wgslsmith_dot_vec3_i32(~vec3<i32>(-2147483647i, 1792i, -21088i), vec3<i32>(68361i, u_input.b, var_2)) | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 2147483647i, -35819i), -vec3<i32>(26825i, 0i, u_input.b))), ~firstTrailingBit(i32(-1i) * -27133i));
}

fn func_2() -> Struct_2 {
    let var_0 = !select(!vec3<bool>(true, true, all(vec2<bool>(true, true))), vec3<bool>(1i >= func_3(), select(true, true, false), !(u_input.c.x > u_input.c.x)), vec3<bool>(true, true, true));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(533f)) * _wgslsmith_f_op_f32(918f - -202f)))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(263f, 154f)), -1000f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1000f, -334f)))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(-308f + 577f), all(vec2<bool>(var_0.x, true)))), -1310f, true || var_0.x))));
    global1 = u_input.c << (u_input.c % vec4<u32>(32u));
    global0 = array<Struct_2, 30>();
    global0 = array<Struct_2, 30>();
    return global0[_wgslsmith_index_u32(~(~u_input.c.x), 30u)];
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: bool) -> u32 {
    var var_0 = global1.x;
    var_0 = countOneBits(~(~u_input.c.x >> (u_input.a.x % 32u)) | (abs(1u) ^ (u_input.a.x << (4294967295u % 32u))));
    global0 = array<Struct_2, 30>();
    let var_1 = Struct_2(true);
    let var_2 = func_2();
    return _wgslsmith_add_u32(93967u, global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(u_input.b, ~(-1i));
    global1 = ~vec4<u32>(u_input.a.x, global1.x << (func_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(387f, -578f, -293f, -1000f) * vec4<f32>(-2256f, 769f, 1187f, 848f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-235f, -458f, -267f, 651f) + vec4<f32>(1055f, -706f, -127f, -335f)), true) % 32u), ~_wgslsmith_mult_u32(global1.x & 0u, _wgslsmith_clamp_u32(global1.x, u_input.c.x, 1u)), 1u);
    let var_1 = Struct_1(vec4<u32>(countOneBits(141277u), countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(37606u, 52927u), ~global1.x)), global1.x, _wgslsmith_sub_u32((u_input.a.x | u_input.c.x) << (0u % 32u), _wgslsmith_add_u32(~1u, 1u))), !(!((i32(-1i) * -8991i) == u_input.b)), vec3<bool>(false, (2294u <= global1.x) || true, true), var_0.x, u_input.c.x);
    global1 = ~var_1.a;
    var var_2 = ~(-(reverseBits(u_input.b) | 2147483647i)) >> (1u % 32u);
    var var_3 = Struct_2((_wgslsmith_dot_vec4_i32(-vec4<i32>(-2147483647i, 17942i, 7978i, 2946i), ~vec4<i32>(-28174i, -26199i, -15777i, var_0.x)) >> (global1.x % 32u)) < min(u_input.b, u_input.b));
    var var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(1000f, -1739f)), 786f) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1000f, -1859f), vec2<f32>(-1479f, -1000f)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(300f, 886f)), vec2<f32>(695f, -515f), true)) + vec2<f32>(-972f, -869f))) * _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1236f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-853f, 1028f) + vec2<f32>(160f, 1000f))))))));
    global1 = max(_wgslsmith_sub_vec4_u32(firstTrailingBit(u_input.c), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(56909u, 0u, var_1.e, 1u) ^ vec4<u32>(31488u, 33797u, 1u, var_1.e), ~vec4<u32>(var_1.a.x, u_input.c.x, 0u, 0u), u_input.c)), ~(~select(reverseBits(var_1.a), vec4<u32>(8969u, var_1.e, global1.x, global1.x), select(vec4<bool>(var_1.c.x, var_3.a, false, var_3.a), vec4<bool>(false, true, var_3.a, false), vec4<bool>(false, true, true, var_1.b)))));
    var_3 = global0[_wgslsmith_index_u32(u_input.a.x, 30u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(175f, -501f, var_4.x)))), vec3<f32>(var_4.x, var_4.x, var_4.x)) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-405f, -978f, var_4.x))))) - vec3<f32>(-328f, var_4.x, var_4.x))), _wgslsmith_add_vec2_u32(var_1.a.zy, abs(global1.xw)));
}

