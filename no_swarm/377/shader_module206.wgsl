struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: u32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<vec3<i32>, 1> = array<vec3<i32>, 1>(vec3<i32>(-14733i, 97246i, 2147483647i));

var<private> global2: f32;

var<private> global3: array<vec4<f32>, 19> = array<vec4<f32>, 19>(vec4<f32>(1430f, -943f, 1009f, 122f), vec4<f32>(1503f, -491f, 478f, 1000f), vec4<f32>(-524f, 758f, 1608f, 2669f), vec4<f32>(609f, 1435f, -722f, 1010f), vec4<f32>(-1137f, -2261f, 765f, -1993f), vec4<f32>(-628f, 1715f, 1000f, -1005f), vec4<f32>(-538f, -151f, 548f, -1000f), vec4<f32>(713f, 1073f, -208f, 1000f), vec4<f32>(580f, 380f, 1000f, -641f), vec4<f32>(1444f, 1196f, 272f, 1014f), vec4<f32>(-888f, -537f, -811f, -873f), vec4<f32>(-222f, 1131f, 1209f, -364f), vec4<f32>(1479f, -1117f, -1351f, 944f), vec4<f32>(1016f, -196f, 916f, 1000f), vec4<f32>(-1267f, 1750f, 1364f, -149f), vec4<f32>(-370f, 1372f, 1028f, 372f), vec4<f32>(-1652f, -933f, -433f, -270f), vec4<f32>(723f, -629f, -680f, -1369f), vec4<f32>(-504f, -101f, 1084f, -436f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -439f))) * 1000f);
    let var_1 = Struct_2(vec4<bool>(false, global0.c.b, all(vec3<bool>(global0.a.x, !global0.c.b, true)), true), !(!global0.a.wy), global0.c, select(_wgslsmith_clamp_vec3_u32(vec3<u32>(80216u, 1u, 3345u), firstTrailingBit(global0.d), ~u_input.b.yxx) << (min(vec3<u32>(15867u, u_input.b.x, 24396u), vec3<u32>(0u, 43296u, global0.d.x)) % vec3<u32>(32u)), u_input.b.wzx, true));
    var var_2 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-392f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(534f))))))));
    global2 = -593f;
    let var_3 = vec4<bool>(global0.c.a >= global0.c.a, true, any(!select(var_1.a.zw, vec2<bool>(true, true), false)), !global0.a.x);
    return 1575f;
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(func_3())));
    let var_1 = -u_input.a.x;
    var var_2 = !select(global0.a.yy, !select(global0.b, !vec2<bool>(global0.c.b, global0.c.b), !global0.b), false);
    let var_3 = 33455u;
    var var_4 = firstLeadingBit(global1[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(u_input.b, ~vec4<u32>(4294967295u, global0.d.x, 82139u, 4294967295u))) >> (60721u % 32u), 1u)]);
    return 24611u;
}

fn func_1(arg_0: vec2<i32>, arg_1: bool, arg_2: f32) -> u32 {
    let var_0 = ~(6875u ^ func_2());
    let var_1 = Struct_2(!select(!global0.a, vec4<bool>(true, false, !global0.b.x, all(global0.a.wwz)), false), select(global0.a.wz, global0.b, global0.a.x), Struct_1(global0.c.a >> (10229u % 32u), true), _wgslsmith_add_vec3_u32(vec3<u32>(39370u, _wgslsmith_dot_vec3_u32(vec3<u32>(2524u, var_0, 1u), u_input.b.zwy), _wgslsmith_add_u32(1u, 1u)), u_input.b.wxy));
    var var_2 = global0.c;
    global0 = var_1;
    global3 = array<vec4<f32>, 19>();
    return global0.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~(~3873u));
    let var_1 = func_1(u_input.c.zx, false || (_wgslsmith_sub_i32(-1i, global0.c.a) < -2147483647i), 1480f);
    global1 = array<vec3<i32>, 1>();
    var var_2 = all(select(global0.a, !global0.a, false));
    var var_3 = Struct_2(select(select(global0.a, global0.a, global0.a), vec4<bool>(select(false, global0.b.x, all(vec3<bool>(true, false, global0.c.b))), true, true, true), global0.a.x), select(vec2<bool>(all(vec3<bool>(global0.c.b, global0.c.b, true)), global0.a.x), vec2<bool>(select(false, true, global0.b.x), true), vec2<bool>(true, select(true, global0.a.x, global0.a.x))), Struct_1(~24356i, false), vec3<u32>(global0.d.x, var_1, ~reverseBits(u_input.b.x)));
    var var_4 = Struct_1(-(abs(global0.c.a) & 4310i), all(vec3<bool>(global0.a.x, true, all(var_3.a.xzz))));
    global3 = array<vec4<f32>, 19>();
    let var_5 = ~firstLeadingBit(~_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)) ^ ~(~1u);
    global1 = array<vec3<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~((vec4<u32>(var_3.d.x, var_1, 31502u, u_input.b.x) & vec4<u32>(0u, 1u, 68511u, 44022u)) | vec4<u32>(1u, 1u, var_5, u_input.b.x)), u_input.b), -1479f, _wgslsmith_dot_vec3_u32(select(~var_3.d, ~vec3<u32>(var_1, 57846u, 4294967295u), select(var_3.a.zxy, vec3<bool>(var_3.b.x, true, false), global0.a.yyz)), _wgslsmith_div_vec3_u32(select(vec3<u32>(4294967295u, 4294967295u, 40103u), var_3.d, vec3<bool>(var_4.b, var_4.b, global0.b.x)), vec3<u32>(global0.d.x, 28085u, 8817u) & vec3<u32>(u_input.b.x, u_input.b.x, 75422u))) >> (_wgslsmith_div_u32(min(~u_input.b.x, u_input.b.x), 4294967295u) % 32u), _wgslsmith_mult_vec4_u32(~select(u_input.b, vec4<u32>(var_5, var_3.d.x, global0.d.x, global0.d.x), !global0.a), ~vec4<u32>(select(1u, var_5, global0.c.b), 0u << (var_1 % 32u), 1u, u_input.b.x)), countOneBits(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(var_5, var_1), 66358u), _wgslsmith_add_vec2_u32(vec2<u32>(var_5, var_3.d.x), global0.d.xx))));
}

