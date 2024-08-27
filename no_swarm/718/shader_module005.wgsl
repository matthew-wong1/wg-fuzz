struct Struct_1 {
    a: vec3<bool>,
    b: vec4<f32>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: bool,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 32>;

var<private> global1: Struct_3 = Struct_3(i32(-2147483648));

var<private> global2: array<Struct_2, 7>;

var<private> global3: array<bool, 15> = array<bool, 15>(false, false, false, true, false, true, true, true, true, true, false, false, true, true, false);

var<private> global4: array<f32, 18>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_1(arg_0: i32, arg_1: Struct_4, arg_2: vec2<bool>) -> vec2<f32> {
    global2 = array<Struct_2, 7>();
    global4 = array<f32, 18>();
    global2 = array<Struct_2, 7>();
    global4 = array<f32, 18>();
    var var_0 = Struct_4(select(arg_1.a, arg_1.a, false));
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1714f, -932f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(60656u, 18u)], global4[_wgslsmith_index_u32(u_input.b, 18u)]) - vec2<f32>(-385f, global4[_wgslsmith_index_u32(46390u, 18u)])))) * vec2<f32>(_wgslsmith_f_op_f32(step(809f, -953f)), _wgslsmith_f_op_f32(step(global4[_wgslsmith_index_u32(u_input.e.x, 18u)], 141f)))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: vec4<bool>) -> bool {
    var var_0 = Struct_2(false, firstLeadingBit(~_wgslsmith_mod_i32(u_input.d, -33345i)) >= ~global1.a, Struct_1(select(select(!arg_3.yzz, vec3<bool>(arg_3.x, global3[_wgslsmith_index_u32(0u, 15u)], arg_0.a.x), arg_3.yyw), vec3<bool>(arg_2.a.x, !arg_2.a.x, !arg_2.a.x), _wgslsmith_sub_i32(arg_1.a, u_input.d) <= arg_1.a), arg_0.b, arg_0.c), vec3<i32>(0i, u_input.d, min(_wgslsmith_sub_i32(min(-1i, u_input.d), global1.a), ~23686i)));
    var var_1 = Struct_4(arg_3);
    let var_2 = ~u_input.e.x;
    var var_3 = global2[_wgslsmith_index_u32(0u, 7u)];
    let var_4 = var_0.c;
    return all(vec4<bool>(global3[_wgslsmith_index_u32(max(u_input.b, ~(~var_2)), 15u)], false, arg_0.c.x, var_3.d.x < _wgslsmith_mod_i32(abs(u_input.a), reverseBits(17863i))));
}

fn func_4(arg_0: Struct_4) -> vec2<f32> {
    var var_0 = true;
    var var_1 = u_input.a;
    global0 = array<Struct_2, 32>();
    var_1 = ~(~(~(~global1.a)));
    let var_2 = any(select(select(select(select(vec2<bool>(arg_0.a.x, global3[_wgslsmith_index_u32(u_input.e.x, 15u)]), vec2<bool>(true, true), arg_0.a.ww), arg_0.a.xz, select(arg_0.a.ww, arg_0.a.zy, arg_0.a.zx)), select(!arg_0.a.yy, !arg_0.a.yw, !arg_0.a.zx), !(arg_0.a.x == false)), vec2<bool>(global3[_wgslsmith_index_u32(1u, 15u)], true), false));
    return _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec2_f32(func_1(global1.a, Struct_4(arg_0.a), vec2<bool>(false, false))).x - _wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(u_input.b, 18u)]))))), -779f), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global1.a, arg_0, vec2<bool>(arg_0.a.x, false))) * vec2<f32>(global4[_wgslsmith_index_u32(0u, 18u)], 264f)), vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 18u)] + global4[_wgslsmith_index_u32(u_input.e.x, 18u)]), -133f))))));
}

fn func_2() -> vec2<f32> {
    let var_0 = Struct_1(!select(select(!vec3<bool>(global3[_wgslsmith_index_u32(u_input.c, 15u)], false, false), !vec3<bool>(false, false, global3[_wgslsmith_index_u32(1u, 15u)]), !vec3<bool>(true, global3[_wgslsmith_index_u32(28402u, 15u)], global3[_wgslsmith_index_u32(u_input.c, 15u)])), vec3<bool>(true, false & global3[_wgslsmith_index_u32(4294967295u, 15u)], global3[_wgslsmith_index_u32(firstTrailingBit(4294967295u), 15u)]), vec3<bool>(-2483i == u_input.a, true, global3[_wgslsmith_index_u32(u_input.b, 15u)] || global3[_wgslsmith_index_u32(u_input.c, 15u)])), vec4<f32>(_wgslsmith_f_op_f32(sign(-908f)), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(50533u, 18u)] * global4[_wgslsmith_index_u32(u_input.e.x, 18u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(u_input.b, 18u)] * 1000f))) + 1f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211f + _wgslsmith_f_op_f32(ceil(-1828f))))), vec3<bool>(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(5547u, u_input.b) | 3237u, 18u)] >= global4[_wgslsmith_index_u32(0u, 18u)], false, select(global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.e.x & u_input.b, 32597u), 15u)], global3[_wgslsmith_index_u32(u_input.e.x, 15u)], any(vec2<bool>(true, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_4(Struct_4(select(vec4<bool>(select(global3[_wgslsmith_index_u32(u_input.e.x, 15u)], var_0.a.x, global3[_wgslsmith_index_u32(1977u, 15u)]), var_0.b.x != 1340f, true, select(global3[_wgslsmith_index_u32(0u, 15u)], false, false)), vec4<bool>(func_3(var_0, Struct_3(-2147483647i), Struct_4(vec4<bool>(global3[_wgslsmith_index_u32(19648u, 15u)], global3[_wgslsmith_index_u32(60594u, 15u)], true, true)), vec4<bool>(global3[_wgslsmith_index_u32(55200u, 15u)], true, true, var_0.a.x)), true, false, global3[_wgslsmith_index_u32(countOneBits(27405u), 15u)]), select(vec4<bool>(false, var_0.a.x, var_0.a.x, var_0.c.x), !vec4<bool>(global3[_wgslsmith_index_u32(63730u, 15u)], global3[_wgslsmith_index_u32(0u, 15u)], global3[_wgslsmith_index_u32(4294967295u, 15u)], true), !global3[_wgslsmith_index_u32(1u, 15u)])))));
    var var_2 = (u_input.b | _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(20870u, u_input.b, u_input.e.x, u_input.b)), firstTrailingBit(vec4<u32>(58455u, u_input.c, u_input.b, u_input.e.x)))) >> (0u % 32u);
    var_2 = 20083u;
    var var_3 = global0[_wgslsmith_index_u32(firstTrailingBit(u_input.e.x), 32u)];
    return _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_3.c.b.x, var_3.c.b.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.x, var_0.b.x))))), vec2<f32>(-233f, -492f), var_0.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(606f, 1376f)), _wgslsmith_f_op_vec2_f32(func_1(2147483647i, Struct_4(vec4<bool>(true, false, false, global3[_wgslsmith_index_u32(u_input.b, 15u)])), vec2<bool>(global3[_wgslsmith_index_u32(73842u, 15u)], global3[_wgslsmith_index_u32(35089u, 15u)])))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2()), vec2<f32>(-105f, global4[_wgslsmith_index_u32(38611u, 18u)]))) * _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(u_input.c, 18u)], -350f) - vec2<f32>(global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(1u, 18u)])))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_4(select(vec4<bool>(true, global3[_wgslsmith_index_u32(46712u, 15u)], false, false), vec4<bool>(true, true, global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(27204u, 15u)]), vec4<bool>(true, false, false, true))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(global4[_wgslsmith_index_u32(u_input.e.x, 18u)])), _wgslsmith_f_op_f32(435f * global4[_wgslsmith_index_u32(1u, 18u)]))))));
    global0 = array<Struct_2, 32>();
    let var_1 = Struct_3(global1.a);
    let x = u_input.a;
    s_output = StorageBuffer(~(-global1.a), min(firstLeadingBit(u_input.e), select(~countOneBits(u_input.e), abs(_wgslsmith_mult_vec2_u32(u_input.e, vec2<u32>(u_input.e.x, 0u))), !select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 15u)], global3[_wgslsmith_index_u32(27115u, 15u)]), vec2<bool>(true, true), false))), u_input.a, u_input.a, vec4<u32>(31119u, _wgslsmith_mult_u32(u_input.b, u_input.b), (~u_input.b | ~18124u) << (_wgslsmith_mult_u32(u_input.c, _wgslsmith_clamp_u32(u_input.e.x, u_input.e.x, u_input.e.x)) % 32u), ~u_input.e.x));
}

