struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22> = array<Struct_1, 22>(Struct_1(vec2<u32>(57637u, 7736u), vec4<f32>(1329f, 690f, -1713f, -244f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-1266f, -503f, 831f, -693f)), Struct_1(vec2<u32>(81491u, 10725u), vec4<f32>(1844f, 1157f, 494f, -389f)), Struct_1(vec2<u32>(4294967295u, 11800u), vec4<f32>(-246f, -1599f, -1000f, -218f)), Struct_1(vec2<u32>(0u, 36968u), vec4<f32>(594f, -210f, 1000f, 340f)), Struct_1(vec2<u32>(4294967295u, 8502u), vec4<f32>(-431f, -837f, 1088f, 322f)), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(1007f, 1567f, 1574f, 1501f)), Struct_1(vec2<u32>(72395u, 1u), vec4<f32>(1000f, 1177f, 807f, -298f)), Struct_1(vec2<u32>(11491u, 0u), vec4<f32>(-807f, -806f, 1760f, 1587f)), Struct_1(vec2<u32>(1u, 0u), vec4<f32>(-880f, 649f, -1225f, -2354f)), Struct_1(vec2<u32>(4294967295u, 1u), vec4<f32>(437f, 149f, -575f, 1011f)), Struct_1(vec2<u32>(4294967295u, 4294967295u), vec4<f32>(-406f, -586f, 334f, 202f)), Struct_1(vec2<u32>(4294967295u, 30087u), vec4<f32>(939f, 137f, 1240f, -1808f)), Struct_1(vec2<u32>(22266u, 266u), vec4<f32>(-1208f, 141f, 576f, -101f)), Struct_1(vec2<u32>(0u, 38103u), vec4<f32>(1251f, 1045f, -1000f, -1000f)), Struct_1(vec2<u32>(1u, 82846u), vec4<f32>(180f, 129f, 1229f, -146f)), Struct_1(vec2<u32>(4294967295u, 18229u), vec4<f32>(364f, 250f, 1440f, -212f)), Struct_1(vec2<u32>(4294967295u, 3186u), vec4<f32>(-459f, -1102f, -2195f, 474f)), Struct_1(vec2<u32>(8449u, 7236u), vec4<f32>(-426f, -242f, -748f, 384f)), Struct_1(vec2<u32>(0u, 1u), vec4<f32>(-344f, 1000f, -831f, -2177f)), Struct_1(vec2<u32>(0u, 29694u), vec4<f32>(-965f, 519f, -1095f, 390f)), Struct_1(vec2<u32>(0u, 78071u), vec4<f32>(918f, -2156f, 121f, 1356f)));

var<private> global1: array<vec4<u32>, 24>;

var<private> global2: i32;

var<private> global3: vec3<bool>;

var<private> global4: Struct_1;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> u32 {
    let var_0 = u_input.a.x;
    let var_1 = global3.xy;
    global1 = array<vec4<u32>, 24>();
    let var_2 = ~29551u;
    let var_3 = arg_0;
    return var_2;
}

fn func_2() -> f32 {
    global1 = array<vec4<u32>, 24>();
    var var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(global4.b.x)), global4.b.x), _wgslsmith_f_op_vec2_f32(-global4.b.zx));
    var var_1 = Struct_1(abs(firstLeadingBit(global4.a)), vec4<f32>(global4.b.x, var_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, -1000f) * _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-359f + global4.b.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-531f + global4.b.x) - _wgslsmith_f_op_f32(var_0.x + 575f)))));
    let var_2 = global0[_wgslsmith_index_u32(func_3(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_1.a.x, ~(0u >> (_wgslsmith_add_u32(u_input.c, u_input.d) % 32u))), 22u)], 1040f), 22u)];
    global2 = u_input.b;
    return 1000f;
}

fn func_1(arg_0: vec4<bool>) -> vec4<f32> {
    global4 = Struct_1(global4.a, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2())))), _wgslsmith_f_op_f32(func_2()), global4.b.x, -1021f));
    let var_0 = Struct_1(~max(~vec2<u32>(59106u, global4.a.x) ^ global4.a, global4.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-306f - global4.b.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(global4.b.x - -133f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global4.b.x, global4.b.x)), 1174f)));
    global4 = Struct_1(var_0.a, _wgslsmith_f_op_vec4_f32(select(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global4.b)))), vec4<bool>(true, global3.x, all(select(arg_0, arg_0, true)), all(arg_0.yzx)))));
    let var_1 = 0u;
    let var_2 = 28391i;
    return _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-2044f, global4.b.x, var_0.b.x, _wgslsmith_f_op_f32(sign(-758f))), global4.b));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<u32>, 24>();
    var var_0 = global4.b;
    var var_1 = 581i;
    let var_2 = Struct_1(global4.a, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<bool>(false, false, global3.x, true)))))));
    global4 = Struct_1(~(~global4.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-383f, _wgslsmith_f_op_f32(-536f + var_0.x), _wgslsmith_div_f32(-1786f, -537f), _wgslsmith_f_op_f32(f32(-1f) * -141f)), _wgslsmith_f_op_vec4_f32(-global4.b)) * global4.b));
    var var_3 = Struct_1(vec2<u32>(21888u, 1u), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_2.b.x, var_0.x)), global4.b.x, true)) + -220f), _wgslsmith_f_op_f32(var_0.x * -1031f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b.x) + 310f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(824f + global4.b.x)))));
    global0 = array<Struct_1, 22>();
    var var_4 = Struct_1(_wgslsmith_sub_vec2_u32(var_2.a, countOneBits(~var_2.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -744f, 658f, 1000f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.b.x), _wgslsmith_div_i32(1i, u_input.a.x), -vec2<i32>(countOneBits(u_input.b << (0u % 32u)), _wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.e.x, u_input.b), _wgslsmith_div_i32(u_input.a.x, 1i), 1i)));
}

