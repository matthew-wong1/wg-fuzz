struct Struct_1 {
    a: bool,
    b: i32,
    c: vec4<f32>,
    d: f32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec2<f32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global1: vec3<u32>;

var<private> global2: array<vec2<f32>, 8> = array<vec2<f32>, 8>(vec2<f32>(319f, -1000f), vec2<f32>(-583f, 824f), vec2<f32>(-496f, 399f), vec2<f32>(260f, 1821f), vec2<f32>(-1861f, 260f), vec2<f32>(-469f, 1339f), vec2<f32>(367f, -110f), vec2<f32>(667f, 1507f));

var<private> global3: array<Struct_2, 21>;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: vec4<u32>, arg_2: Struct_1) -> vec2<i32> {
    global2 = array<vec2<f32>, 8>();
    var var_0 = arg_2;
    var var_1 = abs(-firstLeadingBit(vec3<i32>(reverseBits(0i), -19526i, ~arg_0)));
    var var_2 = Struct_1(true, -23015i, vec4<f32>(_wgslsmith_f_op_f32(trunc(748f)), _wgslsmith_f_op_f32(1445f - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-199f + arg_2.d)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.x, 1000f))))), var_0.d), arg_2.c.x);
    var var_3 = -1203f;
    return firstLeadingBit(u_input.d) >> (~firstLeadingBit(global1.xy) % vec2<u32>(32u));
}

fn func_2(arg_0: vec2<u32>, arg_1: vec2<u32>, arg_2: vec2<f32>) -> vec4<bool> {
    var var_0 = Struct_1(global0.x && global0.x, _wgslsmith_dot_vec2_i32(select(~u_input.d, func_3(u_input.a, vec4<u32>(arg_0.x, arg_1.x, 13138u, u_input.c), Struct_1(true, -2147483647i, vec4<f32>(-994f, -197f, arg_2.x, arg_2.x), 401f)) & u_input.d, true != all(vec4<bool>(false, false, false, false))), -_wgslsmith_mod_vec2_i32(u_input.d, u_input.d & vec2<i32>(u_input.d.x, -2147483647i))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-344f, -2090f, arg_2.x, -743f)))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(763f, arg_2.x, arg_2.x, -413f) + vec4<f32>(arg_2.x, -731f, arg_2.x, -421f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1981f, -1592f, arg_2.x, -404f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -466f) * _wgslsmith_f_op_f32(trunc(arg_2.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_2.x - -1252f))), false)));
    var var_1 = abs(countOneBits(vec4<i32>(-select(u_input.a, u_input.d.x, var_0.a), var_0.b, var_0.b, 68618i)));
    let var_2 = 0u;
    global0 = !vec4<bool>(true, !all(vec4<bool>(global0.x, false, false, global0.x)), false, var_0.a);
    return select(select(vec4<bool>(var_0.a, global0.x, true, global0.x), vec4<bool>(true, true, false, false), vec4<bool>(true, all(vec3<bool>(global0.x, global0.x, true)), any(vec2<bool>(false, true)), !all(vec4<bool>(true, global0.x, true, true)))), !vec4<bool>(global0.x, any(global0.zwx), !global0.x, false), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: u32, arg_2: Struct_2) -> Struct_2 {
    global2 = array<vec2<f32>, 8>();
    var var_0 = arg_0.wyy;
    var_0 = global0.wyz;
    global0 = !arg_0;
    let var_1 = !(!func_2(vec2<u32>(41992u >> (global1.x % 32u), _wgslsmith_mult_u32(0u, arg_2.a.x)), vec2<u32>(~arg_1, _wgslsmith_mod_u32(global1.x, u_input.e)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(arg_2.a.x, 64761u, global1.x, 0u), vec4<u32>(arg_1, arg_2.a.x, u_input.c, arg_2.a.x), vec4<bool>(arg_0.x, true, global0.x, global0.x)), ~vec4<u32>(u_input.e, 1u, 10431u, 1u)), 8u)]).zww);
    return arg_2;
}

fn func_1(arg_0: bool, arg_1: vec2<bool>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = Struct_3(func_4(select(func_2(vec2<u32>(24575u, 26126u), global1.yy, _wgslsmith_f_op_vec2_f32(vec2<f32>(1535f, arg_2.c.x) + arg_2.c.yw)), vec4<bool>(true || arg_2.a, true, select(false, true, arg_1.x), any(arg_1)), !select(vec4<bool>(arg_2.a, arg_1.x, global0.x, false), vec4<bool>(arg_2.a, false, false, false), arg_1.x)), _wgslsmith_mult_u32(0u, global1.x), Struct_2(global1.zy ^ global1.zy, _wgslsmith_mod_vec3_i32(vec3<i32>(36749i, arg_2.b, arg_2.b), vec3<i32>(-15760i, arg_2.b, 0i) | vec3<i32>(arg_2.b, -2147483647i, arg_2.b)))));
    let var_1 = ~u_input.b;
    var var_2 = Struct_3(var_0.a);
    var_2 = Struct_3(Struct_2(firstLeadingBit(vec2<u32>(u_input.c, _wgslsmith_add_u32(var_2.a.a.x, 131166u))), var_0.a.b));
    let var_3 = vec4<bool>(select(all(global0.wz), !select(true, any(vec4<bool>(false, arg_0, false, true)), arg_2.a), true || (!global0.x != any(arg_1))), true, !any(!vec4<bool>(false, arg_1.x, true, false)), select(true && global0.x, false, arg_2.d <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-646f - -779f))));
    return reverseBits(min(var_0.a.b, var_0.a.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -u_input.d.x;
    var var_1 = reverseBits(firstLeadingBit(func_1(true, global0.wx, Struct_1(true, u_input.a, vec4<f32>(-1467f, 1000f, -336f, -1163f), -1000f)) ^ ~(~vec3<i32>(u_input.a, -1i, -1i))));
    global0 = !vec4<bool>(all(global0.xwy), global0.x | true, func_2(global1.zx, select(vec2<u32>(global1.x, 4294967295u), global1.xx, select(global0.x, false, false)), _wgslsmith_f_op_vec2_f32(abs(global2[_wgslsmith_index_u32(1u, 8u)]))).x, true);
    let var_2 = vec4<f32>(541f, -1544f, _wgslsmith_f_op_f32(1f - 1000f), _wgslsmith_div_f32(1560f, -770f));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(389f + _wgslsmith_f_op_f32(f32(-1f) * -740f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x - var_2.x) * _wgslsmith_f_op_f32(var_2.x - var_2.x))), _wgslsmith_f_op_f32(var_2.x * _wgslsmith_f_op_f32(-var_2.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_2.wy) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(var_2.wx, vec2<f32>(-428f, 376f))) + _wgslsmith_f_op_vec2_f32(-var_2.xx)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(171f, var_2.x) + vec2<f32>(var_2.x, var_2.x)) * _wgslsmith_f_op_vec2_f32(global2[_wgslsmith_index_u32(62956u, 8u)] - _wgslsmith_f_op_vec2_f32(select(global2[_wgslsmith_index_u32(u_input.b, 8u)], vec2<f32>(-115f, var_2.x), global0.x))))), _wgslsmith_f_op_vec4_f32(var_2 + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_2 * vec4<f32>(298f, -484f, var_2.x, var_2.x)) + vec4<f32>(102f, var_2.x, -347f, 348f))))));
}

