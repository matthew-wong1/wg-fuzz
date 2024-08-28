struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
    d: vec4<bool>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: bool,
    e: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15593i;

var<private> global1: vec4<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_5, arg_1: f32) -> u32 {
    var var_0 = Struct_4(!(!((arg_0.a.c.d.x || true) || (arg_1 > -1229f))), -17013i, arg_0.a.c, false, arg_0.a.c.b);
    return 0u;
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_4(all(vec3<bool>(true, all(vec2<bool>(true, false)), true)), 2550i, Struct_2(Struct_1(~min(8089u, global1.x)), 22415i, arg_0, vec4<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, true), true)), any(vec2<bool>(true, true)), !any(vec3<bool>(false, false, false)), true)), false, ~(min(46952i, -2147483647i) & (u_input.b.x << (u_input.c % 32u))) ^ (i32(-1i) * -1i));
    let var_1 = ~11644u;
    global1 = u_input.d;
    global0 = countOneBits(_wgslsmith_mult_i32(_wgslsmith_mult_i32(46332i, u_input.a.x), abs(u_input.a.x))) & var_0.e;
    let var_2 = _wgslsmith_add_vec4_u32(~u_input.d << (min(vec4<u32>(_wgslsmith_sub_u32(arg_0.a, 1u), var_1 & 4294967295u, ~arg_0.a, var_1), abs(_wgslsmith_sub_vec4_u32(u_input.d, vec4<u32>(var_0.c.a.a, var_1, 10212u, 0u)))) % vec4<u32>(32u)), (u_input.d & vec4<u32>(1u, var_1, 61369u, 17623u)) ^ vec4<u32>(global1.x, var_1, 1u, ~firstLeadingBit(arg_0.a)));
    return Struct_1(~_wgslsmith_add_u32(_wgslsmith_mod_u32(var_2.x, ~32773u), 1u));
}

fn func_1(arg_0: f32, arg_1: u32) -> i32 {
    let var_0 = Struct_3(!(!any(vec3<bool>(false, true, true))), Struct_2(func_3(Struct_1(func_2(Struct_5(Struct_4(false, u_input.b.x, Struct_2(Struct_1(global1.x), -28002i, Struct_1(4294967295u), vec4<bool>(true, false, false, true)), false, u_input.b.x)), 1161f))), _wgslsmith_mult_i32(-(~2147483647i), u_input.b.x), func_3(func_3(Struct_1(4294967295u))), !vec4<bool>(true, any(vec2<bool>(true, true)), all(vec4<bool>(true, true, true, true)), true)), func_3(func_3(func_3(Struct_1(u_input.c)))), ~u_input.a.x);
    var var_1 = Struct_5(Struct_4(!var_0.b.d.x, var_0.b.b, var_0.b, true, ~2147483647i));
    var var_2 = var_1.a.b;
    var_2 = countOneBits(_wgslsmith_dot_vec4_i32((vec4<i32>(-1i) * -vec4<i32>(var_1.a.e, var_1.a.e, u_input.b.x, -15637i)) ^ -vec4<i32>(2147483647i, var_1.a.b, 11794i, u_input.a.x), ~firstLeadingBit(vec4<i32>(-2147483647i, var_0.b.b, var_0.d, 1i)) | (_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, var_0.d, var_1.a.b, var_1.a.e), vec4<i32>(var_0.d, 2147483647i, 2147483647i, 21395i)) ^ _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.a.c.b, var_0.d, 8324i, var_1.a.c.b), vec4<i32>(-2147483647i, -1i, 59166i, var_0.b.b)))));
    var var_3 = var_1.a.c;
    return ~_wgslsmith_dot_vec2_i32(u_input.a.yx, (-u_input.b << (select(u_input.d.yz, vec2<u32>(u_input.c, u_input.c), var_1.a.c.d.xw) % vec2<u32>(32u))) | u_input.a.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(((i32(-1i) * -32117i) & _wgslsmith_mod_i32(func_1(801f, 54787u), 2147483647i)) >= max(1i, 1i), Struct_2(func_3(func_3(Struct_1(4294967295u))), _wgslsmith_div_i32(23264i, u_input.a.x), func_3(Struct_1(global1.x)), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true)))), func_3(Struct_1(52651u)), -1i >> (global1.x % 32u));
    global1 = ~vec4<u32>(37140u, var_0.b.a.a, _wgslsmith_sub_u32(4294967295u, var_0.b.c.a), _wgslsmith_sub_u32(func_2(Struct_5(Struct_4(var_0.a, 15983i, var_0.b, var_0.a, -11653i)), _wgslsmith_f_op_f32(abs(-297f))), 0u));
    var_0 = Struct_3(true, Struct_2(var_0.b.a, reverseBits(37474i), func_3(Struct_1(reverseBits(var_0.b.c.a))), !var_0.b.d), func_3(Struct_1(_wgslsmith_mult_u32(~0u, global1.x))), _wgslsmith_add_i32(_wgslsmith_sub_i32((u_input.a.x | u_input.b.x) >> (var_0.b.c.a % 32u), var_0.d), countOneBits(u_input.a.x)));
    let var_1 = global1.wxy | ~(~(~(~vec3<u32>(global1.x, global1.x, u_input.d.x))));
    var var_2 = select(vec4<bool>(false, !(var_0.b.d.x & all(var_0.b.d.yx)), var_0.a, all(!var_0.b.d)), vec4<bool>(all(vec3<bool>(var_1.x <= 0u, select(true, var_0.b.d.x, true), any(vec3<bool>(true, var_0.a, true)))), true, var_0.a, false), var_0.b.d.x);
    var var_3 = Struct_2(Struct_1(11347u), 13309i, var_0.b.c, select(var_0.b.d, var_0.b.d, var_2.x));
    var var_4 = Struct_4(_wgslsmith_div_f32(_wgslsmith_div_f32(-321f, _wgslsmith_f_op_f32(575f - 1292f)), _wgslsmith_div_f32(-1363f, -1627f)) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(703f, -606f)))) + 1f), _wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, var_3.b & u_input.a.x), u_input.b), Struct_2(Struct_1(106622u), ~_wgslsmith_div_i32(-1i, 16167i), Struct_1(~reverseBits(2170u)), var_3.d), var_3.d.x, 1i);
    var var_5 = 1u;
    var var_6 = _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(var_0.b.b, 32253i, abs(_wgslsmith_sub_i32(var_3.b, u_input.b.x & -2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(~var_1, -select(vec4<i32>(-13932i, var_4.e, -2147483647i, 1i), -vec4<i32>(var_4.c.b, 1i, 0i, 62336i), !(var_3.b > -17961i)), reverseBits(abs(vec2<u32>(0u, 1u))), firstLeadingBit(~vec3<u32>(0u, 5570u, 288u) << ((abs(global1.xzz) >> (u_input.d.xzx % vec3<u32>(32u))) % vec3<u32>(32u))));
}

