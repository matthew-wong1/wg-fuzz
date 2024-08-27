struct Struct_1 {
    a: bool,
    b: vec3<u32>,
    c: vec2<f32>,
    d: u32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: u32,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec3<f32>,
    c: vec3<u32>,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 6>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<f32>, arg_2: bool) -> vec3<f32> {
    global0 = array<u32, 6>();
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(1042f - _wgslsmith_f_op_f32(799f - arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + 1000f) * 701f), 976f);
    let var_1 = arg_0 ^ _wgslsmith_clamp_vec4_u32(~arg_0, _wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(firstLeadingBit(arg_0), arg_0), vec4<u32>(~arg_0.x, 4294967295u, u_input.c, 79704u)), (vec4<u32>(u_input.c, 4294967295u, 4294967295u, 50541u) & vec4<u32>(0u, global0[_wgslsmith_index_u32(23088u, 6u)], arg_0.x, global0[_wgslsmith_index_u32(u_input.c, 6u)])) & _wgslsmith_mod_vec4_u32(~arg_0, vec4<u32>(global0[_wgslsmith_index_u32(arg_0.x, 6u)], 1u, u_input.c, global0[_wgslsmith_index_u32(u_input.c, 6u)])));
    var var_2 = Struct_1(true, var_1.ywz, vec2<f32>(136f, var_0.x), ~abs(_wgslsmith_mult_u32(~u_input.c, ~arg_0.x)));
    var_2 = Struct_1(select(arg_2, arg_2, !(_wgslsmith_f_op_f32(max(134f, var_0.x)) != arg_1.x)), _wgslsmith_mod_vec3_u32(~(~(~arg_0.wwz)), ~(~arg_0.wyx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.c * _wgslsmith_f_op_vec2_f32(-var_2.c))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, arg_1.x))) * _wgslsmith_f_op_vec2_f32(sign(arg_1.yz))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -190f)))), var_2.d);
    return vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -974f) - 2329f)))), _wgslsmith_f_op_f32(floor(-603f)), 1073f);
}

fn func_4(arg_0: Struct_4, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = !select(vec2<bool>(true, true), select(!select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true)), select(select(vec2<bool>(true, false), vec2<bool>(false, false), true), select(vec2<bool>(false, false), vec2<bool>(false, true), false), true), any(vec2<bool>(false, false)) || any(vec4<bool>(true, true, true, false))), all(vec3<bool>(true, false, true)));
    global0 = array<u32, 6>();
    var var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1389f), _wgslsmith_f_op_f32(select(arg_1.b.x, _wgslsmith_f_op_f32(ceil(arg_1.b.x)), all(select(vec2<bool>(true, false), vec2<bool>(var_0.x, var_0.x), false)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(arg_1.b, arg_1.b)) - vec3<f32>(arg_1.b.x, arg_1.b.x, arg_1.b.x)))) - arg_1.b));
    return select(!vec4<bool>(var_0.x, any(select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(false, false, false), vec3<bool>(var_0.x, true, true))), any(vec4<bool>(var_0.x, var_0.x, false, var_0.x)), true), !vec4<bool>(var_0.x, all(vec2<bool>(false, true)), true || (var_0.x || true), !(57632u >= u_input.c)), all(!vec4<bool>(any(vec3<bool>(var_0.x, true, var_0.x)), false, arg_0.a > 11222i, false)));
}

fn func_2(arg_0: f32, arg_1: u32) -> vec3<f32> {
    let var_0 = func_4(Struct_4(~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 9923i) & u_input.a.zy, u_input.a.zz)), Struct_3(~(~(vec2<u32>(82113u, global0[_wgslsmith_index_u32(9066u, 6u)]) ^ vec2<u32>(u_input.c, global0[_wgslsmith_index_u32(13126u, 6u)]))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(vec4<u32>(arg_1, u_input.c, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(arg_1, 6u)], 6u)], 6u)], u_input.c), vec3<f32>(-1440f, -1979f, arg_0), false)), vec3<f32>(arg_0, arg_0, arg_0))), _wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, global0[_wgslsmith_index_u32(46581u, 6u)]), abs(vec3<u32>(global0[_wgslsmith_index_u32(u_input.c, 6u)], u_input.c, 0u))) ^ ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c, arg_1, 42578u), vec3<u32>(global0[_wgslsmith_index_u32(arg_1, 6u)], 0u, 18484u))));
    var var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(745f)), arg_0), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0, arg_0))), vec2<f32>(-132f, 2267f)))) + vec2<f32>(419f, _wgslsmith_div_f32(-764f, _wgslsmith_f_op_f32(arg_0 + arg_0)))), 1u, -_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.a.x, -29464i), vec2<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(0i, 0i), vec2<i32>(u_input.d.x, -2147483647i)), -u_input.d.x)), Struct_1(var_0.x, vec3<u32>(75124u, max(1u, ~u_input.c), _wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, 1u, global0[_wgslsmith_index_u32(u_input.c, 6u)], u_input.c), ~vec4<u32>(global0[_wgslsmith_index_u32(30291u, 6u)], 23986u, 121580u, global0[_wgslsmith_index_u32(14803u, 6u)]))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(807f, -1843f))), 80728u));
    var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(var_1.a, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(arg_0, 949f), vec2<f32>(var_1.d.c.x, 707f))), (2147483647i <= u_input.a.x) | all(vec4<bool>(var_1.d.a, var_1.d.a, true, false)))))), abs(~min(global0[_wgslsmith_index_u32(~var_1.d.b.x, 6u)], _wgslsmith_sub_u32(var_1.b, u_input.c))), -_wgslsmith_clamp_i32(firstTrailingBit(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_1.c, u_input.a.x, var_1.c), ~vec3<i32>(var_1.c, -1i, 1i)), u_input.b.x), var_1.d);
    global0 = array<u32, 6>();
    var var_2 = var_1.d;
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.c.x, arg_0, var_1.d.c.x) - vec3<f32>(var_1.a.x, var_1.d.c.x, 259f)), _wgslsmith_div_vec3_f32(vec3<f32>(188f, -1368f, -497f), vec3<f32>(var_1.a.x, var_2.c.x, var_1.a.x)), func_4(Struct_4(14129i), Struct_3(vec2<u32>(1u, 1963u), vec3<f32>(arg_0, var_2.c.x, arg_0), vec3<u32>(arg_1, var_2.b.x, 30715u))).x))))))));
}

fn func_5(arg_0: Struct_3, arg_1: i32, arg_2: vec4<bool>) -> Struct_1 {
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    let var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 331f)))) + _wgslsmith_f_op_vec2_f32(-arg_0.b.zx)), global0[_wgslsmith_index_u32(9307u, 6u)], _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(3757i, u_input.b.x, u_input.a.x) << (vec3<u32>(9382u, 39902u, 16523u) % vec3<u32>(32u)), u_input.b), vec3<i32>(-1i) * -firstTrailingBit(vec3<i32>(-7561i, arg_1, 14262i))), Struct_1(all(arg_2.wyw), _wgslsmith_sub_vec3_u32(vec3<u32>(abs(u_input.c), arg_0.a.x, max(4294967295u, 37777u)), arg_0.c), _wgslsmith_f_op_vec2_f32(arg_0.b.yz - arg_0.b.zz), _wgslsmith_div_u32(_wgslsmith_mod_u32(~28854u, _wgslsmith_mod_u32(arg_0.c.x, u_input.c)), 85111u >> (1u % 32u))));
    let var_1 = var_0.d;
    global0 = array<u32, 6>();
    return Struct_1(true, var_1.b, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), arg_0.b.x)), var_1.b.x);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global0 = array<u32, 6>();
    global0 = array<u32, 6>();
    var var_0 = func_5(Struct_3(~select(vec2<u32>(global0[_wgslsmith_index_u32(1u, 6u)], 15451u) << (vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 6u)], 6u)], global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(u_input.c, 6u)], 6u)]) % vec2<u32>(32u)), vec2<u32>(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(76798u, 6u)], 6u)], 24880u), vec2<bool>(false, arg_0)), _wgslsmith_f_op_vec3_f32(func_2(-1386f, 1u)), select(~(~vec3<u32>(0u, 6035u, 1509u)), vec3<u32>(_wgslsmith_div_u32(global0[_wgslsmith_index_u32(24093u, 6u)], global0[_wgslsmith_index_u32(61305u, 6u)]), 4999u, ~18035u), select(!vec3<bool>(arg_0, true, false), !vec3<bool>(false, true, arg_0), !vec3<bool>(false, arg_0, false)))), (u_input.d.x << ((global0[_wgslsmith_index_u32(~u_input.c, 6u)] | 0u) % 32u)) >> (~(~37773u | global0[_wgslsmith_index_u32(4294967295u, 6u)]) % 32u), select(select(select(!vec4<bool>(arg_0, true, arg_0, true), select(vec4<bool>(true, true, arg_0, arg_0), vec4<bool>(arg_0, false, true, arg_0), arg_0), vec4<bool>(arg_0, false, false, true)), vec4<bool>(true, true, true, true), true), !vec4<bool>(!arg_0, true, !arg_0, all(vec4<bool>(arg_0, true, true, arg_0))), -49478i <= _wgslsmith_div_i32(~2147483647i, ~u_input.d.x)));
    let var_1 = Struct_1(33330u != u_input.c, vec3<u32>(~(~70396u), 42598u, ~abs(global0[_wgslsmith_index_u32(78736u, 6u)])) >> (vec3<u32>(~2135u | firstLeadingBit(var_0.b.x), u_input.c, 69402u | (global0[_wgslsmith_index_u32(var_0.d, 6u)] & 1u)) % vec3<u32>(32u)), var_0.c, u_input.c);
    let var_2 = func_5(Struct_3(var_1.b.yx, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -124f), _wgslsmith_f_op_f32(min(var_1.c.x, 1000f)), -327f), ~_wgslsmith_div_vec3_u32(~var_1.b, ~var_0.b)), _wgslsmith_sub_i32(countOneBits(u_input.b.x), -1i), vec4<bool>(var_1.a, false, var_0.a, !(!select(true, var_0.a, true))));
    return Struct_2(vec2<f32>(_wgslsmith_f_op_f32(min(var_0.c.x, _wgslsmith_f_op_f32(floor(var_0.c.x)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(413f)), -255f, false))))), _wgslsmith_sub_u32(~(~1u), ~(_wgslsmith_mult_u32(1571u, var_0.b.x) ^ 46346u)), 2147483647i, func_5(Struct_3(~(~vec2<u32>(var_2.d, var_1.d)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1158f, var_0.c.x, -1044f))), max(var_0.b, select(var_2.b, vec3<u32>(u_input.c, 0u, 26914u), var_2.a))), _wgslsmith_dot_vec3_i32(abs(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, -14161i, u_input.b.x), u_input.a)), u_input.b), vec4<bool>(var_1.a, false, arg_0, any(vec2<bool>(var_1.a, var_2.a)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(!any(vec2<bool>(true, select(true, true, false))));
    let var_1 = abs(-2147483647i);
    var_0 = Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-var_0.d.c))), var_0.d.c)) - _wgslsmith_f_op_vec2_f32(exp2(var_0.d.c))), 1u, u_input.a.x, func_5(Struct_3(max(~var_0.d.b.yx, vec2<u32>(var_0.b, 1u)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1058f, 722f, var_0.a.x))), ~vec3<u32>(75392u, 1u, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)])), 16025i, func_4(Struct_4(-21164i), Struct_3(var_0.d.b.xz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d.c.x, var_0.a.x, 1096f)), func_1(var_0.d.a).d.b))));
    var var_2 = u_input.c;
    var var_3 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, ~(~(u_input.c >> (global0[_wgslsmith_index_u32(26073u, 6u)] % 32u))), global0[_wgslsmith_index_u32(func_1(any(func_4(Struct_4(var_1), Struct_3(var_0.d.b.yz, vec3<f32>(197f, 365f, -1605f), vec3<u32>(var_0.d.d, 39381u, 0u))).wx)).d.d, 6u)], var_0.b), firstLeadingBit(~vec4<u32>(~30939u, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c, 51433u, 26063u), var_0.d.b), firstTrailingBit(4294967295u), _wgslsmith_sub_u32(1u, var_0.d.d)))), 6u)];
    var_3 = (~23898u >> (var_0.d.d % 32u)) ^ _wgslsmith_dot_vec3_u32(var_0.d.b, var_0.d.b);
    let var_4 = var_0.d;
    let x = u_input.a;
    s_output = StorageBuffer((~vec4<u32>(0u, 1u, global0[_wgslsmith_index_u32(4294967295u, 6u)], 1u) << (vec4<u32>(countOneBits(var_4.b.x), _wgslsmith_dot_vec3_u32(vec3<u32>(var_4.b.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(0u, 6u)], 6u)], 50271u), vec3<u32>(4294967295u, u_input.c, var_4.d)), u_input.c, ~23817u) % vec4<u32>(32u))) << (~(vec4<u32>(70262u, 3288u, global0[_wgslsmith_index_u32(var_0.b, 6u)], var_4.b.x) | (vec4<u32>(4294967295u, 1u, u_input.c, 1u) << (vec4<u32>(0u, 4294967295u, var_0.d.d, var_0.d.d) % vec4<u32>(32u)))) % vec4<u32>(32u)), _wgslsmith_div_i32(var_0.c, var_1), vec2<u32>(4294967295u << (~var_4.b.x % 32u), global0[_wgslsmith_index_u32(func_1(var_4.a).d.b.x, 6u)]));
}

