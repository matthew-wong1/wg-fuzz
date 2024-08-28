struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: vec3<f32>,
    d: f32,
    e: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: bool,
    c: vec3<u32>,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
    c: vec3<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 27>;

var<private> global1: vec2<i32> = vec2<i32>(-3187i, i32(-2147483648));

var<private> global2: array<vec2<bool>, 25> = array<vec2<bool>, 25>(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global3: Struct_2;

var<private> global4: array<f32, 26>;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    return global3.a;
}

fn func_2(arg_0: Struct_3) -> f32 {
    var var_0 = select(!(!select(select(vec3<bool>(true, false, global3.a), vec3<bool>(global3.a, true, arg_0.b), arg_0.b), !vec3<bool>(global3.a, arg_0.b, arg_0.b), true)), !vec3<bool>(arg_0.b, !(!global3.a), !(!global3.a)), select(vec3<bool>(true, any(vec3<bool>(false, global3.a, global3.a)), !func_3()), vec3<bool>((false || arg_0.b) | !global3.a, false, u_input.b >= ~arg_0.c.x), vec3<bool>(arg_0.b, false, -global1.x >= _wgslsmith_div_i32(11537i, -2147483647i))));
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(arg_0.d.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(505f, arg_0.a.x))), false)), arg_0.a.x));
    global2 = array<vec2<bool>, 25>();
    var var_2 = select(_wgslsmith_sub_i32(~select(global3.b, _wgslsmith_sub_i32(-80860i, global1.x), false), global3.b), global1.x ^ 1i, any(vec3<bool>(select(var_0.x, true, arg_0.a.x <= -152f), false, true)));
    global3 = Struct_2(!var_0.x, -max(_wgslsmith_sub_i32(global3.b, -1085i) & -global1.x, 33961i), min(vec2<u32>(4294967295u, 0u), u_input.a.wy));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1801f + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1000f - var_1), _wgslsmith_f_op_f32(round(var_1)))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_2 {
    let var_0 = !select(!(!select(vec4<bool>(global3.a, true, false, global3.a), vec4<bool>(global3.a, global3.a, true, false), false)), select(select(vec4<bool>(global3.a, false, false, global3.a), select(vec4<bool>(global3.a, true, global3.a, global3.a), vec4<bool>(true, false, false, false), false), vec4<bool>(global3.a, true, false, global3.a)), select(!vec4<bool>(global3.a, global3.a, false, global3.a), select(vec4<bool>(false, global3.a, global3.a, global3.a), vec4<bool>(true, global3.a, global3.a, false), vec4<bool>(false, global3.a, global3.a, global3.a)), any(vec4<bool>(true, true, global3.a, global3.a))), any(vec4<bool>(global3.a, global3.a, global3.a, global3.a))), vec4<bool>(false, all(select(global2[_wgslsmith_index_u32(arg_1.e.x, 25u)], vec2<bool>(global3.a, false), global2[_wgslsmith_index_u32(1u, 25u)])), !all(vec3<bool>(false, global3.a, global3.a)), global3.a));
    return Struct_2(global3.a, ~firstTrailingBit(global1.x), reverseBits(abs(firstTrailingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), vec2<u32>(global3.c.x, 0u))))));
}

fn func_1(arg_0: u32) -> Struct_3 {
    var var_0 = func_4(vec2<i32>(_wgslsmith_add_i32(-1i << (firstTrailingBit(arg_0) % 32u), select(global1.x, global3.b, global4[_wgslsmith_index_u32(1u, 26u)] >= -228f)), global3.b & global1.x), Struct_1(-1i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_0, 26u)] - -943f) + _wgslsmith_f_op_f32(func_2(Struct_3(vec4<f32>(global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(9518u, 26u)], global4[_wgslsmith_index_u32(0u, 26u)], 1000f), false, vec3<u32>(u_input.a.x, u_input.a.x, arg_0), vec2<f32>(global4[_wgslsmith_index_u32(1u, 26u)], 1055f))))), -614f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global4[_wgslsmith_index_u32(arg_0, 26u)], 241f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_clamp_u32(65232u, 85493u, global3.c.x), 26u)])), (u_input.a.ywz & u_input.a.wzw) << (_wgslsmith_div_vec3_u32(~u_input.a.yxy, u_input.a.yzw) % vec3<u32>(32u))));
    let var_1 = global4[_wgslsmith_index_u32(1u, 26u)];
    var var_2 = -1246f;
    let var_3 = Struct_2(false, ~(47352i << (_wgslsmith_mod_u32(1u, global3.c.x) % 32u)), vec2<u32>(~_wgslsmith_mult_u32(1u, arg_0), u_input.a.x) ^ u_input.a.xx);
    let var_4 = vec2<i32>(var_0.b, func_4(~global0[_wgslsmith_index_u32(~(~u_input.b), 27u)], Struct_1(_wgslsmith_sub_i32(var_3.b & var_0.b, min(7741i, 3331i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-691f, global4[_wgslsmith_index_u32(23321u, 26u)]))) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-178f, -1931f) * vec2<f32>(global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(1u, 26u)]))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global4[_wgslsmith_index_u32(global3.c.x, 26u)], global4[_wgslsmith_index_u32(1u, 26u)], global4[_wgslsmith_index_u32(var_0.c.x, 26u)]))))), -101f, vec3<u32>(_wgslsmith_sub_u32(1157u, arg_0), arg_0, ~arg_0))).b);
    return Struct_3(vec4<f32>(global4[_wgslsmith_index_u32(~1u, 26u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(4294967295u, 26u)]) + _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(45911u, 26u)])))), _wgslsmith_div_f32(578f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global4[_wgslsmith_index_u32(arg_0, 26u)], global4[_wgslsmith_index_u32(arg_0, 26u)])) + global4[_wgslsmith_index_u32(~20976u, 26u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-350f, 650f)) * _wgslsmith_div_f32(global4[_wgslsmith_index_u32(5447u, 26u)], global4[_wgslsmith_index_u32(4294967295u, 26u)])))), all(!vec3<bool>(true, global1.x > global1.x, true)), min(reverseBits(_wgslsmith_mod_vec3_u32(u_input.a.wwz & u_input.a.zxw, ~u_input.a.xxx)), max(u_input.a.zzy, vec3<u32>(1u, var_3.c.x, _wgslsmith_div_u32(4294967295u, 4294967295u)))), vec2<f32>(-1028f, global4[_wgslsmith_index_u32(_wgslsmith_add_u32(arg_0, _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(u_input.a.yx, var_3.c), u_input.b & 0u)), 26u)]));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-876f, global4[_wgslsmith_index_u32(4294967295u, 26u)])))))), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global3.c.x & ~firstLeadingBit(u_input.a.x), 26u)])));
    var var_2 = func_1(global3.c.x);
    global2 = array<vec2<bool>, 25>();
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(var_2.a - vec4<f32>(_wgslsmith_f_op_f32(var_2.d.x + -1414f), -102f, -291f, var_2.a.x)), !all(vec4<bool>(select(true, false, true), !var_0, var_2.b, all(vec4<bool>(global3.a, true, true, true)))), _wgslsmith_mod_vec3_u32(max(min(~u_input.a.xxz, select(var_2.c, u_input.a.xzy, vec3<bool>(false, var_0, true))), min(~vec3<u32>(74079u, 1u, 10587u), _wgslsmith_sub_vec3_u32(var_2.c, u_input.a.xzy))), var_2.c), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 26u)] - -586f) - _wgslsmith_f_op_f32(abs(var_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_2.d.x)), global4[_wgslsmith_index_u32(0u, 26u)]))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(var_2.c.x, 26u)], var_1), var_2.a.yw), _wgslsmith_f_op_vec2_f32(-var_2.a.yy))) * var_2.d))));
    var var_4 = vec2<u32>(16334u, 67545u);
    global0 = array<vec2<i32>, 27>();
    var var_5 = var_3.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(var_2.a - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_2(Struct_3(vec4<f32>(-1230f, global4[_wgslsmith_index_u32(91476u, 26u)], 1509f, 751f), var_2.b, vec3<u32>(var_4.x, 6820u, var_3.c.x), var_2.a.zx))), -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1355f), 953f))), _wgslsmith_f_op_f32(trunc(var_1)), vec3<f32>(var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(2276f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) * -570f) * var_1)), var_2.a.xwx);
}

