struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> bool {
    let var_0 = _wgslsmith_add_u32(u_input.a >> (_wgslsmith_mod_u32(1u, ~u_input.a) % 32u), u_input.a) <= u_input.a;
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -2026f);
    var_1 = -610f;
    let var_2 = abs(firstTrailingBit(~_wgslsmith_add_vec3_u32(max(vec3<u32>(4294967295u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, 4294967295u)), _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.a, 64505u), vec3<u32>(u_input.a, u_input.a, u_input.a)))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-231f, -590f, var_0))) * _wgslsmith_f_op_f32(max(-1544f, 1f)))));
    return var_0;
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -508f))));
    var var_1 = true;
    var_1 = !((func_3() & false) & all(select(vec3<bool>(false, true, true), select(vec3<bool>(var_0.a, true, var_0.a), vec3<bool>(var_0.a, false, var_0.a), false), vec3<bool>(false, false, var_0.a))));
    var var_2 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, var_0.b, -1008f)), vec3<f32>(var_0.b, var_0.b, 613f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -1000f, 149f) * vec3<f32>(var_0.b, -226f, var_0.b)))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(662f, var_0.b, 986f))) - _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, -1268f, var_0.b) + vec3<f32>(var_0.b, 688f, var_0.b))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1438f)) + var_0.b) * _wgslsmith_f_op_f32(max(-1418f, _wgslsmith_f_op_f32(select(-580f, var_0.b, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 1000f) * var_0.b), 162f)));
    var var_3 = -464f;
    return Struct_1(false, var_2.x);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = -2147483647i;
    let var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(273f, -1058f, arg_1.b) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-306f, arg_1.b, arg_1.b)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_1.b, arg_1.b, arg_1.b))) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(269f, arg_1.b, -1996f), vec3<f32>(-1228f, 827f, -1000f), true))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1060f, arg_1.b, -390f), vec3<f32>(1184f, arg_1.b, arg_1.b), arg_1.a)))))));
    var var_3 = ~abs(-vec4<i32>(var_1, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, var_1, var_0, var_0), vec4<i32>(var_1, 2147483647i, var_0, -1i)), _wgslsmith_div_i32(-13213i, var_0), _wgslsmith_mod_i32(-2147483647i, var_1)));
    var var_4 = func_2();
    return func_2();
}

fn func_1(arg_0: vec2<u32>) -> Struct_1 {
    let var_0 = func_4(u_input.a & reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(0u, 2168u))), func_2());
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -568f), var_0.b);
    var var_2 = Struct_1(var_0.a && true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(trunc(var_1.x))));
    let var_3 = all(!(!(!select(vec4<bool>(false, true, true, false), vec4<bool>(var_0.a, var_2.a, var_0.a, true), false))));
    let var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(var_1.x, func_2().b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1125f + var_1.x) + _wgslsmith_f_op_f32(-var_0.b)))), var_0.b)) + 460f);
    return var_0;
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_1) -> bool {
    var var_0 = _wgslsmith_f_op_f32(max(447f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(560f)) * -1637f)))));
    let var_1 = Struct_1(false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.b) + 860f))) * 194f));
    var var_2 = vec4<u32>(select(_wgslsmith_sub_u32(~(u_input.a << (u_input.a % 32u)), ~_wgslsmith_mult_u32(u_input.a, 0u)), 2252u, true), max(_wgslsmith_mod_u32(1u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.a), vec2<u32>(4294967295u, u_input.a))), ~u_input.a), ~41010u, ~countOneBits(u_input.a));
    var_2 = vec4<u32>(55136u, var_2.x, abs(u_input.a), u_input.a) & min(vec4<u32>(7117u, ~u_input.a, 6831u, abs(var_2.x) << (1u % 32u)), _wgslsmith_mod_vec4_u32(vec4<u32>(~u_input.a, u_input.a, _wgslsmith_div_u32(83098u, 22425u), ~0u), select(~vec4<u32>(u_input.a, u_input.a, u_input.a, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, 8940u, 12063u), vec4<u32>(u_input.a, 21245u, 10612u, 43967u)), var_1.b <= var_1.b)));
    var_0 = var_1.b;
    return true;
}

fn func_6(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), Struct_1(func_5(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true)), 1i, func_1(~vec2<u32>(u_input.a, u_input.a))), _wgslsmith_f_op_f32(f32(-1f) * -1038f)));
    var var_1 = func_2();
    var_0 = Struct_1(var_1.a, 1000f);
    var_1 = func_6(_wgslsmith_f_op_f32(-var_1.b), func_2());
    var_0 = Struct_1(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(var_0.b)))))));
    let var_2 = vec2<u32>(_wgslsmith_div_u32(~u_input.a, firstLeadingBit(_wgslsmith_mod_u32(~0u, u_input.a))), _wgslsmith_add_u32(~25864u, _wgslsmith_mod_u32(4294967295u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(4099u, 0u, u_input.a, u_input.a), vec4<u32>(4294967295u, 0u, u_input.a, u_input.a)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_i32(vec4<i32>(-29726i, ~(-10713i), ~(i32(-1i) * -6973i), _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-30814i, 1i, 35702i), vec3<i32>(2147483647i, 8380i, -53080i)), _wgslsmith_mod_i32(45772i, -1i))), vec4<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-44344i, 0i, 7406i), vec3<i32>(-31302i, 2147483647i, -2147483647i)), 2081i, -_wgslsmith_mod_i32(2871i, -2147483647i), ~_wgslsmith_clamp_i32(31951i, -41979i, 3778i))));
}

