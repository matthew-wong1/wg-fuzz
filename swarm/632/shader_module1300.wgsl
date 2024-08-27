struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 17>;

var<private> global1: i32;

var<private> global2: vec2<f32> = vec2<f32>(-682f, -586f);

var<private> global3: u32 = 11614u;

var<private> global4: f32 = 804f;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec2<f32> {
    var var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.x, 1000f) + vec2<f32>(global2.x, 140f))))), Struct_1(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), countOneBits(u_input.d.yy), Struct_1(vec3<bool>(false, false == any(vec3<bool>(true, false, true)), true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f + 1612f))));
    var var_1 = var_0.d.a.zy;
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_0.a))));
}

fn func_2(arg_0: i32) -> vec3<bool> {
    var var_0 = _wgslsmith_f_op_f32(sign(200f));
    global2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3()) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(594f, -1000f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2.x, global2.x))))))));
    let var_1 = true;
    var var_2 = abs(_wgslsmith_mult_i32(25971i << (~u_input.e.x % 32u), arg_0)) <= ~reverseBits(arg_0);
    var var_3 = select(_wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(_wgslsmith_sub_u32(u_input.e.x, 40656u), 65381u, 14739u)), ~u_input.b, var_1) & _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, 4294967295u, u_input.e.x), u_input.e), u_input.c);
    return !vec3<bool>(any(vec3<bool>(var_1, !var_1, var_1)), -21849i != (~arg_0 ^ 1i), var_1 | ((u_input.b & 0u) < max(0u, u_input.e.x)));
}

fn func_1(arg_0: vec2<bool>) -> bool {
    global4 = global2.x;
    var var_0 = func_2(i32(-1i) * -11224i);
    global3 = 0u;
    let var_1 = 0u;
    global3 = ~var_1;
    return arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec3<bool>(any(vec4<bool>(func_1(vec2<bool>(false, false)), true, select(true, true, true), select(true, false, true))), true, !(~(-38904i) == u_input.a)));
    global0 = array<vec3<i32>, 17>();
    var var_1 = ~((i32(-1i) * -(~7630i)) << ((u_input.e.x & 48359u) % 32u));
    let var_2 = var_0.a;
    var var_3 = vec2<i32>(_wgslsmith_mult_i32(-(2147483647i ^ u_input.a), u_input.d.x) & firstLeadingBit(u_input.a), _wgslsmith_mod_i32(u_input.a, ~(-(~(-57920i)))));
    global2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3()));
    let var_4 = -firstTrailingBit(max(firstTrailingBit(min(u_input.d.x, -2147483647i)), -min(var_3.x, 21078i)));
    var var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a);
}

