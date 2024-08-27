struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: bool,
    d: bool,
    e: bool,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 10> = array<Struct_3, 10>(Struct_3(Struct_1(vec3<i32>(7389i, -1i, 5754i), vec4<u32>(4294967295u, 81976u, 0u, 4294967295u), true, true, true)), Struct_3(Struct_1(vec3<i32>(0i, 43484i, -1i), vec4<u32>(0u, 1u, 0u, 98193u), false, false, true)), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), vec4<u32>(8037u, 56198u, 791u, 4294967295u), true, true, true)), Struct_3(Struct_1(vec3<i32>(i32(-2147483648), -1i, -2582i), vec4<u32>(4294967295u, 48447u, 83223u, 54652u), false, false, false)), Struct_3(Struct_1(vec3<i32>(2147483647i, i32(-2147483648), 0i), vec4<u32>(69440u, 15271u, 1u, 34631u), false, true, true)), Struct_3(Struct_1(vec3<i32>(1i, -63890i, 4372i), vec4<u32>(4294967295u, 4294967295u, 11277u, 4294967295u), true, true, false)), Struct_3(Struct_1(vec3<i32>(-54265i, 14856i, 24385i), vec4<u32>(573u, 17535u, 19220u, 4611u), false, true, false)), Struct_3(Struct_1(vec3<i32>(28521i, -17906i, -52150i), vec4<u32>(65348u, 48237u, 2251u, 0u), false, true, false)), Struct_3(Struct_1(vec3<i32>(2147483647i, -21623i, -15381i), vec4<u32>(4294967295u, 1u, 1u, 7560u), true, true, false)), Struct_3(Struct_1(vec3<i32>(2147483647i, 16922i, -23448i), vec4<u32>(16549u, 56159u, 15292u, 1u), true, true, false)));

var<private> global1: Struct_1 = Struct_1(vec3<i32>(-4666i, 0i, 2147483647i), vec4<u32>(4294967295u, 1u, 84116u, 0u), false, true, true);

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec3<i32> {
    global0 = array<Struct_3, 10>();
    let var_0 = global1.b.zxw;
    global0 = array<Struct_3, 10>();
    var var_1 = select(vec4<bool>(global1.d, !all(!vec4<bool>(global1.e, true, true, true)), arg_0.a.b.x == firstTrailingBit(_wgslsmith_dot_vec3_u32(global1.b.xxx, arg_0.a.b.yzy)), !arg_0.a.c), !select(vec4<bool>(arg_0.a.c | arg_0.a.e, true, arg_0.a.c, !global1.c), !vec4<bool>(false, true, arg_0.a.e, true), abs(u_input.a) <= 0u), !select(vec4<bool>(true, any(vec2<bool>(global1.c, false)), all(vec3<bool>(global1.e, true, false)), !arg_0.a.c), select(select(vec4<bool>(true, false, arg_0.a.d, false), vec4<bool>(true, global1.e, false, arg_0.a.c), true), select(vec4<bool>(false, true, true, arg_0.a.c), vec4<bool>(global1.d, false, false, global1.d), vec4<bool>(false, false, false, true)), true), select(select(vec4<bool>(false, arg_0.a.c, global1.d, false), vec4<bool>(arg_0.a.c, arg_0.a.d, true, global1.d), false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    var var_2 = arg_0.a.a;
    return vec3<i32>(0i, 4843i, var_2.x);
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: vec3<i32>) -> vec3<bool> {
    let var_0 = vec3<i32>(min(~u_input.b.x, -2147483647i), global1.a.x ^ firstLeadingBit(0i), arg_2.x);
    let var_1 = min(u_input.a, _wgslsmith_mult_u32(1u, ~_wgslsmith_add_u32(_wgslsmith_add_u32(78727u, arg_0.x), reverseBits(1546u))));
    var var_2 = Struct_1(max(func_3(Struct_3(Struct_1(vec3<i32>(u_input.b.x, -2147483647i, 56122i), vec4<u32>(26107u, 0u, 4294967295u, var_1), global1.d, global1.e, false)), ~_wgslsmith_dot_vec2_u32(arg_0.xx, arg_0.zx)), global1.a), ~_wgslsmith_div_vec4_u32(arg_0, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(global1.b, global1.b), arg_0 ^ vec4<u32>(u_input.a, 45173u, 39457u, arg_0.x))), global1.e, any(vec3<bool>(true, global1.e, true)), false);
    global1 = Struct_1(vec3<i32>(0i, -61220i, min(select(~global1.a.x, var_2.a.x, any(vec3<bool>(global1.d, global1.e, true))), max(u_input.b.x << (1u % 32u), countOneBits(-18671i)))), vec4<u32>(_wgslsmith_mod_u32(_wgslsmith_mod_u32(32381u, 39961u), _wgslsmith_mod_u32(arg_0.x, 4294967295u)), firstTrailingBit(10172u), ~var_2.b.x, ~global1.b.x), var_2.e, false, false & (any(select(vec2<bool>(true, global1.c), vec2<bool>(global1.c, var_2.d), global1.c)) | global1.e));
    let var_3 = any(vec2<bool>(false, any(select(vec2<bool>(var_2.e, true), vec2<bool>(global1.e, var_2.e), vec2<bool>(var_2.e, false))) | global1.c));
    return vec3<bool>(var_3, all(vec4<bool>(all(vec2<bool>(true, global1.d)), true, any(vec2<bool>(true, true)), select(any(vec2<bool>(false, var_2.e)), true, all(vec4<bool>(true, true, var_3, true))))), select(var_3, select(!(!var_2.d), true, _wgslsmith_f_op_f32(select(441f, 1152f, false)) > 1f), select(false, global1.b.x > 0u, !var_2.c) != false));
}

fn func_1(arg_0: i32, arg_1: vec3<bool>, arg_2: i32) -> f32 {
    var var_0 = !select(vec4<bool>(false, global1.d, arg_1.x, !arg_1.x), !(!(!vec4<bool>(arg_1.x, true, arg_1.x, false))), all(!func_2(global1.b, global1.a, global1.a)));
    var var_1 = countOneBits(global1.a);
    let var_2 = vec3<bool>(all(!(!select(vec4<bool>(var_0.x, false, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, true, arg_1.x), false))), !global1.d && func_2(global1.b, -vec3<i32>(u_input.b.x, 0i, var_1.x) | -global1.a, _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0, arg_0, u_input.b.x), vec3<i32>(0i, 1i, -1i)) << (global1.b.wwx % vec3<u32>(32u))).x, !(!var_0.x) || all(select(select(vec4<bool>(true, global1.d, true, false), vec4<bool>(global1.d, arg_1.x, arg_1.x, false), vec4<bool>(arg_1.x, var_0.x, true, true)), select(vec4<bool>(global1.e, false, arg_1.x, global1.d), vec4<bool>(false, var_0.x, global1.c, global1.c), false), vec4<bool>(true, global1.e, true, arg_1.x))));
    var_0 = select(select(vec4<bool>(any(vec3<bool>(arg_1.x, false, true)), true, true, true), select(vec4<bool>(any(var_2.zz), true, var_0.x && true, !global1.d), vec4<bool>(select(false, false, false), any(arg_1), !global1.d, true), true), all(vec2<bool>(false, true))), vec4<bool>(true, true, any(vec3<bool>(var_2.x, false, true)) && all(var_2.yz), all(vec3<bool>(true, all(vec2<bool>(var_2.x, global1.d)), false))), var_2.x || (u_input.b.x < arg_2));
    var var_3 = vec4<i32>(u_input.b.x, global1.a.x, -10569i, arg_2 & (-12393i ^ u_input.b.x));
    return _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-107f, _wgslsmith_f_op_f32(f32(-1f) * -793f)) - _wgslsmith_f_op_f32(round(399f))), 181f) - -1244f);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2) -> Struct_1 {
    global0 = array<Struct_3, 10>();
    let var_0 = all(vec2<bool>(arg_0.e || true, true));
    var var_1 = Struct_3(Struct_1(_wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(global1.a.x, arg_1.d, -37383i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 56019i, u_input.b.x), vec3<i32>(global1.a.x, u_input.b.x, -56996i))), vec3<i32>(arg_1.e.a.x, -global1.a.x, -1i)), global1.b, true, !all(select(arg_1.a.zx, arg_1.a.yz, var_0)), var_0));
    global1 = Struct_1(vec3<i32>(-(arg_1.d | global1.a.x), _wgslsmith_mod_i32(_wgslsmith_add_i32(-52295i, -8548i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.a.a.yz, global1.a.yx), vec2<i32>(-1i, arg_1.e.a.x))), -45927i), vec4<u32>(29730u, var_1.a.b.x, select(firstLeadingBit(1u), ~u_input.a, !(!var_0)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~vec3<u32>(var_1.a.b.x, 4061u, 0u), abs(global1.b.xwx)), global1.b.zxz)), all(vec3<bool>(arg_1.a.x, global1.b.x != (0u | arg_1.e.b.x), false)), false, any(vec4<bool>(var_1.a.a.x > _wgslsmith_dot_vec4_i32(vec4<i32>(-27793i, 19243i, arg_1.d, arg_1.d), vec4<i32>(1i, arg_1.b.a.x, -2147483647i, -23485i)), any(!arg_1.a.zy), !(-2147483647i >= arg_0.a.x), arg_0.e)));
    var var_2 = 4294967295u;
    return Struct_1(vec3<i32>(_wgslsmith_clamp_i32(arg_0.a.x, 1i >> (u_input.a % 32u), firstLeadingBit(arg_0.a.x)), countOneBits(~min(-2968i, 10957i)), -75386i), var_1.a.b, func_2(~vec4<u32>(var_1.a.b.x, ~0u, select(0u, arg_1.c, true), 20817u), vec3<i32>(1i << ((var_1.a.b.x | 4294967295u) % 32u), -48211i, abs(-35650i)), arg_0.a).x, !arg_1.a.x, any(select(vec4<bool>(true, false, select(var_1.a.c, false, true), true & var_0), !(!vec4<bool>(arg_1.e.e, false, true, false)), true)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_4(Struct_1(vec3<i32>(-1i) * -vec3<i32>(global1.a.x, 22031i, 2147483647i), global1.b, true, false, -916f == _wgslsmith_f_op_f32(func_1(-47904i, select(vec3<bool>(true, true, global1.c), vec3<bool>(global1.d, true, global1.c), vec3<bool>(global1.d, global1.d, global1.c)), u_input.b.x ^ u_input.b.x))), Struct_2(vec3<bool>((4294967295u < global1.b.x) && (global1.d | global1.c), !all(vec4<bool>(true, global1.d, global1.c, global1.c)), true), Struct_1(global1.a, ~(global1.b | global1.b), global1.c, global1.e, (1u << (global1.b.x % 32u)) <= _wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(60406u, 1u, 58056u, u_input.a))), _wgslsmith_add_u32(firstLeadingBit(~global1.b.x), ~_wgslsmith_dot_vec3_u32(global1.b.zzx, vec3<u32>(23910u, global1.b.x, u_input.a))), 0i, Struct_1(select(_wgslsmith_mult_vec3_i32(vec3<i32>(global1.a.x, 1i, global1.a.x), global1.a), -vec3<i32>(49889i, 54462i, global1.a.x), -24882i < global1.a.x), max(min(vec4<u32>(4294967295u, global1.b.x, global1.b.x, 4294967295u), vec4<u32>(u_input.a, global1.b.x, 1u, global1.b.x)), global1.b), false != global1.e, !(!global1.e), global1.c)));
    let var_0 = vec4<i32>(12082i, _wgslsmith_mult_i32(_wgslsmith_mod_i32(-global1.a.x << (select(0u, u_input.a, true) % 32u), 20677i), u_input.b.x), global1.a.x, abs(~u_input.b.x) | ~global1.a.x);
    var var_1 = all(select(!vec3<bool>(global1.d, false, !global1.d), func_2(min(vec4<u32>(u_input.a, 1u, 0u, 16296u), global1.b), reverseBits(var_0.zzw), ~var_0.zxy), global1.e));
    var var_2 = func_4(Struct_1(select(reverseBits(vec3<i32>(var_0.x, 1i, -1i) << (vec3<u32>(87971u, u_input.a, 1u) % vec3<u32>(32u))), (global1.a | global1.a) | min(global1.a, vec3<i32>(-22934i, -1i, var_0.x)), false), ~(~(vec4<u32>(global1.b.x, 90801u, global1.b.x, global1.b.x) & global1.b)), !(!(true && global1.c)), true, global1.c || true), Struct_2(select(vec3<bool>(true, false, global1.c), select(vec3<bool>(false, false, false), select(vec3<bool>(global1.c, global1.c, global1.d), vec3<bool>(global1.c, true, false), true), vec3<bool>(global1.c, true, global1.d)), func_4(Struct_1(vec3<i32>(global1.a.x, 71805i, var_0.x), global1.b, global1.d, global1.c, global1.d), Struct_2(vec3<bool>(global1.c, global1.c, global1.c), Struct_1(vec3<i32>(1i, -1i, -1i), vec4<u32>(1598u, 1u, 0u, global1.b.x), global1.d, global1.c, false), u_input.a, global1.a.x, Struct_1(var_0.yxy, vec4<u32>(u_input.a, 11095u, 32962u, 0u), false, global1.e, false))).d), Struct_1(-global1.a, firstTrailingBit(min(global1.b, vec4<u32>(global1.b.x, global1.b.x, 1u, 107690u))), !(!global1.c), global1.c, true), 1u, var_0.x, Struct_1(~(vec3<i32>(-1i, u_input.b.x, u_input.b.x) << (global1.b.xwy % vec3<u32>(32u))), vec4<u32>(_wgslsmith_dot_vec4_u32(global1.b, vec4<u32>(global1.b.x, u_input.a, u_input.a, u_input.a)), 4294967295u & u_input.a, 60502u, global1.b.x | 57486u), any(vec3<bool>(global1.e, true, true)), func_2(abs(global1.b), var_0.wxz, -vec3<i32>(u_input.b.x, var_0.x, -5502i)).x, global1.e)));
    var_2 = Struct_1(vec3<i32>(global1.a.x, 32087i, ~(~(-4999i))), ~vec4<u32>(1u, select(1u, 1u, true), ~abs(69164u), _wgslsmith_clamp_u32(var_2.b.x, global1.b.x, ~4294967295u)), false, true, _wgslsmith_div_f32(-651f, _wgslsmith_f_op_f32(1739f + _wgslsmith_f_op_f32(floor(537f)))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-2049f + _wgslsmith_f_op_f32(630f + -454f)) + _wgslsmith_f_op_f32(sign(-1813f))));
    var var_3 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -156f, 2041f, -1723f)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(612f, -202f, 1052f, -915f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(302f, -1000f, 354f, 432f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(325f, 332f, -194f, -233f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -251f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1283f)) * -1687f), -424f, _wgslsmith_f_op_f32(step(-586f, _wgslsmith_f_op_f32(f32(-1f) * -1159f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(min(select(var_2.b.zz, vec2<u32>(0u, u_input.a), func_2(var_2.b, vec3<i32>(u_input.b.x, global1.a.x, -17843i), vec3<i32>(1i, u_input.b.x, 1i)).xx), ~(~_wgslsmith_mod_vec2_u32(global1.b.yz, var_2.b.xw))), global1.a.x, abs(firstLeadingBit(vec3<u32>(32899u, 1u, u_input.a << (var_2.b.x % 32u)))), vec3<f32>(977f, var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_3.x + 420f) * _wgslsmith_f_op_f32(var_3.x - _wgslsmith_f_op_f32(var_3.x - var_3.x)))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_3.xz) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-862f, var_3.x) - var_3.yx)))));
}

