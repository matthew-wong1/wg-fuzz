struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: f32,
    d: vec2<u32>,
    e: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 4> = array<vec2<f32>, 4>(vec2<f32>(-919f, -411f), vec2<f32>(1713f, -761f), vec2<f32>(-108f, -302f), vec2<f32>(1458f, -488f));

var<private> global1: vec2<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: f32) -> f32 {
    var var_0 = select(!select(vec4<bool>(u_input.a.x == u_input.a.x, arg_1.a, true, !arg_1.b.c.x), !select(vec4<bool>(true, true, arg_1.a, arg_2.b.c.x), vec4<bool>(false, arg_1.a, arg_1.a, true), vec4<bool>(arg_2.a, arg_2.b.a, true, arg_2.b.a)), select(!vec4<bool>(false, arg_1.a, arg_1.a, false), vec4<bool>(arg_1.b.c.x, arg_2.a, arg_1.a, false), arg_1.a)), vec4<bool>(24774u != ~_wgslsmith_add_u32(u_input.a.x, 16065u), arg_1.a, arg_1.b.c.x, select(any(select(vec4<bool>(true, arg_1.b.a, arg_2.a, false), vec4<bool>(arg_2.b.a, false, false, true), vec4<bool>(arg_1.a, true, arg_2.a, arg_2.a))), (4294967295u >> (u_input.a.x % 32u)) == abs(0u), false)), select(select(!select(vec4<bool>(false, arg_2.b.c.x, true, arg_1.a), vec4<bool>(true, true, false, arg_1.b.c.x), vec4<bool>(true, true, true, true)), select(vec4<bool>(arg_2.b.c.x, arg_2.b.c.x, arg_1.b.c.x, arg_1.a), !vec4<bool>(arg_2.a, arg_1.b.c.x, false, false), arg_1.b.a), select(!vec4<bool>(arg_2.a, true, false, arg_1.a), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, arg_1.b.c.x), arg_1.b.a), true)), !(!select(vec4<bool>(true, true, arg_1.b.a, false), vec4<bool>(arg_1.a, arg_2.a, arg_1.a, true), arg_1.a)), true));
    var var_1 = ~1u;
    let var_2 = arg_1.b.b;
    let var_3 = !arg_1.b.c.yz;
    let var_4 = true;
    return arg_1.c.x;
}

fn func_2() -> vec2<f32> {
    global0 = array<vec2<f32>, 4>();
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-580f, 380f))), _wgslsmith_f_op_f32(func_3(-vec2<i32>(-4778i, -2147483647i), Struct_3(false, Struct_1(false, -6624i, vec3<bool>(false, false, true)), global0[_wgslsmith_index_u32(1u, 4u)]), Struct_3(false, Struct_1(true, 2147483647i, vec3<bool>(true, false, false)), vec2<f32>(-1000f, 832f)), global1.x))))));
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    global1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(335f - global1.x), _wgslsmith_f_op_f32(f32(-1f) * -1269f))), global0[_wgslsmith_index_u32(1u, 4u)]), _wgslsmith_f_op_vec2_f32(func_2()));
    var var_0 = vec3<f32>(-297f, global1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.c)));
    var var_1 = u_input.a.x;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(815f + 905f) - global1.x));
    let var_3 = u_input.a.xyx;
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(0u, 4u)]), _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(countOneBits(firstLeadingBit(1u)), 4u)] + _wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(func_1(true, 19181i, vec3<bool>(true, true, false), Struct_2(Struct_1(true, -2147483647i, vec3<bool>(false, true, true)), Struct_1(true, -17000i, vec3<bool>(true, true, false)), 1202f, u_input.a.yw, Struct_1(false, 28115i, vec3<bool>(false, true, false)))), 4u)] + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, 489f))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(2062f, _wgslsmith_f_op_f32(ceil(global1.x))) - _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(u_input.a.x, 4u)])))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(767f, 524f))))), global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(23482u, u_input.a.x), 4u)])));
    global1 = global0[_wgslsmith_index_u32(33632u, 4u)];
    let var_0 = Struct_1(all(vec3<bool>(true, true, global1.x != _wgslsmith_f_op_f32(-global1.x))), -35965i, select(vec3<bool>(true, true, true), vec3<bool>(true, true & any(vec4<bool>(true, true, true, false)), select(true, all(vec4<bool>(false, false, false, true)), false)), !select(vec3<bool>(true, false, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, true), true), true)));
    var var_1 = u_input.a.x ^ _wgslsmith_sub_u32(~(59050u << (u_input.a.x % 32u)) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.a, u_input.a, u_input.a), abs(u_input.a)), ~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.a.x, 1u), u_input.a.xww) << (_wgslsmith_mod_u32(0u, _wgslsmith_div_u32(u_input.a.x, u_input.a.x)) % 32u));
    var var_2 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mult_u32(u_input.a.x, ~(~1u)), vec2<u32>(~u_input.a.x, u_input.a.x), select(select(_wgslsmith_add_i32(0i, var_0.b), var_0.b, select(all(vec3<bool>(var_0.a, var_0.a, false)), var_2.a, var_0.a && var_2.a)), ~(~var_2.b), any(!var_2.c.yx)), ~_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.a.x, u_input.a.x, 42713u, 66486u), _wgslsmith_mod_vec4_u32(u_input.a, u_input.a)));
}

