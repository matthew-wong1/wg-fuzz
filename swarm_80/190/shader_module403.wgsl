struct Struct_1 {
    a: u32,
    b: f32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: i32,
    c: i32,
    d: Struct_2,
}

struct Struct_5 {
    a: vec4<bool>,
    b: u32,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 9>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = true;
    global0 = array<vec2<u32>, 9>();
    var var_1 = Struct_2(vec4<bool>(select(any(vec3<bool>(false, true, true)), true, true), !any(select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), false)), all(vec2<bool>(true, true)), true), 89649u, -611f, Struct_1(143363u, 1f, vec2<u32>(abs(45583u), _wgslsmith_div_u32(43294u, 18608u))), vec2<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(-32228i, 28974i), vec2<i32>(0i, -1i)), firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 91792i, -2147483647i), vec3<i32>(2147483647i, -31057i, -2147483647i)))) ^ ~vec2<i32>(abs(-17598i), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(-25010i, 1i, 21211i))));
    var var_2 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(1471f * 1296f), 1155f, var_1.c, var_1.d.b) - vec4<f32>(_wgslsmith_f_op_f32(-806f + 411f), _wgslsmith_f_op_f32(-1310f + -343f), _wgslsmith_f_op_f32(2110f - var_1.d.b), var_1.d.b)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.b, 1297f, -837f, var_1.c)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_1.d.b, -267f, -700f, -2251f), vec4<f32>(685f, -459f, -749f, -1233f), var_1.a.x))))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c, 1092f, var_1.d.b, var_1.c), vec4<f32>(163f, var_1.c, 247f, -2921f))))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-140f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f), var_1.d.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.c)), _wgslsmith_f_op_f32(-var_1.c)) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-240f, var_2.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.x), 576f), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_1.c))))));
    return var_2.x;
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    global0 = array<vec2<u32>, 9>();
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2, arg_2, arg_1)) * _wgslsmith_div_vec3_f32(vec3<f32>(arg_1, arg_2, -1232f), vec3<f32>(arg_1, arg_2, -1924f))), vec3<f32>(_wgslsmith_f_op_f32(func_3(u_input.a)), arg_2, 823f), -236f > arg_2))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1, 1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1354f * -634f) - -594f))));
    return Struct_1(~u_input.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1, var_1.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1685f - 530f) - var_1.x)), ~vec2<u32>(reverseBits(u_input.a), ~51886u));
}

fn func_4(arg_0: Struct_1, arg_1: f32) -> Struct_5 {
    var var_0 = Struct_2(vec4<bool>(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)), any(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true))), false), countOneBits(_wgslsmith_div_u32(~arg_0.c.x, 1u)), _wgslsmith_f_op_f32(arg_1 + arg_0.b), arg_0, vec2<i32>(_wgslsmith_mult_i32(~(i32(-1i) * -1i), -15247i), _wgslsmith_mult_i32(_wgslsmith_sub_i32(abs(1i), -10631i), -1i)));
    var var_1 = _wgslsmith_dot_vec2_i32(-var_0.e & vec2<i32>(-1i, -var_0.e.x), var_0.e);
    var_0 = Struct_2(var_0.a, 1u, arg_0.b, var_0.d, var_0.e);
    let var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.c, arg_1) + vec2<f32>(-559f, arg_0.b)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, var_0.d.b) + vec2<f32>(var_0.d.b, -1000f)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-600f, arg_0.b))))) * _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-389f, _wgslsmith_f_op_f32(944f * 1000f)))))));
    var var_3 = !(arg_1 > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.c))));
    return Struct_5(vec4<bool>(var_0.a.x, false, false, all(var_0.a)), var_0.b | abs(min(7665u, arg_0.a & 1u)), Struct_1(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(72023u, 1u), ~var_0.d.c, countOneBits(arg_0.c)), _wgslsmith_mod_vec2_u32(vec2<u32>(1u, arg_0.a), global0[_wgslsmith_index_u32(u_input.a, 9u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(446f + _wgslsmith_f_op_f32(arg_1 * -1809f)) - _wgslsmith_f_op_f32(f32(-1f) * -1179f)), global0[_wgslsmith_index_u32(4294967295u, 9u)]), _wgslsmith_mult_vec3_u32((vec3<u32>(var_0.d.a, 1u, 0u) ^ vec3<u32>(27251u, arg_0.a, 60188u)) ^ (vec3<u32>(u_input.a, 1351u, 3478u) & vec3<u32>(var_0.d.c.x, arg_0.a, 20159u)), ~(~vec3<u32>(4294967295u, 4294967295u, 0u))) & firstTrailingBit(~vec3<u32>(u_input.a, 1093u, 78791u) ^ ~vec3<u32>(var_0.b, var_0.d.c.x, 1u)));
}

fn func_5(arg_0: Struct_5, arg_1: vec3<u32>) -> bool {
    let var_0 = firstTrailingBit(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(48569i, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(-49740i, 2147483647i, 16110i, 1i), vec4<i32>(1i, -200i, 349i, 23743i))), 15906i), -_wgslsmith_add_i32(_wgslsmith_clamp_i32(-40231i, -2147483647i, -40363i), ~1i), 2147483647i));
    let var_1 = firstTrailingBit(-1i);
    var var_2 = Struct_4(arg_1.x, var_1, firstTrailingBit(var_0.x), Struct_2(vec4<bool>(all(!vec3<bool>(true, arg_0.a.x, arg_0.a.x)), true, true, true), ~0u, _wgslsmith_div_f32(arg_0.c.b, arg_0.c.b), arg_0.c, _wgslsmith_div_vec2_i32(max(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1, var_0.x), vec2<i32>(0i, var_0.x)), _wgslsmith_add_vec2_i32(vec2<i32>(var_0.x, 1i), vec2<i32>(var_1, var_0.x))), var_0.yy & var_0.xy)));
    var var_3 = -1i;
    global0 = array<vec2<u32>, 9>();
    return arg_0.a.x;
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_2, arg_2: vec4<bool>) -> Struct_2 {
    let var_0 = select(arg_2, arg_1.a, func_5(func_4(func_2(vec3<i32>(-4689i, 1i, -1i), -355f, _wgslsmith_f_op_f32(abs(1663f))), arg_1.c), _wgslsmith_mult_vec3_u32(arg_0, abs(_wgslsmith_mult_vec3_u32(vec3<u32>(52038u, arg_1.d.a, 1u), vec3<u32>(u_input.a, 0u, 25848u))))));
    global0 = array<vec2<u32>, 9>();
    global0 = array<vec2<u32>, 9>();
    var var_1 = arg_1.d;
    let var_2 = Struct_3(func_4(arg_1.d, 1687f).c, func_4(func_2(vec3<i32>(arg_1.e.x, -15393i, ~arg_1.e.x), _wgslsmith_f_op_f32(floor(-1542f)), var_1.b), 340f).c);
    return arg_1;
}

fn func_6(arg_0: Struct_2, arg_1: bool, arg_2: vec4<i32>) -> Struct_3 {
    var var_0 = vec4<bool>(all(vec2<bool>(!arg_0.a.x & arg_0.a.x, arg_1)), !arg_0.a.x, true, func_1(~vec3<u32>(19436u, 1u, arg_0.b) & (select(vec3<u32>(0u, 14148u, arg_0.b), vec3<u32>(23073u, arg_0.b, u_input.a), arg_1) | abs(vec3<u32>(0u, u_input.a, 70002u))), arg_0, vec4<bool>(arg_0.a.x, arg_1, any(vec2<bool>(true, false)), !arg_0.a.x)).a.x);
    global0 = array<vec2<u32>, 9>();
    var_0 = select(!vec4<bool>(false, !any(vec4<bool>(arg_0.a.x, true, arg_0.a.x, true)), true, any(arg_0.a.yxw)), arg_0.a, select(vec4<bool>(func_4(Struct_1(u_input.a, arg_0.c, global0[_wgslsmith_index_u32(arg_0.b, 9u)]), 1299f).a.x, arg_0.d.b < _wgslsmith_f_op_f32(-arg_0.c), true, var_0.x), !arg_0.a, any(arg_0.a) & arg_1));
    var_0 = select(!(!arg_0.a), select(!(!(!vec4<bool>(arg_0.a.x, arg_1, true, true))), arg_0.a, arg_0.a), true);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.b) - -359f), func_2(select(vec3<i32>(arg_2.x, 12947i, 2147483647i), vec3<i32>(arg_2.x, 30840i, arg_2.x), arg_0.a.zyy), _wgslsmith_f_op_f32(arg_0.d.b + arg_0.d.b), 259f).b, 1693f, -542f)));
    return Struct_3(arg_0.d, arg_0.d);
}

fn func_7(arg_0: bool, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = true;
    global0 = array<vec2<u32>, 9>();
    let var_1 = 1u;
    global0 = array<vec2<u32>, 9>();
    global0 = array<vec2<u32>, 9>();
    return select(_wgslsmith_div_vec2_i32(vec2<i32>(firstLeadingBit(12384i), _wgslsmith_mult_i32(-1i, 1i)) << (~arg_1.b.c % vec2<u32>(32u)), vec2<i32>(reverseBits(_wgslsmith_add_i32(-2988i, 1i)), 0i)), vec2<i32>(1i, 1i), vec2<bool>(true, var_0));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec2_i32(min(vec2<i32>(_wgslsmith_add_i32(min(47072i, 13840i), -48928i), select(2147483647i, 0i, false) | _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -23024i, 66775i, -23982i), vec4<i32>(-2147483647i, 67334i, -27042i, 0i))), ~vec2<i32>(1i, 1i)), vec2<i32>(-1i) * -(~(-vec2<i32>(15786i, 62179i))));
    var var_1 = -(var_0 | var_0) >= (var_0 | ~(-6214i));
    var var_2 = Struct_4(9807u, reverseBits(var_0), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, abs(var_0 << (1376u % 32u))), func_7(all(vec3<bool>(false, false, true)), func_6(func_1(vec3<u32>(u_input.a, u_input.a, u_input.a), Struct_2(vec4<bool>(true, true, false, false), u_input.a, 619f, Struct_1(45415u, -1741f, global0[_wgslsmith_index_u32(2249u, 9u)]), vec2<i32>(-15838i, var_0)), vec4<bool>(true, true, false, false)), any(vec2<bool>(true, false)), vec4<i32>(-1i, var_0, var_0, var_0)))), func_1(~((vec3<u32>(4294967295u, u_input.a, 62060u) ^ vec3<u32>(u_input.a, u_input.a, 60786u)) ^ countOneBits(vec3<u32>(u_input.a, 1u, 0u))), func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(27220u, 21501u, 9668u), ~vec3<u32>(u_input.a, 4294967295u, u_input.a)), Struct_2(vec4<bool>(true, true, true, true), reverseBits(32715u), 521f, func_1(vec3<u32>(4294967295u, 0u, 49322u), Struct_2(vec4<bool>(true, true, true, false), u_input.a, 495f, Struct_1(42604u, -118f, global0[_wgslsmith_index_u32(29491u, 9u)]), vec2<i32>(1i, 22031i)), vec4<bool>(true, true, false, true)).d, -vec2<i32>(-2147483647i, -1i)), vec4<bool>(true, var_0 < var_0, true, true)), !func_4(Struct_1(u_input.a, -375f, global0[_wgslsmith_index_u32(u_input.a, 9u)]), 1146f).a));
    var var_3 = u_input.a | ~func_1(vec3<u32>(33036u, ~var_2.a, 13775u), Struct_2(select(vec4<bool>(var_2.d.a.x, var_2.d.a.x, true, false), var_2.d.a, false), 1u, -1229f, var_2.d.d, abs(vec2<i32>(13290i, 19096i))), func_1(select(vec3<u32>(34061u, var_2.a, var_2.a), vec3<u32>(33835u, var_2.a, 0u), var_2.d.a.x), func_1(vec3<u32>(4294967295u, 1u, u_input.a), var_2.d, vec4<bool>(true, var_2.d.a.x, var_2.d.a.x, var_2.d.a.x)), var_2.d.a).a).b;
    var_3 = 20226u ^ ~u_input.a;
    var var_4 = func_4(var_2.d.d, 511f).a.yzw;
    var var_5 = vec3<f32>(-473f, 1561f, var_2.d.c);
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x, 873f);
}

