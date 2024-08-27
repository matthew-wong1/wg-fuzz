struct Struct_1 {
    a: f32,
    b: vec4<bool>,
    c: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<f32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(-383f, vec4<bool>(true, true, false, false), true), Struct_1(-233f, vec4<bool>(true, true, true, true), false), Struct_1(-102f, vec4<bool>(true, true, true, false), true), Struct_1(-1491f, vec4<bool>(true, true, true, true), true), Struct_1(-440f, vec4<bool>(true, false, true, false), true), Struct_1(402f, vec4<bool>(false, true, true, false), false), Struct_1(-1000f, vec4<bool>(true, false, false, false), false), Struct_1(-1074f, vec4<bool>(false, false, false, true), false), Struct_1(-101f, vec4<bool>(true, false, false, true), false), Struct_1(355f, vec4<bool>(true, true, false, false), false), Struct_1(-984f, vec4<bool>(false, true, true, true), false), Struct_1(-376f, vec4<bool>(true, true, true, true), false), Struct_1(-2086f, vec4<bool>(false, false, true, true), false), Struct_1(-123f, vec4<bool>(true, false, true, false), false), Struct_1(-104f, vec4<bool>(false, false, false, true), false), Struct_1(1298f, vec4<bool>(true, true, false, false), false), Struct_1(617f, vec4<bool>(false, false, false, false), true), Struct_1(-289f, vec4<bool>(true, false, false, false), true), Struct_1(-1179f, vec4<bool>(false, false, true, true), true), Struct_1(-116f, vec4<bool>(false, false, false, false), true), Struct_1(1186f, vec4<bool>(false, false, false, false), false), Struct_1(-256f, vec4<bool>(true, true, true, true), true), Struct_1(-1000f, vec4<bool>(true, true, true, false), false), Struct_1(182f, vec4<bool>(true, true, false, true), true), Struct_1(-340f, vec4<bool>(true, false, true, true), false), Struct_1(-1338f, vec4<bool>(true, true, true, false), false), Struct_1(-621f, vec4<bool>(false, false, false, false), false));

var<private> global1: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true));

var<private> global2: Struct_1 = Struct_1(305f, vec4<bool>(false, false, false, false), false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: u32) -> vec3<f32> {
    var var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 27u)];
    global1 = array<vec3<bool>, 23>();
    var var_1 = true;
    global0 = array<Struct_1, 27>();
    var_0 = global0[_wgslsmith_index_u32(firstTrailingBit(1u), 27u)];
    return _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_0.a, _wgslsmith_f_op_f32(trunc(global2.a)), _wgslsmith_f_op_f32(step(var_0.a, -1684f)))));
}

fn func_2() -> i32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(true, -_wgslsmith_mult_i32(59993i, 1i), 26022i, u_input.a.x))));
    let var_1 = u_input.a.x;
    let var_2 = global2.b.x;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, 1047f, var_0.x) - _wgslsmith_div_vec3_f32(vec3<f32>(var_0.x, global2.a, global2.a), vec3<f32>(517f, 1098f, 2355f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, global2.a, 2125f) + vec3<f32>(var_0.x, -401f, global2.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-382f, var_0.x, -1285f), vec3<f32>(-1549f, var_0.x, -684f))))))))));
    let var_3 = firstTrailingBit(~(-2147483647i & select(~2147483647i, 631i, all(vec4<bool>(false, false, global2.c, true)))));
    return 0i;
}

fn func_1(arg_0: vec4<f32>) -> u32 {
    global1 = array<vec3<bool>, 23>();
    var var_0 = select(vec2<bool>(select(~7520i == func_2(), true, select(true, true, true)), any(vec2<bool>(global2.c, any(vec2<bool>(true, false))))), global2.b.ww, !any(!select(global2.b.ww, vec2<bool>(false, global2.c), false)));
    let var_1 = ~_wgslsmith_mult_u32(_wgslsmith_mod_u32(33235u, u_input.a.x), ~28351u);
    var_0 = !vec2<bool>(arg_0.x != _wgslsmith_f_op_f32(_wgslsmith_f_op_vec3_f32(func_3(global2.c, 4045i, 10344i, u_input.a.x)).x + _wgslsmith_f_op_f32(ceil(global2.a))), var_0.x);
    var var_2 = _wgslsmith_div_vec4_i32(reverseBits(vec4<i32>(1i, 1i, 1i, 1i)), -countOneBits(vec4<i32>(20547i, 2147483647i, 34523i, -2147483647i))) | (max(~(~vec4<i32>(-2147483647i, 2918i, 20691i, -3159i)), vec4<i32>(16736i, ~(-2147483647i), -2147483647i, -14219i >> (1u % 32u))) ^ ~_wgslsmith_mod_vec4_i32(-vec4<i32>(-1i, -1370i, -2147483647i, 1i), select(vec4<i32>(16910i, 1i, -2147483647i, -20908i), vec4<i32>(15760i, 51307i, -1i, 17779i), vec4<bool>(true, true, false, true))));
    return 2980u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_clamp_u32(min(_wgslsmith_mult_u32(u_input.a.x, func_1(vec4<f32>(-685f, global2.a, global2.a, global2.a))), _wgslsmith_add_u32(u_input.a.x, 4294967295u) | u_input.a.x), u_input.a.x, max(u_input.a.x, 1u)), 4294967295u), 27u)];
    var var_1 = vec3<u32>(4294967295u, ~(~1u << (u_input.a.x % 32u)), ~_wgslsmith_add_u32(0u, u_input.a.x));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.a - -1000f)))), global2.b, var_0.b.x);
    var var_3 = _wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(27576i, -1i, -42001i, -21405i), !vec4<bool>(var_2.c, false, true, var_0.b.x)), -select(vec4<i32>(-1i, -1i, -1i, 58609i), vec4<i32>(10959i, 2147483647i, 1i, -2147483647i), false)) ^ -69166i, select(~(~1i), 1i, true));
    let var_4 = var_2;
    var var_5 = var_2;
    let var_6 = !(!all(vec2<bool>(!var_4.c, false)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~(-vec2<i32>(-4156i, -91982i))) << (select(_wgslsmith_mod_vec2_u32(firstTrailingBit(u_input.a.zy), ~var_1.yy), ~vec2<u32>(u_input.a.x, 16040u), true) % vec2<u32>(32u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4.a, var_0.a, global2.a) * vec3<f32>(global2.a, global2.a, -255f)), vec3<f32>(global2.a, 2450f, -802f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1014f, 1112f, -480f) * vec3<f32>(272f, 236f, var_0.a)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_5.a, 116f, 1715f), vec3<f32>(242f, var_0.a, 379f))), var_5.b.zyy)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.a, _wgslsmith_f_op_f32(sign(var_4.a)), 1106f, -158f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(111f, 289f, var_5.a, 1387f)))))), ~1i, ~_wgslsmith_dot_vec2_i32(-(vec2<i32>(-2147483647i, 1i) << (vec2<u32>(u_input.a.x, 0u) % vec2<u32>(32u))), vec2<i32>(-12714i, min(27277i, -1i))));
}

