struct Struct_1 {
    a: u32,
    b: vec2<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: f32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: u32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<vec2<f32>, 16> = array<vec2<f32>, 16>(vec2<f32>(-1430f, -645f), vec2<f32>(295f, -1173f), vec2<f32>(-411f, -1000f), vec2<f32>(-181f, -125f), vec2<f32>(1523f, -480f), vec2<f32>(730f, 1198f), vec2<f32>(-1000f, 179f), vec2<f32>(206f, -382f), vec2<f32>(-202f, -1000f), vec2<f32>(552f, -218f), vec2<f32>(1777f, -175f), vec2<f32>(1598f, -2141f), vec2<f32>(-425f, 811f), vec2<f32>(-1000f, -704f), vec2<f32>(1000f, 1842f), vec2<f32>(1425f, 2004f));

var<private> global2: array<f32, 29>;

var<private> global3: array<i32, 17>;

var<private> global4: bool = true;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> i32 {
    var var_0 = u_input.b.x;
    global0 = 1u & _wgslsmith_dot_vec2_u32(~select(~vec2<u32>(0u, 28127u), ~vec2<u32>(6658u, 1u), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), vec2<u32>(_wgslsmith_mult_u32(1u, 53603u), 1u));
    let var_1 = abs(_wgslsmith_add_vec4_u32(~select(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(4294967295u, 29139u, 1u, 105897u), vec4<bool>(true, true, true, true)), ~vec4<u32>(1u, 1u, 1u, 1u)));
    let var_2 = select(countOneBits(u_input.b), ~_wgslsmith_mod_vec2_i32(~_wgslsmith_clamp_vec2_i32(u_input.b, vec2<i32>(global3[_wgslsmith_index_u32(1u, 17u)], 2147483647i), u_input.b), u_input.b), all(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), global2[_wgslsmith_index_u32(var_1.x, 29u)] <= global2[_wgslsmith_index_u32(27715u, 29u)]), true)));
    var var_3 = Struct_5(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -711f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(firstTrailingBit(var_1.x), 29u)])), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(var_1.x, 29u)], -179f)), _wgslsmith_f_op_f32(floor(-2048f))))), !any(vec3<bool>(true, false, true)), Struct_1(~(var_1.x ^ 1u), vec2<f32>(889f, _wgslsmith_div_f32(-327f, 1881f)), vec4<bool>(true, true, true, true))), var_1.x, _wgslsmith_sub_i32(~49902i | (global3[_wgslsmith_index_u32(var_1.x, 17u)] >> (var_1.x % 32u)), countOneBits(17160i)));
    return abs(firstLeadingBit(-41286i));
}

fn func_2(arg_0: i32, arg_1: Struct_3) -> Struct_5 {
    var var_0 = arg_1.d.b.x;
    var var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(select(u_input.a | arg_1.c.x, func_3(), all(vec2<bool>(true, false))), ~(-47442i) ^ (arg_0 | -43989i), _wgslsmith_sub_i32(2147483647i, 1i), -25722i), vec4<i32>(firstLeadingBit(arg_0 & arg_0), -1i, global3[_wgslsmith_index_u32(abs(~0u), 17u)], 0i));
    let var_2 = 2147483647i << (arg_1.a.d.a % 32u);
    return Struct_5(Struct_2(arg_1.d.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(809f)), _wgslsmith_f_op_f32(-1f)), any(vec2<bool>(arg_1.a.d.a >= arg_1.d.a, true)), arg_1.d), min(arg_1.d.a, reverseBits(1u)), arg_0);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<f32>) -> Struct_1 {
    var var_0 = func_2(10462i, Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global2[_wgslsmith_index_u32(383u, 29u)], arg_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(363f + arg_2.x), _wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(3376u, 29u)]))), true, Struct_1(1u, _wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(1u, 16u)]), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, false)))), 4294967295u, firstTrailingBit(~vec2<i32>(arg_0, -2147483647i)), Struct_1(reverseBits(~1u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2[_wgslsmith_index_u32(5359u, 29u)], arg_2.x)), vec4<bool>(true, true, true, -2240f < global2[_wgslsmith_index_u32(0u, 29u)]))));
    let var_1 = Struct_2(global1[_wgslsmith_index_u32(40478u, 16u)], arg_2.x, func_2(_wgslsmith_mult_i32(-arg_0, _wgslsmith_clamp_i32(1i, arg_1, -40646i) << ((1u & var_0.a.d.a) % 32u)), Struct_3(var_0.a, var_0.a.d.a, ~u_input.b ^ _wgslsmith_add_vec2_i32(u_input.b, vec2<i32>(global3[_wgslsmith_index_u32(var_0.b, 17u)], var_0.c)), var_0.a.d)).a.c, Struct_1(var_0.b << (firstTrailingBit(~21034u) % 32u), global1[_wgslsmith_index_u32(62820u, 16u)], select(var_0.a.d.c, vec4<bool>(true, true, any(var_0.a.d.c.xy), !var_0.a.d.c.x), any(vec3<bool>(true, true, var_0.a.c)))));
    var var_2 = ~select(vec3<i32>(-(~(-22917i)), -abs(arg_0), _wgslsmith_div_i32(i32(-1i) * -1i, arg_1)), -max(-vec3<i32>(10481i, var_0.c, 21434i), _wgslsmith_div_vec3_i32(vec3<i32>(arg_1, 2147483647i, arg_1), vec3<i32>(-21115i, 40708i, global3[_wgslsmith_index_u32(4294967295u, 17u)]))), vec3<bool>(true, _wgslsmith_f_op_f32(arg_2.x + -1785f) > global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.b, 4294967295u), 29u)], !(!var_1.c)));
    var var_3 = select(!vec4<bool>(true, true, !any(var_0.a.d.c.zw), all(!vec2<bool>(var_0.a.d.c.x, var_0.a.d.c.x))), func_2(_wgslsmith_mod_i32(_wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, arg_0), _wgslsmith_add_i32(global3[_wgslsmith_index_u32(var_0.a.d.a, 17u)], 1i)), -firstTrailingBit(var_2.x)), Struct_3(var_1, var_1.d.a, (vec2<i32>(var_0.c, -1i) & vec2<i32>(-1i, arg_0)) >> (abs(vec2<u32>(var_0.a.d.a, var_1.d.a)) % vec2<u32>(32u)), Struct_1(0u, _wgslsmith_f_op_vec2_f32(vec2<f32>(1010f, global2[_wgslsmith_index_u32(var_1.d.a, 29u)]) * vec2<f32>(var_0.a.a.x, var_1.a.x)), func_2(-1i, Struct_3(var_0.a, var_0.b, var_2.yx, Struct_1(39631u, global1[_wgslsmith_index_u32(1u, 16u)], var_0.a.d.c))).a.d.c))).a.d.c, !func_2(_wgslsmith_dot_vec4_i32(max(vec4<i32>(2147483647i, u_input.b.x, global3[_wgslsmith_index_u32(91420u, 17u)], var_0.c), vec4<i32>(arg_1, -46788i, global3[_wgslsmith_index_u32(var_1.d.a, 17u)], -16315i)), _wgslsmith_mod_vec4_i32(vec4<i32>(arg_1, arg_0, u_input.a, var_2.x), vec4<i32>(45278i, var_0.c, -34352i, 20810i))), Struct_3(var_0.a, 0u, var_2.xx, func_2(2147483647i, Struct_3(Struct_2(var_1.d.b, arg_2.x, var_1.c, var_1.d), var_0.a.d.a, vec2<i32>(30617i, u_input.a), Struct_1(var_1.d.a, vec2<f32>(var_0.a.a.x, arg_2.x), vec4<bool>(var_0.a.c, var_0.a.c, false, true)))).a.d)).a.d.c);
    var var_4 = Struct_5(func_2(func_3(), Struct_3(func_2(~arg_0, Struct_3(var_1, 4294967295u, vec2<i32>(-2147483647i, 1i), Struct_1(var_1.d.a, vec2<f32>(global2[_wgslsmith_index_u32(var_1.d.a, 29u)], 1000f), var_1.d.c))).a, 4294967295u, ~(~u_input.b), func_2(-12598i, Struct_3(var_1, 45211u, vec2<i32>(0i, 50104i), Struct_1(var_1.d.a, var_0.a.d.b, vec4<bool>(var_0.a.d.c.x, true, true, var_0.a.c)))).a.d)).a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b, 19570u, var_1.d.a) & (vec3<u32>(35198u, 37083u, var_0.a.d.a) >> (vec3<u32>(var_1.d.a, 0u, var_1.d.a) % vec3<u32>(32u))), _wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(var_0.b, 1u, 23694u), vec3<u32>(13497u, var_1.d.a, 14166u)), countOneBits(vec3<u32>(50860u, var_0.a.d.a, var_0.a.d.a)))) & var_1.d.a, arg_0);
    return Struct_1(var_0.a.d.a, _wgslsmith_f_op_vec2_f32(min(var_1.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.a.a.x + arg_2.x), _wgslsmith_f_op_f32(-var_1.d.b.x)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(arg_2.xy, vec2<f32>(128f, -527f)))))), func_2(~(_wgslsmith_mult_i32(75257i, var_0.c) ^ ~(-1i)), Struct_3(func_2(firstTrailingBit(var_4.c), Struct_3(var_0.a, var_1.d.a, vec2<i32>(1i, global3[_wgslsmith_index_u32(var_0.a.d.a, 17u)]), var_4.a.d)).a, 21482u, countOneBits(vec2<i32>(var_4.c, 20236i)), func_2(~9585i, Struct_3(var_4.a, 4294967295u, vec2<i32>(var_0.c, var_4.c), Struct_1(0u, vec2<f32>(237f, arg_2.x), var_4.a.d.c))).a.d)).a.d.c);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 16>();
    var var_0 = func_1(-u_input.b.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-251f, -660f, -106f))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-109f, global2[_wgslsmith_index_u32(var_0.a, 29u)], global2[_wgslsmith_index_u32(32690u, 29u)]), vec3<f32>(var_0.b.x, var_0.b.x, global2[_wgslsmith_index_u32(var_0.a, 29u)]))), _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], var_0.b.x, var_0.b.x)))))))), var_0.c, Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.b, var_0.b, func_1(12026i, -1i, vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], -1451f, global2[_wgslsmith_index_u32(4931u, 29u)])).c.yz)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global2[_wgslsmith_index_u32(4294967295u, 29u)], -256f), vec2<f32>(global2[_wgslsmith_index_u32(var_0.a, 29u)], global2[_wgslsmith_index_u32(var_0.a, 29u)]))))), var_0.b.x, true, func_2(-(2147483647i << (var_0.a % 32u)), Struct_3(Struct_2(global1[_wgslsmith_index_u32(1u, 16u)], 1321f, var_0.c.x, Struct_1(1u, global1[_wgslsmith_index_u32(1u, 16u)], vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x))), 0u, firstTrailingBit(u_input.b), Struct_1(var_0.a, vec2<f32>(var_0.b.x, 311f), var_0.c))).a.d));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -283f));
    let var_3 = func_2((func_2(0i, Struct_3(Struct_2(vec2<f32>(var_0.b.x, var_1.a.x), global2[_wgslsmith_index_u32(4294967295u, 29u)], true, Struct_1(var_1.c.d.a, var_0.b, var_1.b)), 9103u, u_input.b, var_1.c.d)).c ^ 2147483647i) & -1232i, Struct_3(func_2(u_input.b.x, Struct_3(func_2(73394i, Struct_3(Struct_2(vec2<f32>(282f, var_1.a.x), 1241f, var_0.c.x, var_1.c.d), var_0.a, u_input.b, Struct_1(var_1.c.d.a, var_1.c.a, var_0.c))).a, _wgslsmith_mult_u32(var_0.a, var_0.a), vec2<i32>(-8536i, u_input.b.x), var_1.c.d)).a, _wgslsmith_div_u32(_wgslsmith_clamp_u32(firstLeadingBit(var_1.c.d.a), var_1.c.d.a, abs(22552u)), var_0.a), abs(~vec2<i32>(u_input.a, -2147483647i)), var_1.c.d)).a.d.b;
    global2 = array<f32, 29>();
    var var_4 = vec2<bool>(true, func_2(global3[_wgslsmith_index_u32(~countOneBits(16355u), 17u)], Struct_3(var_1.c, 1u, -u_input.b, var_1.c.d)).a.d.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-236f, var_0.b.x) * var_1.c.d.b) * var_1.a.zz), _wgslsmith_f_op_vec2_f32(-vec2<f32>(583f, 868f)), !(!vec2<bool>(false, var_4.x))))), global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~379u, 25754u) & _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(var_1.c.d.a, var_1.c.d.a, 4294967295u, var_1.c.d.a), vec4<u32>(var_1.c.d.a, var_0.a, var_0.a, var_1.c.d.a)), vec4<u32>(var_1.c.d.a, var_1.c.d.a, var_0.a, var_0.a)), _wgslsmith_mod_u32(var_0.a, func_2(u_input.a, Struct_3(Struct_2(global1[_wgslsmith_index_u32(var_0.a, 16u)], var_3.x, false, Struct_1(var_0.a, vec2<f32>(1204f, 1272f), vec4<bool>(var_4.x, var_1.c.c, var_1.b.x, true))), var_1.c.d.a, vec2<i32>(u_input.b.x, -6776i), Struct_1(1u, vec2<f32>(var_3.x, 1685f), vec4<bool>(false, true, true, true)))).b), var_0.a), 29u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -819f), 2120f, var_3.x, -482f), 1880f);
}

