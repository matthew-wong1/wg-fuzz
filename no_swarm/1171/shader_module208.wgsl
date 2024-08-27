struct Struct_1 {
    a: f32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 8>;

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: i32) -> vec2<bool> {
    global0 = array<u32, 8>();
    let var_0 = arg_2;
    var var_1 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-var_0, firstTrailingBit(arg_2)), var_0, abs(firstTrailingBit(1i)) << (_wgslsmith_mult_u32(arg_1, arg_0.x) % 32u)) ^ -(~1i);
    let var_2 = Struct_1(1357f, vec4<u32>(_wgslsmith_dot_vec2_u32(~vec2<u32>(1u, 4294967295u), ~vec2<u32>(4212u, 7702u)), 0u, max(arg_1, abs(62774u)), _wgslsmith_div_u32(~u_input.a.x, 0u)) ^ (~vec4<u32>(arg_0.x, u_input.a.x, global0[_wgslsmith_index_u32(arg_0.x, 8u)], arg_1) >> (reverseBits(~vec4<u32>(144794u, 4721u, 7229u, arg_1)) % vec4<u32>(32u))), _wgslsmith_sub_vec2_i32(vec2<i32>(5905i, -2147483647i), reverseBits(-vec2<i32>(arg_2, var_0) & vec2<i32>(10718i, var_0))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1126f + _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-319f * 1186f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(619f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(272f, 628f)))))));
    var var_3 = -183f;
    return select(vec2<bool>(all(vec3<bool>(true, var_2.c.x == -2147483647i, arg_1 <= arg_1)), false), vec2<bool>(true, true), vec2<bool>(true, !all(select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)))));
}

fn func_2() -> vec2<i32> {
    var var_0 = select(select(!select(vec2<bool>(false, true), select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true)), vec2<bool>(true, true), func_3(u_input.a.xx, 1u, firstTrailingBit(1i))), vec2<bool>(!all(vec4<bool>(false, false, true, false)), true), !func_3(reverseBits(firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(4294967295u, 8u)], u_input.a.x))), u_input.a.x, 1i));
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_1 = u_input.a.x;
    let var_2 = _wgslsmith_add_vec2_i32(firstTrailingBit(vec2<i32>(_wgslsmith_add_i32(12439i, -21211i), 1i)) & (vec2<i32>(-1i) * -_wgslsmith_clamp_vec2_i32(vec2<i32>(-1i, 50729i), vec2<i32>(2147483647i, 13550i), vec2<i32>(2147483647i, -26744i))), -vec2<i32>(1i, 1i) >> ((u_input.a.zz << (max(_wgslsmith_sub_vec2_u32(vec2<u32>(16983u, 0u), vec2<u32>(u_input.a.x, u_input.a.x)), _wgslsmith_div_vec2_u32(u_input.a.xz, vec2<u32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)]))) % vec2<u32>(32u))) % vec2<u32>(32u)));
    return ~_wgslsmith_add_vec2_i32(~vec2<i32>(-14716i, ~(-44920i)), countOneBits(-(~vec2<i32>(-23158i, 1i))));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    global0 = array<u32, 8>();
    var var_0 = vec2<i32>(arg_0.b.c.x, 2147483647i);
    global0 = array<u32, 8>();
    return arg_0.b;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<i32>) -> vec4<u32> {
    let var_0 = -3972i;
    let var_1 = func_4(Struct_2(vec4<bool>(true, !any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(-arg_0.d) == -365f, true), Struct_1(-193f, select(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 49752u, u_input.a.x, arg_0.b.b.x), arg_0.b.b), ~vec4<u32>(arg_0.c.b.x, 0u, 88670u, global0[_wgslsmith_index_u32(4294967295u, 8u)]), arg_0.a.x), func_2(), arg_0.b.d), arg_0.b, _wgslsmith_f_op_f32(arg_0.d + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1843f, 1000f)))))));
    let var_2 = reverseBits(~(~vec4<i32>(var_1.c.x | 0i, var_1.c.x, -31543i, _wgslsmith_sub_i32(2147483647i, var_1.c.x))));
    let var_3 = arg_0.a.zyy;
    let var_4 = -11367i;
    return firstLeadingBit(var_1.b);
}

fn func_5(arg_0: vec4<u32>, arg_1: bool) -> f32 {
    global0 = array<u32, 8>();
    var var_0 = Struct_2(select(!vec4<bool>(true, true, 61722u > arg_0.x, arg_1), !select(vec4<bool>(true, false, false, arg_1), !vec4<bool>(false, true, arg_1, false), !vec4<bool>(arg_1, arg_1, arg_1, arg_1)), arg_1), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -682f), func_1(Struct_2(vec4<bool>(false, true, arg_1, arg_1), Struct_1(-447f, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(14815u, 8u)], 8u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec2<i32>(-26993i, -47393i), vec4<f32>(753f, 556f, 927f, 1123f)), func_4(Struct_2(vec4<bool>(arg_1, true, false, arg_1), Struct_1(1332f, vec4<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(25379u, 8u)], 0u), vec2<i32>(24978i, -1i), vec4<f32>(-232f, 521f, 266f, -1000f)), Struct_1(590f, arg_0, vec2<i32>(-1i, 0i), vec4<f32>(1456f, -1110f, 833f, -764f)), -1480f)), _wgslsmith_f_op_f32(1755f + 191f)), ~vec2<i32>(1i, -2147483647i)), (func_2() & min(vec2<i32>(-1i, -23121i), vec2<i32>(-5225i, 32512i))) >> (arg_0.xw % vec2<u32>(32u)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1962f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -672f), _wgslsmith_f_op_f32(f32(-1f) * -739f))), -122f, 1030f)), Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1185f - _wgslsmith_f_op_f32(f32(-1f) * -452f)))), vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, arg_0.x, 0u), u_input.a), abs(func_1(Struct_2(vec4<bool>(true, true, arg_1, true), Struct_1(-2060f, arg_0, vec2<i32>(62162i, 0i), vec4<f32>(690f, 610f, -598f, -807f)), Struct_1(226f, arg_0, vec2<i32>(-1i, -1i), vec4<f32>(1280f, 756f, 137f, -215f)), 639f), vec2<i32>(0i, 1i)).x), _wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(arg_0.x, 8u)], max(arg_0.x, 18287u)), 1u), min(vec2<i32>(max(5234i, 2147483647i), ~(-2147483647i)), vec2<i32>(1i, 1i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-413f, 317f, -404f, -141f)) * vec4<f32>(-629f, 941f, 508f, 2306f)) * vec4<f32>(-949f, _wgslsmith_f_op_f32(floor(-1229f)), 882f, _wgslsmith_f_op_f32(-1826f - 488f)))), 813f);
    global0 = array<u32, 8>();
    var_0 = Struct_2(select(select(vec4<bool>(true, true, false != arg_1, var_0.a.x), vec4<bool>(any(vec2<bool>(false, true)), var_0.a.x, true, !arg_1), !arg_1), vec4<bool>(false, false, var_0.a.x, true), vec4<bool>(var_0.a.x, arg_1, all(vec3<bool>(arg_1, false, false)), true)), func_4(Struct_2(vec4<bool>(false & arg_1, false, true, !arg_1), Struct_1(-1192f, _wgslsmith_div_vec4_u32(vec4<u32>(1u, u_input.a.x, var_0.b.b.x, 4294967295u), arg_0), var_0.b.c, var_0.c.d), var_0.b, -291f)), var_0.c, _wgslsmith_f_op_f32(sign(var_0.d)));
    var var_1 = Struct_2(select(select(var_0.a, var_0.a, !var_0.a), vec4<bool>(1576f >= var_0.d, true | !var_0.a.x, true, _wgslsmith_sub_i32(var_0.c.c.x, -2147483647i) == reverseBits(var_0.b.c.x)), true), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -327f), arg_0, -(var_0.c.c << (arg_0.wx % vec2<u32>(32u))) & select(firstTrailingBit(vec2<i32>(-2147483647i, var_0.c.c.x)), -vec2<i32>(var_0.b.c.x, -40157i), !var_0.a.zz), _wgslsmith_f_op_vec4_f32(trunc(var_0.b.d))), var_0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b.a * 1706f))) + _wgslsmith_f_op_f32(var_0.c.a * _wgslsmith_f_op_f32(max(1000f, -376f)))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(995f, _wgslsmith_f_op_f32(min(var_0.b.d.x, var_0.c.a))))));
    return -930f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-534f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1000f, 1522f)))))), 1000f, _wgslsmith_f_op_f32(func_5(_wgslsmith_mod_vec4_u32(vec4<u32>(global0[_wgslsmith_index_u32(50343u, 8u)], 59687u, global0[_wgslsmith_index_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 8u)], 8u)], 8u)], ~global0[_wgslsmith_index_u32(26852u, 8u)]), func_1(Struct_2(vec4<bool>(false, false, false, false), Struct_1(-1272f, vec4<u32>(u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x, u_input.a.x), vec2<i32>(2003i, 2147483647i), vec4<f32>(1000f, 522f, 1041f, 1604f)), Struct_1(-821f, vec4<u32>(0u, 22900u, global0[_wgslsmith_index_u32(1u, 8u)], u_input.a.x), vec2<i32>(-1i, 2147483647i), vec4<f32>(3221f, 1496f, -1064f, 403f)), 1710f), ~vec2<i32>(-38350i, 1i))), false)), _wgslsmith_f_op_f32(exp2(1f)));
    global0 = array<u32, 8>();
    let var_1 = Struct_1(-1311f, ~vec4<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 8u)] | 76582u, ~u_input.a.x, func_1(Struct_2(vec4<bool>(true, true, true, false), Struct_1(2416f, vec4<u32>(99473u, u_input.a.x, global0[_wgslsmith_index_u32(68046u, 8u)], global0[_wgslsmith_index_u32(94726u, 8u)]), vec2<i32>(-1i, -1i), var_0), Struct_1(var_0.x, vec4<u32>(0u, u_input.a.x, 16687u, u_input.a.x), vec2<i32>(34209i, -2147483647i), vec4<f32>(287f, var_0.x, 697f, var_0.x)), var_0.x), vec2<i32>(-9953i, -38431i)).x, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(0u, 8u)], global0[_wgslsmith_index_u32(41713u, 8u)])) & (vec4<u32>(1u, firstLeadingBit(1u), select(0u, 15874u, true), ~58157u) >> (abs(select(vec4<u32>(global0[_wgslsmith_index_u32(69262u, 8u)], 14101u, global0[_wgslsmith_index_u32(82666u, 8u)], u_input.a.x), vec4<u32>(global0[_wgslsmith_index_u32(1u, 8u)], global0[_wgslsmith_index_u32(u_input.a.x, 8u)], u_input.a.x, global0[_wgslsmith_index_u32(u_input.a.x, 8u)]), vec4<bool>(false, true, false, false))) % vec4<u32>(32u))), _wgslsmith_clamp_vec2_i32(vec2<i32>(2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(79683i, -1i), vec2<i32>(-1i, -24059i)) | (-7782i << (u_input.a.x % 32u))), -vec2<i32>(3604i, -1i), _wgslsmith_mod_vec2_i32(~vec2<i32>(37659i, 13405i), vec2<i32>(firstTrailingBit(-6023i), _wgslsmith_dot_vec2_i32(vec2<i32>(-8358i, 1i), vec2<i32>(1i, 1i))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(-608f, var_0.x)), 766f, _wgslsmith_f_op_f32(-var_0.x), var_0.x)));
    let var_2 = func_4(Struct_2(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_4(Struct_2(vec4<bool>(true, true, true, true), Struct_1(801f, vec4<u32>(4294967295u, u_input.a.x, 0u, 4294967295u), var_1.c, vec4<f32>(456f, -740f, var_0.x, 2627f)), var_1, 1054f)), var_1, _wgslsmith_f_op_f32(f32(-1f) * -1071f)));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_5(abs(abs(vec4<u32>(global0[_wgslsmith_index_u32(1u, 8u)], 61932u, 1u, var_2.b.x))) & ~(var_2.b >> (vec4<u32>(64954u, 1u, u_input.a.x, var_2.b.x) % vec4<u32>(32u))), !any(vec2<bool>(true, true)))) * var_0.x);
    var var_4 = func_4(Struct_2(vec4<bool>(func_3(func_4(Struct_2(vec4<bool>(false, false, false, true), var_1, Struct_1(var_0.x, vec4<u32>(u_input.a.x, var_1.b.x, 33166u, 44624u), vec2<i32>(var_1.c.x, var_2.c.x), vec4<f32>(545f, var_1.a, -1235f, var_0.x)), -1480f)).b.zw, 6589u, var_2.c.x).x, true, all(vec2<bool>(true, false)), false), var_1, func_4(Struct_2(vec4<bool>(true, true, true, true), func_4(Struct_2(vec4<bool>(true, true, true, false), var_1, var_1, -2320f)), Struct_1(422f, var_1.b, vec2<i32>(-2147483647i, var_1.c.x), vec4<f32>(var_2.d.x, 1121f, var_2.d.x, var_0.x)), _wgslsmith_f_op_f32(abs(298f)))), -300f));
    global0 = array<u32, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_mult_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_4.c.x, var_4.c.x, var_2.c.x), _wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, var_1.c.x, var_1.c.x), vec3<i32>(-41084i, var_1.c.x, var_1.c.x), vec3<i32>(var_4.c.x, -7483i, var_4.c.x)))), ~(~61698u), vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(41551u, var_1.b.x), var_4.b.xw) << (~func_1(Struct_2(vec4<bool>(true, true, true, true), var_2, var_1, var_4.d.x), vec2<i32>(0i, 0i)).x % 32u), _wgslsmith_mod_u32(min(26088u, 1u), abs(var_1.b.x)) >> ((1u << (1u % 32u)) % 32u)), vec3<i32>(firstTrailingBit(countOneBits(7939i)) & var_2.c.x, var_2.c.x, -2147483647i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_0.wxw, vec3<f32>(-368f, var_1.a, _wgslsmith_f_op_f32(ceil(-1000f))))));
}

