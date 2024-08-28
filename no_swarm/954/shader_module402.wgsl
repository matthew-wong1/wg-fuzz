struct Struct_1 {
    a: vec4<u32>,
    b: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(945f, -1342f, -971f);

var<private> global1: u32;

var<private> global2: array<Struct_1, 14> = array<Struct_1, 14>(Struct_1(vec4<u32>(1805u, 2886u, 4294967295u, 3049u), false), Struct_1(vec4<u32>(4294967295u, 36090u, 0u, 4294967295u), true), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 48141u), true), Struct_1(vec4<u32>(1u, 6943u, 4294967295u, 4294967295u), true), Struct_1(vec4<u32>(4294967295u, 16998u, 0u, 1u), true), Struct_1(vec4<u32>(1u, 0u, 2241u, 0u), true), Struct_1(vec4<u32>(48309u, 20089u, 49122u, 1u), true), Struct_1(vec4<u32>(66772u, 4294967295u, 0u, 0u), true), Struct_1(vec4<u32>(55632u, 13700u, 0u, 102411u), true), Struct_1(vec4<u32>(4294967295u, 4294967295u, 2358u, 38176u), false), Struct_1(vec4<u32>(0u, 0u, 4294967295u, 1u), false), Struct_1(vec4<u32>(2147u, 1u, 0u, 0u), true), Struct_1(vec4<u32>(54492u, 4294967295u, 4073u, 4294967295u), true), Struct_1(vec4<u32>(28287u, 0u, 1u, 4294967295u), true));

var<private> global3: array<u32, 17> = array<u32, 17>(2514u, 4294967295u, 79692u, 68574u, 4294967295u, 1u, 0u, 84030u, 1u, 1u, 0u, 77737u, 8158u, 45413u, 0u, 76081u, 25295u);

var<private> global4: vec2<f32> = vec2<f32>(2425f, -506f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> bool {
    var var_0 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(u_input.b.xz, vec2<u32>(arg_1.a.x, arg_1.a.x)), 14u)];
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, -220f, arg_0, _wgslsmith_f_op_f32(floor(-522f))))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1421f, 644f, -363f, 1294f), _wgslsmith_f_op_vec4_f32(vec4<f32>(global4.x, global4.x, global0.x, global0.x) * vec4<f32>(724f, global0.x, global4.x, -531f)))))));
    var_0 = arg_1;
    var var_2 = _wgslsmith_f_op_vec4_f32(max(var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4.x, var_1.x, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(min(-922f, 1099f))), vec4<f32>(_wgslsmith_f_op_f32(-global4.x), -790f, _wgslsmith_f_op_f32(round(-1146f)), global0.x))) * var_1)));
    let var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + global4.x) * -405f), _wgslsmith_f_op_f32(exp2(var_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(100f, var_2.x)) * _wgslsmith_f_op_f32(sign(arg_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(global4.x + -1153f), any(vec3<bool>(var_0.b, false, arg_1.b)))), _wgslsmith_div_f32(1605f, _wgslsmith_f_op_f32(-arg_0))) * vec2<f32>(arg_0, global4.x)));
    return arg_1.b;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec2_f32(-global0.yz);
    let var_0 = arg_0;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3000f)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global4.x), _wgslsmith_f_op_f32(f32(-1f) * -898f)))), _wgslsmith_f_op_f32(trunc(-1471f)))) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(trunc(-1837f)))) + 226f))));
    global2 = array<Struct_1, 14>();
    var var_2 = Struct_1(~(~(~(vec4<u32>(var_0.a.x, global3[_wgslsmith_index_u32(1u, 17u)], global3[_wgslsmith_index_u32(10498u, 17u)], 4294967295u) & vec4<u32>(7296u, 0u, arg_0.a.x, arg_0.a.x)))), func_3(205f, Struct_1(vec4<u32>(~global3[_wgslsmith_index_u32(u_input.b.x, 17u)], u_input.b.x, 1u, ~u_input.b.x), false)));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = func_2(Struct_1(vec4<u32>(51221u, select(0u, 4294967295u, true), global3[_wgslsmith_index_u32(~(~24232u), 17u)], arg_0.a.x), any(!vec4<bool>(arg_1.b, arg_1.b, arg_0.b, false)) != func_2(Struct_1(arg_1.a, arg_0.b)).b));
    var var_1 = u_input.a;
    var var_2 = countOneBits(_wgslsmith_clamp_vec2_i32(u_input.a, vec2<i32>(reverseBits(24761i), min(var_1.x, 23178i)), countOneBits(vec2<i32>(var_1.x, max(24502i, -1i)))));
    global4 = _wgslsmith_f_op_vec2_f32(-global0.xz);
    return arg_1;
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = func_4(global2[_wgslsmith_index_u32(arg_2.a.x, 14u)], func_2(arg_3), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1465f - _wgslsmith_f_op_f32(max(242f, -1066f))))) + global4.x));
    let var_1 = var_0.a.x;
    global3 = array<u32, 17>();
    var var_2 = global0.x;
    var var_3 = vec3<i32>(~(u_input.a.x & (~u_input.a.x >> (global3[_wgslsmith_index_u32(1u, 17u)] % 32u))), u_input.a.x, _wgslsmith_div_i32(~u_input.a.x, ~(-24641i)));
    return vec3<bool>(var_0.b, (~36037i > u_input.a.x) & func_3(-1065f, Struct_1(vec4<u32>(u_input.b.x, 4294967295u, 41155u, var_0.a.x) ^ arg_3.a, true)), true);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.b.x;
    let var_0 = Struct_1(max(select(vec4<u32>(1u, 89187u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(1u, 17u)], 17u)], 17u)], u_input.b.x), vec4<u32>(20417u, u_input.b.x, 36782u, u_input.b.x), false), vec4<u32>(u_input.b.x, ~1u, ~80207u, u_input.b.x)) & abs(~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.b.x, 63582u, u_input.b.x), vec4<u32>(4294967295u, u_input.b.x, 31439u, global3[_wgslsmith_index_u32(0u, 17u)]))), any(!func_1(global2[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 17u)], 14u)], vec2<u32>(global3[_wgslsmith_index_u32(33344u, 17u)], 1u), Struct_1(vec4<u32>(19618u, 0u, 1u, global3[_wgslsmith_index_u32(0u, 17u)]), false), Struct_1(vec4<u32>(global3[_wgslsmith_index_u32(4294967295u, 17u)], 19226u, global3[_wgslsmith_index_u32(u_input.b.x, 17u)], 0u), true))) | true);
    global4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global4.x, -664f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -472f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1004f, global0.x))))) * vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4.x)) * 312f), _wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(max(286f, global4.x)))), var_0.b)), global4.x));
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(min(var_0.a.zx, (~vec2<u32>(32762u, 17944u) ^ u_input.b.xy) | u_input.b.xx), vec2<u32>(1u, 0u)), 14u)];
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.x, _wgslsmith_f_op_f32(global4.x * -643f))))));
    global3 = array<u32, 17>();
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer(var_1.a.x);
}

