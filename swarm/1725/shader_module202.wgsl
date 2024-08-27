struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 23> = array<vec3<bool>, 23>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, true));

var<private> global1: array<vec3<f32>, 13> = array<vec3<f32>, 13>(vec3<f32>(-1002f, 205f, -897f), vec3<f32>(-597f, 624f, -1406f), vec3<f32>(747f, -676f, 1034f), vec3<f32>(-1208f, -2015f, 1000f), vec3<f32>(593f, -1305f, -322f), vec3<f32>(1237f, 175f, 1321f), vec3<f32>(572f, -1031f, 1122f), vec3<f32>(-716f, 922f, -1125f), vec3<f32>(1000f, -861f, -858f), vec3<f32>(-2103f, 390f, 698f), vec3<f32>(-306f, 2066f, -1179f), vec3<f32>(131f, -299f, 609f), vec3<f32>(323f, 1160f, 256f));

var<private> global2: array<vec3<f32>, 12>;

var<private> global3: f32 = -1712f;

var<private> global4: array<Struct_1, 6>;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: bool) -> u32 {
    return ~16993u;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1064f, _wgslsmith_f_op_f32(round(-1002f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-674f + 1305f) + _wgslsmith_f_op_f32(select(-319f, 431f, arg_1.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(ceil(1818f)))))))));
    global4 = array<Struct_1, 6>();
    let var_1 = _wgslsmith_div_vec2_u32((vec2<u32>(u_input.b | arg_0.a.x, ~u_input.c) << (arg_0.a.xx % vec2<u32>(32u))) << (arg_0.a.xy % vec2<u32>(32u)), vec2<u32>(arg_0.a.x, countOneBits(_wgslsmith_mod_u32(~16287u, ~u_input.b))));
    global2 = array<vec3<f32>, 12>();
    let var_2 = -_wgslsmith_clamp_i32(u_input.a.x, -arg_0.b, 1i);
    return any(!(!vec4<bool>(true, arg_1.x, true, false))) && all(global0[_wgslsmith_index_u32(min(abs(_wgslsmith_add_u32(var_1.x, 1u)), 4294967295u), 23u)]);
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: f32, arg_3: vec3<f32>) -> f32 {
    let var_0 = arg_1;
    var var_1 = Struct_1(var_0.a, reverseBits((_wgslsmith_add_i32(1i, 39967i) >> (func_2(true) % 32u)) ^ arg_1.b), func_2(!(true && func_3(Struct_1(vec3<u32>(arg_1.c, u_input.c, arg_1.a.x), var_0.b, 48191u), vec4<bool>(false, false, true, true)))));
    return 717f;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<f32>, 13>();
    var var_0 = true;
    let var_1 = vec3<u32>(abs(u_input.b), ~u_input.c, 4294967295u);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-332f + 182f), -152f, -115f, -1264f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(-1000f, global4[_wgslsmith_index_u32(var_1.x, 6u)], 1877f, vec3<f32>(1052f, 111f, 972f))), -309f, -833f, _wgslsmith_f_op_f32(round(1287f)))))));
    var var_3 = Struct_1(var_1, _wgslsmith_div_i32(-_wgslsmith_add_i32(-56061i, -u_input.a.x), 1i), u_input.c);
    global4 = array<Struct_1, 6>();
    var var_4 = Struct_1(var_1, -1i | ~u_input.a.x, var_1.x);
    let var_5 = _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(trunc(var_2.x)))), 1269f, true)));
    var_3 = global4[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(abs((~vec3<u32>(4294967295u, var_3.a.x, 1u) >> (~vec3<u32>(1u, var_1.x, var_3.a.x) % vec3<u32>(32u))) ^ _wgslsmith_mod_vec3_u32(_wgslsmith_mod_vec3_u32(var_3.a, vec3<u32>(var_1.x, 4294967295u, 4294967295u)), vec3<u32>(var_3.c, var_4.a.x, 48703u))), _wgslsmith_sub_vec3_u32(reverseBits(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, var_4.c, 39049u), var_4.a, vec3<u32>(4294967295u, var_3.a.x, 82528u))), var_1)), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_5, var_5)) - var_5), vec3<i32>(_wgslsmith_div_i32(1i, 2147483647i), -28039i, ~(-abs(-2147483647i))), 6215i);
}

