struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
    e: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 12> = array<Struct_4, 12>(Struct_4(vec2<bool>(false, false), vec3<u32>(1u, 4294967295u, 19187u)), Struct_4(vec2<bool>(false, false), vec3<u32>(16271u, 28480u, 0u)), Struct_4(vec2<bool>(true, true), vec3<u32>(61458u, 11126u, 5235u)), Struct_4(vec2<bool>(true, true), vec3<u32>(58371u, 4294967295u, 0u)), Struct_4(vec2<bool>(false, true), vec3<u32>(0u, 7002u, 1923u)), Struct_4(vec2<bool>(false, false), vec3<u32>(50226u, 1u, 1u)), Struct_4(vec2<bool>(true, false), vec3<u32>(1u, 27351u, 22941u)), Struct_4(vec2<bool>(false, false), vec3<u32>(11597u, 28428u, 74208u)), Struct_4(vec2<bool>(true, true), vec3<u32>(68524u, 18359u, 121427u)), Struct_4(vec2<bool>(true, false), vec3<u32>(4294967295u, 4294967295u, 23292u)), Struct_4(vec2<bool>(false, false), vec3<u32>(6456u, 1u, 4294967295u)), Struct_4(vec2<bool>(false, true), vec3<u32>(4294967295u, 0u, 60534u)));

var<private> global1: array<Struct_2, 13>;

var<private> global2: array<bool, 32>;

var<private> global3: Struct_1;

var<private> global4: vec3<bool> = vec3<bool>(false, false, false);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: u32) -> u32 {
    var var_0 = Struct_3(global1[_wgslsmith_index_u32(u_input.b, 13u)], arg_2, any(!vec4<bool>(global2[_wgslsmith_index_u32(arg_0.b.x, 32u)], false, false, false)) != !any(vec3<bool>(global2[_wgslsmith_index_u32(42619u, 32u)], false, false)), !vec2<bool>(global4.x, arg_0.a.x | all(vec4<bool>(arg_0.a.x, global4.x, false, global2[_wgslsmith_index_u32(arg_3, 32u)]))), Struct_2(global2[_wgslsmith_index_u32(arg_0.b.x << (_wgslsmith_add_u32(arg_3 ^ 34680u, 1u) % 32u), 32u)]));
    var var_1 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-295f - 1136f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1208f))), false)) > _wgslsmith_f_op_f32(-1001f - _wgslsmith_f_op_f32(370f * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1623f)))));
    let var_2 = !global4.zy;
    let var_3 = Struct_1(vec3<u32>(_wgslsmith_clamp_u32(~_wgslsmith_mult_u32(1u, 4294967295u), ~var_0.b.b, ~(9723u >> (global3.b % 32u))), ~38238u, arg_2.a.x), ~19817u, arg_0.b.yy);
    var var_4 = _wgslsmith_mult_u32(global3.b, ~1u);
    return 1u;
}

fn func_2() -> Struct_2 {
    let var_0 = !(false & global2[_wgslsmith_index_u32(~(~0u), 32u)]) & global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(func_3(global0[_wgslsmith_index_u32(442u, 12u)], vec4<i32>(u_input.a.x | 0i, -2147483647i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(40182i, u_input.a.x, -15553i, 34491i)), min(u_input.a.x, -4848i)), Struct_1(global3.a, global3.b, global3.c ^ global3.c), max(1u, u_input.b)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global3.a.x, u_input.b), vec3<u32>(18285u, 0u, global3.c.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 1u, 0u, global3.c.x), vec4<u32>(0u, global3.b, global3.a.x, 4294967295u)), _wgslsmith_div_u32(global3.c.x, 9075u), 49238u), min(vec4<u32>(u_input.b, 1u, 4294967295u, global3.a.x), vec4<u32>(1u, 0u, global3.a.x, u_input.b) ^ vec4<u32>(global3.b, 56335u, global3.c.x, u_input.b)))), 32u)];
    global2 = array<bool, 32>();
    let var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(165f)))), -1165f);
    var var_2 = any(!vec3<bool>(true, var_0, select(false, all(vec3<bool>(var_0, global4.x, true)), true)));
    global0 = array<Struct_4, 12>();
    return global1[_wgslsmith_index_u32(u_input.b, 13u)];
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_2) -> Struct_3 {
    let var_0 = countOneBits(firstLeadingBit(~((global3.a & vec3<u32>(1u, 1u, global3.b)) ^ (global3.a ^ arg_2.b.a))));
    var var_1 = arg_3;
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1351f)), _wgslsmith_f_op_f32(step(338f, -2642f))))) + -1590f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -125f), -169f)));
    var var_3 = 1656f;
    var var_4 = func_2();
    return arg_2;
}

fn func_1(arg_0: Struct_3, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = global0[_wgslsmith_index_u32(4020u, 12u)];
    global1 = array<Struct_2, 13>();
    let var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-292f * _wgslsmith_f_op_f32(-2177f + -1365f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1345f)) - _wgslsmith_f_op_f32(f32(-1f) * -1475f))))));
    global3 = arg_0.b;
    var var_2 = func_4(func_2(), Struct_3(Struct_2(all(!global4.zz)), arg_0.b, u_input.a.x >= _wgslsmith_sub_i32(u_input.a.x, u_input.a.x), !select(!vec2<bool>(false, global2[_wgslsmith_index_u32(24014u, 32u)]), vec2<bool>(true, true), !var_0.a.x), Struct_2(all(select(vec3<bool>(var_0.a.x, true, var_0.a.x), vec3<bool>(global4.x, arg_0.c, false), global4.x)))), arg_0, Struct_2(!any(select(vec2<bool>(global2[_wgslsmith_index_u32(global3.a.x, 32u)], arg_0.c), vec2<bool>(global2[_wgslsmith_index_u32(22584u, 32u)], true), arg_0.d))));
    return func_4(func_4(func_4(func_2(), arg_0, arg_0, arg_0.a).a, Struct_3(func_4(func_2(), func_4(global1[_wgslsmith_index_u32(var_0.b.x, 13u)], Struct_3(arg_0.a, Struct_1(var_0.b, var_2.b.c.x, arg_1.zx), global2[_wgslsmith_index_u32(arg_1.x, 32u)], arg_0.d, var_2.e), arg_0, global1[_wgslsmith_index_u32(53232u, 13u)]), Struct_3(var_2.a, arg_0.b, true, var_2.d, arg_0.a), var_2.a).e, var_2.b, false, vec2<bool>(true, true), Struct_2(!arg_0.e.a)), func_4(Struct_2(false | arg_0.e.a), Struct_3(arg_0.a, Struct_1(global3.a, arg_1.x, arg_1.zz), all(vec3<bool>(true, true, false)), vec2<bool>(true, false), arg_0.e), func_4(arg_0.e, func_4(arg_0.a, Struct_3(global1[_wgslsmith_index_u32(49216u, 13u)], Struct_1(arg_1, 19407u, vec2<u32>(1u, 48264u)), false, arg_0.d, global1[_wgslsmith_index_u32(1u, 13u)]), arg_0, global1[_wgslsmith_index_u32(1u, 13u)]), Struct_3(Struct_2(arg_0.e.a), arg_0.b, false, vec2<bool>(true, global4.x), arg_0.e), func_4(Struct_2(var_2.c), Struct_3(Struct_2(true), var_2.b, var_0.a.x, var_0.a, var_2.a), Struct_3(global1[_wgslsmith_index_u32(0u, 13u)], Struct_1(vec3<u32>(arg_0.b.b, 36321u, var_2.b.c.x), var_0.b.x, vec2<u32>(29521u, 0u)), true, vec2<bool>(false, true), arg_0.e), arg_0.a).a), arg_0.a), func_4(arg_0.e, arg_0, arg_0, var_2.a).a).a, Struct_3(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_2.b.c.x << (var_2.b.c.x % 32u), var_0.b.x & 61489u), var_0.b.xx), 13u)], Struct_1(min(~vec3<u32>(var_2.b.b, global3.a.x, 6496u), firstLeadingBit(vec3<u32>(global3.b, arg_1.x, var_0.b.x))), _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, arg_1.x, arg_0.b.b, arg_0.b.a.x), vec4<u32>(15445u, global3.c.x, arg_1.x, global3.a.x)), firstTrailingBit(vec4<u32>(0u, 49554u, var_2.b.a.x, global3.c.x))), ~var_2.b.a.zy), var_0.a.x, vec2<bool>(var_0.a.x, true), Struct_2(_wgslsmith_f_op_f32(-var_1) == var_1)), Struct_3(Struct_2(any(select(vec3<bool>(false, global4.x, global2[_wgslsmith_index_u32(var_0.b.x, 32u)]), vec3<bool>(arg_0.c, true, var_0.a.x), global4.x))), arg_0.b, arg_0.e.a, global4.xx, arg_0.e), func_4(Struct_2(!any(var_0.a)), arg_0, func_4(arg_0.a, arg_0, func_4(Struct_2(var_2.c), arg_0, arg_0, var_2.a), Struct_2(arg_0.d.x)), Struct_2(-527f < _wgslsmith_f_op_f32(-var_1))).a).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.b, 1u), 32u)];
    var var_1 = func_1(Struct_3(global1[_wgslsmith_index_u32(~(~global3.c.x), 13u)], Struct_1(vec3<u32>(_wgslsmith_clamp_u32(5423u, 1u, global3.b), select(global3.a.x, 80931u, false), ~global3.b), u_input.b, vec2<u32>(u_input.b & 5013u, u_input.b | 42164u)), global4.x, select(select(vec2<bool>(global2[_wgslsmith_index_u32(global3.a.x, 32u)], true), vec2<bool>(false, true), true != global4.x), !vec2<bool>(global2[_wgslsmith_index_u32(13880u, 32u)], global4.x), vec2<bool>(true, true | global2[_wgslsmith_index_u32(u_input.b, 32u)])), Struct_2(true)), ~(~abs(vec3<u32>(u_input.b, 27557u, u_input.b) & global3.a)));
    var var_2 = global0[_wgslsmith_index_u32(global3.c.x, 12u)];
    global2 = array<bool, 32>();
    global4 = !(!(!vec3<bool>(-9592i < u_input.a.x, true, false)));
    var_1 = Struct_2((_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.a.x), u_input.a.yx), 3366i) == ~(~2147483647i)) == any(select(!vec3<bool>(var_1.a, global2[_wgslsmith_index_u32(9220u, 32u)], true), vec3<bool>(global2[_wgslsmith_index_u32(77706u, 32u)], var_1.a, true), !vec3<bool>(var_2.a.x, var_2.a.x, global2[_wgslsmith_index_u32(15622u, 32u)]))));
    let var_3 = _wgslsmith_sub_vec3_i32(u_input.a, _wgslsmith_add_vec3_i32((vec3<i32>(u_input.a.x, 32519i, -1i) >> (countOneBits(vec3<u32>(u_input.b, 94056u, 75154u)) % vec3<u32>(32u))) << (~(~var_2.b) % vec3<u32>(32u)), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(min(_wgslsmith_mod_i32(var_3.x, 21038i << (global3.a.x % 32u)) << (countOneBits(_wgslsmith_mult_u32(0u, 1u)) % 32u), 1i), _wgslsmith_div_u32(firstLeadingBit(var_2.b.x), _wgslsmith_mult_u32(global3.b, ~abs(4294967295u))), reverseBits(vec3<u32>(global3.a.x, u_input.b, ~(u_input.b >> (var_2.b.x % 32u)))));
}

