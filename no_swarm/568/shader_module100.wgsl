struct Struct_1 {
    a: u32,
    b: vec2<u32>,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: f32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(26115u, vec2<u32>(1u, 3043u), vec2<i32>(-19766i, 2147483647i), vec4<bool>(false, true, true, true)), Struct_1(1u, vec2<u32>(30991u, 4294967295u), vec2<i32>(1i, 5781i), vec4<bool>(true, false, false, true)), Struct_1(31075u, vec2<u32>(0u, 5885u), vec2<i32>(2859i, 28785i), vec4<bool>(true, true, true, true)), Struct_1(48634u, vec2<u32>(33269u, 51755u), vec2<i32>(i32(-2147483648), -20869i), vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec2<u32>(26225u, 23166u), vec2<i32>(2147483647i, -18932i), vec4<bool>(false, false, true, false)), Struct_1(0u, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(-18055i, -43718i), vec4<bool>(true, true, false, false)), Struct_1(4294967295u, vec2<u32>(77219u, 88119u), vec2<i32>(0i, 0i), vec4<bool>(false, false, true, false)), Struct_1(12036u, vec2<u32>(50409u, 15872u), vec2<i32>(1i, i32(-2147483648)), vec4<bool>(true, false, true, true)), Struct_1(63309u, vec2<u32>(1u, 32689u), vec2<i32>(23131i, 15222i), vec4<bool>(false, false, true, false)), Struct_1(0u, vec2<u32>(4294967295u, 57749u), vec2<i32>(0i, 2147483647i), vec4<bool>(true, true, true, true)), Struct_1(1u, vec2<u32>(46338u, 79360u), vec2<i32>(-20098i, 19725i), vec4<bool>(true, false, true, false)), Struct_1(4294967295u, vec2<u32>(4294967295u, 12972u), vec2<i32>(-1i, -1i), vec4<bool>(true, true, false, false)), Struct_1(26363u, vec2<u32>(37344u, 4294967295u), vec2<i32>(51477i, -18479i), vec4<bool>(false, false, true, true)), Struct_1(53443u, vec2<u32>(4294967295u, 71778u), vec2<i32>(1i, -3135i), vec4<bool>(false, false, false, false)), Struct_1(0u, vec2<u32>(24298u, 1u), vec2<i32>(12535i, -1i), vec4<bool>(true, true, true, false)), Struct_1(34512u, vec2<u32>(91543u, 56931u), vec2<i32>(-10379i, 2147483647i), vec4<bool>(false, false, true, false)), Struct_1(4294967295u, vec2<u32>(4294967295u, 1u), vec2<i32>(-36730i, 27807i), vec4<bool>(false, true, false, true)), Struct_1(4294967295u, vec2<u32>(4294967295u, 4294967295u), vec2<i32>(i32(-2147483648), 14906i), vec4<bool>(false, false, false, false)), Struct_1(111151u, vec2<u32>(0u, 78606u), vec2<i32>(1i, -35053i), vec4<bool>(true, false, false, true)), Struct_1(64224u, vec2<u32>(56225u, 0u), vec2<i32>(2147483647i, 52285i), vec4<bool>(true, false, true, false)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_div_f32(1734f, -673f);
    let var_1 = Struct_1(1u, min(u_input.c, vec2<u32>(u_input.a, ~abs(u_input.a))), min(firstTrailingBit(_wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.b.ww, u_input.b.yx), max(u_input.b.xx, u_input.b.zx))), ~abs(~vec2<i32>(u_input.b.x, -41547i))), !vec4<bool>(any(vec2<bool>(true, true)), true, !any(vec3<bool>(false, true, true)), true));
    let var_2 = Struct_2(var_1, u_input.b.xw, Struct_1(_wgslsmith_dot_vec2_u32(var_1.b, vec2<u32>(~var_1.b.x, firstLeadingBit(20099u))), var_1.b, min(vec2<i32>(firstTrailingBit(var_1.c.x), min(0i, 33818i)), countOneBits(_wgslsmith_div_vec2_i32(vec2<i32>(var_1.c.x, var_1.c.x), vec2<i32>(var_1.c.x, u_input.b.x)))), vec4<bool>(!any(vec3<bool>(true, false, true)), all(!var_1.d), all(select(vec2<bool>(true, true), var_1.d.xy, var_1.d.xx)), true)));
    var var_3 = countOneBits(vec2<i32>((reverseBits(var_1.c.x) >> ((u_input.c.x << (var_1.a % 32u)) % 32u)) << (u_input.a % 32u), u_input.b.x >> ((_wgslsmith_sub_u32(22245u, var_1.a) | 71726u) % 32u)));
    let var_4 = min(~(~(~(~vec3<u32>(0u, var_1.b.x, 4294967295u)))), _wgslsmith_add_vec3_u32(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, var_1.a, var_1.a), vec3<u32>(var_2.c.a, var_1.b.x, var_1.b.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 0u), vec3<u32>(1u, 5014u, 1u) << (vec3<u32>(4294967295u, var_1.a, var_2.a.a) % vec3<u32>(32u)))) << (countOneBits(max(vec3<u32>(u_input.c.x, 65286u, u_input.a), vec3<u32>(var_2.c.b.x, 4294967295u, var_2.c.a))) % vec3<u32>(32u)));
    return !(!var_2.c.d.zzx);
}

fn func_4(arg_0: Struct_2, arg_1: vec3<bool>) -> vec4<u32> {
    return abs(vec4<u32>(countOneBits(2035u), ~18188u, reverseBits(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(1u, 49581u, u_input.c.x, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 0u, 51130u, 51246u), vec4<u32>(arg_0.a.b.x, 20958u, 22240u, u_input.c.x)))), ~u_input.c.x));
}

fn func_2(arg_0: Struct_2) -> i32 {
    var var_0 = Struct_1(~min(_wgslsmith_div_u32(28093u, ~u_input.c.x), arg_0.a.b.x), ~_wgslsmith_div_vec2_u32(~u_input.c | vec2<u32>(u_input.c.x, 76776u), u_input.c), vec2<i32>(_wgslsmith_add_i32(u_input.b.x, ~u_input.b.x >> (_wgslsmith_mult_u32(arg_0.a.b.x, u_input.c.x) % 32u)), -36176i), !arg_0.a.d);
    var_0 = global0[_wgslsmith_index_u32(1u, 20u)];
    var var_1 = func_4(arg_0, func_3());
    var var_2 = Struct_1(select(_wgslsmith_mod_u32(min(max(arg_0.a.a, 4294967295u), ~var_1.x), firstLeadingBit(func_4(arg_0, vec3<bool>(true, true, arg_0.a.d.x)).x)), arg_0.c.b.x, u_input.b.x <= var_0.c.x), var_1.yz, -vec2<i32>(abs(29546i), -33777i) ^ _wgslsmith_mult_vec2_i32(var_0.c ^ vec2<i32>(arg_0.c.c.x, -1i), vec2<i32>(arg_0.c.c.x, -arg_0.a.c.x)), var_0.d);
    var_0 = Struct_1(var_2.a, vec2<u32>(_wgslsmith_sub_u32(var_1.x, func_4(arg_0, var_0.d.zxy).x), ~countOneBits(u_input.c.x)), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(firstLeadingBit(arg_0.a.c)), firstTrailingBit(firstLeadingBit(vec2<i32>(23342i, var_0.c.x)))), ~vec2<i32>(-2147483647i, 19401i)), !arg_0.c.d);
    return u_input.b.x;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>, arg_2: vec2<bool>, arg_3: Struct_2) -> vec3<bool> {
    global0 = array<Struct_1, 20>();
    var var_0 = Struct_1(45204u, vec2<u32>(1u, ~_wgslsmith_mod_u32(reverseBits(1u), _wgslsmith_dot_vec4_u32(vec4<u32>(19115u, 9400u, 4294967295u, u_input.a), vec4<u32>(14350u, arg_3.a.a, 24727u, 4294967295u)))), vec2<i32>(abs(_wgslsmith_mod_i32(arg_3.b.x, ~u_input.b.x)), _wgslsmith_sub_i32(func_2(Struct_2(Struct_1(64516u, arg_0, u_input.b.xy, vec4<bool>(arg_2.x, true, false, true)), arg_3.c.c, Struct_1(0u, vec2<u32>(arg_3.a.b.x, 27921u), vec2<i32>(30164i, arg_3.b.x), vec4<bool>(true, false, true, false)))), abs(-17758i) ^ firstTrailingBit(arg_3.a.c.x))), vec4<bool>(all(arg_3.c.d.wxx), false, arg_1.x, false));
    let var_1 = true;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(-467f, -116f, arg_3.c.d.x))))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    let var_3 = 1u;
    return vec3<bool>(true, false, !func_3().x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 20>();
    var var_0 = select(!vec3<bool>(true, true, any(func_1(u_input.c, vec4<bool>(false, true, true, false), vec2<bool>(true, true), Struct_2(global0[_wgslsmith_index_u32(u_input.a, 20u)], vec2<i32>(u_input.b.x, u_input.b.x), Struct_1(0u, u_input.c, u_input.b.ww, vec4<bool>(true, true, false, true)))))), func_1(vec2<u32>(u_input.a, (u_input.c.x << (86818u % 32u)) & firstTrailingBit(u_input.c.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true)))), vec2<bool>(0u < _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(u_input.c.x, u_input.a)), u_input.a <= _wgslsmith_sub_u32(52624u, u_input.c.x)), Struct_2(Struct_1(_wgslsmith_mult_u32(u_input.c.x, u_input.c.x), ~vec2<u32>(u_input.c.x, u_input.c.x), -vec2<i32>(u_input.b.x, -1i), vec4<bool>(true, false, true, false)), select(u_input.b.yy, u_input.b.wy, select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false))), Struct_1(~u_input.c.x, ~u_input.c, countOneBits(vec2<i32>(0i, u_input.b.x)), vec4<bool>(true, true, true, true)))), !func_1(vec2<u32>(31556u << (0u % 32u), _wgslsmith_mod_u32(u_input.c.x, u_input.c.x)), vec4<bool>(true, true, true, true), func_3().xz, Struct_2(Struct_1(4294967295u, vec2<u32>(u_input.c.x, u_input.c.x), vec2<i32>(-2147483647i, 48317i), vec4<bool>(false, false, true, false)), vec2<i32>(u_input.b.x, u_input.b.x), global0[_wgslsmith_index_u32(~u_input.a, 20u)])));
    var var_1 = Struct_2(Struct_1(u_input.c.x, _wgslsmith_mult_vec2_u32(_wgslsmith_div_vec2_u32(countOneBits(u_input.c), countOneBits(u_input.c)), vec2<u32>(u_input.c.x & u_input.a, ~1u)), u_input.b.zw, select(select(select(vec4<bool>(true, var_0.x, true, false), vec4<bool>(false, false, var_0.x, false), vec4<bool>(var_0.x, false, false, false)), select(vec4<bool>(var_0.x, var_0.x, false, var_0.x), vec4<bool>(var_0.x, true, var_0.x, var_0.x), vec4<bool>(var_0.x, false, true, false)), vec4<bool>(false, var_0.x, false, var_0.x)), !vec4<bool>(var_0.x, false, false, false), false)), _wgslsmith_div_vec2_i32(vec2<i32>(_wgslsmith_div_i32(-u_input.b.x, -2147483647i ^ u_input.b.x), -43589i), -(~(~vec2<i32>(-8643i, 0i)))), Struct_1(_wgslsmith_sub_u32(~4294967295u, ~(~0u)), u_input.c, u_input.b.xw, !select(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, false, true, var_0.x), var_0.x), select(vec4<bool>(false, false, true, false), vec4<bool>(false, var_0.x, var_0.x, false), vec4<bool>(false, var_0.x, false, true)), !var_0.x)));
    let var_2 = false;
    var var_3 = !var_0.zx;
    let var_4 = ~_wgslsmith_mult_vec3_u32(func_4(Struct_2(Struct_1(103990u, var_1.c.b, vec2<i32>(10797i, -1i), var_1.c.d), _wgslsmith_add_vec2_i32(u_input.b.yx, u_input.b.zz), Struct_1(0u, u_input.c, vec2<i32>(-39040i, 0i), var_1.a.d)), var_1.c.d.ywz).zyx, vec3<u32>(~var_1.a.b.x, ~(~var_1.c.a), ~(~var_1.a.b.x)));
    var_1 = Struct_2(global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(u_input.a, _wgslsmith_sub_u32(17002u, var_4.x)), 20u)], var_1.c.c, var_1.a);
    let var_5 = Struct_1(15297u, min(vec2<u32>(0u, 4294967295u), var_1.a.b), u_input.b.zz, var_1.a.d);
    let var_6 = var_1.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, -249f, 1048f, -1329f)), ~u_input.b.x, 2441f, ~(reverseBits(var_6.c) ^ vec2<i32>(-2147483647i, -12412i)) & var_1.b);
}

