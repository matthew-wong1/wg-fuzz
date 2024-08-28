struct Struct_1 {
    a: vec4<f32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<bool>,
    e: u32,
}

struct Struct_4 {
    a: f32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<u32>, arg_1: f32, arg_2: bool) -> vec4<f32> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1223f, -1000f, arg_1, -1085f), vec4<f32>(arg_1, -1307f, arg_1, -661f), false)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, arg_1, arg_1))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(569f, -211f, 880f, 1255f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 652f, 1678f, arg_1))), select(vec4<bool>(arg_2, false, true, arg_2), select(vec4<bool>(false, true, false, arg_2), vec4<bool>(arg_2, arg_2, arg_2, false), arg_2), vec4<bool>(false, arg_2, true, false)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, 918f, arg_1, arg_1)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(212f, -1627f, arg_1, arg_1)) * vec4<f32>(592f, arg_1, arg_1, arg_1)))));
    let var_1 = 1u;
    var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_1, -782f, arg_1, var_0.x), vec4<f32>(1000f, -698f, var_0.x, -1000f))), vec4<f32>(var_0.x, var_0.x, var_0.x, -1105f))))))));
    var_0 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-489f, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(var_0.x * var_0.x), 1748f)));
    var var_2 = ~reverseBits(~1u);
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, 145f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.x, 364f))), _wgslsmith_f_op_f32(-var_0.x))) * vec4<f32>(_wgslsmith_f_op_f32(round(3745f)), -141f, _wgslsmith_f_op_f32(var_0.x * _wgslsmith_div_f32(arg_1, _wgslsmith_f_op_f32(-var_0.x))), _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1))))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: Struct_4, arg_3: f32) -> Struct_4 {
    var var_0 = Struct_4(_wgslsmith_f_op_f32(-804f - arg_3), 855f);
    var_0 = arg_2;
    var var_1 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3(vec2<u32>(92296u, 0u), _wgslsmith_f_op_f32(f32(-1f) * -184f), arg_1)) + _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-893f, -317f, arg_2.b, arg_2.b) - vec4<f32>(arg_3, var_0.a, 1000f, var_0.a))))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(348f, arg_3)), _wgslsmith_f_op_f32(abs(262f)), 1094f, _wgslsmith_f_op_f32(arg_2.a + var_0.a)))), vec3<i32>(-u_input.a, _wgslsmith_add_i32(-34759i ^ u_input.a, _wgslsmith_div_i32(20811i, -27131i)) >> (arg_0 % 32u), 1i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(1201f))))))), -(~abs(~u_input.a)));
    var var_2 = vec3<bool>(!arg_1, arg_1, false);
    let var_3 = Struct_3(vec4<f32>(var_1.c, _wgslsmith_f_op_f32(arg_2.b * var_0.a), arg_2.b, _wgslsmith_f_op_f32(-var_1.c)), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_1.c)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.a))), -935f, arg_3), var_1.b, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-504f * -319f), _wgslsmith_f_op_f32(-var_0.a)), u_input.a), var_2.x, vec4<bool>(all(var_2.xz), all(!var_2.xx), arg_1, any(!(!var_2.zx))), ~41523u);
    return Struct_4(var_1.c, 232f);
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_4 {
    var var_0 = func_2(arg_0.x, true, Struct_4(_wgslsmith_f_op_f32(step(arg_1.x, _wgslsmith_f_op_f32(max(-404f, arg_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-370f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), -1112f);
    var var_1 = func_2(countOneBits(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(0u, arg_0.x, arg_0.x, arg_0.x)), firstTrailingBit(vec4<u32>(1u, arg_0.x, arg_0.x, arg_0.x) << (vec4<u32>(0u, 0u, 33203u, arg_0.x) % vec4<u32>(32u))))), false, func_2(arg_0.x, all(vec2<bool>(u_input.a > u_input.a, true)), func_2(_wgslsmith_sub_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x), 0u >> (arg_0.x % 32u)), true, func_2(24927u >> (0u % 32u), true, func_2(77095u, true, Struct_4(var_0.a, 291f), 2139f), _wgslsmith_div_f32(var_0.a, 331f)), 333f), _wgslsmith_div_f32(-1682f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * arg_1.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.x, -448f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.a) * _wgslsmith_f_op_f32(floor(1995f))), -1696f)));
    var_0 = func_2(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_0.x, arg_0.x) ^ _wgslsmith_div_u32(4294967295u, arg_0.x), ~(~arg_0.x)) | arg_0.x, any(vec4<bool>((u_input.a == u_input.a) || true, true, ~arg_0.x >= _wgslsmith_mult_u32(arg_0.x, arg_0.x), true)), Struct_4(_wgslsmith_f_op_f32(min(var_0.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))), var_0.b), -211f);
    var_0 = func_2(4294967295u, ~reverseBits(~u_input.a) > (-16577i | _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, -13126i, -1i) & vec3<i32>(-23969i, u_input.a, u_input.a), vec3<i32>(-790i, 1i, u_input.a))), func_2(_wgslsmith_mod_u32(1u, 1u), false, Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b + -1095f) + _wgslsmith_f_op_f32(round(178f))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(353f + 596f)))), -1668f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -940f), _wgslsmith_f_op_vec4_f32(func_3(abs(vec2<u32>(4331u, arg_0.x)), arg_1.x, !any(vec2<bool>(true, true)))).x));
    let var_2 = 318f;
    return Struct_4(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), func_2(_wgslsmith_clamp_u32(firstTrailingBit(arg_0.x), ~18830u, arg_0.x), all(select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), false)), Struct_4(_wgslsmith_f_op_f32(-var_2), 1972f), -1000f).a));
}

fn func_4(arg_0: Struct_4, arg_1: f32, arg_2: vec3<u32>, arg_3: vec2<i32>) -> vec3<u32> {
    let var_0 = Struct_4(241f, arg_1);
    return min(arg_2, _wgslsmith_sub_vec3_u32(reverseBits(_wgslsmith_div_vec3_u32(~arg_2, ~arg_2)), ~_wgslsmith_clamp_vec3_u32(~vec3<u32>(arg_2.x, 52481u, arg_2.x), firstTrailingBit(arg_2), arg_2 << (arg_2 % vec3<u32>(32u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = max(vec3<u32>(1u, ~(~4294967295u), ~1u), func_4(func_1(vec3<u32>(43687u, 12211u, 2036u), vec4<f32>(387f, 1894f, 1204f, 126f)), _wgslsmith_f_op_f32(-799f - 1610f), vec3<u32>(1u, 1u, 1u), max(vec2<i32>(u_input.a, -2147483647i), vec2<i32>(-56918i, -2147483647i))) << (select(~vec3<u32>(0u, 37235u, 79544u), ~vec3<u32>(85439u, 4945u, 1u), select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false)) % vec3<u32>(32u))) & vec3<u32>(44407u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(23697u, ~44051u, ~0u, ~4294967295u)), 1u);
    let var_2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-934f + 2830f), _wgslsmith_f_op_f32(min(-1000f, 1000f))) + -169f)))));
    var var_3 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_sub_vec2_u32(var_1.xx, var_1.yx), 615f, true)).x - _wgslsmith_f_op_f32(var_2 - var_2)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_2)))), -554f));
    var var_4 = Struct_4(_wgslsmith_f_op_vec4_f32(func_3(~(~max(var_1.xz, var_1.xz)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_2)) * _wgslsmith_f_op_f32(-var_2)), u_input.a <= 41772i)).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -150f)));
    var var_5 = Struct_4(_wgslsmith_f_op_f32(max(func_2(var_1.x, all(vec2<bool>(true, true)), func_1(min(vec3<u32>(4294967295u, 81568u, var_1.x), var_1), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1069f, var_2, 1015f, var_2), vec4<f32>(981f, 1331f, 1809f, var_4.b)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2)))))), 1f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(abs(~(-vec2<i32>(-5828i, u_input.a)))), u_input.a, 1u >> (reverseBits(abs(firstTrailingBit(var_1.x))) % 32u));
}

