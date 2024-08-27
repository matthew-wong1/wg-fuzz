struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: vec2<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: vec2<i32>,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: Struct_1,
    b: vec4<u32>,
    c: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27>;

var<private> global1: array<i32, 16>;

var<private> global2: array<i32, 18>;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(Struct_1(-709f, vec4<i32>(-10415i, 0i, 1101i, -7529i), vec2<bool>(true, true), 4294967295u), 2147483647i, false, vec2<i32>(1i, -10236i), 659f), Struct_2(Struct_1(443f, vec4<i32>(-1i, -49110i, -1i, 27161i), vec2<bool>(true, true), 4294967295u), i32(-2147483648), false, vec2<i32>(i32(-2147483648), -11006i), 562f), Struct_2(Struct_1(-681f, vec4<i32>(2147483647i, -1i, -7867i, 12505i), vec2<bool>(true, true), 63544u), -28332i, false, vec2<i32>(2147483647i, -36107i), 673f), Struct_2(Struct_1(231f, vec4<i32>(29286i, -28827i, -19279i, 0i), vec2<bool>(true, false), 27446u), -15146i, false, vec2<i32>(2147483647i, 53816i), -341f), Struct_2(Struct_1(-313f, vec4<i32>(28334i, 1i, 0i, 2147483647i), vec2<bool>(true, true), 8599u), 41572i, true, vec2<i32>(28017i, -17703i), 419f), Struct_2(Struct_1(280f, vec4<i32>(2147483647i, 35966i, 51582i, -15241i), vec2<bool>(true, false), 4294967295u), 0i, true, vec2<i32>(i32(-2147483648), 0i), 143f), Struct_2(Struct_1(-1000f, vec4<i32>(-1970i, -4779i, 16703i, i32(-2147483648)), vec2<bool>(true, false), 0u), -1i, false, vec2<i32>(-14683i, 0i), -365f), Struct_2(Struct_1(1000f, vec4<i32>(44822i, -43084i, -1i, 2147483647i), vec2<bool>(false, false), 0u), 1i, true, vec2<i32>(2147483647i, -1i), -398f), Struct_2(Struct_1(-285f, vec4<i32>(1i, -34462i, 46061i, -8819i), vec2<bool>(true, false), 4294967295u), -1i, true, vec2<i32>(33150i, -1i), -107f), Struct_2(Struct_1(1000f, vec4<i32>(-57128i, 0i, 1772i, 15327i), vec2<bool>(false, true), 1u), -18406i, true, vec2<i32>(-27001i, i32(-2147483648)), -1448f), Struct_2(Struct_1(-180f, vec4<i32>(35779i, i32(-2147483648), 0i, -1i), vec2<bool>(true, false), 4328u), -43719i, false, vec2<i32>(-1i, 2147483647i), -1212f), Struct_2(Struct_1(1000f, vec4<i32>(-39401i, -1i, -18083i, -37422i), vec2<bool>(false, true), 4294967295u), 1i, false, vec2<i32>(i32(-2147483648), 1i), 479f));

var<private> global4: i32 = 0i;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: f32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = Struct_3(Struct_1(-1015f, vec4<i32>(0i, global2[_wgslsmith_index_u32(1u, 18u)], -5658i, -1i), arg_0.c, ~(_wgslsmith_mult_u32(95732u, arg_0.d) & 1u)));
    var_0 = Struct_3(var_0.a);
    global3 = array<Struct_2, 12>();
    let var_1 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-arg_0.a), vec4<i32>(select(arg_1.x, arg_1.x, false), reverseBits(global2[_wgslsmith_index_u32(var_0.a.d, 18u)]), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0.a.d, var_0.a.d), 16u)] >> (_wgslsmith_div_u32(arg_0.d, 18485u) % 32u), 1i), vec2<bool>(all(vec3<bool>(var_0.a.c.x, arg_0.c.x, var_0.a.c.x)), any(var_0.a.c)), arg_0.d));
    var var_2 = vec4<f32>(530f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a.a + _wgslsmith_f_op_f32(471f + arg_0.a)) + -218f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -855f))) * _wgslsmith_f_op_f32(-944f * _wgslsmith_f_op_f32(588f - 493f))) * _wgslsmith_f_op_f32(arg_3.a - arg_3.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-2394f - arg_2)))))));
    return select(var_1.a.c, vec2<bool>(true, arg_3.c.x), true);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2) -> u32 {
    global0 = array<Struct_1, 27>();
    let var_0 = Struct_2(arg_0.a, 2147483647i, 4294967295u <= arg_1.a.d, reverseBits(_wgslsmith_div_vec2_i32(-firstTrailingBit(vec2<i32>(-2147483647i, arg_0.a.b.x)), arg_0.a.b.yw)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.a) * 602f));
    global3 = array<Struct_2, 12>();
    global0 = array<Struct_1, 27>();
    let var_1 = arg_0;
    return reverseBits(~(~var_1.a.d));
}

fn func_2(arg_0: bool) -> StorageBuffer {
    let var_0 = func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(-450f - _wgslsmith_div_f32(423f, 524f)), _wgslsmith_mod_vec4_i32(vec4<i32>(19998i, u_input.a.x, -28786i, 0i), vec4<i32>(global1[_wgslsmith_index_u32(1u, 16u)], 0i, global2[_wgslsmith_index_u32(4294967295u, 18u)], 8833i)), func_3(global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(34897u, 22961u), 27u)], vec4<i32>(u_input.b, global2[_wgslsmith_index_u32(4294967295u, 18u)], global2[_wgslsmith_index_u32(4294967295u, 18u)], 0i), _wgslsmith_f_op_f32(539f - -1001f), Struct_1(1345f, vec4<i32>(51775i, -26951i, 24317i, global1[_wgslsmith_index_u32(1u, 16u)]), vec2<bool>(true, false), 4294967295u)), ~11479u)), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~40616u), abs(_wgslsmith_div_u32(1u, 1u))), 12u)]);
    let var_1 = Struct_5(global0[_wgslsmith_index_u32(41418u, 27u)], ~(~_wgslsmith_clamp_vec4_u32(vec4<u32>(17634u, var_0, var_0, var_0), vec4<u32>(1u, 52154u, 1u, 0u), vec4<u32>(12410u, var_0, var_0, 0u)) | vec4<u32>(firstTrailingBit(16848u), abs(var_0), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0, var_0, 40344u), vec3<u32>(1u, 1u, 0u)), ~var_0)), arg_0 && true);
    var var_2 = _wgslsmith_div_f32(-606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-120f - var_1.a.a)))));
    var var_3 = ~abs(abs(abs(var_1.a.b)));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_div_vec4_i32(~select(var_1.a.b, vec4<i32>(var_3.x, 0i, -13941i, var_1.a.b.x), !var_1.c), _wgslsmith_sub_vec4_i32(var_1.a.b, ~_wgslsmith_sub_vec4_i32(vec4<i32>(var_3.x, u_input.a.x, 0i, 47169i), vec4<i32>(global1[_wgslsmith_index_u32(0u, 16u)], u_input.b, global2[_wgslsmith_index_u32(92379u, 18u)], global2[_wgslsmith_index_u32(0u, 18u)])))), select(!var_1.a.c, var_1.a.c, 29113i == max(var_1.a.b.x, ~global1[_wgslsmith_index_u32(4294967295u, 16u)])), _wgslsmith_mod_u32(37772u, var_0));
    return StorageBuffer(~(~0u));
}

fn func_1(arg_0: vec2<f32>) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_vec3_u32(~select(vec3<u32>(1u, 1u, 1u) << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)), reverseBits(vec3<u32>(1u, 1u, 1u)), true), ~(~select(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, 1u, 1u), vec3<bool>(false, false, false))));
    global4 = (i32(-1i) * -_wgslsmith_div_i32(1i, 63829i)) << (~(var_0.x << (~(~var_0.x) % 32u)) % 32u);
    let var_1 = ~1u;
    let var_2 = ~countOneBits(~vec2<u32>(var_0.x, 127879u)) ^ vec2<u32>(~70911u, var_0.x);
    var var_3 = vec2<u32>(1u, _wgslsmith_sub_u32(48828u, firstTrailingBit(var_2.x << (46283u % 32u))) & 1u);
    return func_2(true);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 27>();
    global2 = array<i32, 18>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1747f, 175f) * vec2<f32>(901f, -194f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(420f, -292f) * vec2<f32>(713f, -221f))))))));
}

