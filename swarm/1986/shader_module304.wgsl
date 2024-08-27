struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: i32,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<i32> {
    global0 = max(_wgslsmith_clamp_u32(~(~min(0u, 1u)), ~(~arg_2.d.x >> (arg_1.d.x % 32u)), ~4294967295u), 1u);
    var var_0 = -2106f;
    let var_1 = ~_wgslsmith_clamp_vec3_u32(~arg_2.d.yxw, ~arg_2.d.xxz << (vec3<u32>(_wgslsmith_sub_u32(arg_1.d.x, 28632u), _wgslsmith_dot_vec3_u32(vec3<u32>(0u, 4294967295u, u_input.b), vec3<u32>(arg_2.d.x, arg_2.d.x, arg_1.d.x)), arg_1.d.x & arg_1.d.x) % vec3<u32>(32u)), arg_2.d.zwx);
    let var_2 = select(!vec3<bool>(true, any(vec3<bool>(true, true, false)), false), select(select(vec3<bool>(arg_1.a < -1000f, 0i < arg_2.b.x, true), vec3<bool>(all(vec3<bool>(true, false, false)), true, true), vec3<bool>(true, false, false)), !vec3<bool>(1000f > arg_0, all(vec2<bool>(false, true)), all(vec3<bool>(false, false, true))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true)))), false);
    let var_3 = arg_1;
    return ~(-vec2<i32>(_wgslsmith_clamp_i32(-12247i, 37875i, 2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, 48633i, arg_2.b.x, 0i), u_input.a)) & (~(~u_input.a.wx) | vec2<i32>(u_input.a.x, ~0i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>) -> u32 {
    var var_0 = Struct_1(-932f, firstLeadingBit(func_3(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(arg_1.x, arg_0.a)), Struct_1(_wgslsmith_f_op_f32(arg_1.x - arg_1.x), _wgslsmith_div_vec2_i32(vec2<i32>(arg_0.c, 14628i), vec2<i32>(1i, arg_0.c)), 1i, _wgslsmith_sub_vec4_u32(vec4<u32>(arg_0.d.x, 4294967295u, u_input.b, 92926u), vec4<u32>(arg_0.d.x, u_input.b, 4294967295u, 27679u))), arg_0)), u_input.d, arg_0.d);
    var var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0.a - 121f))), -588f)));
    let var_2 = -min(-1i, u_input.c);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_1.x + arg_1.x), 376f))), vec2<i32>(_wgslsmith_mod_i32(26226i, max(arg_0.b.x, var_2)), u_input.a.x) | vec2<i32>((50667i << (1u % 32u)) ^ -u_input.a.x, -_wgslsmith_div_i32(arg_0.b.x, var_0.c)), -(var_2 >> (((u_input.b | 4294967295u) >> (8222u % 32u)) % 32u)), _wgslsmith_clamp_vec4_u32(~(~vec4<u32>(30554u, 4294967295u, arg_0.d.x, var_0.d.x) | _wgslsmith_mod_vec4_u32(var_0.d, var_0.d)), arg_0.d, ~(~var_0.d & (var_0.d >> (var_0.d % vec4<u32>(32u))))));
    var_1 = 168f;
    return firstTrailingBit(~1u);
}

fn func_1(arg_0: u32, arg_1: vec4<bool>) -> u32 {
    global0 = _wgslsmith_div_u32(u_input.b & abs(select(func_2(Struct_1(-614f, u_input.a.wy, 7030i, vec4<u32>(4294967295u, 1u, 10825u, arg_0)), vec4<f32>(-1575f, 1000f, -1475f, -1582f)), func_2(Struct_1(-1000f, u_input.a.xw, u_input.c, vec4<u32>(arg_0, u_input.b, arg_0, 1u)), vec4<f32>(1000f, 110f, 500f, 942f)), !arg_1.x)), _wgslsmith_clamp_u32(~51212u, ~(~u_input.b << (u_input.b % 32u)), ~0u));
    let var_0 = !select(vec3<bool>(true, arg_1.x, true), !select(vec3<bool>(false, arg_1.x, arg_1.x), select(arg_1.zxz, arg_1.yyw, true), u_input.d != u_input.c), arg_1.x);
    var var_1 = false;
    var_1 = arg_1.x;
    var_1 = !any(var_0);
    return ~1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(~(~vec4<u32>(reverseBits(u_input.b), ~u_input.b, u_input.b, abs(35001u))));
    var var_1 = _wgslsmith_clamp_vec4_u32(vec4<u32>(41479u, select(~(~0u), _wgslsmith_mod_u32(u_input.b, 0u), true), abs(u_input.b), 16074u ^ ~func_1(var_0.x, vec4<bool>(true, true, false, true))), vec4<u32>(u_input.b, u_input.b, ~u_input.b, _wgslsmith_mod_u32(~_wgslsmith_sub_u32(4294967295u, u_input.b), _wgslsmith_mult_u32(0u, 2941u))), var_0);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1248f, -927f))) + -1939f), 766f) * vec2<f32>(_wgslsmith_f_op_f32(round(-106f)), -122f));
    var var_3 = countOneBits(countOneBits(min(50242u, min(34424u, 44019u))));
    var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(602f, var_2.x) * vec2<f32>(var_2.x, var_2.x)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, 3278f) - vec2<f32>(var_2.x, var_2.x)), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.x, var_2.x))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(2306f, -926f), vec2<f32>(912f, -161f), vec2<bool>(true, true))))))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_2.x, var_2.x), vec2<f32>(-578f, -572f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(161f, var_2.x), vec2<f32>(822f, var_2.x))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.x, 1538f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(var_2.x, 197f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2.x, var_2.x) * vec2<f32>(var_2.x, 1324f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_2.x, 842f)))))));
    var var_4 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -404f), vec2<i32>(-4389i, ~_wgslsmith_div_i32(u_input.a.x, 1i)), u_input.c, ~(~vec4<u32>(firstLeadingBit(86482u), max(var_1.x, 1u), var_0.x, ~var_1.x)));
    var var_5 = Struct_1(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-400f, var_2.x)))), true)), ~firstLeadingBit(~(-vec2<i32>(2147483647i, -1i))), reverseBits(u_input.a.x), var_0 >> (((vec4<u32>(var_1.x, var_0.x, var_1.x, 1u) & _wgslsmith_mod_vec4_u32(vec4<u32>(0u, var_1.x, u_input.b, 48922u), vec4<u32>(4294967295u, 4294967295u, u_input.b, 21400u))) | vec4<u32>(var_1.x & 1u, 0u, var_1.x >> (36262u % 32u), ~var_0.x)) % vec4<u32>(32u)));
    var var_6 = Struct_1(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_4.a), _wgslsmith_f_op_f32(-var_4.a), false)), var_5.b, _wgslsmith_div_i32(u_input.d, u_input.c) << (func_1(max(_wgslsmith_mod_u32(92087u, 4294967295u), var_5.d.x), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, false), false))) % 32u), ~vec4<u32>(u_input.b, 122619u, 1u, ~var_4.d.x));
    var var_7 = !select(select(select(vec4<bool>(true, false, true, false), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false), select(true, true, true)), vec4<bool>(true, true, any(vec2<bool>(false, true)), false), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, all(vec2<bool>(false, true)), true), vec4<bool>(true, true, true, true)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true)), !select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(all(vec4<bool>(false, false, false, false)), true, true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.c << (~reverseBits(~var_6.d.x) % 32u), ~_wgslsmith_sub_i32(var_6.b.x, -26459i), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(917f)), -1902f), -1351f))), 3457i);
}

