struct Struct_1 {
    a: f32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: bool;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_1) -> bool {
    var var_0 = arg_0;
    var var_1 = Struct_1(var_0.a, vec2<u32>(4294967295u, global2.b.x) ^ u_input.c.xz);
    var var_2 = Struct_1(var_0.a, firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(global2.b.x, ~54545u), ~vec2<u32>(var_1.b.x, u_input.b))));
    let var_3 = arg_0;
    var var_4 = arg_0.a;
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec3<bool>) -> u32 {
    let var_0 = 1i;
    global3 = any(select(select(!vec4<bool>(arg_3.x, arg_3.x, arg_3.x, false), select(!vec4<bool>(arg_3.x, false, true, arg_3.x), select(vec4<bool>(arg_3.x, true, arg_3.x, arg_3.x), vec4<bool>(false, true, true, arg_3.x), vec4<bool>(arg_3.x, arg_3.x, arg_3.x, arg_3.x)), !vec4<bool>(true, arg_3.x, arg_3.x, arg_3.x)), -473f == arg_2.x), vec4<bool>(any(arg_3), arg_3.x | (false && arg_3.x), global1.b.x != (65037u >> (global1.b.x % 32u)), arg_3.x), !arg_3.x));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global2.a))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a)), 605f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a, global0.x, 1858f, -1362f)) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1682f, -2156f, -1414f, -1000f), vec4<f32>(190f, global2.a, global1.a, 1318f), vec4<bool>(true, true, true, false)))) + vec4<f32>(global0.x, _wgslsmith_f_op_f32(trunc(-137f)), _wgslsmith_f_op_f32(f32(-1f) * -122f), global0.x))) + vec4<f32>(_wgslsmith_f_op_f32(select(global0.x, global1.a, true)), _wgslsmith_f_op_f32(sign(378f)), -478f, arg_1.a));
    var var_1 = any(vec2<bool>(true, true));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -496f), 825f, _wgslsmith_f_op_f32(arg_0.a - _wgslsmith_f_op_f32(global1.a * global1.a)), -414f);
    return 4294967295u;
}

fn func_1() -> f32 {
    global3 = (true != !(true | any(vec2<bool>(true, true)))) == func_2(Struct_1(_wgslsmith_div_f32(338f, _wgslsmith_f_op_f32(sign(-1000f))), vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(global1.b.x, global1.b.x, global2.b.x, 0u), vec4<u32>(13094u, global1.b.x, global2.b.x, global2.b.x)))));
    let var_0 = vec4<bool>(!func_2(Struct_1(global2.a, vec2<u32>(50886u, global2.b.x))), func_3(Struct_1(global0.x, ~global2.b), Struct_1(-412f, ~vec2<u32>(u_input.b, 0u)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global0.x) - vec2<f32>(global1.a, -742f)), vec3<bool>(true, true, true)) != global2.b.x, u_input.c.x > (global1.b.x & min(0u, 58114u)), _wgslsmith_f_op_f32(global0.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-312f)), -247f)) != -436f);
    global3 = true;
    var var_1 = var_0.x;
    let var_2 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-813f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-755f, global0.x)) * _wgslsmith_f_op_f32(trunc(517f)))) - _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(min(global0.x, global0.x)), _wgslsmith_f_op_f32(-global1.a)), global0.zw)))));
    return var_2.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(-363f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())));
    var var_1 = 12012u | reverseBits(firstLeadingBit(_wgslsmith_clamp_u32(global1.b.x, 9809u, global1.b.x) >> (countOneBits(4294967295u) % 32u)));
    global0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(466f, -241f, _wgslsmith_f_op_f32(880f * 111f), global2.a)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1471f, -982f, global2.a, global0.x) + vec4<f32>(1000f, 2121f, -535f, -1307f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1000f, 108f) - vec4<f32>(1034f, -1288f, 113f, -1000f)))))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1847f * 715f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global1.a - 2181f))) * global1.a)), ~(countOneBits(vec2<u32>(global2.b.x, 4294967295u) ^ global1.b) | (vec2<u32>(64389u, global1.b.x) ^ ~global1.b)));
    global1 = var_2;
    let var_3 = global1.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(~53064u, vec2<f32>(1000f, 2679f), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a)), _wgslsmith_f_op_f32(249f * 716f), var_2.a, _wgslsmith_f_op_f32(-global2.a)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global2.a - _wgslsmith_f_op_f32(min(-789f, _wgslsmith_f_op_f32(ceil(-433f))))))));
}

