struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: u32,
    d: bool,
}

struct Struct_4 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 13>;

var<private> global1: array<vec3<i32>, 17>;

var<private> global2: Struct_3;

var<private> global3: Struct_1 = Struct_1(vec3<i32>(-18182i, -39385i, 2147483647i), vec4<f32>(1000f, -559f, 1000f, -1271f), 238f, vec4<i32>(-41705i, 21288i, -1i, 28377i));

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_4) -> vec4<f32> {
    global3 = Struct_1(select(-(~(~global3.d.yyz)), _wgslsmith_sub_vec3_i32(vec3<i32>(global3.a.x, global3.a.x, global3.a.x), min(global1[_wgslsmith_index_u32(u_input.c.x, 17u)], u_input.b.yxz)) << (arg_2.a.yzx % vec3<u32>(32u)), true), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1, arg_0.x, _wgslsmith_f_op_f32(920f - arg_0.x), _wgslsmith_f_op_f32(exp2(global2.b.x))), vec4<f32>(_wgslsmith_f_op_f32(global2.b.x - -335f), _wgslsmith_div_f32(-1000f, -852f), _wgslsmith_f_op_f32(-global3.b.x), _wgslsmith_f_op_f32(-global3.b.x)), all(vec2<bool>(true, true))))), -302f, ~(-global3.d) << (select(vec4<u32>(~arg_2.a.x, global2.c, 29132u, arg_2.a.x), ~arg_2.a, all(!vec3<bool>(global2.d, true, false))) % vec4<u32>(32u)));
    global2 = Struct_3(global2.a, _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1657f)) - _wgslsmith_f_op_f32(-545f * global3.c)), _wgslsmith_f_op_f32(-116f + 1000f), _wgslsmith_f_op_f32(f32(-1f) * -1280f)) + _wgslsmith_f_op_vec4_f32(-global3.b)), arg_2.a.x, global2.d);
    var var_0 = Struct_3(global2.a, global2.b, ~(4294967295u & arg_2.a.x), false);
    let var_1 = !vec2<bool>(!(var_0.d | all(vec3<bool>(true, var_0.d, true))), false);
    var var_2 = _wgslsmith_dot_vec2_i32(vec2<i32>(global3.a.x, u_input.a ^ select(2147483647i, 2147483647i, all(vec4<bool>(var_0.d, var_1.x, var_0.d, true)))), ~(-_wgslsmith_add_vec2_i32(global3.d.xy, _wgslsmith_div_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(u_input.b.x, u_input.a)))));
    return _wgslsmith_f_op_vec4_f32(floor(global3.b));
}

fn func_2() -> i32 {
    global3 = Struct_1(vec3<i32>(~_wgslsmith_mult_i32(firstTrailingBit(2147483647i), global3.d.x), i32(-1i) * -reverseBits(21356i), 1i), _wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-596f, _wgslsmith_div_f32(global3.b.x, global2.b.x), -730f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2.b.x))))), Struct_4(firstLeadingBit(select(vec4<u32>(58099u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(u_input.c.x, global2.a.a.x, 4294967295u, 52227u), global2.d))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.x, -677f, -1424f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global3.b.x)) + global3.c), Struct_4(vec4<u32>(6261u, global2.a.a.x, 79332u, global2.a.a.x)))).x), vec4<i32>(global3.a.x, -12722i, _wgslsmith_mod_i32(countOneBits(-u_input.b.x), global3.d.x), 2147483647i));
    var var_0 = 2147483647i;
    return ~(-global3.d.x);
}

fn func_4(arg_0: vec4<i32>, arg_1: i32) -> vec3<bool> {
    global0 = array<vec4<i32>, 13>();
    let var_0 = Struct_4(vec4<u32>(_wgslsmith_dot_vec2_u32(global2.a.a.zx, ~vec2<u32>(global2.a.a.x, 1u) << (vec2<u32>(u_input.c.x, u_input.c.x) % vec2<u32>(32u))), _wgslsmith_div_u32(1u, ~u_input.c.x), 1u, ~(~(~1u))));
    let var_1 = !global2.d;
    global1 = array<vec3<i32>, 17>();
    global1 = array<vec3<i32>, 17>();
    return select(!vec3<bool>(all(vec3<bool>(global2.d, var_1, global2.d)) & (global2.d != global2.d), global2.d || var_1, true), !vec3<bool>(!global2.d, true, global2.d), var_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: bool, arg_2: u32, arg_3: vec3<i32>) -> i32 {
    let var_0 = func_4(vec4<i32>(1i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.b.zzw ^ vec3<i32>(1i, u_input.b.x, arg_3.x), vec3<i32>(-2147483647i, -11624i, u_input.b.x)), _wgslsmith_add_i32(u_input.a ^ u_input.b.x, func_2())), ~(~arg_3.x), arg_3.x), countOneBits(u_input.a));
    global3 = Struct_1(_wgslsmith_clamp_vec3_i32(vec3<i32>(-7195i, -1i, _wgslsmith_sub_i32(countOneBits(29967i), _wgslsmith_div_i32(10404i, -2147483647i))), _wgslsmith_sub_vec3_i32(-vec3<i32>(arg_3.x, u_input.b.x, 22032i), vec3<i32>(arg_3.x, -44183i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b))), _wgslsmith_sub_vec3_i32(vec3<i32>(~global3.a.x, 0i, _wgslsmith_div_i32(u_input.a, u_input.a)), _wgslsmith_mult_vec3_i32(min(vec3<i32>(global3.a.x, -1i, -2147483647i), vec3<i32>(arg_3.x, u_input.a, arg_3.x)), vec3<i32>(arg_3.x, -1i, -1i) | global3.d.yyx))), vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1089f, -1094f))))), _wgslsmith_f_op_f32(global2.b.x * arg_0.x), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.b.x - -483f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1620f, _wgslsmith_f_op_f32(round(arg_0.x))) + _wgslsmith_f_op_f32(min(arg_0.x, global2.b.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(global3.b.zzy, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.b.x + 1037f), _wgslsmith_f_op_f32(1790f + global3.c)), Struct_4(~vec4<u32>(global2.a.a.x, arg_2, global2.a.a.x, 56962u)))).x - -1158f), -u_input.b);
    var var_1 = Struct_1(max(~((vec3<i32>(arg_3.x, 16732i, 70190i) | arg_3) | abs(vec3<i32>(1i, global3.a.x, global3.d.x))), _wgslsmith_clamp_vec3_i32(_wgslsmith_div_vec3_i32(_wgslsmith_div_vec3_i32(global3.a, global1[_wgslsmith_index_u32(61855u, 17u)]), firstLeadingBit(vec3<i32>(58019i, -32658i, u_input.b.x))), ~vec3<i32>(0i, -31274i, u_input.b.x), u_input.b.yzy)), global2.b, 365f, global3.d);
    var var_2 = Struct_4(firstTrailingBit(_wgslsmith_div_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 52792u, 4294967295u, 21527u), vec4<u32>(u_input.c.x, global2.c, 5470u, 42112u)), abs(abs(vec4<u32>(2557u, 15706u, 4294967295u, 0u))))));
    global0 = array<vec4<i32>, 13>();
    return _wgslsmith_div_i32(u_input.b.x ^ -max(_wgslsmith_sub_i32(0i, 2147483647i), arg_3.x), ~(~(-(~var_1.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.a;
    let var_1 = vec2<i32>(-u_input.b.x, _wgslsmith_div_i32(func_1(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(133f, -1159f, global3.c, -391f), vec4<f32>(global3.b.x, 1544f, global3.b.x, 1392f))), all(vec3<bool>(true, global2.d, false)), u_input.c.x, vec3<i32>(global3.a.x, 2147483647i, global3.a.x)), ~(-1i))) >> (vec2<u32>(~53045u, var_0.a.x) % vec2<u32>(32u));
    global3 = Struct_1(_wgslsmith_mod_vec3_i32(-abs(_wgslsmith_div_vec3_i32(global3.a, global1[_wgslsmith_index_u32(global2.a.a.x, 17u)])), firstLeadingBit(-(vec3<i32>(-2147483647i, -18990i, global3.d.x) & vec3<i32>(17230i, u_input.a, 4824i)))), global3.b, -1852f, _wgslsmith_mult_vec4_i32(global3.d, ~(-_wgslsmith_mod_vec4_i32(global3.d, global3.d))));
    var var_2 = global2.a.a;
    let var_3 = select(vec3<u32>(~(var_2.x >> (_wgslsmith_mod_u32(var_2.x, var_2.x) % 32u)), _wgslsmith_sub_u32(1u, reverseBits(~u_input.c.x)), var_2.x), min(u_input.c, vec3<u32>(_wgslsmith_mod_u32(~u_input.c.x, var_0.a.x << (62776u % 32u)), ~(~global2.a.a.x), var_0.a.x)), vec3<bool>(global2.d, select(global2.d, u_input.a > (u_input.a & u_input.a), global2.d), !global2.d));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.c) * -895f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.x)), vec4<u32>(global2.c, ~1u, ~(32514u | var_3.x), var_0.a.x) ^ ~vec4<u32>(_wgslsmith_mod_u32(40341u, var_2.x), _wgslsmith_div_u32(var_0.a.x, var_3.x), var_2.x, ~23398u), vec4<u32>(1392u, global2.c, ~(~(~var_0.a.x)), ~79226u));
}

