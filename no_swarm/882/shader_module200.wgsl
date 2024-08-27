struct Struct_1 {
    a: vec3<bool>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
    d: i32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_2) -> vec2<u32> {
    var var_0 = arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(ceil(arg_1.b.x));
    var_0 = Struct_1(arg_1.a.a, var_0.b);
    var_0 = Struct_1(select(vec3<bool>(any(vec2<bool>(true, false)), !any(vec4<bool>(var_0.a.x, var_0.a.x, arg_0.a.a.x, false)), var_0.a.x), !(!select(vec3<bool>(false, arg_0.a.a.x, arg_0.a.a.x), vec3<bool>(true, true, true), vec3<bool>(arg_0.a.a.x, arg_1.a.a.x, true))), arg_0.a.a.x), 0i);
    let var_2 = arg_1;
    return vec2<u32>(select(_wgslsmith_mult_u32(u_input.c.x, 1u), 11849u, true), 1u) >> (~vec2<u32>(1u, u_input.d.x) % vec2<u32>(32u));
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = Struct_2(Struct_1(vec3<bool>(26123u <= ~u_input.b.x, false, arg_0), select(-1i << (1u % 32u), 0i, true)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(304f + -869f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-2078f, -821f, arg_0)), -559f)), _wgslsmith_f_op_f32(round(1342f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(601f + -1828f), 1197f, false)), -1127f)), _wgslsmith_f_op_f32(max(1f, 2055f))));
    var var_1 = _wgslsmith_mod_vec2_u32(vec2<u32>(~9780u, u_input.d.x), func_3(Struct_2(Struct_1(select(vec3<bool>(false, true, true), var_0.a.a, var_0.a.a), var_0.a.b), var_0.b), Struct_2(var_0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(var_0.b)) + vec4<f32>(var_0.b.x, -1222f, var_0.b.x, var_0.b.x)))));
    var_1 = firstLeadingBit(reverseBits(u_input.c.yy));
    let var_2 = select(-var_0.a.b, ~(_wgslsmith_div_i32(var_0.a.b, -2147483647i) ^ ~var_0.a.b), var_0.a.a.x) | (_wgslsmith_mult_i32(-var_0.a.b, ~(var_0.a.b >> (var_1.x % 32u))) << (_wgslsmith_dot_vec3_u32(~firstTrailingBit(u_input.c), vec3<u32>(reverseBits(40373u), 4294967295u, _wgslsmith_dot_vec3_u32(u_input.c, u_input.b))) % 32u));
    var_1 = u_input.c.xz;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1363f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -350f)))) - -1211f);
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: bool) -> f32 {
    let var_0 = select(select(!vec4<bool>(any(vec4<bool>(arg_2, false, arg_2, false)), any(vec2<bool>(arg_2, false)), select(arg_2, arg_2, false), false && arg_2), select(select(select(vec4<bool>(false, false, arg_2, true), vec4<bool>(true, arg_2, arg_2, arg_2), vec4<bool>(arg_2, false, arg_2, arg_2)), select(vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(false, arg_2, true, false), arg_2), vec4<bool>(arg_2, arg_2, arg_2, arg_2)), vec4<bool>(true, false || arg_2, false, true), arg_2), -1085f < _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_2(true))))), vec4<bool>(false, arg_2, !arg_2 & true, !(!all(vec4<bool>(true, true, false, false)))), vec4<bool>(select(arg_2 | arg_2, false, true), !all(vec4<bool>(false, arg_2, true, true)), any(select(select(vec4<bool>(true, arg_2, true, false), vec4<bool>(true, arg_2, false, false), vec4<bool>(arg_2, arg_2, true, true)), select(vec4<bool>(arg_2, false, false, arg_2), vec4<bool>(arg_2, true, true, false), vec4<bool>(arg_2, arg_2, arg_2, true)), arg_0 == arg_0)), true));
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    var var_2 = true;
    let var_3 = _wgslsmith_f_op_f32(-arg_0) != _wgslsmith_f_op_f32(func_2(true));
    let var_4 = vec4<i32>(reverseBits(-10040i), 24160i, 0i, -7365i);
    return _wgslsmith_f_op_f32(627f - -2014f);
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_2(true)), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1694f, 1250f, 230f, -1000f))), _wgslsmith_f_op_f32(-1000f - -532f) >= _wgslsmith_f_op_f32(round(-1486f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -716f))), vec2<f32>(_wgslsmith_f_op_f32(func_4(-1268f, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(112f, 297f, 607f, -1295f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-272f, -1224f, -823f, 226f))))), true)), _wgslsmith_f_op_f32(f32(-1f) * -139f)));
    let var_1 = _wgslsmith_mod_vec4_u32(u_input.d, ~(u_input.d >> (u_input.d % vec4<u32>(32u))));
    var var_2 = ~1u;
    var_2 = var_1.x;
    let var_3 = Struct_2(Struct_1(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), any(vec4<bool>(false, true, false, true))), -(min(3117i, -54204i) >> (var_1.x % 32u))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1077f), 145f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), var_0.x), 443f))));
    return var_3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !any(vec2<bool>(true, true));
    let var_1 = func_1();
    var var_2 = ~_wgslsmith_sub_i32(countOneBits(1i), var_1.b);
    let var_3 = !select(vec2<bool>(!(var_1.b >= -1i), var_1.a.x), var_1.a.zx, func_1().a.yz);
    let var_4 = func_1();
    var var_5 = vec2<u32>(_wgslsmith_mult_u32(u_input.d.x, 1u), ~(~(~_wgslsmith_dot_vec3_u32(u_input.d.xyz, vec3<u32>(u_input.d.x, 0u, u_input.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(select(vec4<i32>(_wgslsmith_div_i32(var_4.b, 0i) >> (1u % 32u), 2147483647i, var_1.b, _wgslsmith_mult_i32(-50957i, ~var_1.b)), abs(vec4<i32>(var_4.b, var_1.b, 1i, var_4.b)), true), u_input.d.x, 1i, var_1.b, vec4<i32>(var_1.b, select(abs(var_4.b), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_1.b, var_1.b, var_1.b), vec4<i32>(var_1.b, -8485i, 16038i, var_4.b)), !var_1.a.x), _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_1.b, var_1.b, var_1.b, 0i)), min(vec4<i32>(var_1.b, -1i, var_4.b, var_4.b), vec4<i32>(var_1.b, var_4.b, -2147483647i, 2147483647i))), -2208i) >> (vec4<u32>(64104u, var_5.x, 4294967295u, ~(~1u)) % vec4<u32>(32u)));
}

