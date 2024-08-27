struct Struct_1 {
    a: f32,
    b: u32,
    c: bool,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: bool,
    b: vec2<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec4<i32>,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 13>;

var<private> global1: vec3<i32> = vec3<i32>(-9588i, -28499i, 25717i);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_1() -> Struct_5 {
    global0 = array<f32, 13>();
    global1 = u_input.a;
    let var_0 = _wgslsmith_mod_vec2_i32(global1.xy, select(vec2<i32>(countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 0i, -22433i, 108113i), vec4<i32>(0i, 1i, global1.x, u_input.a.x))), 0i), _wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(0i, u_input.c), _wgslsmith_div_vec2_i32(global1.yy, vec2<i32>(1i, 2147483647i))), vec2<i32>(~3089i, -1i)), true));
    global1 = vec3<i32>(-14192i, var_0.x, var_0.x);
    var var_1 = -select(41071i, i32(-1i) * -u_input.c, true);
    return Struct_5(-1i);
}

fn func_2(arg_0: Struct_5, arg_1: u32, arg_2: u32) -> f32 {
    global1 = abs(u_input.a);
    global1 = select(vec3<i32>(u_input.c << (arg_2 % 32u), -(~(-arg_0.a)), u_input.c), u_input.a, !(!(true | all(vec2<bool>(false, false)))));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(2304f)), -1364f)) - global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1, 4294967295u), ~(vec2<u32>(arg_1, arg_1) & u_input.b.yz)), 1u), 13u)]);
    var var_1 = vec2<bool>(any(vec2<bool>(1u > _wgslsmith_mult_u32(arg_1, u_input.b.x), true)), true);
    let var_2 = global1.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1, arg_1, arg_1), vec3<u32>(u_input.b.x, 4294967295u, 1u)), ~arg_1), 13u)]) * -1936f);
}

fn func_3() -> bool {
    var var_0 = true;
    var_0 = false;
    var_0 = any(select(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), true), vec3<bool>(true, true, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, u_input.b.x > u_input.b.x)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)));
    var var_1 = !vec3<bool>(!(any(vec3<bool>(true, false, false)) || true), true & (_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 13u)] - 613f) > _wgslsmith_f_op_f32(ceil(-342f))), any(select(vec2<bool>(true, true), vec2<bool>(true, true), true)));
    var var_2 = u_input.a.xz;
    return _wgslsmith_f_op_f32(round(-1133f)) <= _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(~u_input.b.x, 1u), 13u)]);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(func_2(func_1(), firstLeadingBit(~u_input.b.x), 15203u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(~4294967295u, 13u)] * global0[_wgslsmith_index_u32(u_input.b.x, 13u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1301f * global0[_wgslsmith_index_u32(91455u, 13u)])))));
    var var_1 = select(any(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), true), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, false, false), func_3(), false, true), vec4<bool>(true, -2152f <= var_0.x, false, true))), (all(vec2<bool>(true, true)) && true) | (_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(888f)) + _wgslsmith_f_op_f32(-var_0.x)) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(44251u, 13u)]), global0[_wgslsmith_index_u32(32131u, 13u)]))), true);
    let var_2 = u_input.b.yx;
    var_1 = all(vec4<bool>(false, true, false, any(select(vec2<bool>(true, true), vec2<bool>(true, false), all(vec3<bool>(true, false, true))))));
    let var_3 = var_2.x << (0u % 32u);
    global1 = vec3<i32>(u_input.c << (37270u % 32u), -select(~55775i | _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(-16487i, -2147483647i, global1.x)), global1.x, func_3()), firstTrailingBit(_wgslsmith_mult_i32(firstTrailingBit(global1.x), 2147483647i)));
    var var_4 = Struct_4(false, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-845f, -132f) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0, vec2<f32>(-528f, -1704f), vec2<bool>(false, true))) - _wgslsmith_f_op_vec2_f32(floor(var_0)))), all(vec4<bool>(true, true, true, true)) & true)));
    global1 = vec3<i32>(~abs(func_1().a), 0i, _wgslsmith_sub_i32(global1.x, ~1i));
    global1 = vec3<i32>(-52331i, u_input.a.x, ~(~firstTrailingBit(-u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(abs(var_4.b.x)), -2429f, _wgslsmith_f_op_f32(var_4.b.x - var_0.x), -1306f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1683f, _wgslsmith_f_op_f32(sign(-718f)), -942f, 345f))), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, -2147483647i) ^ countOneBits(vec4<i32>(global1.x, u_input.c, -2147483647i, u_input.a.x)), ~select(vec4<i32>(-28416i, u_input.c, u_input.c, u_input.a.x), vec4<i32>(u_input.c, 1i, global1.x, 37488i) >> (vec4<u32>(var_3, var_2.x, 49906u, u_input.b.x) % vec4<u32>(32u)), true)), vec4<i32>(-2147483647i, global1.x, select(u_input.c, global1.x, var_4.a), u_input.a.x));
}

