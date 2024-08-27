struct Struct_1 {
    a: vec3<u32>,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(-1711f, -206f, 1056f, 140f, 164f, -1001f, 1598f, -274f, 417f, -1271f, 1852f, -1063f, 1000f, -221f, 347f, -760f, 1430f, -722f);

var<private> global1: Struct_1;

var<private> global2: Struct_3;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32) -> i32 {
    global1 = global2.a;
    global0 = array<f32, 18>();
    global2 = Struct_3(global2.a, firstLeadingBit(~vec2<u32>(global1.a.x, 1u) ^ u_input.d.yy) ^ abs(select(u_input.d.wy, vec2<u32>(1u, 0u), false) ^ global1.a.xx));
    global0 = array<f32, 18>();
    var var_0 = !(!all(vec4<bool>(all(vec2<bool>(false, true)), any(vec4<bool>(true, true, true, false)), false, false)));
    return select(select(-_wgslsmith_dot_vec4_i32(vec4<i32>(global2.a.d, 20838i, u_input.b.x, -1i), vec4<i32>(global1.d, 0i, global2.a.d, 7458i)), global1.d, !(global1.d > u_input.c.x)), -2147483647i, true) << (~(~(~(~68490u))) % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<i32>(max(1i, -reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-17909i, -10464i, global2.a.d, -30377i), vec4<i32>(-47724i, global1.d, 274i, global1.d)))), -17993i, func_3(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(0u, 18u)], global0[_wgslsmith_index_u32(50281u, 18u)], true)))))));
    let var_1 = Struct_3(global2.a, firstTrailingBit(vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(u_input.d.zz), global2.a.a.xz >> (vec2<u32>(global1.b, 1u) % vec2<u32>(32u))), global2.b.x)));
    global1 = var_1.a;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(global1.a.x, 18u)], -1378f) - -1000f) + _wgslsmith_f_op_f32(max(global0[_wgslsmith_index_u32(36470u, 18u)], global0[_wgslsmith_index_u32(global1.c, 18u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~var_1.b.x, global2.a.a.x), 18u)] + _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 18u)])) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-822f)))))));
    global2 = var_1;
    return global2.a;
}

fn func_1() -> vec4<f32> {
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(global0[_wgslsmith_index_u32(77438u, 18u)], global0[_wgslsmith_index_u32(var_0.a.x, 18u)], -2219f), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(global1.c, 18u)], 1311f, 1000f) * vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 18u)], global0[_wgslsmith_index_u32(36558u, 18u)], global0[_wgslsmith_index_u32(15358u, 18u)]))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(156f, 271f, global0[_wgslsmith_index_u32(global1.b, 18u)])))), vec3<f32>(224f, global0[_wgslsmith_index_u32(4294967295u, 18u)], _wgslsmith_f_op_f32(219f * global0[_wgslsmith_index_u32(0u, 18u)])))))));
    var var_2 = func_2();
    var var_3 = _wgslsmith_dot_vec2_i32(abs(~(~u_input.b.zy)), min(vec2<i32>(-61379i, 39817i | u_input.c.x), firstLeadingBit(vec2<i32>(global1.d, var_0.d))) ^ vec2<i32>(-2147483647i, -var_0.d));
    let var_4 = Struct_2(vec3<bool>(all(vec2<bool>(true, all(vec4<bool>(false, false, true, false)))), true, true), vec2<bool>(any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false))) | (_wgslsmith_mult_i32(u_input.c.x, 1i) >= _wgslsmith_mult_i32(global2.a.d, u_input.b.x)), all(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, true), true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true)))));
    return _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(1u, var_0.b, 67170u, var_2.c), u_input.d), 18u)], _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_f32(-225f, _wgslsmith_f_op_f32(select(global0[_wgslsmith_index_u32(global1.a.x, 18u)], -395f, false)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 5269i;
    var var_1 = _wgslsmith_f_op_vec4_f32(func_1());
    global0 = array<f32, 18>();
    let var_2 = vec3<i32>(-_wgslsmith_dot_vec3_i32(-u_input.b, ~vec3<i32>(global2.a.d, -2147483647i, 0i)), -7851i, _wgslsmith_mult_i32(-1i, ~_wgslsmith_mult_i32(global1.d, ~(-2147483647i))));
    let x = u_input.a;
    s_output = StorageBuffer(66736i, abs(0u));
}

