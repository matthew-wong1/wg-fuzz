struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(vec2<i32>(i32(-2147483648), -23835i)), Struct_3(vec2<i32>(i32(-2147483648), 5014i)), Struct_3(vec2<i32>(-12413i, -51249i)), Struct_3(vec2<i32>(42048i, -1i)), Struct_3(vec2<i32>(2147483647i, 8592i)), Struct_3(vec2<i32>(11961i, 2147483647i)), Struct_3(vec2<i32>(-14990i, i32(-2147483648))), Struct_3(vec2<i32>(17714i, 16195i)), Struct_3(vec2<i32>(-37964i, 1i)), Struct_3(vec2<i32>(-44036i, 0i)), Struct_3(vec2<i32>(551i, -198i)), Struct_3(vec2<i32>(39158i, 16149i)), Struct_3(vec2<i32>(-7706i, -21835i)), Struct_3(vec2<i32>(-1i, 1i)), Struct_3(vec2<i32>(i32(-2147483648), 26120i)), Struct_3(vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec2<i32>(-1i, 1i)), Struct_3(vec2<i32>(2147483647i, 2147483647i)), Struct_3(vec2<i32>(1i, -1i)), Struct_3(vec2<i32>(i32(-2147483648), 2147483647i)), Struct_3(vec2<i32>(-1i, -1i)), Struct_3(vec2<i32>(25564i, 0i)));

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_1() -> f32 {
    global0 = array<Struct_3, 22>();
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1745f, _wgslsmith_f_op_f32(f32(-1f) * -957f)), _wgslsmith_f_op_f32(f32(-1f) * -394f)))));
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    return _wgslsmith_f_op_f32(var_0 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1090f + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(599f + -204f), -1727f, var_0 < 1579f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -910f)))));
}

fn func_2() -> f32 {
    global0 = array<Struct_3, 22>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(267f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-322f * _wgslsmith_f_op_f32(f32(-1f) * -200f)))), -910f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f + -822f), 194f) + 1500f)));
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    return -181f;
}

fn func_3() -> vec2<f32> {
    var var_0 = vec2<i32>(_wgslsmith_add_i32(_wgslsmith_mod_i32(select(_wgslsmith_add_i32(0i, 9305i), _wgslsmith_sub_i32(0i, 2147483647i), true), -_wgslsmith_mult_i32(0i, -2147483647i)), ~(~(~0i))), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-11056i, 0i >> (u_input.a % 32u), -46724i), firstLeadingBit(vec3<i32>(1i, 2033i, 0i))), _wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_add_i32(-24301i, 0i), ~(-19599i), _wgslsmith_mod_i32(-23490i, 7816i)), firstTrailingBit(vec3<i32>(0i, -18956i, 53424i)), -select(vec3<i32>(-1i, -2147483647i, -2147483647i), vec3<i32>(-40562i, -108314i, -44141i), true))));
    var_0 = firstLeadingBit(countOneBits(firstTrailingBit(firstTrailingBit(vec2<i32>(var_0.x, var_0.x)))) | ~(-(vec2<i32>(var_0.x, -2147483647i) << (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(632f + 1204f)))))), 941f);
    var_0 = ~reverseBits(vec2<i32>(-1i, 1i));
    var var_2 = 337f;
    return _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_div_f32(224f, 674f))) + _wgslsmith_f_op_f32(-var_1))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1000f, -1385f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-334f, var_1)))) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-155f, -1125f), _wgslsmith_f_op_f32(var_1 - 2474f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-2064f, -449f) - vec2<f32>(var_1, var_1))), all(vec3<bool>(false, true, true))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> bool {
    let var_0 = vec4<f32>(-2526f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -447f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.a) - arg_2)), _wgslsmith_f_op_f32(sign(-688f)))), arg_0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -252f)) - _wgslsmith_f_op_f32(f32(-1f) * -1196f)))));
    global0 = array<Struct_3, 22>();
    let var_1 = u_input.a;
    var var_2 = firstTrailingBit(_wgslsmith_add_i32(-45235i, arg_1.x));
    let var_3 = arg_3;
    return any(vec4<bool>(true, var_3.c, true, arg_0.x <= _wgslsmith_div_f32(var_0.x, -1029f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 22>();
    global0 = array<Struct_3, 22>();
    var var_0 = vec4<i32>(_wgslsmith_sub_i32(~_wgslsmith_mod_i32(-5344i << (u_input.a % 32u), _wgslsmith_mod_i32(-3080i, -1i)), (max(-2147483647i, 1i) >> (_wgslsmith_mult_u32(u_input.a, u_input.a) % 32u)) >> (u_input.a % 32u)), min(-12986i, 54448i) << (u_input.a % 32u), ~(i32(-1i) * -_wgslsmith_add_i32(1i, 0i)), -1i);
    let var_1 = -var_0.x <= -_wgslsmith_clamp_i32(reverseBits(var_0.x), var_0.x, var_0.x);
    let var_2 = func_4(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(func_1()), -1828f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-332f + 869f))), _wgslsmith_f_op_f32(f32(-1f) * -169f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(849f + -813f), -1847f, -421f, _wgslsmith_f_op_f32(func_2())))))), var_0.xy, _wgslsmith_f_op_f32(-605f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-423f, 712f)), _wgslsmith_f_op_f32(select(-523f, -1348f, var_1)))) + _wgslsmith_f_op_f32(ceil(-539f)))), Struct_1(-865f, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1314f, -1000f), vec2<f32>(-176f, -2783f), var_1)))), !var_1));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(~_wgslsmith_mod_i32(select(199i, -21685i, var_2), abs(-57407i))), (vec4<u32>(_wgslsmith_mult_u32(u_input.a, u_input.a), _wgslsmith_add_u32(34613u, 0u), ~7527u, _wgslsmith_sub_u32(113388u, 70589u)) & (vec4<u32>(u_input.a, 17799u, 12112u, u_input.a) ^ _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 17840u, 26121u, 1u), vec4<u32>(4294967295u, 1u, u_input.a, 14139u)))) ^ ~vec4<u32>(~u_input.a, ~u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(u_input.a, u_input.a)), u_input.a << (10675u % 32u)), -_wgslsmith_mod_i32(var_0.x, 1i), _wgslsmith_mod_u32(u_input.a ^ _wgslsmith_clamp_u32(1u, 4294967295u, u_input.a >> (u_input.a % 32u)), abs(firstLeadingBit(~u_input.a))));
}

