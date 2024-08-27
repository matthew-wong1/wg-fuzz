struct Struct_1 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 28>;

var<private> global1: array<bool, 30>;

var<private> global2: array<vec2<f32>, 9> = array<vec2<f32>, 9>(vec2<f32>(-135f, 2084f), vec2<f32>(-1109f, -803f), vec2<f32>(1033f, -505f), vec2<f32>(287f, -466f), vec2<f32>(-109f, 1065f), vec2<f32>(431f, 1158f), vec2<f32>(198f, 235f), vec2<f32>(-1292f, 438f), vec2<f32>(-547f, 635f));

var<private> global3: array<vec4<f32>, 20> = array<vec4<f32>, 20>(vec4<f32>(-186f, 1907f, -679f, 1415f), vec4<f32>(-425f, 1209f, 988f, 866f), vec4<f32>(-1137f, -790f, 418f, -891f), vec4<f32>(-394f, 1000f, 285f, 956f), vec4<f32>(-1265f, 1000f, 264f, -844f), vec4<f32>(590f, -849f, -630f, 576f), vec4<f32>(-507f, -859f, -464f, -196f), vec4<f32>(571f, -125f, -770f, 586f), vec4<f32>(1472f, -723f, -907f, -219f), vec4<f32>(283f, -252f, -401f, -1510f), vec4<f32>(620f, -653f, 1574f, 790f), vec4<f32>(-401f, -144f, -1031f, -330f), vec4<f32>(1043f, 762f, -175f, 1310f), vec4<f32>(-287f, 1053f, -104f, 775f), vec4<f32>(135f, 252f, 391f, -1079f), vec4<f32>(-1000f, -126f, -965f, -1202f), vec4<f32>(-603f, 1052f, 151f, 1001f), vec4<f32>(1758f, -925f, -314f, 441f), vec4<f32>(318f, -520f, -706f, -117f), vec4<f32>(-1055f, 1873f, -1081f, 1823f));

var<private> global4: array<Struct_1, 12>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: vec3<i32>, arg_1: bool, arg_2: vec2<i32>) -> vec2<u32> {
    global2 = array<vec2<f32>, 9>();
    global2 = array<vec2<f32>, 9>();
    let var_0 = !select(select(!(!vec2<bool>(arg_1, arg_1)), !vec2<bool>(true, arg_1), select(!vec2<bool>(false, global1[_wgslsmith_index_u32(46622u, 30u)]), vec2<bool>(true, false), vec2<bool>(true, true))), select(select(!vec2<bool>(arg_1, true), vec2<bool>(arg_1, arg_1), !vec2<bool>(global1[_wgslsmith_index_u32(u_input.a, 30u)], false)), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(arg_1, false)), !(!vec2<bool>(arg_1, false))), vec2<bool>(!(1u <= u_input.a), false));
    var var_1 = false;
    let var_2 = 444f;
    return select(~(~vec2<u32>(~u_input.b, u_input.b)), vec2<u32>(u_input.a, countOneBits(abs(u_input.a))), var_0.x);
}

fn func_2() -> vec2<bool> {
    let var_0 = u_input.c;
    let var_1 = global0[_wgslsmith_index_u32(~max(1u, select(abs(firstTrailingBit(u_input.a)), (u_input.b >> (u_input.a % 32u)) ^ u_input.a, ~u_input.a <= (u_input.a ^ u_input.b))), 28u)];
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -546f);
    var var_3 = Struct_1(-(-var_1.a << (func_3(~vec3<i32>(12173i, u_input.c, -8412i), true, -var_1.a) % vec2<u32>(32u))));
    let var_4 = !(!vec2<bool>(!(global1[_wgslsmith_index_u32(0u, 30u)] != false), false));
    return select(var_4, !select(vec2<bool>(!var_4.x, var_4.x), !var_4, true), select(vec2<bool>(true, true), vec2<bool>(true, -var_0 <= u_input.c), true));
}

fn func_1() -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(~51132u, 28u)];
    let var_1 = all(!func_2()) & !(u_input.c > -19655i);
    var var_2 = _wgslsmith_sub_i32(var_0.a.x, _wgslsmith_mult_i32(u_input.c, 8814i));
    let var_3 = max(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a.x, _wgslsmith_clamp_i32(var_0.a.x, -var_0.a.x, 1i), abs(abs(-2147483647i)), -u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(firstTrailingBit(u_input.c), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 1i, -33i, 2147483647i), vec4<i32>(2147483647i, -1i, var_0.a.x, var_0.a.x)), _wgslsmith_mult_i32(u_input.c, var_0.a.x), var_0.a.x), vec4<i32>(var_0.a.x, u_input.c, countOneBits(var_0.a.x), 1i << (u_input.a % 32u)), firstLeadingBit(vec4<i32>(-1i, 0i, -88373i, 0i)))));
    var var_4 = global4[_wgslsmith_index_u32(u_input.b, 12u)];
    return 4294967295u;
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: vec3<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f - 1519f)) == _wgslsmith_f_op_f32(-1245f + arg_2.x);
    return global0[_wgslsmith_index_u32(arg_1, 28u)];
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 28>();
    var var_0 = false;
    let var_1 = u_input.c;
    var var_2 = func_4(~u_input.b, _wgslsmith_div_u32(_wgslsmith_add_u32(func_1(), _wgslsmith_div_u32(u_input.b, ~0u)), u_input.b & abs(1u)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1051f), _wgslsmith_f_op_f32(ceil(100f)), _wgslsmith_div_f32(-290f, 2266f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(969f, 824f, -405f))), false)), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(298f, 1000f, 265f), vec3<f32>(1000f, -880f, -1722f), global1[_wgslsmith_index_u32(7664u, 30u)]))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1065f, 1286f, -791f)), _wgslsmith_div_vec3_f32(vec3<f32>(-822f, -490f, 1000f), vec3<f32>(1860f, -497f, -1161f)), func_2().x)))), vec3<bool>(global1[_wgslsmith_index_u32(~(~u_input.a), 30u)], select(true, true, global1[_wgslsmith_index_u32(20321u, 30u)] || global1[_wgslsmith_index_u32(4294967295u, 30u)]), (u_input.a < u_input.b) & (4294967295u <= u_input.a)))));
    var var_3 = ~max(~(~min(vec4<u32>(u_input.b, 0u, 112166u, u_input.a), vec4<u32>(u_input.a, 36252u, 50930u, 47039u))), vec4<u32>(u_input.b, u_input.b | 4294967295u, u_input.a, u_input.b) ^ vec4<u32>(u_input.a, 48048u, 52325u, abs(9639u)));
    let var_4 = -691f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(vec3<f32>(-555f, var_4, var_4) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_4, -947f, -1454f) * vec3<f32>(182f, var_4, -1000f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(-1142f, -1358f, -624f) * vec3<f32>(-510f, var_4, -1000f))))), var_2.a.x);
}

