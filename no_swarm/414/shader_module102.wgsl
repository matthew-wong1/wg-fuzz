struct Struct_1 {
    a: vec3<bool>,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec3<u32>) -> u32 {
    var var_0 = !select(select(vec2<bool>(!arg_0.a.x, arg_2.x >= arg_2.x), !vec2<bool>(arg_0.a.x, false), true | any(vec2<bool>(false, true))), !vec2<bool>(-28866i == arg_1.x, arg_0.a.x), vec2<bool>(true, arg_0.a.x));
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(721f, -188f)))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-1312f, 2406f), vec2<f32>(918f, -693f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(871f, 778f), vec2<f32>(165f, -757f), false))), arg_0.a.x))));
    let var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(f32(-1f) * -474f), false)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-741f * var_2.x), -267f))), var_2.x));
    let var_4 = !var_0.x;
    return ~(~firstTrailingBit(_wgslsmith_mod_u32(~var_1.b.x, arg_2.x)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = ~vec4<u32>(func_1(Struct_1(vec3<bool>(false, true, false), vec4<u32>(26391u, 1u, 17630u, 4294967295u)), vec4<i32>(arg_0, arg_0, 835i, arg_0), vec3<u32>(48869u, 1327u, 52333u)), 1u, 0u, _wgslsmith_clamp_u32(4294967295u, 14804u, 3323u) ^ min(36298u, 4294967295u)) ^ vec4<u32>(1u | _wgslsmith_dot_vec3_u32(~vec3<u32>(29251u, 1u, 51888u), ~vec3<u32>(4294967295u, 1u, 0u)), 83482u, ~(~(~16608u)), _wgslsmith_clamp_u32(_wgslsmith_div_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 0u), vec2<u32>(120858u, 59833u))), func_1(Struct_1(vec3<bool>(true, false, true), vec4<u32>(4294967295u, 1u, 47121u, 1u)), vec4<i32>(-1i, -50480i, 1i, arg_0), vec3<u32>(1291u, 0u, 1u)) | firstLeadingBit(4294967295u), max(_wgslsmith_mult_u32(1u, 4294967295u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 8988u, 4294967295u), vec4<u32>(1u, 5192u, 4294967295u, 4294967295u)))));
    let var_1 = ~u_input.a;
    var var_2 = Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(all(vec3<bool>(true, true, true)), any(vec2<bool>(false, false)), true), vec3<bool>(true, true, var_1.x != 2147483647i)), firstTrailingBit(_wgslsmith_sub_vec4_u32(var_0 << (select(var_0, var_0, vec4<bool>(false, false, true, true)) % vec4<u32>(32u)), var_0)));
    let var_3 = ~(min(_wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(16150u, var_0.x), vec2<u32>(4294967295u, var_2.b.x), vec2<u32>(48957u, 1u)), ~var_2.b.zy), select(_wgslsmith_clamp_u32(11306u, var_2.b.x, 0u), var_2.b.x, all(vec4<bool>(var_2.a.x, var_2.a.x, var_2.a.x, true)))) << (max(var_2.b.x, 4294967295u) % 32u));
    var_2 = Struct_1(select(var_2.a, var_2.a, 4294967295u <= var_0.x), max(reverseBits(_wgslsmith_sub_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(29528u, var_3, var_0.x, 29220u), vec4<u32>(var_2.b.x, var_0.x, var_2.b.x, var_3)), _wgslsmith_clamp_vec4_u32(vec4<u32>(20562u, 0u, 47936u, var_2.b.x), vec4<u32>(var_2.b.x, 0u, 1u, 1u), var_0))), ~vec4<u32>(_wgslsmith_sub_u32(1u, 1u), var_0.x, 0u >> (var_0.x % 32u), 48385u & var_3)));
    return 1i;
}

fn func_2(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> Struct_1 {
    let var_0 = -_wgslsmith_div_vec2_i32(vec2<i32>(abs(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x)), func_3(27847i ^ u_input.a.x)), reverseBits(~vec2<i32>(0i, -21915i)) | (-vec2<i32>(u_input.a.x, u_input.a.x) ^ (vec2<i32>(-2147483647i, 2147483647i) >> (vec2<u32>(1u, arg_2) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(750f, -1087f, 1167f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 1099f, 303f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-907f, 722f, -236f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-741f, 1003f, 1724f)))))));
    let var_2 = -26424i;
    var var_3 = arg_0.b.x;
    let var_4 = vec2<u32>(1u, max(~(~min(arg_2, arg_2)), 32747u ^ arg_0.b.x));
    return arg_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_2(Struct_1(select(vec3<bool>(true, true, true), vec3<bool>(any(vec2<bool>(true, true)), true, true), vec3<bool>(false, all(vec3<bool>(false, false, false)), true)), vec4<u32>(868u, ~1u, 1u, ~max(72904u, 1u))), !(!(5787i <= u_input.a.x)) || false, 11400u >> (_wgslsmith_clamp_u32(~_wgslsmith_clamp_u32(0u, 1u, 20249u), ~1u, func_1(Struct_1(vec3<bool>(false, true, false), vec4<u32>(57486u, 12696u, 32414u, 41978u)), max(vec4<i32>(9720i, 532i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, u_input.a.x, 1558i, u_input.a.x)), select(vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(4294967295u, 1829u, 79766u), true))) % 32u));
    var var_1 = Struct_1(vec3<bool>(!any(var_0.a.xz), u_input.a.x > abs(40888i), all(var_0.a.zx)), vec4<u32>(abs(4294967295u), ~abs(19089u), 1u, _wgslsmith_add_u32(~(var_0.b.x & 15209u), 0u)));
    var_1 = var_0;
    let var_2 = ~min(vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), firstLeadingBit(u_input.a)), u_input.a.x, -u_input.a.x), countOneBits(-vec3<i32>(u_input.a.x, 2147483647i, 2147483647i)) >> (_wgslsmith_mult_vec3_u32(var_0.b.xyw, select(var_0.b.wwy, vec3<u32>(var_1.b.x, 0u, 0u), var_1.a)) % vec3<u32>(32u)));
    var var_3 = ~(~var_1.b.yx);
    var var_4 = -2302f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2122f, -988f, 332f, -1011f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-711f, -1328f, 1211f, -1000f) * vec4<f32>(-1000f, -940f, -608f, -341f)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-600f, -119f, -968f, -839f), vec4<f32>(1130f, -203f, -684f, 1288f)))))))));
}

