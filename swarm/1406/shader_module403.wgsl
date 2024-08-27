struct Struct_1 {
    a: vec2<i32>,
    b: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 17>;

var<private> global1: bool;

var<private> global2: f32;

var<private> global3: bool = false;

var<private> global4: array<vec4<u32>, 10> = array<vec4<u32>, 10>(vec4<u32>(27956u, 75255u, 43513u, 10324u), vec4<u32>(60195u, 1u, 12308u, 1u), vec4<u32>(0u, 0u, 7389u, 107611u), vec4<u32>(0u, 111222u, 55062u, 0u), vec4<u32>(4294967295u, 0u, 1u, 4294967295u), vec4<u32>(1u, 5426u, 62596u, 10921u), vec4<u32>(4294967295u, 77908u, 11207u, 12160u), vec4<u32>(0u, 43070u, 114775u, 33426u), vec4<u32>(628u, 0u, 8131u, 74351u), vec4<u32>(53934u, 51426u, 52717u, 4294967295u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_0.b.wwy * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-255f, arg_1, arg_1) - arg_0.b.xzz) + _wgslsmith_f_op_vec3_f32(arg_0.b.wzz - _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, -885f, arg_1) + vec3<f32>(1000f, 261f, 710f))))));
    var var_1 = arg_1;
    global4 = array<vec4<u32>, 10>();
    let var_2 = ~select(select(vec2<u32>(4294967295u, u_input.b) | ~vec2<u32>(u_input.b, 270u), firstTrailingBit(~vec2<u32>(14495u, u_input.b)), select(arg_2.wx, select(arg_2.zw, arg_2.yz, arg_2.x), vec2<bool>(false, true))), vec2<u32>(~u_input.b, 0u), (u_input.b & firstLeadingBit(42721u)) < (u_input.b ^ u_input.b));
    let var_3 = var_0.x;
    return _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(717f * arg_0.b.x));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(644f, 346f, _wgslsmith_div_f32(458f, 913f), -1903f) - vec4<f32>(1f, _wgslsmith_f_op_f32(abs(-119f)), -602f, _wgslsmith_f_op_f32(-254f - 2725f))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(u_input.a.yy, vec4<f32>(-899f, -433f, 362f, 586f)), 345f, vec4<bool>(false, true, true, false))), _wgslsmith_f_op_f32(f32(-1f) * -553f), _wgslsmith_f_op_f32(2233f * 1249f), _wgslsmith_f_op_f32(-369f * 1813f)))));
    let var_1 = select(vec4<bool>(true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), all(vec2<bool>(false, true)))), all(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec4<bool>(false, false, true, true))))), !vec4<bool>(select(21104i, 14525i, false) != select(-48517i, u_input.a.x, true), !any(vec4<bool>(false, false, false, true)), all(select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), true)), any(vec3<bool>(true, true, true))), all(select(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), !select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true), false)));
    let var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(286f, -1241f, var_0.x, -185f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<f32>(-193f, -138f, -2133f, var_0.x), var_1.x))))))));
    var var_3 = var_1.x;
    return min(u_input.b, abs(u_input.b));
}

fn func_1(arg_0: vec2<f32>) -> f32 {
    let var_0 = ~abs(~u_input.b) << (u_input.b % 32u);
    let var_1 = ~select(var_0, func_2(), !(!all(vec2<bool>(true, false))));
    var var_2 = abs(vec4<i32>(2147483647i, u_input.a.x, ~(select(u_input.a.x, u_input.a.x, false) >> (var_0 % 32u)), _wgslsmith_dot_vec2_i32((u_input.a.yz & u_input.a.yy) | abs(u_input.a.xx), select(u_input.a.zy, _wgslsmith_clamp_vec2_i32(vec2<i32>(0i, u_input.a.x), u_input.a.zy, vec2<i32>(2147483647i, -26441i)), select(vec2<bool>(false, true), vec2<bool>(false, false), false)))));
    var var_3 = vec4<u32>(~u_input.b, ~65415u, ~_wgslsmith_div_u32(117117u, var_1), _wgslsmith_dot_vec2_u32(select(_wgslsmith_div_vec2_u32(vec2<u32>(345u, u_input.b), vec2<u32>(62748u, 0u)), vec2<u32>(var_0, 10257u) & vec2<u32>(5511u, 8043u), all(vec2<bool>(false, true))), vec2<u32>(min(var_0, var_1), 0u)) >> (14850u % 32u));
    let var_4 = (_wgslsmith_add_i32(select(u_input.a.x ^ -1i, ~u_input.a.x, true), ~(~0i)) < abs(countOneBits(0i))) && true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(305f)), _wgslsmith_f_op_f32(trunc(arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(207f, 2704f), vec2<f32>(135f, 491f))))))));
    global1 = all(vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), false)), !(_wgslsmith_f_op_f32(round(693f)) == 607f), !(true && (-58883i < u_input.a.x))));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-927f)) * _wgslsmith_f_op_f32(ceil(-830f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-719f - -1000f)))) < -380f;
    var_0 = _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-704f, -608f)))) - -1190f));
    let var_2 = Struct_2(select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, true), true)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), true), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -514f), -578f, _wgslsmith_f_op_f32(sign(-1124f)))), vec3<f32>(1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(200f * -280f))), -1270f)), vec2<bool>(true, all(vec3<bool>(false, any(vec3<bool>(true, false, true)), any(vec4<bool>(true, true, true, true))))));
    let var_3 = max(global0[_wgslsmith_index_u32(u_input.b, 17u)], ((countOneBits(global0[_wgslsmith_index_u32(u_input.b, 17u)]) >> ((vec3<u32>(2855u, u_input.b, u_input.b) << (global0[_wgslsmith_index_u32(1u, 17u)] % vec3<u32>(32u))) % vec3<u32>(32u))) | abs(~vec3<u32>(u_input.b, u_input.b, 1u))) | _wgslsmith_clamp_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, u_input.b), global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(30113u, 6435u), 17u)] & abs(vec3<u32>(u_input.b, u_input.b, 4294967295u)), vec3<u32>(reverseBits(u_input.b), _wgslsmith_div_u32(86639u, u_input.b), u_input.b)));
    let var_4 = abs(58281i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(var_4, 3487i), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(490f, var_2.b.x))))), ~(_wgslsmith_dot_vec4_u32(~global4[_wgslsmith_index_u32(var_3.x, 10u)], global4[_wgslsmith_index_u32(var_3.x, 10u)]) | var_3.x));
}

