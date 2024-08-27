struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 818f;

var<private> global1: array<u32, 5>;

var<private> global2: array<bool, 26> = array<bool, 26>(true, false, true, false, true, false, false, true, false, true, false, false, true, true, false, false, false, false, true, false, false, true, false, true, false, true);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: vec2<bool>, arg_2: i32) -> vec3<i32> {
    global0 = _wgslsmith_f_op_f32(sign(1170f));
    global2 = array<bool, 26>();
    var var_0 = all(select(vec2<bool>(!global2[_wgslsmith_index_u32(89837u, 26u)], global2[_wgslsmith_index_u32(~65627u << (_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(u_input.c, 5u)], global1[_wgslsmith_index_u32(90440u, 5u)]) % 32u), 26u)]), select(arg_1, vec2<bool>(!arg_1.x, true), true), vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c, 5u)], 26u)], global2[_wgslsmith_index_u32(45241u, 26u)])));
    var var_1 = 57133i;
    var var_2 = -_wgslsmith_clamp_i32(u_input.a, 1i, -1i);
    return _wgslsmith_mult_vec3_i32(max(_wgslsmith_sub_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(-77483i, -2147483647i, u_input.a), vec3<i32>(-13468i, -4377i, 30822i) | vec3<i32>(arg_2, -54773i, u_input.a)), ~max(vec3<i32>(u_input.a, 1i, 15008i), vec3<i32>(1i, arg_2, arg_0))), select(firstLeadingBit(vec3<i32>(u_input.a, arg_0, arg_0)), vec3<i32>(1i, ~u_input.a, ~(-23014i)), select(vec3<bool>(false, true, arg_1.x), !vec3<bool>(true, arg_1.x, arg_1.x), vec3<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 5u)], 26u)], true, true)))), vec3<i32>(-arg_0, i32(-1i) * -2147483647i, _wgslsmith_add_i32(arg_2, arg_2)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    let var_0 = u_input.d.wxw;
    let var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, global2[_wgslsmith_index_u32(0u, 26u)], global2[_wgslsmith_index_u32(12045u, 26u)]), vec3<bool>((true | !global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 26u)]) & global2[_wgslsmith_index_u32(~(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], 5u)]), 26u)], true, true));
    var var_2 = Struct_1(vec3<i32>(~(-1i), _wgslsmith_dot_vec4_i32(~vec4<i32>(-1i, 0i, 30045i, arg_0.a.x), vec4<i32>(-63807i, arg_0.a.x, u_input.a, u_input.a)), abs(arg_1.a.x)) ^ countOneBits(firstTrailingBit(_wgslsmith_sub_vec3_i32(arg_0.a, vec3<i32>(arg_0.a.x, arg_1.a.x, -478i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(688f)))))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -183f);
    let var_4 = _wgslsmith_dot_vec3_u32(max(abs(vec3<u32>(u_input.b, global1[_wgslsmith_index_u32(15242u, 5u)] & 12706u, ~global1[_wgslsmith_index_u32(u_input.c, 5u)])), _wgslsmith_mod_vec3_u32(var_0, vec3<u32>(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(u_input.c, 5u)], 4294967295u, 47239u), 88002u, 4294967295u))), vec3<u32>(44774u, abs(4294967295u), 1u));
    return u_input.c;
}

fn func_5(arg_0: bool, arg_1: vec3<bool>) -> vec4<i32> {
    global2 = array<bool, 26>();
    return _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(firstLeadingBit(-u_input.a), 1i, -1i, u_input.a), reverseBits(_wgslsmith_add_vec4_i32(-vec4<i32>(u_input.a, u_input.a, 37241i, -47903i), vec4<i32>(-6136i, u_input.a, 2147483647i, 0i)))), _wgslsmith_clamp_vec4_i32(reverseBits(-abs(vec4<i32>(46667i, u_input.a, 1i, u_input.a))), -(vec4<i32>(0i, u_input.a, 25976i, u_input.a) << (vec4<u32>(4294967295u, u_input.c, 40980u, u_input.b) % vec4<u32>(32u))) >> (vec4<u32>(4004u ^ global1[_wgslsmith_index_u32(16068u, 5u)], _wgslsmith_mod_u32(1u, 1u), _wgslsmith_mod_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 5u)]), u_input.c) % vec4<u32>(32u)), vec4<i32>(-2147483647i, u_input.a, _wgslsmith_mult_i32(min(u_input.a, u_input.a), u_input.a << (u_input.b % 32u)), -35998i)), vec4<i32>(countOneBits(1i), _wgslsmith_div_i32(_wgslsmith_sub_i32(select(-2147483647i, u_input.a, false), u_input.a), _wgslsmith_sub_i32(_wgslsmith_mod_i32(-980i, 1i), 1i)), ~u_input.a, i32(-1i) * -2147483647i));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_sub_vec4_i32(func_5(global2[_wgslsmith_index_u32(func_4(Struct_1(vec3<i32>(24315i, u_input.a, u_input.a) ^ vec3<i32>(-2415i, u_input.a, u_input.a), _wgslsmith_f_op_f32(-547f + -690f)), Struct_1(func_3(u_input.a, vec2<bool>(global2[_wgslsmith_index_u32(96473u, 26u)], false), u_input.a), 1745f)), 26u)], !vec3<bool>(all(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(1u, 26u)], true)), u_input.a == -31487i, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b, 5u)], 26u)])), vec4<i32>(5798i, func_3(countOneBits(2147483647i), select(select(vec2<bool>(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(45304u, 5u)], 5u)], 26u)], false), vec2<bool>(global2[_wgslsmith_index_u32(40114u, 26u)], false), vec2<bool>(true, global2[_wgslsmith_index_u32(13543u, 26u)])), select(vec2<bool>(global2[_wgslsmith_index_u32(0u, 26u)], true), vec2<bool>(false, false), vec2<bool>(global2[_wgslsmith_index_u32(1u, 26u)], false)), vec2<bool>(global2[_wgslsmith_index_u32(2336u, 26u)], false)), ~u_input.a).x, 1i, ~(abs(u_input.a) >> (func_4(Struct_1(vec3<i32>(u_input.a, -38633i, 40749i), 133f), Struct_1(vec3<i32>(u_input.a, 28021i, u_input.a), 572f)) % 32u))));
    let var_1 = select(!(!select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.b, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]), select(vec2<bool>(true, false), vec2<bool>(false, false), true), true)), select(vec2<bool>(all(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 26u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], 26u)], false), vec4<bool>(false, global2[_wgslsmith_index_u32(16645u, 26u)], false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 26u)]), vec4<bool>(global2[_wgslsmith_index_u32(75013u, 26u)], global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34079u, 5u)], 26u)], false))), true), select(!(!vec2<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 5u)], 26u)])), vec2<bool>(all(vec4<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 5u)], 26u)], false, global2[_wgslsmith_index_u32(u_input.b, 26u)])), false), any(vec3<bool>(true, true, true))), any(!vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.c, 26u)], global2[_wgslsmith_index_u32(49472u, 26u)], global2[_wgslsmith_index_u32(u_input.c, 26u)]))), !(~var_0.x < (min(-2147483647i, 5629i) >> (u_input.c % 32u))));
    global0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-2054f * _wgslsmith_f_op_f32(f32(-1f) * -144f)))) - -1000f);
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -239f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(-150f)), 909f)));
}

fn func_6(arg_0: f32) -> Struct_1 {
    let var_0 = -1000f;
    global2 = array<bool, 26>();
    global0 = _wgslsmith_div_f32(954f, _wgslsmith_f_op_f32(-arg_0));
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1634f + arg_0) + 923f), _wgslsmith_f_op_f32(-arg_0));
    var var_2 = vec2<bool>(any(!vec4<bool>(true, false, false, global2[_wgslsmith_index_u32(u_input.b, 26u)])) | global2[_wgslsmith_index_u32(25776u, 26u)], global2[_wgslsmith_index_u32(u_input.b, 26u)]);
    return Struct_1(vec3<i32>(-(_wgslsmith_clamp_i32(-47822i, u_input.a, u_input.a) & u_input.a), 1i >> (~4294967295u % 32u), -11462i), 1000f);
}

fn func_1() -> vec3<i32> {
    global1 = array<u32, 5>();
    var var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())));
    let var_1 = u_input.d.x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(func_6(_wgslsmith_f_op_f32(floor(603f))).b, _wgslsmith_f_op_f32(f32(-1f) * -1133f)), _wgslsmith_f_op_f32(select(var_0.b, _wgslsmith_f_op_f32(trunc(var_0.b)), var_1 >= 1u)), true)));
    global2 = array<bool, 26>();
    return select(firstTrailingBit(_wgslsmith_add_vec3_i32(abs(var_0.a), ~var_0.a) << (_wgslsmith_sub_vec3_u32(vec3<u32>(51661u, 2957u, 62242u), vec3<u32>(u_input.c, 21677u, global1[_wgslsmith_index_u32(var_1, 5u)])) % vec3<u32>(32u))), -func_5(global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(max(global1[_wgslsmith_index_u32(var_1, 5u)], 1u), 5u)], 26u)], vec3<bool>(any(vec4<bool>(true, global2[_wgslsmith_index_u32(var_1, 26u)], false, global2[_wgslsmith_index_u32(0u, 26u)])), global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1, 5u)] & 0u, 26u)], true)).zxw, select(vec3<bool>(true | global2[_wgslsmith_index_u32(0u, 26u)], _wgslsmith_f_op_f32(-var_0.b) == _wgslsmith_f_op_f32(-474f - var_0.b), global2[_wgslsmith_index_u32(var_1, 26u)]), !(!vec3<bool>(false, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 5u)], 5u)], 26u)], global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3433u, 5u)], 26u)])), !(!global2[_wgslsmith_index_u32(var_1, 26u)] | all(vec3<bool>(true, true, true)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(func_1(), vec3<i32>(~u_input.a, u_input.a | u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, 66539i), vec2<i32>(-42040i, -2147483647i)))), vec3<i32>(~(i32(-1i) * -20382i), 2147483647i, -firstLeadingBit(u_input.a))), 888f);
    global2 = array<bool, 26>();
    global1 = array<u32, 5>();
    let var_1 = func_6(_wgslsmith_f_op_f32(select(var_0.b, var_0.b, true)));
    var var_2 = !(_wgslsmith_mult_i32(-var_1.a.x & -1i, u_input.a) == -2147483647i);
    let var_3 = countOneBits(~vec3<u32>(_wgslsmith_mod_u32(u_input.c, 95540u), 1u, _wgslsmith_mult_u32(global1[_wgslsmith_index_u32(u_input.b, 5u)], 23657u)) >> (_wgslsmith_div_vec3_u32(vec3<u32>(abs(1u), u_input.b, u_input.c & u_input.b), ~vec3<u32>(1u, global1[_wgslsmith_index_u32(56034u, 5u)], 1972u) & reverseBits(vec3<u32>(u_input.b, u_input.d.x, global1[_wgslsmith_index_u32(0u, 5u)]))) % vec3<u32>(32u)));
    var var_4 = Struct_1(vec3<i32>(-reverseBits(var_1.a.x) << (74658u % 32u), u_input.a, min(var_0.a.x, -12610i)), -655f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(900f * 227f))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-102f)))), var_1.b, _wgslsmith_f_op_f32(ceil(var_0.b))), vec4<i32>(_wgslsmith_sub_i32(select(abs(var_1.a.x), ~var_4.a.x, any(vec2<bool>(true, global2[_wgslsmith_index_u32(68587u, 26u)]))), u_input.a), var_4.a.x, -func_5(!global2[_wgslsmith_index_u32(5406u, 26u)], vec3<bool>(false, global2[_wgslsmith_index_u32(var_3.x, 26u)], false)).x, -(~var_1.a.x) | ~(~4487i)), _wgslsmith_mod_i32(var_1.a.x, -(var_4.a.x | firstTrailingBit(-2147483647i))));
}

