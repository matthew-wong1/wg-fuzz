struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<bool>,
    c: f32,
}

struct Struct_4 {
    a: vec3<u32>,
    b: bool,
    c: i32,
    d: vec3<u32>,
    e: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec3<i32>) -> bool {
    global0 = Struct_3(_wgslsmith_f_op_f32(step(1239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(473f)) * global0.c))) >= _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(-global0.c)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.c)) != 219f, any(select(select(vec2<bool>(global0.b.x, true), vec2<bool>(true, global0.a), global0.a), select(global0.b.yx, vec2<bool>(true, false), global0.b.yw), true)), select(i32(-1i) * -11357i, arg_2.x, true & global0.b.x) >= 18446i, global0.b.x), _wgslsmith_f_op_f32(-599f * _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(select(global0.c, global0.c, false))))));
    let var_0 = Struct_2(Struct_1(reverseBits(~countOneBits(u_input.b)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, 301f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1710f, -1960f)))), false), -2147483647i, Struct_1(-u_input.b, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.c, global0.c))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-244f, 1865f)) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.c, global0.c), vec2<f32>(global0.c, 176f)))), all(vec2<bool>(!global0.a, true))));
    global0 = Struct_3(any(select(!(!global0.b), global0.b, select(vec4<bool>(var_0.a.c, var_0.a.c, global0.b.x, global0.a), vec4<bool>(var_0.a.c, true, false, var_0.c.c), vec4<bool>(global0.b.x, false, global0.b.x, global0.b.x)))), vec4<bool>(!var_0.a.c, any(!vec4<bool>(true, global0.b.x, false, var_0.a.c)), global0.a, any(global0.b) | any(global0.b.yw)), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.c.b.x)) + _wgslsmith_f_op_f32(-var_0.c.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.c - -156f))))));
    var var_1 = firstLeadingBit(min(1u, select(2735u, 4294967295u, !(global0.a || true))));
    let var_2 = Struct_4(~select(vec3<u32>(~64349u, ~26247u, 1u), ~_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 20953u, 49521u), vec3<u32>(1u, 35724u, 46662u)), true), true, _wgslsmith_add_i32(~_wgslsmith_add_i32(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, 1i), vec2<i32>(39135i, var_0.a.a.x))), _wgslsmith_mod_i32(max(2147483647i, arg_0), u_input.a) ^ 0i), vec3<u32>(1u, 1u, 1u), ~vec4<u32>(0u, 4294967295u, max(1u, 96540u), 0u));
    return global0.b.x;
}

fn func_2(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    var var_0 = 1u;
    global0 = Struct_3(func_3(-u_input.a, _wgslsmith_mult_i32(firstTrailingBit(arg_1), arg_1 & 0i), select(u_input.b.yxy, ~reverseBits(vec3<i32>(-2147483647i, -39200i, 1i)), !(!arg_0.b.xxz))), vec4<bool>(arg_0.b.x, false, false, true), 196f);
    var var_1 = vec3<bool>(func_3(reverseBits(_wgslsmith_dot_vec2_i32(u_input.b.xw >> (vec2<u32>(4294967295u, 1u) % vec2<u32>(32u)), firstLeadingBit(u_input.b.zx))), -(~(-2147483647i)) ^ _wgslsmith_div_i32(u_input.b.x, -20599i), select(vec3<i32>(u_input.a, 2147483647i, u_input.b.x) << (countOneBits(vec3<u32>(76279u, 0u, 31796u)) % vec3<u32>(32u)), vec3<i32>(-arg_1, u_input.a & u_input.a, 91079i), global0.b.zwx)), select(true, !(u_input.a == arg_1), select(global0.b.x, !global0.a, global0.b.x)) == global0.a, _wgslsmith_f_op_f32(-global0.c) != global0.c);
    let var_2 = global0.a;
    var_0 = ~_wgslsmith_sub_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(2731u, 1u, 38889u, 38807u), vec4<u32>(14320u, 85998u, 4294967295u, 1u)), 4294967295u) & firstLeadingBit(~(~7192u));
    return Struct_3(firstTrailingBit(-arg_1) < u_input.a, !select(select(select(vec4<bool>(true, var_1.x, false, true), global0.b, vec4<bool>(global0.a, global0.a, var_1.x, global0.b.x)), !vec4<bool>(true, false, var_1.x, true), vec4<bool>(var_1.x, var_1.x, var_1.x, true)), select(!vec4<bool>(global0.b.x, arg_0.a, true, true), !arg_0.b, select(arg_0.b, global0.b, global0.b)), global0.b), global0.c);
}

fn func_1(arg_0: vec3<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> f32 {
    global0 = func_2(Struct_3(!global0.b.x, select(vec4<bool>(false, arg_0.x == -1000f, true, !global0.a), !global0.b, !(arg_0.x != 1831f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.x))))), _wgslsmith_clamp_i32(abs(u_input.b.x >> (4294967295u % 32u)) ^ ~13191i, _wgslsmith_clamp_i32(arg_3, _wgslsmith_clamp_i32(arg_3, arg_3, -2147483647i), arg_3) ^ (i32(-1i) * -arg_3), _wgslsmith_dot_vec4_i32(~vec4<i32>(0i, arg_1.x, u_input.b.x, arg_3), u_input.b) >> (0u % 32u)));
    global0 = Struct_3(false, func_2(Struct_3(!global0.a, vec4<bool>(func_3(29055i, u_input.b.x, u_input.b.xzy), global0.a, global0.a, true), _wgslsmith_f_op_f32(_wgslsmith_div_f32(641f, arg_0.x) - _wgslsmith_f_op_f32(1026f * global0.c))), abs(~(~(-17899i)))).b, -1105f);
    let var_0 = _wgslsmith_f_op_f32(-global0.c);
    var var_1 = _wgslsmith_clamp_i32(max(arg_3, u_input.b.x), u_input.b.x, u_input.a);
    let var_2 = Struct_3(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(~u_input.a, 1i, _wgslsmith_sub_i32(arg_3, u_input.b.x), arg_1.x), ~max(vec4<i32>(u_input.a, 11949i, u_input.a, 77543i), vec4<i32>(-46455i, 0i, arg_1.x, arg_3))), _wgslsmith_div_i32(-9091i, 2147483647i), _wgslsmith_mult_vec3_i32(abs(select(vec3<i32>(55350i, u_input.b.x, -13093i), u_input.b.ywz, global0.b.zzy)), _wgslsmith_add_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.b.xyx, vec3<i32>(65510i, arg_3, -2147483647i)), _wgslsmith_div_vec3_i32(u_input.b.xwz, vec3<i32>(u_input.a, u_input.b.x, -33271i))))), vec4<bool>(global0.b.x, all(!global0.b), global0.a, func_2(Struct_3(!global0.b.x, vec4<bool>(true, global0.b.x, global0.b.x, false), _wgslsmith_f_op_f32(-global0.c)), firstLeadingBit(_wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(arg_3, u_input.a, arg_3, u_input.b.x)))).b.x), var_0);
    return _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(193f + _wgslsmith_f_op_f32(-arg_0.x)))) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, -1620f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, vec4<bool>(global0.b.x || true, !(!any(global0.b)), true, true), -332f);
    let var_0 = global0.a;
    var var_1 = vec4<f32>(-123f, global0.c, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.c))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1803f, 643f, true))), _wgslsmith_f_op_f32(global0.c - _wgslsmith_f_op_f32(f32(-1f) * -686f)))), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.c, 1444f, global0.c) * vec3<f32>(global0.c, global0.c, 1277f))), u_input.b.xy, ~firstTrailingBit(1u), -23349i))));
    let var_2 = -1089f;
    global0 = Struct_3(global0.b.x, !vec4<bool>(global0.a | true, !(!global0.b.x), !(u_input.a <= u_input.a), true), 193f);
    let var_3 = true;
    var var_4 = _wgslsmith_div_vec4_i32(~select(vec4<i32>(-32509i, 1i, 46077i, reverseBits(u_input.a)), select(u_input.b, _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, -1i, -49952i), vec4<i32>(-12340i, u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(4918i, u_input.b.x, u_input.b.x, u_input.a)), true), u_input.b.x > 1i), select(select(vec4<i32>(-1i, ~(-2147483647i), countOneBits(u_input.b.x), -7944i), u_input.b, global0.b), vec4<i32>(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.a), u_input.b.wx), 0i, -(~(-2147483647i)), _wgslsmith_mod_i32(-21189i, -u_input.a)), !vec4<bool>(any(global0.b), global0.a, var_3, var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_sub_u32(1u, 1u << (0u % 32u)), 19599u, 0u) ^ 1u, select(var_4.x, -1881i, true), ~27806u);
}

