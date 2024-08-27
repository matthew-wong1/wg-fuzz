struct Struct_1 {
    a: bool,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
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

var<private> global0: array<f32, 11>;

var<private> global1: array<Struct_2, 30> = array<Struct_2, 30>(Struct_2(Struct_1(true, 32266u, -2269f), Struct_1(false, 49050u, 181f), 2147483647i, true, vec3<f32>(-639f, -134f, -669f)), Struct_2(Struct_1(false, 0u, -536f), Struct_1(true, 1u, -104f), -22804i, true, vec3<f32>(-512f, -504f, -846f)), Struct_2(Struct_1(false, 1u, 946f), Struct_1(false, 44175u, 977f), -1i, true, vec3<f32>(-690f, 300f, 994f)), Struct_2(Struct_1(false, 0u, 1530f), Struct_1(true, 4294967295u, -379f), -1724i, false, vec3<f32>(-821f, -1340f, -220f)), Struct_2(Struct_1(true, 25934u, 1000f), Struct_1(true, 4294967295u, 269f), 4587i, true, vec3<f32>(-526f, -124f, 1000f)), Struct_2(Struct_1(true, 4294967295u, 599f), Struct_1(true, 0u, 569f), 2147483647i, true, vec3<f32>(2472f, -521f, -772f)), Struct_2(Struct_1(true, 4294967295u, 830f), Struct_1(false, 31025u, 1741f), -25249i, true, vec3<f32>(205f, 1329f, -2212f)), Struct_2(Struct_1(false, 4012u, 791f), Struct_1(false, 4294967295u, 1000f), i32(-2147483648), true, vec3<f32>(664f, 1434f, 392f)), Struct_2(Struct_1(false, 4294967295u, 1588f), Struct_1(false, 67439u, -452f), -610i, false, vec3<f32>(-1319f, 523f, 395f)), Struct_2(Struct_1(true, 4294967295u, 423f), Struct_1(true, 1u, 2860f), -5841i, false, vec3<f32>(785f, -775f, -843f)), Struct_2(Struct_1(false, 74714u, 211f), Struct_1(true, 62561u, 1871f), 2147483647i, false, vec3<f32>(-330f, -232f, -510f)), Struct_2(Struct_1(false, 52696u, -1015f), Struct_1(true, 0u, 1764f), 0i, true, vec3<f32>(820f, 1382f, 630f)), Struct_2(Struct_1(false, 7635u, -629f), Struct_1(false, 4294967295u, 1000f), 0i, false, vec3<f32>(-974f, -202f, -685f)), Struct_2(Struct_1(true, 4294967295u, -1837f), Struct_1(true, 1u, 846f), i32(-2147483648), true, vec3<f32>(-253f, 242f, 2296f)), Struct_2(Struct_1(false, 44444u, -1680f), Struct_1(false, 57142u, -701f), -1i, false, vec3<f32>(-740f, 660f, 569f)), Struct_2(Struct_1(false, 86136u, 1067f), Struct_1(false, 37062u, 465f), -1i, false, vec3<f32>(-2070f, -267f, -409f)), Struct_2(Struct_1(false, 38877u, -371f), Struct_1(false, 27085u, -1084f), i32(-2147483648), true, vec3<f32>(-700f, 1753f, -650f)), Struct_2(Struct_1(true, 24580u, -1045f), Struct_1(true, 1u, -1518f), -37013i, true, vec3<f32>(-814f, -428f, 1172f)), Struct_2(Struct_1(false, 11743u, 847f), Struct_1(true, 32360u, 500f), -1i, true, vec3<f32>(1606f, -198f, -749f)), Struct_2(Struct_1(true, 5642u, -538f), Struct_1(false, 0u, 941f), 2147483647i, true, vec3<f32>(-870f, -129f, -115f)), Struct_2(Struct_1(false, 4294967295u, -745f), Struct_1(false, 64757u, 630f), 35151i, false, vec3<f32>(-521f, 603f, 110f)), Struct_2(Struct_1(false, 0u, 139f), Struct_1(false, 61906u, 1012f), 0i, false, vec3<f32>(1751f, 2089f, -1871f)), Struct_2(Struct_1(false, 35150u, -173f), Struct_1(true, 54432u, -1716f), -1i, true, vec3<f32>(-422f, 1000f, -559f)), Struct_2(Struct_1(true, 11589u, 497f), Struct_1(true, 12492u, -1710f), 67806i, false, vec3<f32>(-404f, 207f, -279f)), Struct_2(Struct_1(true, 0u, 1881f), Struct_1(false, 30334u, -139f), -1i, true, vec3<f32>(479f, -356f, 1657f)), Struct_2(Struct_1(true, 1u, -179f), Struct_1(true, 28815u, -995f), -12246i, false, vec3<f32>(304f, -1791f, 399f)), Struct_2(Struct_1(true, 3008u, -922f), Struct_1(true, 1u, -1345f), 0i, true, vec3<f32>(892f, -966f, -752f)), Struct_2(Struct_1(false, 17775u, -474f), Struct_1(true, 4294967295u, 1188f), i32(-2147483648), true, vec3<f32>(-1000f, -572f, 588f)), Struct_2(Struct_1(false, 31013u, 529f), Struct_1(true, 0u, -1295f), -292i, false, vec3<f32>(-1668f, -664f, 394f)), Struct_2(Struct_1(false, 181u, -201f), Struct_1(true, 0u, -198f), 60335i, true, vec3<f32>(620f, -783f, 677f)));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_2(arg_0: Struct_2) -> bool {
    global0 = array<f32, 11>();
    let var_0 = Struct_1(true, ~_wgslsmith_dot_vec3_u32(vec3<u32>(min(arg_0.a.b, u_input.a), firstTrailingBit(4294967295u), _wgslsmith_sub_u32(8425u, u_input.a)), vec3<u32>(u_input.a, ~64240u, firstLeadingBit(1u))), _wgslsmith_f_op_f32(-984f - _wgslsmith_f_op_f32(f32(-1f) * -1546f)));
    let var_1 = ~u_input.a;
    var var_2 = arg_0.b;
    global0 = array<f32, 11>();
    return true;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: bool) -> bool {
    let var_0 = arg_1.xzx;
    var var_1 = global0[_wgslsmith_index_u32(25334u, 11u)];
    global0 = array<f32, 11>();
    let var_2 = !any(!vec2<bool>(arg_0.d, arg_0.b.a));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(f32(-1f) * -1966f)) - var_0.x);
    return false;
}

fn func_1(arg_0: vec4<i32>) -> bool {
    global1 = array<Struct_2, 30>();
    var var_0 = vec4<bool>(!select(true, any(vec3<bool>(true, true, true)), !all(vec3<bool>(false, true, true))), true, false, func_2(global1[_wgslsmith_index_u32(4294967295u, 30u)]));
    global0 = array<f32, 11>();
    var_0 = select(vec4<bool>(-arg_0.x < arg_0.x, var_0.x, any(var_0.wzz), var_0.x), !(!vec4<bool>(func_3(Struct_2(Struct_1(true, u_input.a, global0[_wgslsmith_index_u32(1u, 11u)]), Struct_1(true, u_input.a, 371f), arg_0.x, var_0.x, vec3<f32>(global0[_wgslsmith_index_u32(0u, 11u)], global0[_wgslsmith_index_u32(4294967295u, 11u)], global0[_wgslsmith_index_u32(u_input.a, 11u)])), vec4<f32>(global0[_wgslsmith_index_u32(u_input.a, 11u)], -929f, global0[_wgslsmith_index_u32(u_input.a, 11u)], global0[_wgslsmith_index_u32(0u, 11u)]), false), all(var_0.wxw), func_2(Struct_2(Struct_1(true, 14590u, -411f), Struct_1(var_0.x, 4294967295u, global0[_wgslsmith_index_u32(0u, 11u)]), -15680i, var_0.x, vec3<f32>(global0[_wgslsmith_index_u32(35571u, 11u)], -337f, global0[_wgslsmith_index_u32(u_input.a, 11u)]))), true)), var_0.x);
    var var_1 = Struct_1(-1021f <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)]), u_input.a, global0[_wgslsmith_index_u32(33300u, 11u)]);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 11>();
    global1 = array<Struct_2, 30>();
    var var_0 = -1i;
    var var_1 = -(firstTrailingBit(vec2<i32>(1i, 1i)) | vec2<i32>(1i, 1i));
    let var_2 = vec2<bool>(!(132f <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(78985u, 11u)])) | func_1(~countOneBits(vec4<i32>(var_1.x, 19449i, -9535i, var_1.x))), any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), vec3<bool>(false, true, true), func_1(vec4<i32>(-1i, 22515i, -2147483647i, -2147483647i)))));
    global0 = array<f32, 11>();
    var var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(max(_wgslsmith_dot_vec2_u32(~vec2<u32>(48963u, u_input.a), abs(vec2<u32>(17245u, u_input.a))) | u_input.a, 52763u), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 11u)]))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(0u, 11u)] - global0[_wgslsmith_index_u32(33049u, 11u)]))), _wgslsmith_f_op_f32(f32(-1f) * -675f))));
}

