struct Struct_1 {
    a: f32,
    b: bool,
    c: vec4<u32>,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: Struct_3,
    c: vec2<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 4>;

var<private> global1: vec4<f32>;

var<private> global2: array<vec3<i32>, 25>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<bool>) -> u32 {
    global1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global1.x, _wgslsmith_div_f32(global1.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1952f), 2018f))), global1.x, _wgslsmith_f_op_f32(floor(global1.x)))));
    var var_0 = _wgslsmith_sub_i32(countOneBits(min(9431i, 2147483647i)), -1i);
    var var_1 = Struct_1(global1.x, arg_2.x, countOneBits(_wgslsmith_mod_vec4_u32(~vec4<u32>(21437u, arg_1, 4294967295u, 4294967295u) << (~vec4<u32>(9698u, 1u, 1u, 57212u) % vec4<u32>(32u)), ~(vec4<u32>(arg_1, 1u, arg_1, arg_0.x) & vec4<u32>(4294967295u, 1u, arg_1, arg_0.x)))), all(select(select(vec2<bool>(arg_2.x, arg_2.x), select(arg_2, arg_2, vec2<bool>(arg_2.x, arg_2.x)), false), !(!arg_2), arg_2.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, ~_wgslsmith_div_u32(arg_0.x, arg_1), u_input.b >> (u_input.b % 32u)), vec4<u32>(~arg_0.x, ~u_input.b, firstLeadingBit(_wgslsmith_div_u32(0u, arg_0.x)), 4294967295u)), 4u)]);
    global0 = array<vec2<i32>, 4>();
    var var_2 = _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(27919i, -(var_1.e.x & var_1.e.x), reverseBits(var_1.e.x)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, var_1.e.x & var_1.e.x, countOneBits(0i)), global2[_wgslsmith_index_u32(var_1.c.x, 25u)])), vec3<i32>(_wgslsmith_dot_vec4_i32(-vec4<i32>(0i, var_1.e.x, 1i, var_1.e.x), _wgslsmith_sub_vec4_i32(-vec4<i32>(var_1.e.x, 0i, -11498i, var_1.e.x), _wgslsmith_mult_vec4_i32(vec4<i32>(var_1.e.x, var_1.e.x, 2147483647i, 1i), vec4<i32>(var_1.e.x, -15222i, var_1.e.x, var_1.e.x)))), var_1.e.x, var_1.e.x));
    return 75849u;
}

fn func_4(arg_0: vec2<i32>, arg_1: vec2<i32>, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    return _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(f32(-1f) * -491f));
}

fn func_2(arg_0: i32, arg_1: vec2<u32>) -> u32 {
    var var_0 = -global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(31225u, ~u_input.a), 4u)];
    var_0 = -max(vec2<i32>(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.x, 36402i), global0[_wgslsmith_index_u32(arg_1.x, 4u)]), _wgslsmith_clamp_i32(var_0.x, arg_0, -1i)), -1i), vec2<i32>(2147483647i, -2147483647i >> ((1u << (u_input.b % 32u)) % 32u)));
    let var_1 = _wgslsmith_f_op_f32(func_4(vec2<i32>(-3418i ^ _wgslsmith_mult_i32(arg_0, 0i), ~(~(~2147483647i))), global0[_wgslsmith_index_u32(arg_1.x, 4u)], _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -1823f, 242f, 1382f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-810f, global1.x, -580f, global1.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, global1.x, -145f, 1357f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2048f, 492f, 629f, 852f) - vec4<f32>(global1.x, -358f, 487f, -688f)) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-877f, global1.x, global1.x, 414f)))), vec4<bool>(any(vec4<bool>(false, true, true, false)), false, var_0.x < var_0.x, true))))), Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * -1291f) * global1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_div_f32(950f, global1.x))), true, (reverseBits(vec4<u32>(0u, 6908u, u_input.a, 12110u)) | _wgslsmith_sub_vec4_u32(vec4<u32>(8715u, 0u, arg_1.x, u_input.b), vec4<u32>(u_input.b, arg_1.x, 0u, 4294967295u))) ^ vec4<u32>(_wgslsmith_mult_u32(33862u, u_input.a), func_3(vec3<u32>(arg_1.x, u_input.a, u_input.b), 1u, vec2<bool>(true, true)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 90689u, 48300u), vec3<u32>(0u, arg_1.x, 21161u)), arg_1.x), all(select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), true)), -vec2<i32>(-26610i, 50077i))));
    let var_2 = any(select(!select(vec2<bool>(true, false), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false)), true), !vec2<bool>(true, select(false, false, true)), true));
    let var_3 = !select(select(select(select(vec4<bool>(true, var_2, var_2, var_2), vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(var_2, var_2, var_2, var_2)), !vec4<bool>(false, var_2, true, var_2), select(vec4<bool>(false, var_2, false, var_2), vec4<bool>(false, var_2, var_2, var_2), vec4<bool>(var_2, var_2, var_2, var_2))), select(!vec4<bool>(true, var_2, false, true), vec4<bool>(var_2, false, var_2, false), select(var_2, false, false)), var_2), !select(select(vec4<bool>(true, true, var_2, var_2), vec4<bool>(var_2, var_2, true, true), var_2), vec4<bool>(var_2, true, var_2, var_2), true), ~_wgslsmith_div_i32(2147483647i, arg_0) < countOneBits(arg_0));
    return _wgslsmith_sub_u32(12494u, ~max(u_input.a, 129626u));
}

fn func_1(arg_0: Struct_4, arg_1: i32, arg_2: vec3<bool>) -> vec4<f32> {
    var var_0 = global1.x;
    var var_1 = Struct_2(Struct_1(-681f, !(-1191f < _wgslsmith_f_op_f32(global1.x + 456f)), ~vec4<u32>(func_2(arg_0.d.e.x, arg_0.b.b.a.c.yx), ~u_input.a, ~27976u, arg_0.d.c.x), !arg_0.b.b.a.b, _wgslsmith_sub_vec2_i32(vec2<i32>(arg_1, arg_0.c.x), ~arg_0.b.b.a.e)), 22425i);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-273f, var_1.a.a, global1.x, global1.x)) - vec4<f32>(_wgslsmith_f_op_f32(step(1363f, arg_0.b.b.a.a)), _wgslsmith_f_op_f32(select(-506f, global1.x, arg_0.b.b.a.b)), arg_0.b.b.a.a, arg_0.b.b.a.a)))) + vec4<f32>(_wgslsmith_f_op_f32(-var_1.a.a), _wgslsmith_f_op_f32(var_1.a.a - -138f), arg_0.b.b.a.a, _wgslsmith_f_op_f32(f32(-1f) * -626f)));
}

fn func_5(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: vec3<bool>, arg_3: vec3<i32>) -> Struct_4 {
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    var var_0 = vec3<bool>(all(select(vec4<bool>(true, !arg_2.x, select(arg_2.x, arg_2.x, arg_2.x), arg_2.x | arg_2.x), vec4<bool>(true, !arg_2.x, any(vec3<bool>(false, true, false)), true), _wgslsmith_clamp_i32(arg_0.x, arg_0.x, 1i) < arg_0.x)), arg_2.x, arg_2.x);
    global0 = array<vec2<i32>, 4>();
    return Struct_4(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_1.xzy), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global1.xzz), arg_1.xyx)), var_0.x)) + _wgslsmith_f_op_vec3_f32(-global1.zww)), Struct_3(arg_0.yx, Struct_2(Struct_1(_wgslsmith_div_f32(arg_1.x, global1.x), true, vec4<u32>(u_input.b, 1u, 43941u, u_input.a) << (vec4<u32>(1u, u_input.a, u_input.a, 1u) % vec4<u32>(32u)), false, vec2<i32>(arg_0.x, arg_0.x)), _wgslsmith_sub_i32(48333i >> (u_input.b % 32u), arg_3.x))), select(~(-global0[_wgslsmith_index_u32(95100u, 4u)] | arg_0.xy), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, arg_0.x >> (u_input.a % 32u)), -abs(vec2<i32>(arg_0.x, arg_3.x))), any(vec2<bool>(!var_0.x, arg_1.x <= -408f))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_4(vec3<f32>(1613f, 1824f, arg_1.x), Struct_3(arg_0.yz, Struct_2(Struct_1(-1093f, var_0.x, vec4<u32>(0u, 0u, 40645u, u_input.a), false, arg_3.xx), arg_0.x)), vec2<i32>(2147483647i, arg_3.x), Struct_1(arg_1.x, arg_2.x, vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.b), arg_2.x, vec2<i32>(3757i, 42531i))), 1i, vec3<bool>(true, true, var_0.x))).x)), arg_2.x, vec4<u32>(49160u, ~(~u_input.b), u_input.a, ~firstTrailingBit(u_input.b)), var_0.x, -abs(vec2<i32>(-2147483647i, -2147483647i))));
}

fn func_6(arg_0: Struct_4, arg_1: Struct_2, arg_2: Struct_4) -> Struct_3 {
    var var_0 = global1.x;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(func_4(~vec2<i32>(1i, -2147483647i), -abs(vec2<i32>(arg_2.c.x, 0i)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.x, -178f, 323f, -942f)), vec4<f32>(arg_1.a.a, arg_2.b.b.a.a, arg_0.d.a, -107f))), func_5(_wgslsmith_add_vec4_i32(vec4<i32>(11033i, -2147483647i, -10498i, 1i), vec4<i32>(arg_2.b.b.a.e.x, arg_1.b, arg_2.b.b.a.e.x, arg_1.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -661f, arg_2.b.b.a.a, arg_0.b.b.a.a), vec4<f32>(1726f, arg_2.b.b.a.a, arg_0.a.x, 523f))), select(vec3<bool>(false, true, arg_1.a.d), vec3<bool>(true, arg_1.a.b, false), true), vec3<i32>(46540i, 2385i, arg_0.d.e.x)).d))));
    global2 = array<vec3<i32>, 25>();
    global2 = array<vec3<i32>, 25>();
    let var_1 = Struct_3(firstTrailingBit(_wgslsmith_clamp_vec2_i32(func_5(vec4<i32>(arg_1.a.e.x, arg_2.d.e.x, arg_2.c.x, 21060i), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(878f, global1.x, -698f, arg_0.d.a), vec4<f32>(756f, arg_0.a.x, -1885f, global1.x))), select(vec3<bool>(arg_1.a.d, arg_0.d.d, true), vec3<bool>(arg_2.b.b.a.d, false, false), vec3<bool>(true, false, arg_1.a.b)), vec3<i32>(-70807i, arg_1.b, -36788i) << (arg_0.b.b.a.c.yxy % vec3<u32>(32u))).d.e, countOneBits(vec2<i32>(-56458i, arg_0.b.b.b)), vec2<i32>(max(arg_2.b.a.x, arg_0.c.x), arg_0.d.e.x << (arg_1.a.c.x % 32u)))), func_5(firstLeadingBit(vec4<i32>(arg_0.d.e.x, -1i, 0i, arg_2.d.e.x) ^ countOneBits(vec4<i32>(arg_1.b, -2147483647i, arg_0.d.e.x, arg_2.c.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(func_1(Struct_4(vec3<f32>(arg_2.d.a, global1.x, arg_0.b.b.a.a), Struct_3(vec2<i32>(1i, -17155i), arg_1), vec2<i32>(-2147483647i, arg_0.d.e.x), arg_1.a), -9076i, vec3<bool>(arg_1.a.d, false, false)))))), vec3<bool>(any(vec4<bool>(arg_1.a.d, arg_2.d.d, false, false)) != all(vec3<bool>(false, arg_2.d.b, false)), global1.x <= _wgslsmith_f_op_f32(round(arg_1.a.a)), all(!vec4<bool>(arg_2.b.b.a.d, false, arg_1.a.b, true))), ~(-_wgslsmith_mult_vec3_i32(global2[_wgslsmith_index_u32(146476u, 25u)], global2[_wgslsmith_index_u32(arg_0.d.c.x, 25u)]))).b.b);
    return func_5(~select(abs(vec4<i32>(3338i, 0i, var_1.b.b, arg_1.a.e.x)) | (vec4<i32>(arg_0.c.x, 2147483647i, var_1.a.x, 1i) | vec4<i32>(var_1.b.b, arg_1.a.e.x, var_1.a.x, -68130i)), ~vec4<i32>(arg_0.c.x, 2147483647i, -27820i, -12598i) << (_wgslsmith_div_vec4_u32(var_1.b.a.c, vec4<u32>(4294967295u, u_input.b, 48358u, 117113u)) % vec4<u32>(32u)), any(!vec4<bool>(true, var_1.b.a.d, arg_0.d.b, arg_2.b.b.a.b))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.d.a) - 344f), _wgslsmith_f_op_f32(select(arg_1.a.a, arg_0.a.x, !arg_0.b.b.a.b)), -247f, arg_2.d.a), !vec3<bool>(func_5(vec4<i32>(var_1.b.a.e.x, arg_0.b.a.x, 2147483647i, 0i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.b.b.a.a, -506f, arg_2.a.x, -964f)), select(vec3<bool>(true, var_1.b.a.d, var_1.b.a.b), vec3<bool>(arg_0.b.b.a.d, false, arg_1.a.b), arg_0.d.b), -vec3<i32>(arg_1.a.e.x, 0i, 23090i)).d.d, arg_0.d.b, var_1.b.a.d && false), -vec3<i32>(-reverseBits(-16123i), ~arg_0.b.a.x, reverseBits(_wgslsmith_div_i32(var_1.a.x, arg_2.c.x)))).b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(920f, global1.x, global1.x))))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(698f, global1.x, global1.x))))))) + global1.xxy);
    var var_1 = Struct_4(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global1.zyx * _wgslsmith_f_op_vec3_f32(-global1.yxy)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-519f, _wgslsmith_f_op_f32(-global1.x), var_0.x))), func_6(func_5(-vec4<i32>(-2147483647i, 0i, 1i, -1i) | (vec4<i32>(1i, -1i, -50478i, 0i) >> (vec4<u32>(u_input.a, 1u, u_input.a, 1u) % vec4<u32>(32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(161f, var_0.x, -1803f, var_0.x) + vec4<f32>(-162f, var_0.x, global1.x, var_0.x)) + _wgslsmith_f_op_vec4_f32(func_1(Struct_4(global1.xyy, Struct_3(vec2<i32>(-1i, 55851i), Struct_2(Struct_1(global1.x, false, vec4<u32>(u_input.b, 37133u, 93719u, 1u), false, vec2<i32>(55819i, -2147483647i)), -2147483647i)), vec2<i32>(-1208i, -14991i), Struct_1(var_0.x, true, vec4<u32>(u_input.a, u_input.b, 4294967295u, 0u), true, vec2<i32>(46600i, -2147483647i))), -20739i, vec3<bool>(true, false, true)))), vec3<bool>(true, any(vec2<bool>(true, true)), true), vec3<i32>(0i >> (u_input.b % 32u), select(2147483647i, -1i, false), -6978i)), Struct_2(Struct_1(1177f, true, ~vec4<u32>(u_input.b, 19247u, 38474u, u_input.a), false, -global0[_wgslsmith_index_u32(u_input.b, 4u)]), firstTrailingBit(_wgslsmith_dot_vec3_i32(global2[_wgslsmith_index_u32(4294967295u, 25u)], vec3<i32>(17921i, -13211i, -1i)))), func_5(~(-vec4<i32>(1i, 2147483647i, -19150i, 50236i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-745f, global1.x, 1274f, global1.x)))), vec3<bool>(true, true, true), ~(vec3<i32>(1i, 33848i, 2147483647i) & global2[_wgslsmith_index_u32(u_input.a, 25u)]))), vec2<i32>(~(-1i), max(_wgslsmith_add_i32(-4315i, _wgslsmith_mult_i32(-60830i, 31455i)), ~abs(2147483647i))), Struct_1(_wgslsmith_f_op_f32(floor(353f)), !func_5(~vec4<i32>(603i, 2147483647i, 1i, 2147483647i), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1254f, var_0.x, -783f)), vec3<bool>(true, false, true), countOneBits(vec3<i32>(-7597i, 20067i, 0i))).b.b.a.d, ~vec4<u32>(~28324u, u_input.a, u_input.b, 1u), false, vec2<i32>(-62339i, -38272i >> (_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, u_input.b, u_input.b), vec3<u32>(u_input.a, 4294967295u, 1u)) % 32u))));
    global1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_1.b.b.a.a, global1.x, -1000f) + vec4<f32>(-415f, global1.x, -1000f, -1077f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a.x, var_1.d.a, global1.x, global1.x))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.a.x, 712f, 240f, -1528f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1407f, 273f, global1.x, -1419f))))))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1741f, global1.x, var_0.x, 579f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1000f, -1761f, var_1.a.x, -443f), vec4<f32>(-1517f, -446f, -335f, global1.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-1508f * global1.x), -221f, 2011f, _wgslsmith_div_f32(var_0.x, 1003f))))));
    global0 = array<vec2<i32>, 4>();
    global0 = array<vec2<i32>, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(_wgslsmith_sub_u32(func_2(-1i & var_1.c.x, vec2<u32>(u_input.a, 71154u)), ~(~1u)), u_input.b), _wgslsmith_mult_i32(var_1.c.x, _wgslsmith_dot_vec3_i32(~(-vec3<i32>(var_1.d.e.x, var_1.d.e.x, var_1.b.b.a.e.x)), min(global2[_wgslsmith_index_u32(var_1.b.b.a.c.x, 25u)], vec3<i32>(var_1.d.e.x, 19905i, var_1.b.b.b)))), vec4<i32>(0i, 0i, ~(func_6(Struct_4(vec3<f32>(373f, var_1.a.x, 204f), Struct_3(vec2<i32>(var_1.b.b.a.e.x, var_1.b.a.x), Struct_2(Struct_1(var_0.x, var_1.b.b.a.d, vec4<u32>(1u, var_1.d.c.x, 68047u, 1u), false, var_1.d.e), var_1.c.x)), vec2<i32>(var_1.b.a.x, var_1.d.e.x), Struct_1(var_0.x, false, var_1.d.c, true, vec2<i32>(-1i, 28090i))), Struct_2(var_1.d, var_1.b.b.b), Struct_4(global1.xzz, Struct_3(vec2<i32>(1i, -3561i), var_1.b.b), vec2<i32>(-2147483647i, var_1.c.x), Struct_1(1962f, var_1.b.b.a.d, var_1.d.c, var_1.d.b, vec2<i32>(var_1.d.e.x, var_1.b.b.a.e.x)))).a.x >> (41313u % 32u)), var_1.c.x), -578f, -(~vec4<i32>(~(-2147483647i), -33989i >> (u_input.b % 32u), ~var_1.b.b.a.e.x, firstTrailingBit(5627i))));
}

