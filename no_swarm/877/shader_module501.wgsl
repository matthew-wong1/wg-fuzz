struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_2,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_2,
    c: vec3<bool>,
    d: Struct_1,
}

struct Struct_5 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<u32, 19> = array<u32, 19>(0u, 1u, 0u, 4294967295u, 31916u, 75365u, 20667u, 1u, 4294967295u, 47594u, 23394u, 0u, 89289u, 0u, 68114u, 4294967295u, 81099u, 1u, 92819u);

var<private> global2: vec2<bool>;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> f32 {
    var var_0 = u_input.a.zzz;
    var var_1 = Struct_5(Struct_1(-1509f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1041f, _wgslsmith_f_op_f32(sign(531f)))) * _wgslsmith_f_op_f32(731f * 1f)), global2.x, select(vec2<bool>(all(vec2<bool>(global2.x, true)), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.x, 19u)], 19u)] == 99168u), select(select(vec2<bool>(false, true), vec2<bool>(true, global2.x), global2.x), select(vec2<bool>(global2.x, true), vec2<bool>(true, global2.x), false), true), true), u_input.a.zz), vec3<bool>(global2.x, !all(!vec3<bool>(false, global2.x, global2.x)), any(!select(vec3<bool>(false, false, global2.x), vec3<bool>(true, global2.x, true), false))), u_input.c);
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(168f * var_1.a.a), _wgslsmith_f_op_f32(var_1.a.a - -1578f)))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -359f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.b))))) + vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.b), _wgslsmith_f_op_f32(f32(-1f) * -413f)));
    let var_3 = var_1.a.e.x;
    var var_4 = _wgslsmith_f_op_vec2_f32(select(var_2, _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(var_2)))))), select(select(var_1.b.xz, !select(var_1.a.d, var_1.b.zz, true), select(var_1.b.yz, vec2<bool>(global2.x, global2.x), any(vec2<bool>(true, global2.x)))), var_1.a.d, any(select(select(var_1.a.d, var_1.a.d, vec2<bool>(var_1.a.d.x, false)), select(var_1.a.d, vec2<bool>(true, var_1.b.x), var_1.b.x), var_1.b.x && true)))));
    return var_1.a.a;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1583f, 1553f)))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1649f, _wgslsmith_f_op_f32(ceil(582f)))))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-762f * 1077f), -1000f), _wgslsmith_f_op_f32(round(-197f))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(max(-836f, -1031f))), vec2<f32>(1f, 1f)))));
    var var_1 = countOneBits(62289i);
    var var_2 = Struct_2(Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -494f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-var_0.x)))), !(!(global1[_wgslsmith_index_u32(22437u, 19u)] == 0u)), vec2<bool>(u_input.a.x > global1[_wgslsmith_index_u32(firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], 19u)], 19u)], 19u)]), 19u)], ~u_input.c == u_input.c), u_input.d), Struct_1(-166f, -270f, all(!vec4<bool>(true, global2.x, false, global2.x)) | global2.x, vec2<bool>(!select(global2.x, global2.x, true), global2.x), u_input.d));
    global1 = array<u32, 19>();
    var_2 = Struct_2(var_2.a, var_2.b);
    return 31481u >= ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.zy << (var_2.a.e % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(var_2.a.e, vec2<u32>(1u, 61577u))), ~var_2.a.e.x);
}

fn func_4(arg_0: vec3<f32>) -> Struct_5 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_0.x + _wgslsmith_f_op_f32(1055f - -1289f)), -514f))), _wgslsmith_f_op_f32(ceil(673f)), false, vec2<bool>(true, true), ~(~u_input.d));
    global2 = select(vec2<bool>(false, any(vec3<bool>(true, var_0.d.x, var_0.c))), vec2<bool>(any(select(select(vec3<bool>(true, var_0.c, global2.x), vec3<bool>(global2.x, global2.x, global2.x), false), vec3<bool>(true, true, global2.x), select(vec3<bool>(var_0.c, false, var_0.c), vec3<bool>(true, global2.x, global2.x), vec3<bool>(var_0.c, true, true)))), func_2()), var_0.c);
    var var_1 = 9006u;
    var_1 = reverseBits(u_input.a.x);
    let var_2 = Struct_5(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -641f) * _wgslsmith_f_op_f32(219f + arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) + _wgslsmith_f_op_f32(arg_0.x - var_0.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x)))), global2.x, select(!var_0.d, vec2<bool>(u_input.c < u_input.c, true), true), u_input.a.wy), !vec3<bool>(!global2.x, false, all(vec2<bool>(true, var_0.d.x)) && (var_0.d.x == true)), u_input.c);
    return Struct_5(var_2.a, select(var_2.b, !vec3<bool>(true, !global2.x, !var_2.a.c), true), -2147483647i);
}

fn func_1(arg_0: Struct_4) -> Struct_2 {
    let var_0 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.b.a.a, _wgslsmith_f_op_f32(select(arg_0.b.a.b, 130f, global2.x)), _wgslsmith_f_op_f32(arg_0.b.b.a - -628f)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.b.b.a, 1076f, -1651f))), vec3<f32>(695f, 1529f, arg_0.d.b), vec3<bool>(arg_0.d.d.x, false, true))), vec3<bool>(func_2(), !global2.x, global2.x)))));
    var var_1 = ~arg_0.d.e.x;
    var var_2 = 1i;
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-func_4(vec3<f32>(_wgslsmith_f_op_f32(round(arg_0.b.b.a)), 105f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))).a.a), var_0.a, var_0.a.b, Struct_2(var_0.a, Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1898f), var_0.a.a, true, vec2<bool>(global2.x, arg_0.d.d.x), _wgslsmith_add_vec2_u32(var_0.a.e, vec2<u32>(u_input.d.x, u_input.d.x)))));
    let var_4 = func_4(vec3<f32>(-476f, 709f, var_3.b.a));
    return var_3.d;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_3) -> f32 {
    global1 = array<u32, 19>();
    let var_0 = min(vec2<i32>(~(~min(0i, -3591i)), abs(u_input.c)), _wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(u_input.b.yz, select(vec2<i32>(u_input.b.x, u_input.c), u_input.b.zx, false)), ~vec2<i32>(u_input.b.x, -22108i) | u_input.b.xx) | -(~(vec2<i32>(60824i, -2147483647i) >> (u_input.a.zz % vec2<u32>(32u)))));
    var var_1 = Struct_4(vec4<i32>(11369i, max(-_wgslsmith_dot_vec2_i32(u_input.b.xx, vec2<i32>(0i, -2147483647i)), var_0.x), _wgslsmith_add_i32(u_input.b.x, u_input.c) & 5610i, var_0.x), arg_2.d, !(!vec3<bool>(true, true, global2.x || global2.x)), func_1(Struct_4(_wgslsmith_add_vec4_i32(-vec4<i32>(var_0.x, -5992i, 2147483647i, u_input.c), firstTrailingBit(vec4<i32>(1i, 2147483647i, var_0.x, var_0.x))), func_1(Struct_4(vec4<i32>(u_input.b.x, -2147483647i, var_0.x, 0i), Struct_2(arg_2.b, Struct_1(arg_2.b.a, 394f, arg_0.a.c, arg_0.a.d, arg_0.a.e)), vec3<bool>(arg_2.d.a.c, false, false), Struct_1(arg_2.d.b.a, -684f, arg_0.a.d.x, vec2<bool>(global2.x, global2.x), u_input.a.xw))), vec3<bool>(any(arg_2.d.b.d), !arg_2.b.d.x, true), func_4(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(401f, 1064f, 577f)))).a)).b);
    let var_2 = select(vec4<bool>(!var_1.b.a.c || all(vec4<bool>(arg_2.d.a.c, true, false, false)), arg_2.d.b.c, !(!(arg_0.b.e.x < 6008u)), arg_0.b.e.x != 81232u), select(vec4<bool>(true, global2.x, !arg_2.b.d.x, any(!vec4<bool>(arg_2.b.c, true, false, global2.x))), vec4<bool>(!(var_1.b.a.d.x || arg_0.b.c), false, true, false), arg_2.d.a.d.x), var_1.d.c);
    global0 = _wgslsmith_mult_i32(_wgslsmith_add_i32(-4310i, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.b.zz, vec2<i32>(-2147483647i, var_0.x)), _wgslsmith_div_vec2_i32(~var_0, vec2<i32>(var_0.x, 36803i)))), max(1i, 6021i));
    return -180f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -430f))), -1093f, false, vec2<bool>(!all(vec2<bool>(false, global2.x)), global2.x), vec2<u32>(u_input.a.x, _wgslsmith_div_u32(9845u, u_input.d.x))), Struct_1(_wgslsmith_f_op_f32(ceil(-494f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(192f * 103f) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1038f)), _wgslsmith_f_op_f32(f32(-1f) * -661f)))), true && select(global2.x, false, !global2.x), vec2<bool>(global2.x, !(!global2.x)), vec2<u32>(_wgslsmith_add_u32(~4294967295u, _wgslsmith_div_u32(4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.d.x, 19u)], 19u)])), 18790u)));
    var var_1 = Struct_4(select(-vec4<i32>(-14513i, min(-1i, -49287i), -1i, -u_input.b.x), ((vec4<i32>(0i, 7531i, 36231i, u_input.c) ^ vec4<i32>(u_input.c, u_input.b.x, u_input.c, u_input.c)) >> (u_input.a % vec4<u32>(32u))) | ~(~vec4<i32>(u_input.b.x, 2147483647i, u_input.c, -58593i)), true), var_0, !(!vec3<bool>(false, var_0.a.c, var_0.a.c)), Struct_1(_wgslsmith_f_op_f32(func_5(func_1(Struct_4(vec4<i32>(41284i, u_input.b.x, u_input.b.x, u_input.b.x), Struct_2(var_0.b, Struct_1(var_0.b.a, 840f, global2.x, vec2<bool>(global2.x, true), vec2<u32>(18000u, 1u))), vec3<bool>(true, true, false), Struct_1(var_0.b.a, var_0.b.a, false, var_0.a.d, vec2<u32>(4294967295u, 60119u)))), ~abs(65572u), Struct_3(1f, func_1(Struct_4(vec4<i32>(u_input.c, u_input.c, 2939i, -1i), var_0, vec3<bool>(false, global2.x, false), Struct_1(var_0.a.a, -1000f, var_0.a.c, vec2<bool>(true, var_0.a.d.x), u_input.a.zy))).a, _wgslsmith_f_op_f32(f32(-1f) * -620f), var_0))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_0.b.b) - _wgslsmith_f_op_f32(-373f - -713f)), !var_0.b.c, vec2<bool>(false, true), vec2<u32>((var_0.b.e.x | global1[_wgslsmith_index_u32(u_input.d.x, 19u)]) | 87000u, abs(0u))));
    var var_2 = vec2<u32>(113891u, 7370u);
    var_1 = Struct_4(vec4<i32>(abs(6963i), firstTrailingBit(u_input.b.x) >> (~(~var_2.x) % 32u), ~var_1.a.x, _wgslsmith_clamp_i32(~_wgslsmith_add_i32(15037i, u_input.b.x), -6876i, -1i)), var_0, func_4(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1.d.a, -1815f, 1555f)))).b, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(620f - -813f) - _wgslsmith_f_op_f32(-586f * 924f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_1.d.b * -1158f))), -723f), !var_0.b.c, vec2<bool>(false, false), u_input.d | vec2<u32>(firstLeadingBit(global1[_wgslsmith_index_u32(4294967295u, 19u)]), 0u)));
    let var_3 = _wgslsmith_add_vec4_i32(var_1.a, var_1.a);
    var_2 = firstLeadingBit(select(u_input.a.yx, vec2<u32>(~countOneBits(23134u), ~(~4294967295u)), func_4(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.a.a, 1140f, 662f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(2239f, var_0.a.a, 492f))))).b.yy));
    global2 = func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.b, -1592f, _wgslsmith_f_op_f32(-450f + 1561f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.b.a, -241f, -402f)))))))).a.d;
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(vec4<u32>(~firstLeadingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(73043u, 19u)], 19u)]), countOneBits(~0u), 34518u, ~1u)));
}

