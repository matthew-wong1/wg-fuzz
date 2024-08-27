struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec3<f32>,
    e: i32,
}

struct Struct_4 {
    a: Struct_3,
    b: vec2<u32>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: Struct_5 = Struct_5(vec3<f32>(198f, 535f, 823f), -1038f, Struct_2(Struct_1(vec2<u32>(16105u, 4294967295u)), 45362u, Struct_1(vec2<u32>(60255u, 105864u))), 471f);

var<private> global2: Struct_1;

var<private> global3: array<Struct_5, 20>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_3, arg_1: bool, arg_2: vec4<u32>, arg_3: u32) -> vec4<bool> {
    var var_0 = select(select(select(select(vec2<bool>(true, true), vec2<bool>(arg_1, arg_1), false | arg_1), select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, false), vec2<bool>(arg_1, true)), false), !select(vec2<bool>(true, arg_1), select(vec2<bool>(true, arg_1), vec2<bool>(true, false), vec2<bool>(arg_1, false)), true), arg_1), select(!(!vec2<bool>(arg_1, false)), select(vec2<bool>(arg_1, arg_1), select(!vec2<bool>(arg_1, false), select(vec2<bool>(true, false), vec2<bool>(arg_1, true), arg_1), any(vec4<bool>(false, false, arg_1, true))), !(!vec2<bool>(arg_1, true))), false), arg_1);
    global1 = Struct_5(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.d.x, -2200f, arg_0.d.x) - arg_0.d)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(458f, global1.a.x, global1.a.x) - _wgslsmith_f_op_vec3_f32(arg_0.d - vec3<f32>(454f, -769f, arg_0.d.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(arg_0.d)), arg_0.d, true)) + _wgslsmith_f_op_vec3_f32(ceil(global1.a))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(global1.d, arg_0.d.x)), -992f), global1.c, arg_0.d.x);
    let var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1058f * arg_0.d.x)), 594f, _wgslsmith_f_op_f32(ceil(944f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - arg_0.d.x))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 735f, 238f, global1.d))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_0.d.x, global1.d, -1208f, arg_0.d.x)))))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(848f + -2377f), _wgslsmith_f_op_f32(f32(-1f) * -181f), _wgslsmith_f_op_f32(-arg_0.d.x), -1687f)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-arg_0.d.zz);
    let var_3 = ~u_input.d.x;
    return select(select(!vec4<bool>(true, !arg_1, true, arg_1), vec4<bool>(all(!vec4<bool>(true, var_0.x, var_0.x, arg_1)), all(select(vec4<bool>(false, true, false, var_0.x), vec4<bool>(true, false, false, false), vec4<bool>(arg_1, var_0.x, false, var_0.x))), !var_0.x, any(vec4<bool>(var_0.x, false, var_0.x, arg_1))), select(var_0.x, true, !var_0.x) && (!arg_1 & true)), select(!select(select(vec4<bool>(var_0.x, var_0.x, arg_1, false), vec4<bool>(false, var_0.x, var_0.x, false), arg_1), vec4<bool>(arg_1, true, arg_1, true), true), !vec4<bool>(false, true, arg_0.c.x < -15920i, true), vec4<bool>(_wgslsmith_f_op_f32(abs(1624f)) == _wgslsmith_f_op_f32(var_1.x + -556f), var_0.x, true, (var_0.x == var_0.x) & !arg_1)), vec4<bool>(true, true, true, true));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: u32) -> f32 {
    var var_0 = global1.c;
    global0 = array<Struct_3, 1>();
    var var_1 = select(!func_3(Struct_3(Struct_1(global1.c.a.a), ~vec4<i32>(-42925i, u_input.d.x, 19162i, u_input.d.x), select(vec3<i32>(u_input.d.x, 2147483647i, 1i), vec3<i32>(-45439i, 2147483647i, u_input.d.x), vec3<bool>(true, false, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(724f, -607f, global1.a.x) * global1.a), _wgslsmith_add_i32(-2147483647i, u_input.d.x)), any(vec4<bool>(arg_1, arg_1, false, false)), u_input.b, 22982u), vec4<bool>(true, true, (arg_2 > _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.a, 30902u, 35646u, 106295u))) || true, any(!(!vec2<bool>(false, arg_1)))), !select(select(vec4<bool>(false, true, false, true), vec4<bool>(arg_1, arg_1, arg_1, false), select(vec4<bool>(arg_1, arg_1, arg_1, true), vec4<bool>(arg_1, true, arg_1, true), vec4<bool>(arg_1, true, false, true))), vec4<bool>(!arg_1, all(vec4<bool>(arg_1, arg_1, arg_1, true)), false & arg_1, arg_1), !arg_1));
    let var_2 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.d)))), vec2<f32>(global1.b, -422f))));
    let var_3 = arg_0;
    return var_2.x;
}

fn func_4(arg_0: f32, arg_1: vec2<u32>, arg_2: f32) -> vec4<u32> {
    let var_0 = Struct_2(global1.c.c, u_input.b.x, global1.c.c);
    let var_1 = Struct_3(Struct_1(vec2<u32>(~(~0u), ~(~1u))), vec4<i32>(~(-13116i), u_input.d.x, 1i, min(select(u_input.d.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, u_input.d.x, -25351i), vec4<i32>(-34224i, u_input.d.x, 1i, u_input.d.x)), any(vec4<bool>(true, true, false, false))), -(~u_input.d.x))), select(vec3<i32>(u_input.d.x, _wgslsmith_mod_i32(0i, u_input.d.x), select(_wgslsmith_mult_i32(u_input.d.x, -2147483647i), _wgslsmith_div_i32(u_input.d.x, u_input.d.x), true)), _wgslsmith_sub_vec3_i32(vec3<i32>(~u_input.d.x, 0i, 39391i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.d.x, u_input.d.x, 26493i), vec3<i32>(-2147483647i, u_input.d.x, u_input.d.x)) >> (~vec3<u32>(u_input.a, 1u, arg_1.x) % vec3<u32>(32u))), select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), true)), vec3<bool>(any(vec4<bool>(true, true, false, false)), true, true), vec3<bool>(true, false, true))), vec3<f32>(-1258f, arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-580f - arg_2))))), 1i);
    let var_2 = 1i;
    global0 = array<Struct_3, 1>();
    let var_3 = 38459u;
    return firstTrailingBit(firstLeadingBit(_wgslsmith_mod_vec4_u32(_wgslsmith_add_vec4_u32(~vec4<u32>(25696u, global2.a.x, 3370u, 24487u), max(vec4<u32>(var_3, 18005u, u_input.b.x, 32278u), u_input.b)), vec4<u32>(var_1.a.a.x, ~u_input.a, ~var_0.b, firstLeadingBit(1u)))));
}

fn func_1() -> Struct_5 {
    var var_0 = Struct_5(vec3<f32>(-791f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-271f - 295f))), global1.a.x), _wgslsmith_div_f32(-1000f, global1.b), global1.c, 362f);
    var var_1 = vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, func_4(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_0.d)))), ~firstLeadingBit(vec2<u32>(u_input.b.x, global2.a.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(func_2(Struct_2(var_0.c.a, u_input.c, var_0.c.c), true, 72522u)), var_0.d)))), 0u, 0u, _wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(~32084u | firstTrailingBit(55812u), _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 0u, 9802u, 60015u), u_input.b), u_input.b), ~4294967295u, 83634u ^ global2.a.x)));
    let var_2 = global3[_wgslsmith_index_u32(10018u, 20u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(min(global1.a.xz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(1487f, var_0.b))));
    var var_4 = select(u_input.b.yzy | u_input.b.xwz, firstTrailingBit(vec3<u32>(~(~24101u), var_2.c.b, ~_wgslsmith_add_u32(u_input.c, 106178u))), vec3<bool>(all(func_3(global0[_wgslsmith_index_u32(firstTrailingBit(6447u), 1u)], var_0.b > 175f, vec4<u32>(4294967295u, 4294967295u, u_input.c, 20516u) | u_input.b, 1u).wz), any(vec3<bool>(true, true, true)), func_3(global0[_wgslsmith_index_u32(~1u, 1u)], any(func_3(global0[_wgslsmith_index_u32(0u, 1u)], true, vec4<u32>(22436u, var_2.c.c.a.x, global1.c.c.a.x, global1.c.b), 84864u).yx), reverseBits(vec4<u32>(0u, 27609u, 1u, global2.a.x) >> (u_input.b % vec4<u32>(32u))), _wgslsmith_clamp_u32(firstLeadingBit(global2.a.x), 62583u, min(u_input.a, global1.c.c.a.x))).x));
    return global3[_wgslsmith_index_u32(var_4.x, 20u)];
}

fn func_5(arg_0: Struct_5) -> Struct_3 {
    let var_0 = func_3(Struct_3(arg_0.c.c, select(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x) & vec4<i32>(u_input.d.x, -34598i, 48343i, 28608i), _wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, u_input.d.x, u_input.d.x), vec4<i32>(u_input.d.x, 1i, u_input.d.x, -27542i)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false))) ^ abs(firstLeadingBit(vec4<i32>(27960i, u_input.d.x, 2147483647i, u_input.d.x))), vec3<i32>(-1i) * -(vec3<i32>(u_input.d.x, u_input.d.x, u_input.d.x) << (u_input.b.zxz % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(min(global1.d, 442f)), -163f) + _wgslsmith_f_op_vec3_f32(ceil(func_1().a))), select(-33943i, 2147483647i, select(any(vec3<bool>(true, false, false)), true, any(vec2<bool>(true, true))))), u_input.b.x <= (_wgslsmith_sub_u32(19704u, abs(global2.a.x)) | select(~u_input.c, ~global1.c.a.a.x, false)), ~(~min(vec4<u32>(u_input.c, 8952u, global1.c.c.a.x, global2.a.x), u_input.b)) ^ vec4<u32>(reverseBits(u_input.a), ~1u, ~global2.a.x, global1.c.c.a.x), ~global1.c.b).yxz;
    global3 = array<Struct_5, 20>();
    let var_1 = vec3<i32>(_wgslsmith_dot_vec2_i32(-(~(-vec2<i32>(u_input.d.x, u_input.d.x))), firstLeadingBit(~_wgslsmith_div_vec2_i32(u_input.d, u_input.d))), u_input.d.x, _wgslsmith_clamp_i32(u_input.d.x << (global1.c.a.a.x % 32u), 14025i, 1i));
    global1 = func_1();
    var var_2 = -352f;
    return global0[_wgslsmith_index_u32(23316u, 1u)];
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(firstTrailingBit(global1.c.c.a));
    var var_0 = Struct_4(func_5(func_1()), u_input.b.xy);
    let var_1 = _wgslsmith_add_vec2_u32(reverseBits(var_0.a.a.a), vec2<u32>(~var_0.b.x, _wgslsmith_add_u32(~select(global1.c.c.a.x, 1u, false), func_1().c.b)));
    global0 = array<Struct_3, 1>();
    let var_2 = Struct_2(var_0.a.a, global1.c.c.a.x, Struct_1(var_1));
    global1 = Struct_5(var_0.a.d, global1.d, global1.c, 1f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~(-13205i), _wgslsmith_mod_i32(var_0.a.c.x | 2147483647i, _wgslsmith_add_i32(69361i, u_input.d.x)), -81487i, var_0.a.b.x));
}

