struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec2<f32>,
    d: f32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 20>;

var<private> global1: Struct_2;

var<private> global2: array<bool, 21>;

var<private> global3: array<f32, 4>;

var<private> global4: Struct_2 = Struct_2(Struct_1(vec2<f32>(-945f, -953f)), Struct_1(vec2<f32>(1017f, -561f)), vec3<f32>(-1058f, 138f, -316f));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3() -> vec2<f32> {
    let var_0 = global1.b;
    global0 = array<Struct_2, 20>();
    global1 = global0[_wgslsmith_index_u32(countOneBits((_wgslsmith_sub_u32(~u_input.b.x, u_input.b.x ^ u_input.b.x) ^ ~_wgslsmith_mod_u32(112499u, 16733u)) ^ ~2161u), 20u)];
    var var_1 = -430f;
    var var_2 = ~countOneBits(abs(countOneBits(select(vec4<i32>(2147483647i, u_input.a, u_input.c.x, -2147483647i), vec4<i32>(u_input.a, u_input.a, u_input.c.x, u_input.a), global2[_wgslsmith_index_u32(73993u, 21u)]))));
    return _wgslsmith_f_op_vec2_f32(max(global4.c.zx, var_0.a));
}

fn func_2(arg_0: vec4<bool>, arg_1: i32, arg_2: vec4<u32>, arg_3: i32) -> f32 {
    let var_0 = arg_1;
    global0 = array<Struct_2, 20>();
    let var_1 = firstLeadingBit(arg_2);
    var var_2 = var_1.zx;
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(501f, -426f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1091f, 385f)))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(func_3()))), vec2<bool>(true, !select(arg_0.x, global2[_wgslsmith_index_u32(11518u, 21u)], arg_0.x)))));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-2653f + _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(var_1.wwy, vec3<u32>(1u, arg_2.x, 54869u)), 4u)])))), _wgslsmith_f_op_f32(var_3.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -730f), _wgslsmith_f_op_f32(-974f + -579f)))))));
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: Struct_2) -> Struct_2 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0.a)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.b.a.x, arg_2.a.x)))) + vec2<f32>(global1.c.x, arg_3.b.a.x)));
    var var_1 = !vec4<bool>(true, any(!select(vec4<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global2[_wgslsmith_index_u32(1722u, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(0u, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)]))), all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 21u)])) | !(!global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), true);
    global2 = array<bool, 21>();
    let var_2 = !vec2<bool>(var_1.x, true);
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -411f);
    return global0[_wgslsmith_index_u32(~(~0u), 20u)];
}

fn func_1(arg_0: vec4<f32>) -> vec4<f32> {
    global1 = func_4(global4.b, _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(4294967295u, abs(u_input.b.x)), u_input.b.x, u_input.b.x), 4u)]), global1.b, Struct_2(global1.a, global4.b, vec3<f32>(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(u_input.b.x | 43858u, 4u)] * _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 4u)])), 801f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(4294967295u, 4u)]) + _wgslsmith_f_op_f32(func_2(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], false, false, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]), u_input.c.x, vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.b.x), -1i))))));
    global4 = Struct_2(func_4(Struct_1(vec2<f32>(global3[_wgslsmith_index_u32(u_input.b.x & 20660u, 4u)], _wgslsmith_f_op_f32(trunc(1279f)))), _wgslsmith_div_f32(1188f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-838f + 634f))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1030f, global3[_wgslsmith_index_u32(1u, 4u)])))), Struct_2(func_4(Struct_1(arg_0.zz), -206f, Struct_1(vec2<f32>(global4.a.a.x, -524f)), Struct_2(Struct_1(vec2<f32>(global4.a.a.x, 1350f)), global4.b, global1.c)).b, func_4(func_4(global4.a, 788f, global4.a, Struct_2(Struct_1(global4.b.a), Struct_1(vec2<f32>(988f, 1000f)), global1.c)).a, -1603f, func_4(global1.a, 1152f, Struct_1(arg_0.yy), Struct_2(Struct_1(vec2<f32>(207f, global3[_wgslsmith_index_u32(4294967295u, 4u)])), Struct_1(vec2<f32>(global1.b.a.x, 1105f)), arg_0.wxx)).a, func_4(global1.a, arg_0.x, Struct_1(global1.c.yz), global0[_wgslsmith_index_u32(2145u, 20u)])).b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_0.x, 1000f, -376f), vec3<f32>(-498f, global1.c.x, -649f), vec3<bool>(false, global2[_wgslsmith_index_u32(61583u, 21u)], true)))))).a, func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-global4.a.a)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_vec2_f32(func_3()).x)), Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.x, -204f)), _wgslsmith_div_vec2_f32(vec2<f32>(-984f, global3[_wgslsmith_index_u32(u_input.b.x, 4u)]), global1.c.yz), true))), func_4(Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-664f, -814f))), 602f, func_4(Struct_1(vec2<f32>(global1.b.a.x, global4.b.a.x)), _wgslsmith_div_f32(912f, 903f), global4.b, Struct_2(Struct_1(global1.c.zz), global4.a, global4.c)).a, global0[_wgslsmith_index_u32(~(~u_input.b.x), 20u)])).b, _wgslsmith_f_op_vec3_f32(select(arg_0.xzw, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(955f, 321f, 211f), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -645f), _wgslsmith_div_f32(global1.a.a.x, -545f), arg_0.x), false)), select(vec3<bool>(!global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(4294967295u ^ u_input.b.x, 21u)], any(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 21u)]))), vec3<bool>(!global2[_wgslsmith_index_u32(7534u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)], true), !select(vec3<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], true, global2[_wgslsmith_index_u32(8617u, 21u)]), vec3<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 21u)], true), global2[_wgslsmith_index_u32(u_input.b.x, 21u)])))));
    global3 = array<f32, 4>();
    global2 = array<bool, 21>();
    let var_0 = vec3<u32>(firstTrailingBit(u_input.b.x) | ~(countOneBits(u_input.b.x) << (u_input.b.x % 32u)), abs(23980u), u_input.b.x);
    return _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_3()).x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(u_input.b.x, 4u)]) - global3[_wgslsmith_index_u32(~46070u, 4u)])), arg_0.x, _wgslsmith_f_op_f32(-761f - global4.a.a.x), global4.c.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0[_wgslsmith_index_u32(u_input.b.x, 20u)];
    global0 = array<Struct_2, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-var_0.a.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.a.x, -330f, 188f, -522f) - vec4<f32>(global1.a.a.x, var_0.b.a.x, -978f, global1.a.a.x)), _wgslsmith_f_op_vec4_f32(func_1(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], var_0.c.x, -1157f, var_0.b.a.x)))))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-316f, global3[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global3[_wgslsmith_index_u32(0u, 4u)]))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3[_wgslsmith_index_u32(u_input.b.x, 4u)], global3[_wgslsmith_index_u32(0u, 4u)], global4.c.x, global4.c.x), vec4<f32>(462f, global4.b.a.x, global1.b.a.x, 914f), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 21u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 21u)], global2[_wgslsmith_index_u32(u_input.b.x, 21u)])))))).ww), _wgslsmith_f_op_f32(-1336f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), -abs(abs(vec2<i32>(u_input.c.x, 0i)) << (select(u_input.b, u_input.b, vec2<bool>(false, global2[_wgslsmith_index_u32(0u, 21u)])) % vec2<u32>(32u))));
}

