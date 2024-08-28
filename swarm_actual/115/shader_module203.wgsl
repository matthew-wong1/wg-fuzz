struct Struct_1 {
    a: f32,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<bool, 21>;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<u32>, arg_2: vec3<u32>) -> vec2<bool> {
    var var_0 = u_input.c.x;
    var var_1 = Struct_1(-1000f, !vec3<bool>(all(!vec4<bool>(global1[_wgslsmith_index_u32(13703u, 21u)], global1[_wgslsmith_index_u32(16250u, 21u)], false, false)), global1[_wgslsmith_index_u32(~16396u, 21u)], true));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_f_op_f32(-var_1.a))))), var_1.b);
    let var_3 = firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(firstLeadingBit(u_input.b), -u_input.b), vec4<i32>(~(-2147483647i), -1i, ~u_input.c.x, ~(-27446i))), ~2147483647i, ~(-47240i)));
    global1 = array<bool, 21>();
    return vec2<bool>(all(!(!var_1.b.zy)), all(!var_1.b.zx));
}

fn func_3(arg_0: bool, arg_1: Struct_1) -> vec3<bool> {
    global0 = min(countOneBits(_wgslsmith_clamp_i32(~_wgslsmith_div_i32(15161i, u_input.b.x), -u_input.b.x, ~_wgslsmith_dot_vec3_i32(vec3<i32>(-12988i, 2147483647i, -1i), vec3<i32>(13525i, 19553i, 0i)))), ~u_input.c.x);
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1.a))))), _wgslsmith_f_op_f32(-215f + arg_1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(arg_1.a, 182f)), _wgslsmith_f_op_f32(trunc(849f)))), 1211f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-572f, 988f, arg_1.a, arg_1.a)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.a, arg_1.a, -735f, arg_1.a))) * _wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_1.a, arg_1.a, 143f, 563f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(734f, 710f, -615f, -184f)), vec4<bool>(true, false, true, arg_0))))));
    global0 = max(~(_wgslsmith_sub_i32(~(-2147483647i), u_input.c.x) | _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, -1i), vec2<i32>(u_input.c.x, -27836i)), vec2<i32>(u_input.b.x, -16005i))), u_input.b.x);
    global1 = array<bool, 21>();
    global1 = array<bool, 21>();
    return select(select(arg_1.b, select(select(arg_1.b, vec3<bool>(global1[_wgslsmith_index_u32(u_input.a.x, 21u)], true, global1[_wgslsmith_index_u32(0u, 21u)]), global1[_wgslsmith_index_u32(u_input.d.x, 21u)]), vec3<bool>(false, arg_0, all(arg_1.b.zy)), select(vec3<bool>(true, true, true), select(vec3<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 21u)], false, false), vec3<bool>(arg_1.b.x, true, arg_0), arg_1.b), vec3<bool>(arg_0, false, global1[_wgslsmith_index_u32(u_input.a.x, 21u)]))), false), arg_1.b, select(vec3<bool>(!(!arg_1.b.x), func_2(vec4<u32>(39591u, 4294967295u, u_input.a.x, u_input.d.x), _wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 0u), u_input.d.xx), abs(u_input.d)).x, global1[_wgslsmith_index_u32(4294967295u, 21u)] || arg_1.b.x), arg_1.b, select(select(!vec3<bool>(false, true, arg_0), vec3<bool>(global1[_wgslsmith_index_u32(121u, 21u)], false, false), select(vec3<bool>(false, false, false), arg_1.b, global1[_wgslsmith_index_u32(u_input.d.x, 21u)])), arg_1.b, !(u_input.a.x != u_input.d.x))));
}

fn func_1(arg_0: vec4<u32>, arg_1: i32, arg_2: u32, arg_3: i32) -> Struct_1 {
    let var_0 = global1[_wgslsmith_index_u32(~0u, 21u)];
    var var_1 = Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1362f - -415f) - _wgslsmith_f_op_f32(trunc(676f)))))), vec3<bool>(all(!func_2(arg_0, u_input.a.yz, arg_0.zyx)), global1[_wgslsmith_index_u32(4294967295u, 21u)], true));
    var var_2 = Struct_1(-1371f, select(select(func_3(true, Struct_1(var_1.a, vec3<bool>(var_1.b.x, var_1.b.x, false))), var_1.b, func_2(vec4<u32>(arg_0.x, 90739u, u_input.d.x, arg_0.x), ~arg_0.wz, vec3<u32>(1u, 1u, 4294967295u)).x), var_1.b, func_2(vec4<u32>(_wgslsmith_add_u32(arg_2, 34681u), arg_2 << (4294967295u % 32u), ~1u, ~arg_2), select(u_input.a.zz & u_input.a.yy, ~vec2<u32>(arg_0.x, u_input.d.x), !vec2<bool>(global1[_wgslsmith_index_u32(22025u, 21u)], false)), firstLeadingBit(~vec3<u32>(arg_0.x, 4294967295u, 15364u))).x));
    var var_3 = var_2.a;
    global0 = u_input.c.x;
    return Struct_1(309f, vec3<bool>(((var_2.b.x & var_2.b.x) || !global1[_wgslsmith_index_u32(16745u, 21u)]) | false, arg_0.x >= 4294967295u, false));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-430f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))))));
    let var_1 = (u_input.d.x ^ 1u) >= _wgslsmith_dot_vec3_u32(u_input.a, u_input.a);
    let var_2 = func_1(abs(abs(vec4<u32>(u_input.a.x ^ 1u, ~u_input.d.x, ~0u, 19914u))), -_wgslsmith_div_i32(u_input.c.x, -(u_input.b.x | u_input.c.x)), ~(~u_input.a.x), abs(~(~u_input.c.x)));
    let var_3 = var_2;
    let var_4 = func_1(vec4<u32>(~(~u_input.a.x), _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.d.x, 0u), 0u), u_input.a.x, ~0u) | ~countOneBits(firstTrailingBit(vec4<u32>(u_input.d.x, u_input.a.x, u_input.a.x, 56043u))), u_input.c.x, 29722u, abs(15363i));
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.a, var_4.a) + vec2<f32>(var_3.a, 1980f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, 807f) + vec2<f32>(var_3.a, 306f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-306f, -2381f)))))));
    var_5 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(-var_3.a), _wgslsmith_div_f32(var_3.a, 959f)))))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_4.a), 149f)))));
    let x = u_input.a;
    s_output = StorageBuffer(~50233u, firstTrailingBit(u_input.b.ww), u_input.d, ~u_input.c.x, u_input.d.x);
}

