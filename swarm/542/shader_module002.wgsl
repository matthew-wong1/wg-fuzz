struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: vec3<f32>,
    d: bool,
    e: vec4<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(1u, 4294967295u);

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_2, arg_3: vec3<bool>) -> vec3<f32> {
    let var_0 = Struct_3(arg_2);
    let var_1 = _wgslsmith_mult_u32(_wgslsmith_mod_u32(global0.x << (global0.x % 32u), ~4294967295u) & ~(~(~arg_1)), _wgslsmith_div_u32(4294967295u | global0.x, global0.x));
    var var_2 = true;
    var var_3 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_2.b))), ~u_input.d, max((vec3<u32>(1u, arg_1, 0u) | vec3<u32>(18707u, 19459u, arg_1)) | firstLeadingBit(vec3<u32>(4294967295u, 38262u, arg_1)), vec3<u32>(_wgslsmith_div_u32(var_1, var_1), reverseBits(50870u), min(6209u, 4294967295u))) | (~(~vec3<u32>(global0.x, global0.x, global0.x)) ^ _wgslsmith_sub_vec3_u32(~vec3<u32>(51055u, 4294967295u, 1u), vec3<u32>(54054u, 41378u, 1u) ^ vec3<u32>(0u, arg_1, var_1))), ~vec4<u32>(1u, _wgslsmith_clamp_u32(~38191u, arg_1, var_1 ^ var_1), global0.x, _wgslsmith_add_u32(var_1, global0.x << (52276u % 32u))));
    var_2 = var_0.a.d;
    return vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(-130f))))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.a.c.x)) - 489f), _wgslsmith_f_op_f32(-arg_0)) * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) - 1210f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + var_3.a)))), var_0.a.e.x)));
}

fn func_2(arg_0: vec4<f32>) -> Struct_3 {
    var var_0 = _wgslsmith_f_op_f32(select(751f, arg_0.x, true));
    var var_1 = Struct_3(Struct_2(false, -1288f, _wgslsmith_f_op_vec3_f32(func_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), 1u, Struct_2(false, _wgslsmith_f_op_f32(ceil(-1028f)), _wgslsmith_f_op_vec3_f32(sign(arg_0.yzy)), true, vec4<f32>(-1000f, 1300f, arg_0.x, -899f)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), true), vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false))))), !any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(sign(arg_0))), _wgslsmith_div_vec4_f32(arg_0, _wgslsmith_f_op_vec4_f32(-arg_0)), select(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), true), select(vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true)), true)))));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(var_1.a.e.x + arg_0.x), u_input.a, vec3<u32>(global0.x, ~_wgslsmith_mult_u32(4294967295u, global0.x), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, 1u, global0.x), vec3<u32>(0u, global0.x, 33269u)))) << (~(~(~vec3<u32>(global0.x, 4294967295u, global0.x))) % vec3<u32>(32u)), abs(~_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u)), ~vec4<u32>(52954u, global0.x, global0.x, global0.x))));
    var_1 = Struct_3(var_1.a);
    return Struct_3(Struct_2(var_1.a.d, -507f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.a, -583f, var_2.a)), arg_0.zyz))), var_1.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(374f, 824f)), _wgslsmith_f_op_f32(ceil(arg_0.x)), arg_0.x, _wgslsmith_div_f32(1000f, arg_0.x)))));
}

fn func_4(arg_0: vec4<u32>, arg_1: Struct_3, arg_2: i32, arg_3: u32) -> Struct_2 {
    let var_0 = _wgslsmith_dot_vec2_i32(-(vec2<i32>(-1i) * -u_input.b.wx) >> (vec2<u32>(~arg_3, ~arg_0.x) % vec2<u32>(32u)), -max(u_input.b.yx, -abs(vec2<i32>(2147483647i, u_input.c))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(step(arg_1.a.c.x, arg_1.a.e.x)), -arg_2, arg_0.xxw, _wgslsmith_mod_vec4_u32(_wgslsmith_clamp_vec4_u32(arg_0, vec4<u32>(arg_3, ~global0.x, ~1u, arg_3), vec4<u32>(arg_0.x, arg_0.x, arg_0.x, arg_3) & reverseBits(vec4<u32>(arg_0.x, 28086u, 0u, arg_3))), ~(~vec4<u32>(4294967295u, 0u, arg_0.x, arg_3))));
    let var_2 = 0u;
    let var_3 = Struct_1(arg_1.a.c.x, var_0, countOneBits(arg_0.zzy), countOneBits(~arg_0));
    global0 = firstLeadingBit(min(var_1.d.xz, min(~vec2<u32>(1u, 1u), vec2<u32>(4390u, var_1.c.x) | vec2<u32>(arg_0.x, arg_0.x))));
    return Struct_2(arg_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + -1726f)), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_3.a * var_3.a), func_2(vec4<f32>(arg_1.a.e.x, var_1.a, -1802f, -179f)).a.e.x, var_1.a)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(arg_1.a.e.xxz)))), vec3<f32>(-1204f, _wgslsmith_f_op_f32(f32(-1f) * -1422f), _wgslsmith_f_op_f32(round(-149f)))))), true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-568f, -542f, var_3.a, var_1.a))));
}

fn func_5(arg_0: f32, arg_1: Struct_2, arg_2: u32, arg_3: u32) -> f32 {
    var var_0 = Struct_1(arg_0, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(~_wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.d, 6005i, -2975i), u_input.b), ~u_input.b << (vec4<u32>(61371u, global0.x, arg_3, 28897u) % vec4<u32>(32u)), vec4<i32>(19291i, -1i >> (global0.x % 32u), -u_input.d, u_input.d ^ u_input.c)), -u_input.b), _wgslsmith_mult_vec3_u32(~vec3<u32>(10630u, min(arg_3, 26665u), arg_2 << (1u % 32u)), ~select(vec3<u32>(1u, 1u, 1u) & vec3<u32>(4294967295u, arg_3, 50547u), _wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, 0u, global0.x), vec3<u32>(0u, arg_2, 0u)), vec3<bool>(true, true, true))), vec4<u32>(global0.x, firstTrailingBit(~reverseBits(0u)), abs(arg_2), countOneBits(21107u) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), ~vec2<u32>(20207u, 8761u)) % 32u)));
    var var_1 = Struct_3(func_4(~var_0.d >> (_wgslsmith_sub_vec4_u32(vec4<u32>(global0.x, 54055u, arg_2, global0.x) << (var_0.d % vec4<u32>(32u)), vec4<u32>(38640u, 34308u, arg_3, 22236u) & var_0.d) % vec4<u32>(32u)), func_2(arg_1.e), -var_0.b, min(arg_2, ~var_0.d.x) | 1u));
    var_1 = Struct_3(Struct_2(!arg_1.d, _wgslsmith_f_op_f32(max(var_1.a.e.x, arg_0)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.c.x, arg_1.b, -893f)))), var_1.a.d, _wgslsmith_f_op_vec4_f32(-arg_1.e)));
    var var_2 = _wgslsmith_clamp_vec4_i32(u_input.b, max(_wgslsmith_mult_vec4_i32(vec4<i32>(~(-6702i), max(var_0.b, u_input.d), 2147483647i, -12889i), ~select(vec4<i32>(var_0.b, -2147483647i, -6329i, 32997i), u_input.b, vec4<bool>(var_1.a.d, arg_1.a, true, var_1.a.d))), u_input.b), select(u_input.b, firstTrailingBit(u_input.b), !vec4<bool>(!var_1.a.a, true, var_1.a.d, all(vec2<bool>(var_1.a.d, true)))));
    let var_3 = true;
    return -764f;
}

fn func_1() -> Struct_2 {
    let var_0 = true;
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-494f, -1517f, -abs(u_input.c) <= 0i)) * _wgslsmith_f_op_f32(func_5(_wgslsmith_f_op_f32(ceil(-1000f)), func_4(vec4<u32>(4294967295u, 4294967295u, ~0u, 0u), func_2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-888f, 382f, 1214f, 484f), vec4<f32>(-900f, 1000f, -1181f, 196f)))), ~(u_input.a ^ -1i), reverseBits(107047u)), 14246u, 4294967295u)));
    global0 = select(max(reverseBits(~vec2<u32>(16426u, 100082u)), countOneBits(~(~vec2<u32>(global0.x, global0.x)))), _wgslsmith_sub_vec2_u32(~countOneBits(max(vec2<u32>(1u, 4294967295u), vec2<u32>(global0.x, global0.x))), select(vec2<u32>(4294967295u, select(70204u, global0.x, true)), vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(24460u, 1u, 15960u, 57679u), vec4<u32>(21165u, 1u, 0u, global0.x))), all(vec3<bool>(var_0, var_0, var_0)))), global0.x < global0.x);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(func_5(878f, Struct_2(!(u_input.a > 26766i), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(1000f)) - 1132f), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(777f, 1000f, -888f) * vec3<f32>(-672f, 453f, 120f)), vec3<f32>(238f, 933f, 1000f))), _wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.b.yz) < -5374i, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1364f, -219f, -330f, -1800f) + vec4<f32>(486f, 1204f, -562f, -416f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-1755f, 1729f, 148f, -413f) + vec4<f32>(-850f, -780f, -595f, 287f)))), global0.x, 35603u)), u_input.c, vec3<u32>(global0.x, 4294967295u, global0.x), _wgslsmith_mod_vec4_u32(select(abs(~vec4<u32>(global0.x, 894u, 37714u, 83846u)), vec4<u32>(~global0.x, countOneBits(global0.x), _wgslsmith_mod_u32(global0.x, 0u), 1u), select(select(vec4<bool>(var_0, var_0, true, false), vec4<bool>(var_0, var_0, var_0, var_0), vec4<bool>(false, false, var_0, true)), select(vec4<bool>(false, false, var_0, var_0), vec4<bool>(false, false, var_0, false), true), true)), min(vec4<u32>(global0.x, ~4294967295u, 0u & global0.x, global0.x >> (58383u % 32u)), max(_wgslsmith_sub_vec4_u32(vec4<u32>(16485u, global0.x, global0.x, 1u), vec4<u32>(4294967295u, 4294967295u, global0.x, 70679u)), select(vec4<u32>(60776u, 0u, 0u, 27714u), vec4<u32>(4322u, 0u, 81834u, global0.x), vec4<bool>(true, var_0, true, false))))));
    let var_3 = Struct_3(Struct_2(!(var_0 || true) == (_wgslsmith_f_op_f32(2457f * var_2.a) <= _wgslsmith_div_f32(2601f, -704f)), _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_2.a, var_2.a, -1000f))))), false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-365f, _wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(ceil(1003f)), var_2.a))));
    return func_2(var_3.a.e).a;
}

fn func_6(arg_0: Struct_2, arg_1: Struct_3, arg_2: i32, arg_3: f32) -> vec3<f32> {
    var var_0 = arg_1.a.c.x;
    global0 = select(~(~countOneBits(vec2<u32>(12235u, 0u) >> (vec2<u32>(57466u, global0.x) % vec2<u32>(32u)))), _wgslsmith_add_vec2_u32(~(~vec2<u32>(92127u, 25750u)), abs(~_wgslsmith_mod_vec2_u32(vec2<u32>(global0.x, 1u), vec2<u32>(global0.x, global0.x)))), vec2<bool>(_wgslsmith_clamp_u32(reverseBits(36400u), global0.x, reverseBits(40585u)) >= global0.x, func_1().a));
    var var_1 = _wgslsmith_f_op_vec2_f32(ceil(func_2(func_1().e).a.e.yz));
    var var_2 = false;
    var var_3 = arg_1;
    return var_3.a.e.xxz;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, 362f, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_6(func_1(), Struct_3(func_2(vec4<f32>(211f, -1000f, 1638f, 651f)).a), -u_input.c, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-2079f)), _wgslsmith_f_op_f32(f32(-1f) * -146f)))))), select(!(_wgslsmith_add_i32(u_input.c, u_input.a) < 20011i), func_4(~_wgslsmith_mult_vec4_u32(vec4<u32>(3456u, 1u, global0.x, 18001u), vec4<u32>(6606u, global0.x, global0.x, 42789u)), Struct_3(func_4(vec4<u32>(global0.x, global0.x, global0.x, 4294967295u), Struct_3(Struct_2(true, -1439f, vec3<f32>(392f, 1115f, 1750f), false, vec4<f32>(-353f, -109f, -655f, 1719f))), -68835i, 0u)), _wgslsmith_mult_i32(_wgslsmith_add_i32(1i, -1i), -1i), 5208u).d, false), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, 1f, 1f, 1f) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1078f, 969f, -1000f, 258f)))))));
    global0 = _wgslsmith_sub_vec2_u32(max(_wgslsmith_sub_vec2_u32(select(~vec2<u32>(15166u, 4294967295u), ~vec2<u32>(4294967295u, 42912u), false), vec2<u32>(~1u, _wgslsmith_add_u32(4294967295u, global0.x))), vec2<u32>(~global0.x << (max(93672u, global0.x) % 32u), 73896u)), vec2<u32>(global0.x, _wgslsmith_mod_u32(global0.x, ~6404u)) & ~(~max(vec2<u32>(6946u, 23045u), vec2<u32>(51743u, 63212u))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-var_0.e);
    let var_2 = -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(37070i, 14627i, u_input.b.x, 2147483647i), u_input.b), u_input.b, _wgslsmith_add_vec4_i32(vec4<i32>(-1i, u_input.d, u_input.b.x, 1i), u_input.b)) & vec4<i32>(1i, _wgslsmith_mod_i32(1i, -6058i), abs(687i), -31893i), ~abs(vec4<i32>(0i, 12824i, u_input.d, u_input.b.x)));
    var var_3 = vec2<bool>(select(true, var_0.d, (u_input.d >= 1i) | true), true);
    var_0 = func_4(vec4<u32>(~1u, global0.x, 12267u, _wgslsmith_clamp_u32(_wgslsmith_div_u32(50390u, 62031u), countOneBits(global0.x), global0.x)) >> (_wgslsmith_sub_vec4_u32(~vec4<u32>(4436u, 0u, global0.x, 64249u), ~(vec4<u32>(0u, 96587u, 4294967295u, global0.x) >> (vec4<u32>(39950u, global0.x, 0u, 5440u) % vec4<u32>(32u)))) % vec4<u32>(32u)), func_2(var_0.e), -10462i, _wgslsmith_dot_vec4_u32((~vec4<u32>(73203u, 40619u, 0u, 20444u) & vec4<u32>(112240u, global0.x, global0.x, 78744u)) ^ select(vec4<u32>(0u, 0u, global0.x, 58211u) & vec4<u32>(global0.x, 32807u, global0.x, 1u), vec4<u32>(global0.x, 1u, 15068u, global0.x) | vec4<u32>(global0.x, global0.x, global0.x, global0.x), true), abs(_wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(34771u, 1u, 36191u, 66472u), vec4<u32>(1u, 2404u, global0.x, global0.x), vec4<u32>(global0.x, 37865u, global0.x, global0.x)), ~vec4<u32>(0u, global0.x, global0.x, global0.x)))));
    let var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -437f), -(~u_input.c), ~(~(~(~vec3<u32>(17216u, global0.x, global0.x)))), ~vec4<u32>(firstLeadingBit(20149u), _wgslsmith_sub_u32(14001u, max(18118u, global0.x)), 94127u, _wgslsmith_sub_u32(abs(global0.x), _wgslsmith_mod_u32(global0.x, 67977u))));
    var var_5 = -1i;
    let var_6 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-var_0.c.xx), var_1.zy, select(vec2<bool>(true, true), vec2<bool>(var_3.x, var_0.a), vec2<bool>(var_3.x, var_3.x)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec3_f32(func_3(-295f, var_4.d.x, Struct_2(false, var_0.b, vec3<f32>(-587f, 1421f, var_1.x), true, var_0.e), vec3<bool>(var_0.a, var_3.x, var_3.x))).xz * var_0.c.yx)))), var_0.e.yw);
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(-vec4<i32>(-4631i, var_2.x, u_input.a, var_4.b) ^ -var_2, ~var_2), min(-45244i, _wgslsmith_div_i32(var_4.b, ~(-1i)))), ~(~reverseBits(619u)), countOneBits(_wgslsmith_add_vec3_i32(-var_2.xzz, _wgslsmith_sub_vec3_i32(vec3<i32>(-26472i, -2147483647i, 20676i), vec3<i32>(-29867i, -45408i, var_2.x)))) ^ vec3<i32>(-52769i & (var_4.b ^ 2147483647i), var_2.x, var_4.b), select(-vec2<i32>(50781i, ~(-1i)), _wgslsmith_div_vec2_i32(vec2<i32>(-1i, -1163i), u_input.b.yz >> (vec2<u32>(65618u, 1u) % vec2<u32>(32u))) << (vec2<u32>(1u, var_4.c.x) % vec2<u32>(32u)), func_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(min(var_0.e, vec4<f32>(var_4.a, var_0.c.x, var_1.x, -1420f)))))).a.d));
}

