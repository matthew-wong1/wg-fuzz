struct Struct_1 {
    a: vec2<u32>,
    b: f32,
    c: bool,
    d: vec3<bool>,
    e: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 17>;

var<private> global1: Struct_1;

var<private> global2: bool;

var<private> global3: u32 = 25389u;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
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

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_1) -> vec3<bool> {
    let var_0 = Struct_1(~firstTrailingBit(~min(vec2<u32>(22349u, global1.a.x), arg_2.a)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(727f - arg_2.b))) - arg_2.b), !(!arg_2.d.x), select(!global1.d, select(vec3<bool>(global1.d.x, false, false != arg_1.x), arg_2.d, arg_1), !select(true, arg_2.b <= global1.b, select(global1.c, false, true))), u_input.b);
    var var_1 = all(!select(!global1.d, vec3<bool>(false, false, arg_2.c || arg_1.x), false | var_0.d.x));
    global3 = ~0u;
    var var_2 = 1i;
    global1 = arg_2;
    return select(global1.d, arg_2.d, !select(vec3<bool>(true, true | var_0.d.x, arg_1.x || arg_2.d.x), !select(vec3<bool>(global1.d.x, arg_2.d.x, arg_2.d.x), vec3<bool>(global1.c, var_0.d.x, var_0.d.x), vec3<bool>(global1.c, true, global1.d.x)), vec3<bool>(all(vec4<bool>(arg_2.c, true, false, arg_2.c)), false, false)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<i32>) -> vec2<u32> {
    let var_0 = any(select(!vec4<bool>(arg_0.c, all(arg_0.d.zx), arg_0.d.x, arg_0.c), !(!select(vec4<bool>(global1.d.x, arg_0.c, global1.d.x, global1.d.x), vec4<bool>(global1.c, true, global1.d.x, arg_0.c), true)), true));
    let var_1 = arg_0;
    var var_2 = Struct_1(~_wgslsmith_div_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c.wy, max(vec2<u32>(var_1.a.x, 4294967295u), vec2<u32>(0u, 4294967295u))), ~(~vec2<u32>(global1.a.x, 6599u))), _wgslsmith_f_op_f32(arg_0.b + arg_0.b), (abs(0i) >= (i32(-1i) * -u_input.b)) | !all(func_3(4294967295u, global1.d, Struct_1(var_1.a, -962f, global1.d.x, vec3<bool>(global1.d.x, arg_0.c, var_1.d.x), 5678i))), global1.d, _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(global1.e, 0i) << (vec2<u32>(u_input.c.x, arg_0.a.x) % vec2<u32>(32u)), vec2<i32>(arg_0.e, arg_0.e)), _wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.x, arg_1.x), arg_1.zw)), arg_1.zz));
    let var_3 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(max(var_2.a.x, 73163u) >> (~52135u % 32u), 86360u), ~firstTrailingBit(u_input.c.xy >> (u_input.c.yz % vec2<u32>(32u)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1013f, _wgslsmith_f_op_f32(max(692f, 430f)), true)), var_1.b) - -2304f), true, !var_1.d, 1i);
    var var_4 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(900f, -1336f)) * _wgslsmith_f_op_vec2_f32(step(vec2<f32>(var_1.b, 338f), vec2<f32>(1000f, var_2.b))))) - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(308f, var_2.b))), vec2<f32>(_wgslsmith_div_f32(var_2.b, 788f), var_2.b))))));
    return _wgslsmith_mod_vec2_u32(reverseBits(arg_0.a), global1.a);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec4<f32>) -> vec2<f32> {
    var var_0 = Struct_1(~func_2(Struct_1(abs(global1.a), -458f, true, select(vec3<bool>(global1.c, true, false), vec3<bool>(true, true, global1.d.x), vec3<bool>(global1.d.x, global1.c, false)), -72283i), ~(~vec4<i32>(2147483647i, -8098i, 1i, u_input.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-663f, arg_0.x, !global1.d.x))), select(!(global1.c & (global1.c && false)), true, !global1.c), select(vec3<bool>(false, global1.d.x, true), func_3(firstTrailingBit(69250u), global1.d, Struct_1(vec2<u32>(global1.a.x, 0u), arg_1.x, !global1.c, global1.d, 2147483647i)), select(global1.c, global1.c, global1.e == 57733i) | (global1.c | all(vec2<bool>(true, global1.c)))), -2147483647i);
    let var_1 = select(vec4<bool>(any(select(func_3(86961u, vec3<bool>(true, false, global1.d.x), Struct_1(var_0.a, var_0.b, false, global1.d, var_0.e)), var_0.d, select(global1.d, vec3<bool>(true, true, global1.c), global1.d))), global1.d.x, select(!var_0.d.x, !global1.c, !global1.d.x) || all(var_0.d), global1.c), vec4<bool>(global1.d.x, !(!var_0.d.x), any(!(!global1.d)), global1.d.x), !select(!(!vec4<bool>(var_0.d.x, global1.c, var_0.c, global1.d.x)), !(!vec4<bool>(false, var_0.c, false, global1.d.x)), any(global1.d) != true));
    global0 = array<i32, 17>();
    global3 = global1.a.x;
    var var_2 = true;
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_0.zx), vec2<f32>(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + global1.b)) + _wgslsmith_f_op_f32(956f * var_0.b))));
}

fn func_4(arg_0: vec2<i32>, arg_1: vec4<u32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(abs(firstTrailingBit(global1.e)), 1i, -countOneBits(global1.e), -1i) ^ (vec4<i32>(u_input.a, -65130i, arg_0.x, 2147483647i >> (arg_1.x % 32u)) >> (vec4<u32>(~arg_1.x, _wgslsmith_mult_u32(global1.a.x, 999u), 0u, u_input.c.x) % vec4<u32>(32u))), vec4<i32>(-35696i, global1.e, _wgslsmith_clamp_i32(arg_0.x, -31786i, global1.e), ~0i));
    global2 = true;
    let var_1 = vec2<i32>(arg_0.x, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(-43131i, countOneBits(global0[_wgslsmith_index_u32(25595u, 17u)]), _wgslsmith_add_i32(-2147483647i, global1.e)), ~(-vec3<i32>(-3613i, -2147483647i, var_0)))));
    global1 = Struct_1(vec2<u32>(global1.a.x, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(global1.a.x, 1u), vec2<u32>(arg_1.x, 13804u)), 0u)), _wgslsmith_f_op_f32(select(arg_2.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(-375f, arg_2.x)), _wgslsmith_f_op_f32(-arg_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -237f))), any(vec2<bool>(global1.c, global1.c)))), all(vec4<bool>(all(vec4<bool>(global1.d.x, global1.d.x, false, false)), global1.d.x, true, false)), global1.d, reverseBits(i32(-1i) * -1i));
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32(select(_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, 52352u), global1.a), ~global1.a), abs(_wgslsmith_add_vec2_u32(vec2<u32>(arg_1.x, 1u), vec2<u32>(0u, 12925u))), global1.d.xy), arg_1.yw), arg_2.x, !(!all(select(vec4<bool>(global1.c, true, false, true), vec4<bool>(global1.c, global1.d.x, true, true), global1.d.x))), select(!func_3(global1.a.x, select(vec3<bool>(global1.c, true, true), vec3<bool>(false, false, global1.d.x), true), Struct_1(vec2<u32>(u_input.c.x, arg_1.x), -1695f, global1.d.x, vec3<bool>(global1.c, false, global1.c), -2147483647i)), !vec3<bool>(global1.c, any(global1.d.zy), func_3(arg_1.x, vec3<bool>(false, global1.c, true), Struct_1(vec2<u32>(4294967295u, 16390u), 246f, global1.d.x, vec3<bool>(true, false, global1.d.x), 2147483647i)).x), vec3<bool>(false, ~global1.a.x < _wgslsmith_mult_u32(1u, arg_1.x), false)), ~arg_0.x);
    return Struct_1(var_2.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_2.x))), true, !select(vec3<bool>(global1.d.x, 0u != global1.a.x, var_2.c), global1.d, var_2.d), _wgslsmith_mult_i32(var_1.x, max(var_2.e, firstLeadingBit(var_2.e)) >> (~select(0u, global1.a.x, false) % 32u)));
}

fn func_5(arg_0: Struct_1, arg_1: vec4<u32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(vec2<u32>(~(~(~global1.a.x)), global1.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(285f + _wgslsmith_f_op_f32(f32(-1f) * -153f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.b, arg_0.b, 1000f) + vec3<f32>(-949f, arg_2.b, arg_2.b)), vec4<f32>(234f, -205f, -1000f, 2360f))).x)), true, arg_0.d, -reverseBits(1i));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = !global1.c;
    let var_0 = u_input.c.x;
    global1 = func_5(func_4(~(vec2<i32>(1i, 1i) | countOneBits(vec2<i32>(u_input.a, u_input.b))), _wgslsmith_sub_vec4_u32(vec4<u32>(34856u << (global1.a.x % 32u), var_0, 102188u & u_input.c.x, 45535u), vec4<u32>(1u, _wgslsmith_sub_u32(4294967295u, 4294967295u), 1u, 1u >> (u_input.c.x % 32u))), _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_div_vec3_f32(vec3<f32>(-152f, 257f, global1.b), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(-208f, global1.b, 1156f), vec3<f32>(global1.b, global1.b, global1.b)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.b, -1359f, -1000f, -884f))) - vec4<f32>(2080f, -1000f, -402f, global1.b))))), u_input.c, func_4(vec2<i32>(u_input.b, reverseBits(1i)) ^ _wgslsmith_mult_vec2_i32(~vec2<i32>(1i, 1i), vec2<i32>(2147483647i, u_input.a) << (vec2<u32>(var_0, 37303u) % vec2<u32>(32u))), vec4<u32>(51486u, _wgslsmith_dot_vec3_u32(u_input.c.xzw, u_input.c.xxw), max(32496u, 19996u), ~1u) >> (vec4<u32>(countOneBits(1u), abs(48713u), global1.a.x, u_input.c.x) % vec4<u32>(32u)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(global1.b, -2024f), vec2<f32>(1000f, 1000f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(569f, global1.b)))))));
    let var_1 = func_5(Struct_1(u_input.c.zz, -771f, global1.d.x, vec3<bool>(func_5(Struct_1(vec2<u32>(u_input.c.x, 4294967295u), 614f, false, global1.d, global0[_wgslsmith_index_u32(u_input.c.x, 17u)]), u_input.c, func_5(Struct_1(vec2<u32>(u_input.c.x, u_input.c.x), 479f, global1.c, vec3<bool>(true, false, false), -40901i), vec4<u32>(4294967295u, global1.a.x, 51144u, u_input.c.x), Struct_1(vec2<u32>(22915u, var_0), global1.b, global1.c, global1.d, u_input.a))).c, true, true), ~func_4(firstTrailingBit(vec2<i32>(-50239i, -2147483647i)), countOneBits(u_input.c), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(global1.b, global1.b), vec2<f32>(global1.b, global1.b)))).e), ~(~_wgslsmith_mult_vec4_u32(u_input.c, vec4<u32>(global1.a.x, global1.a.x, global1.a.x, global1.a.x))), func_4(min(vec2<i32>(firstTrailingBit(-25255i), _wgslsmith_dot_vec4_i32(vec4<i32>(56035i, 2147483647i, -18136i, 1i), vec4<i32>(global0[_wgslsmith_index_u32(global1.a.x, 17u)], -2147483647i, global1.e, global0[_wgslsmith_index_u32(global1.a.x, 17u)]))), vec2<i32>(40357i, 12i)), vec4<u32>(~(~var_0), _wgslsmith_mod_u32(18301u, var_0), 1u, _wgslsmith_sub_u32(global1.a.x, func_2(Struct_1(global1.a, global1.b, global1.d.x, global1.d, -72380i), vec4<i32>(16084i, global0[_wgslsmith_index_u32(0u, 17u)], -2147483647i, 26247i)).x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(135f, global1.b), _wgslsmith_f_op_f32(global1.b - global1.b))))).d.yz;
    var var_2 = max(func_5(Struct_1(global1.a, global1.b, true, func_5(Struct_1(u_input.c.xy, -798f, var_1.x, vec3<bool>(var_1.x, var_1.x, true), global0[_wgslsmith_index_u32(4294967295u, 17u)]), u_input.c, Struct_1(u_input.c.xz, global1.b, var_1.x, global1.d, u_input.b)).d, -global0[_wgslsmith_index_u32(4294967295u << (u_input.c.x % 32u), 17u)]), vec4<u32>(~func_2(Struct_1(vec2<u32>(var_0, 4294967295u), global1.b, global1.d.x, global1.d, 38580i), vec4<i32>(global1.e, global1.e, -2147483647i, 30799i)).x, 4294967295u, max(u_input.c.x, 42568u), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(58061u, 4294967295u, 1u, 36551u), u_input.c), _wgslsmith_dot_vec3_u32(vec3<u32>(global1.a.x, u_input.c.x, var_0), u_input.c.xzw))), Struct_1(global1.a, _wgslsmith_f_op_vec2_f32(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(572f, 1837f, global1.b) * vec3<f32>(global1.b, global1.b, global1.b)), _wgslsmith_div_vec4_f32(vec4<f32>(-691f, global1.b, -1000f, global1.b), vec4<f32>(global1.b, global1.b, 1000f, 780f)))).x, !var_1.x | !global1.c, func_5(func_5(Struct_1(vec2<u32>(72200u, 67182u), 621f, false, vec3<bool>(global1.c, global1.c, global1.c), -2147483647i), u_input.c, Struct_1(vec2<u32>(u_input.c.x, 0u), -1642f, false, vec3<bool>(global1.d.x, true, var_1.x), global1.e)), vec4<u32>(u_input.c.x, 50767u, var_0, global1.a.x), Struct_1(global1.a, global1.b, global1.d.x, vec3<bool>(global1.d.x, false, true), u_input.a)).d, _wgslsmith_div_i32(u_input.a, _wgslsmith_div_i32(-1i, -2147483647i)))).a.x, abs(max(~(global1.a.x >> (u_input.c.x % 32u)), global1.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec4_i32(-firstTrailingBit(vec4<i32>(-1i, -11998i, -1i, 1i)), vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b, 59388i, 2147483647i), vec3<i32>(global1.e, 1i, -2147483647i)), global0[_wgslsmith_index_u32(var_0, 17u)], 2147483647i, (global1.e ^ u_input.a) | _wgslsmith_mod_i32(2147483647i, 20416i))));
}

