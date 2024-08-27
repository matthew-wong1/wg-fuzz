struct Struct_1 {
    a: i32,
    b: vec4<u32>,
    c: u32,
    d: vec4<f32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec3<f32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1000f;

var<private> global1: i32 = 0i;

var<private> global2: array<f32, 20>;

var<private> global3: array<Struct_2, 6>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: bool, arg_3: vec2<bool>) -> i32 {
    var var_0 = Struct_1(1i, abs(arg_1.d.b), _wgslsmith_div_u32(4294967295u ^ u_input.b.x, u_input.b.x), _wgslsmith_f_op_vec4_f32(-arg_1.d.d));
    global2 = array<f32, 20>();
    var var_1 = arg_3.x;
    global0 = 1490f;
    var var_2 = u_input.b.xyw;
    return var_0.a;
}

fn func_3(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = vec3<i32>(~(-arg_0.x ^ ~(~arg_0.x)), ~(arg_0.x << (_wgslsmith_sub_u32(83990u, 0u) % 32u)), arg_0.x);
    var var_1 = _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(4294967295u << ((u_input.a ^ ~u_input.b.x) % 32u), 20u)], _wgslsmith_f_op_f32(-655f + _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 20u)] + -760f), global2[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 20u)]))))));
    var var_2 = firstTrailingBit(~vec4<i32>(~(~(-20256i)), -arg_0.x, arg_0.x, -(~6686i)));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~max(7945u, 38296u), 20u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1032f, global2[_wgslsmith_index_u32(33654u, 20u)])) + -263f) * _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a << (u_input.b.x % 32u), 20u)]))));
    var_0 = ~reverseBits(vec3<i32>(reverseBits(~42618i), ~(~arg_0.x), 0i));
    return Struct_1(-(~select(arg_0.x | var_2.x, 0i, true)), ~abs(u_input.b & u_input.b) << (~countOneBits(~u_input.b) % vec4<u32>(32u)), 1u, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(var_3.x, _wgslsmith_f_op_f32(round(-434f)), global2[_wgslsmith_index_u32(u_input.b.x << ((0u & u_input.b.x) % 32u), 20u)], var_3.x))));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: vec3<bool>, arg_3: Struct_1) -> Struct_1 {
    global1 = 39699i;
    global1 = ~arg_3.a;
    global3 = array<Struct_2, 6>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0, arg_1)), _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(global2[_wgslsmith_index_u32(18208u, 20u)], arg_3.d.x))))))));
    var var_1 = -634f;
    return func_3(vec2<i32>(~abs(arg_3.a) >> ((60931u ^ u_input.b.x) % 32u), func_2(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(arg_3.d.wx * arg_3.d.wz)), global3[_wgslsmith_index_u32(0u, 6u)], arg_2.x, arg_2.zx)));
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> u32 {
    var var_0 = arg_0;
    return arg_0.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -1i >> ((func_4(func_1(_wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(2478u, 20u)], global2[_wgslsmith_index_u32(1u, 20u)])), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 20u)] - -153f), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), Struct_1(22115i, vec4<u32>(0u, 33547u, 0u, 84010u), 1u, vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], -127f, global2[_wgslsmith_index_u32(u_input.a, 20u)]))), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(16944i, 2147483647i), vec2<i32>(1i, 2147483647i)))) | max(90581u, select(5998u, 1u, true))) % 32u);
    let var_1 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 20u)] + 328f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(69057u, 20u)]), 677f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 20u)] + -3301f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global2[_wgslsmith_index_u32(4294967295u, 20u)], -1010f, global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)])))) - _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(u_input.b.x, 20u)], global2[_wgslsmith_index_u32(u_input.a, 20u)], global2[_wgslsmith_index_u32(1u, 20u)]) - vec4<f32>(1265f, 414f, -670f, -603f))))))));
    global3 = array<Struct_2, 6>();
    global3 = array<Struct_2, 6>();
    var var_2 = _wgslsmith_f_op_vec4_f32(-var_1);
    let var_3 = any(vec3<bool>(all(select(vec3<bool>(false, true, true), select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)))), true, any(vec4<bool>(false, true, true, all(vec2<bool>(false, false))))));
    var var_4 = func_3(vec2<i32>(firstTrailingBit(1i), 56514i));
    var var_5 = func_1(_wgslsmith_f_op_f32(abs(var_4.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -272f)), !(!vec3<bool>(true, false, !var_3)), func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(67858u, 20u)])), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(f32(-1f) * -434f))), vec3<bool>(true, true & var_3, any(!vec3<bool>(true, true, var_3))), Struct_1(_wgslsmith_clamp_i32(var_4.a, func_1(243f, 559f, vec3<bool>(false, var_3, var_3), Struct_1(-2147483647i, vec4<u32>(66091u, 48795u, 70736u, var_4.c), var_4.c, vec4<f32>(1098f, global2[_wgslsmith_index_u32(var_4.b.x, 20u)], -312f, 230f))).a, var_0), vec4<u32>(u_input.a, 35907u, u_input.b.x, u_input.b.x), u_input.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.x, var_1.x, 379f, 1153f) - vec4<f32>(global2[_wgslsmith_index_u32(97369u, 20u)], var_4.d.x, var_1.x, global2[_wgslsmith_index_u32(4294967295u, 20u)])))))).d.xy;
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(abs(-1i ^ select(var_4.a, 0i, true)), -49543i), 25948i);
}

