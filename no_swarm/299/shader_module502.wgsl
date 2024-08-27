struct Struct_1 {
    a: vec2<bool>,
    b: vec2<u32>,
    c: u32,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec2<bool>,
    c: bool,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 18>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_4, arg_1: f32) -> vec2<u32> {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-494f, -2089f, true)) + arg_1), arg_1, _wgslsmith_f_op_f32(round(-1392f))));
    var var_1 = Struct_1(vec2<bool>((true == all(vec3<bool>(true, true, false))) | false, all(select(vec4<bool>(false, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false)), true))), _wgslsmith_mod_vec2_u32(~_wgslsmith_clamp_vec2_u32(min(vec2<u32>(26095u, 1u), vec2<u32>(1u, 1u)), firstTrailingBit(vec2<u32>(4000u, 0u)), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(4294967295u, 0u), _wgslsmith_add_vec2_u32(vec2<u32>(52704u, 46691u), vec2<u32>(25413u, 1960u))) >> (abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(6322u, 37993u), vec2<u32>(681u, 0u), vec2<u32>(6984u, 1u))) % vec2<u32>(32u))), 42709u);
    var var_2 = _wgslsmith_f_op_f32(select(var_0.a.x, arg_1, var_1.a.x));
    let var_3 = Struct_2(vec3<f32>(-2174f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1), var_0.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-753f * 911f) + _wgslsmith_f_op_f32(select(var_0.a.x, var_0.a.x, false))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x)))));
    global0 = array<Struct_4, 18>();
    return _wgslsmith_clamp_vec2_u32(var_1.b, vec2<u32>(~var_1.b.x, var_1.b.x), var_1.b);
}

fn func_2() -> f32 {
    let var_0 = Struct_1(!select(vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(false, true), all(vec2<bool>(false, false))), vec2<bool>(true, true)), firstLeadingBit(vec2<u32>(1u, 1u)), 1u);
    let var_1 = global0[_wgslsmith_index_u32(var_0.b.x, 18u)];
    var var_2 = Struct_1(!(!var_0.a), _wgslsmith_add_vec2_u32(var_0.b << (~(vec2<u32>(var_0.c, var_0.b.x) << (var_0.b % vec2<u32>(32u))) % vec2<u32>(32u)), func_3(global0[_wgslsmith_index_u32(~firstTrailingBit(3826u), 18u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1577f * 259f))))), _wgslsmith_mult_u32(0u, abs(var_0.b.x)));
    var_2 = var_0;
    var_2 = Struct_1(vec2<bool>(var_0.a.x & all(select(vec4<bool>(var_0.a.x, true, var_2.a.x, true), vec4<bool>(var_0.a.x, false, var_2.a.x, true), vec4<bool>(true, var_2.a.x, false, var_2.a.x))), var_0.a.x), var_0.b, ~(~63799u));
    return 1f;
}

fn func_1() -> f32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(-783f, _wgslsmith_f_op_f32(sign(-492f)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), !(u_input.a >= 5496i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-875f, -135f)))))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -530f, -617f))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.x, 1511f, 1416f), vec3<f32>(var_0.x, var_0.x, 134f))), vec3<f32>(295f, var_0.x, -588f), select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(356f, 698f, 741f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, var_0.x, 574f) * vec3<f32>(-1038f, var_0.x, var_0.x)))), vec3<bool>(true, any(vec4<bool>(false, false, false, true)), true)))));
    var_0 = vec2<f32>(-451f, -1147f);
    let var_2 = Struct_3(countOneBits(_wgslsmith_mod_vec4_i32(-u_input.b, firstLeadingBit(select(vec4<i32>(u_input.c, u_input.b.x, -36972i, u_input.b.x), u_input.b, false)))), vec2<bool>(false, all(vec4<bool>(true, true, true, true))), true, 950f, Struct_1(select(vec2<bool>(true, u_input.b.x <= u_input.a), select(vec2<bool>(false, false), vec2<bool>(true, false), all(vec4<bool>(false, true, true, true))), select(vec2<bool>(true, true), vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), vec2<u32>(~1u, 1u), 1u));
    var var_3 = !select(!select(!vec2<bool>(false, var_2.b.x), vec2<bool>(true, true), !var_2.b), !select(var_2.e.a, vec2<bool>(true, true), false), var_2.e.a);
    return -1000f;
}

fn func_4(arg_0: bool, arg_1: f32, arg_2: Struct_1) -> vec2<bool> {
    global0 = array<Struct_4, 18>();
    let var_0 = Struct_3(_wgslsmith_clamp_vec4_i32(u_input.b, -(max(u_input.b, u_input.b) | _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.c))), u_input.b), arg_2.a, (arg_2.c >= 0u) || true, _wgslsmith_f_op_f32(sign(867f)), arg_2);
    let var_1 = select(!(!select(vec4<bool>(false, arg_2.a.x, var_0.c, var_0.b.x), select(vec4<bool>(true, true, true, arg_0), vec4<bool>(false, false, arg_0, true), arg_0), !vec4<bool>(var_0.c, var_0.e.a.x, arg_2.a.x, false))), select(select(select(select(vec4<bool>(false, arg_0, false, true), vec4<bool>(arg_2.a.x, true, arg_2.a.x, false), true), select(vec4<bool>(var_0.e.a.x, true, true, var_0.c), vec4<bool>(var_0.c, var_0.e.a.x, arg_0, var_0.b.x), arg_0), select(vec4<bool>(true, true, true, arg_2.a.x), vec4<bool>(true, arg_2.a.x, false, arg_0), vec4<bool>(arg_0, var_0.c, true, true))), vec4<bool>(true, select(arg_2.a.x, var_0.c, var_0.c), true, !var_0.b.x), !select(vec4<bool>(false, true, var_0.c, var_0.b.x), vec4<bool>(false, false, var_0.b.x, true), vec4<bool>(false, arg_0, true, true))), vec4<bool>(arg_0, !all(vec4<bool>(false, var_0.c, false, false)), arg_0, true), var_0.c), (false || arg_0) && false);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(639f, _wgslsmith_f_op_f32(836f + -277f)), _wgslsmith_f_op_f32(-var_0.d)))));
    let var_3 = (~_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.e.c, arg_2.c, var_0.e.c, 22605u), vec4<u32>(4294967295u, 14266u, var_0.e.b.x, 1u)), vec4<u32>(1u, arg_2.c, arg_2.c, var_0.e.b.x)) | countOneBits(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_2.b.x, var_0.e.b.x) ^ vec4<u32>(var_0.e.c, 12869u, arg_2.b.x, 42289u), vec4<u32>(arg_2.c, 67047u, 47649u, 18411u) | vec4<u32>(29994u, arg_2.b.x, 27486u, 0u)))) >> (~arg_2.b.x % 32u);
    return select(select(!var_0.e.a, vec2<bool>(!(-2147483647i <= var_0.a.x), !any(var_1.xzw)), true), vec2<bool>(any(select(select(vec3<bool>(false, var_0.b.x, var_0.e.a.x), var_1.yzx, vec3<bool>(arg_2.a.x, false, false)), !var_1.wwx, vec3<bool>(false, var_0.c, true))), true), all(vec2<bool>(all(!vec3<bool>(var_0.b.x, var_1.x, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-384f, 1000f, false)) * _wgslsmith_f_op_f32(trunc(-1026f))) + -840f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(542f - -557f)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(1244f, -696f), _wgslsmith_f_op_f32(-708f - -270f), false))), 213f, -396f));
    var var_1 = ~_wgslsmith_div_i32(2147483647i, -1i);
    var var_2 = Struct_3(u_input.b, !func_4(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())), Struct_1(vec2<bool>(true, false), ~vec2<u32>(0u, 8031u), ~56759u)), -2147483647i >= u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * var_0.x)) * -1608f), _wgslsmith_f_op_f32(-var_0.x))), Struct_1(!(!select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false))), abs(abs(abs(vec2<u32>(4294967295u, 37092u)))), _wgslsmith_add_u32(0u, 1u) | firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(46792u, 9114u, 73536u, 0u), vec4<u32>(35587u, 4294967295u, 1u, 1u)))));
    let var_3 = var_2.a.zwy;
    let var_4 = var_0.ywz;
    var var_5 = select(vec3<bool>(!var_2.b.x, false, (_wgslsmith_mod_i32(1i, 10410i) != (u_input.b.x | var_2.a.x)) || (!var_2.c != (false && var_2.b.x))), !(!vec3<bool>(func_4(var_2.e.a.x, var_4.x, var_2.e).x, !var_2.b.x, !var_2.c)), vec3<bool>(false, !any(!var_2.e.a), var_2.c));
    var var_6 = !vec4<bool>(!((var_2.e.c ^ 33332u) > 0u), !(!select(false, var_2.c, var_5.x)), var_2.e.a.x, var_5.x);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(-1i >> (0u % 32u), 2147483647i, 7493i), vec3<u32>(abs(var_2.e.c), _wgslsmith_dot_vec4_u32(vec4<u32>(~147381u, 0u, _wgslsmith_add_u32(var_2.e.c, var_2.e.c), ~var_2.e.c), ~(~vec4<u32>(1u, var_2.e.b.x, var_2.e.b.x, var_2.e.b.x))), ~10950u & ~_wgslsmith_mult_u32(var_2.e.b.x, 1u)));
}

