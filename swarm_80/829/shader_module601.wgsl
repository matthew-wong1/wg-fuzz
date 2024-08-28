struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 41947i;

var<private> global1: i32;

var<private> global2: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec3<i32>(i32(-2147483648), -14432i, -1i), true, i32(-2147483648)), Struct_1(vec3<i32>(i32(-2147483648), -7429i, 1i), true, -1i), Struct_1(vec3<i32>(0i, -3687i, -29681i), false, -21936i), Struct_1(vec3<i32>(-7763i, 1i, -12362i), false, i32(-2147483648)), Struct_1(vec3<i32>(-3505i, -39413i, i32(-2147483648)), false, -12248i), Struct_1(vec3<i32>(i32(-2147483648), 12503i, i32(-2147483648)), false, 1i), Struct_1(vec3<i32>(0i, -14443i, 22185i), false, 12554i), Struct_1(vec3<i32>(-34274i, 1i, i32(-2147483648)), true, 0i), Struct_1(vec3<i32>(-1i, 0i, 25328i), false, -1122i));

var<private> global3: array<vec4<f32>, 6> = array<vec4<f32>, 6>(vec4<f32>(1226f, -612f, 536f, -376f), vec4<f32>(469f, 755f, -1539f, -538f), vec4<f32>(-542f, -172f, -1428f, -493f), vec4<f32>(-471f, 617f, 1323f, -377f), vec4<f32>(715f, -1557f, -776f, -493f), vec4<f32>(-1634f, 1000f, 522f, 665f));

var<private> global4: Struct_2 = Struct_2(vec2<f32>(468f, -432f), false, 56507u, 2136f, Struct_1(vec3<i32>(0i, 43009i, 32160i), false, 40360i));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = u_input.b;
    global2 = array<Struct_1, 9>();
    return arg_0;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: Struct_2) -> bool {
    global1 = 56569i;
    var var_0 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.d, global4.d)))), firstTrailingBit(select(1u, arg_1, false)) < 18028u, ~u_input.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(global4.a.x, arg_2.d)), 177f)), global4.a.x), global4.e), any(vec2<bool>(all(vec4<bool>(true, arg_0, false, arg_2.e.b)), arg_0)));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(arg_2.d, 652f, true))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(810f))));
    global4 = arg_2;
    var_1 = _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(960f + _wgslsmith_f_op_f32(floor(global4.a.x))))));
    return true;
}

fn func_1() -> Struct_2 {
    var var_0 = abs(abs(global4.e.a.xy)) & select(~min(vec2<i32>(global4.e.a.x, global4.e.a.x) & vec2<i32>(0i, 1i), _wgslsmith_div_vec2_i32(vec2<i32>(u_input.b, -35043i), vec2<i32>(u_input.b, -1i))), vec2<i32>(~u_input.b, global4.e.c) ^ ~firstLeadingBit(vec2<i32>(u_input.b, 0i)), false);
    var var_1 = vec3<bool>(true, (all(!vec2<bool>(global4.b, false)) && any(vec2<bool>(true, true))) & false, global4.e.b);
    global0 = select(-_wgslsmith_mult_i32(-27196i, 916i | u_input.b) | u_input.b, 0i, true);
    var var_2 = global4.d;
    var var_3 = vec3<bool>(!(!func_2(true, 0u, Struct_2(global4.a, global4.e.b, u_input.a, -109f, Struct_1(vec3<i32>(0i, 1i, var_0.x), false, u_input.b)))), var_1.x, true);
    return Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.d, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1353f * -1048f), global4.d)))), var_1.x, 0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global4.a.x))), Struct_1(~_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 1i), global4.e.a), _wgslsmith_mult_u32(81084u, global4.c) < ~global4.c, -48743i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = global4.e.a.x;
    var var_0 = countOneBits(vec3<i32>(-(~(i32(-1i) * -1i)), global4.e.a.x, -reverseBits(-1i)));
    let var_1 = func_1();
    var var_2 = (-u_input.b >> (0u % 32u)) & _wgslsmith_dot_vec3_i32(select(~(-global4.e.a), firstTrailingBit(vec3<i32>(var_0.x, -15077i, 66674i)), all(vec3<bool>(var_1.e.b, false, global4.b))), vec3<i32>(-2147483647i, -2147483647i, ~global4.e.c));
    global0 = -26961i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(1i, 15682i, var_0.x, var_1.e.a.x), -vec4<i32>(-1i, var_0.x, 1i, 17531i))), 63857u, -vec4<i32>(u_input.b, u_input.b, -4441i, -u_input.b) >> ((abs(reverseBits(vec4<u32>(var_1.c, 4294967295u, 1u, 1u))) >> (vec4<u32>(countOneBits(91978u), ~global4.c, _wgslsmith_clamp_u32(var_1.c, u_input.a, 1272u), global4.c) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

