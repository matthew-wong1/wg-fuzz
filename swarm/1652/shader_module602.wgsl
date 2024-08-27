struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> f32 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-501f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(f32(-1f) * -2109f)))));
    let var_0 = vec2<u32>(u_input.a, 28655u);
    let var_1 = select(select(select(!select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), false), select(vec4<bool>(true, true, false, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, false)), true), vec4<bool>(true, true, true, true)), vec4<bool>(any(vec2<bool>(false, false)), false, (u_input.a > 4294967295u) & true, _wgslsmith_mod_i32(-39304i, -2147483647i) <= _wgslsmith_clamp_i32(-1i, 1i, 10310i)), vec4<bool>(true, all(select(vec2<bool>(false, false), vec2<bool>(false, false), false)), true, true)), vec4<bool>(true, true, all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), any(vec2<bool>(true, true))), vec4<bool>(all(vec2<bool>(false, true)), !select(true, true, true), false, select(true, true, true)));
    let var_2 = u_input.a;
    let var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-527f, -1005f, -179f, -366f))))));
    return var_3.a.x;
}

fn func_2(arg_0: vec4<bool>) -> f32 {
    global0 = _wgslsmith_f_op_f32(func_3());
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1036f, 150f, -455f, -284f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1986f, 250f, -703f, 531f) + vec4<f32>(-1203f, -690f, -176f, -380f)))))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.a)));
    var var_2 = var_1;
    let var_3 = vec2<bool>(false, var_1.a.x > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1372f * _wgslsmith_f_op_f32(-2442f - -687f)))));
    return _wgslsmith_div_f32(1239f, 277f);
}

fn func_1() -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1000f * 1397f), -1620f, _wgslsmith_f_op_f32(ceil(1335f)), _wgslsmith_f_op_f32(min(328f, 909f))))));
    var var_1 = _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(83704u, countOneBits(u_input.a)), ~(~(~u_input.a))), ~_wgslsmith_add_vec2_u32(min(~vec2<u32>(4294967295u, 35016u), vec2<u32>(1u, 1u)), ~(~vec2<u32>(u_input.a, u_input.a))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(vec4<bool>(true, true, true, true)))) + -876f) + var_0.a.x);
    let var_2 = true;
    return ~_wgslsmith_add_u32(max(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, var_1.x), vec2<u32>(var_1.x, var_1.x), vec2<u32>(0u, 30564u)), abs(vec2<u32>(u_input.a, 65343u))), _wgslsmith_dot_vec4_u32(firstLeadingBit(vec4<u32>(u_input.a, u_input.a, var_1.x, u_input.a)), vec4<u32>(u_input.a, 5142u, var_1.x, var_1.x))), max(0u & (u_input.a ^ 117135u), ~(u_input.a ^ var_1.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(_wgslsmith_add_u32(u_input.a, func_1()) << (min(~1u, u_input.a) % 32u));
    let var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, -346f, 836f, -165f), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1330f, -370f, 1063f, -393f), vec4<f32>(-1406f, -1423f, 915f, -749f), false)))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1200f, 1456f, -1600f, 606f) + vec4<f32>(1288f, -1793f, 1455f, -1964f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(166f, 969f, -661f, 294f))), any(vec2<bool>(true, false)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-2329f, 578f, 1000f, 1748f)))))))));
    global0 = -180f;
    global0 = _wgslsmith_f_op_f32(func_2(!select(vec4<bool>(true, true, var_0 <= 23816u, true), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), false))));
    let var_2 = select(vec4<bool>(true, any(vec2<bool>(true, 50659u <= var_0)), !all(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true))), true), vec4<bool>(any(vec2<bool>(false, all(vec4<bool>(false, true, true, false)))), true, any(select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true))), !(_wgslsmith_div_i32(2147483647i, -1i) > _wgslsmith_dot_vec3_i32(vec3<i32>(38071i, -2037i, 34684i), vec3<i32>(-7244i, 21657i, -2147483647i)))), !(any(vec2<bool>(true, true)) & true));
    var var_3 = Struct_1(var_1.a);
    let var_4 = 12441u;
    var var_5 = select(vec4<u32>(4294967295u, min(4294967295u, ~_wgslsmith_sub_u32(var_4, var_0)), 1u, ~_wgslsmith_div_u32(~u_input.a, var_4 ^ 61769u)), ((firstTrailingBit(vec4<u32>(10024u, var_4, 1u, 4294967295u)) & _wgslsmith_mod_vec4_u32(vec4<u32>(var_4, u_input.a, var_4, var_0), vec4<u32>(13371u, var_4, var_0, u_input.a))) ^ (abs(vec4<u32>(99215u, u_input.a, 9026u, 0u)) | vec4<u32>(u_input.a, 25488u, var_4, 51336u))) & ~((vec4<u32>(var_4, var_4, u_input.a, var_0) >> (vec4<u32>(var_4, var_0, 0u, u_input.a) % vec4<u32>(32u))) >> (~vec4<u32>(10798u, u_input.a, 121851u, var_4) % vec4<u32>(32u))), var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-117f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1446f)) - _wgslsmith_f_op_f32(-var_1.a.x))))), u_input.a);
}

