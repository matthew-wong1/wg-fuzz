struct Struct_1 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(vec4<f32>(-519f, 1391f, 460f, -1283f)), Struct_1(vec4<f32>(-743f, -861f, -215f, 527f)), Struct_1(vec4<f32>(-1315f, -436f, -207f, 1053f)), Struct_1(vec4<f32>(-1567f, -433f, -158f, 1074f)), Struct_1(vec4<f32>(-297f, 198f, -601f, 301f)), Struct_1(vec4<f32>(-280f, 166f, 850f, -956f)), Struct_1(vec4<f32>(437f, 1622f, -363f, 146f)), Struct_1(vec4<f32>(-1539f, -224f, -1096f, -1528f)), Struct_1(vec4<f32>(-714f, -1139f, -743f, -414f)), Struct_1(vec4<f32>(538f, -578f, -920f, -563f)), Struct_1(vec4<f32>(-132f, 194f, 242f, -344f)), Struct_1(vec4<f32>(519f, -1450f, -814f, 444f)), Struct_1(vec4<f32>(-623f, -696f, 1000f, 451f)), Struct_1(vec4<f32>(-1057f, -1801f, -580f, 1386f)), Struct_1(vec4<f32>(2002f, -578f, 2958f, 125f)), Struct_1(vec4<f32>(1295f, -944f, -307f, -1000f)), Struct_1(vec4<f32>(746f, -174f, -2136f, 343f)), Struct_1(vec4<f32>(-1000f, -396f, 151f, -1064f)), Struct_1(vec4<f32>(318f, -1351f, 1000f, -1473f)), Struct_1(vec4<f32>(1102f, -734f, 288f, -168f)), Struct_1(vec4<f32>(-1107f, 1000f, -556f, 543f)), Struct_1(vec4<f32>(-1863f, 1861f, 1416f, 1681f)), Struct_1(vec4<f32>(124f, -1376f, -917f, -1000f)), Struct_1(vec4<f32>(-1508f, -1000f, -1095f, -435f)), Struct_1(vec4<f32>(-2040f, 1952f, 162f, 1511f)), Struct_1(vec4<f32>(-662f, -371f, 1000f, 946f)), Struct_1(vec4<f32>(-1000f, -418f, 1534f, 486f)), Struct_1(vec4<f32>(-318f, -1000f, 959f, 277f)), Struct_1(vec4<f32>(-406f, -137f, 494f, -1440f)), Struct_1(vec4<f32>(303f, 2260f, 535f, -475f)));

var<private> global2: vec4<u32>;

var<private> global3: array<vec3<bool>, 27> = array<vec3<bool>, 27>(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true));

var<private> global4: i32 = 0i;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    global1 = array<Struct_1, 30>();
    global1 = array<Struct_1, 30>();
    global0 = Struct_1(global0.a);
    return ~countOneBits(u_input.a) << ((_wgslsmith_dot_vec2_u32(~select(vec2<u32>(7019u, u_input.a), vec2<u32>(4421u, 63953u), vec2<bool>(false, false)), select(~vec2<u32>(12932u, arg_0.x), ~vec2<u32>(global2.x, 29132u), all(vec3<bool>(false, true, true)))) << (u_input.a % 32u)) % 32u);
}

fn func_2(arg_0: Struct_1, arg_1: i32) -> vec4<f32> {
    global2 = reverseBits(select(~vec4<u32>(u_input.a, u_input.a & global2.x, 0u, 474u), vec4<u32>(countOneBits(1u), (global2.x >> (global2.x % 32u)) >> (47502u % 32u), firstTrailingBit(~28081u), ~_wgslsmith_dot_vec2_u32(global2.xz, global2.wy)), func_3(vec2<u32>(4294967295u, 0u)) <= ~u_input.a));
    let var_0 = select(global2.x, global2.x, !(!(any(vec2<bool>(true, false)) & true)));
    var var_1 = arg_0;
    let var_2 = !select(select(vec4<bool>(false, true, true, true), select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), false), vec4<bool>(true, false, true, false)), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, false, any(vec2<bool>(false, false)), false));
    var var_3 = var_2;
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, -532f, global0.a.x, var_1.a.x) * vec4<f32>(arg_0.a.x, -420f, -2180f, 969f))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.a.x, 1135f, 677f, var_1.a.x) * _wgslsmith_f_op_vec4_f32(global0.a * arg_0.a))) - global0.a));
}

fn func_1() -> vec4<f32> {
    let var_0 = ~18673u;
    let var_1 = vec4<bool>(!(!all(global3[_wgslsmith_index_u32(10713u, 27u)])), !(!any(vec4<bool>(true, true, true, true)) || true), !(0i > (-10351i >> (~global2.x % 32u))), all(vec4<bool>(!(-790f > global0.a.x), true, all(vec4<bool>(false, true, true, false)), true)));
    global1 = array<Struct_1, 30>();
    global3 = array<vec3<bool>, 27>();
    let var_2 = vec3<bool>(true, var_1.x, var_1.x);
    return _wgslsmith_f_op_vec4_f32(func_2(global1[_wgslsmith_index_u32(_wgslsmith_div_u32((~41332u | u_input.a) << (max(_wgslsmith_sub_u32(var_0, 25549u), ~var_0) % 32u), 0u), 30u)], u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) * vec4<f32>(global0.a.x, _wgslsmith_f_op_f32(round(global0.a.x)), -1126f, _wgslsmith_f_op_f32(-global0.a.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.a.x, 163f, -1179f, 1501f))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.a + vec4<f32>(-1316f, global0.a.x, global0.a.x, 1369f)) + vec4<f32>(global0.a.x, -674f, 1000f, 1661f)))));
    let var_1 = select(u_input.d.x, _wgslsmith_div_i32(-15371i, u_input.b), all(vec4<bool>(true, true == any(global3[_wgslsmith_index_u32(global2.x, 27u)]), true, true)));
    var var_2 = vec3<f32>(_wgslsmith_f_op_vec4_f32(func_1()).x, 166f, var_0.a.x);
    global2 = vec4<u32>(global2.x >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 50419u, 13007u), ~vec3<u32>(u_input.a, global2.x, global2.x)) % 32u), _wgslsmith_mult_u32(max(1u, 1u), _wgslsmith_div_u32(_wgslsmith_sub_u32(global2.x, u_input.a), 4294967295u)) & ((1u & (global2.x & u_input.a)) & 1u), ~(~u_input.a), abs(u_input.a));
    var var_3 = global1[_wgslsmith_index_u32(u_input.a, 30u)];
    let var_4 = vec4<bool>(any(!vec2<bool>(false, 78167u != global2.x)), true, any(select(!global3[_wgslsmith_index_u32(1u, 27u)], vec3<bool>(any(vec4<bool>(true, true, true, false)), select(true, false, true), false), true)), !select(true, false, true));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(var_1, _wgslsmith_dot_vec3_i32((vec3<i32>(u_input.b, -31416i, -24657i) & vec3<i32>(u_input.d.x, -27829i, var_1)) & (vec3<i32>(u_input.b, u_input.c, -4512i) & vec3<i32>(29782i, var_1, var_1)), _wgslsmith_sub_vec3_i32(max(vec3<i32>(var_1, u_input.c, u_input.b), vec3<i32>(var_1, -11431i, 17571i)), abs(vec3<i32>(u_input.c, u_input.c, -108490i)))), u_input.b, -2147483647i), _wgslsmith_mod_u32(global2.x, 33568u));
}

