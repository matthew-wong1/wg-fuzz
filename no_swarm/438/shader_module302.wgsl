struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<u32, 13>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = ~4294967295u;
    let var_1 = Struct_1(u_input.b.x, u_input.b.x, 1i, vec3<u32>(((u_input.a.x << (global1[_wgslsmith_index_u32(1u, 13u)] % 32u)) & _wgslsmith_div_u32(u_input.c.x, 32974u)) >> (u_input.c.x % 32u), global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(23680u, 13u)], 13u)], 13u)]), 13u)], countOneBits(0u)));
    let var_2 = Struct_1(var_1.a, arg_0, _wgslsmith_div_i32(2147483647i, _wgslsmith_sub_i32(8691i, ~(u_input.b.x << (u_input.c.x % 32u)))), (vec3<u32>(~global1[_wgslsmith_index_u32(u_input.c.x, 13u)], _wgslsmith_mult_u32(1u, global1[_wgslsmith_index_u32(u_input.c.x, 13u)]), u_input.c.x ^ 1u) ^ _wgslsmith_div_vec3_u32(vec3<u32>(var_1.d.x, var_1.d.x, 4294967295u), _wgslsmith_div_vec3_u32(var_1.d, vec3<u32>(12223u, global1[_wgslsmith_index_u32(u_input.c.x, 13u)], u_input.c.x)))) ^ var_1.d);
    var_0 = var_1.d.x;
    var var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_0, -var_1.c), ~(-1i), -19458i) | _wgslsmith_add_vec3_i32(~(vec3<i32>(25674i, u_input.b.x, arg_0) | vec3<i32>(2147483647i, 57801i, 0i)), ~vec3<i32>(var_1.c, -2147483647i, 0i) & reverseBits(vec3<i32>(-1i, var_1.a, 54330i))), -vec3<i32>(min(6812i, arg_0) << (~0u % 32u), -firstLeadingBit(-50492i), _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(u_input.b, u_input.b), ~1i)));
    return _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(select(select(vec2<u32>(12983u, u_input.a.x), vec2<u32>(5954u, var_2.d.x), vec2<bool>(false, false)), vec2<u32>(4294967295u, 0u), vec2<bool>(true, true)), select(~vec2<u32>(var_1.d.x, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 13u)], 13u)]), vec2<u32>(var_1.d.x, u_input.c.x), true)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.c.x, 98770u) << ((var_1.d.zz & vec2<u32>(var_2.d.x, var_1.d.x)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec3_u32(var_2.d, vec3<u32>(var_2.d.x, var_1.d.x, u_input.a.x)), select(global1[_wgslsmith_index_u32(u_input.c.x, 13u)], 39114u, false)))), vec2<u32>(1u, countOneBits(var_1.d.x)));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_dot_vec3_u32(~_wgslsmith_add_vec3_u32(arg_0.d, max(vec3<u32>(arg_0.d.x, 98356u, 1326u), vec3<u32>(u_input.a.x, 1u, 1u))), u_input.a);
    var var_0 = func_3(min(~min(u_input.b.x, -2147483647i), 810i) & 12738i);
    var var_1 = Struct_1(-2147483647i, 2147483647i, 0i, min(min(vec3<u32>(59303u, 33755u, 4294967295u), vec3<u32>(4294967295u, 0u, 6289u)) << (arg_0.d % vec3<u32>(32u)), firstLeadingBit(u_input.a)));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-489f, 1f), vec2<f32>(1f, 1f)) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1739f), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(-811f + -1000f)))));
    var var_3 = vec3<bool>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)), -201f)) <= 1176f, !(((-464f >= var_2.x) & false) == any(select(vec2<bool>(false, false), vec2<bool>(true, false), true))), true);
    return arg_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: i32) -> vec2<f32> {
    var var_0 = Struct_1(0i, 2147483647i, firstTrailingBit(_wgslsmith_mod_i32(countOneBits(arg_2), 9847i)) | max(_wgslsmith_sub_i32(-2147483647i, 6608i ^ arg_0.c), (arg_0.a ^ arg_0.c) | _wgslsmith_mult_i32(arg_0.a, -21573i)), ~_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.d.x, u_input.a.x, 67261u), vec3<u32>(~global1[_wgslsmith_index_u32(u_input.c.x, 13u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 13u)], 13u)], 13u)], _wgslsmith_dot_vec2_u32(u_input.c.zx, arg_0.d.yx))));
    var var_1 = func_2(func_2(func_2(arg_0)));
    var var_2 = 458f;
    var var_3 = func_2(func_2(func_2(Struct_1(var_1.c, _wgslsmith_sub_i32(var_0.b, arg_2), arg_2, var_0.d))));
    var var_4 = vec4<u32>(var_0.d.x, _wgslsmith_dot_vec3_u32(abs(var_1.d), _wgslsmith_div_vec3_u32(~(u_input.c ^ vec3<u32>(4294967295u, 4294967295u, 1u)), ~(~vec3<u32>(var_0.d.x, 4294967295u, 73321u)))), 1u, var_0.d.x);
    return _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 671f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(363f, 813f) + vec2<f32>(119f, -909f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(783f, -153f))))));
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1) -> f32 {
    let var_0 = !vec3<bool>(false, true, all(vec4<bool>(true, true, true, true)));
    global0 = ~(~u_input.c.x);
    let var_1 = var_0.x;
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(-1301f, -617f)), _wgslsmith_f_op_f32(abs(-549f)), _wgslsmith_f_op_f32(-arg_0.x)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-374f, 1816f, 436f) - _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.x, 799f, arg_0.x), vec3<f32>(arg_0.x, 461f, arg_0.x))))) * _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(1017f, arg_0.x, arg_0.x))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.x, 1438f, arg_0.x), vec3<f32>(922f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.x, -272f, 1739f)))))));
    return _wgslsmith_f_op_f32(-var_3.x);
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(2360f))));
    let var_1 = 1i;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(1488f + 1000f), _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(func_4(func_2(arg_0), select(vec3<bool>(true, false, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true)), min(u_input.b.x, 2147483647i))), Struct_1(~var_1, 0i ^ u_input.b.x, arg_2.a | 1i, countOneBits(vec3<u32>(u_input.a.x, arg_1, 39632u))), func_2(arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false | (_wgslsmith_f_op_f32(func_1(Struct_1(35780i, -1i, u_input.b.x | u_input.b.x, _wgslsmith_add_vec3_u32(u_input.c, u_input.c)), global1[_wgslsmith_index_u32(~firstTrailingBit(72140u), 13u)], Struct_1(u_input.b.x, u_input.b.x, -13239i, u_input.c ^ u_input.a))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1567f - 1839f))));
    global0 = 0u;
    let var_1 = !(_wgslsmith_f_op_f32(190f + _wgslsmith_f_op_f32(ceil(-739f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-463f, 1126f), vec2<f32>(-1597f, -2132f))), func_2(Struct_1(u_input.b.x, 1i, u_input.b.x, vec3<u32>(4294967295u, u_input.c.x, u_input.a.x))), Struct_1(u_input.b.x, u_input.b.x, u_input.b.x, vec3<u32>(u_input.c.x, 4294967295u, 4294967295u)))) + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(-223f))))));
    var var_2 = -2147483647i;
    var var_3 = u_input.b | ~vec2<i32>(-(-1i >> (1u % 32u)), ~u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(vec4<u32>(~global1[_wgslsmith_index_u32(4294967295u, 13u)], 1u, _wgslsmith_mod_u32(~global1[_wgslsmith_index_u32(1u, 13u)], global1[_wgslsmith_index_u32(109171u, 13u)]), _wgslsmith_dot_vec2_u32(~vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)], u_input.c.x), ~u_input.c.yz)), abs(vec4<u32>(func_2(Struct_1(u_input.b.x, 55541i, -1i, vec3<u32>(3165u, global1[_wgslsmith_index_u32(98866u, 13u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.a.x, 13u)], 13u)]))).d.x, countOneBits(u_input.c.x), 1u, u_input.c.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_vec2_f32(func_4(Struct_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-5834i, 1i), vec2<i32>(0i, var_3.x)), _wgslsmith_sub_i32(2147483647i, u_input.b.x), _wgslsmith_mult_i32(-1i, u_input.b.x), max(u_input.c, u_input.c)), select(vec3<bool>(var_1, var_1, false), select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, true, var_1), vec3<bool>(true, var_1, var_1)), all(vec2<bool>(true, var_1))), var_3.x)).x)), abs(abs(abs(min(u_input.b.x, u_input.b.x)))), vec2<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(u_input.c.yz), vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33474u, 13u)], 13u)], u_input.c.x)) >> (~(~u_input.a.x) % 32u), 13u)], global1[_wgslsmith_index_u32(37856u, 13u)]));
}

