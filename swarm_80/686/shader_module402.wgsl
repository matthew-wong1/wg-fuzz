struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 25> = array<i32, 25>(2147483647i, 2147483647i, i32(-2147483648), -16791i, -1i, 2147483647i, i32(-2147483648), 0i, 2147483647i, 2147483647i, 15701i, 21032i, -11121i, 0i, 0i, 20305i, 2147483647i, -3334i, 2147483647i, 35868i, 4311i, -51496i, 1i, 47516i, 1i);

var<private> global1: array<Struct_1, 21>;

var<private> global2: vec4<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: vec4<bool>) -> vec4<bool> {
    global0 = array<i32, 25>();
    global0 = array<i32, 25>();
    var var_0 = min(select(~_wgslsmith_clamp_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 11674u), u_input.d, u_input.d), ~select(u_input.d, u_input.d, global2.x), arg_2.x != !arg_2.x) & u_input.d, ~(~countOneBits(vec3<u32>(u_input.d.x, u_input.c, 15540u))) ^ ~u_input.d);
    global2 = vec4<bool>(false, ~global0[_wgslsmith_index_u32(~select(22244u, 8450u, false), 25u)] <= ~reverseBits(-global0[_wgslsmith_index_u32(var_0.x, 25u)]), false, !(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(557f * 285f))) <= _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(482f + 2321f)))));
    var var_1 = ~(~u_input.b.yx & vec2<i32>(u_input.e.x, reverseBits(-u_input.b.x)));
    return select(select(vec4<bool>(-464f < _wgslsmith_f_op_f32(step(1005f, 497f)), true, false, any(vec3<bool>(global2.x, arg_0, arg_0))), select(!select(arg_2, arg_2, vec4<bool>(global2.x, arg_1, arg_0, arg_1)), !(!vec4<bool>(true, true, false, arg_1)), select(arg_2, vec4<bool>(arg_1, arg_0, arg_1, global2.x), select(vec4<bool>(true, arg_1, false, global2.x), vec4<bool>(arg_2.x, global2.x, true, true), vec4<bool>(arg_0, false, global2.x, true)))), !arg_1), arg_2, any(select(select(arg_2, !vec4<bool>(arg_2.x, arg_2.x, true, true), arg_0), vec4<bool>(true, true, !global2.x, global0[_wgslsmith_index_u32(4048u, 25u)] < 1i), all(arg_2.yyz))));
}

fn func_2(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> Struct_3 {
    global2 = select(!func_3(all(!global2.zx), true, vec4<bool>(false, any(vec2<bool>(false, true)), any(global2.ww), true)), !select(select(!vec4<bool>(global2.x, global2.x, global2.x, true), !vec4<bool>(true, global2.x, false, global2.x), !vec4<bool>(global2.x, global2.x, global2.x, true)), !func_3(global2.x, true, vec4<bool>(global2.x, global2.x, global2.x, false)), global2.x), func_3(true, false, vec4<bool>(true, global2.x, 12977i >= firstLeadingBit(u_input.a.x), !global2.x && any(vec2<bool>(global2.x, false)))));
    global1 = array<Struct_1, 21>();
    let var_0 = Struct_1(2147483647i, 75189u);
    var var_1 = Struct_4(Struct_2(~u_input.a.yy, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(1424f)), _wgslsmith_div_f32(-1739f, -852f), _wgslsmith_f_op_f32(floor(288f)))), vec4<i32>(select(_wgslsmith_mult_i32(2147483647i, u_input.a.x), ~(-17330i), any(global2.wyy)), firstTrailingBit(-1i), ~(-28369i), firstTrailingBit(-u_input.a.x))));
    var var_2 = arg_0;
    return Struct_3(44385u, vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(select(u_input.a, var_1.a.c, true), var_2.b)), -(-global0[_wgslsmith_index_u32(var_0.b, 25u)] ^ abs(23009i)), -select(var_0.a, _wgslsmith_clamp_i32(1i, arg_0.b.x, arg_0.b.x), global2.x && global2.x), abs(var_0.a)));
}

fn func_4(arg_0: Struct_3, arg_1: i32, arg_2: vec4<f32>) -> Struct_2 {
    var var_0 = Struct_4(Struct_2(~(~abs(vec2<i32>(-61997i, 12104i))), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(arg_2.x - -1503f), -199f, _wgslsmith_f_op_f32(floor(arg_2.x))))), u_input.a));
    global0 = array<i32, 25>();
    var var_1 = Struct_4(Struct_2(abs(~vec2<i32>(-51168i, 11581i)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(arg_2.yww)) - _wgslsmith_f_op_vec3_f32(-arg_2.xww))), arg_0.b));
    let var_2 = _wgslsmith_f_op_f32(round(778f));
    let var_3 = !all(func_3(global2.x, true, select(vec4<bool>(true, false, global2.x, global2.x), select(vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(true, true, false, global2.x), global2.x), vec4<bool>(global2.x, global2.x, false, global2.x))));
    return var_1.a;
}

fn func_1(arg_0: i32, arg_1: i32) -> Struct_2 {
    var var_0 = _wgslsmith_dot_vec2_u32(max(_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.d.x, 1u), u_input.d.yx, vec2<u32>(u_input.d.x, u_input.d.x)), vec2<u32>(u_input.c, 39628u)) << (vec2<u32>(min(u_input.d.x, u_input.d.x), 28686u) % vec2<u32>(32u)), ~u_input.d.yx) ^ 1u;
    var var_1 = func_4(func_2(Struct_3(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 45507u, u_input.c, 29217u), _wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, 57922u, u_input.d.x, u_input.c), vec4<u32>(u_input.c, u_input.c, 1u, 16563u))), u_input.e), 0u, 0u), firstTrailingBit(min(40047i, 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, -761f, -164f, 113f))) + vec4<f32>(_wgslsmith_f_op_f32(max(434f, -778f)), -336f, _wgslsmith_div_f32(548f, -471f), -1780f))));
    global1 = array<Struct_1, 21>();
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_1.b.yz)) * _wgslsmith_f_op_vec2_f32(var_1.b.xz + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(1329f, var_1.b.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.zy * var_1.b.yx)))));
    let var_3 = Struct_4(func_4(Struct_3(u_input.c, u_input.e << (vec4<u32>(4294967295u, u_input.c, u_input.c, u_input.d.x) % vec4<u32>(32u))), ~_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.a.xzx, var_1.c.zxx), func_2(Struct_3(38782u, vec4<i32>(-15906i, 2147483647i, 57906i, 0i)), 1u, u_input.d.x).b.x, _wgslsmith_dot_vec2_i32(var_1.a, vec2<i32>(arg_1, arg_1))), vec4<f32>(_wgslsmith_f_op_f32(-157f - -1357f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-1376f)))), -982f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1520f + -893f)))));
    return func_4(Struct_3(~4294967295u, vec4<i32>(abs(-48117i), ~(-arg_0), u_input.e.x, select(u_input.b.x, 28257i, global2.x) ^ firstLeadingBit(arg_1))), -(i32(-1i) * -59630i), vec4<f32>(var_1.b.x, -432f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_3.a.b.x * _wgslsmith_f_op_f32(floor(-1940f))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_div_f32(var_3.a.b.x, var_1.b.x), 1u == (u_input.d.x ^ 28200u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(u_input.b.x, 0i);
    global2 = !select(!vec4<bool>(false, !global2.x, any(vec4<bool>(global2.x, global2.x, true, false)), !global2.x), vec4<bool>(_wgslsmith_f_op_f32(step(var_0.b.x, -1000f)) <= var_0.b.x, all(!vec3<bool>(global2.x, global2.x, global2.x)), u_input.b.x < _wgslsmith_sub_i32(44035i, 0i), (var_0.c.x > -9810i) != global2.x), !select(select(vec4<bool>(true, global2.x, global2.x, global2.x), vec4<bool>(false, true, true, global2.x), false), vec4<bool>(global2.x, global2.x, global2.x, true), true));
    global1 = array<Struct_1, 21>();
    let var_1 = i32(-1i) * -11815i;
    global2 = vec4<bool>(!(!(true || global2.x)), true, select(global2.x, !global2.x, false), true);
    let var_2 = vec2<i32>(41589i, i32(-1i) * -(~global0[_wgslsmith_index_u32(u_input.c, 25u)])) | vec2<i32>(-global0[_wgslsmith_index_u32(0u, 25u)], ~u_input.a.x);
    var var_3 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b.x + 2184f) * 662f), var_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.b.x, _wgslsmith_f_op_f32(368f + var_0.b.x), _wgslsmith_f_op_f32(max(1387f, var_0.b.x))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1121f)), -263f, var_0.b.x, 1000f)), !select(true, true, 1u < u_input.c)));
    let var_4 = func_2(Struct_3(u_input.c, vec4<i32>(~var_1, -max(var_2.x, -16230i), _wgslsmith_div_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29536u, 1096u, 4294967295u, u_input.c), vec4<u32>(u_input.d.x, u_input.c, u_input.d.x, u_input.c)), 25u)], select(7776i, -18110i, true)), _wgslsmith_clamp_i32(1i, -u_input.a.x, i32(-1i) * -23158i))), 1u, 57514u);
    let var_5 = select(vec3<bool>((any(vec3<bool>(global2.x, false, false)) | (global2.x && true)) && true, all(select(select(vec4<bool>(false, global2.x, true, false), vec4<bool>(global2.x, global2.x, false, global2.x), global2.x), func_3(global2.x, true, vec4<bool>(global2.x, global2.x, false, global2.x)), select(vec4<bool>(false, global2.x, global2.x, global2.x), vec4<bool>(global2.x, true, global2.x, true), false))), true), select(global2.ywx, global2.yzx, func_3(global2.x, !func_3(true, false, vec4<bool>(false, true, false, true)).x, vec4<bool>(true, var_1 >= -1i, global2.x & global2.x, global2.x)).wzy), vec3<bool>(all(select(select(vec4<bool>(global2.x, true, false, false), vec4<bool>(global2.x, global2.x, true, global2.x), false), func_3(false, true, vec4<bool>(global2.x, true, false, global2.x)), !vec4<bool>(global2.x, global2.x, global2.x, true))), global2.x, var_1 >= var_0.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(step(var_0.b.x, _wgslsmith_f_op_f32(-1000f + 807f)))))), var_4.a);
}

