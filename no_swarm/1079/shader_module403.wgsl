struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec4<i32>,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 2>;

var<private> global1: vec3<i32> = vec3<i32>(0i, 0i, -7843i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_1() -> bool {
    let var_0 = ~_wgslsmith_mult_u32(0u, ~_wgslsmith_dot_vec2_u32(u_input.a << (u_input.a % vec2<u32>(32u)), reverseBits(u_input.a)));
    global0 = array<i32, 2>();
    let var_1 = ~1u;
    global0 = array<i32, 2>();
    let var_2 = global1.x >= ~_wgslsmith_clamp_i32(_wgslsmith_sub_i32(global1.x, 0i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 20993u, var_1, 4294967295u), vec4<u32>(u_input.b, 0u, var_1, var_0)) % 32u), global1.x, 0i);
    return var_2;
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: Struct_1) -> f32 {
    let var_0 = arg_1;
    global1 = abs(countOneBits(abs((vec3<i32>(-21483i, var_0.c.x, arg_3.c.x) | arg_1.c.yzx) >> (abs(vec3<u32>(u_input.b, arg_0, 1u)) % vec3<u32>(32u)))));
    global0 = array<i32, 2>();
    var var_1 = arg_1;
    global1 = abs(min(var_1.c.wxw, arg_1.c.zwx)) << (vec3<u32>(u_input.a.x, ~(~60235u), arg_0) % vec3<u32>(32u));
    return arg_3.b.x;
}

fn func_2(arg_0: i32) -> vec4<bool> {
    var var_0 = Struct_1(!vec4<bool>(select(func_1(), false, true), true, _wgslsmith_f_op_f32(func_3(u_input.a.x, Struct_1(vec4<bool>(true, false, true, false), vec3<f32>(933f, -734f, -223f), vec4<i32>(u_input.d.x, global1.x, 14312i, arg_0), vec4<bool>(true, false, false, true)), vec2<f32>(-122f, -159f), Struct_1(vec4<bool>(false, true, true, false), vec3<f32>(-1000f, 1710f, 306f), vec4<i32>(global0[_wgslsmith_index_u32(1u, 2u)], arg_0, global1.x, arg_0), vec4<bool>(false, true, true, false)))) < 1379f, true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), abs(abs(~vec4<i32>(global1.x, global1.x, -47031i, 26254i)) ^ ~_wgslsmith_clamp_vec4_i32(vec4<i32>(global0[_wgslsmith_index_u32(u_input.b, 2u)], global1.x, global0[_wgslsmith_index_u32(1u, 2u)], 2147483647i), vec4<i32>(-1i, u_input.c, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], -16963i), vec4<i32>(0i, global0[_wgslsmith_index_u32(u_input.a.x, 2u)], u_input.e.x, arg_0))), select(vec4<bool>(all(vec3<bool>(false, false, false)), all(vec3<bool>(false, true, true)) & true, false, true), vec4<bool>(true, true, true, true), select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, true, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false)), vec4<bool>(true, true, true, true)), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, true)), all(vec3<bool>(true, true, false)) != true)));
    global0 = array<i32, 2>();
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(var_0.b.zx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, var_0.b.x)))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-198f - 1237f), -2000f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b.yz))));
    let var_2 = Struct_1(!var_0.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(var_0.b * var_0.b))), var_0.c, vec4<bool>(true, false, true, true));
    return select(!(!vec4<bool>(var_2.a.x, false, any(var_0.a), var_2.d.x)), var_0.d, !select(var_0.a, vec4<bool>(!var_2.d.x, true, true, select(false, var_0.d.x, false)), false));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(674f)) * -332f)))), _wgslsmith_f_op_f32(1000f + -147f));
    let var_1 = Struct_1(!vec4<bool>(1u != _wgslsmith_sub_u32(51543u, u_input.a.x), true, true, !(global0[_wgslsmith_index_u32(0u, 2u)] != 1i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_0))), _wgslsmith_div_f32(-1244f, _wgslsmith_f_op_f32(534f * var_0)), var_0)), firstTrailingBit(-vec4<i32>(~(-53306i), global0[_wgslsmith_index_u32(u_input.b, 2u)], global1.x, -1i)), vec4<bool>(any(vec2<bool>(true, true)) && any(vec2<bool>(true, true)), func_1(), true, all(vec4<bool>(u_input.e.x <= -50073i, false, true, false))));
    global0 = array<i32, 2>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(sign(var_1.b.yz)))));
    var var_3 = -2147483647i;
    var var_4 = vec3<bool>(false, false, var_1.d.x);
    var var_5 = Struct_1(!(!func_2(_wgslsmith_dot_vec4_i32(vec4<i32>(var_1.c.x, global0[_wgslsmith_index_u32(4492u, 2u)], 2147483647i, global0[_wgslsmith_index_u32(16540u, 2u)]), var_1.c))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_1.b))), vec4<i32>(i32(-1i) * -1i, global0[_wgslsmith_index_u32(48064u, 2u)], global1.x ^ u_input.e.x, 2147483647i), var_1.a);
    let var_6 = all(vec3<bool>(var_4.x, true, -181f > _wgslsmith_f_op_f32(var_0 * var_0))) | var_5.a.x;
    var var_7 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(-min(i32(-1i) * -34503i, 0i)), var_5.b.yx, abs(22700i));
}

