struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<u32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 27>;

var<private> global1: array<vec3<bool>, 8>;

var<private> global2: array<vec4<i32>, 18> = array<vec4<i32>, 18>(vec4<i32>(0i, -8041i, 2147483647i, 0i), vec4<i32>(42990i, 42705i, 5372i, -23867i), vec4<i32>(1i, 0i, -1i, 1i), vec4<i32>(-65147i, 2147483647i, 9961i, -25735i), vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), 0i), vec4<i32>(6656i, 36049i, 1i, -31511i), vec4<i32>(0i, 30232i, 19675i, i32(-2147483648)), vec4<i32>(i32(-2147483648), 2147483647i, 1i, -15154i), vec4<i32>(-52467i, -36976i, -1i, -27345i), vec4<i32>(-9219i, -49906i, 23172i, -30592i), vec4<i32>(-48134i, 11947i, 2147483647i, -8242i), vec4<i32>(1i, 1i, 3791i, 8799i), vec4<i32>(0i, 24877i, 2147483647i, 39085i), vec4<i32>(-49849i, -1i, 0i, -18606i), vec4<i32>(2147483647i, -1i, -76283i, i32(-2147483648)), vec4<i32>(57104i, 2147483647i, 2147483647i, -24543i), vec4<i32>(15218i, 73212i, -37272i, 49164i), vec4<i32>(-1i, 2147483647i, -81143i, 1i));

var<private> global3: array<Struct_5, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> bool {
    let var_0 = select(select(global1[_wgslsmith_index_u32(1u, 8u)], select(select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), true), true), !select(global1[_wgslsmith_index_u32(0u, 8u)], vec3<bool>(true, true, true), true), any(vec4<bool>(false, true, false, true))), global1[_wgslsmith_index_u32(1u, 8u)]), global1[_wgslsmith_index_u32(4294967295u, 8u)], all(vec2<bool>(true, true)));
    global2 = array<vec4<i32>, 18>();
    var var_1 = i32(-1i) * -(~_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.e.x, global0[_wgslsmith_index_u32(0u, 27u)], global0[_wgslsmith_index_u32(u_input.a, 27u)]), countOneBits(u_input.e)));
    global0 = array<i32, 27>();
    let var_2 = min(_wgslsmith_sub_vec2_u32(~u_input.b, vec2<u32>(u_input.c, _wgslsmith_sub_u32(4294967295u, u_input.a))), ~firstLeadingBit(_wgslsmith_mult_vec2_u32(u_input.b >> (arg_0.a % vec2<u32>(32u)), ~vec2<u32>(arg_0.a.x, 4294967295u))));
    return true;
}

fn func_2(arg_0: vec4<u32>) -> bool {
    global0 = array<i32, 27>();
    global3 = array<Struct_5, 10>();
    var var_0 = vec2<f32>(1021f, 724f);
    var var_1 = reverseBits(-(global0[_wgslsmith_index_u32(54277u, 27u)] ^ global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(arg_0.wwy & arg_0.xyx, vec3<u32>(5132u, u_input.a, 0u)), 27u)]));
    var var_2 = vec2<bool>(any(vec2<bool>(true, true)), !(!func_3(Struct_3(arg_0.wz, vec4<i32>(u_input.e.x, u_input.d, global0[_wgslsmith_index_u32(arg_0.x, 27u)], u_input.e.x)))));
    return true;
}

fn func_4(arg_0: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(-1239f * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.a.b))));
    var var_1 = arg_0;
    var var_2 = Struct_4(Struct_3(select(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.b.x, 70067u), vec2<u32>(4294967295u, u_input.c)) ^ ~vec2<u32>(1u, u_input.a), var_1.a.c.zy, func_2(var_1.a.c)), global2[_wgslsmith_index_u32(var_1.a.c.x, 18u)] ^ _wgslsmith_add_vec4_i32(reverseBits(global2[_wgslsmith_index_u32(u_input.c, 18u)]), ~vec4<i32>(-15502i, u_input.d, -1i, global0[_wgslsmith_index_u32(var_1.a.c.x, 27u)]))));
    var var_3 = ~(var_2.a.a.x ^ ~_wgslsmith_div_u32(arg_0.b.x, u_input.a));
    let var_4 = Struct_4(var_2.a);
    return var_4.a;
}

fn func_1() -> Struct_5 {
    global0 = array<i32, 27>();
    global1 = array<vec3<bool>, 8>();
    var var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -954f), _wgslsmith_f_op_f32(-362f - -2374f))), 1166f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1265f, _wgslsmith_f_op_f32(f32(-1f) * -908f))))), -1000f)));
    let var_1 = Struct_4(func_4(Struct_2(Struct_1(func_2(vec4<u32>(4294967295u, u_input.c, 0u, 4294967295u)), 1515f, _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, u_input.c), vec4<u32>(20953u, 32236u, u_input.a, 0u)), select(vec2<bool>(false, false), vec2<bool>(false, false), false)), u_input.b)));
    let var_2 = reverseBits(reverseBits(vec4<u32>(1u, firstLeadingBit(1u), _wgslsmith_dot_vec2_u32(var_1.a.a, u_input.b), 1u)) & vec4<u32>(u_input.a, firstLeadingBit(u_input.c), 88342u, 4294967295u));
    return Struct_5(var_1.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec3<bool>, 8>();
    let var_0 = -(~u_input.e.zy);
    let var_1 = func_1();
    global1 = array<vec3<bool>, 8>();
    var var_2 = ~vec4<u32>(abs(~(u_input.c | var_1.a)), 4294967295u, ~_wgslsmith_mod_u32(~u_input.a, var_1.a), 0u);
    global1 = array<vec3<bool>, 8>();
    global0 = array<i32, 27>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec3_u32(~var_2.zzz, var_2.yzz & var_2.xyw, var_2.xwy << (var_2.yzw % vec3<u32>(32u))), _wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(0u, 27u)] << (4294967295u % 32u), var_0.x)), vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(51022i, u_input.d, -18634i), u_input.e), vec3<i32>(3857i, 6573i, 0i)), _wgslsmith_dot_vec3_i32(-vec3<i32>(-27091i, 4333i, -35058i), -vec3<i32>(-1i, var_0.x, -11311i)), var_0.x)), ~(var_1.a >> (var_2.x % 32u)) & ~min(u_input.a, 0u));
}

