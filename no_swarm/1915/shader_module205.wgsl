struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<i32>,
    c: Struct_1,
    d: vec3<i32>,
    e: vec2<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec4<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(true, false);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> f32 {
    global0 = select(vec2<bool>(false, global0.x), !(!select(select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, false), vec2<bool>(true, false)), vec2<bool>(false, false), global0.x || global0.x)), vec2<bool>(true, true));
    global0 = vec2<bool>(false, global0.x);
    var var_0 = select(vec4<u32>(4294967295u, u_input.a, ~u_input.a, 21145u), max(vec4<u32>(~1u, 4294967295u, u_input.a, u_input.a), abs(vec4<u32>(0u, 25426u, u_input.a, 4294967295u) << (vec4<u32>(u_input.a, 54808u, u_input.a, 12930u) % vec4<u32>(32u)))) & (~vec4<u32>(u_input.a, 564u, u_input.a, u_input.a) ^ (_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, 4294967295u, u_input.a, 4294967295u), vec4<u32>(1u, 1u, u_input.a, u_input.a)) << (firstTrailingBit(vec4<u32>(u_input.a, u_input.a, u_input.a, 30917u)) % vec4<u32>(32u)))), select(true, true, any(select(vec4<bool>(true, true, true, true), vec4<bool>(false, global0.x, global0.x, true), all(vec2<bool>(global0.x, false))))));
    var_0 = max(_wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.a, u_input.a, var_0.x, u_input.a), vec4<u32>(var_0.x, 0u, var_0.x, u_input.a)), ~select(vec4<u32>(u_input.a, var_0.x, 4294967295u, 33287u), vec4<u32>(var_0.x, var_0.x, u_input.a, u_input.a), vec4<bool>(true, global0.x, true, false)) >> (~(vec4<u32>(var_0.x, u_input.a, var_0.x, var_0.x) ^ vec4<u32>(var_0.x, u_input.a, var_0.x, 61831u)) % vec4<u32>(32u)), select(vec4<u32>(u_input.a, 0u | u_input.a, 127234u, ~89156u), vec4<u32>(u_input.a, ~48072u, 18600u, 1u), false)), vec4<u32>(var_0.x, var_0.x, u_input.a, abs(abs(1u))));
    let var_1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(52741u, firstTrailingBit(~0u)), vec2<u32>(1u, u_input.a));
    return -1000f;
}

fn func_2() -> bool {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(122f + -278f), _wgslsmith_f_op_f32(func_3()))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-331f, -457f))), abs(vec3<i32>(u_input.c.x, 1i, select(2147483647i, -2147483647i, global0.x) >> (abs(1u) % 32u))), Struct_1(vec2<bool>(true, true), 2147483647i, vec4<f32>(-114f, _wgslsmith_f_op_f32(-500f - _wgslsmith_f_op_f32(sign(948f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(886f * 847f) - -1104f), 1f)), firstLeadingBit(vec3<i32>(u_input.c.x, countOneBits(u_input.b.x), ~1i)) ^ -_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c.x, u_input.b.x, 1i) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)), ~vec3<i32>(u_input.c.x, 2147483647i, u_input.b.x), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.c.x, -3794i), vec3<i32>(u_input.b.x, 0i, 0i))), _wgslsmith_add_vec2_i32(u_input.c, abs(select(vec2<i32>(u_input.c.x, 17938i), vec2<i32>(u_input.b.x, u_input.b.x), vec2<bool>(true, false)))));
    global0 = vec2<bool>(true, true);
    let var_1 = reverseBits(u_input.b.x);
    var var_2 = Struct_3(2147483647i, vec3<u32>(0u, _wgslsmith_clamp_u32(u_input.a, ~_wgslsmith_add_u32(42776u, u_input.a), 60821u), 4294967295u), var_0.c, abs(i32(-1i) * -var_1) & (i32(-1i) * -firstLeadingBit(2147483647i)), Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c.c.x, _wgslsmith_div_f32(-987f, var_0.a.x)) + vec2<f32>(_wgslsmith_f_op_f32(min(366f, -1710f)), -2459f)), var_0.b, Struct_1(!select(var_0.c.a, var_0.c.a, global0.x), 0i, _wgslsmith_f_op_vec4_f32(var_0.c.c + _wgslsmith_f_op_vec4_f32(var_0.c.c + vec4<f32>(2900f, 1000f, 853f, var_0.c.c.x)))), countOneBits(vec3<i32>(-2147483647i, _wgslsmith_sub_i32(u_input.c.x, var_1), -var_1)), ~(-abs(vec2<i32>(-2147483647i, 1i)))));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(-var_0.a.x), -1271f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.e.c.c.x - -1426f))), -512f, any(vec2<bool>(global0.x, true))))));
    return var_2.e.c.a.x;
}

fn func_1() -> Struct_3 {
    global0 = select(!(!select(select(vec2<bool>(global0.x, false), vec2<bool>(true, false), vec2<bool>(global0.x, global0.x)), !vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, true))), !vec2<bool>(func_2(), true), global0.x);
    global0 = select(select(vec2<bool>(true, true), select(select(select(vec2<bool>(false, true), vec2<bool>(global0.x, global0.x), false), !vec2<bool>(global0.x, true), !vec2<bool>(global0.x, global0.x)), vec2<bool>(true, true), !global0.x), !global0.x), !(!select(!vec2<bool>(global0.x, false), vec2<bool>(global0.x, global0.x), true && global0.x)), select(vec2<bool>(select(!global0.x, true, global0.x), any(select(vec2<bool>(global0.x, global0.x), vec2<bool>(true, global0.x), false))), !(!(!vec2<bool>(false, global0.x))), vec2<bool>(true, global0.x)));
    let var_0 = select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(reverseBits(vec2<u32>(4294967295u, u_input.a)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, 14298u), vec2<u32>(16235u, 4294967295u))), ~(~vec2<u32>(1u, u_input.a))), vec2<u32>(~1u, 0u), global0.x && (u_input.a != ~u_input.a)) ^ vec2<u32>(4294967295u, max(69815u, 1u));
    var var_1 = -max(-20134i, _wgslsmith_div_i32(min(u_input.c.x, 0i) | _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.c.x)), ~(~u_input.b.x)));
    global0 = select(vec2<bool>(true, false), vec2<bool>(true, true), ~3729u <= _wgslsmith_sub_u32(u_input.a, ~(~u_input.a)));
    return Struct_3(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(1i, u_input.c.x, _wgslsmith_div_i32(0i, u_input.b.x)), u_input.b.x), vec3<u32>(firstTrailingBit(u_input.a), u_input.a >> (abs(u_input.a >> (0u % 32u)) % 32u), firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(6346u, var_0.x, var_0.x, var_0.x), vec4<u32>(u_input.a, u_input.a, 38347u, 1u)) << (~u_input.a % 32u))), Struct_1(vec2<bool>(abs(u_input.a) < _wgslsmith_dot_vec2_u32(var_0, var_0), global0.x), _wgslsmith_clamp_i32(-1i, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-7641i, -103452i, u_input.b.x), vec3<i32>(1334i, -92249i, 2147483647i)), _wgslsmith_sub_i32(countOneBits(u_input.c.x), u_input.c.x)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(632f, _wgslsmith_f_op_f32(sign(-1952f)), -327f, 723f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -379f, 290f, 928f) * _wgslsmith_f_op_vec4_f32(vec4<f32>(202f, -1754f, 723f, -2321f) - vec4<f32>(1612f, 1030f, 1282f, 686f)))))), _wgslsmith_mult_i32(0i, ~_wgslsmith_dot_vec2_i32(u_input.c, -vec2<i32>(u_input.c.x, -1i))), Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1079f, -474f))))), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(20634i, 2147483647i, 1i), abs(vec3<i32>(22726i, u_input.c.x, u_input.c.x))), u_input.c.x, 1i), Struct_1(vec2<bool>(true, select(true, false, global0.x)), abs(-u_input.c.x), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(505f, -344f, 278f, 418f)))), ~vec3<i32>(-15800i, u_input.c.x, u_input.b.x), -u_input.b));
}

fn func_4(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.a) + vec2<f32>(_wgslsmith_f_op_f32(-arg_1.e.c.c.x), -619f))));
    global0 = !arg_1.c.a;
    var var_1 = arg_1.b;
    var var_2 = -1i ^ arg_2.e.x;
    let var_3 = true;
    return select(~select(arg_1.b << (countOneBits(arg_1.b) % vec3<u32>(32u)), firstTrailingBit(~vec3<u32>(arg_1.b.x, 4294967295u, 4294967295u)), vec3<bool>(var_3, true, true)), ~arg_1.b, !(!global0.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(u_input.a ^ ~(~(~27147u)));
    var var_1 = Struct_3(u_input.b.x, select(~(~(~vec3<u32>(u_input.a, 4294967295u, u_input.a))), _wgslsmith_mult_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 82537u), vec3<u32>(u_input.a, u_input.a, u_input.a)) | ~vec3<u32>(0u, u_input.a, 49279u), func_4(u_input.b.x, func_1(), func_1().e)), global0.x), func_1().e.c, func_1().e.c.b, func_1().e);
    let var_2 = var_1.e;
    let var_3 = Struct_2(var_2.a, _wgslsmith_div_vec3_i32(var_2.b, _wgslsmith_sub_vec3_i32(max(vec3<i32>(u_input.b.x, u_input.b.x, var_2.b.x) >> (var_1.b % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(var_2.b, var_1.e.b)), var_1.e.b)), Struct_1(func_1().c.a, -30768i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(round(1275f)), -1710f, -1457f, -791f), vec4<f32>(461f, _wgslsmith_f_op_f32(min(var_1.c.c.x, 1791f)), _wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(f32(-1f) * -629f))))), var_2.d, ~_wgslsmith_div_vec2_i32(u_input.b, vec2<i32>(~u_input.b.x, -47865i)));
    let var_4 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~4294967295u, vec2<f32>(471f, _wgslsmith_f_op_f32(select(var_2.c.c.x, _wgslsmith_div_f32(878f, var_4.e.c.c.x), u_input.b.x < -13670i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(var_4.c.c.zy, var_4.c.c.zw))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.c.c.x, var_4.c.c.x), var_3.c.c.yz, func_1().e.c.a)), _wgslsmith_add_u32(var_4.b.x, 1u) < _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, var_1.b.x, var_4.b.x, 22269u), vec4<u32>(4294967295u, 10805u, var_4.b.x, 0u))))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(floor(var_3.c.c)), vec4<f32>(_wgslsmith_f_op_f32(-193f + var_2.a.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_3.a.x, var_1.e.c.c.x) - var_1.c.c.x), var_3.c.c.x, -293f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_2.c.c.yx, vec2<f32>(-636f, -2546f))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.e.a.x, var_4.c.c.x) + var_3.a)))));
}

