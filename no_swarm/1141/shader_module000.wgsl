struct Struct_1 {
    a: i32,
    b: f32,
    c: f32,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: bool,
    c: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: i32,
}

struct Struct_5 {
    a: bool,
    b: bool,
    c: vec2<u32>,
    d: Struct_3,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 24> = array<f32, 24>(1207f, -138f, -325f, -322f, -546f, -296f, 1814f, 1536f, 1315f, -763f, 849f, -419f, -418f, 1134f, 1313f, 379f, 512f, 1086f, 302f, -1000f, 752f, 464f, -970f, 883f);

var<private> global1: array<f32, 15> = array<f32, 15>(861f, 393f, 356f, 580f, 1920f, -1067f, 1000f, 545f, -630f, 1000f, -762f, 904f, -598f, 1126f, 213f);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<bool>) -> u32 {
    var var_0 = u_input.a;
    global1 = array<f32, 15>();
    global0 = array<f32, 24>();
    let var_1 = arg_1.x;
    var var_2 = ~0u;
    return u_input.c;
}

fn func_3() -> vec2<u32> {
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    global0 = array<f32, 24>();
    let var_0 = firstLeadingBit(_wgslsmith_clamp_u32(~(~1u), ~17361u, u_input.c));
    return max(~vec2<u32>(9474u, _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_0, u_input.c, u_input.c, var_0), vec4<u32>(69152u, 1u, u_input.c, 4416u)), abs(vec4<u32>(u_input.c, 1708u, 1u, 1u)))), _wgslsmith_add_vec2_u32(~reverseBits(~vec2<u32>(4294967295u, 70517u)), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.c, u_input.c >> (var_0 % 32u)), ~vec2<u32>(u_input.c, 52007u))));
}

fn func_1(arg_0: i32) -> i32 {
    let var_0 = Struct_5(true, global1[_wgslsmith_index_u32(_wgslsmith_add_u32(countOneBits(~u_input.c), ~1u), 15u)] >= global1[_wgslsmith_index_u32(~1u, 15u)], min(~vec2<u32>(func_2(Struct_2(1006f, false, false), vec3<bool>(false, false, false)), _wgslsmith_mult_u32(1773u, u_input.c)), ~vec2<u32>(1u, 1u) << (func_3() % vec2<u32>(32u))), Struct_3(~(~vec3<i32>(2147483647i, -13013i, 2147483647i) & vec3<i32>(u_input.b, u_input.a.x, 0i)), all(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, true, false)))), ~vec4<i32>(abs(u_input.a.x), -10834i, _wgslsmith_mod_i32(-26371i, -2147483647i), 1i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], 700f) * vec2<f32>(global0[_wgslsmith_index_u32(15410u, 24u)], global0[_wgslsmith_index_u32(u_input.c, 24u)]))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(global1[_wgslsmith_index_u32(1u, 15u)], global1[_wgslsmith_index_u32(u_input.c, 15u)]), _wgslsmith_f_op_vec2_f32(vec2<f32>(-538f, global0[_wgslsmith_index_u32(0u, 24u)]) + vec2<f32>(1334f, -1607f)), true))))));
    global0 = array<f32, 24>();
    let var_1 = -447f;
    var var_2 = Struct_2(2174f, all(vec3<bool>(!(false & var_0.a), any(vec2<bool>(false, var_0.d.b)), any(select(vec3<bool>(var_0.a, true, true), vec3<bool>(var_0.d.b, false, var_0.a), vec3<bool>(var_0.b, false, var_0.b))))), all(select(!vec4<bool>(var_0.a, var_0.a, var_0.a, var_0.b), select(vec4<bool>(var_0.a, var_0.d.b, var_0.d.b, false), vec4<bool>(var_0.a, true, false, var_0.b), false), false)) && all(!vec3<bool>(var_0.a, var_0.a, false)));
    let var_3 = Struct_3(-firstLeadingBit(vec3<i32>(_wgslsmith_sub_i32(2147483647i, u_input.b), -24212i, -1i)), var_1 < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(269f, 329f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 15u)] - global1[_wgslsmith_index_u32(4294967295u, 15u)]))) + var_2.a), ~(~(-vec4<i32>(u_input.b, -27189i, var_0.d.a.x, -8264i))));
    return i32(-1i) * -(u_input.a.x ^ 36844i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(~u_input.d);
    var var_1 = vec3<u32>(u_input.c, 1u, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(18188u & (~(~4294967295u) | u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -891f, global0[_wgslsmith_index_u32(var_1.x, 24u)]))) * _wgslsmith_div_vec3_f32(vec3<f32>(543f, global1[_wgslsmith_index_u32(var_1.x, 15u)], global0[_wgslsmith_index_u32(var_1.x, 24u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1198f, -1000f, global1[_wgslsmith_index_u32(4294967295u, 15u)])))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(678f, -482f, -283f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(414f, 620f, -1081f))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1007f, global0[_wgslsmith_index_u32(1u, 24u)], -678f) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.c, 15u)], 338f, 419f))))));
}

