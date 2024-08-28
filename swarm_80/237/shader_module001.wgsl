struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: bool,
    d: vec4<i32>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: vec3<f32>;

var<private> global3: array<vec3<u32>, 6>;

var<private> global4: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(-39740i, vec3<f32>(187f, 1194f, -288f)), Struct_2(i32(-2147483648), vec3<f32>(1436f, 683f, 813f)), Struct_2(0i, vec3<f32>(-819f, 1625f, -143f)), Struct_2(i32(-2147483648), vec3<f32>(-173f, 389f, 152f)), Struct_2(-1i, vec3<f32>(-1049f, -129f, -1252f)), Struct_2(-34903i, vec3<f32>(1198f, 984f, 1130f)), Struct_2(29039i, vec3<f32>(605f, -1750f, 145f)), Struct_2(-42246i, vec3<f32>(-402f, -1000f, 193f)), Struct_2(-1i, vec3<f32>(3395f, -1250f, 386f)), Struct_2(2147483647i, vec3<f32>(115f, -712f, 784f)), Struct_2(1i, vec3<f32>(-1206f, 1466f, -1812f)), Struct_2(-1197i, vec3<f32>(201f, 741f, 634f)), Struct_2(1i, vec3<f32>(-931f, -1220f, 111f)), Struct_2(-3960i, vec3<f32>(-784f, -1707f, -175f)), Struct_2(0i, vec3<f32>(974f, -954f, -1157f)), Struct_2(59921i, vec3<f32>(404f, 842f, 1040f)), Struct_2(35974i, vec3<f32>(-1484f, -1530f, 212f)), Struct_2(-49350i, vec3<f32>(1141f, 1884f, 1000f)), Struct_2(13398i, vec3<f32>(755f, -992f, -290f)));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn func_2() -> vec3<i32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-global0.b);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-577f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) * -320f), _wgslsmith_f_op_f32(trunc(-346f)));
    var var_2 = ~1u;
    var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.b.x - global2.x), _wgslsmith_f_op_f32(727f - var_0.x)))), global2.xx), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1443f, var_0.x)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(870f - var_1.x))))))));
    var var_3 = true;
    return vec3<i32>(_wgslsmith_dot_vec2_i32(~(-_wgslsmith_sub_vec2_i32(u_input.b.yy, vec2<i32>(global1.e.x, 2147483647i))), vec2<i32>(u_input.d.x, 17340i)), firstTrailingBit(-1i), u_input.b.x);
}

fn func_3(arg_0: Struct_2, arg_1: vec3<i32>) -> i32 {
    let var_0 = abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c.x, ~1u, firstTrailingBit(abs(1u))), ~(u_input.a << (u_input.c.wzy % vec3<u32>(32u))) ^ global3[_wgslsmith_index_u32(~(~u_input.c.x), 6u)]));
    let var_1 = global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, u_input.a.x, ~1u), abs(~_wgslsmith_add_u32(0u, 4294967295u))), 6u)];
    let var_2 = arg_0;
    let var_3 = Struct_2(~(-_wgslsmith_dot_vec2_i32(max(vec2<i32>(arg_0.a, u_input.d.x), u_input.d), -vec2<i32>(2147483647i, global0.a))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - global2.x), arg_0.b.x, 921f)))));
    let var_4 = vec3<bool>(any(select(global1.a, !(!vec4<bool>(global1.a.x, global1.a.x, global1.c, false)), any(!vec2<bool>(true, global1.a.x)))), true, !global1.a.x);
    return -30403i;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    var var_0 = arg_1;
    var var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(~global0.a, global0.a << (26897u % 32u), ~(-arg_2.e.x), ~arg_2.d.x), vec4<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(12224i, global0.a, -24688i, global1.d.x), vec4<i32>(global1.e.x, 18605i, arg_2.d.x, 12048i) ^ arg_1.e), 11954i, arg_2.d.x, u_input.d.x | abs(-46214i)));
    let var_2 = abs(select(vec3<u32>(u_input.c.x, abs(u_input.c.x), abs(u_input.c.x)) << (u_input.a % vec3<u32>(32u)), u_input.a & ~(~u_input.a), !(!vec3<bool>(true, arg_1.c, true))));
    var var_3 = abs(global1.d.x);
    var var_4 = global4[_wgslsmith_index_u32(var_2.x, 19u)];
    return _wgslsmith_div_vec2_u32(select(vec2<u32>(var_2.x, 4294967295u), var_2.yx, false), vec2<u32>(1u, ~4294967295u));
}

fn func_1() -> Struct_1 {
    var var_0 = global4[_wgslsmith_index_u32(max(~1u, u_input.c.x), 19u)];
    var var_1 = func_4(~func_2(), Struct_1(global1.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(236f, -921f)), _wgslsmith_f_op_f32(1000f + -254f))), !(u_input.c.x >= 1u), ~abs(vec4<i32>(11446i, -1i, global0.a, global1.e.x)), _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(~vec4<i32>(-8956i, global1.d.x, 18518i, -11105i), ~vec4<i32>(global1.d.x, u_input.d.x, global0.a, global0.a)), vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, global1.e.x, u_input.b.x), func_3(global4[_wgslsmith_index_u32(u_input.e, 19u)], vec3<i32>(var_0.a, u_input.d.x, global0.a)), 0i, -u_input.d.x))), Struct_1(select(global1.a, vec4<bool>(all(vec3<bool>(global1.a.x, global1.c, true)), false, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global0.b.x)) * _wgslsmith_f_op_f32(exp2(var_0.b.x)))), !select(!global1.c, -2147483647i >= var_0.a, global1.a.x), ~vec4<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zzz, vec3<i32>(0i, 1i, -30584i)), -8811i, _wgslsmith_sub_i32(u_input.d.x, -58i), ~(-1i)), vec4<i32>(global1.e.x, func_3(Struct_2(global0.a, vec3<f32>(global2.x, 1353f, -1431f)), -u_input.b.zxy), ~global0.a | max(var_0.a, 1i), 1i)));
    var var_2 = global1.a.yxz;
    var var_3 = Struct_2(_wgslsmith_dot_vec3_i32(vec3<i32>(select(global0.a, global0.a, global1.a.x), -1i, select(-2147483647i, 29227i, false)), abs(-vec3<i32>(-1i, global1.d.x, 1i))) | ~(i32(-1i) * -u_input.d.x), var_0.b);
    var var_4 = select(vec2<bool>(true, var_2.x), !(!vec2<bool>(true, any(global1.a))), select(global1.a.xz, global1.a.zx, true));
    return Struct_1(select(global1.a, select(vec4<bool>(false, any(global1.a.xyy), 53207i <= var_3.a, false || var_2.x), global1.a, vec4<bool>(any(vec2<bool>(false, global1.a.x)), var_2.x, all(global1.a.xzz), var_2.x)), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b.x))) + -1000f)), true, global1.e, -(global1.e & (global1.e | global1.d)) ^ countOneBits(~vec4<i32>(69370i, 1i, u_input.b.x, var_0.a)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> vec4<i32> {
    global3 = array<vec3<u32>, 6>();
    global0 = Struct_2(global1.e.x, global0.b);
    let var_0 = arg_0.a.zyx;
    var var_1 = -499f;
    global4 = array<Struct_2, 19>();
    return (vec4<i32>(~2147483647i, 2147483647i, arg_1.a, 4469i) ^ ~(-_wgslsmith_add_vec4_i32(vec4<i32>(-37430i, arg_1.a, 0i, arg_0.d.x), vec4<i32>(arg_0.e.x, u_input.b.x, 1i, arg_0.e.x)))) | vec4<i32>(i32(-1i) * -11511i, 2147483647i, global1.d.x, ~firstTrailingBit(u_input.b.x));
}

fn func_6(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = Struct_2(u_input.d.x, _wgslsmith_f_op_vec3_f32(-global0.b));
    var var_1 = _wgslsmith_mult_vec3_i32(arg_0.zyx, global1.d.xzx);
    var_0 = global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(firstTrailingBit(abs(~(u_input.c.x >> (70705u % 32u)))), u_input.a.x), 19u)];
    let var_2 = global4[_wgslsmith_index_u32(u_input.a.x, 19u)];
    global4 = array<Struct_2, 19>();
    return global0.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0i;
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_6(func_5(func_1(), Struct_2(-29870i, global0.b)), !all(vec4<bool>(true, true, false, global1.a.x)), Struct_1(global1.a, -574f, true, global1.d, global1.d), Struct_2(-var_0, global0.b))) + global0.b)));
    global3 = array<vec3<u32>, 6>();
    global4 = array<Struct_2, 19>();
    var var_2 = Struct_1(global1.a, _wgslsmith_f_op_f32(-1479f + -2329f), true, vec4<i32>(-2147483647i, -1i, u_input.b.x, -41778i), ~_wgslsmith_clamp_vec4_i32(global1.e, abs(abs(global1.e)), max(select(vec4<i32>(var_0, u_input.b.x, global0.a, global1.e.x), global1.d, true), ~vec4<i32>(global0.a, global0.a, var_0, var_0))));
    var var_3 = var_0;
    let var_4 = global1.c;
    global4 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_i32(-(~var_2.d) | var_2.e, func_5(Struct_1(vec4<bool>(true, true, true, true), var_1.x, !var_2.c, -u_input.b, firstLeadingBit(var_2.d)), Struct_2(~25065i, _wgslsmith_f_op_vec3_f32(vec3<f32>(192f, -1911f, var_1.x) * global0.b)))), ~firstLeadingBit(global0.a));
}

