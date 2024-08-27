struct Struct_1 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: u32,
    e: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 26> = array<vec4<u32>, 26>(vec4<u32>(80458u, 4294967295u, 1u, 39319u), vec4<u32>(66976u, 1u, 1u, 46420u), vec4<u32>(1u, 0u, 4294967295u, 43361u), vec4<u32>(0u, 0u, 4294967295u, 1u), vec4<u32>(10352u, 7413u, 4294967295u, 4294967295u), vec4<u32>(29151u, 4294967295u, 4294967295u, 1u), vec4<u32>(1u, 1u, 0u, 31579u), vec4<u32>(0u, 9038u, 4824u, 0u), vec4<u32>(0u, 21813u, 12901u, 47853u), vec4<u32>(107133u, 37704u, 52876u, 1u), vec4<u32>(529u, 77248u, 31783u, 91310u), vec4<u32>(36738u, 0u, 52745u, 4294967295u), vec4<u32>(63925u, 1u, 4294967295u, 60912u), vec4<u32>(0u, 21291u, 1u, 1u), vec4<u32>(4294967295u, 65490u, 10520u, 67212u), vec4<u32>(0u, 45492u, 73014u, 5275u), vec4<u32>(1067u, 0u, 4294967295u, 0u), vec4<u32>(17680u, 53363u, 2034u, 23679u), vec4<u32>(10098u, 1u, 4294967295u, 45723u), vec4<u32>(4294967295u, 9608u, 57050u, 4294967295u), vec4<u32>(1u, 18441u, 10276u, 20943u), vec4<u32>(2168u, 76048u, 39568u, 49757u), vec4<u32>(4294967295u, 23255u, 46504u, 36856u), vec4<u32>(0u, 45578u, 4294967295u, 0u), vec4<u32>(1u, 1u, 4294967295u, 30983u), vec4<u32>(1u, 1u, 72255u, 53851u));

var<private> global1: array<vec3<f32>, 21>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2() -> u32 {
    return 1u;
}

fn func_3(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.x, arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(arg_1)) * _wgslsmith_f_op_vec3_f32(ceil(arg_1))))));
    let var_1 = Struct_1(_wgslsmith_div_u32(1u, abs(~36508u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(325f, -1000f, var_0.x)), var_0) * vec3<f32>(_wgslsmith_f_op_f32(405f - var_0.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(553f, 148f)))), arg_1.x)), -arg_2, u_input.a, ~vec2<u32>(24158u, 20551u));
    global0 = array<vec4<u32>, 26>();
    let var_2 = false;
    global1 = array<vec3<f32>, 21>();
    return _wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_mult_u32(var_1.d, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(var_1.e, vec2<u32>(var_1.e.x, 1u)), ~vec2<u32>(u_input.a, var_1.a))), 0u), var_1.e.x);
}

fn func_1() -> Struct_1 {
    let var_0 = func_3(vec3<bool>(true, true, true), global1[_wgslsmith_index_u32(min(29256u, func_2()), 21u)], ~(-(abs(u_input.b.x) & 1i)));
    global1 = array<vec3<f32>, 21>();
    var var_1 = Struct_1(u_input.a, global1[_wgslsmith_index_u32(~u_input.a, 21u)], u_input.b.x, u_input.a & u_input.a, ~(~abs(vec2<u32>(var_0, 4294967295u))));
    global1 = array<vec3<f32>, 21>();
    var var_2 = u_input.b.zy;
    return Struct_1(_wgslsmith_div_u32(4294967295u, firstLeadingBit(abs(u_input.a))), _wgslsmith_f_op_vec3_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(var_0, _wgslsmith_dot_vec2_u32(~vec2<u32>(68663u, var_0), vec2<u32>(1u, var_0))), 21u)] - vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(1000f, -175f), _wgslsmith_f_op_f32(trunc(var_1.b.x)))), var_1.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(902f)) * 1525f))), firstLeadingBit(var_2.x), var_0, ~(vec2<u32>(~62510u, var_0) | vec2<u32>(23936u, select(13247u, var_0, true))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = array<vec4<u32>, 26>();
    global0 = array<vec4<u32>, 26>();
    var var_1 = func_1();
    let var_2 = func_1();
    var var_3 = !(true && select(_wgslsmith_f_op_f32(-var_2.b.x) <= var_2.b.x, var_1.b.x >= _wgslsmith_f_op_f32(-832f - var_1.b.x), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(0u), _wgslsmith_div_u32(func_3(vec3<bool>(true, false, true), var_2.b, abs(u_input.b.x)) ^ var_1.e.x, var_1.d), vec3<f32>(_wgslsmith_f_op_f32(158f + -2409f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-163f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1464f))), countOneBits(-2147483647i));
}

