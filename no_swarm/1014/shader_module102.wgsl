struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: i32,
    d: vec3<u32>,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
    d: vec4<f32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -435f;

var<private> global1: vec3<i32>;

var<private> global2: u32;

var<private> global3: u32 = 5651u;

var<private> global4: vec3<u32>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32) -> f32 {
    global3 = _wgslsmith_mod_u32(~(~(~1u)) ^ firstTrailingBit(~reverseBits(0u)), u_input.b.x);
    let var_0 = _wgslsmith_div_vec2_u32(u_input.a.yx, u_input.b);
    let var_1 = Struct_2(Struct_1(select(!all(vec2<bool>(false, true)), select(true, true, true), true == select(false, true, false)), vec3<f32>(_wgslsmith_div_f32(-807f, _wgslsmith_div_f32(-238f, 1242f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1698f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-851f))))), reverseBits(-29254i), ~vec3<u32>(firstTrailingBit(60295u), 21223u & global4.x, firstLeadingBit(global4.x)), vec3<f32>(_wgslsmith_f_op_f32(-1722f - _wgslsmith_f_op_f32(f32(-1f) * -301f)), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-809f, -551f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-629f + -1356f)))), select(firstTrailingBit(vec2<u32>(4294967295u, global4.x)), u_input.b, vec2<bool>(true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-188f, 730f) * vec2<f32>(199f, -1144f)))) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1000f, 480f))))))));
    global3 = reverseBits(firstLeadingBit(63828u));
    let var_2 = vec4<i32>(~abs(_wgslsmith_sub_i32(abs(1i), arg_0)), ~_wgslsmith_add_i32(~(-26554i) & var_1.a.c, var_1.a.c), 1i, _wgslsmith_mult_i32(~37922i, countOneBits(-45354i)));
    return -1722f;
}

fn func_2() -> u32 {
    var var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1746f, -1000f, 192f, -537f))) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1067f, -1169f, 949f, -430f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 803f, -805f, 329f) - vec4<f32>(-1083f, -1000f, -1081f, -1000f))) + vec4<f32>(1000f, _wgslsmith_f_op_f32(func_3(u_input.c)), _wgslsmith_div_f32(238f, -221f), _wgslsmith_f_op_f32(abs(-356f)))), true)), Struct_1(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, -728f, 1747f) - vec3<f32>(-1110f, 440f, 1094f)), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-241f, -798f, -1233f)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1000f, 859f, 1028f), vec3<f32>(328f, -585f, 1265f))), vec3<f32>(-336f, 934f, 121f))), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false))))), i32(-1i) * -20395i, u_input.a, vec3<f32>(185f, -921f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(784f, 1315f)))))));
    global4 = ~((u_input.a & vec3<u32>(4083u, global4.x, 45566u)) | ~firstLeadingBit(u_input.a)) | vec3<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(~u_input.a, ~var_0.b.d), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(1u, var_0.b.d.x, var_0.b.d.x), vec3<u32>(4294967295u, u_input.a.x, 0u)), ~vec3<u32>(1u, global4.x, u_input.b.x))), 1u, 8829u);
    global1 = select(~(~(vec3<i32>(global1.x, global1.x, global1.x) << (vec3<u32>(25092u, var_0.b.d.x, 0u) % vec3<u32>(32u))) << (abs(~vec3<u32>(var_0.b.d.x, global4.x, 36077u)) % vec3<u32>(32u))), vec3<i32>(-79296i, var_0.b.c, u_input.c), select(select(vec3<bool>(var_0.b.a, any(vec2<bool>(false, var_0.b.a)), true), select(!vec3<bool>(var_0.b.a, true, var_0.b.a), vec3<bool>(var_0.b.a, false, false), vec3<bool>(false, var_0.b.a, var_0.b.a)), !select(vec3<bool>(var_0.b.a, true, false), vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a), var_0.b.a)), !select(!vec3<bool>(var_0.b.a, var_0.b.a, var_0.b.a), vec3<bool>(var_0.b.a, var_0.b.a, true), !vec3<bool>(var_0.b.a, var_0.b.a, false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(513f + -1468f)) > var_0.b.e.x));
    var var_1 = Struct_5(Struct_2(Struct_1(all(select(vec3<bool>(var_0.b.a, false, false), vec3<bool>(true, false, true), vec3<bool>(var_0.b.a, var_0.b.a, false))), _wgslsmith_f_op_vec3_f32(-var_0.a.zww), _wgslsmith_clamp_i32(min(u_input.c, u_input.c), _wgslsmith_mod_i32(-2147483647i, var_0.b.c), _wgslsmith_dot_vec3_i32(vec3<i32>(13253i, global1.x, var_0.b.c), vec3<i32>(u_input.c, global1.x, var_0.b.c))), _wgslsmith_add_vec3_u32(u_input.a, vec3<u32>(4294967295u, 4294967295u, 1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b.b.x, var_0.b.e.x, -1536f) - var_0.a.zww), _wgslsmith_f_op_vec3_f32(-var_0.b.b), true))), max(~var_0.b.d.zy, ~firstTrailingBit(var_0.b.d.xx)), _wgslsmith_div_vec2_f32(var_0.a.ww, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -941f), _wgslsmith_f_op_f32(-var_0.a.x)))));
    let var_2 = Struct_2(Struct_1(var_0.b.a || all(!vec3<bool>(var_0.b.a, true, var_0.b.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-var_1.a.a.e.x), _wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_f_op_f32(384f - 1090f))), var_0.b.c, vec3<u32>(countOneBits(4294967295u), 1u, var_0.b.d.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.a.yxz, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_1.a.c.x, -260f, var_1.a.a.e.x), vec3<f32>(var_0.b.e.x, var_0.a.x, var_0.a.x)))))), _wgslsmith_mult_vec2_u32(countOneBits(firstLeadingBit(vec2<u32>(global4.x, 9327u))), firstLeadingBit(abs(vec2<u32>(1u, var_0.b.d.x)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(546f, var_0.a.x)));
    return var_1.a.b.x;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>) -> bool {
    let var_0 = Struct_1(any(vec4<bool>(arg_0.a.a, _wgslsmith_f_op_f32(arg_0.a.e.x * -1082f) <= _wgslsmith_f_op_f32(trunc(arg_0.a.e.x)), false, arg_1.x)), arg_0.a.b, firstLeadingBit(-26624i), vec3<u32>(4294967295u, ~arg_0.a.d.x, ~u_input.a.x), vec3<f32>(_wgslsmith_div_f32(arg_0.c.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(-1000f, arg_0.c.x)), _wgslsmith_div_f32(arg_0.c.x, -640f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-313f - arg_0.c.x))), _wgslsmith_f_op_f32(ceil(945f))));
    let var_1 = -2147483647i;
    global2 = _wgslsmith_dot_vec3_u32((vec3<u32>(_wgslsmith_div_u32(arg_0.a.d.x, 0u), 0u, 14446u) << (vec3<u32>(min(arg_0.a.d.x, 16224u), 0u, u_input.a.x) % vec3<u32>(32u))) >> (~var_0.d % vec3<u32>(32u)), ~(~vec3<u32>(global4.x, ~var_0.d.x, func_2())));
    global3 = countOneBits(~(~_wgslsmith_div_u32(global4.x, arg_0.a.d.x))) | arg_0.b.x;
    let var_2 = Struct_2(Struct_1(false, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(abs(-101f)), _wgslsmith_f_op_f32(arg_0.a.e.x * var_0.b.x), _wgslsmith_f_op_f32(func_3(-39863i))), vec3<f32>(-1182f, _wgslsmith_f_op_f32(-755f * var_0.e.x), _wgslsmith_f_op_f32(var_0.e.x - var_0.e.x)), false)), _wgslsmith_mult_i32(~arg_0.a.c, var_0.c), var_0.d, var_0.b), var_0.d.yz, _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.c) - _wgslsmith_f_op_vec2_f32(arg_0.c - arg_0.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.c.x, -397f)))), !arg_1)), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1343f + arg_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1021f - arg_0.c.x) * _wgslsmith_f_op_f32(-var_0.e.x)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~_wgslsmith_div_u32(firstLeadingBit(0u), 4294967295u);
    global3 = u_input.a.x;
    var var_0 = !(!vec4<bool>(func_1(Struct_2(Struct_1(true, vec3<f32>(701f, 398f, 1748f), global1.x, u_input.a, vec3<f32>(-1161f, 955f, -1121f)), global4.yy, vec2<f32>(-358f, -550f)), select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), true, true, true));
    let var_1 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(465f, 281f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-278f, -148f) * _wgslsmith_f_op_f32(floor(-919f)))))));
    global1 = _wgslsmith_mult_vec3_i32(-_wgslsmith_sub_vec3_i32(-vec3<i32>(global1.x, 1i, u_input.c), vec3<i32>(u_input.c, u_input.c, -2147483647i) >> (vec3<u32>(u_input.b.x, 36170u, u_input.a.x) % vec3<u32>(32u))), vec3<i32>(global1.x, i32(-1i) * -53847i, _wgslsmith_div_i32(max(u_input.c, 9654i), firstLeadingBit(_wgslsmith_add_i32(1i, 8682i)))));
    global1 = vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.c, -1i, u_input.c) >> (vec3<u32>(1u, 4294967295u, 0u) % vec3<u32>(32u)), vec3<i32>(u_input.c, u_input.c, -15039i) >> (u_input.a % vec3<u32>(32u))), vec3<i32>(9282i, countOneBits(0i), firstLeadingBit(global1.x)));
    global0 = -200f;
    let var_2 = Struct_5(Struct_2(Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(-1396f - -1186f), _wgslsmith_f_op_f32(var_1 * -837f), var_1), 45563i, ~abs(vec3<u32>(u_input.a.x, 0u, 39591u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1, -561f, 580f)))), ~vec2<u32>(_wgslsmith_add_u32(global4.x, u_input.b.x), 27553u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(var_1, var_1))))))));
    global2 = u_input.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~1u, (~global1.xy >> ((reverseBits(vec2<u32>(global4.x, 34728u)) | ~global4.zz) % vec2<u32>(32u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(global4.x, countOneBits(15999u)), vec2<u32>(reverseBits(global4.x), global4.x << (0u % 32u))) % vec2<u32>(32u)), vec2<i32>(~u_input.c, _wgslsmith_mod_i32(~38973i, _wgslsmith_sub_i32(u_input.c, global1.x))));
}

