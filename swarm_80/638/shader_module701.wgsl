struct Struct_1 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec4<i32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> u32 {
    var var_0 = arg_0;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.a.x);
    var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-271f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(arg_1.a.x))))), 1f))));
    let var_2 = !(!vec4<bool>(true, arg_0.b, all(vec4<bool>(false, global0.b, var_0.b, false)), true));
    var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(112f * -336f))))), global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.a.x * global0.a.x) + 165f)), !(!(!var_0.b)));
    return ~select(u_input.a.x, u_input.e.x, _wgslsmith_f_op_f32(-global0.a.x) != _wgslsmith_f_op_f32(877f + _wgslsmith_f_op_f32(arg_0.a.x - -133f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<f32> {
    global0 = arg_1;
    var var_0 = reverseBits(func_3(Struct_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1589f, -2268f, -907f) - global0.a), false), Struct_1(_wgslsmith_f_op_vec3_f32(arg_1.a + vec3<f32>(1379f, global0.a.x, arg_1.a.x)), global0.b))) & _wgslsmith_sub_u32(min(_wgslsmith_dot_vec2_u32(u_input.e, vec2<u32>(4294967295u, u_input.e.x)), 4294967295u), 1u);
    let var_1 = false && !any(vec4<bool>(select(false, false, false), any(vec2<bool>(arg_0, arg_1.b)), 9297u == u_input.e.x, true & arg_0));
    let var_2 = arg_1;
    let var_3 = true;
    return vec3<f32>(global0.a.x, -139f, -1443f);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(-1529f, arg_1.x, global0.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2003f, _wgslsmith_f_op_f32(sign(arg_1.x)), _wgslsmith_f_op_f32(-global0.a.x)))), arg_0);
    let var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-485f, _wgslsmith_f_op_f32(arg_1.x - global0.a.x)) + vec2<f32>(_wgslsmith_div_f32(global0.a.x, arg_1.x), 113f)), _wgslsmith_f_op_vec2_f32(-arg_1.xy))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.zy))));
    global0 = Struct_1(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0.a.x, var_0.x, 597f), vec3<f32>(arg_1.x, global0.a.x, 1029f))))))), !(true & !arg_0));
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(func_2(global0.b, Struct_1(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-712f, -900f, var_0.x)) + vec3<f32>(1369f, -1000f, 723f)), true))), min(_wgslsmith_dot_vec4_i32(u_input.d, firstLeadingBit(vec4<i32>(u_input.c, u_input.d.x, u_input.b.x, -2147483647i))), -u_input.d.x) == u_input.c);
    let var_2 = u_input.a;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1380f - 591f), var_0.x)), -1383f, _wgslsmith_f_op_f32(-var_1.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * vec4<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(-2465f)), _wgslsmith_f_op_f32(select(2093f, _wgslsmith_f_op_f32(round(var_0.x)), var_1.b)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -841f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(280f)) * _wgslsmith_f_op_f32(-var_1.a.x))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(var_0.x)))), var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.a.x)))));
    let var_1 = abs(32859u);
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_f32(trunc(-897f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + 2585f) - _wgslsmith_f_op_f32(-global0.a.x)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.a.x)))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_1(true, global0.a)))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1219f, 496f, 1139f, -519f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1649f, global0.a.x, global0.a.x, 1295f) + vec4<f32>(645f, -2523f, global0.a.x, 402f))))))));
    var var_3 = Struct_1(var_2.xzy, !(true || any(vec3<bool>(true, true, true))));
    var var_4 = u_input.d.zzz;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(min(vec2<u32>(var_1, 17973u) << ((u_input.a.zz << (vec2<u32>(4294967295u, var_1) % vec2<u32>(32u))) % vec2<u32>(32u)), countOneBits(vec2<u32>(u_input.e.x, 5296u)))));
}

