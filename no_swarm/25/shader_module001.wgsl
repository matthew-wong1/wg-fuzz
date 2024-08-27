struct Struct_1 {
    a: vec2<u32>,
    b: f32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: i32,
    b: vec3<i32>,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: Struct_1 = Struct_1(vec2<u32>(0u, 1u), -415f);

var<private> global2: f32;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2) -> f32 {
    var var_0 = false;
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-117f, -995f, global1.b)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-712f, 926f, global1.b), vec3<f32>(global1.b, global1.b, global1.b))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(249f, -1592f, -224f) * vec3<f32>(global1.b, global1.b, global1.b)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, 1000f, -750f)))) - vec3<f32>(_wgslsmith_f_op_f32(step(-1000f, _wgslsmith_f_op_f32(trunc(-245f)))), _wgslsmith_f_op_f32(ceil(global1.b)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    return global1.b;
}

fn func_2() -> bool {
    global2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_2(abs(u_input.d.x)))));
    var var_0 = vec2<u32>(_wgslsmith_div_u32(87275u, global1.a.x), 4294967295u);
    let var_1 = true;
    global1 = Struct_1(reverseBits(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(6396u, u_input.a, global1.a.x, 1u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a, var_0.x, 1u, var_0.x), vec4<u32>(u_input.b.x, 4294967295u, var_0.x, var_0.x))), 38615u)), _wgslsmith_f_op_f32(425f + global1.b));
    global2 = global1.b;
    return false || any(!vec3<bool>(-126f <= global1.b, var_1 && true, var_1 && false));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: bool, arg_3: i32) -> Struct_1 {
    return Struct_1(_wgslsmith_add_vec2_u32(~_wgslsmith_div_vec2_u32(~vec2<u32>(global1.a.x, 0u), vec2<u32>(u_input.a, u_input.b.x)), ~u_input.b.yz), -1173f);
}

fn func_1() -> vec2<f32> {
    var var_0 = func_4(Struct_2(-_wgslsmith_add_i32(-u_input.c, -2147483647i)), select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global1.b), 1315f) >= _wgslsmith_f_op_f32(global1.b - global1.b), false, func_2()), !any(vec3<bool>(true, true, true)), 2147483647i);
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)), var_0.b)))));
    let var_2 = 1153f;
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.b - -1329f), 143f))) + func_4(Struct_2(min(abs(u_input.c), select(34425i, 0i, false))), true, true, abs(-30364i)).b);
    var var_4 = 23820u;
    return vec2<f32>(global1.b, _wgslsmith_f_op_f32(floor(var_3)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.b)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b)) * 1320f) + global1.b)));
    var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -845f)), global1.b, !any(vec2<bool>(true, true))))), global1.b);
    var var_1 = ~reverseBits(~vec4<u32>(~0u, 44065u, global1.a.x, global1.a.x));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, global1.b), vec2<f32>(global1.b, global1.b)) - vec2<f32>(533f, 624f)) + _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.b, global1.b)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1028f, global1.b), vec2<f32>(1000f, global1.b))), _wgslsmith_f_op_vec2_f32(func_1())) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(global1.b, global1.b), _wgslsmith_f_op_vec2_f32(func_1()))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, -589f) + vec2<f32>(global1.b, global1.b)))))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, _wgslsmith_f_op_f32(-global1.b)))));
    global2 = global1.b;
    var_1 = ~(~vec4<u32>(82923u, 1u, ~43647u, 0u));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -316f), global1.b, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-979f + _wgslsmith_f_op_f32(f32(-1f) * -257f))))), countOneBits(_wgslsmith_div_vec4_u32((vec4<u32>(1u, var_1.x, u_input.b.x, global1.a.x) >> (vec4<u32>(1u, 0u, u_input.a, var_1.x) % vec4<u32>(32u))) << (countOneBits(vec4<u32>(global1.a.x, 38332u, u_input.b.x, 4387u)) % vec4<u32>(32u)), vec4<u32>(1u, 72552u, ~58078u, _wgslsmith_mod_u32(global1.a.x, global1.a.x)))), ~var_1.yz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, -1447f)) * vec2<f32>(-1261f, global1.b)), vec2<f32>(-1205f, _wgslsmith_f_op_f32(f32(-1f) * -837f)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(391f)), -1398f)), global1.b, all(select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true)))));
}

