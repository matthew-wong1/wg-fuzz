struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = select(!select(!select(vec3<bool>(true, false, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, all(vec4<bool>(false, false, false, false)))), select(vec3<bool>(true, true, true), !vec3<bool>(any(vec2<bool>(false, true)), all(vec4<bool>(false, false, true, false)), all(vec2<bool>(true, false))), true), true);
    var var_1 = arg_1.x;
    let var_2 = ~arg_0.x;
    let var_3 = u_input.a;
    var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1257f);
    return _wgslsmith_div_u32(var_2, arg_0.x);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: vec3<bool>) -> bool {
    let var_0 = ~_wgslsmith_add_vec2_u32(~vec2<u32>(~arg_1.a, arg_1.a), ~vec2<u32>(72423u, arg_1.a));
    var var_1 = Struct_2(firstTrailingBit(min(vec4<i32>(-u_input.b, abs(u_input.b), firstLeadingBit(-1751i), _wgslsmith_sub_i32(u_input.b, u_input.b)), -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.b, -37036i), vec4<i32>(2147483647i, u_input.b, 1i, 1i), vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.a)))));
    var var_2 = Struct_3(-abs(_wgslsmith_div_vec2_i32(var_1.a.yz, vec2<i32>(u_input.a, -1i))));
    var_1 = Struct_2(select(vec4<i32>(_wgslsmith_add_i32(-40582i, 25612i), ~var_2.a.x, -var_2.a.x, _wgslsmith_dot_vec2_i32(var_1.a.wy, var_2.a)) | vec4<i32>(~var_1.a.x, firstTrailingBit(1i), -2147483647i, 2008i >> (var_0.x % 32u)), vec4<i32>(abs(_wgslsmith_mult_i32(var_1.a.x, 1i)), -select(12830i, var_1.a.x, true), _wgslsmith_mod_i32(countOneBits(-1i), min(2147483647i, -1i)), -2147483647i), false));
    var_2 = Struct_3(var_1.a.wy);
    return false;
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = select(select(!vec3<bool>(true, all(vec3<bool>(true, false, false)), all(vec2<bool>(false, true))), select(vec3<bool>(true, func_3(vec3<f32>(316f, 575f, 407f), Struct_1(78363u), vec2<bool>(true, true), vec3<bool>(true, false, true)), true), select(select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), select(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), vec3<bool>(false && any(vec3<bool>(false, false, true)), true, any(vec3<bool>(true, true, true)) || true)), vec3<bool>(min(-35137i, ~(-31383i)) < _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.a.x, arg_0.a.x), vec2<i32>(-7324i, -21179i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-12792i, -2147483647i), arg_0.a.yy)), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -577f) + _wgslsmith_f_op_f32(f32(-1f) * -868f)) > _wgslsmith_f_op_f32(ceil(-639f))), true);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(ceil(-1119f)), -390f);
    return ~14348u;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_u32(abs(~_wgslsmith_sub_u32(~1u, func_1(vec2<u32>(27229u, 1u), vec2<f32>(2832f, -594f)))), 1u);
    var_0 = (func_2(Struct_2(vec4<i32>(u_input.b, 46682i, -26742i, u_input.b))) >> (~min(_wgslsmith_add_u32(18032u, 0u), abs(2082u)) % 32u)) >> (firstTrailingBit(firstTrailingBit(1u) ^ firstLeadingBit(4294967295u)) % 32u);
    var_0 = 0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(28381u, ~min(52845u, 1u), _wgslsmith_dot_vec2_u32(vec2<u32>(34971u, 0u), select(vec2<u32>(4294967295u, 0u), vec2<u32>(40740u, 4294967295u), true)), ~49595u), _wgslsmith_add_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(14503u, 23790u, 0u, 55758u), vec4<u32>(1u, 47196u, 87080u, 4294967295u)), _wgslsmith_div_vec4_u32(vec4<u32>(9291u, 1u, 34442u, 0u), vec4<u32>(4294967295u, 4877u, 89361u, 23280u))), select(select(vec4<u32>(7646u, 4294967295u, 1u, 1u), vec4<u32>(64920u, 42491u, 4294967295u, 4294967295u), vec4<bool>(false, false, true, true)), ~vec4<u32>(14426u, 4294967295u, 1u, 79584u), all(vec2<bool>(false, false))))) % 32u);
    let var_1 = (min(_wgslsmith_mult_i32(0i, _wgslsmith_div_i32(u_input.b, -66998i)), -1i) ^ (i32(-1i) * -2147483647i)) << ((1u >> (1u % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(countOneBits(_wgslsmith_clamp_vec3_i32(vec3<i32>(19633i, var_1, u_input.b), vec3<i32>(2147483647i, var_1, 1i), vec3<i32>(0i, 1722i, u_input.a))), reverseBits(vec3<i32>(1i, 1i, 1i))), ~(vec3<i32>(var_1, -2147483647i, 2147483647i) << (~vec3<u32>(1062u, 1u, 12372u) % vec3<u32>(32u)))), _wgslsmith_add_i32(~(-1i), 1969i), _wgslsmith_f_op_f32(select(-594f, 369f, all(vec4<bool>(true, true, true, true)))));
}

