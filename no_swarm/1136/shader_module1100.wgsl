struct Struct_1 {
    a: bool,
    b: bool,
    c: vec2<i32>,
    d: u32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: array<Struct_1, 20> = array<Struct_1, 20>(Struct_1(false, false, vec2<i32>(2147483647i, 2147483647i), 1u, vec3<bool>(true, false, true)), Struct_1(true, true, vec2<i32>(1i, 1i), 22902u, vec3<bool>(true, false, true)), Struct_1(true, false, vec2<i32>(i32(-2147483648), 9153i), 0u, vec3<bool>(false, true, true)), Struct_1(false, true, vec2<i32>(1i, 3961i), 1u, vec3<bool>(true, false, false)), Struct_1(false, true, vec2<i32>(0i, 0i), 4294967295u, vec3<bool>(true, true, true)), Struct_1(false, false, vec2<i32>(i32(-2147483648), 0i), 0u, vec3<bool>(true, false, false)), Struct_1(false, true, vec2<i32>(i32(-2147483648), -1i), 1u, vec3<bool>(true, false, true)), Struct_1(false, true, vec2<i32>(2147483647i, 2147483647i), 4294967295u, vec3<bool>(false, false, false)), Struct_1(true, false, vec2<i32>(-50521i, -39545i), 4294967295u, vec3<bool>(true, true, false)), Struct_1(true, false, vec2<i32>(-67224i, 1i), 25280u, vec3<bool>(true, true, false)), Struct_1(true, true, vec2<i32>(2147483647i, 2147483647i), 1u, vec3<bool>(true, true, true)), Struct_1(true, true, vec2<i32>(-24350i, 54495i), 4294967295u, vec3<bool>(true, true, false)), Struct_1(true, true, vec2<i32>(-1i, 14381i), 1u, vec3<bool>(false, true, true)), Struct_1(false, true, vec2<i32>(1i, -65922i), 2646u, vec3<bool>(false, false, false)), Struct_1(false, true, vec2<i32>(1i, 0i), 11837u, vec3<bool>(false, true, false)), Struct_1(false, true, vec2<i32>(0i, 55948i), 9296u, vec3<bool>(false, false, true)), Struct_1(false, true, vec2<i32>(-19628i, 32225i), 4294967295u, vec3<bool>(false, true, false)), Struct_1(false, true, vec2<i32>(-1i, 14981i), 0u, vec3<bool>(true, true, true)), Struct_1(true, true, vec2<i32>(18047i, 0i), 16446u, vec3<bool>(false, true, true)), Struct_1(true, true, vec2<i32>(1i, i32(-2147483648)), 4294967295u, vec3<bool>(true, true, false)));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: f32, arg_1: i32) -> vec2<bool> {
    let var_0 = global1[_wgslsmith_index_u32(~(~(~1u)), 20u)];
    global0 = true;
    let var_1 = -2147483647i;
    var var_2 = Struct_1(all(vec3<bool>(true, true, var_0.b)), (1u & countOneBits(_wgslsmith_mod_u32(var_0.d, var_0.d))) == (var_0.d | (var_0.d | 1u)), abs(max(_wgslsmith_add_vec2_i32(countOneBits(var_0.c), _wgslsmith_div_vec2_i32(vec2<i32>(0i, var_0.c.x), var_0.c)), var_0.c)), 71564u, var_0.e);
    global0 = true;
    return vec2<bool>(var_2.e.x, any(!var_0.e));
}

fn func_2() -> f32 {
    global0 = !any(func_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -589f) + -713f), ~firstLeadingBit(u_input.a.x)));
    let var_0 = ~26555u ^ ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 77546u, 0u), ~vec3<u32>(10869u, 4294967295u, 0u)));
    var var_1 = 1u;
    var var_2 = global1[_wgslsmith_index_u32(~(~13518u), 20u)];
    let var_3 = Struct_1(!(var_2.a || (var_0 == _wgslsmith_mult_u32(var_0, var_0))), true || var_2.b, -((var_2.c >> (vec2<u32>(1u, var_0) % vec2<u32>(32u))) >> (~vec2<u32>(4294967295u, var_0) % vec2<u32>(32u))) >> ((vec2<u32>(abs(0u), 0u) ^ abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(0u, 1u), vec2<u32>(0u, 28118u), vec2<u32>(var_2.d, 4294967295u)))) % vec2<u32>(32u)), min(~min(var_0 >> (var_2.d % 32u), var_0), 4294967295u), var_2.e);
    return _wgslsmith_f_op_f32(ceil(1000f));
}

fn func_1() -> bool {
    global1 = array<Struct_1, 20>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(947f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(round(-268f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1706f) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(-210f)))))) + vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-309f + 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(381f, 280f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(func_2())), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-962f + -1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(974f)))), _wgslsmith_f_op_f32(func_2()))), -128f));
    var var_1 = select(select(vec2<bool>(false, (u_input.a.x >= u_input.a.x) & (u_input.a.x > u_input.a.x)), vec2<bool>(true, true), vec2<bool>(any(vec2<bool>(true, true)), any(vec2<bool>(true, true)))), !select(vec2<bool>(true, false), vec2<bool>(true, true), !all(vec3<bool>(false, false, true))), !(!select(true, true, select(true, true, true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.x)), -323f) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-358f, 1901f) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(840f, var_0.x))))) + _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-363f, 341f)))));
    let var_3 = ~countOneBits(42487u);
    return all(!vec2<bool>(select(any(vec4<bool>(true, var_1.x, false, true)), true, any(vec3<bool>(var_1.x, var_1.x, var_1.x))), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(true, true, all(vec4<bool>(true, true, false, true)), func_1()), select(select(vec4<bool>(all(vec4<bool>(false, true, true, true)), u_input.a.x <= u_input.a.x, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(all(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false))), true, true, false || all(vec2<bool>(true, true))), !any(vec4<bool>(false, true, false, true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-703f, -1633f, false))) > _wgslsmith_f_op_f32(ceil(-635f)));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(-1000f, -1000f))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_div_f32(-851f, _wgslsmith_f_op_f32(-309f + -422f)), true))));
    let var_2 = global1[_wgslsmith_index_u32(0u, 20u)];
    global1 = array<Struct_1, 20>();
    let var_3 = var_1;
    global0 = func_1();
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.d, vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(~51815u, ~var_2.d), ~(vec2<u32>(1u, var_2.d) ^ vec2<u32>(var_2.d, 1u))), _wgslsmith_clamp_u32(~(var_2.d | var_2.d), abs(1u), ~var_2.d)));
}

