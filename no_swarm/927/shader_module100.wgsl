struct Struct_1 {
    a: vec4<u32>,
    b: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
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

var<private> global0: array<i32, 27>;

var<private> global1: vec2<bool>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_2(vec2<f32>(170f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-997f, -337f)) * _wgslsmith_f_op_f32(trunc(367f))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-353f, 484f)))), _wgslsmith_mod_u32(abs(~var_0.a.x), arg_0.a.x));
    var var_2 = vec4<u32>(~_wgslsmith_mult_u32(~arg_0.a.x & abs(arg_0.a.x), var_1.b), (4294967295u | var_0.a.x) ^ 30477u, reverseBits(select(_wgslsmith_sub_u32(~173034u, arg_2), _wgslsmith_mult_u32(var_1.b << (var_0.a.x % 32u), arg_2), !(!arg_1.x))), _wgslsmith_mod_u32(arg_0.a.x, 1564u));
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(1513f + _wgslsmith_f_op_f32(-var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1396f, var_1.a.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_1.a.x, var_1.a.x))))), var_1.a))));
    let var_4 = u_input.b;
    return true;
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: u32) -> vec2<bool> {
    var var_0 = u_input.b;
    let var_1 = ~59913u;
    var var_2 = 3775u;
    var_2 = _wgslsmith_div_u32(~(~select(var_1, _wgslsmith_mod_u32(2700u, arg_2), false)), ~reverseBits(abs(1u)));
    let var_3 = _wgslsmith_f_op_f32(trunc(arg_0));
    return select(vec2<bool>(global1.x, true), select(!(!(!vec2<bool>(global1.x, true))), select(select(vec2<bool>(false, true), !vec2<bool>(global1.x, arg_1), global1.x), vec2<bool>(global1.x, true), vec2<bool>(false, global1.x)), (_wgslsmith_f_op_f32(396f * var_3) >= var_3) | false), select(!(!(!vec2<bool>(arg_1, arg_1))), select(select(!vec2<bool>(global1.x, arg_1), !vec2<bool>(true, global1.x), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, arg_1), vec2<bool>(false, true))), vec2<bool>(2294f >= var_3, true), !any(vec2<bool>(false, true))), vec2<bool>(all(select(vec3<bool>(true, global1.x, arg_1), vec3<bool>(true, false, arg_1), vec3<bool>(global1.x, true, arg_1))), global1.x)));
}

fn func_1() -> u32 {
    global1 = select(select(!(!(!vec2<bool>(global1.x, global1.x))), !vec2<bool>(false | global1.x, true), vec2<bool>(global0[_wgslsmith_index_u32(0u, 27u)] < reverseBits(u_input.b.x), global0[_wgslsmith_index_u32(1u, 27u)] == -1i)), select(select(!select(vec2<bool>(global1.x, global1.x), vec2<bool>(true, global1.x), vec2<bool>(global1.x, global1.x)), vec2<bool>(true, true), vec2<bool>(func_2(Struct_1(vec4<u32>(11160u, 26389u, 4294967295u, 5575u), -1i), vec3<bool>(true, global1.x, true), 15033u), any(vec2<bool>(true, global1.x)))), !(!func_3(271f, true, 0u)), global1.x), !(!vec2<bool>(true, any(vec3<bool>(global1.x, global1.x, global1.x)))));
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, -1000f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -1222f), vec2<f32>(1000f, -780f), vec2<bool>(global1.x, global1.x))), global1.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(464f, -2534f), vec2<f32>(582f, -1852f), global1.x)))))), countOneBits(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(70804u, 3557u), vec2<u32>(231u, 4294967295u), vec2<bool>(global1.x, global1.x)), vec2<u32>(13879u, 1u)), _wgslsmith_div_vec2_u32(select(vec2<u32>(42089u, 0u), vec2<u32>(59245u, 1u), vec2<bool>(global1.x, global1.x)), firstTrailingBit(vec2<u32>(0u, 1u))))));
    var var_1 = Struct_2(vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -567f)))), ~select(var_0.b, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(13031u, var_0.b)), vec2<u32>(1u, 1u)), global1.x));
    global1 = select(select(func_3(-834f, true, _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, 10110u, 0u, 4294967295u), vec4<u32>(var_0.b, var_0.b, 63622u, var_0.b)), ~vec4<u32>(0u, 4294967295u, var_0.b, 25668u))), func_3(-426f, -825f <= var_1.a.x, 1u), select(!(!vec2<bool>(true, global1.x)), func_3(_wgslsmith_f_op_f32(-var_1.a.x), var_1.b != 3638u, var_0.b), global1.x)), vec2<bool>(false, any(vec2<bool>(true, true)) & any(vec2<bool>(true, false))), vec2<bool>(global1.x, !select(all(vec2<bool>(global1.x, global1.x)), func_3(-218f, global1.x, var_0.b).x, !global1.x)));
    global0 = array<i32, 27>();
    return 39044u;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<i32>, arg_3: u32) -> f32 {
    var var_0 = _wgslsmith_add_u32(arg_1.x >> (arg_3 % 32u), ~(max(8283u, 0u) >> (_wgslsmith_add_u32(1u, arg_0.a.x) % 32u)));
    var_0 = ~_wgslsmith_mult_u32(_wgslsmith_mult_u32(countOneBits(abs(arg_3)), arg_3), 0u);
    let var_1 = select(arg_0.a, _wgslsmith_mult_vec4_u32(arg_0.a, (arg_0.a | ~arg_0.a) ^ _wgslsmith_mult_vec4_u32(arg_0.a, ~arg_0.a)), !(!select(vec4<bool>(true, false, global1.x, true), select(vec4<bool>(global1.x, true, global1.x, false), vec4<bool>(global1.x, global1.x, global1.x, false), global1.x), global1.x)));
    var var_2 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1150f, 800f)))))), _wgslsmith_add_u32(arg_1.x, abs(0u)));
    let var_3 = 0u >> (~countOneBits(_wgslsmith_mult_u32(38225u, 11940u) & var_1.x) % 32u);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_2.a.x), _wgslsmith_div_f32(var_2.a.x, -915f)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 27>();
    global1 = select(select(select(!vec2<bool>(global1.x, true), !vec2<bool>(global1.x, global1.x), false), vec2<bool>(global1.x, global1.x), true), vec2<bool>(true, true), select(select(!(!vec2<bool>(true, global1.x)), vec2<bool>(global1.x || global1.x, -1i == u_input.b.x), !select(vec2<bool>(global1.x, global1.x), vec2<bool>(global1.x, global1.x), global1.x)), select(vec2<bool>(!global1.x, u_input.a.x == -8475i), vec2<bool>(false, global1.x), true), true | global1.x));
    global0 = array<i32, 27>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_clamp_vec4_u32(~vec4<u32>(1560u, 76693u, 51815u, 3787u), vec4<u32>(1u, 1u, 1u, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(102636u, 0u, 40814u, 0u), vec4<u32>(4294967295u, 4294967295u, 64448u, 57953u))), u_input.a.x), vec3<u32>(_wgslsmith_mult_u32(func_1(), func_1()), 1u, func_1()), u_input.a.zxy, 406u)) * 225f);
    var_0 = _wgslsmith_f_op_f32(sign(444f));
    var var_1 = 689f;
    let x = u_input.a;
    s_output = StorageBuffer(~(~(1u ^ func_1())));
}

