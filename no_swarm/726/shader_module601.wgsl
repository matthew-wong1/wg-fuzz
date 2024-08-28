struct Struct_1 {
    a: vec4<bool>,
    b: vec4<u32>,
    c: f32,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec3<u32>,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-120f, -1016f), vec2<f32>(140f, 260f), vec2<f32>(-448f, 445f), vec2<f32>(-1447f, 315f));

var<private> global1: i32 = 0i;

var<private> global2: array<bool, 7>;

var<private> global3: vec2<i32> = vec2<i32>(22192i, 43920i);

var<private> global4: vec4<u32>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: f32, arg_1: vec3<f32>) -> f32 {
    var var_0 = 4294967295u;
    var var_1 = global2[_wgslsmith_index_u32(u_input.b.x, 7u)];
    var_1 = false;
    global2 = array<bool, 7>();
    var var_2 = _wgslsmith_div_vec2_u32(u_input.b.wx, vec2<u32>(~global4.x << (4294967295u % 32u), 56585u));
    return -243f;
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    global2 = array<bool, 7>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(16022u, 35904u), 4u)], _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(592f)), _wgslsmith_f_op_f32(564f * 446f))))));
    let var_1 = select(select(select(select(!vec4<bool>(global2[_wgslsmith_index_u32(global4.x, 7u)], true, true, false), select(vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(41978u, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(global4.x, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)], false, false), false), any(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(global4.x, 7u)]))), !(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 7u)], global2[_wgslsmith_index_u32(20660u, 7u)], global2[_wgslsmith_index_u32(u_input.a, 7u)])), select(!vec4<bool>(false, global2[_wgslsmith_index_u32(53626u, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(global4.x, 7u)]), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(global4.x, 7u)]), global3.x == 445i)), !select(vec4<bool>(global2[_wgslsmith_index_u32(1759u, 7u)], true, global2[_wgslsmith_index_u32(0u, 7u)], global2[_wgslsmith_index_u32(global4.x, 7u)]), select(vec4<bool>(global2[_wgslsmith_index_u32(global4.x, 7u)], global2[_wgslsmith_index_u32(global4.x, 7u)], global2[_wgslsmith_index_u32(global4.x, 7u)], false), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(4294967295u, 7u)], false, global2[_wgslsmith_index_u32(80985u, 7u)]), false), global2[_wgslsmith_index_u32(~u_input.a, 7u)]), vec4<bool>(any(select(vec4<bool>(global2[_wgslsmith_index_u32(0u, 7u)], false, false, global2[_wgslsmith_index_u32(global4.x, 7u)]), vec4<bool>(false, global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(79653u, 7u)]), vec4<bool>(true, global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false, true))), all(select(vec2<bool>(true, true), vec2<bool>(global2[_wgslsmith_index_u32(global4.x, 7u)], true), true)), false, true)), !(!select(select(vec4<bool>(false, true, global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(23211u, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(53107u, 7u)], true, false, global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), global2[_wgslsmith_index_u32(global4.x, 7u)]), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)], global2[_wgslsmith_index_u32(u_input.b.x, 7u)]), global2[_wgslsmith_index_u32(global4.x, 7u)] || global2[_wgslsmith_index_u32(u_input.b.x, 7u)])), !select(vec4<bool>(global2[_wgslsmith_index_u32(~global4.x, 7u)], any(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 7u)], global2[_wgslsmith_index_u32(1u, 7u)])), global2[_wgslsmith_index_u32(1u, 7u)], true), vec4<bool>(true, all(vec3<bool>(false, false, global2[_wgslsmith_index_u32(59643u, 7u)])), true, true), u_input.b.x > 0u));
    global0 = array<vec2<f32>, 4>();
    let var_2 = Struct_1(select(select(vec4<bool>(true, true, all(var_1.xyy), false && var_1.x), var_1, any(!var_1.yz)), var_1, _wgslsmith_add_i32(54846i, -1i & global3.x) == reverseBits(select(arg_0.x, -1i, var_1.x))), ~(~_wgslsmith_div_vec4_u32(max(u_input.b, u_input.b), vec4<u32>(1u, u_input.b.x, u_input.b.x, u_input.a) & u_input.b)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(2054f, var_0.x))), -1000f), ~abs(~_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 9431u), global4.zy)));
    return -_wgslsmith_mod_i32(abs(-arg_0.x), ~arg_0.x) | firstTrailingBit(_wgslsmith_clamp_i32(0i, ~(i32(-1i) * -13371i), arg_0.x));
}

fn func_2(arg_0: vec4<u32>, arg_1: Struct_4, arg_2: vec4<i32>) -> u32 {
    global1 = countOneBits(-59119i);
    var var_0 = Struct_3(~(~_wgslsmith_mult_vec3_u32(vec3<u32>(16329u, 14485u, global4.x), vec3<u32>(96510u, u_input.b.x, 9195u))) | abs(global4.xxy), vec3<u32>(0u, _wgslsmith_dot_vec2_u32(abs(min(u_input.b.zx, global4.xw)), vec2<u32>(u_input.a, 4294967295u) >> (vec2<u32>(20167u, arg_0.x) % vec2<u32>(32u))), firstTrailingBit(global4.x)), Struct_1(vec4<bool>(true, true, !all(vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 7u)], false, global2[_wgslsmith_index_u32(4294967295u, 7u)], false)), false), u_input.b, 534f, u_input.b.yx), Struct_2(firstTrailingBit(~global4.x), vec4<i32>(func_3(select(vec2<i32>(41851i, 22289i), vec2<i32>(global3.x, arg_1.a), vec2<bool>(global2[_wgslsmith_index_u32(4294967295u, 7u)], true))), ~abs(0i), arg_1.a, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.x, arg_1.a), arg_2.wy)), Struct_1(!vec4<bool>(false, global2[_wgslsmith_index_u32(14994u, 7u)], false, true), vec4<u32>(arg_0.x, arg_0.x, 0u, u_input.a | 32822u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2062f)), vec2<u32>(_wgslsmith_div_u32(1u, u_input.a), u_input.a))));
    var var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-131f, _wgslsmith_f_op_f32(-var_0.c.c), -398f, _wgslsmith_f_op_f32(f32(-1f) * -710f))))));
    let var_2 = 2875i;
    global0 = array<vec2<f32>, 4>();
    return ~(~(~(~var_0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = abs(-vec2<i32>(-37287i, -44547i));
    let var_2 = reverseBits(abs(9807u));
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1556f - _wgslsmith_f_op_f32(sign(-103f))) + 1527f), _wgslsmith_f_op_f32(ceil(-286f)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-1673f, _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1570f, -100f, 538f), vec3<f32>(105f, 1003f, -1251f)))))))));
    var var_4 = Struct_2(_wgslsmith_dot_vec3_u32(u_input.b.xzz, ~global4.zwy), _wgslsmith_div_vec4_i32(vec4<i32>(~var_1.x, var_1.x >> (~0u % 32u), ~(-2147483647i), _wgslsmith_div_i32(0i, _wgslsmith_div_i32(var_1.x, 0i))), vec4<i32>(~(-1i), _wgslsmith_mod_i32(var_1.x, i32(-1i) * -2147483647i), ~(~(-28142i)), var_1.x)), Struct_1(vec4<bool>(!(global2[_wgslsmith_index_u32(var_2, 7u)] == global2[_wgslsmith_index_u32(0u, 7u)]), global2[_wgslsmith_index_u32(~func_2(vec4<u32>(4294967295u, var_0.x, global4.x, 4893u), Struct_4(global3.x), vec4<i32>(var_1.x, global3.x, global3.x, 56854i)), 7u)], true, select(global2[_wgslsmith_index_u32(1u, 7u)] & false, global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.a, var_0.x, var_2), 7u)], global2[_wgslsmith_index_u32(u_input.b.x ^ u_input.b.x, 7u)])), u_input.b, _wgslsmith_f_op_f32(-812f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_3.x)))), ~_wgslsmith_div_vec2_u32(~vec2<u32>(28659u, 1u), vec2<u32>(u_input.a, global4.x))));
    var var_5 = 1i;
    var_1 = var_4.b.xw;
    let var_6 = _wgslsmith_mult_vec2_u32(vec2<u32>(global4.x, 4294967295u), select(var_0.zz, ~var_4.c.d << (~(vec2<u32>(var_4.c.d.x, 4294967295u) >> (vec2<u32>(global4.x, var_0.x) % vec2<u32>(32u))) % vec2<u32>(32u)), var_4.c.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -688f)) - _wgslsmith_f_op_f32(-1698f + _wgslsmith_f_op_f32(784f + _wgslsmith_f_op_f32(-var_3.x)))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-797f, -1837f, -380f)))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_4.c.c, -941f)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(var_4.c.c, vec3<f32>(1728f, 390f, var_4.c.c))))), var_4.c.c))));
}

