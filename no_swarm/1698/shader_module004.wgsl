struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: u32,
    c: i32,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: Struct_1,
    d: vec2<u32>,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: u32,
    d: vec2<i32>,
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

var<private> global0: array<vec4<f32>, 27> = array<vec4<f32>, 27>(vec4<f32>(-1000f, -3237f, -243f, 1248f), vec4<f32>(-1214f, 952f, 711f, 645f), vec4<f32>(349f, -1996f, -226f, 274f), vec4<f32>(-1631f, -637f, 409f, -961f), vec4<f32>(-658f, 3060f, 2147f, 584f), vec4<f32>(1036f, -825f, -264f, 372f), vec4<f32>(365f, 1000f, 624f, 980f), vec4<f32>(-1714f, 834f, -240f, -398f), vec4<f32>(-520f, 165f, -2116f, -1652f), vec4<f32>(-2423f, -644f, 2347f, -1055f), vec4<f32>(667f, -1424f, 1028f, -698f), vec4<f32>(-184f, -1000f, -792f, -228f), vec4<f32>(-749f, -146f, -1341f, 1274f), vec4<f32>(-1000f, 141f, -977f, 1258f), vec4<f32>(-1270f, 182f, 253f, -550f), vec4<f32>(835f, 1249f, -461f, -574f), vec4<f32>(1380f, 917f, 871f, 1000f), vec4<f32>(-389f, 1026f, 862f, 799f), vec4<f32>(-722f, -1026f, 239f, 473f), vec4<f32>(-856f, 1096f, 839f, 240f), vec4<f32>(-622f, 1000f, 1246f, 785f), vec4<f32>(-812f, 1532f, 812f, 610f), vec4<f32>(-895f, 564f, 1590f, 452f), vec4<f32>(745f, 1651f, -494f, 840f), vec4<f32>(304f, 522f, -505f, -1769f), vec4<f32>(337f, 1975f, -817f, -877f), vec4<f32>(1440f, -1101f, -260f, 677f));

var<private> global1: array<Struct_3, 4>;

var<private> global2: vec3<bool> = vec3<bool>(false, true, true);

var<private> global3: array<vec2<i32>, 2> = array<vec2<i32>, 2>(vec2<i32>(-18161i, -31033i), vec2<i32>(1i, 0i));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<bool> {
    var var_0 = Struct_4(vec3<bool>(false, global2.x, true), global2.yy, Struct_1(-8694i, select(vec2<bool>(any(vec3<bool>(global2.x, global2.x, global2.x)), u_input.c > 30584u), select(global2.xz, select(vec2<bool>(global2.x, true), global2.zy, global2.zz), vec2<bool>(false, false)), global2.zy), _wgslsmith_f_op_f32(1f * -206f), ~(-vec2<i32>(1i, u_input.d.x))), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(_wgslsmith_add_vec2_u32(~vec2<u32>(u_input.a.x, u_input.c), vec2<u32>(1u, u_input.c) | u_input.a), ~reverseBits(vec2<u32>(u_input.a.x, 0u))), vec2<u32>(~max(u_input.c, u_input.a.x), 1u)), select(select(global2.xx, global2.zy, vec2<bool>(global2.x, global2.x)), !global2.yz, select(vec2<bool>(any(vec2<bool>(global2.x, false)), true), !select(global2.zz, global2.zy, vec2<bool>(global2.x, global2.x)), global2.yz)));
    var var_1 = select(u_input.c >= 10512u, select(1u >= var_0.d.x, var_0.e.x == true, 8416u >= ~var_0.d.x), all(vec3<bool>(false, global2.x, any(vec4<bool>(true, true, true, false)) && true)));
    var var_2 = !vec3<bool>(!(firstTrailingBit(var_0.c.d.x) >= u_input.b), any(!select(vec4<bool>(false, false, false, var_0.e.x), vec4<bool>(var_0.c.b.x, true, global2.x, false), false)), all(select(select(vec4<bool>(true, global2.x, false, true), vec4<bool>(true, global2.x, global2.x, true), vec4<bool>(false, global2.x, true, var_0.e.x)), vec4<bool>(false, true, global2.x, true), select(vec4<bool>(true, var_0.c.b.x, global2.x, global2.x), vec4<bool>(false, false, var_0.c.b.x, var_0.e.x), var_0.b.x))));
    var var_3 = _wgslsmith_clamp_u32(107641u, 4294967295u, u_input.a.x);
    var var_4 = Struct_4(var_0.a, vec2<bool>(any(vec4<bool>(global2.x, global2.x, var_0.e.x, true)) | true, select(all(vec2<bool>(global2.x, var_2.x)), var_2.x, var_2.x)), Struct_1(~firstLeadingBit(925i), select(select(vec2<bool>(false, var_0.a.x), global2.yx, true), var_0.a.xz, select(var_2.zx, vec2<bool>(false, false), !global2.yz)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2001f))), max(vec2<i32>(var_0.c.a, ~0i), u_input.d)), vec2<u32>(var_0.d.x, u_input.a.x), select(var_0.b, vec2<bool>(!var_2.x | all(vec4<bool>(var_0.e.x, var_2.x, var_2.x, false)), false), select(var_0.c.b, !vec2<bool>(global2.x, false), !select(vec2<bool>(true, false), var_2.zx, var_0.a.x))));
    return var_0.a;
}

fn func_2() -> bool {
    global1 = array<Struct_3, 4>();
    global3 = array<vec2<i32>, 2>();
    global2 = func_3();
    global0 = array<vec4<f32>, 27>();
    global3 = array<vec2<i32>, 2>();
    return true;
}

fn func_1(arg_0: i32) -> vec3<u32> {
    global2 = vec3<bool>(true, global2.x || any(vec3<bool>(global2.x, global2.x && true, global2.x)), func_2());
    global1 = array<Struct_3, 4>();
    let var_0 = -815f;
    var var_1 = false;
    let var_2 = global1[_wgslsmith_index_u32(0u, 4u)];
    return vec3<u32>(u_input.a.x, ~max(u_input.a.x, 63256u), _wgslsmith_div_u32(abs(u_input.a.x >> (u_input.a.x % 32u)), 4294967295u)) >> ((_wgslsmith_clamp_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, u_input.c, 1u) ^ vec3<u32>(10384u, u_input.c, 4294967295u), vec3<u32>(24776u, u_input.a.x, 0u)), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.c), vec3<u32>(4294967295u, u_input.c, 24442u) << (vec3<u32>(u_input.c, 1u, u_input.c) % vec3<u32>(32u))), select(vec3<u32>(71799u, 46723u, 0u), vec3<u32>(u_input.a.x, u_input.c, 102811u), vec3<bool>(false, global2.x, global2.x)) ^ _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c, u_input.a.x, u_input.a.x), vec3<u32>(46747u, u_input.c, 48923u), vec3<u32>(u_input.a.x, 1u, 4294967295u))) & vec3<u32>(firstTrailingBit(u_input.c), 1u, u_input.a.x)) % vec3<u32>(32u));
}

fn func_4(arg_0: vec3<u32>, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec4<bool>) -> vec2<u32> {
    global2 = vec3<bool>(!all(arg_3), _wgslsmith_div_f32(arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1318f - arg_2.x))) >= -339f, global2.x);
    let var_0 = Struct_2(vec3<i32>(-1i) * -vec3<i32>(u_input.b, u_input.b, _wgslsmith_mod_i32(2147483647i, 29929i)), u_input.a.x, 1i);
    return vec2<u32>(max(_wgslsmith_sub_u32(~1u, ~u_input.c), ~(~arg_0.x)), _wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(arg_0.x, reverseBits(arg_0.x))), 60155u));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = array<vec2<i32>, 2>();
    var var_0 = -1i;
    var var_1 = 1i;
    var var_2 = u_input.d;
    global2 = vec3<bool>(true, !(!(!all(vec2<bool>(false, global2.x)))), !(reverseBits(u_input.c) > ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c), vec4<u32>(u_input.c, u_input.a.x, u_input.a.x, u_input.a.x))));
    global1 = array<Struct_3, 4>();
    var var_3 = func_4(~func_1(-2147483647i), Struct_3(2147483647i), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1319f, 844f, -402f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1069f, 348f, -101f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(225f, -1195f), -857f, -194f)))), select(vec4<bool>(func_2(), func_2(), global2.x != true, global2.x), !(!(!vec4<bool>(global2.x, true, global2.x, global2.x))), !select(!vec4<bool>(false, global2.x, false, global2.x), vec4<bool>(global2.x, true, global2.x, global2.x), !vec4<bool>(global2.x, true, global2.x, true))));
    var var_4 = all(select(!vec4<bool>(true, any(vec4<bool>(global2.x, true, global2.x, global2.x)), true, var_2.x > 0i), vec4<bool>(global2.x, any(func_3()), true, true), !select(!vec4<bool>(global2.x, false, global2.x, global2.x), !vec4<bool>(true, false, global2.x, global2.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(~select(var_3.x, 0u, global2.x) | ~var_3.x);
}

