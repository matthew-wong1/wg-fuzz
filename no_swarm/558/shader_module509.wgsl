struct Struct_1 {
    a: bool,
    b: i32,
    c: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: vec2<i32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(690f, vec4<i32>(93540i, 1i, 2147483647i, 32190i), vec2<i32>(-5133i, -34960i), 28760u);

var<private> global1: vec2<f32> = vec2<f32>(-103f, 1382f);

var<private> global2: array<i32, 5> = array<i32, 5>(24651i, 2147483647i, i32(-2147483648), 2147483647i, 28320i);

var<private> global3: array<u32, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec3<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0.a;
    global1 = arg_2.yx;
    var var_1 = arg_3.b >> ((0u & _wgslsmith_mod_u32(reverseBits(4294967295u), u_input.a | 0u)) % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-arg_2))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_2), arg_2)) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(143f + global1.x), 839f, arg_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_2 + vec3<f32>(global1.x, -768f, arg_2.x)))))));
    var_0 = true;
    return arg_2.x;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<bool>) -> vec3<bool> {
    let var_0 = Struct_2(_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1444f + _wgslsmith_f_op_f32(f32(-1f) * -271f)))), global0.b, -max(vec2<i32>(_wgslsmith_add_i32(-1i, arg_1.b.x), ~global0.c.x), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, global0.b.x), _wgslsmith_div_vec2_i32(u_input.d.yx, vec2<i32>(40741i, u_input.c)), ~vec2<i32>(-2147483647i, global0.b.x))), 1u);
    var var_1 = arg_2;
    global1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global0.a, arg_1.a)))))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_1.a, 1000f), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1774f, -2245f), vec2<f32>(arg_1.a, 2717f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0, -1198f))) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(130f, global1.x)))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, var_0.a)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-289f, arg_1.a))), var_1.x))))))));
    let var_2 = any(select(!(!vec4<bool>(false, false, arg_2.x, arg_2.x)), vec4<bool>(true || !arg_2.x, false, var_1.x, !(!arg_2.x)), vec4<bool>(false, any(select(arg_2, arg_2, arg_2.x)), all(vec3<bool>(true, arg_2.x, true)), arg_2.x)));
    var var_3 = arg_2.x;
    return select(select(vec3<bool>(true, (u_input.a > u_input.a) || arg_2.x, any(arg_2.zz)), !vec3<bool>(false, all(vec3<bool>(false, false, true)), select(var_1.x, arg_2.x, arg_2.x)), false), select(arg_2.wyw, !(!var_1.xxx), !select(arg_2.xwy, vec3<bool>(arg_2.x, false, true), false || var_1.x)), !(!(!vec3<bool>(false, false, arg_2.x))));
}

fn func_2() -> Struct_1 {
    var var_0 = select(select(func_4(_wgslsmith_f_op_f32(global0.a * _wgslsmith_f_op_f32(func_3(Struct_1(false, global2[_wgslsmith_index_u32(global0.d, 5u)], 1u), 68465u, vec3<f32>(-1119f, global1.x, global1.x), Struct_1(true, global0.c.x, global0.d)))), Struct_2(_wgslsmith_f_op_f32(1211f + 1047f), vec4<i32>(-14281i, global2[_wgslsmith_index_u32(u_input.a, 5u)], global2[_wgslsmith_index_u32(u_input.a, 5u)], -12308i), global0.c | u_input.d.wz, global3[_wgslsmith_index_u32(global0.d, 8u)] ^ global3[_wgslsmith_index_u32(u_input.a, 8u)]), vec4<bool>(false, global0.c.x <= u_input.b, any(vec3<bool>(false, true, false)), true)), !vec3<bool>(true, true, any(vec2<bool>(true, true))), func_4(_wgslsmith_f_op_f32(-global1.x), Struct_2(_wgslsmith_f_op_f32(ceil(-2976f)), -u_input.d, -u_input.d.yz, global0.d | 4294967295u), select(vec4<bool>(true, true, false, false), select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, true), false), vec4<bool>(false, false, false, true))).x), select(!select(vec3<bool>(true, true, true), func_4(global0.a, Struct_2(global1.x, global0.b, global0.c, 1u), vec4<bool>(true, true, true, true)), vec3<bool>(true, true, true)), func_4(global0.a, Struct_2(global0.a, global0.b | global0.b, countOneBits(vec2<i32>(-12946i, u_input.c)), 1u), vec4<bool>(false, all(vec3<bool>(false, false, false)), true, true)), select(vec3<bool>(true, true, all(vec2<bool>(false, false))), vec3<bool>(false, select(false, false, true), select(true, false, false)), vec3<bool>(func_4(global0.a, Struct_2(global1.x, vec4<i32>(-34616i, -1i, u_input.c, 2147483647i), vec2<i32>(14986i, global2[_wgslsmith_index_u32(u_input.a, 5u)]), global0.d), vec4<bool>(false, false, false, false)).x, func_4(global1.x, Struct_2(810f, vec4<i32>(-1i, -2147483647i, 2147483647i, 1i), vec2<i32>(1i, -66058i), u_input.a), vec4<bool>(true, false, false, true)).x, true))), vec3<bool>(false, false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-188f)) - _wgslsmith_f_op_f32(f32(-1f) * -125f)) == global1.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-195f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(false, u_input.c, 1u), global3[_wgslsmith_index_u32(0u, 8u)], _wgslsmith_div_vec3_f32(vec3<f32>(global0.a, global0.a, 398f), vec3<f32>(563f, global1.x, global1.x)), Struct_1(true, u_input.c, global0.d))) * global1.x), global0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1886f)) - global1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -339f, global1.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * -936f), _wgslsmith_f_op_f32(global1.x + global1.x)))));
    global0 = Struct_2(_wgslsmith_div_f32(1135f, _wgslsmith_f_op_f32(-345f - _wgslsmith_f_op_f32(-var_1.x))), vec4<i32>(~1i, global0.b.x, countOneBits(_wgslsmith_clamp_i32(~global0.b.x, 38999i, -2147483647i)), -_wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.b, global0.c.x)), _wgslsmith_mult_vec2_i32(vec2<i32>(-783i, -1i), vec2<i32>(u_input.c, 0i)))), abs(~(_wgslsmith_div_vec2_i32(global0.c, vec2<i32>(global2[_wgslsmith_index_u32(1u, 5u)], global2[_wgslsmith_index_u32(75851u, 5u)])) >> (_wgslsmith_add_vec2_u32(vec2<u32>(global3[_wgslsmith_index_u32(0u, 8u)], global0.d), vec2<u32>(1u, u_input.a)) % vec2<u32>(32u)))), _wgslsmith_dot_vec4_u32(select(min(vec4<u32>(u_input.a, 10653u, 4294967295u, 22930u), vec4<u32>(0u, 0u, 37608u, u_input.a)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global3[_wgslsmith_index_u32(2522u, 8u)], global0.d, u_input.a, 35117u), vec4<u32>(global3[_wgslsmith_index_u32(48495u, 8u)], u_input.a, 54023u, global0.d), vec4<u32>(36103u, global3[_wgslsmith_index_u32(u_input.a, 8u)], global3[_wgslsmith_index_u32(4294967295u, 8u)], 17459u)), vec4<bool>(var_0.x, var_0.x, true, var_0.x)) >> (_wgslsmith_div_vec4_u32(~vec4<u32>(global0.d, 0u, global3[_wgslsmith_index_u32(49475u, 8u)], global3[_wgslsmith_index_u32(global0.d, 8u)]), vec4<u32>(global0.d, global0.d, global0.d, global3[_wgslsmith_index_u32(4294967295u, 8u)]) ^ vec4<u32>(4294967295u, global3[_wgslsmith_index_u32(18873u, 8u)], 1u, 4212u)) % vec4<u32>(32u)), min(firstTrailingBit(vec4<u32>(global0.d, u_input.a, 0u, u_input.a)), ~vec4<u32>(global0.d, 65963u, global0.d, 4853u))));
    let var_2 = _wgslsmith_dot_vec3_i32(~_wgslsmith_div_vec3_i32(~abs(vec3<i32>(global2[_wgslsmith_index_u32(u_input.a, 5u)], -6613i, -27028i)), ~(vec3<i32>(global2[_wgslsmith_index_u32(1u, 5u)], 2147483647i, global2[_wgslsmith_index_u32(11707u, 5u)]) >> (vec3<u32>(23469u, 96370u, 1635u) % vec3<u32>(32u)))), countOneBits(~vec3<i32>(select(-1i, u_input.d.x, true), firstTrailingBit(2147483647i), firstTrailingBit(-10647i))));
    var var_3 = u_input.a;
    return Struct_1(!(u_input.b < (i32(-1i) * -global0.b.x)), firstTrailingBit(~global2[_wgslsmith_index_u32(max(global0.d, u_input.a), 5u)]) ^ ~(global0.c.x >> (global0.d % 32u)), u_input.a & ~global0.d);
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: f32, arg_3: u32) -> Struct_2 {
    var var_0 = arg_1;
    let var_1 = 808f;
    var_0 = func_2();
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2)) - _wgslsmith_f_op_f32(round(1190f)))), ~vec4<i32>(firstLeadingBit(var_0.b), _wgslsmith_div_i32(var_0.b, arg_1.b), global2[_wgslsmith_index_u32(~arg_1.c, 5u)], arg_1.b), firstLeadingBit(~select(reverseBits(vec2<i32>(global0.b.x, u_input.b)), -vec2<i32>(global0.b.x, global2[_wgslsmith_index_u32(var_0.c, 5u)]), var_0.b >= 2147483647i)), 19879u);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<u32, 8>();
    let var_0 = func_1(max(vec2<i32>(reverseBits(-1i) >> (select(u_input.a, 6522u, false) % 32u), u_input.d.x | 30227i), -vec2<i32>(reverseBits(global2[_wgslsmith_index_u32(u_input.a, 5u)]), u_input.d.x | u_input.c)), Struct_1(!(6760u < _wgslsmith_mod_u32(34675u, u_input.a)), -2147483647i, u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a, 853f) + _wgslsmith_div_f32(global1.x, global1.x)))) * _wgslsmith_f_op_f32(f32(-1f) * -2048f)), u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.b.wy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(-var_0.a), 807f))) - vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(2347f, -383f)) + -814f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(332f, -650f, false)), _wgslsmith_f_op_f32(f32(-1f) * -181f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, var_0.a) + func_1(vec2<i32>(1i, global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(56618u, 24582u), 5u)]), func_2(), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -483f), _wgslsmith_f_op_f32(-var_0.a))), ~27632u).a), vec4<i32>(2147483647i, global2[_wgslsmith_index_u32(39302u, 5u)], _wgslsmith_add_i32(_wgslsmith_sub_i32(-27604i ^ var_0.b.x, var_0.b.x & -1i), firstLeadingBit(var_0.b.x & var_0.c.x)), _wgslsmith_dot_vec4_i32(var_0.b, _wgslsmith_div_vec4_i32(vec4<i32>(-66761i, 2147483647i, -1i, global0.b.x), global0.b) ^ abs(vec4<i32>(-43581i, 1i, var_0.c.x, global0.b.x)))), 47110u);
}

