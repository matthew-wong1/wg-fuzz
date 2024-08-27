struct Struct_1 {
    a: vec2<u32>,
    b: vec4<u32>,
    c: bool,
    d: u32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec4<bool>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: i32,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: vec3<f32>,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: array<vec4<i32>, 27> = array<vec4<i32>, 27>(vec4<i32>(2147483647i, -31719i, 60563i, -52296i), vec4<i32>(1i, -17705i, 0i, -60276i), vec4<i32>(-32448i, 60945i, 21332i, 4367i), vec4<i32>(-8245i, -9781i, -49550i, -1i), vec4<i32>(0i, -6794i, i32(-2147483648), 16674i), vec4<i32>(1i, 25157i, 1i, 35930i), vec4<i32>(2147483647i, 1i, i32(-2147483648), -25263i), vec4<i32>(20179i, 2064i, i32(-2147483648), 2147483647i), vec4<i32>(0i, 2147483647i, 1i, -1i), vec4<i32>(-15760i, -1i, -442i, -45003i), vec4<i32>(3594i, 22094i, 1i, 0i), vec4<i32>(i32(-2147483648), 1i, 18090i, -1i), vec4<i32>(-6833i, -46589i, 33594i, i32(-2147483648)), vec4<i32>(0i, -34196i, -34033i, 2147483647i), vec4<i32>(i32(-2147483648), -40908i, 1i, i32(-2147483648)), vec4<i32>(0i, 23489i, -12282i, i32(-2147483648)), vec4<i32>(2147483647i, -86603i, 0i, 2147483647i), vec4<i32>(i32(-2147483648), 53080i, 21176i, 0i), vec4<i32>(2147483647i, 19044i, 0i, i32(-2147483648)), vec4<i32>(1i, 2147483647i, -34588i, -12621i), vec4<i32>(2147483647i, -19376i, -1i, 43339i), vec4<i32>(2786i, 1i, 2147483647i, 1i), vec4<i32>(2147483647i, 12178i, -1i, 30122i), vec4<i32>(55779i, 44525i, 1i, 42129i), vec4<i32>(1i, 1i, -1i, 0i), vec4<i32>(12574i, 5304i, -41189i, -29608i), vec4<i32>(-1i, 40392i, 1i, i32(-2147483648)));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    global0 = countOneBits(16526u);
    let var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(2217f, -1157f, 1219f, -2073f))))))), !(!vec4<bool>(!arg_0.c.x, true, all(vec4<bool>(arg_0.b.c, arg_0.c.x, arg_0.c.x, true)), arg_0.b.c | arg_0.c.x)));
    var var_1 = !vec4<bool>(true, var_0.b.x & select(arg_0.b.c, !var_0.b.x, any(arg_0.c)), true, true);
    var var_2 = all(!(!(!vec4<bool>(var_0.b.x, false, false, true))));
    let var_3 = Struct_4(Struct_2(vec4<f32>(var_0.a.x, var_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.a.x)) * -727f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(var_0.a.x, -519f, false)))), !(!(!var_0.b))));
    return _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.e, 1u), vec2<u32>(25675u, ~arg_0.b.b.x));
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> vec4<f32> {
    let var_0 = countOneBits(min(vec2<i32>(u_input.c << (arg_0 % 32u), i32(-1i) * -18557i), _wgslsmith_mod_vec2_i32(~(~vec2<i32>(u_input.a, -2147483647i)), vec2<i32>(~2147483647i, u_input.a))));
    global1 = array<vec4<i32>, 27>();
    global0 = ~arg_0;
    var var_1 = Struct_3(~min(_wgslsmith_sub_vec4_u32(vec4<u32>(37028u, arg_0, 1u, u_input.d.x), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, arg_0, u_input.e, 4294967295u), vec4<u32>(arg_0, 99781u, u_input.d.x, 4294967295u), vec4<u32>(60682u, u_input.b, arg_0, u_input.b))), vec4<u32>(53619u, u_input.b, min(13906u, arg_0), max(1u, u_input.d.x))), Struct_1(vec2<u32>(~37116u, ~u_input.b) >> (_wgslsmith_mod_vec2_u32(u_input.d & vec2<u32>(arg_0, u_input.e), ~vec2<u32>(1u, u_input.e)) % vec2<u32>(32u)), vec4<u32>(arg_0, func_3(Struct_3(vec4<u32>(38034u, 1u, arg_0, 4294967295u), Struct_1(vec2<u32>(4294967295u, u_input.b), vec4<u32>(66777u, 1u, arg_0, 16496u), arg_1.b.x, 0u, vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<bool>(false, arg_1.b.x, false))), 1391u, _wgslsmith_mult_u32(u_input.d.x, _wgslsmith_mod_u32(arg_0, u_input.b))), !(false | arg_1.b.x), countOneBits(_wgslsmith_mult_u32(~u_input.e, countOneBits(u_input.b))), _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, 1572i, var_0.x), vec3<i32>(var_0.x, var_0.x, var_0.x)), vec3<i32>(-1i) * -vec3<i32>(-2147483647i, 39092i, var_0.x), ~(vec3<i32>(u_input.c, -3213i, u_input.c) ^ vec3<i32>(1i, var_0.x, u_input.c)))), arg_1.b.wyx);
    let var_2 = var_1.b;
    return arg_1.a;
}

fn func_1() -> bool {
    global1 = array<vec4<i32>, 27>();
    var var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(func_2(u_input.e, Struct_2(vec4<f32>(857f, -150f, -600f, 275f), vec4<bool>(true, true, true, true)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1372f, 246f, -2863f, 1280f)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false), true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2195f, 788f, -1295f, -463f), vec4<f32>(-1377f, -1169f, 461f, 1205f)))))), select(true, true, any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true))))));
    var var_1 = ~1i;
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x)), _wgslsmith_f_op_f32(select(var_0.x, 865f, true)), _wgslsmith_f_op_f32(round(-1763f))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -889f, 586f, var_0.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-844f, 1416f, -680f, var_0.x)))))));
    var var_2 = Struct_4(Struct_2(vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(step(var_0.x, _wgslsmith_f_op_f32(var_0.x + var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.x)))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), false), vec4<bool>(true, true, true, true))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_5(func_1(), _wgslsmith_dot_vec2_i32(-vec2<i32>(select(u_input.a, 1i, false), 29007i), vec2<i32>(-2147483647i, ~u_input.c & (i32(-1i) * -46646i))), _wgslsmith_dot_vec2_i32(select(firstTrailingBit(vec2<i32>(-67724i, u_input.c)), abs(vec2<i32>(-11930i, u_input.a)), vec2<bool>(true, true)) & (-vec2<i32>(u_input.c, 2147483647i) | _wgslsmith_sub_vec2_i32(vec2<i32>(9287i, -2147483647i), vec2<i32>(u_input.c, u_input.a))), vec2<i32>(u_input.a, u_input.c)));
    let var_1 = Struct_5(func_1(), u_input.c << (52795u % 32u), _wgslsmith_sub_i32(var_0.c, u_input.c));
    let var_2 = !(!select(vec4<bool>(func_1(), var_1.a, var_1.a && true, true), select(select(vec4<bool>(var_1.a, var_1.a, true, true), vec4<bool>(false, true, true, true), var_0.a), vec4<bool>(false, false, true, true), select(vec4<bool>(false, false, var_0.a, var_1.a), vec4<bool>(true, var_1.a, false, var_1.a), var_0.a)), all(select(vec2<bool>(var_0.a, true), vec2<bool>(false, var_0.a), vec2<bool>(true, false)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), var_1.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(592f)), -548f, -1496f) * vec3<f32>(1f, 1f, 1f)), abs(u_input.e) << (44718u % 32u), vec2<i32>(i32(-1i) * -1i, u_input.a));
}

