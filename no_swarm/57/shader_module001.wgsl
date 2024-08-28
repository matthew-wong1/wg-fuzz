struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec4<f32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 31>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: bool) -> vec2<f32> {
    var var_0 = any(vec2<bool>(arg_0, false));
    global0 = array<vec4<f32>, 31>();
    let var_1 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), firstTrailingBit(vec4<u32>(u_input.b, 34170u, u_input.b, 5819u))), ~(~u_input.b), u_input.b, 1u), false, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-743f, 1000f, -549f, 299f), global0[_wgslsmith_index_u32(u_input.b, 31u)])))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1023f, 453f, -1000f, 1000f)), select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, arg_0, true), arg_0))), abs(vec4<u32>(10115u, _wgslsmith_clamp_u32(1u, u_input.b, u_input.b), firstTrailingBit(u_input.b), u_input.b)), select(min(vec3<i32>(11991i, u_input.a.x, u_input.c.x), _wgslsmith_div_vec3_i32(vec3<i32>(1i, 2147483647i, 2147483647i), vec3<i32>(-57416i, u_input.a.x, u_input.d.x))), u_input.d, vec3<bool>(select(false, arg_0, arg_0), true, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1084f, -699f))))))), _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(u_input.b, u_input.b), 6185u, ~_wgslsmith_mod_u32(0u, 34618u)), _wgslsmith_mod_vec3_u32(min(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 0u), vec3<u32>(u_input.b, u_input.b, 76816u)), ~vec3<u32>(13715u, u_input.b, 1u)), ~max(vec3<u32>(10676u, u_input.b, u_input.b), vec3<u32>(u_input.b, u_input.b, 22008u)))), ~reverseBits(firstTrailingBit(vec4<u32>(u_input.b, 39853u, 1u, 1u))));
    global0 = array<vec4<f32>, 31>();
    let var_2 = vec4<bool>(arg_0, var_1.a.b, true, false);
    return vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-713f))));
}

fn func_2(arg_0: Struct_1) -> f32 {
    var var_0 = vec2<bool>(arg_0.b, arg_0.b | (all(select(vec3<bool>(arg_0.b, arg_0.b, false), vec3<bool>(true, arg_0.b, false), true)) || all(select(vec3<bool>(false, arg_0.b, false), vec3<bool>(arg_0.b, true, false), vec3<bool>(arg_0.b, arg_0.b, true)))));
    var_0 = !(!(!(!select(vec2<bool>(true, arg_0.b), vec2<bool>(false, true), false))));
    var var_1 = !(!(!all(select(vec3<bool>(false, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), true))));
    var var_2 = Struct_2(Struct_1(~arg_0.a, any(select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), select(vec4<bool>(true, arg_0.b, arg_0.b, var_0.x), vec4<bool>(true, arg_0.b, arg_0.b, true), true), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-141f, -574f, arg_0.c.x, arg_0.c.x)) - _wgslsmith_f_op_vec4_f32(ceil(global0[_wgslsmith_index_u32(arg_0.a.x, 31u)]))) * arg_0.c), arg_0.a, _wgslsmith_mod_vec3_i32(vec3<i32>(-44507i, -50294i, _wgslsmith_sub_i32(arg_0.e.x, u_input.c.x)), select(max(u_input.c, arg_0.e), u_input.d, select(vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(true, true, true))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(any(select(vec2<bool>(false, false), vec2<bool>(true, true), arg_0.b)))) * arg_0.c.xw), _wgslsmith_dot_vec3_u32(max(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.a.x, u_input.b, u_input.b), arg_0.d.wwy), ~vec3<u32>(135167u, 0u, 1u)) ^ arg_0.d.xxy, ~(~vec3<u32>(0u, arg_0.d.x, arg_0.d.x))), ~vec4<u32>(~_wgslsmith_add_u32(arg_0.d.x, u_input.b), _wgslsmith_sub_u32(u_input.b, 0u), 6471u, 1u));
    var var_3 = Struct_1(vec4<u32>(2525u, 0u, 4294967295u, 67086u), var_2.a.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(-286f, _wgslsmith_f_op_f32(-arg_0.c.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(186f)) + _wgslsmith_f_op_f32(f32(-1f) * -379f)), _wgslsmith_f_op_vec2_f32(func_3(var_0.x)).x) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.a.c.x, -555f, arg_0.c.x, -1203f) + global0[_wgslsmith_index_u32(u_input.b, 31u)]) + _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(u_input.b, 31u)])), arg_0.c)), arg_0.d, vec3<i32>(0i, ~(2147483647i << (~arg_0.d.x % 32u)), 37448i));
    return arg_0.c.x;
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<f32>) -> vec2<bool> {
    var var_0 = 44181u;
    global0 = array<vec4<f32>, 31>();
    global0 = array<vec4<f32>, 31>();
    let var_1 = Struct_2(Struct_1(abs(arg_1.d), arg_1.a.b, _wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(4748u, 31u)] * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-arg_1.a.c), global0[_wgslsmith_index_u32(~0u, 31u)]))), _wgslsmith_sub_vec4_u32(~arg_1.d, select(vec4<u32>(0u, arg_1.c, 125767u, 7856u), vec4<u32>(arg_1.a.a.x, u_input.b, arg_1.c, arg_1.c) ^ vec4<u32>(73550u, 81951u, arg_1.a.d.x, arg_1.a.d.x), !vec4<bool>(arg_1.a.b, arg_1.a.b, false, arg_1.a.b))), u_input.d), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(244f, -1000f, arg_1.a.b)), _wgslsmith_f_op_f32(func_2(arg_1.a))), 1700f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.a.c.wx) - vec2<f32>(-367f, arg_0)))), _wgslsmith_add_u32(_wgslsmith_mult_u32(~select(11085u, arg_1.c, false), ~(~arg_1.a.d.x)), _wgslsmith_mod_u32(0u, ~36269u)), ~abs(~arg_1.a.d));
    var_0 = 1u;
    return !(!vec2<bool>(!arg_1.a.b, true));
}

fn func_4(arg_0: vec2<bool>, arg_1: bool, arg_2: i32, arg_3: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(arg_3.b * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(arg_3.a.c.x))), 867f))));
    var var_1 = arg_3;
    var var_2 = 850f;
    let var_3 = _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(max(arg_3.a.d.x, var_1.c), ~_wgslsmith_mod_u32(46137u, 1u)), 4294967295u, select(~36824u, 8466u, true), arg_3.c), abs(var_1.d));
    global0 = array<vec4<f32>, 31>();
    return Struct_1(vec4<u32>(u_input.b, _wgslsmith_add_u32(max(4294967295u, arg_3.a.d.x), ~_wgslsmith_add_u32(u_input.b, 0u)), 1u, ~(max(var_3.x, 0u) & ~var_1.a.a.x)), true, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(arg_3.a.c, vec4<f32>(1000f, -1880f, arg_3.b.x, -159f), vec4<bool>(false, false, true, arg_0.x))) * vec4<f32>(arg_3.a.c.x, -1000f, arg_3.b.x, 767f)))))), ~vec4<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(62646u, 8551u, u_input.b), _wgslsmith_clamp_vec3_u32(arg_3.a.d.wwx, var_3.xyw, vec3<u32>(0u, 38161u, u_input.b))), 0u, _wgslsmith_dot_vec2_u32(vec2<u32>(519u, arg_3.d.x), vec2<u32>(32054u, 10095u)), ~(~u_input.b)), abs(-(vec3<i32>(arg_2, 819i, -1i) | vec3<i32>(u_input.a.x, -19874i, u_input.c.x))));
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global0 = array<vec4<f32>, 31>();
    return Struct_2(func_4(vec2<bool>(func_4(select(vec2<bool>(true, arg_0.b), vec2<bool>(arg_0.b, false), true), select(arg_0.b, arg_0.b, arg_0.b), select(arg_0.e.x, u_input.a.x, false), Struct_2(arg_0, arg_0.c.zy, arg_0.a.x, arg_0.a)).b, arg_0.b && any(vec4<bool>(arg_0.b, true, true, arg_0.b))), arg_0.b, 0i, Struct_2(func_4(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, arg_0.b), vec2<bool>(arg_0.b, arg_0.b)), false, i32(-1i) * -1i, Struct_2(arg_0, vec2<f32>(arg_0.c.x, arg_0.c.x), 1u, vec4<u32>(u_input.b, u_input.b, u_input.b, 10466u))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_0.c.x)), _wgslsmith_f_op_f32(step(-1377f, -998f))), _wgslsmith_div_u32(4294967295u, arg_0.d.x), func_4(vec2<bool>(arg_0.b, false), false, -1i, Struct_2(arg_0, vec2<f32>(-201f, arg_0.c.x), 68820u, vec4<u32>(38788u, 1u, arg_0.d.x, u_input.b))).a << (vec4<u32>(u_input.b, u_input.b, 22690u, arg_0.a.x) % vec4<u32>(32u)))), vec2<f32>(_wgslsmith_f_op_f32(floor(1854f)), _wgslsmith_f_op_vec2_f32(func_3(false)).x), ~(~4294967295u), vec4<u32>(14103u, ~_wgslsmith_add_u32(~4294967295u, select(u_input.b, u_input.b, true)), ~(~(~73220u)), ~_wgslsmith_dot_vec4_u32(arg_0.a, ~arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -u_input.d.x;
    var var_1 = func_5(func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -176f), Struct_2(Struct_1(vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), true, global0[_wgslsmith_index_u32(0u, 31u)], vec4<u32>(21102u, 4294967295u, u_input.b, 117667u), u_input.c), _wgslsmith_div_vec2_f32(vec2<f32>(-425f, 496f), vec2<f32>(1216f, -911f)), u_input.b, _wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 4294967295u, 1u, 16179u), vec4<u32>(u_input.b, u_input.b, u_input.b, 4294967295u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-269f, -1142f))), all(vec3<bool>(true, true, true)) | any(vec3<bool>(true, false, false)), abs(u_input.a.x), Struct_2(Struct_1(vec4<u32>(18597u, 1u, 34027u, u_input.b), true, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(0u, 31u)]), vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.b), -vec3<i32>(0i, -4167i, -36741i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1137f, -1924f) - vec2<f32>(1067f, -353f))), u_input.b, ~firstLeadingBit(vec4<u32>(u_input.b, 0u, 5792u, u_input.b)))));
    global0 = array<vec4<f32>, 31>();
    var_0 = abs(-48860i | u_input.d.x);
    global0 = array<vec4<f32>, 31>();
    var var_2 = Struct_2(func_4(!(!(!vec2<bool>(var_1.a.b, var_1.a.b))), true && any(select(vec3<bool>(var_1.a.b, var_1.a.b, false), vec3<bool>(var_1.a.b, false, false), vec3<bool>(false, var_1.a.b, var_1.a.b))), ~u_input.a.x, func_5(func_5(Struct_1(var_1.d, var_1.a.b, var_1.a.c, vec4<u32>(var_1.a.d.x, u_input.b, 4294967295u, u_input.b), vec3<i32>(2147483647i, u_input.a.x, u_input.c.x))).a)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(733f))), 1543f))), ~_wgslsmith_mod_u32(0u, _wgslsmith_dot_vec3_u32(max(var_1.d.yyx, var_1.d.wwx), ~var_1.d.zxx)), ~(~var_1.d));
    var_2 = Struct_2(var_2.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1679f, var_2.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-641f, 300f))))) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), -188f)), firstLeadingBit(u_input.b | (abs(var_1.d.x) << (1u % 32u))), vec4<u32>(52934u, 4294967295u, 8895u << (_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(48066u, u_input.b), var_2.a.a.yx), vec2<u32>(var_1.c, 38959u)) % 32u), ~reverseBits(func_4(vec2<bool>(var_2.a.b, true), false, var_1.a.e.x, Struct_2(Struct_1(var_1.d, var_1.a.b, vec4<f32>(var_2.b.x, 1000f, -153f, 1006f), vec4<u32>(var_1.d.x, var_1.a.d.x, u_input.b, var_1.c), var_1.a.e), var_1.b, u_input.b, var_1.d)).a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(5877i, vec4<u32>(var_1.d.x, ~var_2.d.x << (u_input.b % 32u), var_1.d.x, ~func_5(func_5(Struct_1(var_2.a.a, var_1.a.b, var_1.a.c, vec4<u32>(1u, var_2.c, 1u, 167016u), vec3<i32>(-26422i, -1i, -1i))).a).c));
}

