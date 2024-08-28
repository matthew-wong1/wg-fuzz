struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: vec2<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: i32,
    d: f32,
    e: vec4<i32>,
}

struct Struct_5 {
    a: Struct_4,
    b: f32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1(arg_0: u32) -> vec2<u32> {
    var var_0 = true;
    return ~(~(~(~vec2<u32>(4294967295u, 27097u) | vec2<u32>(u_input.a, 47297u))));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<u32>) -> bool {
    var var_0 = min(countOneBits(_wgslsmith_dot_vec3_i32(-select(vec3<i32>(-1i, 21243i, -1i), vec3<i32>(-35751i, 34921i, 12912i), true), vec3<i32>(countOneBits(27873i), i32(-1i) * -1i, _wgslsmith_add_i32(-15447i, 1i)))), reverseBits(_wgslsmith_clamp_i32(-47293i, max(_wgslsmith_clamp_i32(12855i, 2147483647i, -2147483647i), -5519i), -37736i)));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -779f);
    let var_2 = ~_wgslsmith_sub_i32(-22762i, abs(1i));
    var_0 = var_2;
    var_1 = _wgslsmith_f_op_f32(-arg_0.c.x);
    return select(true, any(vec3<bool>(all(vec2<bool>(true, false)), true, true)), max(var_2, _wgslsmith_add_i32(i32(-1i) * -2147483647i, ~17570i)) < (-var_2 >> (~1u % 32u)));
}

fn func_2(arg_0: bool, arg_1: f32) -> Struct_4 {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-770f))), _wgslsmith_f_op_f32(abs(arg_1)));
    let var_1 = vec3<u32>(func_1(_wgslsmith_add_u32(~(~11244u), max(firstLeadingBit(63325u), ~u_input.a))).x, _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, countOneBits(37001u), 12799u), ~vec3<u32>(u_input.a >> (5676u % 32u), _wgslsmith_clamp_u32(u_input.a, 39142u, u_input.a), max(u_input.a, 4294967295u))), 0u);
    var var_2 = firstTrailingBit(-10208i);
    var var_3 = select(~u_input.a, _wgslsmith_clamp_u32(4294967295u, 0u, _wgslsmith_dot_vec3_u32(select(~vec3<u32>(66414u, 26320u, 4294967295u), ~vec3<u32>(34968u, 169u, u_input.a), !vec3<bool>(false, arg_0, true)), ~(~var_1))), select(func_3(Struct_3(~1u, var_1.xz, _wgslsmith_f_op_vec4_f32(vec4<f32>(-403f, 352f, 340f, 1575f) * vec4<f32>(var_0.x, arg_1, arg_1, 293f))), _wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a, var_1.x, var_1.x, 29034u), vec4<u32>(40583u, var_1.x, 0u, u_input.a)), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), true, any(vec4<bool>(arg_0, arg_0, false, arg_0)) && arg_0));
    var var_4 = ~((select(vec4<i32>(1i, 1i, 1i, 1i), vec4<i32>(29338i, -2147483647i, -1i, 33266i), var_0.x < arg_1) & vec4<i32>(_wgslsmith_mod_i32(1i, 15106i), 1i, -1i, _wgslsmith_sub_i32(-34108i, -1i))) ^ vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_sub_i32(8860i, -94950i), -67396i), 1i, _wgslsmith_dot_vec3_i32(firstLeadingBit(vec3<i32>(-2147483647i, 37412i, 12212i)), vec3<i32>(-2147483647i, -57423i, -7405i)), _wgslsmith_mod_i32(-5612i, -2147483647i)));
    return Struct_4(Struct_2(select(!select(vec3<bool>(true, arg_0, arg_0), vec3<bool>(arg_0, true, arg_0), arg_0), !vec3<bool>(true, arg_0, false), true), var_4.x), Struct_2(vec3<bool>(arg_0, arg_0, !arg_0), -18564i), -2147483647i, _wgslsmith_f_op_f32(-var_0.x), -vec4<i32>(_wgslsmith_add_i32(var_4.x, 2147483647i) & var_4.x, 23275i, _wgslsmith_add_i32(0i, ~(-37329i)), _wgslsmith_sub_i32(firstTrailingBit(var_4.x), max(var_4.x, var_4.x))));
}

fn func_4(arg_0: Struct_4) -> vec2<u32> {
    var var_0 = arg_0.a.a.x;
    let var_1 = _wgslsmith_mod_vec4_u32(countOneBits(~(~max(vec4<u32>(4294967295u, u_input.a, 1u, u_input.a), vec4<u32>(u_input.a, 1u, 37964u, u_input.a)))), _wgslsmith_div_vec4_u32(vec4<u32>(~_wgslsmith_div_u32(u_input.a, 4294967295u), min(u_input.a, 4294967295u), ~u_input.a >> (_wgslsmith_dot_vec3_u32(vec3<u32>(14594u, 0u, 0u), vec3<u32>(u_input.a, u_input.a, 18457u)) % 32u), ~u_input.a), ~vec4<u32>(1u & u_input.a, 4294967295u, 0u, u_input.a & u_input.a)));
    let var_2 = ~(~var_1.x);
    var var_3 = func_2(arg_0.a.a.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(1080f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(-987f, arg_0.d)), _wgslsmith_div_f32(2204f, -1000f)))))))).a;
    var_0 = true;
    return vec2<u32>(~_wgslsmith_add_u32(var_1.x, ~_wgslsmith_mod_u32(var_2, 4294967295u)), ~(~54272u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(~(~4294967295u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(1763u, 0u, u_input.a), vec3<u32>(u_input.a, u_input.a, 67764u))), func_1(_wgslsmith_div_u32(u_input.a, ~u_input.a))), func_4(func_2(!(u_input.a == 8549u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(977f, 529f))))));
    var_0 = vec2<u32>(abs(u_input.a), u_input.a);
    var_0 = vec2<u32>(~firstTrailingBit(0u), _wgslsmith_sub_u32(firstTrailingBit(0u), 1u));
    let var_1 = func_2(true, -400f).a;
    var_0 = abs(_wgslsmith_mult_vec2_u32(func_1(~countOneBits(8583u)), vec2<u32>(_wgslsmith_mod_u32(28323u, 1u) ^ ~u_input.a, var_0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_div_i32(~var_1.b, var_1.b), var_1.b, _wgslsmith_sub_i32(_wgslsmith_mult_i32(~var_1.b, var_1.b), var_1.b | -2147483647i)), _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -795f) * _wgslsmith_f_op_f32(trunc(-300f))), -630f, -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-451f - 643f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_div_f32(1000f, -1000f), 677f, 1f, -2058f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -286f)) + _wgslsmith_div_f32(-1000f, _wgslsmith_div_f32(1801f, 1000f)))));
}

