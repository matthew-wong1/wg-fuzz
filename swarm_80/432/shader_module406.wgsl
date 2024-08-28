struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct Struct_5 {
    a: vec4<u32>,
    b: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(-538f, -710f);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_3(arg_0: f32, arg_1: u32) -> u32 {
    global0 = Struct_4(arg_0, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -132f), arg_0));
    let var_0 = Struct_2(_wgslsmith_add_u32(u_input.a.x, 21978u) < abs(arg_1), Struct_1(vec2<i32>(select(_wgslsmith_mult_i32(26957i, -5450i), countOneBits(0i), true), -21260i)), Struct_1(vec2<i32>(-61223i, -41852i)), Struct_1(-min(~vec2<i32>(6793i, 11309i), vec2<i32>(1i, 2104i))), -select(-select(vec4<i32>(2147483647i, -2147483647i, 0i, -1i), vec4<i32>(55083i, 2147483647i, 35101i, -15794i), vec4<bool>(true, true, false, false)), select(vec4<i32>(44682i, 21148i, 1i, 50257i), vec4<i32>(21181i, -1i, 2147483647i, -2147483647i), vec4<bool>(false, false, false, false)) & ~vec4<i32>(1i, 18067i, -12821i, -2147483647i), select(vec4<bool>(true, false, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), false), vec4<bool>(false, false, true, false))));
    let var_1 = !all(vec2<bool>(false, true));
    var var_2 = i32(-1i) * -8342i;
    let var_3 = abs(~abs(var_0.c.a.x));
    return _wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, ~0u, arg_1 << (arg_1 % 32u)) ^ _wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_1, arg_1, u_input.a.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.a.x, arg_1, arg_1), vec3<u32>(u_input.a.x, 1u, 0u)), vec3<u32>(30039u, 8769u, u_input.a.x))), ~(~vec3<u32>(_wgslsmith_clamp_u32(45231u, 33604u, arg_1), _wgslsmith_sub_u32(u_input.a.x, 1u), arg_1)));
}

fn func_2() -> Struct_4 {
    global0 = Struct_4(global0.b, global0.a);
    let var_0 = 0i & (~(-3884i) >> (abs(~u_input.a.x) % 32u));
    let var_1 = Struct_1(abs(vec2<i32>(-var_0, var_0) | vec2<i32>(-2147483647i, _wgslsmith_sub_i32(var_0, -2147483647i))));
    var var_2 = 18460u;
    var var_3 = Struct_5(max(vec4<u32>(0u, ~u_input.a.x, func_3(-1280f, 94822u), u_input.a.x) >> ((vec4<u32>(78724u, u_input.a.x, 5257u, u_input.a.x) | (vec4<u32>(u_input.a.x, 3382u, u_input.a.x, u_input.a.x) << (vec4<u32>(37054u, 1u, u_input.a.x, 4294967295u) % vec4<u32>(32u)))) % vec4<u32>(32u)), vec4<u32>(u_input.a.x ^ ~51241u, 4294967295u, firstLeadingBit(~1u), _wgslsmith_mult_u32(u_input.a.x, func_3(917f, u_input.a.x)))), ~u_input.a.x & 16148u);
    return Struct_4(_wgslsmith_div_f32(-370f, _wgslsmith_f_op_f32(select(global0.b, _wgslsmith_f_op_f32(max(global0.a, _wgslsmith_f_op_f32(step(2060f, 857f)))), true))), -1919f);
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = ~(~abs(u_input.a));
    var var_1 = func_2();
    var_1 = Struct_4(var_1.a, arg_0);
    var var_2 = 2147483647i;
    let var_3 = Struct_2(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, u_input.a.x, var_0.x) >> (vec3<u32>(43675u, 1u, 4294967295u) % vec3<u32>(32u))), ~vec3<u32>(1u, 1u, var_0.x)) != 12379u, Struct_1(vec2<i32>(1i, 1i)), Struct_1(vec2<i32>(~(-123i), _wgslsmith_clamp_i32(-1i, 0i, -18655i)) & vec2<i32>(44075i, ~36613i)), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(~2147483647i, _wgslsmith_mod_i32(-2147483647i, -1i)), firstTrailingBit(vec2<i32>(1i, 1i)))), -_wgslsmith_mult_vec4_i32(vec4<i32>(1i, ~17782i, i32(-1i) * -1i, firstTrailingBit(-2147483647i)), -(vec4<i32>(7664i, 47676i, -2147483647i, 25542i) >> (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, var_0.x) % vec4<u32>(32u)))));
    return -417f;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a * global0.b), global0.b) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(global0.a))))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(562f)) + global0.b) * 299f)), 399f);
    var var_0 = ((_wgslsmith_mult_i32(firstTrailingBit(-24009i), i32(-1i) * -4295i) | _wgslsmith_mult_i32(1i, select(727i, 0i, false))) << (u_input.a.x % 32u)) == (_wgslsmith_add_i32(21094i, countOneBits(1i)) << (_wgslsmith_add_u32(reverseBits(u_input.a.x), ~35851u) % 32u));
    let var_1 = Struct_3(!(!all(vec2<bool>(true, true))), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(select(~vec4<i32>(-1i, -16116i, -2147483647i, 2147483647i), vec4<i32>(0i, -1i, 15957i, 1i), vec4<bool>(true, true, true, true)), ~(-vec4<i32>(0i, 2147483647i, -52428i, -2147483647i))), min(_wgslsmith_sub_i32(1i, _wgslsmith_clamp_i32(1i, 62362i, 15336i)), _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-48780i, -30640i, -1i), vec3<i32>(1i, 13121i, -2147483647i)), ~(-10427i)))), vec4<u32>(~(~firstLeadingBit(u_input.a.x)), ~(~u_input.a.x), _wgslsmith_div_u32(firstTrailingBit(4294967295u), ~_wgslsmith_clamp_u32(u_input.a.x, 4294967295u, u_input.a.x)), 4294967295u), _wgslsmith_clamp_i32(firstLeadingBit(max(firstTrailingBit(-1i), i32(-1i) * -22106i)), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(-1i, 1544i), -25353i, 1i) << ((u_input.a.x << (min(u_input.a.x, u_input.a.x) % 32u)) % 32u), i32(-1i) * -min(1i, 2147483647i)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)))));
    var_0 = true;
    var var_2 = select(vec4<bool>(all(select(vec4<bool>(false, var_1.a, var_1.a, var_1.a), select(vec4<bool>(false, false, var_1.a, false), vec4<bool>(true, var_1.a, true, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, true)), select(vec4<bool>(false, var_1.a, false, var_1.a), vec4<bool>(var_1.a, true, var_1.a, false), true))), ~firstLeadingBit(var_1.c.x) != abs(abs(27425u)), any(!(!vec4<bool>(true, false, true, var_1.a))), var_1.a), !vec4<bool>(-1i > var_1.d, var_1.a, (27292i ^ var_1.b) <= _wgslsmith_mod_i32(var_1.b, var_1.b), all(select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.a, var_1.a, true), var_1.a))), select(!select(select(vec4<bool>(false, true, var_1.a, var_1.a), vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a), var_1.a), vec4<bool>(var_1.a, var_1.a, true, var_1.a), !vec4<bool>(true, var_1.a, var_1.a, false)), !select(select(vec4<bool>(false, var_1.a, false, var_1.a), vec4<bool>(var_1.a, var_1.a, false, var_1.a), vec4<bool>(false, false, var_1.a, var_1.a)), vec4<bool>(true, false, false, false), !vec4<bool>(false, false, var_1.a, var_1.a)), select(all(vec3<bool>(false, true, false)), var_1.a, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_clamp_u32(min(var_1.c.x, var_1.c.x), (0u << (u_input.a.x % 32u)) | _wgslsmith_mod_u32(0u, u_input.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(43738u, var_1.c.x, var_1.c.x, 0u), vec4<u32>(u_input.a.x, var_1.c.x, 77710u, 4294967295u))), _wgslsmith_sub_u32(~1u, var_1.c.x), 0u, countOneBits(var_1.c.x | u_input.a.x) | _wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c.x, 1u, var_1.c.x), vec3<u32>(4294967295u, 76196u, 65841u)), ~4160u, 70866u)), -_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(1i, var_1.b), vec2<i32>(2051i, var_1.b)), vec2<i32>(var_1.d, var_1.b) ^ vec2<i32>(-13854i, -8770i)), vec2<i32>(2147483647i, i32(-1i) * -18265i)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(global0.b, var_1.e))), -377f)), vec3<f32>(_wgslsmith_f_op_f32(var_1.e * var_1.e), _wgslsmith_f_op_f32(max(func_2().b, 1f)), _wgslsmith_f_op_f32(-global0.a)));
}

