struct Struct_1 {
    a: vec3<f32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: u32,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 5> = array<vec3<u32>, 5>(vec3<u32>(1u, 0u, 4294967295u), vec3<u32>(0u, 84293u, 13341u), vec3<u32>(25745u, 77364u, 149396u), vec3<u32>(1906u, 0u, 43519u), vec3<u32>(29661u, 58305u, 4294967295u));

var<private> global1: array<i32, 7> = array<i32, 7>(35937i, -1i, -39015i, 10254i, -8928i, i32(-2147483648), -1i);

var<private> global2: vec3<f32> = vec3<f32>(-1000f, -1291f, -633f);

var<private> global3: vec2<i32>;

var<private> global4: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(0u, 1483u), Struct_2(30587u, 4294967295u), Struct_2(0u, 25255u), Struct_2(34864u, 70458u), Struct_2(4294967295u, 9943u), Struct_2(24343u, 0u), Struct_2(0u, 1u), Struct_2(19699u, 193u), Struct_2(1u, 1u), Struct_2(5939u, 4294967295u), Struct_2(28690u, 7271u), Struct_2(31098u, 1u), Struct_2(6182u, 1u), Struct_2(0u, 0u), Struct_2(1u, 60730u), Struct_2(0u, 1u), Struct_2(7084u, 1u), Struct_2(0u, 1u), Struct_2(19610u, 106317u), Struct_2(0u, 20917u), Struct_2(48180u, 0u), Struct_2(54796u, 0u), Struct_2(26827u, 0u), Struct_2(1u, 3500u), Struct_2(0u, 79239u), Struct_2(853u, 4294967295u), Struct_2(32935u, 0u), Struct_2(14762u, 19851u), Struct_2(0u, 1u), Struct_2(1u, 5770u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>) -> bool {
    global1 = array<i32, 7>();
    var var_0 = Struct_2(reverseBits(abs(firstTrailingBit(6296u))) >> (firstLeadingBit(firstLeadingBit(_wgslsmith_clamp_u32(1u, 75780u, 26776u))) % 32u), _wgslsmith_mod_u32(_wgslsmith_mult_u32(1u, 1u), firstTrailingBit(~0u)));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-244f, global2.x, global2.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(1247f, global2.x, global2.x)))))) - vec3<f32>(global2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1774f)), -1513f)), ~(~var_0.b) >> (firstTrailingBit(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.a, 0u), vec2<u32>(var_0.a, 32078u)), ~var_0.b)) % 32u), global2.x);
    let var_2 = global4[_wgslsmith_index_u32(~_wgslsmith_mod_u32(1u, firstTrailingBit(1u)), 30u)];
    let var_3 = 1u | _wgslsmith_mult_u32(firstLeadingBit(var_1.b), _wgslsmith_add_u32(~var_1.b, 1u));
    return true;
}

fn func_2() -> f32 {
    var var_0 = select(select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, false, true, all(vec2<bool>(false, false)) && (2147483647i < u_input.a))), select(vec4<bool>(true, false, true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true)))), select(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), false), select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false)), true), false), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), vec3<bool>(true, false, true), vec3<bool>(true, true, true)))), select(vec4<bool>(true, true, !(u_input.b.x == 2147483647i), true), vec4<bool>(!all(vec2<bool>(false, true)), func_3(vec3<i32>(-17300i, -1i, global1[_wgslsmith_index_u32(0u, 7u)])), true, any(vec3<bool>(true, false, false))), select(!select(vec4<bool>(false, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true)), select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, false)), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global2.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global2.x)), global2.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(f32(-1f) * -765f))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: f32, arg_3: Struct_1) -> f32 {
    var var_0 = u_input.b.x ^ -23053i;
    global3 = firstLeadingBit(firstLeadingBit(vec2<i32>(_wgslsmith_clamp_i32(-23261i, firstLeadingBit(1i), 0i), _wgslsmith_mod_i32(-global3.x, _wgslsmith_mod_i32(u_input.b.x, global3.x)))));
    var var_1 = _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_3.b, arg_1.b, arg_3.b, arg_3.b), vec4<u32>(1u, arg_1.b, arg_3.b, arg_1.b)), ~vec4<u32>(30285u, arg_1.b, 1u, 6873u)), vec4<u32>(arg_3.b, arg_1.b, arg_1.b, arg_1.b)) >= (arg_3.b & ~select(max(0u, 4294967295u), arg_1.b, -1405f > arg_0.x));
    var_1 = any(!vec2<bool>(true, all(vec3<bool>(true, true, true))));
    global1 = array<i32, 7>();
    return 522f;
}

fn func_1(arg_0: bool) -> vec3<i32> {
    let var_0 = select(arg_0 | arg_0, arg_0 || arg_0, all(vec2<bool>(false, arg_0)));
    global0 = array<vec3<u32>, 5>();
    global2 = vec3<f32>(global2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(func_4(vec2<f32>(global2.x, _wgslsmith_f_op_f32(max(global2.x, 1722f))), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(246f, global2.x, global2.x), vec3<f32>(global2.x, global2.x, global2.x), true)), ~1u, _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_f32(round(global2.x)), Struct_1(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2.x, global2.x, global2.x), vec3<f32>(global2.x, -2551f, global2.x), vec3<bool>(arg_0, var_0, false))), 52376u, _wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(-576f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), 274f);
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(366f - global2.x)), global2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(global2.x))))))), 1u, global2.x);
    var var_2 = global2.x;
    return _wgslsmith_add_vec3_i32(~(~(_wgslsmith_div_vec3_i32(vec3<i32>(16892i, u_input.b.x, -15781i), vec3<i32>(0i, u_input.a, global3.x)) << (firstLeadingBit(global0[_wgslsmith_index_u32(var_1.b, 5u)]) % vec3<u32>(32u)))), max(vec3<i32>(19224i, -2147483647i, ~global1[_wgslsmith_index_u32(22389u, 7u)]), vec3<i32>(global3.x, 1i, -1i)));
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    var var_0 = all(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), false), true), vec3<bool>(true, false, false), true), !(!select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(1655f, _wgslsmith_f_op_f32(123f + 1000f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1107f - arg_1.c), arg_0, true)), _wgslsmith_f_op_f32(trunc(arg_1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(arg_1.a.x, -908f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(global2.xy, arg_1, global2.x, arg_1)) * _wgslsmith_f_op_f32(abs(global2.x))), _wgslsmith_f_op_f32(arg_1.a.x + global2.x), global2.x, arg_1.a.x)))));
    var var_2 = ~(arg_2 >> (vec3<u32>(4294967295u, 4294967295u, firstLeadingBit(4294967295u)) % vec3<u32>(32u))) | arg_2;
    let var_3 = !all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false));
    var var_4 = global0[_wgslsmith_index_u32(1u, 5u)];
    return var_3;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<bool>(!(-1916f < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global2.x + global2.x)))), -28920i < countOneBits(_wgslsmith_div_i32(global3.x << (15098u % 32u), global3.x)), !(308f < _wgslsmith_f_op_f32(-global2.x)), func_5(global2.x, Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -873f, global2.x)), ~1u, _wgslsmith_div_f32(-1000f, -564f)), func_1(true)));
    global1 = array<i32, 7>();
    var var_1 = -2147483647i;
    let var_2 = max(~(-u_input.b) << (~vec2<u32>(1u, 1u) % vec2<u32>(32u)), u_input.b);
    global4 = array<Struct_2, 30>();
    var var_3 = countOneBits(-global3.x);
    var_3 = 37568i;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(0u, 14895u, (1u & _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 0u, 0u), global0[_wgslsmith_index_u32(14220u, 5u)])) << (4294967295u % 32u)), ~reverseBits(_wgslsmith_mod_u32(1u, 60730u)), ~6800u);
}

