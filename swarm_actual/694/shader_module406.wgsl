struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: vec4<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec3<f32>,
    d: f32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: f32 = 1856f;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32) -> vec4<bool> {
    var var_0 = Struct_3(1u, global0.c.x, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, reverseBits(global0.c.x), (-23677i << (global0.a % 32u)) | ~(-1i), global0.b), vec4<i32>(select(global0.b, i32(-1i) * -9771i, all(vec3<bool>(arg_1, true, false))), 0i, _wgslsmith_mod_i32(_wgslsmith_div_i32(3030i, global0.b), 20424i), firstTrailingBit(-global0.b))));
    let var_1 = Struct_3(0u, global0.b, max(vec4<i32>(_wgslsmith_sub_i32(-3517i, ~global0.c.x), -global0.b << (_wgslsmith_dot_vec3_u32(u_input.b, u_input.b) % 32u), min(0i, select(-10514i, var_0.b, false)), -2147483647i), _wgslsmith_clamp_vec4_i32(max(-vec4<i32>(0i, global0.b, -1i, global0.b), vec4<i32>(28343i, 9165i, -1i, var_0.b)), max(-vec4<i32>(var_0.c.x, 41960i, global0.b, var_0.c.x), vec4<i32>(var_0.c.x, global0.b, -12265i, global0.c.x)), ~global0.c)));
    global0 = var_1;
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2) + -1134f))));
    let var_2 = var_0.b > _wgslsmith_div_i32(-13131i, ~_wgslsmith_add_i32(-2147483647i, 18787i));
    return vec4<bool>(true, !(!all(vec2<bool>(false, var_2))), false, all(select(vec2<bool>(arg_1, true), vec2<bool>(arg_1, !arg_1), global0.a >= (arg_0 ^ global0.a))));
}

fn func_2(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_2(Struct_1(global0.c.yyy), Struct_1(reverseBits(global0.c.zwz)), Struct_1(global0.c.zwx & firstLeadingBit(reverseBits(vec3<i32>(2147483647i, 2147483647i, global0.b)))));
    let var_1 = select(func_3(_wgslsmith_dot_vec3_u32(vec3<u32>(79031u, min(1u, global0.a), global0.a), vec3<u32>(32844u, ~23446u, firstTrailingBit(global0.a))), all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1839f - _wgslsmith_f_op_f32(-738f - -692f)), arg_0.x))), func_3(u_input.b.x, true, _wgslsmith_f_op_f32(-arg_0.x)), vec4<bool>(false, !all(vec3<bool>(false, true, true)), all(vec2<bool>(true, true)), false));
    global1 = arg_0.x;
    let var_2 = var_0.c;
    let var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(exp2(arg_0.x)), _wgslsmith_f_op_f32(arg_0.x - arg_0.x)) - vec3<f32>(-625f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x)), _wgslsmith_f_op_f32(-arg_0.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(827f, arg_0.x, arg_0.x))))) + vec3<f32>(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), arg_0.x))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(var_3.x, -741f, false)))) + -1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1281f + 1696f)));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32, arg_2: u32) -> Struct_3 {
    var var_0 = ~(~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b, firstLeadingBit(vec3<u32>(0u, 2376u, 54969u))), u_input.b));
    global1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(arg_0.x, arg_0.x), -1907f));
    var var_1 = Struct_1(select(-global0.c.xzz, vec3<i32>(_wgslsmith_mod_i32(arg_1, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.c.x, 22816i, arg_1, 52263i), global0.c)), arg_1, _wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, 0i, -1i), global0.c), 0i)), !(false | all(vec2<bool>(true, true)))));
    let var_2 = global0.c.x;
    var var_3 = Struct_4(var_0.x);
    return Struct_3(_wgslsmith_mod_u32(12077u, abs(4294967295u)), _wgslsmith_mult_i32(-2147483647i, arg_1) | firstTrailingBit(~(~(-95713i))), _wgslsmith_mod_vec4_i32(-vec4<i32>(_wgslsmith_add_i32(var_1.a.x, -1i), global0.b, _wgslsmith_clamp_i32(0i, 0i, 39897i), 1i), vec4<i32>(reverseBits(i32(-1i) * -1i), ~(arg_1 >> (arg_2 % 32u)), _wgslsmith_dot_vec3_i32(vec3<i32>(arg_1, 42896i, 46350i) & vec3<i32>(50966i, 46883i, 2886i), select(var_1.a, vec3<i32>(global0.b, -1i, var_1.a.x), vec3<bool>(true, false, true))), 1i)));
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_add_i32(1i << (_wgslsmith_dot_vec3_u32(firstTrailingBit(u_input.b) | ~vec3<u32>(15631u, u_input.b.x, 0u), u_input.b) % 32u), 0i);
    var var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, -425f, 918f, 918f)))) + _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-284f, 1000f, -377f, 185f))))))));
    global0 = func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(func_2(vec2<f32>(var_1.x, var_1.x))), var_1.x, 1386f) - vec4<f32>(815f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1087f)), _wgslsmith_f_op_f32(round(var_1.x)), 1353f)), min(-20991i, abs(-1i)), ~4294967295u);
    let var_2 = Struct_1(min(vec3<i32>(_wgslsmith_add_i32(reverseBits(global0.b), firstTrailingBit(47500i)), var_0, i32(-1i) * -6443i), abs(select(-vec3<i32>(1i, var_0, 1i), vec3<i32>(var_0, var_0, global0.c.x), vec3<bool>(true, true, true)))));
    return var_2;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1) -> StorageBuffer {
    var var_0 = arg_0;
    var_0 = select(vec3<bool>(arg_0.x, func_3(_wgslsmith_mod_u32(countOneBits(55615u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, global0.a, 13647u, global0.a), vec4<u32>(u_input.b.x, 0u, 106561u, 69202u))), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-467f, 818f, true)) - _wgslsmith_f_op_f32(select(-1370f, 269f, arg_0.x)))).x, !arg_0.x), arg_0, func_3(~abs(global0.a), var_0.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(vec2<f32>(-268f, -439f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(1026f, -561f)), _wgslsmith_f_op_f32(-854f * 1000f), !arg_0.x)), var_0.x))).yxw);
    var var_1 = func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-341f, -730f, -599f, -367f), vec4<f32>(301f, -377f, 119f, -1566f), vec4<bool>(var_0.x, true, var_0.x, var_0.x))) * vec4<f32>(-845f, -1027f, 1334f, 452f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1538f, 1000f, -854f, 146f))) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1000f, -311f, 2107f, -1083f))))))), _wgslsmith_mod_i32(arg_1.a.x, ~(-2147483647i)), min(_wgslsmith_dot_vec3_u32(~u_input.b, vec3<u32>(~u_input.a, global0.a, 84251u)), func_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(713f, 540f, -333f, -432f))))), -global0.c.x, 0u).a));
    var var_2 = ~((var_1.a | reverseBits(4294967295u)) & global0.a) | ((var_1.a >> (u_input.b.x % 32u)) >> (39388u % 32u));
    var var_3 = _wgslsmith_div_f32(1770f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec2<f32>(1682f, 194f))) - _wgslsmith_f_op_f32(f32(-1f) * -632f))));
    return StorageBuffer(abs(arg_1.a), countOneBits(var_1.a & 0u), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2159f, _wgslsmith_f_op_f32(f32(-1f) * -852f), -1669f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(1f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1004f, _wgslsmith_f_op_f32(335f - 204f), _wgslsmith_f_op_f32(-2089f + 557f)) + vec3<f32>(_wgslsmith_f_op_f32(1314f + 402f), _wgslsmith_f_op_f32(step(-1000f, 429f)), _wgslsmith_f_op_f32(190f + 1475f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1557f, 573f, 556f))))), arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_4(0u);
    let var_1 = 278f;
    let var_2 = ~vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_mult_u32(1u, ~32808u), 1u), u_input.b.x, 4294967295u);
    var var_3 = countOneBits(var_2.x);
    let var_4 = var_1;
    let x = u_input.a;
    s_output = func_5(vec3<bool>(_wgslsmith_add_i32(abs(2147483647i), global0.c.x) < firstLeadingBit(global0.b), var_4 != _wgslsmith_f_op_f32(f32(-1f) * -669f), ~global0.a >= 13213u), func_1());
}

