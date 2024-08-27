struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: i32,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec3<u32>,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 24> = array<bool, 24>(true, true, false, false, false, false, true, true, false, true, false, false, false, false, true, false, true, false, false, false, true, true, true, true);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: u32) -> vec2<bool> {
    return arg_0.a.a.zz;
}

fn func_3() -> vec3<u32> {
    let var_0 = Struct_4(Struct_2(Struct_1(select(select(vec3<bool>(true, false, true), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], true)), select(vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], global0[_wgslsmith_index_u32(97322u, 24u)], false), vec3<bool>(global0[_wgslsmith_index_u32(77847u, 24u)], true, true), false), select(vec3<bool>(false, global0[_wgslsmith_index_u32(59359u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(77835u, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)], global0[_wgslsmith_index_u32(u_input.b, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(5814u, 24u)], false, global0[_wgslsmith_index_u32(u_input.b, 24u)]))), _wgslsmith_f_op_f32(abs(2357f)) < _wgslsmith_f_op_f32(ceil(435f)), _wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.a, 20259i), ~(-1i)), _wgslsmith_mod_u32(u_input.b, u_input.b)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1869f, 114f, 875f), vec3<f32>(1000f, 600f, 805f)))) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(570f, -870f, 372f)))), countOneBits(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b) | vec3<u32>(17628u, u_input.b, u_input.b), vec3<u32>(94574u, u_input.b, 57335u))), u_input.b, Struct_1(!(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], true, global0[_wgslsmith_index_u32(8678u, 24u)])), true, -61139i, 0u)));
    var var_1 = Struct_2(Struct_1(select(!vec3<bool>(true, true, global0[_wgslsmith_index_u32(36922u, 24u)]), vec3<bool>(true, true, false), select(select(vec3<bool>(false, var_0.a.a.a.x, var_0.a.a.b), vec3<bool>(true, global0[_wgslsmith_index_u32(var_0.a.a.d, 24u)], false), var_0.a.e.a), !vec3<bool>(global0[_wgslsmith_index_u32(4294967295u, 24u)], false, global0[_wgslsmith_index_u32(32269u, 24u)]), vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], true, true))), true, var_0.a.e.c, u_input.b), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(var_0.a.b)) - var_0.a.b), vec3<u32>(~4294967295u, 35004u, select(~reverseBits(var_0.a.d), 27333u, global0[_wgslsmith_index_u32(~0u, 24u)])), u_input.b, Struct_1(!vec3<bool>(var_0.a.b.x < 1846f, var_0.a.a.b | var_0.a.e.b, false), false, var_0.a.a.c, abs(~(~var_0.a.a.d))));
    var var_2 = var_0.a.e;
    var var_3 = Struct_1(var_1.a.a, _wgslsmith_mod_u32(0u, _wgslsmith_clamp_u32(u_input.b, ~1u, min(u_input.b, var_1.e.d))) <= (var_1.c.x >> (0u % 32u)), 6688i, 20612u);
    let var_4 = _wgslsmith_clamp_vec2_i32(select(u_input.d.yz, abs(-abs(vec2<i32>(-1i, 63735i))), false), u_input.d.yz, firstLeadingBit(u_input.d.xx));
    return ~_wgslsmith_div_vec3_u32(vec3<u32>(91017u, u_input.b, var_3.d | 0u), ~(vec3<u32>(u_input.b, var_3.d, 61218u) & var_0.a.c)) ^ abs(_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(var_0.a.c, vec3<u32>(13290u, 1u, 0u) | vec3<u32>(var_3.d, u_input.b, var_2.d)), firstLeadingBit(vec3<u32>(var_2.d, var_3.d, var_3.d)) & var_0.a.c, var_0.a.c));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: vec3<i32>) -> Struct_4 {
    let var_0 = Struct_1(vec3<bool>(arg_1.x, func_1(Struct_3(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(43524u, 24u)], true, false), arg_1.x, 0i, 21396u)), Struct_4(Struct_2(Struct_1(vec3<bool>(true, true, arg_0), false, -30725i, 1u), vec3<f32>(-163f, 942f, 1813f), vec3<u32>(0u, u_input.b, 0u), 58340u, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], true, global0[_wgslsmith_index_u32(16723u, 24u)]), arg_1.x, 0i, u_input.b))), u_input.b).x & true, all(vec3<bool>(true, true, func_1(Struct_3(Struct_1(vec3<bool>(arg_1.x, arg_1.x, global0[_wgslsmith_index_u32(0u, 24u)]), false, arg_2.x, 0u)), Struct_4(Struct_2(Struct_1(vec3<bool>(arg_1.x, false, global0[_wgslsmith_index_u32(u_input.b, 24u)]), false, arg_2.x, 17603u), vec3<f32>(-1359f, 1531f, 493f), vec3<u32>(u_input.b, 1u, u_input.b), 15138u, Struct_1(vec3<bool>(false, true, arg_1.x), true, arg_2.x, u_input.b))), 25803u).x))), arg_1.x & !(false | (u_input.b > u_input.b)), arg_2.x, countOneBits(u_input.b));
    var var_1 = Struct_4(Struct_2(var_0, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(505f, -650f, 252f))))))), func_3(), var_0.d, var_0));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1541f, _wgslsmith_f_op_f32(-var_1.a.b.x))) * -1004f);
    var_1 = Struct_4(var_1.a);
    var var_3 = var_1.a.a;
    return Struct_4(Struct_2(Struct_1(vec3<bool>(func_1(Struct_3(var_1.a.e), Struct_4(Struct_2(var_0, vec3<f32>(-1165f, var_2, -2080f), var_1.a.c, var_3.d, var_0)), var_1.a.d).x, false, true), !all(var_0.a), select(max(var_1.a.e.c, arg_2.x), var_0.c << (var_1.a.a.d % 32u), false), ~(0u ^ var_1.a.c.x)), var_1.a.b, vec3<u32>(firstTrailingBit(42559u) >> (1u % 32u), 7559u, ~u_input.b & var_3.d), firstTrailingBit(~(~var_3.d)), Struct_1(!(!vec3<bool>(var_3.b, true, global0[_wgslsmith_index_u32(var_0.d, 24u)])), arg_1.x, ~(~u_input.d.x), 25002u)));
}

fn func_4(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_4) -> u32 {
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    global0 = array<bool, 24>();
    var var_0 = _wgslsmith_mod_i32(-1i, arg_2.a.a.c) << (firstLeadingBit(62339u) % 32u);
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(max(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -1090f))));
    let var_1 = func_4(firstTrailingBit(1u), !(!func_1(Struct_3(Struct_1(vec3<bool>(false, true, true), true, -14895i, 0u)), Struct_4(Struct_2(Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(88742u, 24u)], false, global0[_wgslsmith_index_u32(0u, 24u)]), global0[_wgslsmith_index_u32(u_input.b, 24u)], u_input.d.x, u_input.b), vec3<f32>(-2211f, var_0, -135f), vec3<u32>(u_input.b, 1u, 30469u), u_input.b, Struct_1(vec3<bool>(global0[_wgslsmith_index_u32(0u, 24u)], false, global0[_wgslsmith_index_u32(u_input.b, 24u)]), global0[_wgslsmith_index_u32(107805u, 24u)], 1i, 1u))), 26668u)), func_2(any(vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(false, global0[_wgslsmith_index_u32(u_input.b, 24u)], true, false)), true), _wgslsmith_mult_vec3_i32(firstTrailingBit(u_input.d.wzw), vec3<i32>(21089i, 25504i, u_input.a)))) >> (_wgslsmith_mult_u32(0u, ~1u) % 32u);
    var var_2 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(~1u, u_input.b), 24u)];
    var var_3 = Struct_4(func_2(global0[_wgslsmith_index_u32(reverseBits(_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(var_1, u_input.b, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(38847u, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, 1u)))), 24u)], func_2(func_2(!global0[_wgslsmith_index_u32(var_1, 24u)], func_2(global0[_wgslsmith_index_u32(u_input.b, 24u)], vec2<bool>(global0[_wgslsmith_index_u32(u_input.b, 24u)], false), u_input.d.yzy).a.a.a.xz, ~u_input.d.www).a.e.b, vec2<bool>(all(vec4<bool>(global0[_wgslsmith_index_u32(var_1, 24u)], true, global0[_wgslsmith_index_u32(13465u, 24u)], global0[_wgslsmith_index_u32(1u, 24u)])), global0[_wgslsmith_index_u32(74767u, 24u)] && global0[_wgslsmith_index_u32(5355u, 24u)]), vec3<i32>(-2147483647i, -2147483647i << (var_1 % 32u), _wgslsmith_sub_i32(u_input.d.x, 2164i))).a.a.a.yx, u_input.d.yzz).a);
    let x = u_input.a;
    s_output = StorageBuffer(select(func_2(var_3.a.a.b, vec2<bool>(true, true), -_wgslsmith_add_vec3_i32(vec3<i32>(var_3.a.e.c, 1i, var_3.a.e.c), u_input.d.yxx)).a.a.c, -(var_3.a.a.c & _wgslsmith_dot_vec3_i32(u_input.d.zzz, u_input.d.xxw)), !var_3.a.a.a.x));
}

