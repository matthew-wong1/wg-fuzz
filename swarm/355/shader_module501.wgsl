struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: vec4<i32> = vec4<i32>(17245i, 59856i, -22648i, -1i);

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: u32 = 65008u;

var<private> global4: f32 = -124f;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2() -> vec2<u32> {
    let var_0 = !(!(!(!(global2.x && false))));
    global3 = 57165u;
    var var_1 = !all(vec2<bool>(_wgslsmith_mod_i32(global1.x, global1.x) == global1.x, true));
    var var_2 = vec4<u32>(4294967295u, select(u_input.c.x, 1u, false), ~(~(~30886u)), u_input.d.x & _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec3_u32(~vec3<u32>(48327u, u_input.b, 0u), ~u_input.c)));
    let var_3 = vec4<bool>(all(vec2<bool>(true, false)), (1i & ~(14786i & global1.x)) > -max(reverseBits(u_input.a), u_input.a), (~_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, u_input.d.x, 101973u, 4294967295u), vec4<u32>(var_2.x, var_2.x, u_input.d.x, 1u)) < 1u) || var_0, global2.x);
    return vec2<u32>(u_input.c.x ^ max(0u, ~(~u_input.d.x)), 4294967295u);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: vec2<bool>) -> vec3<bool> {
    global4 = arg_1.d.x;
    global4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.x) - arg_1.d.x) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.d.x * arg_1.d.x), 1000f)))) * arg_1.d.x);
    var var_0 = global0[_wgslsmith_index_u32(75385u, 14u)];
    return select(vec3<bool>(true, true, true), !(!select(vec3<bool>(false, false, global2.x), !vec3<bool>(arg_3.x, global2.x, false), select(vec3<bool>(true, true, true), vec3<bool>(true, global2.x, arg_3.x), false))), select(select(select(!vec3<bool>(true, true, arg_3.x), vec3<bool>(global2.x, true, false), true), select(select(vec3<bool>(false, false, false), vec3<bool>(global2.x, true, arg_3.x), vec3<bool>(arg_3.x, arg_3.x, false)), vec3<bool>(arg_3.x, false, false), false), -2147483647i <= arg_0.a), select(!select(vec3<bool>(global2.x, global2.x, arg_3.x), vec3<bool>(false, global2.x, true), true), vec3<bool>(false, arg_3.x, global2.x), vec3<bool>(false, true, true)), vec3<bool>(global2.x, select(global2.x, arg_3.x, arg_0.a > 0i), arg_3.x)));
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: bool, arg_3: vec4<f32>) -> Struct_1 {
    var var_0 = false;
    let var_1 = !(!vec2<bool>(false, !select(global2.x, false, arg_0)));
    let var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.d.x, 491f, arg_1.d.x, arg_1.d.x)), vec4<f32>(arg_3.x, 977f, 1137f, 116f))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(arg_1.d.x + arg_3.x), 166f, 362f, arg_1.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-104f)) + 1398f), _wgslsmith_f_op_f32(-arg_3.x), arg_3.x, arg_1.d.x));
    var var_3 = Struct_1(2147483647i, vec3<u32>(_wgslsmith_dot_vec3_u32(~(vec3<u32>(u_input.d.x, 4294967295u, arg_1.b.x) << (arg_1.b % vec3<u32>(32u))), arg_1.b), ~arg_1.b.x, 1u >> (firstTrailingBit(0u) % 32u)), arg_1.b.yx, arg_3.yzx);
    var_0 = arg_0;
    return Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, -32798i), vec2<i32>(47495i, -2147483647i)), abs(~abs(~var_3.b)), reverseBits(~_wgslsmith_add_vec2_u32(u_input.d, u_input.c.yy)), var_3.d);
}

fn func_1(arg_0: Struct_1) -> Struct_1 {
    let var_0 = func_4(arg_0.d.x > arg_0.d.x, Struct_1(-firstLeadingBit(countOneBits(arg_0.a)), firstTrailingBit(vec3<u32>(~20404u, 84522u, u_input.b & 0u)), _wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(arg_0.c, vec2<u32>(u_input.c.x, 4294967295u)) ^ func_2(), abs(vec2<u32>(u_input.c.x, 0u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.d) * _wgslsmith_f_op_vec3_f32(arg_0.d * vec3<f32>(-158f, arg_0.d.x, arg_0.d.x))), vec3<f32>(1f, arg_0.d.x, _wgslsmith_f_op_f32(max(-705f, arg_0.d.x))), !func_3(Struct_1(u_input.a, u_input.c, arg_0.c, vec3<f32>(574f, arg_0.d.x, arg_0.d.x)), Struct_1(u_input.a, u_input.c, u_input.c.yy, arg_0.d), 34339i, vec2<bool>(global2.x, global2.x))))), false, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.d.x, arg_0.d.x, arg_0.d.x, _wgslsmith_f_op_f32(ceil(1000f)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1349f + 206f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_0.d.x)) - arg_0.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-963f)) - _wgslsmith_f_op_f32(abs(-534f))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.d.x))))));
    var var_1 = _wgslsmith_mult_u32(~u_input.c.x, 13302u);
    var var_2 = ~0u;
    let var_3 = select(!(!(!select(vec4<bool>(true, true, true, global2.x), vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, global2.x, true, true)))), select(select(!vec4<bool>(true, false, global2.x, true), vec4<bool>(true, true, all(vec4<bool>(global2.x, true, global2.x, false)), true), true && select(global2.x, global2.x, false)), !vec4<bool>(false, all(vec2<bool>(global2.x, true)), global2.x, arg_0.c.x > arg_0.b.x), select(global2.x, any(func_3(var_0, Struct_1(-74433i, var_0.b, var_0.c, var_0.d), var_0.a, vec2<bool>(true, global2.x)).xx), any(select(vec2<bool>(global2.x, global2.x), vec2<bool>(false, global2.x), true)))), select(vec4<bool>(global2.x, global2.x | true, true, any(select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, false, global2.x, true), vec4<bool>(global2.x, global2.x, global2.x, global2.x)))), vec4<bool>(true, false, false, !global2.x), select(!(!vec4<bool>(global2.x, false, false, true)), select(!vec4<bool>(true, false, true, global2.x), !vec4<bool>(true, true, global2.x, true), !vec4<bool>(false, true, global2.x, true)), !global2.x)));
    let var_4 = _wgslsmith_add_i32(_wgslsmith_mult_i32(~(-37480i), -arg_0.a), -1i);
    return Struct_1(~(~func_4(!global2.x, func_4(var_3.x, var_0, global2.x, vec4<f32>(-943f, 784f, 278f, -2958f)), true, vec4<f32>(arg_0.d.x, var_0.d.x, -161f, 163f)).a), vec3<u32>(arg_0.c.x, 19763u, 0u), vec2<u32>(u_input.c.x, u_input.b), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(521f + -161f) + _wgslsmith_div_f32(arg_0.d.x, -1000f)), -236f)), -383f, 1291f));
}

fn func_5(arg_0: u32, arg_1: u32, arg_2: Struct_1, arg_3: i32) -> Struct_1 {
    var var_0 = vec4<u32>(u_input.c.x, ~arg_0, 4294967295u, 75509u);
    return Struct_1(u_input.a, ~countOneBits(~var_0.xwx), min(select(~arg_2.b.yy, vec2<u32>(arg_1, u_input.b) << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), global2.x) << (~arg_2.c % vec2<u32>(32u)), u_input.c.yz), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1069f * _wgslsmith_f_op_f32(338f + 273f))), -1484f, arg_2.d.x));
}

fn func_6(arg_0: vec4<bool>, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: vec3<u32>) -> u32 {
    global2 = !func_3(func_1(Struct_1(max(-17802i, -2147483647i), abs(u_input.c), vec2<u32>(arg_2.x, arg_2.x), _wgslsmith_f_op_vec3_f32(-arg_1.d))), arg_1, reverseBits(1i), vec2<bool>(!(!global2.x), any(select(vec3<bool>(false, global2.x, false), vec3<bool>(arg_0.x, arg_0.x, arg_0.x), arg_0.yzz)))).yy;
    let var_0 = ~global1.x;
    global0 = array<Struct_1, 14>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(arg_1.d.x, 1000f), arg_1.d.x)) - _wgslsmith_f_op_f32(-func_5(arg_1.c.x, arg_1.b.x, Struct_1(2147483647i, u_input.c, arg_3.yz, vec3<f32>(1377f, arg_1.d.x, arg_1.d.x)), u_input.a).d.x)), arg_1.d.x));
    let var_2 = func_5(arg_3.x, 1u, arg_1, _wgslsmith_clamp_i32(~(u_input.a >> (~u_input.c.x % 32u)), 20596i, abs(-32520i)));
    return ~arg_3.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0[_wgslsmith_index_u32(~func_6(vec4<bool>(!(!global2.x), ~0u <= (23419u & u_input.c.x), !(!global2.x), false), func_5(~u_input.d.x, 20205u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.d.x, 0u, 12032u), vec4<u32>(u_input.d.x, 1u, 91664u, u_input.c.x)) % 32u), func_1(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(26098u, 57430u), 14u)]), -_wgslsmith_sub_i32(0i, 0i)), abs(vec4<u32>(~u_input.b, ~u_input.b, u_input.b, _wgslsmith_mult_u32(6281u, 17197u))), vec3<u32>(u_input.b, ~0u, u_input.d.x)), 14u)];
    let var_1 = _wgslsmith_f_op_f32(min(var_0.d.x, func_4(all(vec4<bool>(true, global2.x, !global2.x, global1.x >= 8646i)), Struct_1(0i, firstTrailingBit(reverseBits(u_input.c)), ~max(u_input.c.yy, var_0.b.yz), _wgslsmith_div_vec3_f32(var_0.d, _wgslsmith_f_op_vec3_f32(-var_0.d))), !any(vec4<bool>(false, global2.x, global2.x, false)), vec4<f32>(_wgslsmith_f_op_f32(-var_0.d.x), var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(var_0.d.x + _wgslsmith_f_op_f32(var_0.d.x + -854f)))).d.x));
    var var_2 = ~global1.wwz;
    global3 = ~_wgslsmith_add_u32(u_input.b, firstLeadingBit(u_input.d.x) ^ (~1u ^ ~u_input.b));
    let var_3 = 255f;
    var var_4 = Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(abs(-6321i), _wgslsmith_mod_i32(var_0.a >> (u_input.d.x % 32u), var_0.a ^ 2147483647i)), firstTrailingBit(_wgslsmith_mult_vec2_i32(min(vec2<i32>(var_0.a, 62467i), vec2<i32>(u_input.a, 2147483647i)), _wgslsmith_div_vec2_i32(var_2.zy, global1.ww)))), ~vec3<u32>(var_0.b.x, 0u, _wgslsmith_clamp_u32(21678u, 1u, var_0.b.x) | 48727u), vec2<u32>(var_0.b.x >> (~1u % 32u), 71335u), _wgslsmith_f_op_vec3_f32(-var_0.d));
    global4 = -181f;
    var var_5 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1, -458f, var_1, 633f), vec4<f32>(var_4.d.x, var_4.d.x, var_4.d.x, var_1), vec4<bool>(false, global2.x, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, var_1, var_0.d.x, var_4.d.x)))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_4.d.x) + _wgslsmith_f_op_f32(-var_0.d.x)), _wgslsmith_f_op_f32(f32(-1f) * -473f), _wgslsmith_f_op_f32(func_1(Struct_1(-5951i, vec3<u32>(u_input.d.x, 0u, var_0.c.x), var_0.c, var_4.d)).d.x * var_3)))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_3, var_4.d.x, -841f, var_0.d.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(763f, var_0.d.x, var_3, var_3), vec4<f32>(2013f, -1564f, -495f, -716f))), true)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, -265f, 648f, var_0.d.x) - vec4<f32>(var_4.d.x, 108f, -1000f, var_1))))) * vec4<f32>(_wgslsmith_div_f32(var_0.d.x, -2973f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1088f - 267f))), _wgslsmith_f_op_f32(196f - -281f), -945f)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.c.x, ~_wgslsmith_add_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(var_4.b.x, u_input.c.x, var_4.c.x, 1579u), vec4<u32>(19756u, 33712u, var_0.b.x, u_input.b), vec4<u32>(42035u, 36339u, 43377u, 4294967295u)) >> (min(vec4<u32>(u_input.b, var_4.c.x, 1u, var_0.b.x), vec4<u32>(0u, 9071u, 8365u, 1u)) % vec4<u32>(32u)), _wgslsmith_sub_vec4_u32(vec4<u32>(var_4.c.x, var_0.c.x, 45049u, 0u), vec4<u32>(11816u, u_input.d.x, var_4.c.x, var_0.b.x))));
}

