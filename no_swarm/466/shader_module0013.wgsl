struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_4 = Struct_4(vec4<f32>(709f, -754f, 127f, -231f), 388f, 1700f);

var<private> global2: array<vec3<f32>, 2> = array<vec3<f32>, 2>(vec3<f32>(-685f, -499f, 1488f), vec3<f32>(-355f, -1176f, 1312f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_4, arg_1: u32, arg_2: Struct_4) -> vec4<f32> {
    var var_0 = Struct_2(Struct_1(u_input.c <= u_input.a), Struct_1(true));
    var var_1 = -1216f;
    var var_2 = ~firstLeadingBit(~reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_1), vec2<u32>(1u, arg_1))));
    let var_3 = Struct_2(var_0.a, global0.a);
    var var_4 = Struct_2(Struct_1(var_3.b.a), Struct_1(true));
    return vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -325f)) * -837f))), -3256f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.b * 1332f)))), 455f)), arg_0.c);
}

fn func_2(arg_0: f32) -> Struct_1 {
    global1 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(446f, 160f, arg_0, arg_0) + global1.a) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.c, arg_0, 1811f, global1.a.x) * vec4<f32>(arg_0, global1.b, global1.a.x, global1.c))), _wgslsmith_f_op_vec4_f32(global1.a - _wgslsmith_f_op_vec4_f32(func_3(Struct_4(global1.a, -364f, arg_0), 0u, Struct_4(vec4<f32>(1072f, arg_0, 119f, -399f), arg_0, arg_0)))), true != any(vec2<bool>(true, global0.b.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.c, arg_0, arg_0, global1.a.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b, arg_0, 381f, 1004f) * global1.a)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c - arg_0)), 749f);
    var var_0 = Struct_2(Struct_1(global0.b.a), global0.b);
    let var_1 = vec4<bool>(!var_0.a.a, global0.b.a, !(true & (global0.b.a || var_0.a.a)), any(!select(!vec3<bool>(true, false, global0.b.a), vec3<bool>(global0.b.a, false, false), true)));
    var var_2 = Struct_3(~abs(vec4<u32>(1u, 1u, 1u, 1u)));
    let var_3 = 8301u;
    return var_0.b;
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.a.x + -1076f)))), global1.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec4<f32>(-473f, global1.b, global1.a.x, global1.c), -520f, global1.c), _wgslsmith_div_u32(4294967295u, 68984u), Struct_4(global1.a, 663f, -1103f))).x, 186f)), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-global1.c));
    let var_1 = _wgslsmith_clamp_u32(~min(reverseBits(21081u), _wgslsmith_sub_u32(1u, 0u)) ^ _wgslsmith_div_u32(arg_2.a.x, 1u), arg_2.a.x, 4294967295u);
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_4(_wgslsmith_f_op_vec4_f32(-global1.a), 225f, var_0.b), ~var_1 >> (var_1 % 32u), Struct_4(vec4<f32>(global1.a.x, 169f, -523f, 2340f), _wgslsmith_f_op_f32(select(-1295f, global1.a.x, false)), _wgslsmith_f_op_f32(f32(-1f) * -163f)))).x));
    let var_3 = Struct_3(vec4<u32>(0u, ~arg_2.a.x, 1u, var_1 ^ ~(~var_1)));
    let var_4 = !vec4<bool>(any(select(vec3<bool>(true, true, true), select(vec3<bool>(global0.a.a, arg_1.a, global0.a.a), vec3<bool>(false, true, false), vec3<bool>(true, true, global0.a.a)), !vec3<bool>(global0.b.a, true, false))), arg_1.a, !(!(!arg_1.a)), true);
    return Struct_2(arg_1, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.c, 565f)))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_f32(max(1251f, -2351f));
    var var_1 = 1u;
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(ceil(-695f)), -311f) + global1.a.wy));
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -300f)) + -741f), func_4(vec2<i32>(_wgslsmith_mod_i32(-2147483647i, 1i), -(i32(-1i) * -25435i)), func_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_0.x)) - _wgslsmith_f_op_f32(trunc(global1.a.x)))), Struct_3(vec4<u32>(arg_1.x, 1u, countOneBits(4294967295u), 1u))), ~_wgslsmith_sub_vec4_i32(-abs(vec4<i32>(u_input.b.x, u_input.a, 0i, 2147483647i)), vec4<i32>(-47026i, u_input.b.x, u_input.b.x, u_input.b.x) >> (~vec4<u32>(arg_1.x, 2561u, 42929u, arg_1.x) % vec4<u32>(32u))), select(~(~vec4<u32>(arg_1.x, arg_1.x, 1u, arg_1.x)), vec4<u32>(arg_1.x, arg_1.x, 4294967295u, min(_wgslsmith_mult_u32(arg_1.x, 5067u), arg_1.x & arg_1.x)), select(select(vec4<bool>(false, false, global0.b.a, false), !vec4<bool>(global0.a.a, true, global0.b.a, global0.a.a), true), !vec4<bool>(global0.b.a, global0.a.a, global0.a.a, global0.b.a), vec4<bool>(u_input.c != u_input.c, true, global1.a.x < arg_0.x, global0.a.a)))));
    global2 = array<vec3<f32>, 2>();
    let var_1 = 6988u;
    global2 = array<vec3<f32>, 2>();
    var var_2 = global0.a;
    return func_2(global1.a.x);
}

fn func_6(arg_0: Struct_2, arg_1: i32, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_4 {
    let var_0 = select(select(arg_2.yx, vec2<bool>(any(vec2<bool>(false, global0.a.a)), func_2(-564f).a), _wgslsmith_f_op_f32(-global1.c) == _wgslsmith_f_op_f32(f32(-1f) * -1577f)), select(arg_2.zy, vec2<bool>(false, arg_2.x), select(select(arg_2.yx, vec2<bool>(true, true), select(arg_2.zz, vec2<bool>(arg_2.x, arg_3.b.a), arg_2.zy)), !vec2<bool>(arg_2.x, true), !vec2<bool>(arg_2.x, arg_3.a.a))), false);
    global0 = func_4(reverseBits(vec2<i32>(2147483647i ^ arg_1, u_input.a)) >> (countOneBits(vec2<u32>(1u, 1u)) % vec2<u32>(32u)), func_2(347f), Struct_3(vec4<u32>(1u, 1u, 1u, 1u)));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(1u << (_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 120603u, 0u), vec3<u32>(1u, 32421u, 38996u)) % 32u), 2u)])) + vec3<f32>(201f, global1.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global1.c, -1393f)), _wgslsmith_f_op_f32(-global1.a.x), arg_2.x)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.b * global1.b))))));
    global2 = array<vec3<f32>, 2>();
    let var_2 = _wgslsmith_dot_vec2_i32(u_input.b.zx, vec2<i32>(abs(-2147483647i), arg_1));
    return Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(global1.a, global1.a), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_1.x, global1.a.x, var_1.x, var_1.x), vec4<f32>(global1.a.x, 400f, global1.c, 921f))), arg_2)) * _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_1.x, var_1.x, global1.a.x, -505f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(min(global1.a, _wgslsmith_f_op_vec4_f32(-global1.a)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-global1.b)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(-var_1.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(countOneBits(u_input.b.x), -u_input.b.x, u_input.a);
    let var_1 = func_6(Struct_2(global0.a, func_1(global1.a, select(vec3<u32>(4294967295u, 17914u, 100930u), ~vec3<u32>(7782u, 28338u, 9095u), any(vec3<bool>(false, global0.a.a, global0.a.a))))), var_0.x, vec4<bool>(global0.b.a, all(vec4<bool>(any(vec2<bool>(global0.a.a, global0.b.a)), true, global0.b.a, func_1(vec4<f32>(global1.a.x, global1.a.x, 1000f, 940f), vec3<u32>(85781u, 4294967295u, 68039u)).a)), func_2(_wgslsmith_f_op_f32(max(global1.c, global1.b))).a != !(global0.a.a & global0.b.a), global0.b.a && global0.b.a), Struct_2(func_1(_wgslsmith_f_op_vec4_f32(-global1.a), _wgslsmith_clamp_vec3_u32(~vec3<u32>(104450u, 28146u, 0u), vec3<u32>(1u, 1u, 1u), ~vec3<u32>(49893u, 79611u, 92675u))), global0.b));
    global0 = Struct_2(Struct_1(true), Struct_1(!(!global0.a.a)));
    var var_2 = func_4(vec2<i32>(u_input.c, ~(~(-var_0.x))), Struct_1(global0.a.a), Struct_3(firstTrailingBit(select(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(4294967295u, 4294967295u, 139974u, 37388u), global0.b.a)))).b;
    global1 = func_6(func_4(-var_0.xz, func_4(vec2<i32>(-4670i, -2147483647i), global0.a, Struct_3(vec4<u32>(1727u, 1u, 1u, 7544u))).b, Struct_3(vec4<u32>(~4294967295u, 1u, _wgslsmith_mult_u32(0u, 23730u), abs(1u)))), 1i, vec4<bool>(!(!all(vec2<bool>(var_2.a, var_2.a))), u_input.c <= (var_0.x >> (_wgslsmith_div_u32(11033u, 4294967295u) % 32u)), false | func_1(vec4<f32>(global1.b, -336f, -338f, 1000f), ~vec3<u32>(1u, 1u, 16267u)).a, true), func_4(var_0.xx, Struct_1(all(vec2<bool>(false, global0.a.a)) | true), Struct_3(vec4<u32>(~3988u, ~27436u, firstTrailingBit(0u), _wgslsmith_dot_vec3_u32(vec3<u32>(14637u, 48349u, 83401u), vec3<u32>(4294967295u, 16564u, 1u))))));
    var_2 = Struct_1(!(!all(!vec2<bool>(true, global0.b.a))));
    let var_3 = u_input.a;
    global1 = var_1;
    global1 = func_6(Struct_2(global0.b, global0.b), min(max(u_input.a, -(var_0.x & 13150i)), u_input.b.x), vec4<bool>(var_2.a, false | var_2.a, func_2(-1510f).a, !(!any(vec2<bool>(global0.b.a, false)))), func_4(-u_input.b.yz, global0.a, Struct_3(~vec4<u32>(12524u, 59311u, 0u, 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.a.x))) * _wgslsmith_f_op_vec4_f32(func_3(Struct_4(vec4<f32>(480f, var_1.b, var_1.a.x, global1.a.x), -358f, global1.a.x), 4294967295u, Struct_4(global1.a, var_1.a.x, global1.c))).x), var_1.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c)) - -1721f), 711f));
}

