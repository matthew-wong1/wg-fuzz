struct Struct_1 {
    a: i32,
    b: f32,
    c: bool,
    d: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: array<vec2<bool>, 24> = array<vec2<bool>, 24>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<bool> {
    var var_0 = Struct_1(_wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(~(-1i), countOneBits(1i), 0i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1702f)), any(vec3<bool>(all(vec2<bool>(false, true)), false, true)), u_input.b.x);
    global0 = all(vec4<bool>(true, !(var_0.b > _wgslsmith_f_op_f32(-var_0.b)), any(select(vec4<bool>(true, true, false, false), vec4<bool>(true, var_0.c, var_0.c, true), false)) | var_0.c, !(true | all(vec4<bool>(true, false, var_0.c, true)))));
    var var_1 = Struct_1(u_input.a.x, var_0.b, true, (u_input.b.x & var_0.d) & ~_wgslsmith_clamp_u32(~38916u, u_input.b.x, ~u_input.b.x));
    var_1 = Struct_1(select(i32(-1i) * -2147483647i, u_input.a.x, var_1.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1122f, 1074f))) * -1307f), _wgslsmith_f_op_f32(max(1279f, var_0.b)) >= var_1.b, 11895u);
    let var_2 = 1i;
    return vec2<bool>(var_1.c, all(select(vec2<bool>(var_0.c, var_0.c), !vec2<bool>(var_1.c, var_0.c), true)));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_1 {
    let var_0 = Struct_1(-9195i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(step(arg_1, -1463f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1000f, arg_1))))))), false | any(vec4<bool>(arg_0.x | arg_0.x, false, false || arg_0.x, true)), ~4294967295u);
    let var_1 = _wgslsmith_f_op_f32(step(arg_1, _wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-180f * 272f), true))));
    global0 = all(func_3());
    global0 = false;
    var var_2 = 1376f;
    return Struct_1(-firstTrailingBit(1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1221f))), ~u_input.b.x >= ~(~var_0.d), u_input.b.x);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: u32, arg_3: i32) -> Struct_1 {
    global0 = true;
    global1 = array<vec2<bool>, 24>();
    global1 = array<vec2<bool>, 24>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1022f, 2535f, -1000f, 1071f)))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-970f, -1382f, arg_1.b, -1494f) + vec4<f32>(arg_1.b, arg_1.b, 245f, -577f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.b, -1580f, 1000f, 954f) + vec4<f32>(arg_1.b, arg_1.b, -238f, arg_1.b)), arg_1.c))))) - vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.b, 907f)))), _wgslsmith_f_op_f32(sign(457f)), _wgslsmith_f_op_f32(step(-724f, _wgslsmith_f_op_f32(f32(-1f) * -433f))), 1042f));
    var var_1 = func_2(vec3<bool>(~(~arg_1.d) <= arg_2, any(vec2<bool>(any(vec4<bool>(arg_1.c, arg_1.c, true, arg_1.c)), false)), abs(_wgslsmith_div_u32(arg_1.d, arg_2)) != arg_2), -439f);
    return func_2(!vec3<bool>(var_1.c, arg_1.c | var_1.c, ~(-1i) == _wgslsmith_add_i32(arg_3, arg_1.a)), arg_1.b);
}

fn func_5(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    let var_0 = arg_0.c;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(arg_0.b))));
    var var_3 = _wgslsmith_div_f32(var_2, -329f);
    var var_4 = Struct_1(-firstLeadingBit(reverseBits(~arg_0.a)), _wgslsmith_div_f32(var_2, arg_0.b), !(!(_wgslsmith_f_op_f32(step(-532f, var_1.b)) >= _wgslsmith_f_op_f32(select(var_1.b, var_1.b, false)))), ~var_1.d);
    return arg_0;
}

fn func_1() -> i32 {
    var var_0 = func_5(func_4(vec3<i32>(u_input.e, u_input.d.x, _wgslsmith_clamp_i32(1i, -1i, u_input.d.x)), func_2(vec3<bool>(true, true, true), 276f), 53967u, 1i), ~(~u_input.a.x) ^ _wgslsmith_sub_i32(u_input.c.x, u_input.d.x));
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(653f, -1000f, var_0.b, var_0.b)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -578f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 1684f) - 373f), _wgslsmith_f_op_f32(min(func_4(u_input.c.zxy, Struct_1(-2147483647i, var_0.b, false, 23772u), 0u, 40439i).b, _wgslsmith_f_op_f32(ceil(var_0.b))))) + _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(-119f * var_0.b), var_0.b, 525f, 509f)))));
    global0 = var_0.c;
    global0 = func_2(select(!select(!vec3<bool>(var_0.c, true, true), !vec3<bool>(false, var_0.c, var_0.c), !vec3<bool>(var_0.c, var_0.c, true)), !vec3<bool>(any(vec2<bool>(var_0.c, var_0.c)), any(vec2<bool>(true, false)), !var_0.c), all(!global1[_wgslsmith_index_u32(46752u, 24u)]) | func_3().x), -2245f).c;
    let var_2 = firstLeadingBit(u_input.c) ^ vec4<i32>(~34369i, _wgslsmith_mult_i32(var_0.a, abs(0i)), _wgslsmith_div_i32(2147483647i, u_input.d.x), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.d.x, ~u_input.c.x), -7754i));
    return _wgslsmith_clamp_i32(-u_input.e, select(~_wgslsmith_mult_i32(func_2(vec3<bool>(var_0.c, var_0.c, var_0.c), -2046f).a, _wgslsmith_clamp_i32(var_0.a, 0i, var_2.x)), var_2.x, var_0.c), _wgslsmith_mod_i32(func_4(-vec3<i32>(var_2.x, u_input.e, 1i), Struct_1(var_0.a, var_0.b, var_0.c, 1u), 5064u, -2147483647i << (0u % 32u)).a, 28917i) | (~var_0.a ^ -var_0.a));
}

fn func_6(arg_0: vec3<bool>, arg_1: i32, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(arg_3.a, -1i, 1i), arg_1), _wgslsmith_f_op_f32(-arg_2.x), select(arg_3.c, arg_0.x, arg_3.c), func_2(!(!arg_0), 1881f).d);
    global1 = array<vec2<bool>, 24>();
    let var_1 = arg_3;
    let var_2 = arg_3;
    let var_3 = var_1;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-143f, -480f)))) * _wgslsmith_f_op_f32(var_3.b - var_2.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(var_0.b * var_2.b)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.b)) + _wgslsmith_f_op_f32(857f * var_2.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1661f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)) + _wgslsmith_f_op_f32(-1f)) + _wgslsmith_f_op_f32(func_6(vec3<bool>(true, select(true, false, true), true), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-757f, -359f, 557f) + vec3<f32>(793f, -156f, 2437f))), Struct_1(func_1(), -678f, true, _wgslsmith_mod_u32(u_input.b.x, u_input.b.x))))));
    var var_1 = func_4(~vec3<i32>(func_2(vec3<bool>(true, false, false), 1059f).a | ~1i, ~_wgslsmith_mod_i32(-37836i, u_input.e), u_input.d.x), func_2(vec3<bool>(select(true, func_3().x, func_2(vec3<bool>(false, false, true), 165f).c), true, any(vec4<bool>(false, false, false, false)) & true), -319f), ~74784u, func_4(vec3<i32>(u_input.c.x, _wgslsmith_div_i32(-18688i, u_input.e) | u_input.e, 1i), func_5(Struct_1(_wgslsmith_mod_i32(u_input.a.x, 2147483647i), _wgslsmith_f_op_f32(f32(-1f) * -292f), true, ~1u), u_input.c.x), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_dot_vec3_u32(u_input.b, vec3<u32>(75438u, u_input.b.x, 27100u))), ~1u, ~25359u), -4923i).a);
    global1 = array<vec2<bool>, 24>();
    var var_2 = false;
    global0 = !all(vec4<bool>(var_1.c, !(u_input.b.x >= 50765u), false, var_1.c));
    let var_3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstLeadingBit(u_input.b.x), u_input.b.x, 4294967295u, 59448u >> (_wgslsmith_dot_vec2_u32(u_input.b.xz, u_input.b.yy) % 32u)), _wgslsmith_mod_vec4_u32(~(vec4<u32>(87627u, u_input.b.x, u_input.b.x, 37743u) << (vec4<u32>(42623u, 0u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))), vec4<u32>(1u, 58282u, 1u >> (u_input.b.x % 32u), countOneBits(23432u))), max(~(~vec4<u32>(37249u, 67073u, var_1.d, u_input.b.x)), min(vec4<u32>(4294967295u, 8747u, var_1.d, 12758u) & vec4<u32>(var_1.d, 33463u, var_1.d, var_1.d), ~vec4<u32>(0u, u_input.b.x, u_input.b.x, 4294967295u)))) & ~(~select(vec4<u32>(4294967295u, 0u, 18986u, 54171u), vec4<u32>(4294967295u, var_1.d, var_1.d, 1u), select(vec4<bool>(var_1.c, var_1.c, false, var_1.c), vec4<bool>(false, var_1.c, true, var_1.c), vec4<bool>(false, false, var_1.c, var_1.c))));
    var_2 = !func_4(countOneBits(u_input.a) | (_wgslsmith_add_vec3_i32(vec3<i32>(0i, 0i, var_1.a), u_input.c.xyw) << (~u_input.b % vec3<u32>(32u))), Struct_1(min(2147483647i, 38053i), func_2(select(vec3<bool>(var_1.c, false, false), vec3<bool>(var_1.c, true, true), true), _wgslsmith_f_op_f32(min(-530f, var_1.b))).b, func_3().x, ~var_3.x), var_1.d, 2147483647i).c;
    var_2 = any(!(!select(vec4<bool>(var_1.c, var_1.c, true, var_1.c), vec4<bool>(true, var_1.c, true, var_1.c), true)));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.b.x, var_1.b, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + -1797f))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0, var_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + var_1.b)))))), i32(-1i) * -1i, _wgslsmith_sub_vec4_i32(u_input.c, _wgslsmith_clamp_vec4_i32(u_input.c, max(firstTrailingBit(vec4<i32>(u_input.c.x, -25514i, -59874i, 34525i)), vec4<i32>(-23125i, 8335i, var_1.a, 39992i)), countOneBits(u_input.c))));
}

