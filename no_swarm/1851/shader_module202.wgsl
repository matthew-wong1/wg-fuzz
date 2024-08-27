struct Struct_1 {
    a: f32,
    b: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

var<private> global1: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false));

var<private> global2: array<vec4<bool>, 18> = array<vec4<bool>, 18>(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true));

var<private> global3: vec2<i32> = vec2<i32>(1i, 1i);

var<private> global4: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: vec3<f32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(arg_1.d.b.x * _wgslsmith_f_op_f32(sign(arg_2.x)));
    var var_1 = arg_1.d.a;
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(611f)) + -962f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(554f - -217f)))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1447f - arg_1.d.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(arg_2.x, arg_1.c.b.x, false)))) - arg_2.x)));
    let var_2 = vec2<bool>(false, all(!vec4<bool>(true, any(vec2<bool>(true, false)), true, any(vec2<bool>(false, true)))));
    var var_3 = firstLeadingBit(_wgslsmith_add_i32(_wgslsmith_mod_i32(firstTrailingBit(firstTrailingBit(-14040i)), arg_0), global3.x));
    return -1000f;
}

fn func_2() -> vec3<u32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(global3.x, Struct_2(u_input.a.x, Struct_1(-313f, vec3<f32>(-1580f, 601f, -475f)), Struct_1(-218f, vec3<f32>(-701f, 573f, 390f)), Struct_1(439f, vec3<f32>(-1000f, -204f, 442f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-734f, 397f, -878f)))))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-183f, -1102f, 1052f), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1440f, 642f, -298f), vec3<f32>(1266f, 1000f, -895f))))))));
    global3 = vec2<i32>(global3.x | _wgslsmith_div_i32(countOneBits(1i), _wgslsmith_mult_i32(_wgslsmith_add_i32(global3.x, global3.x), global3.x)), 1i);
    var var_1 = Struct_2(min(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 1u), u_input.a.wz) << (~u_input.a.x % 32u), _wgslsmith_clamp_u32(~0u | u_input.a.x, 24918u, u_input.a.x)), var_0, Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a - var_0.b.x)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.a - var_0.a)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_0.a, 1536f)) - _wgslsmith_div_vec3_f32(var_0.b, var_0.b)))), var_0);
    global3 = vec2<i32>(0i, global3.x) ^ -min(_wgslsmith_clamp_vec2_i32(~vec2<i32>(global3.x, 1i), vec2<i32>(global3.x, global3.x), vec2<i32>(25241i, 2147483647i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), ~reverseBits(vec2<i32>(3707i, -4708i)));
    var var_2 = vec4<u32>(_wgslsmith_mod_u32(u_input.a.x, ~(~1u)), reverseBits(~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, var_1.a, u_input.a.x, 74237u), ~u_input.a)), var_1.a, _wgslsmith_mod_u32(var_1.a, u_input.a.x));
    return vec3<u32>(select(~(~1u), var_1.a, true), ~reverseBits(var_2.x << (1u % 32u)), _wgslsmith_mult_u32(var_1.a, _wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(var_1.a, var_2.x, var_2.x), var_2.yzz, u_input.a.yxz), ~vec3<u32>(1u, var_2.x, var_1.a)), u_input.a.yxy)));
}

fn func_4(arg_0: vec2<u32>, arg_1: vec3<u32>, arg_2: i32) -> vec3<f32> {
    var var_0 = Struct_2(~(~(_wgslsmith_mod_u32(u_input.a.x, 4294967295u) >> (_wgslsmith_div_u32(arg_0.x, arg_0.x) % 32u))), Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1011f + -675f))), vec3<f32>(_wgslsmith_f_op_f32(-1507f + _wgslsmith_f_op_f32(select(-812f, -1000f, false))), _wgslsmith_f_op_f32(func_3(min(arg_2, arg_2), Struct_2(arg_1.x, Struct_1(-724f, vec3<f32>(-103f, 525f, 2013f)), Struct_1(969f, vec3<f32>(428f, 775f, -1247f)), Struct_1(-222f, vec3<f32>(2210f, -866f, -693f))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1527f, -1318f, -548f))))), _wgslsmith_f_op_f32(abs(1334f)))), Struct_1(-737f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1480f, 711f, -2103f) - vec3<f32>(-465f, -414f, 547f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(526f, -721f, -569f), vec3<f32>(889f, -958f, 277f), false)))))), Struct_1(-1040f, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, -183f, 1860f), vec3<f32>(1000f, -131f, 1859f)))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(3503f, -1193f, 228f) + vec3<f32>(832f, 1074f, 1580f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-478f, -288f, -561f))))));
    let var_1 = select(-vec2<i32>(_wgslsmith_sub_i32(1i, -6683i), _wgslsmith_dot_vec4_i32(~vec4<i32>(global3.x, -1i, 1i, -10442i), ~vec4<i32>(arg_2, -2147483647i, arg_2, -55060i))), firstTrailingBit(vec2<i32>(global3.x, ~arg_2) << (~u_input.a.zx % vec2<u32>(32u))), vec2<bool>(true, all(select(global1[_wgslsmith_index_u32(select(9904u, 4294967295u, true), 29u)], global2[_wgslsmith_index_u32(var_0.a, 18u)], !global1[_wgslsmith_index_u32(48198u, 29u)]))));
    var var_2 = vec3<i32>(58178i, ~32340i, reverseBits(-global3.x));
    var var_3 = all(select(vec3<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false)), all(global1[_wgslsmith_index_u32(4294967295u, 29u)]), false), vec3<bool>(true, -1i <= arg_2, false), any(vec2<bool>(true, true))));
    let var_4 = _wgslsmith_f_op_f32(f32(-1f) * -1536f);
    return _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_4 + -767f), -344f, var_0.d.b.x) - var_0.d.b);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<i32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = -8247i;
    global2 = array<vec4<bool>, 18>();
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(func_4(~(u_input.a.yy << (vec2<u32>(70011u, 10204u) % vec2<u32>(32u))), func_2(), 11770i)))) + vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1054f))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.x * arg_2.x)))), _wgslsmith_div_f32(-2605f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_div_f32(534f, arg_2.x), !arg_0.x)), -495f, _wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(abs(-1000f)))), var_1)));
    let var_3 = Struct_2(countOneBits(13442u), var_2, Struct_1(var_1.x, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_2.b)), _wgslsmith_f_op_vec3_f32(-var_1))), Struct_1(1754f, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -607f, _wgslsmith_f_op_f32(min(var_1.x, var_2.a))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(var_1, vec3<f32>(-539f, var_1.x, -489f), arg_0.x)))))));
    return Struct_1(var_3.b.b.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-var_1))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~(~firstTrailingBit(4294967295u))));
    let var_1 = min(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -select(vec4<i32>(global3.x, -20734i, global3.x, global3.x), vec4<i32>(-23168i, 33923i, global3.x, global3.x), vec4<bool>(true, true, false, false)), vec4<i32>(min(-global3.x, ~(-2147483647i)), reverseBits(global3.x), -2147483647i, 2147483647i)), 1i);
    let var_2 = !(!any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)));
    global1 = array<vec4<bool>, 29>();
    var var_3 = 1f;
    var var_4 = Struct_2(u_input.a.x, func_1(vec3<bool>(false, all(select(vec4<bool>(var_2, var_2, false, var_2), vec4<bool>(false, false, var_2, var_2), var_2)), !(true || var_2)), min(vec4<i32>(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global3.x, global3.x), vec3<i32>(var_1, -5022i, global3.x)), 0i, ~global3.x), _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(-1i, 8821i, 2147483647i, global3.x)), vec4<i32>(var_1, -15737i, global3.x, global3.x))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-535f, 1000f), vec2<f32>(842f, -1608f), vec2<bool>(false, var_2)))))))), func_1(vec3<bool>(any(global2[_wgslsmith_index_u32(1u, 18u)]), any(global2[_wgslsmith_index_u32(4294967295u, 18u)]) != any(vec2<bool>(true, var_2)), !(global3.x > 8202i)), min(-countOneBits(vec4<i32>(global3.x, var_1, 0i, -7628i)), vec4<i32>(-global3.x, global3.x, global3.x ^ 2147483647i, -37542i)), vec2<f32>(_wgslsmith_f_op_f32(func_1(vec3<bool>(var_2, false, var_2), vec4<i32>(17964i, global3.x, global3.x, 0i), vec2<f32>(1167f, 893f)).b.x * _wgslsmith_f_op_f32(round(516f))), _wgslsmith_f_op_f32(f32(-1f) * -449f))), func_1(select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, var_2), var_2), !(!vec3<bool>(true, var_2, var_2)), select(!vec3<bool>(var_2, var_2, var_2), vec3<bool>(var_2, false, var_2), vec3<bool>(var_2, var_2, var_2))), _wgslsmith_sub_vec4_i32(firstLeadingBit(vec4<i32>(global3.x, global3.x, var_1, 0i)), abs(vec4<i32>(var_1, global3.x, global3.x, var_1)) ^ select(vec4<i32>(15460i, 1i, var_1, global3.x), vec4<i32>(30297i, global3.x, var_1, -34339i), var_2)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(267f, 116f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(208f, 581f))))));
    var_4 = Struct_2(var_4.a, Struct_1(542f, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_4.d.b) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_4.d.b.x, var_4.c.a, var_4.d.b.x))), vec3<f32>(_wgslsmith_f_op_f32(func_3(var_1, Struct_2(30109u, var_4.d, Struct_1(var_4.b.a, vec3<f32>(var_4.d.a, -557f, var_4.c.b.x)), var_4.b), vec3<f32>(-615f, var_4.b.b.x, var_4.b.a))), _wgslsmith_f_op_f32(-973f + var_4.b.a), var_4.b.a))), var_4.b, var_4.d);
    global2 = array<vec4<bool>, 18>();
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(u_input.a.x, (_wgslsmith_add_u32(u_input.a.x, 0u) << (~0u % 32u)) ^ _wgslsmith_clamp_u32(4294967295u, var_4.a, 0u)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-236f - var_4.b.b.x)), -349f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(601f, 458f)), var_4.b.a)), ~4294967295u, ~max(~vec2<i32>(-2147483647i, -7345i) ^ (vec2<i32>(0i, 60336i) | vec2<i32>(var_1, 0i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, global3.x) << (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)), vec2<i32>(global3.x, global3.x), -vec2<i32>(var_1, var_1))), -1726f);
}

