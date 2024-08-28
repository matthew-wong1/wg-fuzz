struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_2,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: u32,
    c: i32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 918f;

var<private> global1: array<vec2<u32>, 16> = array<vec2<u32>, 16>(vec2<u32>(21556u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 7663u), vec2<u32>(4595u, 1u), vec2<u32>(1u, 1u), vec2<u32>(35u, 0u), vec2<u32>(74478u, 13532u), vec2<u32>(27795u, 4294967295u), vec2<u32>(4294967295u, 49156u), vec2<u32>(4294967295u, 19722u), vec2<u32>(0u, 4127u), vec2<u32>(22295u, 0u), vec2<u32>(32955u, 18074u), vec2<u32>(6794u, 14928u), vec2<u32>(8711u, 32159u));

var<private> global2: f32;

var<private> global3: array<Struct_4, 31>;

var<private> global4: array<vec3<u32>, 16>;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_4, arg_1: i32, arg_2: Struct_4, arg_3: vec4<f32>) -> vec4<i32> {
    var var_0 = _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(arg_2.b.c, _wgslsmith_clamp_vec4_i32(~arg_2.b.c, vec4<i32>(arg_2.a.b.c.x, u_input.a, arg_0.b.c.x, arg_2.a.b.c.x) >> (vec4<u32>(1u, arg_0.d.a, 1u, 6538u) % vec4<u32>(32u)), vec4<i32>(-2147483647i, -1i, arg_2.a.b.c.x, ~arg_0.b.c.x))), -firstLeadingBit(vec4<i32>(min(arg_1, arg_0.b.c.x), arg_1, -2147483647i, -2147483647i)));
    let var_1 = min(vec2<i32>(min(_wgslsmith_mod_i32(arg_0.b.c.x, arg_1), arg_0.b.c.x), _wgslsmith_sub_i32(reverseBits(2147483647i << (arg_2.c.a % 32u)), firstTrailingBit(1i))), vec2<i32>(-32722i, _wgslsmith_add_i32(-2147483647i, min(-1i, arg_2.b.c.x))));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-arg_3));
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), -1000f);
    let var_3 = arg_2.b.b.x;
    return min((abs(vec4<i32>(u_input.a, arg_0.a.b.c.x, arg_2.b.c.x, 34606i)) << (_wgslsmith_clamp_vec4_u32(countOneBits(vec4<u32>(51209u, arg_2.d.b.x, 17775u, arg_0.c.b.x)), ~vec4<u32>(4294967295u, 14284u, 9016u, arg_2.c.b.x), countOneBits(vec4<u32>(8166u, 0u, arg_0.d.b.x, 5634u))) % vec4<u32>(32u))) << (vec4<u32>(countOneBits(~u_input.b), _wgslsmith_clamp_u32(arg_2.b.e.b.x | arg_2.a.c.x, firstTrailingBit(4294967295u), ~4582u), 0u, ~arg_2.b.e.b.x) % vec4<u32>(32u)), select(-reverseBits(countOneBits(arg_2.b.c)), countOneBits(arg_2.a.b.c), true));
}

fn func_2(arg_0: Struct_1, arg_1: f32, arg_2: vec4<i32>, arg_3: i32) -> vec4<bool> {
    var var_0 = Struct_3(arg_0, Struct_2(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), true), vec3<bool>(true, any(vec3<bool>(false, false, true)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)), min(-func_3(global3[_wgslsmith_index_u32(u_input.c, 31u)], 18602i, global3[_wgslsmith_index_u32(arg_0.b.x, 31u)], vec4<f32>(-766f, arg_0.c.x, arg_1, 103f)), arg_2), vec3<f32>(-286f, _wgslsmith_f_op_f32(ceil(858f)), _wgslsmith_f_op_f32(-401f - _wgslsmith_f_op_f32(-arg_0.c.x))), Struct_1(~firstTrailingBit(arg_0.a), vec2<u32>(~39835u, ~4294967295u), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1878f, -844f))))))), _wgslsmith_mod_vec2_u32(global1[_wgslsmith_index_u32(abs(_wgslsmith_div_u32(4294967295u, arg_0.a)), 16u)] >> (~vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), abs(vec2<u32>(reverseBits(u_input.b), select(21293u, 52197u, true)))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_1)));
    var var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.b.d) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(arg_0.c.x + 1687f), _wgslsmith_f_op_f32(-var_0.b.d.x), _wgslsmith_f_op_f32(select(arg_0.c.x, arg_1, var_0.b.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-arg_1), _wgslsmith_f_op_f32(abs(-1381f)), arg_1)))));
    global4 = array<vec3<u32>, 16>();
    let var_3 = Struct_3(arg_0, var_0.b, _wgslsmith_sub_vec2_u32(abs(min(~u_input.d, ~vec2<u32>(var_0.a.b.x, 1u))), ~select(min(var_0.c, global1[_wgslsmith_index_u32(arg_0.b.x, 16u)]), vec2<u32>(4294967295u, arg_0.a), vec2<bool>(true, false))));
    return select(select(!vec4<bool>(false, var_3.b.b.x, true || var_0.b.a.x, !var_0.b.b.x), select(vec4<bool>(true, true, true, true), !(!vec4<bool>(var_0.b.a.x, var_0.b.a.x, false, var_3.b.a.x)), !vec4<bool>(false, false, var_3.b.b.x, var_3.b.b.x)), !vec4<bool>(arg_2.x <= var_0.b.c.x, var_3.b.e.b.x < 1u, true, !var_3.b.b.x)), select(select(vec4<bool>(!var_0.b.a.x, all(var_3.b.a), true & var_0.b.a.x, var_3.b.a.x), select(!vec4<bool>(true, true, var_0.b.b.x, var_3.b.a.x), vec4<bool>(false, true, true, var_0.b.b.x), true), vec4<bool>(true && var_0.b.a.x, var_3.b.a.x, var_0.b.e.a >= u_input.c, var_3.b.a.x)), select(vec4<bool>(-883f > arg_1, true, var_3.b.b.x, var_0.b.b.x), !select(vec4<bool>(true, false, var_0.b.a.x, var_3.b.b.x), vec4<bool>(var_0.b.b.x, true, true, var_3.b.b.x), false), vec4<bool>(true, true, true, true)), all(vec4<bool>(all(vec4<bool>(var_3.b.b.x, var_3.b.b.x, var_3.b.b.x, false)), var_3.b.b.x, true, false))), var_3.b.a.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_1) -> u32 {
    global1 = array<vec2<u32>, 16>();
    global4 = array<vec3<u32>, 16>();
    var var_0 = any(func_2(arg_1, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(arg_1.c.x)))), vec4<i32>(abs(23656i), u_input.a, _wgslsmith_sub_i32(u_input.a, -41043i), 1i), u_input.a)) & all(func_2(Struct_1(_wgslsmith_clamp_u32(u_input.c, arg_1.b.x, arg_1.a), global1[_wgslsmith_index_u32(~56929u, 16u)], _wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_1.c.x, arg_1.c.x), arg_1.c))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_1.c.x + arg_1.c.x), _wgslsmith_div_f32(-211f, 550f))), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, -2147483647i, u_input.a, 2147483647i), select(vec4<i32>(-75905i, u_input.a, -2147483647i, -768i), vec4<i32>(3271i, u_input.a, u_input.a, u_input.a), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))), select(_wgslsmith_add_i32(-12721i, -68003i), _wgslsmith_sub_i32(0i, 1i), false)).wxz);
    var var_1 = 1434u;
    global2 = 144f;
    return 29909u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(abs(4294967295u), 1u, 3235u, _wgslsmith_div_u32(u_input.b, u_input.d.x)), vec4<u32>(u_input.b, u_input.d.x, select(u_input.d.x, func_1(vec2<bool>(false, true), Struct_1(4294967295u, vec2<u32>(u_input.d.x, u_input.d.x), vec2<f32>(-405f, -952f))), true), u_input.d.x)), abs(vec4<u32>(1u, _wgslsmith_div_u32(u_input.c, min(1u, 4294967295u)), 65298u, ~u_input.d.x)));
    var var_1 = Struct_3(Struct_1(firstTrailingBit(max(34525u, _wgslsmith_mod_u32(1u, 54423u))), min(abs(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b, 1u), var_0.yx)), firstLeadingBit(u_input.d)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(848f, 553f) - vec2<f32>(640f, -822f))))), Struct_2(vec3<bool>(false, true, any(func_2(Struct_1(var_0.x, vec2<u32>(u_input.c, u_input.b), vec2<f32>(-668f, 1263f)), -1557f, vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a))), !vec3<bool>(any(vec3<bool>(true, true, false)), true, any(vec3<bool>(true, true, false))), ~_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, 3171i, -65702i, -2147483647i), vec4<i32>(1i, u_input.a, 5296i, 7826i)) & (max(vec4<i32>(24729i, -1i, -9846i, 14854i), vec4<i32>(u_input.a, 1i, u_input.a, 2147483647i)) ^ vec4<i32>(-1i, u_input.a, u_input.a, -1i)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-1564f, -334f, 1214f), vec3<f32>(1248f, 838f, 1047f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1364f, 523f, -396f))), Struct_1(13443u, reverseBits(~u_input.d), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2296f, -834f)) + vec2<f32>(-269f, 1558f)))), vec2<u32>(~(~abs(var_0.x)), reverseBits(func_1(vec2<bool>(false, false), Struct_1(10140u, var_0.xy, vec2<f32>(1762f, 425f))) << (61667u % 32u))));
    let var_2 = 1324u;
    let var_3 = var_1.a;
    let var_4 = -172f;
    global4 = array<vec3<u32>, 16>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(~_wgslsmith_add_u32(abs(6312u), _wgslsmith_add_u32(37716u, var_1.c.x)), ~_wgslsmith_dot_vec2_u32(~u_input.d, _wgslsmith_mult_vec2_u32(global1[_wgslsmith_index_u32(54545u, 16u)], vec2<u32>(4294967295u, var_2))), 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(~var_3.a, 22125u, ~4294967295u, 0u ^ var_3.b.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_2, 0u, 1u, var_3.b.x), ~vec4<u32>(30346u, var_2, 0u, 63982u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2, var_1.a.a, var_3.b.x, u_input.d.x), vec4<u32>(var_0.x, 67240u, 27557u, var_3.a))))), _wgslsmith_mod_u32(~(~(1u | var_2)), 0u), u_input.a, _wgslsmith_f_op_f32(-var_1.a.c.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(reverseBits(var_1.b.c.x), 30027i), var_1.b.c.x));
}

