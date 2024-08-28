struct Struct_1 {
    a: f32,
    b: f32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<bool>,
    c: f32,
    d: vec4<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: bool,
    c: Struct_3,
    d: vec3<f32>,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<u32, 5> = array<u32, 5>(4294967295u, 27426u, 4294967295u, 1u, 4294967295u);

var<private> global2: array<vec2<i32>, 12>;

var<private> global3: Struct_2 = Struct_2(vec3<f32>(856f, -250f, 799f), vec4<bool>(false, false, false, false), -1565f, vec4<f32>(-571f, -2530f, -1000f, 139f));

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2, arg_2: f32) -> vec3<f32> {
    let var_0 = 48708i;
    let var_1 = all(vec3<bool>(all(!(!global3.b)), !all(!arg_1.b), arg_1.b.x));
    let var_2 = Struct_5(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * global3.d.x) + _wgslsmith_f_op_f32(-global0.a.x))), true, arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(404f + -982f)), -427f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.c)))) - arg_1.d.wyw), true);
    var var_3 = vec2<u32>(firstLeadingBit(11453u), 1u);
    var var_4 = all(global3.b.wy);
    return _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d.x, global0.a.x)), 603f) + _wgslsmith_f_op_vec3_f32(global3.a * vec3<f32>(arg_2, arg_1.a.x, arg_1.c))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - arg_1.a.x)) - arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(613f + _wgslsmith_f_op_f32(-360f - arg_0.a.x))), _wgslsmith_f_op_f32(-956f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1098f, arg_0.a.x))))));
}

fn func_2(arg_0: i32, arg_1: i32) -> Struct_3 {
    let var_0 = vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.a.x + global3.c) * -731f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.d.x + _wgslsmith_div_f32(-595f, 436f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.a.x - global3.d.x)))));
    global1 = array<u32, 5>();
    var var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1849f, -1989f) + _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-188f, var_0.x, -1704f), vec3<f32>(-834f, -1005f, -1565f)))), _wgslsmith_div_vec3_f32(vec3<f32>(-286f, var_0.x, -1000f), _wgslsmith_f_op_vec3_f32(func_3(Struct_3(var_0, 35300i), Struct_2(global3.a, global3.b, -643f, global3.d), -985f)))))), global3.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1570f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-308f, -517f, -1000f, 1000f) - vec4<f32>(1456f, var_0.x, 1859f, global3.a.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1249f, global0.a.x, -1249f, var_0.x), global3.d)))))));
    var var_2 = Struct_4(Struct_2(var_1.a, var_1.b, -128f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(global3.d)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-1593f, 1406f, -1627f, global0.a.x), var_1.d)))), abs(~vec2<u32>(0u, 0u) & (~vec2<u32>(u_input.b, u_input.b) >> (~vec2<u32>(u_input.b, 1u) % vec2<u32>(32u)))), Struct_2(var_1.a, vec4<bool>(!(-527f < global3.a.x), global3.b.x, !(!global3.b.x), any(!vec2<bool>(global3.b.x, var_1.b.x))), var_0.x, _wgslsmith_div_vec4_f32(vec4<f32>(-1201f, _wgslsmith_f_op_f32(global3.a.x - -919f), _wgslsmith_f_op_f32(-893f + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -277f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_1.d) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(578f, global3.a.x, 634f, var_1.d.x))))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -402f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-256f - _wgslsmith_f_op_f32(global0.a.x * 1437f))), true != (!var_1.b.x && true), global3.b.x), Struct_1(global3.d.x, var_0.x, (all(var_1.b.xy) || true) && any(vec2<bool>(global3.b.x, global3.b.x)), var_1.b.x));
    var var_3 = _wgslsmith_add_u32(reverseBits(~global1[_wgslsmith_index_u32(1u, 5u)]), _wgslsmith_clamp_u32(26086u, var_2.b.x, _wgslsmith_div_u32(abs(u_input.b), 1u)));
    return Struct_3(_wgslsmith_f_op_vec2_f32(-var_2.a.d.ww), _wgslsmith_div_i32(-abs(_wgslsmith_mult_i32(arg_1, arg_0)), min(firstLeadingBit(u_input.a), (-30950i ^ arg_0) & arg_1)));
}

fn func_1(arg_0: bool, arg_1: i32) -> f32 {
    var var_0 = !global3.b.x;
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(global3.a.zx, global3.a.xx))))))), -global0.b);
    let var_1 = !any(global3.b.xy);
    var var_2 = -vec4<i32>(-2147483647i, countOneBits(~(~arg_1)), firstLeadingBit(-(arg_1 ^ arg_1)), -select(-53039i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -39161i, global0.b), vec3<i32>(0i, 696i, u_input.a)), true));
    let var_3 = func_2(_wgslsmith_mult_i32(751i, _wgslsmith_sub_i32(~(-18577i), arg_1)) | reverseBits(~_wgslsmith_div_i32(var_2.x, 0i)), ~arg_1);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1103f, 862f));
}

fn func_4(arg_0: f32) -> Struct_4 {
    let var_0 = 25175i;
    global2 = array<vec2<i32>, 12>();
    global2 = array<vec2<i32>, 12>();
    var var_1 = _wgslsmith_sub_i32(-1i, -u_input.a & global0.b);
    global2 = array<vec2<i32>, 12>();
    return Struct_4(Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1214f, 685f, arg_0) * vec3<f32>(global3.a.x, arg_0, arg_0)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.x, 1006f, 645f) * global3.d.wwx))), select(select(vec4<bool>(false, true, global3.b.x, false), select(global3.b, vec4<bool>(global3.b.x, true, true, false), vec4<bool>(true, global3.b.x, false, false)), global3.b), select(global3.b, select(global3.b, vec4<bool>(global3.b.x, global3.b.x, true, true), true), global3.b), false), 896f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global3.d - vec4<f32>(arg_0, -557f, 512f, 687f)) - vec4<f32>(global0.a.x, arg_0, _wgslsmith_f_op_f32(global0.a.x * global0.a.x), global0.a.x))), ~(~_wgslsmith_div_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(72884u, 108707u), vec2<u32>(global1[_wgslsmith_index_u32(46918u, 5u)], 1u)), ~vec2<u32>(global1[_wgslsmith_index_u32(35552u, 5u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(94066u, 5u)], 5u)], 5u)], 5u)], 5u)]))), Struct_2(global3.a, vec4<bool>(true, global3.b.x, !global3.b.x && all(vec3<bool>(true, global3.b.x, false)), any(!global3.b.yy)), _wgslsmith_f_op_f32(-1744f + 723f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, global0.a.x, arg_0, -672f))))), Struct_1(-244f, -668f, global3.b.x, (abs(var_0) > global0.b) && global3.b.x), Struct_1(985f, 575f, true, firstTrailingBit(_wgslsmith_mult_i32(u_input.a, 1i)) > 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_f_op_f32(-185f + _wgslsmith_f_op_f32(-1123f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, 0i)) * global0.a.x))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-global3.d.wz);
    global3 = Struct_2(_wgslsmith_f_op_vec3_f32(trunc(var_0.a.a)), var_0.a.b, _wgslsmith_f_op_f32(abs(var_1.x)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(465f, 1679f, 1220f, 719f) * vec4<f32>(var_0.e.b, var_1.x, global3.c, global3.d.x))) * vec4<f32>(_wgslsmith_f_op_f32(var_0.d.b - var_1.x), _wgslsmith_f_op_f32(max(global0.a.x, var_1.x)), 1000f, _wgslsmith_f_op_f32(454f + global3.c))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, -2230f, -879f, global0.a.x))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.d) - _wgslsmith_div_vec4_f32(global3.d, var_0.c.d))))));
    let var_2 = min(_wgslsmith_div_vec3_u32(countOneBits(countOneBits(~vec3<u32>(var_0.b.x, 4294967295u, global1[_wgslsmith_index_u32(28483u, 5u)]))), ~vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(42692u, 4294967295u, global1[_wgslsmith_index_u32(1193u, 5u)], u_input.b), vec4<u32>(14636u, var_0.b.x, 4294967295u, var_0.b.x)), 5u)], 4294967295u, u_input.b | global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 5u)], 5u)])), min(_wgslsmith_clamp_vec3_u32(vec3<u32>(87041u, 1u, var_0.b.x), vec3<u32>(var_0.b.x, 1u, 46512u), vec3<u32>(4294967295u, u_input.b, 56278u)) & vec3<u32>(var_0.b.x, 0u, var_0.b.x), _wgslsmith_add_vec3_u32(vec3<u32>(var_0.b.x, 0u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_0.b.x, 5u)], 5u)]) << (vec3<u32>(0u, var_0.b.x, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.b, 18366u, u_input.b))) >> (max(min(~vec3<u32>(24428u, var_0.b.x, 0u), vec3<u32>(var_0.b.x, 49632u, 92462u)), countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, u_input.b, u_input.b), vec3<u32>(70266u, 4294967295u, global1[_wgslsmith_index_u32(u_input.b, 5u)])))) % vec3<u32>(32u)));
    let var_3 = func_4(var_0.d.a).c;
    global0 = func_2(u_input.a, u_input.a);
    global0 = func_2(25468i, _wgslsmith_sub_i32(abs(-25816i), -u_input.a << (1u % 32u)) ^ ~max(_wgslsmith_add_i32(-2147483647i, 20922i), -1i));
    var var_4 = var_3;
    let var_5 = _wgslsmith_mult_vec2_u32(var_0.b, select(~var_0.b, var_0.b, select(select(select(var_0.c.b.xz, vec2<bool>(true, true), vec2<bool>(true, var_3.b.x)), vec2<bool>(true, true), any(vec2<bool>(var_3.b.x, true))), !select(var_3.b.yx, var_3.b.xx, var_3.b.x), vec2<bool>(var_3.b.x | var_4.b.x, true))));
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(1i)));
}

