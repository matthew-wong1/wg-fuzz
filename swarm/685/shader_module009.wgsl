struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: vec2<f32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: i32,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 9>;

var<private> global1: array<Struct_4, 25>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3() -> f32 {
    global0 = array<f32, 9>();
    let var_0 = vec4<bool>(true, !(!all(vec4<bool>(true, true, false, true))), u_input.a.x <= abs(0u), (u_input.a.x | 49403u) >= 3737u);
    global1 = array<Struct_4, 25>();
    global0 = array<f32, 9>();
    var var_1 = reverseBits(select(u_input.a.x, u_input.a.x, var_0.x));
    return 1562f;
}

fn func_4(arg_0: Struct_1, arg_1: vec3<bool>) -> i32 {
    var var_0 = Struct_4(select(1u & u_input.a.x, firstLeadingBit(~_wgslsmith_div_u32(u_input.a.x, 101316u)), _wgslsmith_f_op_f32(-287f + global0[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x), 9u)]) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) * -1801f)));
    var var_1 = u_input.a.x;
    var_0 = Struct_4(reverseBits(select(~_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(var_0.a, var_0.a, 2896u, u_input.a.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 4294967295u), u_input.a.wz) | firstTrailingBit(26839u), arg_0.b)));
    let var_2 = ~_wgslsmith_dot_vec4_u32(~u_input.a, _wgslsmith_mod_vec4_u32(u_input.a, u_input.a << (vec4<u32>(34954u, var_0.a, 0u, var_0.a) % vec4<u32>(32u))) ^ ~vec4<u32>(0u, 7495u, var_0.a, u_input.a.x));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -829f), arg_0.c.x))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + 325f) - _wgslsmith_f_op_f32(select(546f, -1000f, false))), 240f)));
    return reverseBits(-1i << (var_2 % 32u));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_div_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), _wgslsmith_f_op_f32(abs(-303f)))), true & all(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1370f, global0[_wgslsmith_index_u32(41722u, 9u)]))), firstLeadingBit(~(~vec2<i32>(-1i, 15845i)))), !select(vec3<bool>(true, true, any(vec2<bool>(false, true))), vec3<bool>(true, true, true), select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, false)), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), false), true)));
    var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(1i >> (select(76542u & u_input.a.x, u_input.a.x, all(vec2<bool>(false, true))) % 32u), _wgslsmith_mult_i32(~(4020i << (u_input.a.x % 32u)), -672i), _wgslsmith_clamp_i32(1i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(-2147483647i, 0i, 64882i, -24977i)), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 2147483647i, -20335i, 9826i), vec4<i32>(0i, -1i, -3660i, 1i))), -47083i), 1i), ~(~vec4<i32>(-2147483647i, abs(12103i), firstLeadingBit(2147483647i), ~(-1i))));
    global1 = array<Struct_4, 25>();
    global1 = array<Struct_4, 25>();
    var var_1 = select(select(firstTrailingBit(vec2<i32>(1i, 1i)), abs(select(vec2<i32>(1i, 1i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-32096i, -2147483647i), vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(-40373i, 7902i)), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)))), select(false, select(true, false, false), true) || true), abs(vec2<i32>(~1i, func_4(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(65296u, 9u)]), false, vec2<f32>(global0[_wgslsmith_index_u32(3997u, 9u)], 1000f), vec2<i32>(5742i, -45920i)), select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true))))), true);
    return Struct_1(vec3<f32>(-453f, _wgslsmith_f_op_f32(floor(global0[_wgslsmith_index_u32(~_wgslsmith_mod_u32(u_input.a.x, 13416u), 9u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -922f)))), true, vec2<f32>(_wgslsmith_f_op_f32(1119f - _wgslsmith_f_op_f32(step(-238f, _wgslsmith_f_op_f32(-293f * 1000f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(80531u, 9u)], _wgslsmith_f_op_f32(f32(-1f) * -1726f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(-648f, -857f, true)), global0[_wgslsmith_index_u32(34095u, 9u)])))), _wgslsmith_div_vec2_i32(vec2<i32>(-28371i, -3495i) & _wgslsmith_sub_vec2_i32(vec2<i32>(var_1.x, 0i) >> (u_input.a.zw % vec2<u32>(32u)), vec2<i32>(var_1.x, var_1.x) << (u_input.a.xy % vec2<u32>(32u))), vec2<i32>(-1i, var_1.x)));
}

fn func_5(arg_0: Struct_2, arg_1: vec3<i32>) -> Struct_2 {
    let var_0 = ~_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(~vec4<i32>(arg_0.c, 4185i, 25154i, -5273i), arg_0.b), arg_0.b), -5570i ^ _wgslsmith_mult_i32(-arg_1.x, ~arg_0.a.d.x));
    var var_1 = arg_0.a;
    var_1 = func_2();
    global0 = array<f32, 9>();
    var var_2 = arg_0.a;
    return arg_0;
}

fn func_6(arg_0: vec2<f32>, arg_1: f32, arg_2: Struct_3, arg_3: Struct_2) -> Struct_4 {
    let var_0 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-arg_2.a.a.a), arg_2.a.a.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, arg_1) - _wgslsmith_div_vec2_f32(arg_2.a.a.a.zy, vec2<f32>(-1000f, -422f))), vec2<i32>(-10409i, countOneBits(arg_2.a.a.d.x))), arg_2.a.b, reverseBits(-arg_3.b.x | _wgslsmith_dot_vec2_i32(vec2<i32>(arg_2.a.c, arg_3.b.x), vec2<i32>(arg_2.a.c, 26694i)))));
    var var_1 = _wgslsmith_add_u32(19461u, ~min(u_input.a.x, u_input.a.x)) <= u_input.a.x;
    var var_2 = 12833i;
    var var_3 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -297f))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(336f + global0[_wgslsmith_index_u32(u_input.a.x, 9u)]))), _wgslsmith_f_op_f32(-arg_1), (u_input.a.x | u_input.a.x) < 1u)), _wgslsmith_div_f32(-374f, arg_3.a.c.x)), select(arg_2.a.a.b, select(true, select(false, any(vec2<bool>(true, var_0.a.a.b)), true), true), !var_0.a.a.b), arg_2.a.a.a.yx, var_0.a.a.d);
    global1 = array<Struct_4, 25>();
    return global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(u_input.a.x, 45500u)), u_input.a.x), u_input.a.wz), ~(~_wgslsmith_mod_vec2_u32(u_input.a.ww, u_input.a.xx >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))))), 25u)];
}

fn func_1() -> Struct_2 {
    global1 = array<Struct_4, 25>();
    global1 = array<Struct_4, 25>();
    global1 = array<Struct_4, 25>();
    let var_0 = func_6(vec2<f32>(global0[_wgslsmith_index_u32(countOneBits(~u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(26875u, 105468u, u_input.a.x), u_input.a.zwy)), 9u)], global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u & abs(u_input.a.x), _wgslsmith_div_u32(0u, 125864u) & abs(u_input.a.x), ~70566u), 9u)]), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(4294967295u, 9u)] * global0[_wgslsmith_index_u32(u_input.a.x, 9u)]) - _wgslsmith_f_op_f32(abs(1968f))), Struct_3(func_5(Struct_2(func_2(), _wgslsmith_clamp_vec4_i32(vec4<i32>(12236i, -6817i, 63984i, -2147483647i), vec4<i32>(0i, 24417i, -1i, 0i), vec4<i32>(-20520i, -19557i, 0i, 2147483647i)), 1i << (u_input.a.x % 32u)), -(~vec3<i32>(1i, 1288i, -2147483647i)))), func_5(func_5(func_5(func_5(Struct_2(Struct_1(vec3<f32>(-596f, global0[_wgslsmith_index_u32(0u, 9u)], 765f), false, vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), vec2<i32>(21540i, 2147483647i)), vec4<i32>(35544i, 1i, -2147483647i, 0i), -7426i), vec3<i32>(0i, -4978i, 65262i)), max(vec3<i32>(40605i, -10217i, 2147483647i), vec3<i32>(38554i, -2147483647i, 69001i))), vec3<i32>(1i, 1i, 1i)), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -70029i, 32438i), vec3<i32>(-2147483647i, 35227i, 2147483647i)), _wgslsmith_mod_i32(-17070i, ~22953i), ~(~(-2147483647i)))));
    let var_1 = select(firstTrailingBit(reverseBits(2147483647i)), _wgslsmith_dot_vec2_i32(func_2().d, _wgslsmith_sub_vec2_i32(vec2<i32>(2147483647i, -17060i) << (_wgslsmith_mod_vec2_u32(u_input.a.wy, vec2<u32>(var_0.a, var_0.a)) % vec2<u32>(32u)), -func_2().d)), func_4(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(var_0.a, 9u)], 1116f, global0[_wgslsmith_index_u32(u_input.a.x, 9u)]), true, _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0[_wgslsmith_index_u32(var_0.a, 9u)], -329f))), vec2<i32>(1i, 1i)), vec3<bool>(false, true, true)) > _wgslsmith_dot_vec3_i32(_wgslsmith_div_vec3_i32(-vec3<i32>(-1i, -1i, -1i), vec3<i32>(1i, 1i, 1i)), vec3<i32>(1i, 1i, 1i)));
    return Struct_2(func_5(func_5(Struct_2(func_5(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(22565u, 9u)], global0[_wgslsmith_index_u32(var_0.a, 9u)], global0[_wgslsmith_index_u32(var_0.a, 9u)]), true, vec2<f32>(-147f, global0[_wgslsmith_index_u32(4294967295u, 9u)]), vec2<i32>(-11380i, 1i)), vec4<i32>(0i, 0i, 58939i, 0i), 22649i), vec3<i32>(var_1, -2147483647i, 0i)).a, func_5(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], global0[_wgslsmith_index_u32(var_0.a, 9u)]), false, vec2<f32>(657f, 131f), vec2<i32>(var_1, var_1)), vec4<i32>(2924i, var_1, 36673i, var_1), -8031i), vec3<i32>(0i, -1i, 21931i)).b, var_1), vec3<i32>(var_1 << (var_0.a % 32u), func_5(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(var_0.a, 9u)], -889f, global0[_wgslsmith_index_u32(var_0.a, 9u)]), true, vec2<f32>(global0[_wgslsmith_index_u32(u_input.a.x, 9u)], -197f), vec2<i32>(var_1, 32494i)), vec4<i32>(var_1, var_1, -2147483647i, var_1), var_1), vec3<i32>(var_1, 35560i, -2147483647i)).c, _wgslsmith_clamp_i32(var_1, 13760i, var_1))), _wgslsmith_add_vec3_i32(vec3<i32>(~var_1, _wgslsmith_add_i32(-1i, var_1), 1i), -_wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, var_1, -820i), vec3<i32>(0i, var_1, var_1)))).a, _wgslsmith_mod_vec4_i32(~firstTrailingBit(func_5(Struct_2(Struct_1(vec3<f32>(global0[_wgslsmith_index_u32(1u, 9u)], global0[_wgslsmith_index_u32(u_input.a.x, 9u)], 1002f), true, vec2<f32>(1773f, global0[_wgslsmith_index_u32(var_0.a, 9u)]), vec2<i32>(53508i, var_1)), vec4<i32>(46884i, 13618i, -292i, 2147483647i), var_1), vec3<i32>(var_1, -23129i, var_1)).b), select(firstLeadingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1, 2147483647i, -12214i, 17320i), vec4<i32>(2147483647i, var_1, 12163i, 1i))), firstLeadingBit(vec4<i32>(var_1, var_1, -14233i, -34892i) | vec4<i32>(-2147483647i, 44048i, var_1, var_1)), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true))))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_4, 25>();
    global1 = array<Struct_4, 25>();
    var var_0 = Struct_3(func_1());
    let var_1 = global1[_wgslsmith_index_u32(~(~(max(~33774u, ~u_input.a.x) & _wgslsmith_div_u32(21989u, 44679u))), 25u)];
    global1 = array<Struct_4, 25>();
    let var_2 = func_1();
    let var_3 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(47629u, _wgslsmith_f_op_f32(-var_0.a.a.c.x));
}

