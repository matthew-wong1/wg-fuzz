struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec4<f32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec2<bool>,
    c: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), vec4<f32>(715f, -402f, 876f, -847f), vec4<f32>(-1775f, 1768f, 312f, -679f)), vec4<i32>(-28636i, -6235i, -35877i, -4569i), -110820i, Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), vec4<f32>(216f, -1217f, -1201f, -698f), vec4<f32>(-2029f, 1052f, -170f, -1334f)), Struct_1(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<f32>(580f, 1882f, 847f, 180f), vec4<f32>(655f, -820f, 242f, 1000f)));

var<private> global1: u32;

var<private> global2: u32;

var<private> global3: i32 = -22372i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32) -> bool {
    global2 = min(_wgslsmith_div_u32(~26634u, ~_wgslsmith_mult_u32(firstLeadingBit(u_input.a), u_input.a)), _wgslsmith_clamp_u32(~(~1u), min(3853u & u_input.a, 32765u), 1u));
    var var_0 = Struct_5(arg_1, global0.e.b.xz, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1577f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1091f)) - -300f) - 322f), ~(~4294967295u) <= max(min(u_input.a, 65082u), ~62124u))));
    var var_1 = 28206u;
    var var_2 = Struct_2(global0.e, abs(-vec4<i32>(-1i, 8212i, global0.c, 2763i)) >> (~_wgslsmith_sub_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, u_input.a, u_input.a, u_input.a)), _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.a, 46650u, u_input.a, 33796u), vec4<u32>(u_input.a, 1u, 1u, 12443u))) % vec4<u32>(32u)), 26968i, Struct_1(!vec4<bool>(true, arg_0.x, false == var_0.b.x, true), vec4<bool>(true, !select(var_0.b.x, false, arg_0.x), false, true), vec4<f32>(global0.a.c.x, -166f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global0.e.c.x - var_0.a))), _wgslsmith_f_op_f32(1136f - _wgslsmith_f_op_f32(min(-137f, var_0.a)))), global0.d.c), global0.e);
    global1 = countOneBits(u_input.a);
    return !any(!(!global0.d.a.wx));
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = vec3<bool>(global0.a.b.x, true, !(global0.e.a.x & (!global0.d.a.x & any(vec2<bool>(true, global0.a.a.x)))));
    global3 = arg_0;
    var var_1 = select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(true, true, var_0.x | var_0.x, all(vec2<bool>(global0.e.b.x, global0.a.a.x)))), countOneBits(-46809i) == firstTrailingBit(~arg_0)), !global0.e.a.x);
    return select(vec4<bool>(global0.d.a.x, all(vec2<bool>(global0.a.b.x, !global0.a.b.x)), abs(global0.c) < -(i32(-1i) * -29305i), func_3(global0.d.b.wzy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(339f))))), !select(global0.e.a, select(!global0.e.a, global0.a.b, vec4<bool>(false, true, var_0.x, var_1.x)), true), !vec4<bool>(false, false, any(var_0.zy), global0.a.d.x != _wgslsmith_f_op_f32(step(global0.e.c.x, global0.e.c.x))));
}

fn func_1() -> Struct_1 {
    global3 = ~(-47004i);
    var var_0 = global0.a;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.d.x) - _wgslsmith_f_op_f32(max(global0.e.c.x, _wgslsmith_f_op_f32(-var_0.c.x)))))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-2106f))))));
    global2 = u_input.a;
    let var_2 = _wgslsmith_dot_vec2_i32(global0.b.zz, -(~global0.b.xw));
    return Struct_1(func_2(-21016i >> ((_wgslsmith_div_u32(u_input.a, 4294967295u) | 1u) % 32u)), !(!vec4<bool>(-2147483647i >= global0.b.x, true, all(vec3<bool>(false, var_0.a.x, true)), 1u != u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1064f, global0.e.d.x, var_0.c.x, var_0.d.x)))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2260f), var_0.d.x, _wgslsmith_f_op_f32(-1352f - var_0.d.x), _wgslsmith_f_op_f32(select(649f, var_0.d.x, true))))), var_0.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(global0.d.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_1.d.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1088f)) * _wgslsmith_f_op_f32(global0.e.c.x - -788f)), global0.d.a.x)) * 361f), arg_2.a.b.x));
    global0 = arg_2;
    global3 = _wgslsmith_sub_i32(_wgslsmith_mod_i32(13387i, max(-_wgslsmith_mult_i32(global0.b.x, -2147483647i), 3731i)), ~(i32(-1i) * -(2147483647i >> (u_input.a % 32u))));
    let var_1 = u_input.a;
    let var_2 = Struct_5(390f, !arg_1.b.yy, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1352f, -2180f, true)))))));
    return Struct_1(!global0.a.a, arg_1.a, _wgslsmith_f_op_vec4_f32(abs(arg_2.a.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1613f), _wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(var_2.c + arg_1.d.x), arg_1.d.x)))));
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_5) -> vec2<f32> {
    let var_0 = vec4<bool>((2325i & ~firstLeadingBit(global0.b.x)) < -1i, arg_2.b.x, false, any(func_2(global0.c).wzy));
    global0 = Struct_2(func_1(), vec4<i32>(~(~_wgslsmith_div_i32(global0.c, global0.c)), countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 66558i) >> (vec3<u32>(arg_1, 64566u, u_input.a) % vec3<u32>(32u)), firstTrailingBit(global0.b.wzx))), countOneBits(~arg_0.b.x), arg_0.c), -(abs(arg_0.b.x) >> (arg_1 % 32u)), Struct_1(!(!var_0), !global0.e.b, _wgslsmith_f_op_vec4_f32(arg_0.e.c - _wgslsmith_div_vec4_f32(global0.d.c, global0.d.c)), vec4<f32>(_wgslsmith_f_op_f32(select(537f, 1627f, arg_2.b.x)), -574f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_0.e.c.x, -1039f, global0.d.b.x)) * _wgslsmith_f_op_f32(f32(-1f) * -609f)), -1000f)), func_1());
    global3 = 33654i;
    global2 = u_input.a;
    global3 = firstLeadingBit(i32(-1i) * -2147483647i);
    return vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.a) * _wgslsmith_f_op_f32(select(arg_2.a, -1452f, true))))), -1954f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(func_5(Struct_2(func_4(vec2<bool>(true, global0.d.a.x), func_1(), Struct_2(func_1(), global0.b, global0.b.x, global0.a, global0.d), _wgslsmith_f_op_f32(global0.a.d.x + -750f)), _wgslsmith_mod_vec4_i32(select(_wgslsmith_mult_vec4_i32(global0.b, global0.b), max(vec4<i32>(global0.c, global0.b.x, 14453i, -2147483647i), global0.b), global0.d.b.x), abs(global0.b)), global0.c, Struct_1(global0.d.b, vec4<bool>(true, true, false, true), vec4<f32>(_wgslsmith_f_op_f32(global0.d.c.x + global0.d.d.x), _wgslsmith_f_op_f32(select(global0.d.d.x, global0.e.c.x, true)), _wgslsmith_f_op_f32(global0.e.c.x * global0.d.d.x), _wgslsmith_f_op_f32(192f - -1625f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.d.d.x, -1671f, global0.d.c.x, global0.d.c.x) * _wgslsmith_f_op_vec4_f32(-global0.a.d))), func_4(vec2<bool>(true, true), global0.a, Struct_2(func_4(vec2<bool>(false, false), global0.d, Struct_2(Struct_1(vec4<bool>(global0.e.b.x, global0.a.a.x, global0.e.b.x, global0.d.a.x), global0.e.b, vec4<f32>(global0.d.c.x, global0.e.c.x, 1000f, -157f), vec4<f32>(236f, global0.e.c.x, global0.e.c.x, 990f)), global0.b, global0.b.x, global0.e, Struct_1(global0.a.b, global0.e.a, vec4<f32>(251f, 1274f, global0.e.d.x, -1069f), global0.a.d)), global0.e.d.x), -vec4<i32>(50698i, -7698i, -2147483647i, 0i), ~global0.b.x, Struct_1(global0.e.a, vec4<bool>(global0.d.b.x, global0.d.a.x, true, false), vec4<f32>(1377f, global0.d.d.x, -1198f, -461f), vec4<f32>(1480f, -1000f, global0.d.c.x, -2062f)), func_1()), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(global0.d.d.x, global0.a.c.x), _wgslsmith_f_op_f32(global0.a.d.x - global0.a.d.x))))), (~_wgslsmith_div_u32(u_input.a, u_input.a) & 0u) & firstTrailingBit(4294967295u), Struct_5(-519f, global0.e.a.yz, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-331f + _wgslsmith_f_op_f32(min(global0.a.d.x, global0.a.d.x)))))));
    global1 = 1u;
    var var_1 = 6969u;
    let var_2 = _wgslsmith_f_op_f32(abs(global0.a.c.x));
    var var_3 = vec2<i32>(~firstLeadingBit(-global0.b.x ^ global0.c), 20457i);
    var var_4 = vec2<i32>(_wgslsmith_mult_i32(~(var_3.x ^ global0.c), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-56854i, global0.c, -5153i, var_3.x), global0.b), _wgslsmith_mod_i32(~global0.b.x, 1i), 1i)), -(~firstLeadingBit(reverseBits(global0.b.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, u_input.a, min(~u_input.a, _wgslsmith_mult_u32(u_input.a, u_input.a)), u_input.a), vec4<u32>(u_input.a, u_input.a, 0u, 1u)), global0.b, ~global0.b.x ^ var_4.x);
}

