struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 11> = array<f32, 11>(726f, -102f, -212f, -1274f, 498f, -711f, -872f, 1000f, 580f, 365f, -241f);

var<private> global1: Struct_1 = Struct_1(true, -183f, false, vec3<i32>(25710i, 8214i, -28244i));

var<private> global2: array<f32, 31> = array<f32, 31>(-281f, -377f, 634f, 1541f, -268f, 803f, -1381f, 1000f, -740f, -112f, 368f, -928f, -1000f, -1218f, 1317f, -3030f, -994f, -129f, -259f, -576f, 1000f, -1084f, 1163f, -422f, 568f, 275f, -1194f, 870f, 1132f, -268f, 897f);

var<private> global3: i32 = -32803i;

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>) -> vec3<f32> {
    var var_0 = Struct_1(arg_0.c, 612f, global4.c & arg_1.a, _wgslsmith_mult_vec3_i32(-arg_1.d, select(vec3<i32>(arg_1.d.x, 1i, abs(-1i)), vec3<i32>(1i, u_input.d.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-10207i, arg_0.d.x), global1.d.zx)), vec3<bool>(arg_0.c, false, false))));
    var var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(-543f, var_0.b)), _wgslsmith_f_op_f32(-1401f * -364f), -590f);
    global0 = array<f32, 11>();
    let var_2 = 504f;
    var_0 = Struct_1(any(vec3<bool>(any(!vec2<bool>(true, arg_2.x)), true, all(select(vec3<bool>(global4.a, global4.c, true), arg_2.wxy, vec3<bool>(true, arg_2.x, global4.a))))), global0[_wgslsmith_index_u32(abs(u_input.b), 11u)], global4.c, -firstTrailingBit(global4.d));
    return vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(var_0.b, var_0.b)))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -842f))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(var_2)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -475f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-913f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -354f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(Struct_1(false, -144f, true, vec3<i32>(-31231i, u_input.d.x, -1i)), Struct_1(global1.c, 1174f, false, global4.d), !vec4<bool>(global4.c, global4.a, true, false))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1634f, global2[_wgslsmith_index_u32(u_input.a, 31u)], global0[_wgslsmith_index_u32(0u, 11u)])))))));
    global2 = array<f32, 31>();
    var var_1 = reverseBits(max(0i, 2147483647i));
    global1 = Struct_1(false & (2147483647i >= ~_wgslsmith_mod_i32(global1.d.x, 591i)), 174f, u_input.b < 1u, vec3<i32>((u_input.c ^ abs(1i)) << (u_input.b % 32u), 37282i, select(-5014i, _wgslsmith_add_i32(-u_input.d.x, ~0i), true == !global1.a)));
    global4 = Struct_1(!select(all(select(vec2<bool>(true, global4.a), vec2<bool>(true, global1.c), vec2<bool>(global1.a, false))), global1.c, any(select(vec2<bool>(global1.a, global1.a), vec2<bool>(true, global4.c), global4.c))), 1517f, true, global1.d);
    return Struct_1(any(select(select(select(vec2<bool>(false, global1.c), vec2<bool>(false, global1.c), vec2<bool>(global4.c, false)), vec2<bool>(false, true), !global1.a), !select(vec2<bool>(global1.c, global4.a), vec2<bool>(global4.a, false), global1.a), global4.a)), -954f, true, global4.d);
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(-1066f)), global2[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.x, u_input.a), 31u)])) < _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1640f + 980f), global1.b), 231f), global1.c, global1.a);
    var var_1 = Struct_1(global2[_wgslsmith_index_u32(u_input.a, 31u)] <= 178f, -482f, u_input.c == ~select(2147483647i & global4.d.x, -arg_1.d.x, false), _wgslsmith_add_vec3_i32(-vec3<i32>(-1i, 1i, arg_1.d.x), abs(vec3<i32>(1i, 1i, global4.d.x))) | _wgslsmith_mult_vec3_i32(arg_1.d ^ countOneBits(vec3<i32>(u_input.c, 18812i, u_input.d.x)), vec3<i32>(48949i, global4.d.x, global4.d.x)));
    global2 = array<f32, 31>();
    let var_2 = func_2();
    var_1 = func_2();
    return Struct_1(!var_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)) * _wgslsmith_div_f32(arg_1.b, _wgslsmith_f_op_f32(-arg_1.b)))), !(all(vec2<bool>(true, true)) & global1.c), reverseBits(min(select(_wgslsmith_div_vec3_i32(var_2.d, arg_1.d), var_1.d, !var_2.c), _wgslsmith_sub_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-4626i, global4.d.x, global1.d.x), vec3<i32>(-9731i, u_input.d.x, 0i), vec3<i32>(u_input.d.x, var_1.d.x, 0i)), vec3<i32>(global1.d.x, var_1.d.x, var_2.d.x)))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 31u)]), _wgslsmith_f_op_f32(491f - arg_3.b)))) * _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~(~4294967295u), 11u)] + -649f)));
    let var_1 = countOneBits(17818u);
    global1 = Struct_1(false, -605f, !all(vec4<bool>(global4.a, false, !global4.c, all(vec3<bool>(global1.c, true, global1.a)))), countOneBits(vec3<i32>(45787i, select(arg_2, _wgslsmith_div_i32(arg_1.d.x, arg_1.d.x), func_2().c), _wgslsmith_clamp_i32(arg_2, 2147483647i, -1i) | -26473i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(634f, 1756f, arg_3.b, 1442f)))))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -641f), -818f, -705f, -1828f));
    var var_3 = global4.d.yy;
    return Struct_1(select(global1.c || false, arg_0.a, all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(global4.c, true, true), arg_3.a), global4.c))), -617f, !arg_3.c, min(max(_wgslsmith_clamp_vec3_i32(vec3<i32>(arg_1.d.x, -7001i, -1i), ~vec3<i32>(1i, global4.d.x, arg_1.d.x), vec3<i32>(global1.d.x, arg_2, 38193i)), arg_1.d), vec3<i32>(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(arg_3.d.x, 1i, -36058i), arg_3.d)), _wgslsmith_dot_vec4_i32(abs(vec4<i32>(var_3.x, arg_2, -34949i, 20805i)), vec4<i32>(global4.d.x, -18055i, -55135i, arg_3.d.x)), global4.d.x)));
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: bool) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 31u)] + -575f) * -1000f) - arg_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(402f - -1412f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -871f)), _wgslsmith_div_f32(arg_1.b, global4.b))));
    let var_1 = func_5(func_4(~(~min(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, u_input.b))), func_2()), func_2(), -31011i & (firstLeadingBit(select(2147483647i, 48286i, global4.c)) & 1i), Struct_1(true, arg_1.b, _wgslsmith_f_op_f32(trunc(global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, u_input.b), 31u)])) <= _wgslsmith_f_op_f32(369f * -312f), ~(-vec3<i32>(-1i, global1.d.x, -1i) & abs(vec3<i32>(-26089i, -1i, global4.d.x)))));
    global3 = global1.d.x;
    global4 = func_2();
    global3 = _wgslsmith_mult_i32(_wgslsmith_mult_i32(~min(_wgslsmith_div_i32(-1i, -2147483647i), 43449i), -min(~var_1.d.x, arg_1.d.x)), _wgslsmith_div_i32(abs(global4.d.x), -4001i));
    return func_5(arg_1, Struct_1(_wgslsmith_div_f32(1617f, _wgslsmith_f_op_f32(ceil(-574f))) <= arg_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().b - global0[_wgslsmith_index_u32(abs(0u), 11u)])), !any(select(vec4<bool>(true, true, false, true), vec4<bool>(false, arg_2, false, false), false)), ~(var_1.d >> (min(vec3<u32>(59213u, 55976u, 42528u), vec3<u32>(u_input.a, u_input.b, 8862u)) % vec3<u32>(32u)))), abs(func_2().d.x >> (~(u_input.b ^ 4294967295u) % 32u)), func_4(vec2<u32>(_wgslsmith_sub_u32(u_input.b, 1u), u_input.a), Struct_1(true, _wgslsmith_f_op_f32(529f * _wgslsmith_f_op_f32(517f - -1671f)), !all(vec4<bool>(arg_1.a, global1.a, global4.a, true)), var_1.d)));
}

fn func_6(arg_0: Struct_1) -> vec2<f32> {
    var var_0 = Struct_1(global4.a, -284f, false, ~_wgslsmith_mult_vec3_i32(~vec3<i32>(22614i, global4.d.x, global1.d.x), vec3<i32>(i32(-1i) * -2147483647i, arg_0.d.x, global4.d.x | global4.d.x)));
    var_0 = arg_0;
    let var_1 = arg_0;
    var var_2 = var_1;
    var var_3 = Struct_1(-285f != _wgslsmith_f_op_f32(max(func_4(abs(vec2<u32>(u_input.b, 4294967295u)), Struct_1(var_1.c, 1059f, var_1.c, var_1.d)).b, _wgslsmith_f_op_f32(floor(var_2.b)))), global1.b, var_2.c, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(u_input.d.x, -13643i, arg_0.d.x, u_input.c), abs(vec4<i32>(u_input.c, -1i, -1i, 0i)) >> (~vec4<u32>(4294967295u, 43226u, u_input.a, u_input.b) % vec4<u32>(32u))), firstTrailingBit(-2147483647i), 28130i));
    return vec2<f32>(_wgslsmith_f_op_f32(236f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(762f - var_2.b), -214f)) + global1.b)), var_3.b);
}

fn func_7(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    var var_0 = func_4(~(~(vec2<u32>(u_input.a, u_input.b) & vec2<u32>(u_input.b, 0u))) << (_wgslsmith_div_vec2_u32(abs(~vec2<u32>(4294967295u, u_input.a)), countOneBits(vec2<u32>(1u, u_input.a) & vec2<u32>(u_input.b, u_input.b))) % vec2<u32>(32u)), Struct_1(arg_2.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_3(arg_3, arg_2, vec4<bool>(global4.c, arg_3.c, true, arg_1.a))).x)), arg_3.a, arg_3.d));
    var var_1 = arg_1;
    var var_2 = Struct_1(func_5(arg_1, func_2(), func_1(_wgslsmith_f_op_f32(-arg_2.b), func_1(-686f, Struct_1(global1.a, global4.b, true, vec3<i32>(global1.d.x, -2147483647i, -32628i)), true), any(vec2<bool>(false, false)) != arg_2.c).d.x, Struct_1(true, var_1.b, true, var_0.d)).c, _wgslsmith_f_op_f32(func_2().b - _wgslsmith_f_op_f32(min(-930f, 1559f))), var_1.a, vec3<i32>(countOneBits(i32(-1i) * -1i), -u_input.c << (abs(u_input.b) % 32u), max(_wgslsmith_sub_i32(-47057i, u_input.d.x), min(var_0.d.x, arg_1.d.x))) ^ global4.d);
    var_2 = func_4(vec2<u32>(_wgslsmith_mult_u32(~_wgslsmith_mod_u32(u_input.a, u_input.b), _wgslsmith_clamp_u32(53182u, 4294967295u, u_input.b) >> (~55158u % 32u)), u_input.a), Struct_1(_wgslsmith_div_i32(-30522i, 1i) < countOneBits(arg_3.d.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.a, 11u)] * global2[_wgslsmith_index_u32(22992u, 31u)]) + 567f) + _wgslsmith_f_op_f32(-global4.b)), false, global1.d ^ vec3<i32>(i32(-1i) * -26674i, 84117i, -global1.d.x)));
    var var_3 = arg_1;
    return Struct_1(any(vec3<bool>(!global1.c & (5035i == var_3.d.x), all(vec3<bool>(arg_3.a, false, true)), global1.c)), _wgslsmith_f_op_f32(-global1.b), !(!(u_input.b == _wgslsmith_sub_u32(u_input.b, u_input.a))), var_1.d);
}

fn func_8(arg_0: Struct_1) -> Struct_1 {
    var var_0 = true;
    var var_1 = countOneBits(select(vec3<u32>(abs(u_input.b), _wgslsmith_clamp_u32(u_input.a, u_input.a, u_input.a), firstTrailingBit(u_input.a)) & (~vec3<u32>(u_input.a, u_input.a, u_input.a) & ~vec3<u32>(u_input.b, 1u, u_input.b)), ~(~(~vec3<u32>(u_input.a, u_input.a, u_input.a))), vec3<bool>((global1.c && true) || global1.a, true, 1f >= global0[_wgslsmith_index_u32(min(u_input.b, u_input.b), 11u)])));
    global0 = array<f32, 11>();
    global4 = arg_0;
    var var_2 = Struct_1(~_wgslsmith_mod_u32(u_input.b, var_1.x) > _wgslsmith_mult_u32(_wgslsmith_sub_u32(4294967295u, 1u), u_input.b), 493f, true, -arg_0.d);
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = reverseBits(firstLeadingBit(~abs(vec3<u32>(25845u, u_input.b, u_input.a))));
    let var_1 = ~var_0.x;
    global0 = array<f32, 11>();
    let var_2 = func_8(func_7(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-492f, 981f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-449f, 811f)))) + _wgslsmith_f_op_vec2_f32(func_6(func_1(global4.b, Struct_1(true, -1183f, true, vec3<i32>(global4.d.x, -25804i, u_input.c)), global4.a)))), func_2(), func_1(global2[_wgslsmith_index_u32(~1u, 31u)], Struct_1(global1.c, -182f, global4.c, vec3<i32>(-1i, global1.d.x, u_input.c) << (vec3<u32>(var_1, 0u, 1u) % vec3<u32>(32u))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 10858u, var_0.x), vec3<u32>(1u, var_1, 20342u)), 31u)] != global1.b), func_4(vec2<u32>(var_0.x, 75664u) << (vec2<u32>(var_1, var_1) % vec2<u32>(32u)), Struct_1(false, _wgslsmith_f_op_f32(-1676f * -1939f), true, _wgslsmith_add_vec3_i32(global1.d, vec3<i32>(-1042i, global4.d.x, u_input.d.x))))));
    var var_3 = select(!vec4<bool>(_wgslsmith_f_op_f32(-298f + global1.b) >= 1000f, !(!global4.a), false, all(select(vec4<bool>(true, false, false, global4.c), vec4<bool>(var_2.c, global1.a, global1.a, global1.a), vec4<bool>(var_2.c, global4.a, var_2.a, true)))), !select(vec4<bool>(global4.a, global1.c, false, true), select(select(vec4<bool>(global1.a, global1.c, false, false), vec4<bool>(true, global1.c, true, false), vec4<bool>(global1.a, var_2.c, global4.c, false)), select(vec4<bool>(var_2.c, var_2.a, var_2.a, false), vec4<bool>(false, true, false, false), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(global1.a, global1.c, true, var_2.a), vec4<bool>(false, true, true, global1.a), false), !vec4<bool>(false, global1.c, false, var_2.a), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(949f * -242f)) > var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(func_5(var_2, Struct_1(true, 1f, false, select(func_7(vec2<f32>(global4.b, global1.b), var_2, var_2, Struct_1(var_3.x, -166f, global4.a, global4.d)).d, abs(global4.d), select(vec3<bool>(var_3.x, true, var_2.c), var_3.xxx, false))), -1i, func_2()).d.x, -183f);
}

