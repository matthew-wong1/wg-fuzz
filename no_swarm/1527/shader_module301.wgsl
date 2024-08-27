struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3() -> vec2<i32> {
    let var_0 = _wgslsmith_mod_i32(-(u_input.b ^ u_input.b) >> (1u % 32u), reverseBits(-5796i)) >> (_wgslsmith_mult_u32(~(~4294967295u), min(abs(~12884u), countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, 0u), vec3<u32>(42227u, 1u, 0u))))) % 32u);
    let var_1 = _wgslsmith_mult_vec4_i32(vec4<i32>(~var_0, u_input.a.x, 2147483647i, 21775i), vec4<i32>(u_input.b, _wgslsmith_sub_i32(u_input.b, abs(var_0)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(1i, -21987i), _wgslsmith_clamp_i32(1i, 32230i, 40835i)), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(u_input.a.yx, vec2<i32>(u_input.a.x, var_0)), u_input.a.xy << (vec2<u32>(1u, 17024u) % vec2<u32>(32u))))) | max(abs(vec4<i32>(-1i) * -vec4<i32>(-35047i, -38072i, -1i, -36793i)), vec4<i32>(reverseBits(u_input.a.x), 6858i, _wgslsmith_add_i32(firstTrailingBit(u_input.b), u_input.b), abs(reverseBits(-15310i))));
    let var_2 = Struct_1(62259u << (firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 4294967295u, 8854u), vec3<u32>(4294967295u, 1u, 35830u))) % 32u), (~(~vec4<i32>(var_0, var_0, 25508i, -5132i)) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u))) << (~(~vec4<u32>(0u, 5851u, 51351u, 8376u)) % vec4<u32>(32u)), !all(vec4<bool>(true, true, true, true)), vec3<f32>(_wgslsmith_f_op_f32(sign(1482f)), -1980f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-701f * -150f) + _wgslsmith_f_op_f32(max(155f, 1290f))))));
    var var_3 = Struct_1(_wgslsmith_div_u32(~(firstTrailingBit(49441u) ^ _wgslsmith_mult_u32(0u, var_2.a)), var_2.a), ~firstLeadingBit(select(-vec4<i32>(51527i, -1i, -25503i, 46460i), _wgslsmith_div_vec4_i32(var_1, vec4<i32>(var_2.b.x, 13535i, var_1.x, 1i)), !vec4<bool>(true, var_2.c, false, false))), select(var_2.d.x != var_2.d.x, any(select(!vec3<bool>(var_2.c, false, true), select(vec3<bool>(var_2.c, true, var_2.c), vec3<bool>(var_2.c, var_2.c, var_2.c), vec3<bool>(var_2.c, true, false)), select(vec3<bool>(false, false, false), vec3<bool>(var_2.c, var_2.c, false), true))), !(!var_2.c)), _wgslsmith_f_op_vec3_f32(-var_2.d));
    let var_4 = _wgslsmith_sub_i32(~78471i, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(countOneBits(_wgslsmith_mod_vec3_i32(var_2.b.wwy, vec3<i32>(u_input.b, var_3.b.x, 1i))), var_3.b.yxy), vec3<i32>(-14260i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(var_1.x, var_3.b.x), var_0, var_1.x << (58729u % 32u)), -var_2.b.x)));
    return vec2<i32>(var_2.b.x, _wgslsmith_mod_i32(-27249i, ~countOneBits(var_3.b.x))) & firstTrailingBit(var_1.zx);
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: bool, arg_3: vec2<i32>) -> bool {
    var var_0 = arg_3.x;
    var var_1 = Struct_1(~(firstTrailingBit(arg_1.a | 0u) | 1u), ~_wgslsmith_mod_vec4_i32(arg_1.b, vec4<i32>(-1i) * -arg_1.b), false, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(734f, 706f)) - arg_1.d.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_1.d.x), _wgslsmith_f_op_f32(f32(-1f) * -492f)), arg_1.d.x));
    var var_2 = _wgslsmith_clamp_u32((abs(1u) ^ var_1.a) & ~max(arg_1.a, _wgslsmith_clamp_u32(var_1.a, 17263u, 0u)), ~arg_1.a, min(~(~(~7725u)), _wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(4294967295u, var_1.a, arg_1.a, var_1.a))), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(var_1.a, var_1.a, 0u, arg_1.a)), vec4<u32>(var_1.a, 4294967295u, arg_1.a, arg_1.a) >> (vec4<u32>(arg_1.a, arg_1.a, var_1.a, var_1.a) % vec4<u32>(32u))))));
    let var_3 = vec4<bool>(_wgslsmith_sub_u32(_wgslsmith_div_u32(min(arg_1.a, 61921u), _wgslsmith_sub_u32(var_1.a, 0u)), ~countOneBits(arg_1.a)) != _wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(arg_1.a), var_1.a, arg_1.a), ~vec3<u32>(0u, arg_1.a, var_1.a)), true, var_1.c && all(vec3<bool>(all(vec4<bool>(false, arg_0.x, false, false)), all(arg_0), 0i < arg_3.x)), true);
    var_0 = -(~(~reverseBits(_wgslsmith_clamp_i32(var_1.b.x, arg_3.x, arg_3.x))));
    return any(!arg_0) || arg_2;
}

fn func_2(arg_0: vec2<i32>) -> vec4<i32> {
    var var_0 = vec3<bool>((((arg_0.x == 0i) != true) & true) || !all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false))), all(vec2<bool>(func_4(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), vec3<bool>(true, true, false)), Struct_1(0u, vec4<i32>(-23868i, arg_0.x, -19366i, -1i), false, vec3<f32>(624f, -157f, 442f)), false, func_3()), true)), 1i < -func_3().x);
    var var_1 = -abs(u_input.a.yx);
    var_1 = vec2<i32>(abs(-_wgslsmith_add_i32(_wgslsmith_mult_i32(var_1.x, 1i), max(var_1.x, -1i))), 0i);
    var var_2 = vec2<u32>(33886u, ~22416u);
    var var_3 = vec2<bool>(select(true, all(vec4<bool>(var_0.x, false, var_0.x, true)), true), !all(vec3<bool>(var_0.x, var_0.x, true)));
    return select(-select(-_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, arg_0.x, var_1.x, 8059i), vec4<i32>(-20287i, arg_0.x, u_input.b, 0i)), -vec4<i32>(arg_0.x, u_input.a.x, 25379i, var_1.x), !(!vec4<bool>(var_3.x, var_3.x, false, var_0.x))), firstTrailingBit(abs(~max(vec4<i32>(1i, arg_0.x, arg_0.x, arg_0.x), vec4<i32>(u_input.b, var_1.x, -1i, u_input.b)))), !vec4<bool>(-arg_0.x > -47606i, all(vec3<bool>(true, var_3.x, var_3.x)), true, var_0.x));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    let var_0 = abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1i) * -(arg_1.b.yxx | u_input.a), select(-abs(u_input.a), firstLeadingBit(vec3<i32>(-2147483647i, arg_1.b.x, u_input.b)) >> (select(vec3<u32>(arg_1.a, arg_1.a, arg_1.a), vec3<u32>(1u, 4294967295u, 1u), vec3<bool>(arg_1.c, false, false)) % vec3<u32>(32u)), !arg_2)));
    var var_1 = Struct_1(_wgslsmith_mult_u32(~select(1u, arg_1.a, !arg_1.c), abs(arg_1.a)), _wgslsmith_mult_vec4_i32(-func_2(arg_0 | var_0.yz), min(abs(~vec4<i32>(-10212i, arg_0.x, 3069i, -14245i)), _wgslsmith_mult_vec4_i32(arg_1.b, func_2(var_0.yx)))), arg_2.x, vec3<f32>(arg_1.d.x, _wgslsmith_div_f32(arg_1.d.x, arg_1.d.x), -350f));
    var_1 = arg_1;
    return ~var_1.a;
}

fn func_5(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: bool, arg_3: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-arg_3.d.x), 1044f, arg_3.d.x)));
    let var_1 = u_input.b;
    let var_2 = Struct_1(~((55487u ^ ~arg_3.a) << ((_wgslsmith_div_u32(0u, 7375u) << ((arg_1.x >> (26762u % 32u)) % 32u)) % 32u)), arg_3.b >> (~(~select(vec4<u32>(arg_1.x, arg_1.x, arg_1.x, 0u), vec4<u32>(41104u, 4294967295u, 47373u, arg_1.x), true)) % vec4<u32>(32u)), all(vec4<bool>(9385i > var_1, !arg_3.c, true, arg_2)) | true, _wgslsmith_f_op_vec3_f32(-arg_3.d));
    let var_3 = arg_3.d;
    var var_4 = select(_wgslsmith_mult_vec4_u32(vec4<u32>(~arg_3.a, arg_1.x, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_3.a, 9399u, 62642u), vec3<u32>(79710u, 9915u, arg_1.x))), var_2.a), _wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.x, 63135u, arg_3.a, arg_1.x), firstTrailingBit(abs(vec4<u32>(0u, var_2.a, arg_3.a, arg_1.x))), _wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, arg_3.a, arg_1.x, var_2.a), vec4<u32>(43660u, arg_1.x, arg_1.x, arg_1.x) & vec4<u32>(arg_3.a, 15339u, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(var_2.a, 4294967295u, arg_3.a, 4294967295u), vec4<u32>(arg_3.a, 4294967295u, arg_3.a, 53023u))))), min(min(abs(_wgslsmith_add_vec4_u32(vec4<u32>(var_2.a, arg_1.x, 4294967295u, var_2.a), vec4<u32>(arg_3.a, 66502u, var_2.a, 0u))), reverseBits(firstTrailingBit(vec4<u32>(0u, 16776u, var_2.a, 4294967295u)))), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, var_2.a, arg_1.x, var_2.a), abs(vec4<u32>(var_2.a, arg_1.x, 23003u, 0u))), vec4<u32>(~var_2.a, var_2.a, firstTrailingBit(12712u), _wgslsmith_sub_u32(arg_1.x, 0u)))), vec4<bool>(false, _wgslsmith_add_u32(~26947u, 1u) != ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 8760u, 39985u), vec3<u32>(1u, var_2.a, 1u)), ~_wgslsmith_sub_u32(arg_1.x, 0u) < (~60827u << (~arg_1.x % 32u)), !arg_2));
    return Struct_1(_wgslsmith_add_u32(0u, _wgslsmith_sub_u32(var_2.a, 19469u) | ~(~arg_3.a)), arg_3.b, true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-703f, var_0.x, 825f))), _wgslsmith_f_op_vec3_f32(-var_2.d), arg_2)) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(arg_3.d, vec3<f32>(var_2.d.x, arg_3.d.x, -570f))) + vec3<f32>(var_3.x, -1338f, var_2.d.x))), _wgslsmith_div_vec3_f32(var_0, _wgslsmith_div_vec3_f32(arg_3.d, var_2.d)), vec3<bool>(false, any(arg_0), any(!arg_0)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(!vec2<bool>(true, all(vec4<bool>(true, true, true, true))), vec2<u32>(0u, reverseBits(_wgslsmith_mod_u32(func_1(vec2<i32>(0i, u_input.b), Struct_1(1u, vec4<i32>(1i, u_input.a.x, u_input.b, u_input.a.x), false, vec3<f32>(-103f, 1225f, 577f)), vec3<bool>(true, false, true)), ~1u))), all(vec2<bool>(true, true)), Struct_1(~(~59725u), min(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, 10094i, u_input.b, u_input.a.x), vec4<i32>(u_input.a.x, u_input.b, u_input.b, 0i)), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.b, -2147483647i, u_input.b))), vec4<i32>(-19702i, 2147483647i, 2147483647i, u_input.b) & firstLeadingBit(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b))), true, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -764f), _wgslsmith_f_op_f32(213f - -344f)) + vec3<f32>(_wgslsmith_f_op_f32(-531f - 456f), 1298f, _wgslsmith_div_f32(-365f, -265f)))));
    var_0 = func_5(vec2<bool>(!all(select(vec3<bool>(var_0.c, false, true), vec3<bool>(false, var_0.c, false), vec3<bool>(true, false, var_0.c))), var_0.c), ~(~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0.a), ~vec2<u32>(var_0.a, var_0.a))), all(vec2<bool>(any(vec3<bool>(false, true, var_0.c)), false & var_0.c)) || (func_3().x > 36289i), func_5(!select(select(vec2<bool>(var_0.c, false), vec2<bool>(false, true), vec2<bool>(true, true)), !vec2<bool>(var_0.c, true), u_input.a.x < var_0.b.x), select(vec2<u32>(48342u >> (var_0.a % 32u), ~var_0.a), ~(vec2<u32>(1u, 4294967295u) >> (vec2<u32>(var_0.a, var_0.a) % vec2<u32>(32u))), true && var_0.c), true, func_5(vec2<bool>(any(vec2<bool>(var_0.c, var_0.c)), true), ~abs(vec2<u32>(9699u, var_0.a)), !select(var_0.c, var_0.c, true), Struct_1(4618u, vec4<i32>(28375i, -2147483647i, 1i, 2147483647i), var_0.c, _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.d.x, -204f, var_0.d.x) - var_0.d)))));
    var var_1 = Struct_1(1u, min(firstLeadingBit(_wgslsmith_add_vec4_i32(-var_0.b, vec4<i32>(u_input.a.x, -11067i, -32482i, u_input.a.x))), vec4<i32>(i32(-1i) * -var_0.b.x, var_0.b.x, func_2(vec2<i32>(u_input.b, -38195i)).x, -36642i)), all(vec3<bool>(true, false, true)), var_0.d);
    var_0 = Struct_1(29600u, vec4<i32>(var_0.b.x, reverseBits(var_1.b.x), -abs(-2147483647i), -(_wgslsmith_dot_vec4_i32(var_0.b, var_0.b) >> (_wgslsmith_mod_u32(var_0.a, 5344u) % 32u))), var_1.c, vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(sign(321f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-451f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1210f + -998f)))));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.d.x) * -979f) * -831f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-593f + _wgslsmith_f_op_f32(abs(var_0.d.x)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -338f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.d.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-705f, -1037f))), 4294967295u);
}

