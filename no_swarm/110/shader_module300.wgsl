struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<f32>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: vec3<f32>,
    c: Struct_1,
    d: vec3<bool>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec3<f32>,
    c: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(Struct_2(vec4<f32>(1009f, -213f, 2110f, 3108f)), vec3<f32>(880f, 1000f, 147f), Struct_1(vec2<i32>(1i, 70368i), false, vec2<u32>(70550u, 20223u)));

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(vec3<bool>(true, false, false), vec3<f32>(-806f, -111f, -1710f), Struct_1(vec2<i32>(31929i, 49i), true, vec2<u32>(30842u, 114910u)), vec3<bool>(true, true, false)), Struct_3(vec3<bool>(false, false, false), vec3<f32>(-1481f, 1534f, 1345f), Struct_1(vec2<i32>(-25338i, -14905i), false, vec2<u32>(4294967295u, 4294967295u)), vec3<bool>(true, false, true)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(-1220f, 256f, 1000f), Struct_1(vec2<i32>(33456i, 1i), false, vec2<u32>(1u, 16392u)), vec3<bool>(false, true, false)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(1013f, 402f, 801f), Struct_1(vec2<i32>(-1i, i32(-2147483648)), false, vec2<u32>(6367u, 4294967295u)), vec3<bool>(false, false, false)), Struct_3(vec3<bool>(true, true, true), vec3<f32>(-1125f, -1236f, 142f), Struct_1(vec2<i32>(0i, -1i), false, vec2<u32>(20064u, 32695u)), vec3<bool>(true, true, true)), Struct_3(vec3<bool>(true, true, false), vec3<f32>(-269f, -300f, 110f), Struct_1(vec2<i32>(-23612i, 0i), false, vec2<u32>(23818u, 4294967295u)), vec3<bool>(false, true, false)));

var<private> global2: f32 = 686f;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_5, arg_1: bool, arg_2: Struct_2) -> vec3<u32> {
    global0 = Struct_4(Struct_2(arg_2.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.b.a.x, arg_0.b.a.x, arg_2.a.x)), global0.c);
    var var_0 = -(~1i);
    global0 = Struct_4(Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(arg_2.a)), arg_2.a))), arg_0.a.b, global0.c);
    let var_1 = Struct_5(global1[_wgslsmith_index_u32(1u, 6u)], Struct_2(arg_0.b.a));
    var_0 = 2147483647i;
    return ~(~vec3<u32>(1u, _wgslsmith_add_u32(global0.c.c.x, var_1.a.c.c.x), 4294967295u)) | vec3<u32>(69159u, u_input.b.x, 4294967295u);
}

fn func_2(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = global0.b.yz;
    let var_1 = true;
    let var_2 = _wgslsmith_mod_u32(35232u, global0.c.c.x);
    let var_3 = -global0.c.a & vec2<i32>(-1i, -67145i ^ global0.c.a.x);
    let var_4 = abs(_wgslsmith_clamp_vec3_u32(u_input.b.wwy, abs(vec3<u32>(~global0.c.c.x, 0u, 0u | global0.c.c.x)), func_3(Struct_5(Struct_3(vec3<bool>(global0.c.b, true, true), vec3<f32>(1369f, -351f, arg_0.a.x), Struct_1(global0.c.a, global0.c.b, vec2<u32>(20041u, 5203u)), vec3<bool>(true, false, var_1)), arg_0), var_1, global0.a)));
    return Struct_1(firstTrailingBit(abs(_wgslsmith_div_vec2_i32(vec2<i32>(global0.c.a.x, 2147483647i), global0.c.a)) ^ ~global0.c.a), global0.c.b, var_4.xz);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: bool) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(global0.b + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-220f, 1742f, -592f), vec3<f32>(-509f, global0.b.x, global0.a.a.x), vec3<bool>(global0.c.b, global0.c.b, arg_0.b))))))));
    let var_1 = 14242u;
    let var_2 = 13230u;
    global0 = Struct_4(global0.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, vec3<f32>(-590f, global0.a.a.x, 966f)) * vec3<f32>(var_0.x, global0.a.a.x, var_0.x)), vec3<f32>(_wgslsmith_div_f32(var_0.x, global0.a.a.x), _wgslsmith_f_op_f32(-1438f + global0.b.x), _wgslsmith_f_op_f32(-global0.a.a.x)), !(!vec3<bool>(arg_3, true, true))))), arg_1);
    global0 = Struct_4(Struct_2(global0.a.a), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.a.x)), var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.x, -395f)) * -218f)), func_2(Struct_2(global0.a.a), global0.c.c.x));
    return Struct_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.a.a.x, _wgslsmith_f_op_f32(round(483f)), _wgslsmith_f_op_f32(var_0.x - -152f), _wgslsmith_f_op_f32(var_0.x - 198f))), vec4<f32>(_wgslsmith_f_op_f32(abs(-1290f)), _wgslsmith_f_op_f32(1404f - -1534f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.x - var_0.x) - var_0.x), var_0.x)));
}

fn func_1() -> vec2<u32> {
    var var_0 = func_4(global0.c, func_2(global0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(99834u, global0.c.c.x), vec2<u32>(u_input.b.x, 6582u)) | ~(~4294967295u)), global0.c.a.x, global0.c.b);
    global1 = array<Struct_3, 6>();
    let var_1 = Struct_1(-reverseBits(select(vec2<i32>(global0.c.a.x, -2147483647i) | vec2<i32>(global0.c.a.x, global0.c.a.x), -vec2<i32>(global0.c.a.x, 21999i), vec2<bool>(false, global0.c.b))), false, u_input.a);
    return ~_wgslsmith_add_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a, global0.c.c) ^ global0.c.c, ~var_1.c);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = abs(select(vec3<u32>(~4294967295u, global0.c.c.x, u_input.a.x >> (31415u % 32u)), ~vec3<u32>(1u, 41802u, 0u), vec3<bool>(global0.c.b, global0.c.a.x != 1i, false | global0.c.b)) | vec3<u32>(~70100u, firstLeadingBit(4294967295u), 4294967295u >> ((4294967295u & u_input.a.x) % 32u)));
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1636f - global0.a.a.x) * 636f))) * 2351f));
    var var_1 = abs(_wgslsmith_dot_vec2_u32(func_1(), ~var_0.xz));
    var var_2 = func_4(Struct_1(_wgslsmith_div_vec2_i32(vec2<i32>(global0.c.a.x, ~global0.c.a.x), -vec2<i32>(-7556i, -1i)), !(!(true | global0.c.b)), u_input.b.yx << (func_3(Struct_5(Struct_3(vec3<bool>(global0.c.b, false, global0.c.b), global0.b, Struct_1(vec2<i32>(global0.c.a.x, global0.c.a.x), true, u_input.a), vec3<bool>(true, global0.c.b, global0.c.b)), global0.a), !global0.c.b, func_4(Struct_1(vec2<i32>(global0.c.a.x, -3725i), false, vec2<u32>(global0.c.c.x, 0u)), global0.c, global0.c.a.x, true)).zx % vec2<u32>(32u))), global0.c, global0.c.a.x, global0.c.c.x >= _wgslsmith_div_u32(_wgslsmith_mult_u32(4294967295u, var_0.x), ~(~8763u))).a;
    let var_3 = _wgslsmith_f_op_f32(min(global0.b.x, 995f));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(~(~4294967295u), _wgslsmith_clamp_u32(u_input.b.x, global0.c.c.x, func_1().x), func_2(Struct_2(global0.a.a), global0.c.c.x).c.x, countOneBits(func_2(global0.a, var_0.x).c.x)), global0.c.a.x, vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_f32(-global0.a.a.x), _wgslsmith_f_op_f32(round(global0.a.a.x))));
}

