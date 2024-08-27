struct Struct_1 {
    a: u32,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 25>;

var<private> global1: u32;

var<private> global2: array<Struct_3, 9>;

var<private> global3: f32 = -1548f;

var<private> global4: vec3<f32> = vec3<f32>(4265f, -605f, 1170f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: bool, arg_1: vec2<u32>, arg_2: bool) -> vec2<u32> {
    global2 = array<Struct_3, 9>();
    let var_0 = Struct_1(4570u, arg_1);
    var var_1 = global4.x;
    var var_2 = ~max(2804i, reverseBits(~u_input.d));
    global1 = reverseBits(_wgslsmith_mod_u32(arg_1.x, abs(min(~u_input.e.x, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 24390u, u_input.b.x, arg_1.x), vec4<u32>(u_input.b.x, 4294967295u, u_input.b.x, 24640u))))));
    return ~firstTrailingBit(abs(arg_1));
}

fn func_4(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> f32 {
    var var_0 = Struct_1(_wgslsmith_div_u32(firstLeadingBit(abs(arg_0)), arg_2.a) & ~(~0u), ~(~u_input.b.xx));
    let var_1 = vec2<u32>(63561u, select(_wgslsmith_mult_u32(countOneBits(1u) | var_0.b.x, func_3(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.a, arg_2.a), 25u)], vec2<u32>(var_0.b.x, arg_1.b.x), global0[_wgslsmith_index_u32(~0u, 25u)]).x), reverseBits(~1u), !any(vec2<bool>(global0[_wgslsmith_index_u32(arg_2.b.x, 25u)], false)) && any(!vec3<bool>(global0[_wgslsmith_index_u32(arg_1.b.x, 25u)], global0[_wgslsmith_index_u32(4294967295u, 25u)], true))));
    global1 = arg_2.a >> (~_wgslsmith_mod_u32(firstTrailingBit(121648u), 4294967295u) % 32u);
    let var_2 = arg_1.a.x;
    var var_3 = 52462u;
    return _wgslsmith_f_op_f32(round(arg_1.a.x));
}

fn func_2() -> bool {
    var var_0 = global2[_wgslsmith_index_u32(u_input.e.x, 9u)];
    let var_1 = -228f;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_div_f32(-1160f, _wgslsmith_f_op_f32(step(global4.x, -1250f))), _wgslsmith_f_op_f32(func_4(~23656u, Struct_2(vec3<f32>(var_1, -1893f, var_1), _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.a.x, 0u, u_input.e.x, 8026u), vec4<u32>(var_0.a.x, u_input.e.x, var_0.a.x, var_0.a.x)), vec4<u32>(4294967295u, u_input.b.x, var_0.a.x, 20279u) | vec4<u32>(103043u, u_input.e.x, var_0.a.x, 52321u), countOneBits(vec4<u32>(var_0.a.x, 4294967295u, 4294967295u, 0u)))), Struct_1(1u, firstTrailingBit(func_3(false, vec2<u32>(var_0.a.x, 19302u), false))))));
    global4 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2, -1772f, 303f))) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1, 127f, var_2), vec3<f32>(global4.x, var_2, -747f), false))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1499f, global4.x, 959f))) + vec3<f32>(_wgslsmith_f_op_f32(max(var_1, var_1)), _wgslsmith_f_op_f32(1000f - -794f), _wgslsmith_f_op_f32(926f + var_2))))));
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(-297f, _wgslsmith_f_op_f32(f32(-1f) * -1296f))), var_1, -1395f) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(var_2, global4.x, -1943f), vec3<f32>(395f, global4.x, -1056f)))))), ~vec4<u32>(~max(var_0.a.x, u_input.b.x), _wgslsmith_sub_u32(~u_input.e.x, ~u_input.b.x), _wgslsmith_sub_u32(_wgslsmith_add_u32(21999u, 14253u), firstTrailingBit(u_input.b.x)), _wgslsmith_clamp_u32(~u_input.b.x, var_0.a.x, _wgslsmith_mult_u32(1u, var_0.a.x))));
    return global4.x > _wgslsmith_f_op_f32(-853f - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(459f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

fn func_1(arg_0: u32, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_3) -> bool {
    global2 = array<Struct_3, 9>();
    var var_0 = arg_1.x;
    let var_1 = func_2();
    var var_2 = firstLeadingBit(abs(~arg_1));
    var var_3 = Struct_1(_wgslsmith_clamp_u32(u_input.e.x, ~3784u, arg_3.a.x), _wgslsmith_clamp_vec2_u32(countOneBits(arg_3.a.xy | _wgslsmith_mod_vec2_u32(var_2.xy, vec2<u32>(27100u, u_input.b.x))), vec2<u32>(u_input.e.x, ~(~arg_0)), ~arg_2.b));
    return all(vec4<bool>(all(!vec2<bool>(var_1, global0[_wgslsmith_index_u32(24146u, 25u)])), global0[_wgslsmith_index_u32(u_input.b.x, 25u)], true, _wgslsmith_dot_vec3_u32(arg_1.xww, u_input.b) <= ~arg_0)) & global0[_wgslsmith_index_u32(4294967295u, 25u)];
}

fn func_5(arg_0: vec2<i32>, arg_1: vec3<u32>, arg_2: bool) -> StorageBuffer {
    var var_0 = !select(!select(!vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.b.x, 25u)], global0[_wgslsmith_index_u32(arg_1.x, 25u)]), !vec3<bool>(false, arg_2, false), select(vec3<bool>(true, false, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]), vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, true))), !vec3<bool>(arg_1.x != arg_1.x, global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_1.yy, vec2<u32>(arg_1.x, u_input.b.x)), 25u)], select(false, true, arg_2)), !(!(!vec3<bool>(arg_2, true, global0[_wgslsmith_index_u32(u_input.e.x, 25u)]))));
    let var_1 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1262f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global4.x)), 887f) + -487f), 1028f)));
    global4 = vec3<f32>(var_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -206f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(431f, var_1.x) + global4.x), -1000f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(646f + -129f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(325f, global4.x)) - _wgslsmith_f_op_f32(-227f - var_1.x))), global4.x));
    var var_2 = 1f;
    let var_3 = ~abs(_wgslsmith_mult_vec4_i32(~vec4<i32>(arg_0.x, -18303i, -1i, 7732i), _wgslsmith_mod_vec4_i32(vec4<i32>(10857i, u_input.d, arg_0.x, -5214i), vec4<i32>(u_input.d, -1i, -5118i, -2147483647i)))) | reverseBits(vec4<i32>(1i, -39053i, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -1i, 0i, u_input.d), -vec4<i32>(1i, u_input.c, arg_0.x, 2147483647i))));
    return StorageBuffer(_wgslsmith_f_op_f32(1622f + _wgslsmith_f_op_f32(f32(-1f) * -964f)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 25>();
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(1296f))))) - _wgslsmith_f_op_f32(global4.x + global4.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global4.x)) + _wgslsmith_f_op_f32(exp2(global4.x))));
    let x = u_input.a;
    s_output = func_5(vec2<i32>(select(u_input.c, _wgslsmith_div_i32(abs(u_input.a.x), min(1i, u_input.c)), true), u_input.d), select(vec3<u32>(u_input.e.x, 1u, u_input.b.x), select(~vec3<u32>(3044u, u_input.b.x, u_input.b.x), _wgslsmith_sub_vec3_u32(~u_input.b, _wgslsmith_clamp_vec3_u32(vec3<u32>(44627u, u_input.e.x, u_input.b.x), vec3<u32>(47073u, u_input.b.x, 1u), u_input.b)), true), vec3<bool>(global0[_wgslsmith_index_u32(11870u, 25u)], true, func_1(u_input.e.x, vec4<u32>(115628u, 4294967295u, 133834u, u_input.b.x), Struct_1(u_input.b.x, vec2<u32>(49351u, u_input.e.x)), global2[_wgslsmith_index_u32(4819u, 9u)]) == global0[_wgslsmith_index_u32(24939u, 25u)])), global0[_wgslsmith_index_u32(u_input.b.x, 25u)]);
}

