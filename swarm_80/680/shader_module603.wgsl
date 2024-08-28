struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: bool,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 24>;

var<private> global1: array<Struct_3, 13> = array<Struct_3, 13>(Struct_3(vec3<bool>(true, true, true), vec2<u32>(4294967295u, 6077u), vec2<u32>(77305u, 0u), vec4<f32>(-1000f, 727f, 2236f, -656f)), Struct_3(vec3<bool>(false, false, false), vec2<u32>(1u, 0u), vec2<u32>(3088u, 4294967295u), vec4<f32>(-130f, 762f, -437f, -120f)), Struct_3(vec3<bool>(true, true, false), vec2<u32>(31224u, 23093u), vec2<u32>(1u, 1u), vec4<f32>(796f, -463f, -1338f, -162f)), Struct_3(vec3<bool>(true, true, false), vec2<u32>(32126u, 18727u), vec2<u32>(45782u, 1u), vec4<f32>(-134f, 244f, 1817f, -551f)), Struct_3(vec3<bool>(false, false, true), vec2<u32>(4351u, 4294967295u), vec2<u32>(4195u, 4294967295u), vec4<f32>(568f, -719f, -515f, -588f)), Struct_3(vec3<bool>(true, true, true), vec2<u32>(10211u, 4294967295u), vec2<u32>(0u, 1458u), vec4<f32>(1621f, -209f, 908f, -947f)), Struct_3(vec3<bool>(true, true, false), vec2<u32>(9025u, 77590u), vec2<u32>(0u, 46046u), vec4<f32>(-1000f, -619f, 1000f, -1000f)), Struct_3(vec3<bool>(true, true, true), vec2<u32>(27396u, 1u), vec2<u32>(12197u, 34000u), vec4<f32>(458f, -641f, -365f, 1000f)), Struct_3(vec3<bool>(false, true, false), vec2<u32>(4294967295u, 1u), vec2<u32>(4294967295u, 15257u), vec4<f32>(281f, 1921f, 495f, -749f)), Struct_3(vec3<bool>(false, true, true), vec2<u32>(4294967295u, 1u), vec2<u32>(18291u, 0u), vec4<f32>(-1144f, -639f, -640f, -427f)), Struct_3(vec3<bool>(true, false, true), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 4294967295u), vec4<f32>(157f, -641f, 1206f, -287f)), Struct_3(vec3<bool>(true, true, true), vec2<u32>(18026u, 88293u), vec2<u32>(0u, 20279u), vec4<f32>(131f, -413f, 103f, 290f)), Struct_3(vec3<bool>(true, true, true), vec2<u32>(8119u, 4294967295u), vec2<u32>(68204u, 48830u), vec4<f32>(-2047f, 167f, 1209f, -1278f)));

var<private> global2: f32;

var<private> global3: u32;

var<private> global4: bool = true;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> u32 {
    let var_0 = select(firstLeadingBit(firstTrailingBit(_wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, 19812i, -67595i, u_input.b.x)), -vec4<i32>(0i, 0i, u_input.b.x, u_input.b.x), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, 6523i, -1i, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -3793i))))), _wgslsmith_div_vec4_i32(select(-vec4<i32>(u_input.b.x, u_input.b.x, -32174i, u_input.b.x), _wgslsmith_sub_vec4_i32(vec4<i32>(49504i, u_input.b.x, -1i, u_input.b.x), -vec4<i32>(-24939i, u_input.b.x, 7282i, u_input.b.x)), !(u_input.a.x >= 31960u)), vec4<i32>(~(-15510i), u_input.b.x, u_input.b.x, 0i)), (any(vec4<bool>(true, false, arg_0.c, arg_0.d.x)) == ((true & arg_0.d.x) || any(vec3<bool>(arg_0.d.x, true, false)))) && arg_0.c);
    global0 = array<Struct_2, 24>();
    var var_1 = Struct_3(!vec3<bool>(false, true, !any(vec2<bool>(true, arg_0.d.x))), select(select(max(vec2<u32>(arg_0.a, arg_0.b.x), ~u_input.a.xz), arg_1.zw, true), ~_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a, 0u), vec2<u32>(4294967295u, u_input.a.x)), vec2<u32>(4294967295u, arg_1.x)), false), vec2<u32>(~(~arg_0.a) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(36873u, arg_0.a, arg_0.b.x) << (arg_0.b.wxw % vec3<u32>(32u)), arg_0.b.wxz) % 32u), arg_1.x), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.e, 146f, arg_0.e, -149f) + vec4<f32>(198f, arg_0.e, arg_0.e, -1699f)) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-737f, -524f, arg_0.e, 728f))))))));
    let var_2 = Struct_2(arg_0.d);
    var_1 = Struct_3(var_2.a, _wgslsmith_mod_vec2_u32(vec2<u32>(~_wgslsmith_mult_u32(u_input.a.x, 0u), 47061u), vec2<u32>(select(~4294967295u, _wgslsmith_dot_vec2_u32(u_input.a.wx, var_1.b), arg_1.x <= 4294967295u), 4294967295u)), vec2<u32>(min(arg_0.b.x, ~(~0u)), 0u), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(508f, 1278f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1.d.x), 1352f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.d.x)))))));
    return 42540u;
}

fn func_2(arg_0: Struct_4) -> Struct_2 {
    global3 = _wgslsmith_mult_u32(u_input.a.x, func_3(Struct_1(firstTrailingBit(arg_0.a.c.x | u_input.a.x), ~u_input.a, _wgslsmith_div_f32(arg_0.a.d.x, arg_0.a.d.x) == _wgslsmith_f_op_f32(arg_0.a.d.x - arg_0.a.d.x), select(arg_0.a.a, select(vec3<bool>(true, true, arg_0.a.a.x), arg_0.a.a, false), !arg_0.a.a.x), -713f), u_input.a));
    global4 = select(all(arg_0.a.a), true, arg_0.a.a.x);
    global2 = -772f;
    var var_0 = Struct_1(~_wgslsmith_sub_u32(_wgslsmith_clamp_u32(abs(72422u), 51537u, 0u), 71953u), vec4<u32>(23861u, 41449u, 30395u, _wgslsmith_add_u32(~arg_0.a.b.x, 12523u) | 1u), true, !(!select(arg_0.a.a, select(arg_0.a.a, arg_0.a.a, vec3<bool>(true, false, true)), !arg_0.a.a)), 971f);
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1067f, _wgslsmith_f_op_f32(var_0.e * 335f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1987f + -493f)))));
    return global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(arg_0.a.c.x, u_input.a.x << (firstTrailingBit(~u_input.a.x) % 32u)), 24u)];
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: u32, arg_3: f32) -> u32 {
    global1 = array<Struct_3, 13>();
    var var_0 = Struct_4(Struct_3(!arg_1.a, u_input.a.yy, vec2<u32>(arg_0, arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-962f, arg_3, 122f, arg_3))) + _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_3, arg_3, arg_3, -1515f))))));
    global0 = array<Struct_2, 24>();
    global3 = _wgslsmith_div_u32(~(~(u_input.a.x & 32692u)), _wgslsmith_clamp_u32(reverseBits(~arg_0), func_3(Struct_1(arg_2, vec4<u32>(var_0.a.c.x, 52993u, arg_2, 43106u), true, vec3<bool>(var_0.a.a.x, false, var_0.a.a.x), 524f), abs(u_input.a)), 4294967295u >> (select(478u, var_0.a.c.x, false) % 32u)) & var_0.a.b.x);
    let var_1 = Struct_4(var_0.a);
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(~(abs(arg_2) ^ ~var_1.a.b.x), u_input.a.x), arg_0);
}

fn func_1() -> u32 {
    var var_0 = firstTrailingBit(abs(~abs(vec3<i32>(u_input.b.x, u_input.b.x, -1i) | vec3<i32>(u_input.b.x, -1i, u_input.b.x))));
    let var_1 = _wgslsmith_div_u32(~func_4(u_input.a.x, func_2(Struct_4(Struct_3(vec3<bool>(true, false, true), u_input.a.zz, vec2<u32>(u_input.a.x, u_input.a.x), vec4<f32>(689f, -584f, -874f, 1517f)))), _wgslsmith_sub_u32(u_input.a.x, 34097u), -550f), u_input.a.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), vec2<f32>(1f, 1f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1020f - 776f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -410f) * _wgslsmith_f_op_f32(f32(-1f) * -1382f)))));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x)))), _wgslsmith_f_op_f32(-var_2.x)));
    var_0 = _wgslsmith_sub_vec3_i32(~abs(vec3<i32>(16319i, 6715i, -36407i) << (vec3<u32>(var_1, u_input.a.x, var_1) % vec3<u32>(32u))), vec3<i32>(var_0.x, -14134i, -_wgslsmith_mult_i32(_wgslsmith_add_i32(1i, u_input.b.x), -2147483647i << (u_input.a.x % 32u))));
    return ~u_input.a.x;
}

fn func_5(arg_0: u32, arg_1: vec2<i32>) -> vec4<i32> {
    global0 = array<Struct_2, 24>();
    var var_0 = ~(-_wgslsmith_clamp_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(-19205i, u_input.b.x), arg_1.x, -1i ^ arg_1.x), _wgslsmith_mult_i32(-9126i, min(u_input.b.x, arg_1.x)), arg_1.x));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -353f) + _wgslsmith_f_op_f32(sign(2283f))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(774f, 833f) - _wgslsmith_f_op_f32(select(-643f, 1099f, false)))), _wgslsmith_f_op_f32(min(-939f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1191f * -790f)))))));
    let var_1 = reverseBits(_wgslsmith_add_vec4_i32(~vec4<i32>(_wgslsmith_mult_i32(-1i, arg_1.x), u_input.b.x, _wgslsmith_sub_i32(arg_1.x, -25472i), arg_1.x), vec4<i32>(_wgslsmith_add_i32(~(-10718i), ~2658i), abs(2147483647i), abs(_wgslsmith_mult_i32(15853i, arg_1.x)), countOneBits(max(0i, arg_1.x)))));
    global4 = false;
    return var_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1() | countOneBits(countOneBits(1u)), u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_u32(~u_input.a.x, _wgslsmith_dot_vec2_u32(vec2<u32>(firstTrailingBit(5378u), ~u_input.a.x), min(u_input.a.ww, u_input.a.zx) | _wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a.x, u_input.a.x), u_input.a.zx))), ~max(u_input.a.x ^ 0u, u_input.a.x));
}

