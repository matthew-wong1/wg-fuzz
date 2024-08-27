struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: bool,
    c: u32,
    d: vec2<f32>,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: vec2<u32>;

var<private> global2: i32;

var<private> global3: array<i32, 31> = array<i32, 31>(-1i, -1i, 23892i, 11811i, 2147483647i, -19785i, i32(-2147483648), -34621i, -3514i, 0i, 35123i, 18429i, 0i, -1i, -35878i, i32(-2147483648), -2887i, -7201i, 1i, 18958i, -1i, 54245i, 5282i, -12537i, 2147483647i, -6482i, -1i, i32(-2147483648), -6500i, 2147483647i, i32(-2147483648));

var<private> global4: Struct_3 = Struct_3(vec3<f32>(-1394f, 576f, 735f), -1i, Struct_1(90476u, vec3<f32>(1000f, -423f, 926f), vec2<u32>(78275u, 51469u)));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: i32, arg_1: f32) -> f32 {
    var var_0 = global0[_wgslsmith_index_u32(~(~1u), 32u)];
    let var_1 = 43932u;
    let var_2 = global4.c;
    var var_3 = Struct_3(var_0.a.wwz, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(~abs(vec4<u32>(1u, u_input.d, 0u, global4.c.a))), (select(vec4<u32>(0u, 38531u, var_2.c.x, global4.c.c.x), vec4<u32>(1u, u_input.d, 1u, var_0.c), false) | vec4<u32>(77857u, var_2.a, global1.x, 40985u)) << ((select(vec4<u32>(var_2.a, 3035u, var_0.c, u_input.a.x), vec4<u32>(1u, 42759u, 1u, 28846u), var_0.b) | vec4<u32>(4294967295u, u_input.d, 1u, var_1)) % vec4<u32>(32u))), 31u)], Struct_1(~17046u, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_2.b.x + -1099f))), _wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1443f))), _wgslsmith_mult_vec2_u32(~vec2<u32>(0u, var_0.c), _wgslsmith_mult_vec2_u32(u_input.a, u_input.a)) | vec2<u32>(4294967295u, 0u)));
    global3 = array<i32, 31>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, -182f, !var_0.b))), _wgslsmith_f_op_f32(select(1000f, _wgslsmith_f_op_f32(-684f * _wgslsmith_f_op_f32(-var_2.b.x)), !(!var_0.b))))));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_3) -> Struct_3 {
    global0 = array<Struct_2, 32>();
    let var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(global1.x << (global1.x % 32u), ~(arg_0.a ^ 21598u), ~global1.x, _wgslsmith_div_u32(~arg_0.c.x, 10092u)), _wgslsmith_add_vec4_u32(~(vec4<u32>(u_input.a.x, 64136u, 70002u, global1.x) >> (vec4<u32>(u_input.d, arg_1.c.c.x, arg_1.c.a, 0u) % vec4<u32>(32u))), vec4<u32>(global1.x, 0u, reverseBits(global4.c.c.x), _wgslsmith_mult_u32(arg_0.a, arg_0.a))));
    global2 = 2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.c.b.x, _wgslsmith_f_op_f32(sign(-411f))))));
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(577i, 830f)))))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-global4.c.b), -50317i, Struct_1(global1.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-989f, 2307f, 148f))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2, var_2, 390f))) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(arg_1.c.b, vec3<f32>(-168f, arg_0.b.x, 1145f)), _wgslsmith_f_op_vec3_f32(-arg_1.c.b)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(arg_0.a, 77848u), arg_1.c.c >> (u_input.a % vec2<u32>(32u)))));
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: bool) -> bool {
    global0 = array<Struct_2, 32>();
    var var_0 = func_2(func_2(arg_1.c, func_2(func_2(func_2(arg_1.c, Struct_3(global4.a, -2147483647i, arg_1.c)).c, Struct_3(vec3<f32>(1560f, arg_1.c.b.x, -695f), global4.b, Struct_1(1u, vec3<f32>(251f, arg_0.x, arg_1.c.b.x), vec2<u32>(1u, arg_1.c.a)))).c, Struct_3(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-340f, -632f, 1581f))), ~2147483647i, arg_1.c))).c, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-246f, global4.c.b.x)) * arg_1.c.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1111f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(704f, arg_0.x) - _wgslsmith_f_op_f32(global4.a.x * global4.a.x))), firstTrailingBit(global4.b), arg_1.c));
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -301f), _wgslsmith_f_op_f32(abs(-232f))) * global4.a.x), -1648f, _wgslsmith_f_op_f32(arg_1.a.x + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_1.a.x - _wgslsmith_f_op_f32(arg_0.x + 947f)), -589f, false))), _wgslsmith_f_op_f32(-global4.a.x));
    global0 = array<Struct_2, 32>();
    global4 = func_2(Struct_1(4294967295u, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(668f, -1375f, var_0.a.x))), vec3<f32>(arg_1.a.x, var_0.a.x, 1f)), select(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.c.x, 81076u), vec2<u32>(global4.c.c.x, 1u) | vec2<u32>(42655u, global4.c.c.x)), ~arg_1.c.c, vec2<bool>(arg_2 && true, true))), arg_1);
    return all(vec2<bool>(arg_2, any(!vec3<bool>(false, arg_2, arg_2))));
}

fn func_1(arg_0: i32, arg_1: vec4<bool>, arg_2: vec3<i32>) -> u32 {
    var var_0 = ~arg_0;
    var var_1 = !select(vec3<bool>(func_4(vec2<f32>(global4.a.x, global4.c.b.x), func_2(global4.c, Struct_3(vec3<f32>(-1391f, -1097f, global4.a.x), -31317i, global4.c)), true), !(1i != global4.b), !(global4.c.a > u_input.d)), !vec3<bool>(arg_1.x, arg_1.x, !arg_1.x), arg_1.yxz);
    global3 = array<i32, 31>();
    var var_2 = -(_wgslsmith_dot_vec2_i32(firstTrailingBit(max(arg_2.yz, vec2<i32>(-2147483647i, u_input.c))), _wgslsmith_mod_vec2_i32(firstTrailingBit(arg_2.yy), abs(vec2<i32>(global3[_wgslsmith_index_u32(0u, 31u)], -2147483647i)))) ^ abs(1i));
    var var_3 = select(min(vec3<u32>(u_input.a.x, 0u, 0u) & (vec3<u32>(global4.c.a, 55878u, 3520u) << (vec3<u32>(global4.c.c.x, u_input.d, u_input.a.x) % vec3<u32>(32u))), vec3<u32>(global1.x, _wgslsmith_dot_vec2_u32(global4.c.c, vec2<u32>(global1.x, 4298u)), 1u)), _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(0u, 61993u, 27932u), vec3<u32>(u_input.d, 0u, global1.x)) << (firstTrailingBit(vec3<u32>(0u, 38280u, global4.c.c.x)) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_clamp_u32(global1.x, 22368u, u_input.a.x), 4294967295u, _wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(13917u, 4294967295u)))), arg_1.xxz) | ~(_wgslsmith_div_vec3_u32(vec3<u32>(1u, 1u, 84711u), _wgslsmith_mult_vec3_u32(vec3<u32>(global1.x, 4294967295u, global4.c.c.x), vec3<u32>(15202u, global4.c.a, global4.c.c.x))) >> (_wgslsmith_clamp_vec3_u32(~vec3<u32>(global1.x, global1.x, u_input.d), firstTrailingBit(vec3<u32>(global1.x, u_input.a.x, global1.x)), abs(vec3<u32>(4294967295u, 0u, global4.c.a))) % vec3<u32>(32u)));
    return 78680u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~4294967295u;
    let var_1 = _wgslsmith_clamp_i32(u_input.b, -_wgslsmith_mult_i32(_wgslsmith_clamp_i32(-1i, global3[_wgslsmith_index_u32(global4.c.a, 31u)] | 34390i, global4.b << (global4.c.a % 32u)), _wgslsmith_add_i32(_wgslsmith_clamp_i32(2147483647i, 9542i, global4.b), -global4.b)), u_input.b);
    global0 = array<Struct_2, 32>();
    let var_2 = abs(func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(global3[_wgslsmith_index_u32(1u, 31u)], global3[_wgslsmith_index_u32(u_input.a.x, 31u)]), vec2<i32>(global3[_wgslsmith_index_u32(global4.c.c.x, 31u)], -5468i)) | _wgslsmith_div_i32(var_1, 38137i), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec3<i32>(1i, global4.b, _wgslsmith_div_i32(5844i, var_1)))) | (~global4.c.c.x >> (u_input.d % 32u));
    global3 = array<i32, 31>();
    global2 = global4.b;
    let var_3 = 0i;
    var var_4 = select(vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(45434u, global4.c.c.x), 1u) & u_input.a.x, 4294967295u, ~abs(var_2)), max(~_wgslsmith_div_vec3_u32(vec3<u32>(global1.x, u_input.d, 4294967295u), ~vec3<u32>(global4.c.a, global4.c.c.x, global1.x)), ~vec3<u32>(~u_input.d, _wgslsmith_mod_u32(4294967295u, global1.x), ~var_2)), true);
    var var_5 = max(abs(~(firstTrailingBit(vec2<u32>(var_4.x, global4.c.c.x)) >> (~vec2<u32>(24712u, global4.c.a) % vec2<u32>(32u)))), func_2(Struct_1(_wgslsmith_dot_vec4_u32(~vec4<u32>(var_4.x, 7649u, var_2, 28061u), reverseBits(vec4<u32>(global4.c.a, 1u, var_4.x, global4.c.a))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global4.a, vec3<f32>(global4.a.x, global4.a.x, global4.c.b.x))) + vec3<f32>(-1276f, global4.c.b.x, global4.a.x)), global4.c.c), Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.a.x, -1075f, global4.c.b.x)), u_input.b, func_2(func_2(global4.c, Struct_3(vec3<f32>(579f, global4.c.b.x, 507f), -2147483647i, Struct_1(global4.c.c.x, vec3<f32>(-1486f, -1558f, global4.c.b.x), global4.c.c))).c, Struct_3(global4.a, var_3, Struct_1(56778u, vec3<f32>(-1241f, global4.c.b.x, 626f), u_input.a))).c)).c.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -579f), global4.a.x)))), _wgslsmith_f_op_f32(max(global4.c.b.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global4.c.b.x))))), ~0u, ~vec4<i32>(-_wgslsmith_mod_i32(u_input.b, global3[_wgslsmith_index_u32(global4.c.c.x, 31u)]), 29668i, ~(-10984i), _wgslsmith_sub_i32(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(global1.x, 12717u), 31u)], global3[_wgslsmith_index_u32(1u, 31u)])));
}

