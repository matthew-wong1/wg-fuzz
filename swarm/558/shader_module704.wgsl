struct Struct_1 {
    a: i32,
    b: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: u32,
    d: vec3<bool>,
    e: vec3<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<i32>,
    c: u32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = any(vec3<bool>(true, !any(vec4<bool>(true, arg_0.c.a.x, true, arg_0.c.a.x)), all(vec3<bool>(true, any(vec3<bool>(true, arg_0.c.a.x, arg_0.c.d.x)), false))));
    var_0 = arg_0.c.b.x;
    global0 = false;
    var var_1 = max(_wgslsmith_sub_u32(25078u, ~reverseBits(_wgslsmith_mod_u32(arg_0.c.c, arg_0.c.c))), 4634u);
    let var_2 = Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1293f), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -581f)), arg_0.a), _wgslsmith_f_op_f32(sign(-1881f)), arg_0.b.x), arg_0.c, arg_0.d);
    return reverseBits(~vec2<u32>(1u, max(var_2.c.c, 4294967295u | arg_0.c.c)));
}

fn func_2(arg_0: Struct_2) -> u32 {
    var var_0 = -1687f;
    var_0 = _wgslsmith_f_op_f32(-2092f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -203f) + 1489f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(-1195f, -169f) - _wgslsmith_f_op_f32(-449f * -394f)))));
    global0 = true;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-654f + _wgslsmith_f_op_f32(312f - -137f)))));
    global0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, u_input.c) << (~vec2<u32>(14068u, 34219u) % vec2<u32>(32u)), func_3(Struct_3(-393f, vec3<f32>(675f, -1381f, -3593f), arg_0, Struct_1(arg_0.e.x, arg_0.e.x)))), 16132u) < u_input.c;
    return ~_wgslsmith_dot_vec4_u32(vec4<u32>(~1u, arg_0.c, arg_0.c, 46464u) << (_wgslsmith_div_vec4_u32(firstLeadingBit(vec4<u32>(u_input.c, 1u, u_input.c, arg_0.c)), ~vec4<u32>(4294967295u, 0u, arg_0.c, arg_0.c)) % vec4<u32>(32u)), ~vec4<u32>(_wgslsmith_clamp_u32(13790u, 1u, 48759u), _wgslsmith_dot_vec3_u32(vec3<u32>(85407u, arg_0.c, u_input.c), vec3<u32>(41031u, 17820u, u_input.c)), 26952u, _wgslsmith_add_u32(1u, arg_0.c)));
}

fn func_1() -> u32 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(firstTrailingBit(u_input.c) | _wgslsmith_div_u32(_wgslsmith_clamp_u32(1u, 4294967295u, u_input.c), u_input.c), u_input.c, _wgslsmith_sub_u32(4294967295u, ~4294967295u), abs(u_input.c << (4294967295u % 32u))), vec4<u32>(u_input.c, _wgslsmith_div_u32(~12682u, 1u), countOneBits(abs(u_input.c)), ~(4294967295u >> (u_input.c % 32u))) >> (firstLeadingBit(countOneBits(~vec4<u32>(29935u, 1u, 90428u, 1u))) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_mult_u32(func_2(Struct_2(vec3<bool>(true, false, true), vec4<bool>(false, true, false, true), u_input.c, vec3<bool>(true, true, false), u_input.b)), ~u_input.c), 0u), u_input.c, _wgslsmith_div_u32(~_wgslsmith_clamp_u32(19389u, 7872u, 107950u), u_input.c << (firstTrailingBit(u_input.c) % 32u)), ~0u));
    let var_1 = _wgslsmith_dot_vec4_i32(~(-(vec4<i32>(-1i, 0i, 1i, 1i) >> (_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, var_0.x, 1u, 4294967295u), vec4<u32>(u_input.c, 30706u, 1u, 1u)) % vec4<u32>(32u)))), -select(_wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(42758i, -2147483647i, 7867i, -2147483647i)), vec4<i32>(15884i, 1i, 1i, u_input.a)), firstLeadingBit(~vec4<i32>(u_input.a, u_input.b.x, u_input.d, u_input.b.x)), vec4<bool>(false, false, false, true)));
    global0 = any(select(select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, false, true)), vec3<bool>(true, false, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false))), vec3<bool>(true, true, all(vec4<bool>(false, false, false, true))), vec3<bool>(false, all(vec3<bool>(false, true, true)), true)), select(vec3<bool>(any(vec4<bool>(false, false, true, false)), false, true), !select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), false), vec3<bool>(select(false, true, true), true, true)), -9526i == _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(0i, -1i, var_1, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(-8338i, u_input.d, u_input.a, -16729i), vec4<i32>(-23192i, u_input.a, 2147483647i, u_input.d)))));
    var var_2 = var_1;
    var var_3 = vec2<bool>(any(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true || any(vec4<bool>(true, false, false, true)))), !(countOneBits(countOneBits(var_1)) >= max(50832i, firstTrailingBit(2654i))));
    return firstLeadingBit(var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    var var_1 = -1287f;
    global0 = all(!(!select(vec3<bool>(true, true, true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), false), true)));
    var var_2 = -1501f;
    let var_3 = false;
    let var_4 = Struct_2(vec3<bool>(true, true, true), vec4<bool>(all(vec2<bool>(true, u_input.b.x <= var_0)), any(select(vec3<bool>(var_3, var_3, false), select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(var_3, var_3, var_3)), vec3<bool>(false, var_3, var_3))), var_3, all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, var_3), vec3<bool>(var_3, var_3, true)), select(vec3<bool>(var_3, var_3, true), vec3<bool>(var_3, true, true), var_3), vec3<bool>(false, var_3, false)))), _wgslsmith_mod_u32(~u_input.c, func_1()), select(select(!vec3<bool>(true, var_3, true), select(select(vec3<bool>(false, var_3, var_3), vec3<bool>(true, var_3, var_3), var_3), !vec3<bool>(var_3, false, false), var_3), select(select(vec3<bool>(false, var_3, false), vec3<bool>(var_3, var_3, var_3), vec3<bool>(var_3, false, true)), !vec3<bool>(true, true, var_3), !var_3)), vec3<bool>(true, true, true), var_3), abs(-vec3<i32>(-var_0, var_0 & -4906i, _wgslsmith_add_i32(var_0, u_input.b.x))));
    var var_5 = var_4;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1119f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -827f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(1669f))))))), -(~reverseBits(var_5.e.yx)), func_1(), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1794f))), _wgslsmith_f_op_f32(f32(-1f) * -1780f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(262f * -491f), _wgslsmith_f_op_f32(ceil(-951f)))))));
}

