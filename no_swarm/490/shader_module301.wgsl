struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1>;

var<private> global1: u32 = 16124u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: Struct_1, arg_3: Struct_2) -> bool {
    let var_0 = select(true, true, !(!all(vec4<bool>(false, false, true, false)))) || all(vec3<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))), any(vec2<bool>(true, false)), any(select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true))));
    let var_1 = !select(select(!(!vec3<bool>(var_0, false, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(var_0, false, var_0), var_0), select(vec3<bool>(true, var_0, false), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true))), !vec3<bool>(any(vec4<bool>(false, var_0, true, true)), true, any(vec4<bool>(false, var_0, var_0, true))), select(select(select(vec3<bool>(var_0, true, false), vec3<bool>(true, false, var_0), vec3<bool>(var_0, var_0, var_0)), select(vec3<bool>(false, true, var_0), vec3<bool>(var_0, var_0, true), var_0), select(vec3<bool>(var_0, false, var_0), vec3<bool>(var_0, true, true), vec3<bool>(var_0, var_0, var_0))), select(!vec3<bool>(true, var_0, false), vec3<bool>(true, var_0, true), true), arg_3.a < select(0u, 0u, var_0)));
    let var_2 = vec4<i32>(-2147483647i, 7152i, arg_0, max(~abs(0i), arg_2.a));
    let var_3 = Struct_2(~u_input.a);
    global0 = array<vec4<f32>, 1>();
    return false;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = !vec3<bool>(u_input.a >= ~_wgslsmith_mult_u32(40771u, 15191u), func_3(_wgslsmith_add_i32(arg_0, 0i) & 1i, _wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(u_input.a, u_input.a)), u_input.a), Struct_1(arg_0), Struct_2(_wgslsmith_mod_u32(u_input.a, u_input.a))), (arg_0 <= ~19315i) || all(vec2<bool>(true, true)));
    global1 = 1u;
    var var_1 = -1i;
    var_0 = select(!(!select(!vec3<bool>(var_0.x, true, false), vec3<bool>(var_0.x, true, true), arg_0 < 12074i)), select(select(select(vec3<bool>(var_0.x, false, false), vec3<bool>(true, var_0.x, var_0.x), !vec3<bool>(false, var_0.x, var_0.x)), select(vec3<bool>(false, var_0.x, var_0.x), select(vec3<bool>(var_0.x, false, true), vec3<bool>(var_0.x, false, false), vec3<bool>(false, var_0.x, false)), var_0.x), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, true, true), vec3<bool>(false, true, var_0.x))), vec3<bool>(true, _wgslsmith_dot_vec4_i32(vec4<i32>(20136i, 51479i, -2147483647i, -7804i), vec4<i32>(-22220i, arg_0, -59382i, -14954i)) > 0i, var_0.x), !(false | var_0.x) && all(select(vec3<bool>(true, var_0.x, false), vec3<bool>(true, var_0.x, true), true))), all(vec4<bool>(var_0.x & true, var_0.x, any(vec2<bool>(false, true)), true)) || true);
    let var_2 = Struct_1(-(i32(-1i) * -(~24162i)));
    return Struct_1(25098i);
}

fn func_4(arg_0: Struct_1) -> u32 {
    var var_0 = ~vec3<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a, 1u), abs(vec2<u32>(4294967295u, 1u))), ~(u_input.a ^ u_input.a), ~reverseBits(1u) ^ u_input.a);
    var_0 = ~vec3<u32>(u_input.a, ~20000u, countOneBits(_wgslsmith_clamp_u32(max(var_0.x, var_0.x), ~u_input.a, u_input.a)));
    return 0u;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(func_4(func_2(-1i)), max(120936u, u_input.a | 0u), _wgslsmith_clamp_u32(max(30067u, 1u), ~131709u, ~u_input.a)), 45889u));
    let var_1 = func_2(22981i);
    let var_2 = Struct_2(4294967295u);
    var_0 = var_2;
    var var_3 = var_2;
    return func_2(-35963i);
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    global1 = ~(~u_input.a);
    var var_0 = select(vec4<bool>(true, false, !(-arg_0.a > ~(-2147483647i)), false), !(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true))), select(select(select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, false, all(vec4<bool>(false, false, false, true))), any(vec3<bool>(true, true, true))), vec4<bool>(all(vec2<bool>(true, false)) && all(vec3<bool>(false, true, false)), any(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), false, true), true));
    let var_1 = Struct_1(_wgslsmith_div_i32(firstLeadingBit(arg_0.a), arg_0.a));
    var var_2 = firstLeadingBit(31432u);
    let var_3 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(sign(-1539f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(750f, -519f)) - _wgslsmith_f_op_f32(floor(327f)))), -141f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1498f)))) - vec4<f32>(1316f, 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(939f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -720f)) - _wgslsmith_f_op_f32(sign(-1000f)))));
    return Struct_2(58857u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1());
    var var_1 = func_2(func_1().a);
    var var_2 = Struct_1(var_1.a);
    global0 = array<vec4<f32>, 1>();
    var var_3 = Struct_1(max(~reverseBits(49990i), _wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, 22344i, -2147483647i), vec3<i32>(var_1.a, 20186i, var_1.a))), vec3<i32>(-1i) * -vec3<i32>(var_2.a, -18911i, var_2.a))));
    let var_4 = func_2(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-28833i, -46935i, var_3.a) | reverseBits(vec3<i32>(var_3.a, 0i, var_2.a)), select(vec3<i32>(-1i, var_3.a, -1835i), vec3<i32>(var_1.a, var_1.a, 1i), false) ^ ~vec3<i32>(var_2.a, 4082i, var_3.a)));
    let var_5 = vec4<i32>(2147483647i, 2147483647i, var_4.a, _wgslsmith_add_i32(-32078i, 32384i));
    var var_6 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(874f, 2522f) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-878f, -808f)))) + _wgslsmith_div_vec2_f32(vec2<f32>(-1498f, -615f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-401f, 323f))))));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(_wgslsmith_mod_u32(var_0.a, ~45213u), u_input.a));
}

