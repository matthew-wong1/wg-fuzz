struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_5 {
    a: Struct_2,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<vec3<f32>, 16> = array<vec3<f32>, 16>(vec3<f32>(1552f, -908f, 503f), vec3<f32>(-372f, 903f, 456f), vec3<f32>(-1129f, -209f, -485f), vec3<f32>(-2061f, 1000f, -1479f), vec3<f32>(2476f, 904f, 1000f), vec3<f32>(-1630f, 202f, -1207f), vec3<f32>(-206f, -500f, 578f), vec3<f32>(-297f, -444f, 906f), vec3<f32>(-1137f, 731f, 1000f), vec3<f32>(449f, 239f, -1600f), vec3<f32>(165f, 1043f, 952f), vec3<f32>(-111f, -430f, 1305f), vec3<f32>(1000f, -1380f, 922f), vec3<f32>(-1113f, -122f, 731f), vec3<f32>(-205f, -465f, -1671f), vec3<f32>(-2838f, 1000f, 755f));

var<private> global2: array<vec3<u32>, 27>;

var<private> global3: u32 = 0u;

var<private> global4: vec2<i32>;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> vec2<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-979f * _wgslsmith_div_f32(284f, -194f)), _wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(1512f)))))));
    global0 = Struct_4(global0.a, u_input.a);
    global3 = select(~abs(abs(94526u)), 1u | u_input.c, global0.a.x);
    global1 = array<vec3<f32>, 16>();
    var var_1 = _wgslsmith_dot_vec2_u32(select(~(~(vec2<u32>(1u, u_input.c) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))), max(vec2<u32>(4294967295u >> (u_input.c % 32u), 0u), _wgslsmith_mult_vec2_u32(select(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 0u), vec2<bool>(global0.a.x, true)), max(vec2<u32>(1u, 4294967295u), vec2<u32>(u_input.c, 4294967295u)))), true), firstLeadingBit(vec2<u32>(_wgslsmith_dot_vec3_u32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(0u, 17841u), 27u)], vec3<u32>(u_input.c, u_input.c, u_input.c)), ~_wgslsmith_div_u32(u_input.c, u_input.c))));
    return ~select(_wgslsmith_add_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.c, 53374u), vec2<u32>(0u, u_input.c)), vec2<u32>(4294967295u, 68429u)), _wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.c, u_input.c)), min(abs(vec2<u32>(44731u, u_input.c)), vec2<u32>(u_input.c, 1073u) >> (vec2<u32>(u_input.c, u_input.c) % vec2<u32>(32u)))), !global0.a.zx);
}

fn func_4(arg_0: Struct_4, arg_1: vec3<f32>) -> u32 {
    global1 = array<vec3<f32>, 16>();
    let var_0 = arg_0;
    let var_1 = Struct_1(arg_1.x);
    global0 = arg_0;
    global2 = array<vec3<u32>, 27>();
    return u_input.c;
}

fn func_2(arg_0: vec2<u32>, arg_1: u32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(422f)))))))) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(272f * 1160f)), -141f)));
    global2 = array<vec3<u32>, 27>();
    var var_1 = 1143f;
    var var_2 = func_4(Struct_4(vec3<bool>(!(global0.a.x | global0.a.x), true, true), -(~(u_input.b.x >> (arg_1 % 32u)))), _wgslsmith_f_op_vec3_f32(-global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(_wgslsmith_sub_vec2_u32(arg_0, arg_0)), func_3()), 16u)]));
    let var_3 = -(~_wgslsmith_mod_vec4_i32(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(global0.b, u_input.b.x, 30763i, global4.x), vec4<i32>(-1i, global0.b, global0.b, global0.b))), -firstTrailingBit(vec4<i32>(19157i, global4.x, global0.b, -42590i))));
    return Struct_4(global0.a, min(global4.x, -2147483647i));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_4(global0.a, _wgslsmith_dot_vec4_i32(vec4<i32>(-global0.b, -global0.b, firstTrailingBit(0i), -1i & global4.x) ^ (~vec4<i32>(u_input.b.x, 11456i, global0.b, 38050i) & ~vec4<i32>(global0.b, 1i, global4.x, global0.b)), ~select(select(vec4<i32>(u_input.a, global4.x, global4.x, 0i), vec4<i32>(-8034i, 1i, global4.x, 2147483647i), global0.a.x), _wgslsmith_add_vec4_i32(vec4<i32>(39045i, global0.b, global4.x, 2535i), vec4<i32>(-14631i, global0.b, u_input.a, 22418i)), true)));
    var_0 = func_2(countOneBits(abs(firstTrailingBit(vec2<u32>(arg_2.b.b, u_input.c)))), 41947u);
    var var_1 = arg_2.a;
    global2 = array<vec3<u32>, 27>();
    global1 = array<vec3<f32>, 16>();
    return vec4<bool>(!any(select(arg_0, arg_0, true)) | func_2(vec2<u32>(1u, ~arg_2.b.b), max(37110u, 34446u)).a.x, !arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1880f) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1786f + arg_1.x) * -668f)), any(select(select(vec4<bool>(false, false, arg_0.x, global0.a.x), vec4<bool>(false, arg_0.x, var_0.a.x, arg_0.x), select(vec4<bool>(true, false, true, false), vec4<bool>(arg_0.x, var_0.a.x, var_0.a.x, false), global0.a.x)), !vec4<bool>(var_0.a.x, var_0.a.x, true, true), true)));
}

fn func_5(arg_0: vec2<i32>, arg_1: f32, arg_2: vec4<bool>) -> vec2<bool> {
    let var_0 = Struct_1(1000f);
    var var_1 = u_input.b.x;
    global1 = array<vec3<f32>, 16>();
    var var_2 = ~1u;
    var_2 = abs(_wgslsmith_add_u32(countOneBits(min(~1u, u_input.c)), u_input.c));
    return vec2<bool>(false, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec2<bool>(global0.a.x, true), func_5(abs(-_wgslsmith_div_vec2_i32(u_input.b, u_input.b)), 1000f, vec4<bool>(true, all(func_1(global0.a.yz, global1[_wgslsmith_index_u32(32234u, 16u)], Struct_3(Struct_2(Struct_1(-851f), u_input.c, vec2<f32>(-2820f, -625f)), Struct_2(Struct_1(-1349f), u_input.c, vec2<f32>(-1340f, 1000f))))), true, false)), vec2<bool>(true & global0.a.x, all(!func_1(vec2<bool>(true, global0.a.x), global1[_wgslsmith_index_u32(76283u, 16u)], Struct_3(Struct_2(Struct_1(837f), 0u, vec2<f32>(201f, -194f)), Struct_2(Struct_1(1000f), u_input.c, vec2<f32>(-2126f, 557f)))))));
    let var_1 = ~min(global4.x, -22370i);
    global0 = func_2(vec2<u32>(~0u, 1u), 24175u);
    let var_2 = ~(_wgslsmith_div_vec4_i32(-(~vec4<i32>(39886i, 36058i, -2147483647i, global0.b)), ~(-vec4<i32>(17060i, var_1, 2147483647i, var_1))) | _wgslsmith_mult_vec4_i32(-_wgslsmith_div_vec4_i32(vec4<i32>(global4.x, var_1, u_input.b.x, -27587i), vec4<i32>(-2147483647i, global0.b, global0.b, global4.x)), max(abs(vec4<i32>(12646i, var_1, -24815i, u_input.b.x)), vec4<i32>(var_1, 3236i, global0.b, 1i))));
    let var_3 = func_2(_wgslsmith_mult_vec2_u32((vec2<u32>(1u, u_input.c) | vec2<u32>(u_input.c, 4294967295u)) | ((vec2<u32>(0u, u_input.c) | vec2<u32>(20597u, 1u)) ^ ~vec2<u32>(60960u, 1u)), min(~vec2<u32>(u_input.c, u_input.c), min(vec2<u32>(26288u, u_input.c), vec2<u32>(1u, 31290u))) << (_wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c), vec2<u32>(u_input.c, 124475u) & vec2<u32>(63258u, u_input.c)) % vec2<u32>(32u))), 75800u).b;
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(1f + -160f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2101f, -134f)) - -1000f));
    let var_5 = global0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -956f)))), 451f));
}

