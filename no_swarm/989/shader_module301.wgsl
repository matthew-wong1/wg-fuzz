struct Struct_1 {
    a: vec3<bool>,
    b: vec3<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 10>;

var<private> global1: array<Struct_1, 15>;

var<private> global2: array<Struct_2, 7> = array<Struct_2, 7>(Struct_2(vec3<f32>(-1034f, -568f, -409f)), Struct_2(vec3<f32>(1287f, -2318f, -208f)), Struct_2(vec3<f32>(-565f, -665f, 850f)), Struct_2(vec3<f32>(-470f, 223f, 371f)), Struct_2(vec3<f32>(143f, -192f, 1218f)), Struct_2(vec3<f32>(109f, -1596f, 1288f)), Struct_2(vec3<f32>(-1102f, 673f, 864f)));

var<private> global3: array<vec2<f32>, 10> = array<vec2<f32>, 10>(vec2<f32>(-135f, -238f), vec2<f32>(304f, 112f), vec2<f32>(1639f, -691f), vec2<f32>(1062f, -415f), vec2<f32>(636f, 513f), vec2<f32>(-1505f, -556f), vec2<f32>(-1000f, 2263f), vec2<f32>(-138f, -961f), vec2<f32>(2598f, 1931f), vec2<f32>(-476f, -709f));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> vec4<f32> {
    global0 = array<u32, 10>();
    global2 = array<Struct_2, 7>();
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-1071f, 167f, -1677f))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1004f, -1097f, -937f) * vec3<f32>(1414f, 324f, 147f)), true))) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1000f, 501f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1494f) * _wgslsmith_f_op_f32(step(911f, -1036f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1194f, 567f)))))));
    let var_1 = false;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(455f, 1887f, -583f))))));
    return _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1456f, var_0.a.x, -300f, 987f))))))));
}

fn func_2(arg_0: f32, arg_1: f32) -> Struct_1 {
    global3 = array<vec2<f32>, 10>();
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(394f, 1339f, 681f), vec3<f32>(arg_1, 254f, arg_0))))) * vec3<f32>(_wgslsmith_f_op_f32(floor(arg_0)), -324f, _wgslsmith_f_op_f32(arg_0 + 1921f))) - vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-195f, arg_0) + _wgslsmith_div_f32(arg_1, -998f)))), _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - arg_1) - _wgslsmith_f_op_f32(arg_0 - arg_1))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(arg_0)) + _wgslsmith_f_op_f32(-arg_1)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(func_3(true, ~reverseBits(u_input.a.x), max(~u_input.d.zy, firstTrailingBit(vec2<i32>(u_input.d.x, u_input.d.x))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, var_0.x, -1129f, arg_0), vec4<f32>(411f, arg_0, 1051f, 1736f)))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1378f, _wgslsmith_f_op_vec4_f32(func_3(false, 1546u, vec2<i32>(49345i, 0i))).x, var_0.x, _wgslsmith_f_op_f32(-var_0.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0, 243f, 1456f, arg_1)))))), !(true || !all(vec2<bool>(false, true)))));
    let var_2 = !select(vec2<bool>(all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), all(vec3<bool>(false, false, true))), vec2<bool>(false, true), true);
    let var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_1.x)) + var_0.zy), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-1466f)), arg_0))));
    return Struct_1(select(vec3<bool>(false, var_2.x, true), vec3<bool>(var_2.x, var_2.x, true), vec3<bool>(all(vec3<bool>(var_2.x, true, false)), var_2.x, select(var_2.x, var_2.x, !var_2.x))), u_input.d.wyw);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: u32) -> f32 {
    var var_0 = func_2(_wgslsmith_f_op_f32(-665f + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(arg_0.x, 786f), 736f))), _wgslsmith_f_op_f32(arg_0.x - arg_0.x));
    global2 = array<Struct_2, 7>();
    let var_1 = any(var_0.a.xz);
    var var_2 = Struct_1(vec3<bool>(!(!(true | var_0.a.x)), !select(var_1, arg_0.x < arg_0.x, var_1), true), min(u_input.d.zxw, ~u_input.d.wxx) ^ abs(var_0.b));
    let var_3 = var_0.b.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - -275f)))) + _wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(abs(arg_0.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_2, 7>();
    let var_0 = _wgslsmith_add_vec3_u32(vec3<u32>(~(~global0[_wgslsmith_index_u32(46784u, 10u)]), global0[_wgslsmith_index_u32(~(u_input.b ^ u_input.b), 10u)], 4294967295u >> (select(global0[_wgslsmith_index_u32(4294967295u, 10u)], 63848u, true) % 32u)), u_input.a) << (vec3<u32>(u_input.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, global0[_wgslsmith_index_u32(u_input.c, 10u)]) << (vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 10u)], 62960u, 25940u) % vec3<u32>(32u)), vec3<u32>(7179u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(80959u, 10u)], 10u)], 44584u) >> (u_input.a % vec3<u32>(32u)), vec3<u32>(0u, u_input.c, 29831u)), max(select(vec3<u32>(u_input.a.x, 4294967295u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 10u)], 10u)], 10u)]), u_input.a, true), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c, 1u, 0u), vec3<u32>(u_input.c, 14819u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(4294967295u, 10u)], 10u)])))), u_input.b) % vec3<u32>(32u));
    global2 = array<Struct_2, 7>();
    global1 = array<Struct_1, 15>();
    var var_1 = Struct_2(vec3<f32>(_wgslsmith_div_f32(-320f, _wgslsmith_f_op_f32(-882f + _wgslsmith_f_op_f32(func_1(vec3<f32>(-1905f, 2288f, -713f), vec4<u32>(16902u, u_input.b, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.a.x, 10u)], 10u)]), 0u)))), _wgslsmith_f_op_f32(f32(-1f) * -961f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-668f, 633f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-678f + _wgslsmith_f_op_f32(var_1.a.x * var_1.a.x)) * _wgslsmith_f_op_f32(round(var_1.a.x))) + -331f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_1.a.zx))))))));
}

