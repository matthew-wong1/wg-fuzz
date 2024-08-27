struct Struct_1 {
    a: vec2<i32>,
    b: f32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(38629u, 1u), vec2<u32>(4294967295u, 28710u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 36739u), vec2<u32>(1u, 56223u), vec2<u32>(0u, 0u), vec2<u32>(1u, 0u), vec2<u32>(1u, 13167u), vec2<u32>(96085u, 31340u), vec2<u32>(0u, 98998u));

var<private> global1: array<vec4<u32>, 19>;

var<private> global2: array<f32, 12>;

var<private> global3: array<vec4<bool>, 29>;

var<private> global4: Struct_1 = Struct_1(vec2<i32>(-10501i, 2147483647i), -974f, vec2<i32>(-1i, 10602i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: vec4<bool>) -> bool {
    var var_0 = vec3<bool>(61194u == _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.a), vec3<u32>(u_input.a, u_input.a, u_input.b.x)) >> (select(u_input.b.yzx, vec3<u32>(u_input.a, 23927u, 23606u), false) % vec3<u32>(32u)), vec3<u32>(countOneBits(u_input.a), min(0u, 4294967295u), countOneBits(4599u))), arg_0.x, any(!arg_0.zyw));
    let var_1 = Struct_3(_wgslsmith_sub_vec4_i32(vec4<i32>(abs(global4.c.x >> (1u % 32u)), u_input.c, global4.a.x, ~global4.c.x), vec4<i32>(-1i, i32(-1i) * -17772i, -u_input.c, -47282i) << (abs(min(u_input.b, u_input.b)) % vec4<u32>(32u))), Struct_1(global4.a, -544f, vec2<i32>(386i, _wgslsmith_sub_i32(0i, global4.c.x))), select(select(select(vec4<bool>(var_0.x, arg_0.x, var_0.x, arg_0.x), global3[_wgslsmith_index_u32(~4294967295u, 29u)], arg_0.x), !arg_0, true), arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 12u)])) == _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1983f)))), Struct_1(vec2<i32>(firstTrailingBit(max(0i, -27512i)), _wgslsmith_sub_i32(global4.a.x, ~1i)), global2[_wgslsmith_index_u32(~min(1u, reverseBits(u_input.b.x)), 12u)], max(global4.c, -_wgslsmith_sub_vec2_i32(global4.c, vec2<i32>(global4.a.x, u_input.c)))));
    global1 = array<vec4<u32>, 19>();
    global0 = array<vec2<u32>, 10>();
    let var_2 = true;
    return var_1.c.x;
}

fn func_2() -> Struct_2 {
    global4 = Struct_1(vec2<i32>(~u_input.c, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~(-3849i), u_input.c), _wgslsmith_add_i32(2147483647i, u_input.c) >> (abs(6274u) % 32u), 1i)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(164f, global2[_wgslsmith_index_u32(~(u_input.a | u_input.a), 12u)])))), global4.a << (vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(28698u, u_input.a, u_input.a, u_input.b.x), u_input.b), _wgslsmith_sub_u32(_wgslsmith_add_u32(u_input.b.x, u_input.a), 51351u)) % vec2<u32>(32u)));
    var var_0 = !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)));
    let var_1 = global3[_wgslsmith_index_u32(~1u, 29u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global4.b)) - global4.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 12u)] * -645f) * _wgslsmith_f_op_f32(f32(-1f) * -127f))))));
    let var_3 = Struct_3(vec4<i32>(-1i) * -vec4<i32>(-13086i, _wgslsmith_mod_i32(-17396i, -3136i), 13416i, _wgslsmith_add_i32(0i, u_input.c)), Struct_1(_wgslsmith_add_vec2_i32(~global4.c, abs(_wgslsmith_div_vec2_i32(global4.a, vec2<i32>(-12865i, u_input.c)))), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.a, 12u)], 1878f), vec2<i32>(-_wgslsmith_dot_vec2_i32(global4.a, global4.c), min(1i, max(-65584i, u_input.c)))), select(vec4<bool>(true, var_0.x, false, _wgslsmith_mult_i32(-20470i, u_input.c) == 11365i), !vec4<bool>(var_0.x, true, var_0.x | false, all(var_1.xxx)), func_3(select(vec4<bool>(var_1.x, false, true, var_1.x), select(vec4<bool>(var_0.x, var_1.x, var_1.x, var_0.x), global3[_wgslsmith_index_u32(u_input.b.x, 29u)], global3[_wgslsmith_index_u32(1u, 29u)]), vec4<bool>(var_0.x, true, var_1.x, var_0.x)))), Struct_1(min(global4.c, select(vec2<i32>(u_input.c, 1i), global4.a, var_1.x)) & reverseBits(~vec2<i32>(global4.c.x, -57016i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global4.b, var_2.x) - _wgslsmith_f_op_f32(2375f - global4.b))), vec2<i32>(global4.c.x, countOneBits(u_input.c))));
    return Struct_2(var_3.d);
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = Struct_3(vec4<i32>(~arg_1.a.x, firstTrailingBit(32587i), ~max(34844i, _wgslsmith_mod_i32(53541i, -1i)), _wgslsmith_sub_i32(~(~var_1.a.a.x), u_input.c)), var_1.a, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(abs(0u), u_input.b.x), 29u)], Struct_1(select(global4.c, var_0.a.c, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1494f * -355f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(arg_0.x, 12u)]))), select(true, true, true))), var_1.a.a));
    let var_3 = arg_0.x;
    let var_4 = !any(vec4<bool>(all(select(vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, true), global3[_wgslsmith_index_u32(44496u, 29u)], var_2.c.x)), false, any(var_2.c), any(!var_2.c.xw)));
    return func_2().a;
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: vec2<u32>) -> Struct_3 {
    var var_0 = _wgslsmith_div_vec3_u32(reverseBits(u_input.b.wyz | firstLeadingBit(u_input.b.yzx ^ u_input.b.yxz)), u_input.b.yyy);
    var var_1 = Struct_1(~vec2<i32>(max(i32(-1i) * -58026i, _wgslsmith_dot_vec3_i32(vec3<i32>(13364i, 35602i, 15767i), vec3<i32>(arg_1.a.x, arg_1.c.x, 2147483647i))), countOneBits(~(-13684i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-713f, global4.b))))) + global4.b), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(-2147483647i, arg_1.a.x, u_input.c), -1i) << (~(~u_input.b.wx) % vec2<u32>(32u)), firstTrailingBit(_wgslsmith_div_vec2_i32(min(global4.c, arg_1.c), arg_1.c))));
    let var_2 = select(!(!select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)))), select(vec3<bool>((u_input.b.x != 18965u) && (u_input.a > 0u), any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), true), vec3<bool>(!any(vec4<bool>(false, false, false, true)), true, (var_1.b != 1236f) || true), false), select(select(vec3<bool>(true, true, any(vec3<bool>(false, false, true))), !select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), true), _wgslsmith_div_i32(u_input.c, u_input.c) >= abs(15293i)), !select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), true), true), false));
    var var_3 = true;
    var var_4 = false;
    return Struct_3(vec4<i32>(global4.c.x, 2147483647i, arg_1.a.x, u_input.c), arg_1, !vec4<bool>(!var_2.x, false, true, all(vec4<bool>(var_2.x, var_2.x, var_2.x, var_2.x))), Struct_1(~(-arg_1.c & ~var_1.c), var_1.b, -var_1.a));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_1, arg_2: bool, arg_3: f32) -> i32 {
    let var_0 = vec3<bool>(arg_0.c.x, any(!arg_0.c.wx), arg_0.c.x);
    var var_1 = func_4(-49136i, func_1(~countOneBits(_wgslsmith_clamp_vec2_u32(global0[_wgslsmith_index_u32(0u, 10u)], u_input.b.xx, global0[_wgslsmith_index_u32(u_input.b.x, 10u)])), arg_0.d), abs(firstLeadingBit(abs(_wgslsmith_add_vec2_u32(vec2<u32>(u_input.b.x, u_input.a), u_input.b.yz))))).b;
    var var_2 = Struct_2(Struct_1(~func_4(-u_input.c, arg_1, vec2<u32>(u_input.a, u_input.a)).a.xz, arg_0.b.b, vec2<i32>(_wgslsmith_div_i32(~var_1.c.x, ~global4.c.x), -1i)));
    var var_3 = -1i;
    return i32(-1i) * -((abs(-1i) & func_1(vec2<u32>(u_input.b.x, 10729u), Struct_1(var_1.c, arg_0.d.b, var_1.a)).a.x) << (_wgslsmith_sub_u32(u_input.a << (1u % 32u), ~u_input.b.x) % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(func_4(global4.c.x, func_1(_wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 0u), ~u_input.b.xy, global0[_wgslsmith_index_u32(1266u, 10u)] & vec2<u32>(u_input.b.x, u_input.a)), Struct_1(global4.c, -1291f, vec2<i32>(global4.a.x, global4.c.x) ^ vec2<i32>(2147483647i, 2249i))), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), select(vec2<u32>(u_input.b.x, 70633u), vec2<u32>(0u, 4294967295u), true)), ~u_input.b.x)), func_1(min(vec2<u32>(1u, u_input.b.x ^ u_input.a), max(~global0[_wgslsmith_index_u32(16199u, 10u)], vec2<u32>(21470u, 7583u))), func_2().a), true, _wgslsmith_f_op_f32(-global4.b));
    let var_1 = func_4(_wgslsmith_dot_vec4_i32(~min(~vec4<i32>(2147483647i, global4.c.x, -42322i, global4.a.x), vec4<i32>(global4.a.x, global4.c.x, u_input.c, global4.c.x)), ~(-vec4<i32>(1042i, -1i, u_input.c, 2147483647i)) << (u_input.b % vec4<u32>(32u))), Struct_1(~global4.a, _wgslsmith_div_f32(281f, _wgslsmith_div_f32(989f, _wgslsmith_f_op_f32(f32(-1f) * -101f))), vec2<i32>(~(-2147483647i), -39690i)), _wgslsmith_mult_vec2_u32(u_input.b.yx, _wgslsmith_div_vec2_u32(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.b.x, 45764u), ~35148u, 0u), 10u)], vec2<u32>(28289u, u_input.b.x))));
    var var_2 = u_input.b;
    let var_3 = global4.b;
    var var_4 = var_1.a.yw;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.b) - _wgslsmith_div_f32(global4.b, -2667f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.b), -1560f), _wgslsmith_f_op_f32(f32(-1f) * -895f), global4.b) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(var_2.x, 12u)], global2[_wgslsmith_index_u32(var_2.x, 12u)], 1181f, 116f)))))), _wgslsmith_sub_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_2.x, countOneBits(u_input.a)), var_2.x), vec2<u32>(~(~10065u), var_2.x)), _wgslsmith_div_vec3_u32(select(vec3<u32>(u_input.b.x << (u_input.a % 32u), 1u, ~var_2.x), u_input.b.wwx, vec3<bool>(var_1.c.x, false, -1174f < var_1.b.b)), firstTrailingBit(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 167581u, 4294967295u) >> (vec3<u32>(u_input.b.x, 18756u, u_input.a) % vec3<u32>(32u)), countOneBits(var_2.yxy)))), ~_wgslsmith_mod_i32(2147483647i, -12950i));
}

