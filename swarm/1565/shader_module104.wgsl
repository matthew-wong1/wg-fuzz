struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
    c: vec2<bool>,
    d: Struct_3,
    e: bool,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_2,
    c: Struct_1,
    d: Struct_3,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

var<private> global1: array<Struct_3, 11>;

var<private> global2: array<u32, 16> = array<u32, 16>(1u, 0u, 0u, 1u, 1u, 0u, 1925u, 67672u, 1u, 1u, 4294967295u, 0u, 0u, 16300u, 1u, 1u);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_3) -> i32 {
    let var_0 = arg_2.b;
    let var_1 = u_input.c;
    let var_2 = all(vec2<bool>(arg_1.a, all(select(!vec3<bool>(arg_1.a, true, false), !vec3<bool>(true, false, arg_1.a), select(vec3<bool>(arg_2.b.a, false, true), vec3<bool>(arg_2.a.a, var_0.a, arg_2.c.a), vec3<bool>(arg_2.c.a, false, arg_1.a))))));
    var var_3 = Struct_3(var_1);
    var var_4 = arg_3;
    return -(~(-15231i) >> (var_4.a % 32u)) | 1i;
}

fn func_2() -> vec3<i32> {
    global1 = array<Struct_3, 11>();
    var var_0 = func_3(~(-1i), Struct_1(true), Struct_2(Struct_1(_wgslsmith_sub_u32(69259u, 1u) == (u_input.b ^ 97131u)), Struct_1(any(vec2<bool>(true, true))), Struct_1(true)), global1[_wgslsmith_index_u32(countOneBits(~0u), 11u)]);
    let var_1 = _wgslsmith_mod_i32(_wgslsmith_add_i32(20689i, -2147483647i), ~(-max(firstTrailingBit(0i), 1i)));
    let var_2 = false;
    let var_3 = Struct_5(!(!select(vec4<bool>(false, var_2, var_2, true), !vec4<bool>(true, var_2, var_2, false), true)), Struct_2(Struct_1(any(select(vec4<bool>(var_2, false, false, true), vec4<bool>(true, var_2, false, true), false))), Struct_1(true), Struct_1(any(select(vec4<bool>(false, var_2, true, true), vec4<bool>(var_2, false, false, var_2), vec4<bool>(false, var_2, true, var_2))))), Struct_1(true), Struct_3(1u), Struct_1(all(vec4<bool>(all(vec3<bool>(var_2, var_2, var_2)), all(vec4<bool>(true, false, var_2, var_2)), var_2, true))));
    return -(firstLeadingBit(~_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_1, var_1), vec3<i32>(1383i, var_1, var_1))) << (~((vec3<u32>(var_3.d.a, 0u, 4294967295u) ^ vec3<u32>(global2[_wgslsmith_index_u32(0u, 16u)], u_input.b, var_3.d.a)) >> (~vec3<u32>(96717u, var_3.d.a, u_input.c) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1768f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_vec2_f32(vec2<f32>(2060f, -588f), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1326f, -521f), vec2<f32>(1273f, 1160f)))))));
    let var_1 = true;
    global2 = array<u32, 16>();
    var var_2 = func_2();
    var_2 = -(~(~select(abs(vec3<i32>(1i, var_2.x, -24578i)), vec3<i32>(7832i, -55758i, var_2.x), true)));
    return Struct_1(any(select(!select(vec4<bool>(arg_0, var_1, arg_0, arg_0), vec4<bool>(arg_0, arg_0, arg_0, arg_0), var_1), !vec4<bool>(false, arg_0, arg_0, var_1), false)));
}

fn func_4(arg_0: Struct_1, arg_1: u32, arg_2: bool, arg_3: Struct_5) -> Struct_1 {
    let var_0 = _wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(747f, -756f))))));
    var var_1 = Struct_3(_wgslsmith_mod_u32(79623u, 41259u));
    let var_2 = Struct_2(Struct_1(true), arg_0, arg_0);
    var var_3 = Struct_4(Struct_1(true), false, !select(vec2<bool>(arg_0.a, arg_3.c.a), arg_3.a.wx, arg_3.a.yx), Struct_3(1884u), false);
    let var_4 = _wgslsmith_f_op_f32(min(-809f, var_0));
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> Struct_5 {
    let var_0 = _wgslsmith_sub_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(1u, ~global2[_wgslsmith_index_u32(u_input.a.x, 16u)]), min(~0u, min(global2[_wgslsmith_index_u32(0u, 16u)], u_input.b))), 16u)], _wgslsmith_mod_u32(44619u, firstTrailingBit(abs(0u))), global2[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(2969u, u_input.c), 16u)], 4294967295u, _wgslsmith_clamp_u32(0u, 81032u, 0u)), 16u)], ~abs(0u)), countOneBits(~(firstLeadingBit(vec4<u32>(39402u, u_input.c, u_input.a.x, 1u)) << (min(vec4<u32>(global2[_wgslsmith_index_u32(26716u, 16u)], 1u, u_input.c, global2[_wgslsmith_index_u32(1u, 16u)]), vec4<u32>(u_input.b, 43007u, 1u, 4294967295u)) % vec4<u32>(32u)))));
    var var_1 = Struct_2(arg_2, arg_2, arg_2);
    let var_2 = !arg_2.a;
    let var_3 = Struct_4(func_1(arg_2.a), all(!vec3<bool>(!arg_2.a, var_0.x != 1u, true)), !vec2<bool>(false, 31424u <= var_0.x), Struct_3(~(~4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3) - _wgslsmith_f_op_f32(f32(-1f) * -642f)), arg_3) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(266f * -515f)) * arg_3));
    return Struct_5(!select(vec4<bool>(false, !arg_1.x, !arg_1.x, any(vec3<bool>(true, var_1.a.a, arg_2.a))), vec4<bool>(true, false, var_3.d.a >= 56026u, var_3.a.a & var_3.c.x), !var_3.c.x), Struct_2(var_1.b, Struct_1(!var_3.e), func_1(!arg_1.x)), func_4(Struct_1(true), ~(~global2[_wgslsmith_index_u32(var_3.d.a, 16u)]), any(vec2<bool>(func_1(true).a, true)), Struct_5(select(vec4<bool>(false, arg_1.x, var_3.a.a, arg_2.a), select(vec4<bool>(true, true, arg_2.a, arg_2.a), vec4<bool>(var_1.c.a, true, false, false), vec4<bool>(true, var_3.e, false, true)), arg_1.x), Struct_2(Struct_1(true), func_4(arg_2, var_0.x, arg_1.x, Struct_5(vec4<bool>(false, var_2, false, false), Struct_2(Struct_1(var_1.b.a), Struct_1(true), var_1.a), arg_2, global1[_wgslsmith_index_u32(69721u, 11u)], Struct_1(var_1.b.a))), func_1(arg_1.x)), func_4(arg_2, 1u, !arg_1.x, Struct_5(vec4<bool>(var_2, true, true, true), Struct_2(var_3.a, var_1.c, var_1.a), var_1.c, global1[_wgslsmith_index_u32(4894u, 11u)], Struct_1(arg_1.x))), Struct_3(var_0.x), Struct_1(true))), Struct_3(firstTrailingBit(_wgslsmith_dot_vec3_u32(var_0.zzy, ~var_0.zwy))), Struct_1(!(!var_1.b.a)));
}

fn func_6(arg_0: vec3<u32>, arg_1: Struct_5, arg_2: f32, arg_3: vec4<f32>) -> Struct_1 {
    let var_0 = Struct_3(arg_0.x | 0u);
    global2 = array<u32, 16>();
    let var_1 = Struct_3(23684u);
    var var_2 = arg_1.d;
    let var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_3.x, arg_2, 1713f)), _wgslsmith_f_op_vec3_f32(-arg_3.zzz), any(vec3<bool>(arg_1.b.b.a, true, true))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(arg_2 * 459f), _wgslsmith_f_op_f32(max(arg_3.x, -216f)), _wgslsmith_f_op_f32(152f - arg_3.x))))) - arg_3.xyx);
    return func_4(Struct_1(!arg_1.c.a), 19929u, !arg_1.e.a, Struct_5(vec4<bool>((false || arg_1.e.a) | (arg_1.a.x | arg_1.b.a.a), !all(vec2<bool>(true, false)), all(vec3<bool>(arg_1.a.x, false, arg_1.e.a)) | any(vec4<bool>(false, arg_1.b.a.a, arg_1.c.a, arg_1.e.a)), func_5(_wgslsmith_mult_i32(-24125i, 46251i), select(arg_1.a.xx, arg_1.a.yy, false), func_4(arg_1.e, 6676u, arg_1.a.x, Struct_5(arg_1.a, arg_1.b, Struct_1(false), var_1, Struct_1(false))), _wgslsmith_f_op_f32(max(var_3.x, 1609f))).b.b.a), arg_1.b, Struct_1(all(arg_1.a)), var_1, Struct_1(_wgslsmith_div_f32(arg_2, 374f) >= _wgslsmith_f_op_f32(abs(762f)))));
}

fn func_7(arg_0: Struct_1) -> Struct_1 {
    global2 = array<u32, 16>();
    global1 = array<Struct_3, 11>();
    let var_0 = Struct_2(Struct_1(any(select(vec3<bool>(true, false, arg_0.a), func_5(-21392i, vec2<bool>(arg_0.a, arg_0.a), arg_0, -1185f).a.wwy, vec3<bool>(arg_0.a, false, true)))), Struct_1(false), Struct_1(true));
    var var_1 = vec2<i32>(48462i, 1i);
    var_1 = vec2<i32>(-1i << (_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(23238u, 1u), 16u)], firstTrailingBit(u_input.a.x) ^ u_input.b) % 32u), var_1.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(169f)))) - -2080f) == -1509f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(func_6(~(vec3<u32>(global2[_wgslsmith_index_u32(u_input.b, 16u)], 0u, global2[_wgslsmith_index_u32(7784u, 16u)]) >> (vec3<u32>(88619u, 4294967295u, u_input.a.x) % vec3<u32>(32u))) ^ abs(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(3707u, 16u)], 16u)], u_input.b, 0u)), func_5(0i, vec2<bool>(true, true), func_4(func_1(true), ~global2[_wgslsmith_index_u32(1u, 16u)], false, Struct_5(vec4<bool>(false, true, true, false), Struct_2(Struct_1(false), Struct_1(true), Struct_1(false)), Struct_1(false), global1[_wgslsmith_index_u32(u_input.b, 11u)], Struct_1(true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1473f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1146f, -2253f)) - _wgslsmith_f_op_f32(1075f + -520f)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(501f, 892f, 234f, -1347f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-337f, -300f, 1000f, 235f)))))));
    let var_1 = ~abs(select(vec3<u32>(global2[_wgslsmith_index_u32(54474u, 16u)], u_input.a.x, 12577u) ^ vec3<u32>(u_input.b, 24801u, global2[_wgslsmith_index_u32(1813u, 16u)]), abs(vec3<u32>(48125u, 4294967295u, global2[_wgslsmith_index_u32(114962u, 16u)])), func_5(2147483647i, vec2<bool>(var_0.a, true), Struct_1(var_0.a), -614f).a.zyx)) | vec3<u32>(min(~0u, 4294967295u), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 9746u, global2[_wgslsmith_index_u32(1u, 16u)]), vec3<u32>(4294967295u, 5952u, global2[_wgslsmith_index_u32(u_input.b, 16u)])), _wgslsmith_mod_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31695u, 16u)], 16u)], 2782u)) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.c, 4294967295u), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, u_input.c, global2[_wgslsmith_index_u32(49947u, 16u)]), vec3<u32>(u_input.c, global2[_wgslsmith_index_u32(4294967295u, 16u)], 0u))), u_input.a.x);
    var var_2 = Struct_4(Struct_1(!(var_0.a | false) || var_0.a), all(vec3<bool>(true, true, true)), select(select(select(func_5(1i, vec2<bool>(false, var_0.a), var_0, -285f).a.zy, vec2<bool>(true, var_0.a), func_5(0i, vec2<bool>(false, var_0.a), Struct_1(false), 595f).a.zx), vec2<bool>(var_0.a, true), vec2<bool>(true, true)), vec2<bool>(true, true), vec2<bool>(true, true)), Struct_3(~_wgslsmith_sub_u32(21749u, ~var_1.x)), all(!(!select(vec4<bool>(false, true, var_0.a, true), vec4<bool>(true, false, false, var_0.a), var_0.a))));
    var var_3 = Struct_4(Struct_1(1u < ~_wgslsmith_div_u32(var_1.x, var_2.d.a)), false, !var_2.c, Struct_3(global2[_wgslsmith_index_u32(reverseBits(15807u), 16u)]), all(vec4<bool>(true, var_2.a.a, !(!var_0.a), true)));
    var_2 = Struct_4(var_0, !(var_3.e | (_wgslsmith_f_op_f32(step(-251f, 143f)) > _wgslsmith_f_op_f32(f32(-1f) * -2011f))), select(var_3.c, !select(select(vec2<bool>(var_2.b, false), vec2<bool>(true, true), var_2.c.x), !var_2.c, func_5(0i, var_3.c, Struct_1(var_3.a.a), -1000f).a.zy), var_0.a), var_2.d, any(select(!(!vec4<bool>(false, true, var_3.c.x, true)), select(select(vec4<bool>(var_0.a, true, var_2.a.a, var_3.c.x), vec4<bool>(var_2.c.x, var_2.c.x, var_2.c.x, true), false), func_5(33767i, var_3.c, var_3.a, -1177f).a, !vec4<bool>(true, false, var_3.a.a, var_3.b)), all(var_2.c))));
    let var_4 = func_5(abs(-1i >> (_wgslsmith_dot_vec3_u32(var_1, reverseBits(vec3<u32>(global2[_wgslsmith_index_u32(0u, 16u)], 0u, var_3.d.a))) % 32u)), func_5(30836i, select(vec2<bool>(var_2.e, true), vec2<bool>(true, func_4(var_2.a, 27761u, false, Struct_5(vec4<bool>(var_3.c.x, var_2.a.a, var_3.b, false), Struct_2(var_0, var_2.a, Struct_1(var_3.b)), var_0, var_3.d, Struct_1(var_3.a.a))).a), !var_3.c), Struct_1(!var_3.c.x & var_3.a.a), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1850f, 137f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1133f, 1050f))))).a.zx, Struct_1(any(vec4<bool>(var_0.a, false, var_3.c.x, true)) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f * 1596f))).d;
    var var_5 = Struct_2(func_7(var_0), func_6(~vec3<u32>(~28578u, reverseBits(12780u), ~41345u), Struct_5(!select(vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(var_0.a, false, true, var_0.a), vec4<bool>(false, true, var_0.a, true)), func_5(_wgslsmith_div_i32(-2147483647i, -1i), !var_2.c, var_3.a, 1222f).b, var_0, Struct_3(var_1.x), var_3.a), _wgslsmith_f_op_f32(step(127f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-522f - -1516f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-864f, -2654f, 634f, -131f) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(532f, 211f, -633f, 415f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-398f, 833f, 1142f, 662f), vec4<f32>(-1054f, 1000f, 179f, -1644f))))), Struct_1(!var_3.e));
    let x = u_input.a;
    s_output = StorageBuffer(-vec3<i32>(1i, 1i, 1i), vec3<i32>(-2147483647i, 0i, _wgslsmith_add_i32(select(_wgslsmith_mod_i32(-2147483647i, 57897i), -4473i, var_2.a.a || var_2.a.a), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, -59816i) >> (vec3<u32>(global2[_wgslsmith_index_u32(var_4.a, 16u)], 22730u, global2[_wgslsmith_index_u32(33140u, 16u)]) % vec3<u32>(32u)), vec3<i32>(1i, 7621i, 42690i)))), _wgslsmith_f_op_f32(floor(1804f)));
}

