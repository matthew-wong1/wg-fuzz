struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: u32,
}

struct Struct_2 {
    a: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<i32, 31>;

var<private> global2: bool;

var<private> global3: array<Struct_1, 28>;

var<private> global4: array<u32, 31> = array<u32, 31>(4294967295u, 60488u, 31828u, 1u, 0u, 52581u, 17559u, 1u, 1u, 36493u, 40165u, 20088u, 25494u, 1u, 98963u, 4294967295u, 0u, 0u, 32977u, 15374u, 31204u, 0u, 33024u, 509u, 59324u, 0u, 0u, 772u, 25287u, 4294967295u, 42573u);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_4(true);
    global2 = -_wgslsmith_div_i32(global0.x, _wgslsmith_clamp_i32(-3349i, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(~global4[_wgslsmith_index_u32(40455u, 31u)], 31u)], 31u)], global1[_wgslsmith_index_u32(1u, 31u)])) <= ~global0.x;
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(abs(global4[_wgslsmith_index_u32(arg_0, 31u)] >> (1u % 32u)), arg_0) ^ global4[_wgslsmith_index_u32(0u, 31u)], 68688u);
    let var_2 = Struct_2(select(!vec4<bool>(any(vec2<bool>(false, false)), any(vec4<bool>(var_0.a, var_0.a, var_0.a, true)), !var_0.a, false && var_0.a), !select(!vec4<bool>(var_0.a, true, var_0.a, true), vec4<bool>(true, true, true, true), any(vec2<bool>(var_0.a, var_0.a))), true));
    let var_3 = 1491f;
    return global4[_wgslsmith_index_u32(max(abs(_wgslsmith_add_u32(~(4294967295u << (global4[_wgslsmith_index_u32(u_input.c.x, 31u)] % 32u)), countOneBits(u_input.e))), u_input.d.x), 31u)];
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    let var_0 = Struct_4(false);
    global0 = arg_0;
    let var_1 = ~vec2<u32>(~func_3(u_input.e), ~_wgslsmith_div_u32(19303u, 73455u));
    var var_2 = Struct_3(Struct_2(vec4<bool>(var_0.a, false, var_0.a, false)), vec3<bool>(true, true, var_0.a), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit((u_input.a & 121534u) & 1u), ~abs(35446u)), 28u)]);
    var var_3 = Struct_2(var_2.a.a);
    return ~global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(4294967295u >> (1u % 32u), countOneBits(global4[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(global4[_wgslsmith_index_u32(0u, 31u)]), 38871u), 31u)])), 31u)];
}

fn func_1(arg_0: Struct_3) -> bool {
    global0 = _wgslsmith_mod_vec3_i32(-_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_0.c.c, -1i, global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(u_input.a, 31u)], 31u)]), ~vec3<i32>(56120i, global0.x, -51225i)), vec3<i32>(-90863i, global0.x, global1[_wgslsmith_index_u32(1u, 31u)])), -vec3<i32>(_wgslsmith_add_i32(~(-44305i), 24661i), func_2(abs(vec3<i32>(1i, -2147483647i, arg_0.c.c))), ~(global0.x | 2147483647i)));
    let var_0 = Struct_3(arg_0.a, arg_0.b, Struct_1(firstLeadingBit(~_wgslsmith_clamp_i32(-2147483647i, arg_0.c.a, 1i)), abs(_wgslsmith_add_u32(_wgslsmith_div_u32(u_input.a, u_input.b), _wgslsmith_dot_vec3_u32(vec3<u32>(27809u, arg_0.c.b, 12887u), u_input.d.zyx))), ~global0.x, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(arg_0.c.d - arg_0.c.d))), ~_wgslsmith_dot_vec2_u32(~u_input.c.zy, vec2<u32>(40269u, 0u))));
    return global1[_wgslsmith_index_u32(73885u, 31u)] > ~1i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(select(vec4<bool>(_wgslsmith_div_i32(0i, global1[_wgslsmith_index_u32(u_input.a, 31u)]) <= _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, -67714i), global0.yz), true, global0.x != 1i, !func_1(Struct_3(Struct_2(vec4<bool>(true, false, true, false)), vec3<bool>(false, true, false), global3[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 31u)], 28u)]))), !vec4<bool>(select(false, false, true), true, true, false), max(global1[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 31u)], 31u)], 31u)] ^ global4[_wgslsmith_index_u32(5359u, 31u)], 31u)], -1i) < 10993i));
    var var_1 = func_3(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(60361u, 7839u, global4[_wgslsmith_index_u32(global4[_wgslsmith_index_u32(4294967295u, 31u)], 31u)]) << (_wgslsmith_dot_vec2_u32(u_input.d.yx, u_input.d.xx) % 32u), ~_wgslsmith_mod_u32(u_input.a, 66446u), ~_wgslsmith_add_u32(global4[_wgslsmith_index_u32(u_input.b, 31u)], u_input.d.x), 1u & func_3(74340u)), vec4<u32>(global4[_wgslsmith_index_u32(~34520u, 31u)] ^ select(67697u, 1u, var_0.a.x), abs(4294967295u), global4[_wgslsmith_index_u32(23570u, 31u)], ~min(42725u, 14189u))), 31u)]);
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1048f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -116f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -869f) * 1f));
    let var_3 = _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(min(global4[_wgslsmith_index_u32(58727u, 31u)], global4[_wgslsmith_index_u32(14612u, 31u)]), ~u_input.b), ~(~0u), ~min(u_input.c.x, 4294967295u)), 31u)], abs(-23264i), _wgslsmith_add_i32(_wgslsmith_mult_i32(_wgslsmith_mod_i32(global0.x, global0.x), max(2147483647i, 0i)), ~global0.x << (~u_input.d.x % 32u))), countOneBits(vec3<i32>(firstLeadingBit(0i), countOneBits(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(1u, 31u)], global0.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(22908i, -11835i, global0.x) ^ vec3<i32>(16755i, global0.x, -1i), -vec3<i32>(-9154i, -37488i, 38356i)))));
    global2 = any(select(var_0.a, var_0.a, vec4<bool>(select(!var_0.a.x, var_0.a.x, true), var_0.a.x, -1108f > _wgslsmith_f_op_f32(-var_2.x), true)));
    var var_4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-425f, 2148f, var_2.x) + vec3<f32>(214f, -2137f, var_2.x)) * vec3<f32>(1553f, -246f, -154f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1121f, var_2.x, 1152f) * vec3<f32>(var_2.x, 730f, var_2.x)) * vec3<f32>(-137f, var_2.x, var_2.x)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-348f, var_2.x, -849f))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(212f, var_2.x, var_2.x) - vec3<f32>(1505f, var_2.x, var_2.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(1f, 1f, 1f));
}

