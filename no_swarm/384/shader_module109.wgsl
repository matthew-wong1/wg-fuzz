struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: f32,
    d: bool,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: vec3<bool> = vec3<bool>(true, false, true);

var<private> global1: array<i32, 30> = array<i32, 30>(35180i, -7158i, 0i, 0i, 1i, -54337i, 4370i, -37783i, 2147483647i, -6118i, i32(-2147483648), 2147483647i, -1i, 0i, -1i, -14940i, 50271i, 549i, 1077i, -28575i, i32(-2147483648), i32(-2147483648), 44526i, 6601i, 20777i, i32(-2147483648), 3675i, 2147483647i, i32(-2147483648), 38949i);

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: f32) -> vec2<u32> {
    let var_0 = vec2<u32>(countOneBits(48481u), 18237u);
    var var_1 = arg_1;
    let var_2 = abs(11851u) >> (_wgslsmith_add_u32(var_0.x, 0u) % 32u);
    var var_3 = _wgslsmith_f_op_f32(-arg_1.c);
    let var_4 = global1[_wgslsmith_index_u32(u_input.b, 30u)];
    return min(var_0, ((vec2<u32>(25350u, var_0.x) ^ vec2<u32>(1u, 64327u)) & ~var_0) << (~min(vec2<u32>(1u, 1u), var_0) % vec2<u32>(32u))) | vec2<u32>(u_input.b, 4294967295u);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-255f, -1248f, 849f, -751f) + _wgslsmith_div_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, -284f, arg_0.x), vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 365f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1024f, 231f, -585f, arg_0.x)))))))) - vec4<f32>(_wgslsmith_f_op_f32(arg_0.x - _wgslsmith_f_op_f32(f32(-1f) * -331f)), _wgslsmith_f_op_f32(abs(-278f)), arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x * arg_0.x))))));
    var var_1 = arg_1.a.x;
    var_1 = arg_1.a.x;
    let var_2 = ~reverseBits(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b, 45632u, 32943u) & select(vec3<u32>(u_input.b, 1u, u_input.b), vec3<u32>(u_input.b, 0u, u_input.b), arg_1.a), ~(~vec3<u32>(45811u, 50357u, u_input.b))));
    global0 = arg_1.a;
    return true;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: vec2<bool>) -> vec4<u32> {
    let var_0 = Struct_2(u_input.a, _wgslsmith_f_op_f32(-arg_1.x), 486f, any(vec4<bool>(false, global0.x, any(select(vec2<bool>(false, arg_2.x), arg_0.yx, global0.x)), !(!arg_2.x))), reverseBits((vec2<i32>(-1i) * -vec2<i32>(-33287i, -21498i)) << (max(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.b, u_input.b), vec2<u32>(u_input.b, 41809u)), func_2(Struct_2(u_input.a, arg_1.x, 1192f, true, vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 30u)], 1i)), Struct_2(-13004i, arg_1.x, arg_1.x, global0.x, vec2<i32>(global1[_wgslsmith_index_u32(u_input.b, 30u)], u_input.a)), arg_1.x)) % vec2<u32>(32u))));
    let var_1 = var_0;
    var var_2 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(235f, _wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(var_1.c, -843f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(arg_1.x)), _wgslsmith_f_op_f32(var_1.c + 1809f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-873f, -459f)) * _wgslsmith_f_op_f32(-arg_1.x)))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_1.xxz))));
    global1 = array<i32, 30>();
    let var_3 = func_3(_wgslsmith_f_op_vec2_f32(arg_1.yy - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c), _wgslsmith_f_op_f32(318f - -461f)))), Struct_1(vec3<bool>(any(select(vec3<bool>(global0.x, true, false), arg_0, arg_0)), any(!vec4<bool>(true, false, false, global0.x)), all(!global0.yx))));
    return vec4<u32>(u_input.b, 1u, ~(~firstLeadingBit(u_input.b << (20975u % 32u))), ~_wgslsmith_dot_vec2_u32(vec2<u32>(reverseBits(u_input.b), _wgslsmith_mod_u32(4294967295u, u_input.b)), ~(~vec2<u32>(29008u, u_input.b))));
}

fn func_4(arg_0: bool, arg_1: vec4<u32>) -> Struct_2 {
    var var_0 = Struct_2(-_wgslsmith_clamp_i32(-firstLeadingBit(u_input.a), _wgslsmith_div_i32(global1[_wgslsmith_index_u32(4294967295u, 30u)] & global1[_wgslsmith_index_u32(4294967295u, 30u)], ~(-20624i)), countOneBits(0i) | global1[_wgslsmith_index_u32(arg_1.x, 30u)]), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(-1260f)), -1221f))))), _wgslsmith_f_op_f32(f32(-1f) * -1613f), all(vec4<bool>(false, arg_0, global0.x, global1[_wgslsmith_index_u32(firstTrailingBit(u_input.b), 30u)] < (u_input.a & -97229i))), max(vec2<i32>(-(global1[_wgslsmith_index_u32(u_input.b, 30u)] >> (49557u % 32u)), 0i), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(global1[_wgslsmith_index_u32(1u, 30u)], u_input.a), vec2<i32>(-8259i, 8894i)), select(vec2<i32>(global1[_wgslsmith_index_u32(0u, 30u)], 1i), vec2<i32>(global1[_wgslsmith_index_u32(17078u, 30u)], 13684i), arg_0) & firstTrailingBit(vec2<i32>(-71628i, 39750i)))));
    var var_1 = true;
    var var_2 = all(vec3<bool>(true, global0.x, _wgslsmith_add_u32(select(arg_1.x, u_input.b, var_0.d), max(4294967295u, 23480u)) >= min(~64348u, ~u_input.b)));
    var_2 = any(!select(global0.yz, select(!vec2<bool>(arg_0, true), global0.xx, select(global0.zy, vec2<bool>(false, true), true)), global0.xy));
    let var_3 = Struct_1(vec3<bool>(-2147483647i != _wgslsmith_clamp_i32(-1i, var_0.e.x, select(2147483647i, var_0.a, false)), !arg_0, true));
    return Struct_2(_wgslsmith_dot_vec2_i32(max(select(var_0.e, -vec2<i32>(2147483647i, -1i), select(vec2<bool>(var_3.a.x, true), global0.zx, false)), ~(vec2<i32>(var_0.e.x, 2147483647i) | var_0.e)), reverseBits(var_0.e) | vec2<i32>(global1[_wgslsmith_index_u32(30488u, 30u)] & global1[_wgslsmith_index_u32(0u, 30u)], global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1.x, arg_1.x), arg_1.wz), 30u)])), var_0.c, var_0.b, !global0.x, vec2<i32>(19471i, min(u_input.a, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.e.x, u_input.a, 2147483647i, 0i), vec4<i32>(var_0.e.x, global1[_wgslsmith_index_u32(1u, 30u)], var_0.e.x, 19500i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -2730f;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1092f)))));
    var var_2 = func_4(true, func_1(select(vec3<bool>(true, true, false), select(!vec3<bool>(global0.x, true, global0.x), !vec3<bool>(false, global0.x, global0.x), select(vec3<bool>(true, global0.x, global0.x), vec3<bool>(true, true, global0.x), global0.x)), !select(vec3<bool>(global0.x, global0.x, false), vec3<bool>(global0.x, false, global0.x), global0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(var_1)), _wgslsmith_f_op_f32(var_1 + -329f), _wgslsmith_div_f32(var_1, var_0), _wgslsmith_f_op_f32(f32(-1f) * -217f)) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_0, var_1, var_1) * vec4<f32>(var_1, var_1, var_0, 1000f)))), global0.yx));
    var var_3 = Struct_1(!(!vec3<bool>(func_3(vec2<f32>(var_0, var_1), Struct_1(vec3<bool>(var_2.d, false, var_2.d))), !global0.x, var_2.d)));
    let var_4 = _wgslsmith_sub_u32(firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_div_u32(u_input.b, 107174u), u_input.b, 1u << (u_input.b % 32u)), ~vec3<u32>(37171u, u_input.b, 90533u) << (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.b, 53413u), vec3<u32>(23353u, 1u, 4294967295u)) % vec3<u32>(32u)))), 1u);
    var var_5 = 4294967295u;
    var var_6 = func_4(~min(_wgslsmith_div_u32(var_4, 1u), ~u_input.b) == _wgslsmith_sub_u32(var_4, _wgslsmith_dot_vec4_u32(vec4<u32>(var_4, var_4, var_4, 0u) | vec4<u32>(u_input.b, 0u, u_input.b, 48417u), vec4<u32>(var_4, 65679u, var_4, var_4))), countOneBits(vec4<u32>(~countOneBits(var_4), _wgslsmith_clamp_u32(~1u, 4294967295u, 27133u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.b, 0u), select(vec3<u32>(u_input.b, var_4, var_4), vec3<u32>(4294967295u, 4294967295u, 108082u), var_3.a)), 1u)));
    global1 = array<i32, 30>();
    global1 = array<i32, 30>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

