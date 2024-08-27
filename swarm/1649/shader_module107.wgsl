struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec3<i32>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: vec4<f32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: vec2<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, false, true, false, true, true, false, false, false, true, false, false, false, true, true, false, false, false, true);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-1604f, arg_2.d))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(647f, arg_3.b), vec2<f32>(103f, -1472f))) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_3.b, arg_2.b)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-726f, -1000f)))))));
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.b * _wgslsmith_f_op_f32(-arg_2.b)) - _wgslsmith_f_op_f32(-var_0.x));
    return _wgslsmith_mult_u32(~_wgslsmith_add_u32(_wgslsmith_mod_u32(~1u, 1u), _wgslsmith_dot_vec3_u32(vec3<u32>(33872u, 43195u, 1u), ~vec3<u32>(10319u, 29918u, 4294967295u))), abs(~1u << (_wgslsmith_div_u32(select(47643u, 33821u, false), 1u) % 32u)));
}

fn func_2() -> u32 {
    let var_0 = ~vec4<u32>(~(~(~24642u)), 14910u, func_3(false, Struct_2(Struct_1(u_input.a, 1000f, u_input.a.xxw, 154f, true), vec2<i32>(u_input.a.x, -70045i)), Struct_1(u_input.a, 681f, u_input.a.xxy, 439f, true), Struct_1(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), 1366f, u_input.a.xwz, -1000f, global0[_wgslsmith_index_u32(0u, 20u)])) >> (81990u % 32u), 1u);
    let var_1 = true;
    let var_2 = abs(_wgslsmith_mod_vec4_u32(~vec4<u32>(min(1u, 1u), _wgslsmith_mod_u32(var_0.x, 4294967295u), 37642u, var_0.x), select(var_0, var_0, 4909i == firstTrailingBit(u_input.a.x))));
    let var_3 = 44882u;
    let var_4 = Struct_4(var_0.x);
    return reverseBits(4294967295u);
}

fn func_1(arg_0: vec3<i32>) -> vec2<u32> {
    var var_0 = Struct_4(func_2() << (countOneBits(1u) % 32u));
    let var_1 = global0[_wgslsmith_index_u32(67017u, 20u)];
    var var_2 = Struct_2(Struct_1(vec4<i32>(_wgslsmith_mult_i32(30367i, _wgslsmith_sub_i32(u_input.a.x, 16704i)), u_input.a.x, ~countOneBits(16195i), _wgslsmith_mult_i32(i32(-1i) * -2147483647i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1451f, _wgslsmith_f_op_f32(sign(-478f)), global0[_wgslsmith_index_u32(_wgslsmith_mod_u32(4146u, var_0.a), 20u)]))), vec3<i32>(u_input.a.x, 1i, _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 28023i, u_input.a.x, arg_0.x), ~u_input.a)), -888f, any(!vec2<bool>(global0[_wgslsmith_index_u32(var_0.a, 20u)], false))), arg_0.xx);
    let var_3 = false & all(select(select(!vec4<bool>(true, var_2.a.e, true, false), !vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], true, global0[_wgslsmith_index_u32(var_0.a, 20u)], var_2.a.e), select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(var_0.a, 20u)], true, var_2.a.e), vec4<bool>(var_2.a.e, true, var_2.a.e, true), false)), select(select(vec4<bool>(var_2.a.e, false, global0[_wgslsmith_index_u32(8764u, 20u)], var_2.a.e), vec4<bool>(global0[_wgslsmith_index_u32(var_0.a, 20u)], true, true, var_2.a.e), vec4<bool>(var_2.a.e, global0[_wgslsmith_index_u32(50094u, 20u)], true, true)), !vec4<bool>(var_2.a.e, false, var_2.a.e, false), var_2.a.e), true));
    let var_4 = -firstTrailingBit(vec2<i32>(arg_0.x, -_wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(0i, -1i, 1i, 1i))));
    return _wgslsmith_sub_vec2_u32(reverseBits(abs(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_0.a, 31397u), vec2<u32>(4294967295u, var_0.a), vec2<u32>(var_0.a, 0u)))) << ((vec2<u32>(func_2(), _wgslsmith_mod_u32(var_0.a, 4294967295u)) >> (_wgslsmith_add_vec2_u32(vec2<u32>(14191u, var_0.a) << (vec2<u32>(1u, 4047u) % vec2<u32>(32u)), ~vec2<u32>(47754u, var_0.a)) % vec2<u32>(32u))) % vec2<u32>(32u)), abs(vec2<u32>(~28021u, max(1u, _wgslsmith_mult_u32(81814u, 48326u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(-219f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -187f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(415f + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(364f * 652f))))));
    global0 = array<bool, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1065f, var_0.x, 1324f) + vec3<f32>(var_0.x, -335f, -342f)), vec3<f32>(-337f, var_0.x, _wgslsmith_f_op_f32(var_0.x * var_0.x))) - _wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(715f, -585f, var_0.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, -388f, -772f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-640f, -598f, 193f)))))));
    var var_2 = !global0[_wgslsmith_index_u32(0u, 20u)];
    global0 = array<bool, 20>();
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.wz, -562f, 2026i & ~_wgslsmith_div_i32(select(53566i, u_input.a.x, global0[_wgslsmith_index_u32(1u, 20u)]), _wgslsmith_dot_vec2_i32(u_input.a.xw, vec2<i32>(-1i, -2147483647i))), ~max(min(vec2<u32>(67341u, 24667u), vec2<u32>(4294967295u, 4294967295u)), func_1(vec3<i32>(1i, 2147483647i, u_input.a.x))) << (firstLeadingBit(func_1(vec3<i32>(u_input.a.x, 3337i, u_input.a.x))) % vec2<u32>(32u)), 18432i);
}

