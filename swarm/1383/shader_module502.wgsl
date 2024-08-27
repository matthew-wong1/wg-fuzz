struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec3<f32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: f32,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 17> = array<vec2<f32>, 17>(vec2<f32>(939f, -1664f), vec2<f32>(-599f, 1681f), vec2<f32>(902f, 351f), vec2<f32>(-343f, -1039f), vec2<f32>(-400f, 1000f), vec2<f32>(463f, -592f), vec2<f32>(1147f, -1357f), vec2<f32>(1349f, 373f), vec2<f32>(-1157f, 182f), vec2<f32>(112f, -1000f), vec2<f32>(499f, -888f), vec2<f32>(-1564f, 278f), vec2<f32>(1724f, 1998f), vec2<f32>(1042f, 582f), vec2<f32>(-476f, 325f), vec2<f32>(319f, -476f), vec2<f32>(270f, -714f));

var<private> global1: array<f32, 30> = array<f32, 30>(479f, 535f, 118f, -1862f, -1453f, -793f, 227f, -259f, 674f, -608f, 890f, -418f, -1362f, -1082f, 1742f, -2405f, 2324f, 1320f, 477f, -1067f, 235f, -2226f, 1476f, -147f, -1000f, -731f, -257f, -609f, 1589f, -495f);

var<private> global2: array<Struct_2, 8> = array<Struct_2, 8>(Struct_2(vec3<u32>(6190u, 0u, 23054u), -1670f, -1i), Struct_2(vec3<u32>(0u, 1u, 38257u), 1299f, 2147483647i), Struct_2(vec3<u32>(20414u, 1u, 22561u), 1691f, 2147483647i), Struct_2(vec3<u32>(43699u, 1u, 0u), 106f, -1i), Struct_2(vec3<u32>(48306u, 0u, 0u), 1997f, -1i), Struct_2(vec3<u32>(1u, 0u, 15670u), 788f, 0i), Struct_2(vec3<u32>(18601u, 0u, 46999u), 1000f, 1i), Struct_2(vec3<u32>(4294967295u, 53826u, 4294967295u), -1000f, -4386i));

var<private> global3: i32 = 0i;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3() -> u32 {
    let var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(min(u_input.d, firstTrailingBit(vec3<u32>(49984u, 4294967295u, 21194u))), u_input.d), 30u)] - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1659f) * _wgslsmith_div_f32(global1[_wgslsmith_index_u32(~1996u, 30u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.d.yz), 30u)])))));
    var var_1 = vec3<bool>(all(select(vec2<bool>(true, true), select(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true)), vec2<bool>(false, false), vec2<bool>(false, false)), select(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)), vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(false, false), false)))), any(vec2<bool>(true, true)), false);
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0 - global1[_wgslsmith_index_u32(4294967295u, 30u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0, -1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -752f)))))));
    global3 = reverseBits(u_input.b);
    let var_3 = vec4<bool>(!var_1.x, false, false, false);
    return min(44738u, 15334u);
}

fn func_2(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: Struct_1) -> bool {
    return ~arg_3.d.x >= func_3();
}

fn func_4(arg_0: vec4<bool>, arg_1: vec2<u32>, arg_2: Struct_3) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.b, 626f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1070f)), _wgslsmith_f_op_f32(f32(-1f) * -1186f)), arg_0.x)));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~4294967295u, ~2405u), 8u)];
    var_0 = _wgslsmith_f_op_f32(1459f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(1262f, 843f) * _wgslsmith_f_op_f32(105f * _wgslsmith_f_op_f32(round(-342f)))));
    var var_2 = _wgslsmith_f_op_f32(abs(-667f));
    var var_3 = ~_wgslsmith_add_vec3_i32(select(-vec3<i32>(var_1.c, var_1.c, 0i), vec3<i32>(-35363i, u_input.c.x, -5955i), vec3<bool>(true, arg_2.b, false)) >> (vec3<u32>(~arg_1.x, ~4294967295u, 1u) % vec3<u32>(32u)), vec3<i32>(-1i) * -(~vec3<i32>(var_1.c, var_1.c, 2147483647i)));
    return arg_2;
}

fn func_5(arg_0: Struct_3) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(abs(-244f));
    global0 = array<vec2<f32>, 17>();
    global0 = array<vec2<f32>, 17>();
    global0 = array<vec2<f32>, 17>();
    var var_1 = Struct_1(vec4<i32>(-1i) * -_wgslsmith_sub_vec4_i32(reverseBits(vec4<i32>(2147483647i, u_input.a, 1i, arg_0.a.c)), select(vec4<i32>(u_input.a, u_input.c.x, arg_0.c, arg_0.a.c), vec4<i32>(arg_0.a.c, arg_0.a.c, 0i, -2147483647i), vec4<bool>(true, arg_0.b, arg_0.b, arg_0.b))), _wgslsmith_mod_i32(~_wgslsmith_mod_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(1i, arg_0.c, u_input.b), vec3<i32>(-1i, u_input.c.x, u_input.b))), min(arg_0.a.c, func_4(!vec4<bool>(arg_0.b, false, arg_0.d.x, arg_0.b), func_4(vec4<bool>(false, true, false, arg_0.b), vec2<u32>(4294967295u, u_input.d.x), Struct_3(arg_0.a, true, u_input.b, vec2<bool>(arg_0.b, arg_0.b), vec2<u32>(u_input.d.x, arg_0.e.x))).e, func_4(vec4<bool>(false, arg_0.d.x, arg_0.b, false), vec2<u32>(arg_0.e.x, arg_0.e.x), Struct_3(Struct_2(vec3<u32>(arg_0.e.x, u_input.d.x, arg_0.e.x), global1[_wgslsmith_index_u32(arg_0.a.a.x, 30u)], u_input.b), arg_0.b, 60973i, vec2<bool>(false, true), arg_0.a.a.xz))).c)), vec3<f32>(_wgslsmith_f_op_f32(abs(-636f)), _wgslsmith_f_op_f32(arg_0.a.b - var_0), global1[_wgslsmith_index_u32(arg_0.a.a.x ^ 1u, 30u)]), u_input.d.yx, select(vec4<u32>(arg_0.e.x | u_input.d.x, ~1u, countOneBits(arg_0.e.x), 1u), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_0.a.a.x, u_input.d.x, 38091u, u_input.d.x), vec4<u32>(u_input.d.x, u_input.d.x, u_input.d.x, arg_0.a.a.x) & vec4<u32>(arg_0.e.x, arg_0.e.x, u_input.d.x, 44937u)), vec4<bool>(func_4(vec4<bool>(arg_0.b, false, false, false), vec2<u32>(u_input.d.x, 57472u), Struct_3(arg_0.a, false, arg_0.a.c, vec2<bool>(arg_0.b, true), u_input.d.zz)).d.x, true, arg_0.d.x, arg_0.d.x != arg_0.d.x)) ^ vec4<u32>(~_wgslsmith_mult_u32(u_input.d.x, 0u), 4294967295u, _wgslsmith_div_u32(firstLeadingBit(18153u), u_input.d.x >> (4294967295u % 32u)), ~1u));
    return arg_0;
}

fn func_1(arg_0: bool, arg_1: i32) -> Struct_2 {
    global1 = array<f32, 30>();
    let var_0 = func_5(func_4(!vec4<bool>(true, func_2(vec2<i32>(arg_1, arg_1), vec2<bool>(false, false), vec4<u32>(1u, 4294967295u, u_input.d.x, u_input.d.x), Struct_1(vec4<i32>(u_input.a, u_input.a, arg_1, arg_1), 2147483647i, vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 30u)]), vec2<u32>(u_input.d.x, u_input.d.x), vec4<u32>(u_input.d.x, 33324u, u_input.d.x, u_input.d.x))), true, arg_0), ~select(vec2<u32>(u_input.d.x, 1u) >> (vec2<u32>(83812u, u_input.d.x) % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, u_input.d.x)), any(vec3<bool>(false, arg_0, arg_0))), Struct_3(Struct_2(u_input.d, _wgslsmith_f_op_f32(abs(848f)), 3556i), arg_0, abs(~(-1i)), vec2<bool>(true, true), u_input.d.zy)));
    let var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~(~max(var_0.a.a.x, 758u)), u_input.d.x), _wgslsmith_dot_vec3_u32(~var_0.a.a | u_input.d, vec3<u32>(_wgslsmith_add_u32(var_0.a.a.x, var_0.a.a.x), func_4(vec4<bool>(var_0.b, true, arg_0, true), u_input.d.yx, Struct_3(var_0.a, false, -3888i, var_0.d, vec2<u32>(u_input.d.x, var_0.e.x))).e.x, _wgslsmith_clamp_u32(47379u, 1u, 10906u))) ^ 1u), 17u)];
    let var_2 = Struct_3(var_0.a, func_5(var_0).b, -42605i, var_0.d, ~vec2<u32>(var_0.a.a.x, ~func_3()));
    global1 = array<f32, 30>();
    return func_4(!(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, arg_0, var_2.d.x), true)), ~u_input.d.yy, func_5(func_5(var_0))).a;
}

fn func_6(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: f32, arg_3: f32) -> i32 {
    global2 = array<Struct_2, 8>();
    var var_0 = arg_0.b;
    var var_1 = Struct_2(vec3<u32>(~countOneBits(0u), select(1u, ~(~u_input.d.x), true), 22511u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1[_wgslsmith_index_u32(39279u, 30u)]))), i32(-1i) * -arg_0.c);
    var var_2 = 1720f;
    var_1 = Struct_2((~var_1.a & ~(~u_input.d)) << (arg_0.a % vec3<u32>(32u)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 30u)] - _wgslsmith_f_op_f32(exp2(var_1.b))), firstLeadingBit(_wgslsmith_div_i32(-arg_0.c | var_1.c, ~_wgslsmith_mod_i32(-2147483647i, arg_0.c))));
    return abs(-82462i);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = select(-u_input.c.x & ~(u_input.b & -8940i), _wgslsmith_add_i32(_wgslsmith_sub_i32(~29309i << (~u_input.d.x % 32u), -36587i), func_6(func_1(all(vec2<bool>(false, true)), 2147483647i), vec2<i32>(~u_input.b, -u_input.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(52360u, 30u)], -1000f)) * -361f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 30u)])) + 101f))), false);
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-317f, _wgslsmith_div_f32(-263f, -678f), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], -581f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-231f, global1[_wgslsmith_index_u32(u_input.d.x, 30u)], 1000f) + vec3<f32>(global1[_wgslsmith_index_u32(0u, 30u)], -1450f, -284f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], global1[_wgslsmith_index_u32(1081u, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 30u)]) * vec3<f32>(global1[_wgslsmith_index_u32(40991u, 30u)], -274f, 1126f))))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], -236f, global1[_wgslsmith_index_u32(63102u, 30u)]), vec3<f32>(-1000f, -129f, global1[_wgslsmith_index_u32(u_input.d.x, 30u)])) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(667f, -525f, global1[_wgslsmith_index_u32(1343u, 30u)]), vec3<f32>(global1[_wgslsmith_index_u32(1u, 30u)], global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(u_input.d.x, 30u)])))) + _wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(49483u, 30u)], 1099f, global1[_wgslsmith_index_u32(41076u, 30u)]), vec3<f32>(1660f, -438f, -534f)), vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 30u)], -593f, -464f))), vec3<f32>(_wgslsmith_f_op_f32(-169f - func_5(Struct_3(global2[_wgslsmith_index_u32(4294967295u, 8u)], true, u_input.c.x, vec2<bool>(false, false), u_input.d.yz)).a.b), global1[_wgslsmith_index_u32(33907u, 30u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.d.x, 30u)] - _wgslsmith_f_op_f32(539f * 600f)))), _wgslsmith_dot_vec2_i32(u_input.c, u_input.c) <= _wgslsmith_dot_vec3_i32(min(vec3<i32>(u_input.a, 61014i, u_input.c.x), vec3<i32>(u_input.a, u_input.c.x, u_input.c.x)) | vec3<i32>(u_input.c.x, u_input.c.x, 34167i), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -47135i, u_input.b), vec3<i32>(u_input.a, u_input.b, -22128i)))));
    global2 = array<Struct_2, 8>();
    var var_1 = Struct_1(-_wgslsmith_add_vec4_i32(countOneBits(abs(vec4<i32>(-12922i, 22938i, -25420i, u_input.b))), abs(~vec4<i32>(u_input.a, 2147483647i, 0i, u_input.c.x))), u_input.b, _wgslsmith_f_op_vec3_f32(var_0 - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(-286f, -427f)), _wgslsmith_f_op_f32(1795f + global1[_wgslsmith_index_u32(u_input.d.x, 30u)]), _wgslsmith_f_op_f32(f32(-1f) * -789f))))), func_5(func_4(vec4<bool>(true, true, func_2(vec2<i32>(1i, u_input.a), vec2<bool>(false, false), vec4<u32>(u_input.d.x, 4294967295u, u_input.d.x, 5370u), Struct_1(vec4<i32>(u_input.a, u_input.b, u_input.c.x, u_input.b), u_input.c.x, vec3<f32>(global1[_wgslsmith_index_u32(0u, 30u)], -334f, var_0.x), u_input.d.xy, vec4<u32>(49117u, u_input.d.x, 1u, u_input.d.x))), select(true, false, false)), vec2<u32>(u_input.d.x, 57911u), func_5(Struct_3(global2[_wgslsmith_index_u32(u_input.d.x, 8u)], false, u_input.c.x, vec2<bool>(true, false), u_input.d.yy)))).a.a.zy, firstTrailingBit(~vec4<u32>(556u, u_input.d.x, 104283u, 4294967295u) << (abs(vec4<u32>(u_input.d.x, u_input.d.x, 27275u, 0u)) % vec4<u32>(32u))));
    var var_2 = Struct_1(_wgslsmith_add_vec4_i32(reverseBits(var_1.a), vec4<i32>(_wgslsmith_sub_i32(1i, ~27728i), _wgslsmith_sub_i32(var_1.b, 1i << (var_1.d.x % 32u)), 15217i & (u_input.b ^ u_input.c.x), 1i)), func_1(any(vec3<bool>(true, true, true)), min(var_1.a.x, _wgslsmith_sub_i32(-26855i, _wgslsmith_clamp_i32(var_1.a.x, 1i, -41944i)))).c, var_1.c, u_input.d.zx, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(1u, 4294967295u, 48991u, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(58646u, var_1.d.x, 41106u, var_1.e.x), var_1.e)), abs(var_1.e)), var_1.e));
    var var_3 = !(_wgslsmith_f_op_f32(var_1.c.x - var_0.x) >= _wgslsmith_f_op_f32(var_1.c.x - _wgslsmith_f_op_f32(-1081f - var_0.x))) != (!(!any(vec3<bool>(false, true, false))) | all(vec3<bool>(true, true, false)));
    var var_4 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-func_5(Struct_3(Struct_2(u_input.d, var_2.c.x, var_1.b), false, 2147483647i, vec2<bool>(true, true), var_2.e.yy)).a.b), -187f, _wgslsmith_f_op_f32(floor(func_4(vec4<bool>(false, false, true, true), min(var_1.e.yz, vec2<u32>(90622u, var_1.d.x)), Struct_3(global2[_wgslsmith_index_u32(u_input.d.x, 8u)], false, var_2.a.x, vec2<bool>(false, false), u_input.d.xx)).a.b))) + vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c.x - -520f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.c.x))), _wgslsmith_f_op_f32(-368f + _wgslsmith_f_op_f32(var_2.c.x + 182f)), 268f));
    var var_5 = func_5(Struct_3(global2[_wgslsmith_index_u32(12302u & var_1.d.x, 8u)], true == (func_1(false, -1i).b == global1[_wgslsmith_index_u32(~88373u, 30u)]), 6609i, func_5(Struct_3(global2[_wgslsmith_index_u32(1u, 8u)], true, ~u_input.b, func_5(Struct_3(Struct_2(vec3<u32>(1u, 40120u, 1u), var_2.c.x, u_input.a), true, u_input.b, vec2<bool>(true, false), vec2<u32>(u_input.d.x, 1u))).d, max(vec2<u32>(var_2.e.x, 1u), vec2<u32>(var_1.d.x, 17488u)))).d, _wgslsmith_mod_vec2_u32(var_2.d, min(var_1.d ^ vec2<u32>(52200u, var_2.e.x), u_input.d.yx)))).a.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.x);
}

