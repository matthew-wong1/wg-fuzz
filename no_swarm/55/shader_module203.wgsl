struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: vec3<f32>,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 1i;

var<private> global1: array<f32, 6> = array<f32, 6>(1098f, -1644f, 143f, -1133f, 322f, 1168f);

var<private> global2: array<vec3<u32>, 5>;

var<private> global3: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global0 = _wgslsmith_div_i32(u_input.b.x & 40188i, select(~u_input.a << (~(~4294967295u) % 32u), ~u_input.a, true));
    let var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(~0u, 6u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1161f)), global3.x)), 1067f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -118f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(20710u, 6u)]), 1295f, 931f))));
    let var_1 = Struct_1(var_0.x);
    global2 = array<vec3<u32>, 5>();
    global1 = array<f32, 6>();
    return false;
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> bool {
    let var_0 = func_3();
    global3 = select(vec4<bool>(global3.x & select(0u == arg_1.x, all(vec2<bool>(var_0, true)), global3.x), true, false || (var_0 | !global3.x), global3.x), vec4<bool>(var_0, !all(!vec4<bool>(var_0, global3.x, false, global3.x)), true, !var_0), !vec4<bool>(all(global3.yy), arg_1.x <= ~arg_1.x, select(u_input.b.x <= 35039i, var_0, any(global3.yxx)), false & (arg_1.x < 1u)));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-990f, _wgslsmith_f_op_f32(step(arg_0.x, arg_0.x))))), -377f)));
    global3 = !(!select(!(!vec4<bool>(var_0, true, global3.x, var_0)), !(!vec4<bool>(global3.x, global3.x, false, global3.x)), !select(vec4<bool>(global3.x, var_0, global3.x, true), vec4<bool>(global3.x, false, false, var_0), vec4<bool>(false, true, true, false))));
    global2 = array<vec3<u32>, 5>();
    return var_0;
}

fn func_1(arg_0: f32) -> Struct_1 {
    var var_0 = select(!(!(!vec4<bool>(global3.x, global3.x, false, global3.x))), !select(!vec4<bool>(global3.x, false, false, global3.x), !(!vec4<bool>(global3.x, false, false, global3.x)), vec4<bool>(true, func_2(vec4<f32>(1416f, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(21479u, 6u)]), vec4<u32>(60979u, 22117u, 0u, 4294967295u)), any(global3.ww), false)), true);
    return Struct_1(_wgslsmith_f_op_f32(arg_0 * -379f));
}

fn func_4(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = global3.zyw;
    global1 = array<f32, 6>();
    global3 = select(vec4<bool>(true, !func_3(), true, true), !vec4<bool>(true, true, any(!var_0.zz), false), var_0.x);
    global0 = 0i;
    var var_1 = ~max(34047u, countOneBits(~0u) >> (_wgslsmith_div_u32(~16486u, reverseBits(9012u)) % 32u));
    return arg_1;
}

fn func_5(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<f32>) -> i32 {
    global0 = _wgslsmith_dot_vec3_i32(vec3<i32>(~_wgslsmith_div_i32(11511i, u_input.b.x), (1i | u_input.a) ^ u_input.b.x, -8514i) ^ firstTrailingBit(vec3<i32>(0i, ~u_input.a, -15360i)), _wgslsmith_clamp_vec3_i32(u_input.b.xyy, abs(u_input.b.yww), abs(reverseBits(u_input.b.xwx))));
    global3 = select(!vec4<bool>((u_input.a | 66422i) > (-1i ^ u_input.a), global3.x & any(vec4<bool>(true, true, false, global3.x)), global3.x, true), !(!select(select(vec4<bool>(global3.x, global3.x, global3.x, false), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(global3.x, false, global3.x, global3.x)), select(vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, global3.x, false, global3.x), vec4<bool>(global3.x, false, false, global3.x)), true)), !vec4<bool>(global3.x, !(44664i <= u_input.b.x), any(select(global3.xyy, vec3<bool>(false, true, false), true)), all(!global3.xxw)));
    global3 = select(vec4<bool>(!(!global3.x), false, false, true), vec4<bool>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), countOneBits(vec2<u32>(5904u, 50288u))) < reverseBits(0u), func_2(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, 800f, -1000f, 204f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(700f, -1828f, 214f, arg_2.a))), vec4<u32>(1u, 1u, 1u, 1u)), true, !any(select(vec2<bool>(false, global3.x), global3.zy, global3.zz))), true);
    global1 = array<f32, 6>();
    global1 = array<f32, 6>();
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_mult_i32(min(func_5(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(0u, 6u)], 985f, global1[_wgslsmith_index_u32(1u, 6u)])), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(80308u, 6u)], global1[_wgslsmith_index_u32(1u, 6u)], -1617f)))), func_4(_wgslsmith_f_op_f32(min(global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(7024u, 6u)])), func_1(1335f)), func_4(_wgslsmith_f_op_f32(f32(-1f) * -974f), Struct_1(-350f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1[_wgslsmith_index_u32(11u, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)]), vec2<f32>(global1[_wgslsmith_index_u32(38565u, 6u)], 1057f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1[_wgslsmith_index_u32(37149u, 6u)], global1[_wgslsmith_index_u32(0u, 6u)])))), u_input.b.x), u_input.a);
    let var_0 = ~vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(62774u, 1u), vec2<u32>(4294967295u, 10686u)), ~(~1u >> (_wgslsmith_mod_u32(0u, 57536u) % 32u)), max(1u, ~select(5702u, 0u, false)), 148791u);
    global1 = array<f32, 6>();
    global0 = 17171i;
    let var_1 = u_input.b.xzx;
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(var_0.x, 6u)])) * -123f);
    let x = u_input.a;
    s_output = StorageBuffer(7380i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 6u)], 1302f, global1[_wgslsmith_index_u32(4294967295u, 6u)]) + vec3<f32>(-259f, -323f, -1000f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 6u)], global1[_wgslsmith_index_u32(4294967295u, 6u)], global1[_wgslsmith_index_u32(var_0.x, 6u)]))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, global1[_wgslsmith_index_u32(0u, 6u)], global1[_wgslsmith_index_u32(20194u, 6u)])))))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1[_wgslsmith_index_u32(var_0.x, 6u)], 1229f, global1[_wgslsmith_index_u32(23182u, 6u)]))))), vec3<f32>(global1[_wgslsmith_index_u32(~var_0.x, 6u)], _wgslsmith_f_op_f32(-887f * _wgslsmith_f_op_f32(floor(global1[_wgslsmith_index_u32(18937u, 6u)]))), _wgslsmith_f_op_f32(sign(928f))), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(max(var_0.x, 23360u) | 50856u, 6u)]), _wgslsmith_div_f32(global1[_wgslsmith_index_u32(var_0.x, 6u)], global1[_wgslsmith_index_u32(~(~30114u), 6u)]), -382f), var_1);
}

