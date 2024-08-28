struct Struct_1 {
    a: vec2<f32>,
    b: i32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
}

struct Struct_5 {
    a: f32,
    b: f32,
    c: vec4<f32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<f32>,
    c: vec4<f32>,
    d: u32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 16>;

var<private> global1: array<f32, 19>;

var<private> global2: Struct_1 = Struct_1(vec2<f32>(-668f, -1000f), -36275i);

var<private> global3: vec3<bool>;

var<private> global4: array<Struct_3, 26>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: u32) -> f32 {
    global0 = array<Struct_2, 16>();
    global1 = array<f32, 19>();
    var var_0 = !select(!(!vec3<bool>(global3.x, false, true)), select(vec3<bool>(any(vec3<bool>(true, global3.x, false)), arg_0 < u_input.e.x, !global3.x), vec3<bool>(!global3.x, any(vec2<bool>(global3.x, true)), 21248u < arg_0), !vec3<bool>(true, global3.x, global3.x)), vec3<bool>(true, true, true));
    global1 = array<f32, 19>();
    global1 = array<f32, 19>();
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(min(arg_0, u_input.a.x), _wgslsmith_div_u32(51222u, u_input.e.x) & ~u_input.a.x, _wgslsmith_dot_vec3_u32(~u_input.a, u_input.a))), vec3<u32>(53778u, 1u, ~(~(~arg_0)))), 19u)];
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = ~(-1i) << (firstTrailingBit(u_input.a.x) % 32u);
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(min(_wgslsmith_mult_u32(1075u << (0u % 32u), u_input.a.x), u_input.e.x), 16u)]);
    var var_2 = abs(~countOneBits(vec2<u32>(38151u, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e))));
    var var_3 = _wgslsmith_f_op_f32(arg_2.a.x + arg_2.a.x);
    let var_4 = Struct_5(_wgslsmith_f_op_f32(max(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_2.a.x, _wgslsmith_f_op_f32(-global2.a.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(u_input.a.x)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-620f, -363f) - global2.a.x)))), vec4<f32>(global1[_wgslsmith_index_u32(var_2.x, 19u)], _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(260f, _wgslsmith_f_op_f32(2961f + -1662f))))), arg_2.a.x, arg_0), global0[_wgslsmith_index_u32(122047u, 16u)]);
    return !var_4.d.a.xzw;
}

fn func_4(arg_0: f32, arg_1: vec3<bool>, arg_2: Struct_3, arg_3: vec4<bool>) -> Struct_3 {
    var var_0 = Struct_4(Struct_2(vec4<bool>((arg_3.x | false) || select(false, arg_1.x, true), arg_3.x | true, arg_3.x, arg_1.x), true));
    var_0 = Struct_4(Struct_2(select(arg_2.a.a, select(arg_2.a.a, vec4<bool>(false, true, arg_3.x, false), arg_3.x), vec4<bool>(true, arg_2.a.b, var_0.a.b, arg_3.x)), all(func_2(_wgslsmith_div_f32(-159f, global2.a.x), _wgslsmith_f_op_f32(f32(-1f) * -111f), Struct_1(vec2<f32>(arg_0, global2.a.x), 1i)))));
    global2 = Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(726f + _wgslsmith_f_op_f32(trunc(-562f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0), 1915f, arg_2.a.b))), _wgslsmith_f_op_vec2_f32(-global2.a), vec2<bool>(false, _wgslsmith_f_op_f32(global2.a.x * 889f) < _wgslsmith_f_op_f32(-arg_0)))), u_input.d);
    global3 = arg_2.a.a.yxy;
    global4 = array<Struct_3, 26>();
    return Struct_3(Struct_2(select(!(!vec4<bool>(true, global3.x, true, var_0.a.b)), vec4<bool>(any(vec3<bool>(false, false, arg_3.x)), true, true, arg_2.a.b), global3.x), ((u_input.a.x == u_input.e.x) & false) | true));
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_3) -> Struct_2 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(min(u_input.a.x, u_input.a.x), ~0u), _wgslsmith_mod_u32(u_input.e.x, 4294967295u)), u_input.a.x ^ _wgslsmith_mod_u32(abs(u_input.a.x), u_input.a.x | 1u), ~u_input.a.x >> (u_input.a.x % 32u)), 16u)]);
    let var_1 = ~(~_wgslsmith_mult_i32(global2.b, ~global2.b));
    var var_2 = _wgslsmith_f_op_f32(-global2.a.x);
    global2 = Struct_1(_wgslsmith_div_vec2_f32(vec2<f32>(-552f, _wgslsmith_f_op_f32(exp2(global2.a.x))), vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-937f - global2.a.x), _wgslsmith_f_op_f32(-global2.a.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(24084u, 19u)]))))), global2.b);
    let var_3 = !func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(0u)))), !vec3<bool>(-18608i == var_1, arg_1.a.b || global3.x, any(vec2<bool>(true, var_0.a.b))), arg_1, !vec4<bool>(!var_0.a.b, all(arg_1.a.a), func_2(-1682f, 1030f, Struct_1(global2.a, global2.b)).x, true)).a.a.xzz;
    return func_4(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(5975u, 19u)]))) * _wgslsmith_div_f32(-540f, _wgslsmith_f_op_f32(round(global2.a.x)))))), func_2(global1[_wgslsmith_index_u32(~firstTrailingBit(20681u), 19u)], 308f, Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.a.x, global1[_wgslsmith_index_u32(0u, 19u)]) * global2.a) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-542f, global2.a.x) + global2.a)), 1i)), Struct_3(var_0.a), vec4<bool>(!((-1000f < global1[_wgslsmith_index_u32(u_input.e.x, 19u)]) | (global2.a.x == 1266f)), all(var_0.a.a.zy), true, var_0.a.a.x)).a;
}

fn func_1() -> vec3<bool> {
    let var_0 = Struct_4(func_5(!(!vec3<bool>(global3.x, global3.x, false)), func_4(1087f, func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.e.x, 19u)]), _wgslsmith_f_op_f32(2667f * global1[_wgslsmith_index_u32(u_input.a.x, 19u)]), Struct_1(global2.a, u_input.b.x)), Struct_3(global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, u_input.a.x, 21115u), 16u)]), select(vec4<bool>(true, true, global3.x, true), !vec4<bool>(true, global3.x, false, global3.x), true))));
    let var_1 = Struct_4(Struct_2(var_0.a.a, false));
    return var_1.a.a.zyy;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = !func_1();
    var var_0 = Struct_5(_wgslsmith_div_f32(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(firstLeadingBit(u_input.e.x & u_input.a.x), ~4294967295u), 19u)], -626f), _wgslsmith_div_f32(_wgslsmith_div_f32(-642f, 1000f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1173f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(811f, global1[_wgslsmith_index_u32(1u, 19u)], global1[_wgslsmith_index_u32(0u, 19u)], global1[_wgslsmith_index_u32(u_input.e.x, 19u)]))))), global0[_wgslsmith_index_u32(~select(_wgslsmith_clamp_u32(~u_input.a.x, u_input.e.x, ~4294967295u), u_input.e.x, true != any(vec3<bool>(global3.x, false, true))), 16u)]);
    var var_1 = u_input.e.x;
    var var_2 = vec4<i32>(min(u_input.d, 0i), -2147483647i, u_input.b.x, 1i);
    var var_3 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.b)) * _wgslsmith_f_op_f32(floor(-1512f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-346f + var_0.a) * _wgslsmith_f_op_f32(round(-1131f))), _wgslsmith_f_op_f32(func_3(u_input.e.x)), !var_0.d.a.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.a, global1[_wgslsmith_index_u32(33254u, 19u)])))), vec4<f32>(-739f, _wgslsmith_f_op_f32(ceil(global2.a.x)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(58572u, 19u)]), _wgslsmith_f_op_f32(-var_0.a)), var_0.d);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_vec3_u32(~vec3<u32>(4294967295u, 2562u, u_input.a.x), u_input.e.wwz), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-var_3.c), var_3.c)), _wgslsmith_f_op_vec4_f32(-var_3.c), u_input.e.x ^ 4294967295u, var_3.c.x);
}

