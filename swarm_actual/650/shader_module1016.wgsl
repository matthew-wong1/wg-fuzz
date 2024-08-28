struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec2<f32>,
    c: i32,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 3> = array<vec2<u32>, 3>(vec2<u32>(0u, 4294967295u), vec2<u32>(9211u, 18534u), vec2<u32>(37652u, 1u));

var<private> global1: Struct_2;

var<private> global2: array<Struct_3, 7>;

var<private> global3: array<bool, 29>;

var<private> global4: array<vec3<bool>, 29> = array<vec3<bool>, 29>(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_4, arg_1: bool) -> vec2<u32> {
    let var_0 = u_input.a;
    var var_1 = arg_0.a;
    let var_2 = true;
    var var_3 = Struct_4(Struct_2(!vec3<bool>(select(arg_0.a.a.x, false, true), false, all(var_1.a.yz)), 4294967295u), -_wgslsmith_dot_vec2_i32(~_wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, var_0), vec2<i32>(0i, var_0), vec2<i32>(41762i, 2147483647i)), select(-vec2<i32>(arg_0.b, u_input.a), firstTrailingBit(vec2<i32>(-1658i, 2147483647i)), false)), arg_0.c);
    var var_4 = arg_0;
    return select(reverseBits(~_wgslsmith_sub_vec2_u32(arg_0.c.a.zx, var_3.c.a.zz)), ~_wgslsmith_mult_vec2_u32(vec2<u32>(global1.b, var_1.b), vec2<u32>(34519u, 54826u)) | select(~var_4.c.a.zw, abs(var_4.c.a.yy), global3[_wgslsmith_index_u32(max(55249u, u_input.c), 29u)]), vec2<bool>(!(!arg_1), all(global1.a))) >> (vec2<u32>(48641u, 0u) % vec2<u32>(32u));
}

fn func_2(arg_0: vec3<bool>, arg_1: f32) -> Struct_2 {
    global0 = array<vec2<u32>, 3>();
    var var_0 = min(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(28360u, 104158u), 3u)], func_3(Struct_4(Struct_2(global4[_wgslsmith_index_u32(~global1.b, 29u)], 0u), ~(u_input.a & 2147483647i), Struct_1(vec4<u32>(global1.b, u_input.c, u_input.c, 18472u))), false));
    global2 = array<Struct_3, 7>();
    var var_1 = Struct_4(Struct_2(!select(vec3<bool>(true, true, false), global1.a, vec3<bool>(false, global1.a.x, true)), select(63677u, _wgslsmith_mod_u32(select(1u, global1.b, true), global1.b << (85281u % 32u)), true)), u_input.b, Struct_1(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(29428u, global1.b, 0u, 0u)) ^ ~vec4<u32>(global1.b, u_input.c, global1.b, 4436u), vec4<u32>(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(34879u, 5814u, 59641u), vec3<u32>(u_input.c, 8311u, u_input.c)), global1.b, _wgslsmith_mod_u32(global1.b, 1u)))));
    let var_2 = _wgslsmith_add_u32(_wgslsmith_add_u32(~(~(var_0.x >> (global1.b % 32u))), func_3(Struct_4(Struct_2(arg_0, 66422u), var_1.b, var_1.c), arg_0.x && true).x | 1u), 4294967295u);
    return Struct_2(vec3<bool>(func_3(Struct_4(Struct_2(global1.a, global1.b), -42243i, var_1.c), true).x < 0u, false, !select(var_1.a.a.x, global1.a.x, !var_1.a.a.x)), var_2);
}

fn func_4(arg_0: Struct_4) -> Struct_4 {
    let var_0 = arg_0.c.a.yyx;
    let var_1 = 468f;
    var var_2 = max(_wgslsmith_clamp_vec3_i32(select(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a, u_input.b, 0i), vec3<i32>(u_input.b, u_input.a, u_input.b))), ~abs(vec3<i32>(u_input.a, 0i, 66237i)), vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_i32(select(~vec3<i32>(33586i, u_input.b, -2147483647i), abs(vec3<i32>(-42879i, u_input.b, u_input.b)), arg_0.a.a), _wgslsmith_mod_vec3_i32(vec3<i32>(-7984i, u_input.a, u_input.b), vec3<i32>(arg_0.b, 1i, arg_0.b))), abs((vec3<i32>(1i, arg_0.b, arg_0.b) >> (var_0 % vec3<u32>(32u))) ^ _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, arg_0.b, u_input.a), vec3<i32>(-2147483647i, arg_0.b, -17514i)))), vec3<i32>(-_wgslsmith_sub_i32(abs(arg_0.b), min(-38456i, -45421i)), -29848i, arg_0.b));
    var var_3 = arg_0.a.a.x;
    var var_4 = arg_0.c;
    return Struct_4(func_2(!vec3<bool>(!global1.a.x, true, true || global3[_wgslsmith_index_u32(u_input.c, 29u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(var_1, var_1)))) - -941f)), firstLeadingBit(~(-_wgslsmith_sub_i32(40941i, -1i))), Struct_1(~(~_wgslsmith_add_vec4_u32(var_4.a, vec4<u32>(arg_0.a.b, arg_0.c.a.x, u_input.c, arg_0.a.b)))));
}

fn func_1(arg_0: Struct_1) -> Struct_4 {
    var var_0 = global1.a.x;
    let var_1 = vec2<u32>(arg_0.a.x, firstTrailingBit(u_input.c) | ~(arg_0.a.x << (~arg_0.a.x % 32u)));
    global0 = array<vec2<u32>, 3>();
    let var_2 = 1213f;
    global0 = array<vec2<u32>, 3>();
    return func_4(Struct_4(func_2(vec3<bool>(global1.a.x, global1.a.x, false), var_2), firstLeadingBit(firstTrailingBit(1i)), arg_0));
}

fn func_5(arg_0: Struct_4, arg_1: vec2<u32>, arg_2: Struct_4, arg_3: bool) -> u32 {
    global1 = func_1(Struct_1(func_4(arg_0).c.a)).a;
    global1 = func_4(Struct_4(arg_2.a, -19941i, arg_2.c)).a;
    global0 = array<vec2<u32>, 3>();
    var var_0 = arg_2.c;
    let var_1 = true;
    return _wgslsmith_dot_vec3_u32(~(~vec3<u32>(4294967295u >> (arg_2.a.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 87564u, 4294967295u), vec3<u32>(arg_1.x, global1.b, 1u)), func_3(Struct_4(arg_2.a, arg_0.b, arg_0.c), false).x)), func_1(Struct_1(vec4<u32>(arg_2.c.a.x, firstTrailingBit(u_input.c), ~4294967295u, 0u))).c.a.wwy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(!any(vec4<bool>(true, true, true, true)), ((_wgslsmith_sub_i32(u_input.a, 42976i) ^ 14395i) & (_wgslsmith_mod_i32(u_input.b, u_input.b) << (u_input.c % 32u))) != _wgslsmith_div_i32(~u_input.a, _wgslsmith_sub_i32(-1i, u_input.a)));
    var_0 = !select(global1.a.xz, select(vec2<bool>(u_input.c <= global1.b, global1.a.x), global1.a.yx, true), global3[_wgslsmith_index_u32(u_input.c, 29u)]);
    global0 = array<vec2<u32>, 3>();
    var var_1 = ~firstLeadingBit(vec4<u32>(u_input.c, firstLeadingBit(u_input.c), 1u, func_5(Struct_4(Struct_2(global1.a, 36327u), u_input.b, Struct_1(vec4<u32>(u_input.c, 1u, 96692u, global1.b))), _wgslsmith_add_vec2_u32(vec2<u32>(1u, global1.b), vec2<u32>(4294967295u, u_input.c)), func_1(Struct_1(vec4<u32>(u_input.c, global1.b, u_input.c, 0u))), true)));
    var var_2 = ~_wgslsmith_mod_i32(~0i, abs(_wgslsmith_mod_i32(_wgslsmith_add_i32(-12980i, 1i), _wgslsmith_mod_i32(-63355i, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(min(var_1.yyx, _wgslsmith_mod_vec3_u32(vec3<u32>(~var_1.x, 5531u, 4294967295u), func_4(func_4(Struct_4(Struct_2(vec3<bool>(var_0.x, global3[_wgslsmith_index_u32(u_input.c, 29u)], global1.a.x), 1u), u_input.a, Struct_1(vec4<u32>(global1.b, 978u, 18947u, var_1.x))))).c.a.yyx)));
}

