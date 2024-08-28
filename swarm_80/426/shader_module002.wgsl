struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(1575f), Struct_1(1863f));

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(191f), Struct_1(-877f), Struct_1(1345f), Struct_1(-681f), Struct_1(380f), Struct_1(2198f), Struct_1(-1156f), Struct_1(1036f), Struct_1(236f), Struct_1(-1000f), Struct_1(1000f), Struct_1(655f), Struct_1(-1251f), Struct_1(1496f), Struct_1(-1000f), Struct_1(995f), Struct_1(724f), Struct_1(452f), Struct_1(620f));

var<private> global2: vec3<f32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec4<bool> {
    global1 = array<Struct_1, 19>();
    global1 = array<Struct_1, 19>();
    global0 = array<Struct_1, 2>();
    let var_0 = global1[_wgslsmith_index_u32(~u_input.a.x, 19u)];
    var var_1 = select(vec2<bool>(true & ((global2.x <= 1911f) != any(vec3<bool>(false, true, false))), any(select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true)) & true), !vec2<bool>(any(vec4<bool>(false, false, true, true)), u_input.a.x < 1u), vec2<bool>(true, true));
    return !select(vec4<bool>(_wgslsmith_f_op_f32(278f - global2.x) >= _wgslsmith_f_op_f32(global2.x - -1470f), all(!vec4<bool>(var_1.x, true, var_1.x, var_1.x)), false, 264f >= global2.x), !select(!vec4<bool>(true, var_1.x, true, var_1.x), vec4<bool>(var_1.x, false, false, var_1.x), !var_1.x), select(select(select(vec4<bool>(true, var_1.x, false, true), vec4<bool>(false, var_1.x, false, false), vec4<bool>(false, true, true, false)), vec4<bool>(var_1.x, var_1.x, true, var_1.x), vec4<bool>(false, var_1.x, var_1.x, var_1.x)), select(!vec4<bool>(var_1.x, var_1.x, var_1.x, true), vec4<bool>(true, false, false, var_1.x), false), var_1.x && var_1.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    global0 = array<Struct_1, 2>();
    global2 = vec3<f32>(1710f, -1101f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(f32(-1f) * -706f), any(vec2<bool>(false, false))))) * arg_1.a));
    var var_0 = !(!select(func_3(), vec4<bool>(true, true, true, true), vec4<bool>(all(vec2<bool>(false, false)), true, true, true)));
    global0 = array<Struct_1, 2>();
    var var_1 = min(u_input.a.x | u_input.a.x, countOneBits(~max(u_input.a.x, 1u) & 39120u));
    return true;
}

fn func_1() -> vec4<f32> {
    let var_0 = any(vec2<bool>(true && func_2(Struct_1(global2.x), global1[_wgslsmith_index_u32(~u_input.a.x, 19u)]), select(true, any(select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, false))), true)));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_mult_u32(~min(u_input.a.x, 1u) << (abs(32399u) % 32u), 1u), ~u_input.a.x), 2u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-416f * -689f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-698f, _wgslsmith_f_op_f32(ceil(var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a) - 1664f))), global2.x));
    global1 = array<Struct_1, 19>();
    global0 = array<Struct_1, 2>();
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1115f, global2.x)) * _wgslsmith_f_op_f32(-var_1.a))), 312f, var_2.x, -216f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(global2.x);
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_div_f32(global2.x, -612f)) * 379f)), -479f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)) - _wgslsmith_f_op_f32(1333f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(var_0.a, var_0.a)))))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-529f, global2.x, 1290f, 1000f) * vec4<f32>(1157f, 1702f, global2.x, 2638f))) - _wgslsmith_f_op_vec4_f32(func_1())), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.x, global2.x, _wgslsmith_f_op_vec4_f32(func_1()).x, _wgslsmith_f_op_f32(-var_0.a)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1392f, var_0.a, global2.x, global2.x))))))));
    global1 = array<Struct_1, 19>();
    let var_2 = min(abs(vec3<i32>(_wgslsmith_sub_i32(-9486i, -1i), -1i, -2147483647i)), vec3<i32>(~(-5354i << (~u_input.a.x % 32u)), countOneBits(-24585i), firstLeadingBit(select(37983i, 9225i, true)) | ~_wgslsmith_mod_i32(1i, -1i)));
    let var_3 = var_0;
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - -1261f))) >= -652f;
    var var_5 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(max(vec3<u32>(37972u, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, u_input.a.x, u_input.a.x), u_input.a.wwy), _wgslsmith_clamp_u32(1u, u_input.a.x, 4294967295u)), u_input.a.ywx));
}

