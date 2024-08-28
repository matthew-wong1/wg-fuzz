struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: vec3<f32>,
    d: i32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_3,
    c: vec4<bool>,
    d: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32>;

var<private> global1: array<vec2<bool>, 1> = array<vec2<bool>, 1>(vec2<bool>(true, false));

var<private> global2: array<f32, 12> = array<f32, 12>(-1333f, 151f, 272f, 1203f, 1934f, -161f, 1000f, 1824f, -557f, -1888f, -1000f, 184f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    global0 = firstTrailingBit(select(arg_1.a.d, max((arg_1.a.d & vec4<u32>(69066u, 4294967295u, 1u, 1u)) & ~vec4<u32>(52090u, arg_1.a.d.x, arg_1.a.d.x, global0.x), vec4<u32>(47432u << (global0.x % 32u), min(u_input.b, u_input.b), ~arg_1.a.d.x, ~global0.x)), select(!(!vec4<bool>(true, arg_1.b, arg_1.b, arg_1.a.e)), !select(vec4<bool>(arg_1.a.e, arg_1.b, false, arg_1.a.e), vec4<bool>(true, arg_1.b, arg_1.b, arg_1.a.e), vec4<bool>(arg_1.a.e, false, arg_1.b, true)), vec4<bool>(-1045f > arg_1.c, false, !arg_1.a.e, any(vec2<bool>(true, true))))));
    let var_0 = _wgslsmith_mod_vec3_u32(global0.wxy, reverseBits(vec3<u32>(u_input.b, ~(~53567u), arg_1.a.d.x)));
    let var_1 = arg_0.zz;
    return max(global0.x, global0.x);
}

fn func_2(arg_0: bool, arg_1: bool) -> u32 {
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~57807u, func_3(vec3<f32>(global2[_wgslsmith_index_u32(global0.x, 12u)], 1190f, global2[_wgslsmith_index_u32(39136u, 12u)]), Struct_3(Struct_1(global2[_wgslsmith_index_u32(global0.x, 12u)], 424f, 11552i, vec4<u32>(0u, 4294967295u, 1u, u_input.b), arg_0), arg_0, global2[_wgslsmith_index_u32(0u, 12u)], u_input.d.zx)) ^ u_input.b, firstLeadingBit(~(1u & u_input.b)), 4294967295u), _wgslsmith_clamp_vec4_u32(~min(firstTrailingBit(vec4<u32>(23232u, 0u, 4294967295u, 0u)), abs(vec4<u32>(global0.x, 73322u, 75858u, global0.x))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.b, 0u, 24162u, global0.x), select(vec4<u32>(u_input.b, 1u, global0.x, 1u), vec4<u32>(1u, 1865u, 4294967295u, u_input.b), arg_1)), ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, 4294967295u, global0.x), vec4<u32>(global0.x, u_input.b, global0.x, u_input.b)), arg_0), ~(select(vec4<u32>(1u, 4294967295u, u_input.b, u_input.b), vec4<u32>(u_input.b, 45434u, 27919u, u_input.b), arg_0) << (~vec4<u32>(0u, 15144u, global0.x, 60854u) % vec4<u32>(32u)))));
    global1 = array<vec2<bool>, 1>();
    let var_1 = Struct_4(Struct_3(Struct_1(123f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-426f - -208f), global2[_wgslsmith_index_u32(u_input.b | 4294967295u, 12u)])), -2147483647i, _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b, global0.x, 1u, 0u)), ~vec4<u32>(40762u, 4294967295u, 4294967295u, u_input.b), ~vec4<u32>(global0.x, global0.x, 103224u, global0.x)), !arg_0), all(select(vec2<bool>(true, false), !vec2<bool>(arg_0, true), global1[_wgslsmith_index_u32(min(global0.x, 4294967295u), 1u)])), -913f, vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, u_input.e, u_input.c, u_input.d.x), vec4<i32>(u_input.c, u_input.a, u_input.c, -1i)) ^ ~(-30844i), u_input.c)), Struct_3(Struct_1(_wgslsmith_div_f32(-1050f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b, 12u)] * -908f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global2[_wgslsmith_index_u32(u_input.b, 12u)]))), 0i, _wgslsmith_clamp_vec4_u32(vec4<u32>(13679u, 20893u, u_input.b, 1u) >> (vec4<u32>(4294967295u, u_input.b, global0.x, 78689u) % vec4<u32>(32u)), ~vec4<u32>(41229u, 4294967295u, 86680u, 42765u), vec4<u32>(96733u, u_input.b, 28664u, 50228u) | vec4<u32>(u_input.b, 6857u, u_input.b, u_input.b)), !any(vec3<bool>(true, false, false))), true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(global0.x, 12u)])), global2[_wgslsmith_index_u32(_wgslsmith_add_u32(select(u_input.b, u_input.b, false), 106402u), 12u)]), firstTrailingBit(~u_input.d.yx)), select(vec4<bool>(any(select(vec3<bool>(arg_1, arg_1, arg_0), vec3<bool>(arg_1, false, false), vec3<bool>(true, false, true))), arg_0, arg_0, 2732u != _wgslsmith_mult_u32(32559u, global0.x)), select(vec4<bool>(all(vec4<bool>(arg_1, true, false, arg_1)), any(vec3<bool>(true, true, true)), false != arg_1, true), vec4<bool>(all(vec3<bool>(arg_0, arg_1, false)), all(vec3<bool>(true, false, arg_0)), true, all(vec3<bool>(arg_0, arg_0, arg_0))), !arg_0), vec4<bool>(all(select(global1[_wgslsmith_index_u32(u_input.b, 1u)], vec2<bool>(arg_1, false), arg_0)), !all(vec4<bool>(true, arg_1, arg_1, arg_0)), true, any(vec3<bool>(arg_1, arg_1, true)))), vec4<bool>(!(arg_0 | (-1470f < global2[_wgslsmith_index_u32(u_input.b, 12u)])), true, true, false));
    let var_2 = false;
    var var_3 = Struct_3(var_1.b.a, arg_1 && all(!select(var_1.d.xyz, vec3<bool>(var_2, arg_0, var_1.d.x), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(global2[_wgslsmith_index_u32(global0.x, 12u)], var_1.b.a.b)), -957f)), 135f))), _wgslsmith_mult_vec2_i32(-(~u_input.d.xz), u_input.d.yx));
    return 4294967295u;
}

fn func_1() -> vec4<bool> {
    global0 = ~(~(~((vec4<u32>(26501u, global0.x, u_input.b, u_input.b) ^ vec4<u32>(u_input.b, 4294967295u, 14572u, global0.x)) << (max(vec4<u32>(global0.x, global0.x, 73729u, global0.x), vec4<u32>(0u, global0.x, u_input.b, global0.x)) % vec4<u32>(32u)))));
    var var_0 = vec2<i32>(-1i) * -vec2<i32>(-13462i, ~u_input.d.x);
    let var_1 = vec4<u32>(~(u_input.b << (global0.x % 32u)), _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32((vec3<u32>(global0.x, 0u, 33553u) ^ vec3<u32>(23251u, global0.x, 3473u)) >> (~global0.yxw % vec3<u32>(32u)), global0.xzz), _wgslsmith_mult_vec3_u32(global0.yzx, ~vec3<u32>(49681u, 0u, global0.x))), ~global0.x, ~u_input.b << (~firstLeadingBit(func_2(true, false)) % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(func_3(vec3<f32>(-641f, -474f, global2[_wgslsmith_index_u32(u_input.b, 12u)]), Struct_3(Struct_1(251f, global2[_wgslsmith_index_u32(20399u, 12u)], 0i, var_1, true), true, 1302f, u_input.d.yz)) ^ 4294967295u, 12u)])), global2[_wgslsmith_index_u32(~global0.x, 12u)])));
    let var_3 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(var_2))))), var_2)), Struct_1(global2[_wgslsmith_index_u32(~(func_2(false, true) >> (~0u % 32u)), 12u)], -166f, ~_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c, u_input.c), u_input.d.xz), vec2<i32>(-2147483647i, 7997i)), ~countOneBits(~var_1), _wgslsmith_f_op_f32(max(var_2.x, global2[_wgslsmith_index_u32(0u, 12u)])) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_2.x * global2[_wgslsmith_index_u32(1u, 12u)])))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-527f, 456f, -1941f)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_1.x, 12u)], -312f, 2420f) + vec3<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -2045f, global2[_wgslsmith_index_u32(46245u, 12u)]))))), _wgslsmith_dot_vec2_i32(u_input.d.xx, vec2<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(var_0.x, -1449i, 2147483647i, -2147483647i), _wgslsmith_div_vec4_i32(vec4<i32>(-38752i, var_0.x, u_input.d.x, 45549i), vec4<i32>(var_0.x, 11493i, 1i, u_input.e))), -2147483647i)));
    return !(!select(!select(vec4<bool>(true, true, var_3.b.e, true), vec4<bool>(true, false, var_3.b.e, var_3.b.e), var_3.b.e), select(!vec4<bool>(true, var_3.b.e, var_3.b.e, var_3.b.e), select(vec4<bool>(false, var_3.b.e, true, false), vec4<bool>(false, var_3.b.e, false, var_3.b.e), vec4<bool>(true, var_3.b.e, true, true)), var_3.b.e & false), !all(vec3<bool>(false, true, var_3.b.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), !func_1())) || all(vec4<bool>(true, false, true, true));
    global1 = array<vec2<bool>, 1>();
    var_0 = any(select(!func_1(), vec4<bool>(true, true, false, any(global1[_wgslsmith_index_u32(40705u, 1u)])), -2205f > _wgslsmith_f_op_f32(sign(619f))));
    let var_1 = !select(vec3<bool>(true | (global2[_wgslsmith_index_u32(0u, 12u)] < global2[_wgslsmith_index_u32(u_input.b, 12u)]), true, any(vec3<bool>(false, true, true))), vec3<bool>(false, !(u_input.e < u_input.a), true), min(reverseBits(u_input.c), _wgslsmith_add_i32(u_input.d.x, u_input.d.x)) == ~abs(u_input.d.x));
    var_0 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.b, 12u)]) * _wgslsmith_f_op_f32(sign(global2[_wgslsmith_index_u32(~0u, 12u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-658f + 296f)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global0.x, 12u)] * -462f)))) < 1195f;
    global2 = array<f32, 12>();
    global0 = min(max(~_wgslsmith_mod_vec4_u32(~vec4<u32>(global0.x, global0.x, u_input.b, global0.x), vec4<u32>(62039u, 52313u, u_input.b, u_input.b) & vec4<u32>(15425u, u_input.b, 49103u, u_input.b)), ((vec4<u32>(27286u, 0u, 985u, 5359u) ^ vec4<u32>(u_input.b, 1u, 0u, 1u)) | firstTrailingBit(vec4<u32>(global0.x, 1u, global0.x, 1u))) << (~(~vec4<u32>(u_input.b, 14198u, 35498u, u_input.b)) % vec4<u32>(32u))), vec4<u32>(1u, ~select(~global0.x, 13898u, !var_1.x), ~4294967295u << (max(~u_input.b, _wgslsmith_mod_u32(u_input.b, 0u)) % 32u), 1u));
    var var_2 = Struct_1(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.b, 12u)], 1376f), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(6392u, 12u)]), -u_input.e, firstLeadingBit(vec4<u32>(_wgslsmith_div_u32(countOneBits(18217u), ~global0.x), 4294967295u, ~(~u_input.b), _wgslsmith_dot_vec2_u32(firstLeadingBit(global0.xw), global0.wy))), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-207f, var_2.a, global2[_wgslsmith_index_u32(var_2.d.x, 12u)], 992f), vec4<f32>(1446f, var_2.a, var_2.a, 1282f))))) - _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(296f, -150f, -213f, global2[_wgslsmith_index_u32(u_input.b, 12u)]), vec4<f32>(-706f, global2[_wgslsmith_index_u32(var_2.d.x, 12u)], var_2.b, 1000f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1657f, global2[_wgslsmith_index_u32(0u, 12u)], global2[_wgslsmith_index_u32(4294967295u, 12u)], global2[_wgslsmith_index_u32(0u, 12u)]) + vec4<f32>(var_2.b, global2[_wgslsmith_index_u32(36734u, 12u)], 835f, -807f)), vec4<bool>(var_1.x, var_2.e, false, false)))) + vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-396f)), _wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(global0.x, 12u)]))), _wgslsmith_f_op_f32(min(153f, -725f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(0u, 12u)])), _wgslsmith_f_op_f32(abs(var_2.a)))));
}

