struct Struct_1 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<u32>,
    c: i32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 5> = array<Struct_1, 5>(Struct_1(vec3<u32>(4294967295u, 22115u, 4294967295u), vec4<f32>(-1784f, 602f, 121f, -1375f), vec2<i32>(-26881i, 20880i), -557f, vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(1u, 25496u, 54047u), vec4<f32>(537f, 342f, -1566f, 1154f), vec2<i32>(-20370i, -38974i), 1289f, vec4<bool>(true, false, true, true)), Struct_1(vec3<u32>(19838u, 4294967295u, 38392u), vec4<f32>(-574f, 887f, 1737f, -262f), vec2<i32>(2147483647i, -13429i), 531f, vec4<bool>(false, false, false, true)), Struct_1(vec3<u32>(4294967295u, 80502u, 4294967295u), vec4<f32>(249f, -813f, -236f, 1426f), vec2<i32>(0i, -562i), 1000f, vec4<bool>(false, false, true, true)), Struct_1(vec3<u32>(4294967295u, 45698u, 1u), vec4<f32>(550f, 604f, 2155f, 1068f), vec2<i32>(0i, 1i), 1065f, vec4<bool>(false, false, false, true)));

var<private> global1: vec2<f32> = vec2<f32>(669f, 1323f);

var<private> global2: array<Struct_4, 6>;

var<private> global3: array<vec3<u32>, 3>;

var<private> global4: array<Struct_1, 15> = array<Struct_1, 15>(Struct_1(vec3<u32>(4294967295u, 0u, 18028u), vec4<f32>(1404f, 1000f, 1363f, 637f), vec2<i32>(2147483647i, 1i), -333f, vec4<bool>(false, true, false, true)), Struct_1(vec3<u32>(4319u, 29499u, 4294967295u), vec4<f32>(-155f, 519f, -1419f, 127f), vec2<i32>(77507i, 2147483647i), -266f, vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(15426u, 4294967295u, 4294967295u), vec4<f32>(789f, 542f, -1067f, 1297f), vec2<i32>(-3503i, 0i), -1000f, vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u), vec4<f32>(2880f, -925f, 1361f, 430f), vec2<i32>(1i, 9228i), 184f, vec4<bool>(false, false, false, false)), Struct_1(vec3<u32>(1u, 0u, 3209u), vec4<f32>(-2152f, 2062f, -730f, -1382f), vec2<i32>(0i, i32(-2147483648)), 330f, vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(12110u, 29917u, 90072u), vec4<f32>(-636f, 497f, 1506f, 1505f), vec2<i32>(-1i, i32(-2147483648)), 297f, vec4<bool>(false, true, false, false)), Struct_1(vec3<u32>(4294967295u, 1u, 63233u), vec4<f32>(-728f, 1497f, 967f, -690f), vec2<i32>(i32(-2147483648), 1i), 1154f, vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(58701u, 19621u, 32329u), vec4<f32>(1817f, 2082f, -630f, -640f), vec2<i32>(4091i, -43970i), -882f, vec4<bool>(false, true, true, false)), Struct_1(vec3<u32>(88804u, 11325u, 702u), vec4<f32>(-336f, -1597f, 1436f, -399f), vec2<i32>(19260i, 0i), -1809f, vec4<bool>(true, false, true, false)), Struct_1(vec3<u32>(1u, 88356u, 19623u), vec4<f32>(452f, -451f, -372f, 1000f), vec2<i32>(-13397i, 2147483647i), 417f, vec4<bool>(false, false, true, true)), Struct_1(vec3<u32>(1u, 9652u, 4294967295u), vec4<f32>(-352f, 2058f, -1126f, 668f), vec2<i32>(13712i, 67862i), -486f, vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(0u, 47269u, 1u), vec4<f32>(923f, 1058f, 1000f, 705f), vec2<i32>(i32(-2147483648), -2864i), 575f, vec4<bool>(true, true, true, false)), Struct_1(vec3<u32>(110416u, 4294967295u, 20143u), vec4<f32>(660f, 632f, 625f, -907f), vec2<i32>(2147483647i, 18548i), 247f, vec4<bool>(false, false, true, false)), Struct_1(vec3<u32>(83845u, 1u, 1u), vec4<f32>(1654f, -621f, 471f, 627f), vec2<i32>(2147483647i, -7961i), -1250f, vec4<bool>(true, true, false, true)), Struct_1(vec3<u32>(9775u, 0u, 1u), vec4<f32>(2242f, -265f, 527f, -1892f), vec2<i32>(-1i, 64426i), 1434f, vec4<bool>(false, true, true, false)));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_1(arg_0: vec2<u32>) -> Struct_2 {
    global4 = array<Struct_1, 15>();
    let var_0 = -1400f;
    global2 = array<Struct_4, 6>();
    global0 = array<Struct_1, 5>();
    var var_1 = global0[_wgslsmith_index_u32(arg_0.x >> (1u % 32u), 5u)];
    return Struct_2(4294967295u, _wgslsmith_div_f32(var_0, var_0), global0[_wgslsmith_index_u32(firstLeadingBit(~(~min(36192u, 4294967295u))), 5u)]);
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = Struct_3(Struct_2(~(~21835u), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(step(1133f, -1179f))), Struct_1(min(global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(arg_0.a.x, 4294967295u), 3u)], ~global3[_wgslsmith_index_u32(arg_0.a.x, 3u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(467f, -550f, arg_1, -539f), vec4<f32>(1543f, -1059f, global1.x, -1044f))), vec2<i32>(arg_0.c.x ^ 2605i, i32(-1i) * -66446i), arg_0.d, !arg_0.e)), select(vec4<u32>(~(~arg_0.a.x), arg_0.a.x, 1u, arg_0.a.x), vec4<u32>(_wgslsmith_mod_u32(arg_0.a.x, 4294967295u) << (~arg_0.a.x % 32u), arg_0.a.x, 65347u, arg_0.a.x), vec4<bool>(arg_0.e.x, true & arg_0.e.x, arg_0.e.x, all(func_1(arg_0.a.xz).c.e.yxx))), 0i);
    global0 = array<Struct_1, 5>();
    let var_1 = global1.x;
    var var_2 = Struct_3(func_1(select(min(~var_0.a.c.a.yx, func_1(vec2<u32>(5614u, 17503u)).c.a.yz), arg_0.a.yz, select(vec2<bool>(true, false), !var_0.a.c.e.zy, vec2<bool>(true, arg_0.e.x)))), _wgslsmith_add_vec4_u32(~(~(~vec4<u32>(20465u, var_0.a.c.a.x, 14692u, var_0.b.x))), vec4<u32>(_wgslsmith_div_u32(25741u, var_0.a.c.a.x), arg_0.a.x, 48830u, ~104091u ^ countOneBits(arg_0.a.x))), 2147483647i);
    var var_3 = var_0.b.x;
    return 102268u;
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: Struct_4) -> vec2<f32> {
    let var_0 = arg_1.c.a << (global3[_wgslsmith_index_u32(reverseBits(_wgslsmith_mult_u32(~0u, _wgslsmith_mult_u32(arg_1.c.a.x, 18880u)) >> (67033u % 32u)), 3u)] % vec3<u32>(32u));
    var var_1 = Struct_4(arg_2.a);
    var_1 = Struct_4(func_1(vec2<u32>(38541u, func_3(Struct_1(vec3<u32>(4294967295u, arg_0, 1u), vec4<f32>(arg_2.a.c.d, -2398f, arg_1.b, var_1.a.b), arg_2.a.c.c, global1.x, arg_2.a.c.e), global1.x) & select(arg_2.a.c.a.x, arg_2.a.a, var_1.a.c.e.x))));
    global1 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(114f, 1360f), vec2<f32>(global1.x, global1.x)))) * arg_1.c.b.ww))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a.c.b.zx))))));
    let var_2 = vec3<u32>(9332u, _wgslsmith_add_u32(3555u, var_1.a.a), _wgslsmith_div_u32(func_1(arg_1.c.a.yz).c.a.x, var_0.x));
    return _wgslsmith_f_op_vec2_f32(max(arg_2.a.c.b.wx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(arg_1.c.b.xz, var_1.a.c.b.zz))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 0u;
    var var_1 = -47285i;
    var var_2 = all(!(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), false))));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -2022f);
    global4 = array<Struct_1, 15>();
    let var_4 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-279f, global1.x)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-632f, global1.x), vec2<f32>(global1.x, global1.x))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, -1055f)) * vec2<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), -621f)), vec2<bool>(true, true))));
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_4 - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(983f, 232f), _wgslsmith_f_op_vec2_f32(-var_4)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.x, global1.x) + _wgslsmith_f_op_vec2_f32(func_2(firstLeadingBit(_wgslsmith_div_u32(4294967295u, 86891u)), func_1(~vec2<u32>(32235u, 3268u)), global2[_wgslsmith_index_u32(abs(~20665u), 6u)]))));
    let x = u_input.a;
    s_output = StorageBuffer(max(countOneBits(abs(countOneBits(vec4<i32>(-8242i, u_input.a, -1i, -12665i)))), ~vec4<i32>(u_input.a, _wgslsmith_add_i32(2147483647i, u_input.a), -u_input.a, _wgslsmith_add_i32(1i, u_input.a))), _wgslsmith_div_i32(18355i, ~u_input.a), _wgslsmith_div_i32(select(~u_input.a, _wgslsmith_add_i32(u_input.a, select(2147483647i, 24655i, true)), !(var_4.x < -1399f)), u_input.a));
}

