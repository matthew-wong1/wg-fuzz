struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec2<u32>,
    d: vec4<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: f32,
    d: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> vec4<bool> {
    let var_0 = select(vec4<bool>(!global0.a.d.x, !all(vec3<bool>(true, global0.a.d.x, global0.a.d.x)), true, true == any(global0.a.d.yy)), vec4<bool>(true, all(global0.a.a.xzw), all(!vec4<bool>(global0.a.d.x, global0.a.a.x, false, false)) || all(select(vec2<bool>(true, global0.a.a.x), vec2<bool>(false, global0.a.d.x), global0.a.d.x)), select(false, true, global0.a.d.x) || true), global0.a.d);
    var var_1 = Struct_1(select(select(var_0, select(vec4<bool>(true, false, true, false), select(var_0, vec4<bool>(var_0.x, false, global0.a.a.x, true), true), any(vec4<bool>(true, true, var_0.x, false))), !(!vec4<bool>(true, false, global0.a.a.x, var_0.x))), var_0, !select(select(vec4<bool>(global0.a.a.x, global0.a.d.x, var_0.x, true), var_0, true), select(vec4<bool>(true, false, var_0.x, true), vec4<bool>(true, var_0.x, false, false), var_0.x), vec4<bool>(true, false, var_0.x, true))), global0.a.b, global0.a.e.xy, vec4<bool>(!any(select(var_0.wz, global0.a.a.wz, true)), global0.a.d.x, u_input.b >= firstLeadingBit(u_input.c << (u_input.a % 32u)), false), vec4<u32>(~(~(~1u)), u_input.a, ~global0.a.b, u_input.a));
    let var_2 = global0.a.e;
    global0 = Struct_3(Struct_1(vec4<bool>(-47241i >= select(-34759i, u_input.c, var_0.x), all(select(var_1.a.yz, var_0.wz, var_1.d.zy)), !all(vec3<bool>(true, global0.a.a.x, global0.a.d.x)), global0.a.a.x), 10883u, ~(~vec2<u32>(u_input.a, 1u)), select(!vec4<bool>(global0.a.a.x, false, var_0.x, true), !select(var_0, global0.a.a, false), select(var_1.d, vec4<bool>(global0.a.d.x, global0.a.d.x, global0.a.a.x, global0.a.a.x), true)), ~vec4<u32>(global0.a.e.x << (global0.a.e.x % 32u), 111839u, ~u_input.a, abs(var_1.b))));
    var_1 = Struct_1(select(!vec4<bool>(true, global0.a.c.x >= var_1.b, u_input.b >= 6176i, true), var_1.a, var_1.a.x), _wgslsmith_mult_u32(49152u, 4230u), countOneBits(countOneBits(global0.a.c)), global0.a.d, ~(reverseBits(global0.a.e | vec4<u32>(17888u, 30659u, 1u, 22927u)) ^ (vec4<u32>(var_1.b, 72368u, global0.a.b, 33157u) ^ var_1.e)));
    return vec4<bool>(true, all(!(!(!vec4<bool>(false, true, var_1.d.x, var_0.x)))), any(select(select(vec2<bool>(global0.a.a.x, true), vec2<bool>(false, false), var_0.x), select(!var_0.zz, vec2<bool>(var_1.a.x, true), !var_1.d.ww), true)), any(var_1.a.yxy));
}

fn func_2(arg_0: f32) -> vec4<bool> {
    let var_0 = ~10618u;
    global0 = Struct_3(global0.a);
    global0 = Struct_3(global0.a);
    global0 = Struct_3(global0.a);
    var var_1 = Struct_1(!select(vec4<bool>(true, !global0.a.d.x, true, var_0 >= 78772u), global0.a.a, !(!global0.a.d)), global0.a.b, select(~(~reverseBits(global0.a.e.zy)), _wgslsmith_clamp_vec2_u32(~global0.a.e.xx >> (global0.a.e.yw % vec2<u32>(32u)), ~(~vec2<u32>(global0.a.b, 33134u)), vec2<u32>(reverseBits(76904u), var_0)), true), !(!func_3()), firstLeadingBit(_wgslsmith_add_vec4_u32(~min(vec4<u32>(133449u, 0u, 36960u, var_0), global0.a.e), min(~global0.a.e, _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 4294967295u, 25164u, u_input.a), vec4<u32>(58273u, 61951u, 42765u, 29101u))))));
    return select(vec4<bool>(true & !(!var_1.d.x), func_3().x, var_1.a.x, !global0.a.d.x), select(!var_1.a, vec4<bool>(true, any(vec4<bool>(false, false, global0.a.d.x, var_1.d.x)), !(!global0.a.d.x), !(1u <= u_input.a)), var_1.a.x && all(vec4<bool>(var_1.d.x, false, var_1.d.x, global0.a.d.x))), global0.a.a.x);
}

fn func_1(arg_0: u32, arg_1: bool, arg_2: vec4<u32>, arg_3: bool) -> Struct_3 {
    var var_0 = func_2(-1450f);
    global0 = Struct_3(Struct_1(func_2(796f), _wgslsmith_mult_u32(arg_2.x, _wgslsmith_div_u32(reverseBits(global0.a.c.x), min(1u, 16768u))), global0.a.c, select(func_2(_wgslsmith_f_op_f32(-1795f - -1190f)), func_2(285f), vec4<bool>(any(global0.a.a), true, func_2(-508f).x, arg_1)), global0.a.e));
    var var_1 = vec4<i32>(u_input.b, abs(min(countOneBits(7600i << (global0.a.b % 32u)), u_input.c)), i32(-1i) * -11158i, reverseBits(abs(~_wgslsmith_sub_i32(u_input.b, u_input.c))));
    var_1 = min(~abs(-countOneBits(vec4<i32>(64694i, 0i, 1i, -2147483647i))), countOneBits(vec4<i32>(var_1.x, ~countOneBits(u_input.c), var_1.x, abs(-var_1.x))));
    var_0 = global0.a.d;
    return Struct_3(Struct_1(global0.a.a, ~1u, arg_2.zy, global0.a.d, vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, u_input.a, 4294967295u, 60098u), vec4<u32>(135471u, 0u, arg_0, arg_2.x)), arg_0, 37007u, ~arg_0)));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<u32>, arg_2: Struct_2) -> u32 {
    global0 = arg_0;
    let var_0 = -1920f;
    var var_1 = var_0;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0))))), _wgslsmith_f_op_f32(f32(-1f) * -1064f), 1000f, -536f);
    return arg_2.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<u32>(u_input.a, u_input.a, func_4(func_1(_wgslsmith_add_u32(71872u, u_input.a) << ((0u >> (u_input.a % 32u)) % 32u), false, global0.a.e, global0.a.d.x), ~(vec2<u32>(46266u, u_input.a) << (countOneBits(global0.a.c) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -763f), _wgslsmith_div_f32(1360f, 1965f))), ~select(vec4<i32>(u_input.c, 22493i, 1i, u_input.b), vec4<i32>(u_input.c, u_input.b, 17016i, u_input.c), false), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-343f - -151f) * _wgslsmith_f_op_f32(abs(1000f))), ~_wgslsmith_add_u32(4294967295u, global0.a.c.x))), (~4294967295u >> (select(_wgslsmith_div_u32(0u, 4294967295u), 20551u, !global0.a.a.x) % 32u)) >> (~1u % 32u));
    global0 = func_1(1u, func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))).x, ~vec4<u32>(select(0u, 17686u, 45152i > u_input.b), max(1u, 4294967295u) ^ _wgslsmith_mod_u32(var_0.x, 4294967295u), var_0.x, ~1u), true);
    let var_1 = reverseBits(select(1i >> (firstTrailingBit(~global0.a.c.x) % 32u), min(-1i, _wgslsmith_div_i32(-u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 59188i), vec4<i32>(u_input.c, 23583i, 19840i, u_input.c)))), global0.a.a.x));
    global0 = Struct_3(func_1(func_4(func_1(global0.a.b, true, min(var_0, global0.a.e), select(global0.a.a.x, global0.a.a.x, false)), var_0.zw, Struct_2(_wgslsmith_f_op_f32(max(1000f, 201f)), max(vec4<i32>(-1371i, 1i, -76675i, u_input.c), vec4<i32>(99484i, -19465i, -2147483647i, -2147483647i)), 192f, 34956u)), any(vec4<bool>(false, global0.a.a.x, global0.a.d.x, true)) & ((var_1 > u_input.c) && true), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(17157u, u_input.a), _wgslsmith_mod_u32(u_input.a, 1u), abs(40282u), global0.a.c.x), abs(vec4<u32>(4294967295u, 12848u, u_input.a, var_0.x))), _wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b, -1i), _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, 33978i, u_input.c), vec4<i32>(2959i, -21644i, 1i, u_input.b))) >= _wgslsmith_dot_vec4_i32(abs(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, var_1, 0i, var_1), vec4<i32>(-2147483647i, u_input.c, u_input.b, var_1)))).a);
    var var_2 = select(global0.a.d.wz, global0.a.d.zy, true);
    global0 = func_1(~(~(~u_input.a) << (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(var_0.xzz, global0.a.e.xyx), _wgslsmith_div_u32(var_0.x, 4294967295u)) % 32u)), !var_2.x, _wgslsmith_mod_vec4_u32(select(vec4<u32>(max(global0.a.e.x, var_0.x), ~u_input.a, 89979u, firstTrailingBit(global0.a.b)), _wgslsmith_div_vec4_u32(vec4<u32>(5483u, global0.a.c.x, var_0.x, var_0.x), global0.a.e), func_3()), select(vec4<u32>(var_0.x, _wgslsmith_dot_vec2_u32(vec2<u32>(35374u, global0.a.c.x), vec2<u32>(var_0.x, global0.a.e.x)), ~35947u, 537u), ~(global0.a.e >> (vec4<u32>(4294967295u, var_0.x, 1u, u_input.a) % vec4<u32>(32u))), !(!global0.a.d))), true);
    var var_3 = Struct_2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2929f - _wgslsmith_f_op_f32(abs(651f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-449f)))))), ~_wgslsmith_add_vec4_i32(~vec4<i32>(50360i, -9625i, 0i, -34926i), select(vec4<i32>(var_1, u_input.c, 2147483647i, -2147483647i), vec4<i32>(var_1, -1i, var_1, u_input.c), true)) & vec4<i32>(-u_input.c << (_wgslsmith_div_u32(u_input.a, 46639u) % 32u), -37145i, _wgslsmith_mult_i32(4383i & var_1, u_input.b), 2147483647i), _wgslsmith_f_op_f32(-1112f + _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-420f, 459f)))), ~global0.a.b);
    var var_4 = _wgslsmith_add_vec3_u32(min(~(~(~vec3<u32>(38911u, global0.a.c.x, 12946u))), ~vec3<u32>(var_3.d, _wgslsmith_div_u32(var_3.d, 1u), ~var_0.x)), ~(~global0.a.e.yyy));
    let x = u_input.a;
    s_output = StorageBuffer(-(~firstTrailingBit(vec4<i32>(u_input.c, 1i, u_input.b, 0i))), 1u, _wgslsmith_f_op_f32(-1155f + -490f));
}

