struct Struct_1 {
    a: vec3<f32>,
    b: i32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: vec4<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: f32,
}

struct Struct_4 {
    a: u32,
    b: Struct_3,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 32> = array<vec2<bool>, 32>(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true));

var<private> global1: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(88148u, 0u, 105411u, 41238u));

var<private> global2: array<vec4<i32>, 25> = array<vec4<i32>, 25>(vec4<i32>(-59502i, 2147483647i, 16974i, -12750i), vec4<i32>(i32(-2147483648), 9354i, 5732i, -6618i), vec4<i32>(0i, 0i, 55337i, 1i), vec4<i32>(9593i, 47051i, -24255i, 2147483647i), vec4<i32>(-45754i, 1i, 335i, 38842i), vec4<i32>(-35199i, 35315i, 1i, -29683i), vec4<i32>(2147483647i, 1i, 0i, -46372i), vec4<i32>(47169i, 2147483647i, 0i, 4611i), vec4<i32>(16147i, -24250i, 47864i, 41148i), vec4<i32>(0i, 2147483647i, 1i, 1i), vec4<i32>(-39728i, i32(-2147483648), 8482i, 0i), vec4<i32>(50392i, i32(-2147483648), 7847i, 1i), vec4<i32>(-30157i, -1i, -8066i, 39202i), vec4<i32>(42629i, -67277i, 0i, -17953i), vec4<i32>(-1i, 6480i, -20801i, -1i), vec4<i32>(-20094i, -1i, 0i, -15498i), vec4<i32>(i32(-2147483648), 1i, -21813i, -1i), vec4<i32>(34821i, 38701i, 15973i, 1i), vec4<i32>(1i, -1177i, 30344i, i32(-2147483648)), vec4<i32>(2147483647i, 2147483647i, -3085i, -46538i), vec4<i32>(-1i, -33584i, i32(-2147483648), 3871i), vec4<i32>(0i, 0i, -60660i, -1i), vec4<i32>(-1i, i32(-2147483648), 1i, 1i), vec4<i32>(i32(-2147483648), 35699i, 1i, -25426i), vec4<i32>(i32(-2147483648), -13490i, 4355i, i32(-2147483648)));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = -vec2<i32>(u_input.a, _wgslsmith_div_i32(-12623i >> (u_input.c % 32u), -u_input.a));
    global1 = array<vec4<u32>, 1>();
    var var_1 = vec2<i32>(abs(var_0.x), ~countOneBits(select(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, u_input.a, var_0.x, 2147483647i), vec4<i32>(var_0.x, u_input.a, u_input.a, u_input.a)), any(vec3<bool>(true, false, false)))));
    var var_2 = vec4<u32>((~(u_input.c ^ u_input.c) << (u_input.c % 32u)) >> (~1u % 32u), _wgslsmith_mult_u32(7645u, 32579u ^ u_input.c), u_input.c, 95527u);
    var var_3 = Struct_4(var_2.x, Struct_3(min(4294967295u, _wgslsmith_div_u32(u_input.c, u_input.b) >> (u_input.c % 32u)), Struct_1(vec3<f32>(1f, 1f, 1f), ~(~var_0.x), all(select(global0[_wgslsmith_index_u32(1u, 32u)], vec2<bool>(true, true), vec2<bool>(false, true))), 12541u), 757f), vec2<bool>(true, true));
    return true;
}

fn func_2() -> vec2<bool> {
    let var_0 = _wgslsmith_div_u32(u_input.c, _wgslsmith_mult_u32(u_input.b >> (89867u % 32u), 105232u)) <= _wgslsmith_mult_u32(select(_wgslsmith_sub_u32(u_input.b ^ u_input.c, _wgslsmith_div_u32(u_input.b, 1u)), u_input.c, true & (4294967295u > u_input.c)), 13345u);
    var var_1 = Struct_2(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-39155i, 35010i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(55496i, u_input.a, u_input.a) << (vec3<u32>(u_input.c, u_input.c, 3498u) % vec3<u32>(32u))), ~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, 0i, 2147483647i), vec3<i32>(-44872i, 10777i, u_input.a))) << (select(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b, 50907u), vec3<u32>(u_input.c, 1u, 4868u)), reverseBits(vec3<u32>(u_input.b, 4294967295u, u_input.c))), min(vec3<u32>(u_input.c, 74094u, u_input.b), vec3<u32>(u_input.b, 4294967295u, 22810u)) & vec3<u32>(u_input.b, 38199u, u_input.b), true) % vec3<u32>(32u)), _wgslsmith_mod_u32(~reverseBits(u_input.c), u_input.b), !select(vec4<bool>(false, func_3(), true || var_0, false), !select(vec4<bool>(var_0, var_0, true, var_0), vec4<bool>(false, var_0, var_0, var_0), var_0), var_0));
    var var_2 = Struct_3(var_1.b, Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1450f, -2145f, 1000f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1188f, 487f, -395f)))), -46718i, !(!(!var_0)), ~47225u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(ceil(418f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(471f)) * _wgslsmith_f_op_f32(step(225f, -427f))))) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-430f * 176f)))));
    global1 = array<vec4<u32>, 1>();
    var_1 = Struct_2(vec3<i32>(-(_wgslsmith_dot_vec3_i32(var_1.a, vec3<i32>(1i, var_2.b.b, 0i)) ^ -1i), _wgslsmith_mod_i32(0i, 1i), -22135i >> (_wgslsmith_clamp_u32(40180u, var_1.b, _wgslsmith_sub_u32(var_2.a, 4294967295u)) % 32u)), firstTrailingBit(_wgslsmith_mod_u32(4294967295u, 1u) << (var_1.b % 32u)) | 6176u, !vec4<bool>(true, select(false, var_1.c.x || var_0, var_2.b.c), true, !func_3()));
    return vec2<bool>(var_2.c >= var_2.c, false);
}

fn func_1(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: i32, arg_3: Struct_4) -> vec3<bool> {
    let var_0 = u_input.a;
    global0 = array<vec2<bool>, 32>();
    let var_1 = Struct_4(arg_3.b.b.d, arg_3.b, select(vec2<bool>(arg_3.b.b.c, arg_3.b.b.c), select(vec2<bool>(true, true), func_2(), select(global0[_wgslsmith_index_u32(1u, 32u)], vec2<bool>(false, arg_3.b.b.c), all(vec4<bool>(arg_0.b.c, arg_3.c.x, false, arg_3.b.b.c)))), false));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_1.b.c + arg_0.c))), -632f, _wgslsmith_f_op_f32(trunc(-684f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.a.x * -1714f) * _wgslsmith_div_f32(1000f, 1000f)))));
    let var_3 = Struct_2(~arg_1.zwy, 0u, select(!vec4<bool>(false, true, true, any(vec2<bool>(arg_0.b.c, var_1.b.b.c))), select(!select(vec4<bool>(arg_0.b.c, true, arg_0.b.c, arg_3.c.x), vec4<bool>(false, false, arg_3.c.x, false), true), !vec4<bool>(true, arg_3.b.b.c, var_1.b.b.c, arg_3.b.b.c), var_1.b.b.c), select(select(vec4<bool>(arg_0.b.c, true, arg_0.b.c, true), !vec4<bool>(arg_0.b.c, true, true, var_1.c.x), all(vec4<bool>(arg_0.b.c, arg_3.c.x, arg_3.c.x, arg_3.b.b.c))), !select(vec4<bool>(var_1.c.x, false, var_1.c.x, arg_0.b.c), vec4<bool>(true, arg_0.b.c, arg_3.c.x, arg_0.b.c), vec4<bool>(true, var_1.b.b.c, true, false)), !select(vec4<bool>(true, false, true, arg_3.c.x), vec4<bool>(true, false, var_1.b.b.c, arg_3.b.b.c), true))));
    return !select(var_3.c.zwz, var_3.c.wzy, select(vec3<bool>(false, func_2().x, var_3.c.x), select(select(vec3<bool>(true, var_3.c.x, true), vec3<bool>(var_1.c.x, false, var_3.c.x), vec3<bool>(false, true, var_3.c.x)), vec3<bool>(true, true, true), true), true));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 1>();
    let var_0 = 0u;
    var var_1 = var_0 & 68397u;
    var var_2 = !(!select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), !select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), !func_1(Struct_3(var_0, Struct_1(vec3<f32>(-449f, 270f, 512f), 8193i, true, 1u), 2227f), vec4<i32>(u_input.a, 2147483647i, u_input.a, u_input.a), u_input.a, Struct_4(41857u, Struct_3(4294967295u, Struct_1(vec3<f32>(681f, -472f, -676f), 2147483647i, true, 1u), 398f), vec2<bool>(true, false)))));
    var var_3 = ~select(min(~firstLeadingBit(vec3<u32>(var_0, 1u, 42617u)), vec3<u32>(var_0, u_input.b, 17963u) << (abs(vec3<u32>(66326u, u_input.c, var_0)) % vec3<u32>(32u))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.c, 61954u, u_input.c), abs(vec3<u32>(27199u, var_0, u_input.c))), ~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.b, 116128u, 1u), vec3<u32>(var_0, 85697u, var_0))), vec3<bool>(select(true, select(true, false, true), !var_2.x), func_3(), all(vec4<bool>(var_2.x, var_2.x, true, true))));
    var_3 = vec3<u32>(46423u | var_0, _wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.b, ~(~var_0)), 4294967295u), ~_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(96387u, 1u)], global1[_wgslsmith_index_u32(var_3.x, 1u)]), var_0) & var_0);
    global0 = array<vec2<bool>, 32>();
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_vec4_i32(-global2[_wgslsmith_index_u32(var_0, 25u)] >> (_wgslsmith_div_vec4_u32(global1[_wgslsmith_index_u32(var_3.x, 1u)], vec4<u32>(15196u, u_input.c, u_input.b, var_3.x)) % vec4<u32>(32u)), vec4<i32>(-1i) * -vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-1995f, -409f)))))), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a, abs(0i)) >> ((var_3.yz & _wgslsmith_add_vec2_u32(var_3.xz, var_3.xx)) % vec2<u32>(32u)), vec2<i32>(1i, -8663i) << (var_3.zz % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(u_input.a, -4327i >> (0u % 32u)), ~firstTrailingBit(u_input.a))));
}

