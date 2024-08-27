struct Struct_1 {
    a: vec2<f32>,
    b: bool,
    c: u32,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: u32,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: Struct_3;

var<private> global1: array<Struct_1, 16> = array<Struct_1, 16>(Struct_1(vec2<f32>(-311f, 1472f), false, 1u, 132f, -4395i), Struct_1(vec2<f32>(298f, -424f), false, 76071u, 141f, i32(-2147483648)), Struct_1(vec2<f32>(-1214f, -304f), true, 65385u, -635f, -1i), Struct_1(vec2<f32>(592f, 1841f), true, 35815u, -309f, i32(-2147483648)), Struct_1(vec2<f32>(-625f, -362f), false, 34767u, 639f, 1i), Struct_1(vec2<f32>(-1604f, 830f), true, 60876u, 313f, 49036i), Struct_1(vec2<f32>(1234f, -1000f), true, 0u, -1195f, 29183i), Struct_1(vec2<f32>(188f, -438f), false, 25744u, -2456f, -1i), Struct_1(vec2<f32>(-1516f, -862f), false, 2501u, 1824f, -1i), Struct_1(vec2<f32>(-397f, -581f), true, 1u, 541f, 13373i), Struct_1(vec2<f32>(914f, 829f), false, 1u, 389f, -66118i), Struct_1(vec2<f32>(1000f, 1119f), true, 0u, 1053f, -16246i), Struct_1(vec2<f32>(-207f, 611f), false, 110493u, 481f, 1928i), Struct_1(vec2<f32>(-1470f, 513f), false, 56524u, 1046f, 4463i), Struct_1(vec2<f32>(-812f, -150f), true, 4294967295u, 1012f, 1i), Struct_1(vec2<f32>(224f, 731f), false, 58163u, -165f, 36189i));

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: i32) -> Struct_3 {
    let var_0 = Struct_3(global0.a, 39566i, true);
    let var_1 = !(true | (all(select(vec2<bool>(var_0.c, arg_0.b), vec2<bool>(true, false), arg_0.b)) && false));
    return var_0;
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: vec2<f32>, arg_3: vec2<bool>) -> bool {
    var var_0 = global0.a.a | ~(~firstTrailingBit(4294967295u));
    let var_1 = _wgslsmith_dot_vec2_i32(u_input.b, u_input.c);
    let var_2 = func_2(global0.a, (vec4<u32>(7315u, u_input.d, u_input.d, global0.a.a) ^ vec4<u32>(abs(arg_1.a.a), ~global0.a.a, reverseBits(arg_1.a.a), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d, 25674u), vec2<u32>(48045u, u_input.d)))) >> (select(_wgslsmith_sub_vec4_u32(vec4<u32>(17878u, u_input.d, global0.a.a, u_input.d), vec4<u32>(u_input.d, 38559u, 1229u, arg_1.a.a)), vec4<u32>(80140u, ~5791u, 12061u, ~u_input.d), func_2(arg_1.a, ~vec4<u32>(arg_1.a.a, 20899u, arg_1.a.a, u_input.d), _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1013f, 1308f, 151f, 1248f))), _wgslsmith_clamp_i32(u_input.a, 23381i, arg_1.b)).c) % vec4<u32>(32u)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), vec4<f32>(arg_2.x, 1000f, arg_2.x, -926f))))))), firstTrailingBit(_wgslsmith_add_i32(global0.b, arg_1.b) ^ arg_1.b) ^ countOneBits(global0.b)).a;
    let var_3 = abs(vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(u_input.a, var_1), abs(firstLeadingBit(global0.b)), -33839i), ~35117i, var_1, i32(-1i) * -1i));
    global1 = array<Struct_1, 16>();
    return arg_1.c;
}

fn func_4(arg_0: bool, arg_1: vec2<bool>) -> u32 {
    global0 = func_2(Struct_2(global0.a.a, true), select(vec4<u32>(u_input.d, 4294967295u, ~u_input.d, u_input.d) >> (~abs(vec4<u32>(0u, 1u, 0u, u_input.d)) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.d, u_input.d, u_input.d), min(vec3<u32>(global0.a.a, 41318u, 1u), vec3<u32>(global0.a.a, 5294u, 28018u))), 17444u, 1u, _wgslsmith_sub_u32(43137u, _wgslsmith_sub_u32(4294967295u, 4294967295u))), vec4<bool>(arg_0, true, !(global0.b == global0.b), true)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(719f, 950f, -1000f, -1064f) - vec4<f32>(-478f, -436f, -1388f, -502f))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-569f, 512f, 1857f, -655f), vec4<f32>(196f, -1118f, 460f, -867f), vec4<bool>(arg_1.x, true, arg_1.x, arg_0))))), vec4<bool>(true, true && arg_1.x, any(arg_1), arg_1.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-512f, 1000f, 827f, -388f)))))), global0.b);
    var var_0 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(188f)))), _wgslsmith_f_op_f32(-409f - 558f)), vec2<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(788f + 650f) + -569f))), !(!(func_2(Struct_2(global0.a.a, arg_1.x), vec4<u32>(1u, 26456u, 30706u, 2472u), vec4<f32>(1442f, 1121f, -590f, 106f), -74847i).b > _wgslsmith_mod_i32(-38051i, 43909i))), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(44517u, u_input.d) >> (vec2<u32>(19043u, 10188u) % vec2<u32>(32u)), vec2<u32>(select(u_input.d, u_input.d, arg_0), firstLeadingBit(u_input.d))), _wgslsmith_div_u32(25777u, global0.a.a) ^ _wgslsmith_clamp_u32(~4294967295u, ~0u, u_input.d)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2286f - _wgslsmith_f_op_f32(trunc(874f))))), -2147483647i);
    let var_1 = global0.a;
    var var_2 = -1i;
    let var_3 = _wgslsmith_div_vec2_u32(vec2<u32>(62648u, ~4294967295u), ~(~abs(vec2<u32>(1u, 41311u)) ^ countOneBits(~vec2<u32>(var_0.c, 1u))));
    return ~var_3.x;
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: vec4<bool>) -> vec4<u32> {
    let var_0 = vec3<u32>(arg_1.c, func_4(global0.a.b, vec2<bool>(func_3(!vec3<bool>(global0.c, true, arg_0.x), func_2(Struct_2(3049u, arg_2.x), vec4<u32>(arg_1.c, 30732u, u_input.d, 4294967295u), vec4<f32>(arg_1.d, -741f, arg_1.d, -1254f), 20783i), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(854f, 1374f))), arg_2.zx), arg_1.d <= _wgslsmith_f_op_f32(arg_1.d + arg_1.d))), u_input.d);
    let var_1 = _wgslsmith_mult_i32(u_input.a >> (abs(1u) % 32u), min(~(-_wgslsmith_sub_i32(0i, arg_1.e)), ~_wgslsmith_sub_i32(~(-9666i), arg_1.e & 56240i)));
    global0 = Struct_3(global0.a, _wgslsmith_dot_vec3_i32(countOneBits(-vec3<i32>(-1i, 29178i, 1i) | _wgslsmith_add_vec3_i32(vec3<i32>(arg_1.e, u_input.a, arg_1.e), vec3<i32>(u_input.e.x, 0i, arg_1.e))), ~abs(vec3<i32>(-1i, 32550i, arg_1.e))), false);
    let var_2 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-171f))));
    var var_3 = _wgslsmith_sub_i32(global0.b, 0i);
    return select(vec4<u32>(var_0.x, 20741u, ~global0.a.a, u_input.d), countOneBits(vec4<u32>(31389u, var_0.x, var_0.x, ~0u)), arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = vec3<i32>(-(i32(-1i) * -(1i & u_input.c.x)), global0.b, -u_input.c.x);
    let var_2 = -2147483647i;
    var_0 = global0.c;
    let var_3 = func_1(!select(!select(vec3<bool>(true, global0.a.b, true), vec3<bool>(true, false, global0.a.b), global0.a.b), select(vec3<bool>(false, true, true), select(vec3<bool>(true, global0.a.b, false), vec3<bool>(false, true, false), vec3<bool>(global0.c, global0.a.b, global0.a.b)), vec3<bool>(true, true, true)), select(vec3<bool>(false, true, false), !vec3<bool>(true, global0.a.b, global0.a.b), true)), global1[_wgslsmith_index_u32(global0.a.a, 16u)], !(!vec4<bool>(global0.c, global0.c, true, !global0.c)));
    var var_4 = 1u < u_input.d;
    let x = u_input.a;
    s_output = StorageBuffer(812f);
}

