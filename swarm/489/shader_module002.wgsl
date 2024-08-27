struct Struct_1 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 11> = array<i32, 11>(26704i, -31041i, 1284i, 1i, -5827i, 48643i, -70625i, -1i, -23004i, 0i, 18428i);

var<private> global1: array<Struct_1, 25>;

var<private> global2: u32;

var<private> global3: vec4<bool>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: f32, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = ~arg_2.zx;
    global1 = array<Struct_1, 25>();
    let var_1 = !global3.yy;
    let var_2 = arg_3;
    var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(arg_2.x, 8672u, 1u, 33157u)), firstLeadingBit(vec4<u32>(arg_3.a.x, u_input.b.x, 2986u, arg_3.a.x)))), _wgslsmith_clamp_vec2_u32(~u_input.b.yw, vec2<u32>(28554u, min(17056u, 1u)), reverseBits(vec2<u32>(u_input.b.x, 1u)))) | ~u_input.b.wz;
    return _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), -968f));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> f32 {
    var var_0 = Struct_1(~(~vec2<u32>(select(arg_1.a.x, arg_1.a.x, true), _wgslsmith_div_u32(u_input.b.x, 0u))));
    global3 = vec4<bool>((!global3.x | !all(global3.wwx)) || all(vec2<bool>(any(vec3<bool>(global3.x, false, false)), false || global3.x)), global3.x, false && (-2147483647i > (i32(-1i) * -u_input.a.x)), true);
    var var_1 = vec3<bool>(!global3.x, global3.x, true);
    let var_2 = global1[_wgslsmith_index_u32(1u, 25u)];
    let var_3 = u_input.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -402f);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(1284f * -1282f), _wgslsmith_f_op_f32(step(-2478f, 175f)))) - -366f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(1864f, vec3<f32>(1677f, -671f, -1240f), vec3<u32>(u_input.b.x, arg_1.x, arg_1.x), global1[_wgslsmith_index_u32(4294967295u, 25u)])), _wgslsmith_div_f32(-716f, -2005f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(-288f, Struct_1(u_input.b.wy))) * -1614f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -147f) + _wgslsmith_div_f32(-2238f, _wgslsmith_f_op_f32(f32(-1f) * -755f))), 579f)));
    var var_1 = var_0.x;
    var_1 = _wgslsmith_f_op_f32(select(var_0.x, var_0.x, arg_0));
    var var_2 = ~_wgslsmith_div_vec4_u32(vec4<u32>((15143u | u_input.b.x) & _wgslsmith_clamp_u32(u_input.b.x, 120633u, u_input.b.x), arg_1.x, max(_wgslsmith_clamp_u32(u_input.b.x, 0u, u_input.b.x), select(arg_1.x, 1u, false)), arg_1.x), ~u_input.b);
    let var_3 = arg_2;
    return !vec4<bool>(any(global3.yy), arg_0, all(select(global3.zxx, vec3<bool>(global3.x, false, true), select(global3.x, true, arg_0))), any(!global3.zx));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(378f, _wgslsmith_div_f32(_wgslsmith_div_f32(-769f, 1f), 1025f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1299f * 582f)))), _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(-708f, 294f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-777f, -2006f, 1000f, 315f) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(144f, -1885f, 1530f, 1361f))))))));
    let var_1 = u_input.b.x;
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(var_1 ^ max(u_input.b.x ^ 5823u, 24907u), 23375u << (0u % 32u), var_1, firstLeadingBit(abs(u_input.b.x))), u_input.b);
    global3 = select(select(!(!vec4<bool>(global3.x, true, global3.x, false)), vec4<bool>(global3.x, (global0[_wgslsmith_index_u32(var_1, 11u)] <= global0[_wgslsmith_index_u32(0u, 11u)]) || any(global3.xx), global3.x, any(global3.xx)), global3.x), !(!select(func_1(false, var_2.zzz, global0[_wgslsmith_index_u32(var_2.x, 11u)]), select(vec4<bool>(true, true, global3.x, global3.x), vec4<bool>(true, true, true, false), vec4<bool>(false, false, global3.x, global3.x)), true)), (global3.x & global3.x) && true);
    var var_3 = global1[_wgslsmith_index_u32(~40441u, 25u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0.x, vec3<f32>(-983f, -838f, var_0.x), var_2.zyy, Struct_1(vec2<u32>(var_1, 67085u)))) + 597f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-985f - var_0.x), -546f))), firstLeadingBit(select(u_input.b.yxy, ~_wgslsmith_mod_vec3_u32(u_input.b.zzz, var_2.xww), global3.x)), vec3<i32>(u_input.a.x, _wgslsmith_sub_i32(-(~44444i), i32(-1i) * -70005i), -2147483647i), u_input.b.x, vec4<i32>(~u_input.a.x, -2147483647i, select(i32(-1i) * -2147483647i, ~global0[_wgslsmith_index_u32(u_input.b.x, 11u)], func_1(global3.x, vec3<u32>(var_3.a.x, var_3.a.x, 5555u) | vec3<u32>(27299u, 1u, u_input.b.x), max(-28570i, -8063i)).x), u_input.a.x));
}

