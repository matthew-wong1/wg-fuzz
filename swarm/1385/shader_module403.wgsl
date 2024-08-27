struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: vec4<i32>,
    e: i32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: f32) -> i32 {
    var var_0 = Struct_1(1i, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 + -155f))), -1239f)));
    var_0 = Struct_1(i32(-1i) * -u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(402f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1829f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(arg_0)))))));
    var var_1 = ~(vec2<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_clamp_u32(4294967295u, 0u, 4294967295u)), u_input.b.x) ^ vec2<u32>(countOneBits(~u_input.b.x), _wgslsmith_mod_u32(u_input.b.x, firstLeadingBit(u_input.b.x))));
    var var_2 = ~min(-vec3<i32>(_wgslsmith_sub_i32(0i, -10129i), ~u_input.a.x, ~(-54985i)), _wgslsmith_sub_vec3_i32(vec3<i32>(_wgslsmith_sub_i32(u_input.a.x, var_0.a), _wgslsmith_dot_vec4_i32(vec4<i32>(46504i, 1733i, var_0.a, u_input.a.x), vec4<i32>(u_input.a.x, 5537i, -9133i, var_0.a)), u_input.a.x), vec3<i32>(~2147483647i, _wgslsmith_div_i32(0i, 29314i), ~var_0.a)));
    let var_3 = Struct_1(~1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-2952f)))) * var_0.b));
    return abs(var_2.x);
}

fn func_2() -> Struct_1 {
    var var_0 = ~(~_wgslsmith_mult_u32(1u, ~8289u));
    let var_1 = 49285i <= (func_3(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1351f - 171f)))) | _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(max(vec4<i32>(u_input.a.x, 5122i, u_input.a.x, u_input.a.x), vec4<i32>(u_input.a.x, -1i, u_input.a.x, 2147483647i)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x)), ~vec4<i32>(u_input.a.x, u_input.a.x, -67483i, 26568i)));
    var var_2 = Struct_1(~u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -776f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1989f + 646f), -458f))));
    let var_3 = Struct_1(_wgslsmith_mod_i32(~var_2.a, func_3(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(var_2.b)), _wgslsmith_f_op_f32(f32(-1f) * -1972f))))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(var_2.b * var_2.b))));
    var var_4 = Struct_1(_wgslsmith_sub_i32(~_wgslsmith_mult_i32(_wgslsmith_clamp_i32(var_2.a, u_input.a.x, var_2.a), var_3.a), -var_3.a), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1632f))));
    return Struct_1(reverseBits(u_input.a.x), var_3.b);
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: Struct_1, arg_3: vec3<i32>) -> Struct_1 {
    var var_0 = vec3<bool>(true, true, (_wgslsmith_f_op_f32(1188f + _wgslsmith_f_op_f32(2169f - -105f)) < arg_2.b) && all(select(vec4<bool>(arg_1, arg_0, true, true), !vec4<bool>(false, false, arg_1, arg_0), vec4<bool>(arg_0, true, true, arg_0))));
    var var_1 = u_input.b.x;
    var_0 = !vec3<bool>(all(vec4<bool>(arg_1, arg_0, any(vec3<bool>(false, var_0.x, true)), var_0.x)), true, min(u_input.b.x, u_input.b.x & u_input.b.x) > reverseBits(u_input.b.x | u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(785f, arg_2.b) * vec2<f32>(arg_2.b, 908f)))))) + _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(trunc(func_2().b)), arg_2.b))));
    var var_3 = _wgslsmith_f_op_vec2_f32(var_2 + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(798f, _wgslsmith_div_f32(767f, -1661f)))))));
    return Struct_1(select(_wgslsmith_add_i32(-68656i, func_2().a), _wgslsmith_div_i32(arg_3.x, ~(-31175i) | arg_3.x), true), _wgslsmith_f_op_f32(-arg_2.b));
}

fn func_5(arg_0: vec3<i32>, arg_1: vec2<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = arg_3;
    let var_1 = vec2<bool>(any(select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(select(false, true, false), all(vec4<bool>(false, false, true, false))))), false);
    let var_2 = var_1;
    let var_3 = var_1.x;
    let var_4 = !(!(!select(vec2<bool>(true, var_3), var_2, true)));
    return Struct_1(-arg_3.a, _wgslsmith_f_op_f32(round(arg_2.b)));
}

fn func_1(arg_0: i32, arg_1: bool, arg_2: f32) -> u32 {
    var var_0 = !vec2<bool>(true, all(select(!vec2<bool>(false, arg_1), vec2<bool>(arg_1, false), true)));
    let var_1 = func_5(firstLeadingBit(vec3<i32>(71080i, -29015i, u_input.a.x)), _wgslsmith_sub_vec2_i32(select(_wgslsmith_mod_vec2_i32(u_input.a, vec2<i32>(-18525i, 0i)), -vec2<i32>(-1i, u_input.a.x), arg_1 || var_0.x), u_input.a & _wgslsmith_add_vec2_i32(vec2<i32>(-2147483647i, -1i), u_input.a)) << (u_input.b.wy % vec2<u32>(32u)), Struct_1(~_wgslsmith_div_i32(_wgslsmith_sub_i32(arg_0, u_input.a.x), -u_input.a.x), -3080f), func_4(false, false, func_2(), select(-(vec3<i32>(u_input.a.x, -2147483647i, u_input.a.x) | vec3<i32>(-7187i, u_input.a.x, -1i)), -select(vec3<i32>(-1i, -2147483647i, arg_0), vec3<i32>(-2147483647i, u_input.a.x, -2147483647i), vec3<bool>(arg_1, var_0.x, true)), false)));
    let var_2 = ~4294967295u | u_input.b.x;
    var_0 = select(select(vec2<bool>(true, any(select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(false, var_0.x)))), select(vec2<bool>(true & var_0.x, !arg_1), select(select(vec2<bool>(var_0.x, arg_1), vec2<bool>(arg_1, var_0.x), false), !vec2<bool>(var_0.x, true), vec2<bool>(false, arg_1)), !(!vec2<bool>(var_0.x, false))), select(vec2<bool>(var_0.x, false), vec2<bool>(true, !arg_1), all(vec2<bool>(true, arg_1)) || any(vec2<bool>(var_0.x, true)))), select(vec2<bool>(!all(vec4<bool>(arg_1, false, arg_1, false)), true), !(!(!vec2<bool>(arg_1, arg_1))), select(select(select(vec2<bool>(true, false), vec2<bool>(true, false), false), select(vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, true), var_0.x), !vec2<bool>(false, var_0.x)), vec2<bool>(true, var_0.x), ~u_input.b.x > ~u_input.b.x)), !arg_1);
    var_0 = vec2<bool>(false, true);
    return 50200u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(false, false, all(vec2<bool>(true, true)));
    let var_1 = var_0;
    let var_2 = func_1(-(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, 14623i, 2147483647i)), abs(2147483647i)) & -8026i), true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1486f)), -769f)));
    let var_3 = false;
    var var_4 = func_5(~firstLeadingBit(-vec3<i32>(2147483647i, -19063i, 0i)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(u_input.a, firstTrailingBit(u_input.a)), ~(vec2<i32>(u_input.a.x, u_input.a.x) >> (~u_input.b.yw % vec2<u32>(32u)))), func_4(all(select(vec4<bool>(var_1.x, var_3, var_0.x, false), vec4<bool>(true, true, true, true), var_0.x)), select(true, !(var_0.x & true), var_0.x), Struct_1(~u_input.a.x & u_input.a.x, -1532f), ~_wgslsmith_mod_vec3_i32(reverseBits(vec3<i32>(19432i, 2147483647i, u_input.a.x)), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), Struct_1(u_input.a.x, _wgslsmith_f_op_f32(max(-405f, -718f))));
    var var_5 = Struct_1(_wgslsmith_dot_vec2_i32(-vec2<i32>(abs(-1i), u_input.a.x), ~_wgslsmith_mod_vec2_i32(reverseBits(u_input.a), vec2<i32>(-1i, var_4.a))), _wgslsmith_f_op_f32(-var_4.b));
    let var_6 = func_5(_wgslsmith_mult_vec3_i32(min(vec3<i32>(-var_4.a, i32(-1i) * -29394i, -31310i), reverseBits(_wgslsmith_add_vec3_i32(vec3<i32>(5270i, 56780i, var_4.a), vec3<i32>(var_5.a, -6926i, var_5.a)))), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(0i, var_5.a, var_5.a) << (u_input.b.xxy % vec3<u32>(32u)), vec3<i32>(28865i, -90737i, 2112i)), -(~vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a, func_5(_wgslsmith_mult_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, u_input.a.x, 24721i), vec3<i32>(u_input.a.x, 15558i, u_input.a.x))), abs(-vec3<i32>(5575i, var_5.a, var_5.a))), -firstTrailingBit(vec2<i32>(u_input.a.x, var_5.a)), func_2(), func_4((false | var_0.x) & all(vec4<bool>(var_3, var_1.x, false, var_1.x)), any(vec2<bool>(var_0.x, false)), func_5(~vec3<i32>(u_input.a.x, var_5.a, var_5.a), vec2<i32>(-26096i, var_4.a), Struct_1(1i, 824f), Struct_1(var_5.a, var_5.b)), vec3<i32>(var_4.a >> (1u % 32u), 1i, 7260i))), Struct_1(-2147483647i, var_4.b));
    let var_7 = u_input.b.wxz;
    let x = u_input.a;
    s_output = StorageBuffer(min(-34562i, var_5.a) << (~(~u_input.b.x) % 32u), var_7.x, -vec4<i32>(max(2147483647i, 0i | u_input.a.x), max(u_input.a.x, -2500i) >> (_wgslsmith_dot_vec3_u32(vec3<u32>(0u, u_input.b.x, var_2), vec3<u32>(4294967295u, 42525u, 4294967295u)) % 32u), 0i, -1i), ~_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(var_6.a, var_4.a, u_input.a.x, var_5.a), vec4<i32>(39296i, var_5.a, 0i, 2147483647i)), ~vec4<i32>(-2147483647i, 35594i, -2147483647i, 2147483647i) ^ (vec4<i32>(-34505i, var_5.a, var_4.a, var_5.a) ^ vec4<i32>(var_5.a, u_input.a.x, u_input.a.x, u_input.a.x))), u_input.a.x);
}

