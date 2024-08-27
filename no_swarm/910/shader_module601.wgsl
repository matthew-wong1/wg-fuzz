struct Struct_1 {
    a: bool,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: Struct_2,
    d: vec4<f32>,
    e: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<u32>, arg_1: u32, arg_2: Struct_2) -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_f32(round(-1136f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -334f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(645f + 338f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-300f, 131f)))), false)), Struct_2(select(arg_2.a, arg_2.b.b, vec2<bool>(true, u_input.b >= u_input.b)), arg_2.b), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(695f, 1889f, 353f, 1005f), vec4<f32>(-943f, 870f, 904f, -2219f), vec4<bool>(arg_2.b.a, arg_2.b.a, arg_2.b.a, true)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(-193f, -979f, 1555f, -439f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-190f, 1000f, 401f, 413f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(106f, -1863f, -884f, -482f) + vec4<f32>(580f, 291f, -1647f, 2495f)) * vec4<f32>(203f, 706f, 186f, -679f)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(vec4<f32>(492f, -758f, -614f, 826f), vec4<f32>(1510f, 1193f, 481f, -282f)))), !vec4<bool>(arg_2.b.a, arg_2.b.a, true, arg_2.b.a)))), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(135f, 909f)), -1310f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-211f))), -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(1000f, 525f, false))))))));
    let var_1 = ~(var_0.c.b.c.yx << (~countOneBits(~vec2<u32>(var_0.c.b.c.x, arg_1)) % vec2<u32>(32u)));
    var var_2 = vec4<bool>(all(!vec3<bool>(!arg_2.b.a, true, 22611u <= arg_2.b.c.x)), true, any(select(vec4<bool>(all(vec2<bool>(arg_2.b.a, var_0.c.b.a)), !arg_2.b.a, arg_2.b.b.x == var_0.c.a.x, any(vec2<bool>(true, var_0.c.b.a))), !select(vec4<bool>(false, false, var_0.c.b.a, var_0.c.b.a), vec4<bool>(false, var_0.c.b.a, var_0.c.b.a, false), false), select(select(vec4<bool>(var_0.c.b.a, var_0.c.b.a, false, var_0.c.b.a), vec4<bool>(true, false, false, arg_2.b.a), arg_2.b.a), !vec4<bool>(var_0.c.b.a, arg_2.b.a, arg_2.b.a, arg_2.b.a), select(vec4<bool>(var_0.c.b.a, var_0.c.b.a, false, var_0.c.b.a), vec4<bool>(true, arg_2.b.a, var_0.c.b.a, false), vec4<bool>(arg_2.b.a, var_0.c.b.a, arg_2.b.a, false))))), all(vec4<bool>(false, true & !arg_2.b.a, true, false)));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(var_0.e.x, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(1171f + -305f))))), var_0.d.x, var_0.c.b.a)), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1278f * _wgslsmith_f_op_f32(exp2(var_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_0.d.x)) + _wgslsmith_f_op_f32(var_0.b * -2424f))))), Struct_2(-arg_2.b.b, Struct_1(!select(false, var_2.x, arg_2.b.a), vec2<i32>(_wgslsmith_mult_i32(46101i, var_0.c.a.x), ~var_0.c.b.b.x), _wgslsmith_div_vec3_u32(firstTrailingBit(vec3<u32>(arg_0.x, 34477u, arg_1)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a, 0u), vec3<u32>(arg_2.b.c.x, 0u, 22970u))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-571f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0.e.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(var_0.a)), _wgslsmith_f_op_f32(f32(-1f) * -505f)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1068f)), var_0.d.x, _wgslsmith_f_op_f32(-var_0.a), _wgslsmith_f_op_f32(-1000f - -2081f)) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_0.a, 3215f, -193f, var_0.a)))))));
    let var_4 = u_input.c;
    return _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), var_0.b), var_0.e.x));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(true, _wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(min(min(vec2<i32>(2147483647i, -2147483647i), vec2<i32>(19788i, 5787i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b), vec2<i32>(u_input.b, u_input.b))), vec2<i32>(~0i, u_input.b)), ~(~vec2<i32>(27303i, -2147483647i) | _wgslsmith_sub_vec2_i32(vec2<i32>(17063i, u_input.b), vec2<i32>(u_input.b, u_input.b)))), _wgslsmith_sub_vec3_u32(~vec3<u32>(u_input.a, 11567u, u_input.c) | vec3<u32>(~2618u, _wgslsmith_mod_u32(1u, u_input.a), _wgslsmith_div_u32(u_input.c, 4294967295u)), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, u_input.a, u_input.c) & _wgslsmith_add_vec3_u32(vec3<u32>(u_input.c, 10697u, 49642u), vec3<u32>(u_input.c, 0u, 0u)), ~abs(vec3<u32>(u_input.c, u_input.c, u_input.a)))));
    let var_1 = !var_0.a;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1662f - -1379f) * _wgslsmith_f_op_f32(f32(-1f) * -1787f)))) * _wgslsmith_f_op_f32(min(-1333f, _wgslsmith_f_op_f32(round(-1100f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<u32>(14955u, 0u, 0u, 8958u), u_input.a, Struct_2(vec2<i32>(-38800i, -1i), Struct_1(true, var_0.b, var_0.c))))))), Struct_2(var_0.b | var_0.b, var_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1636f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(trunc(229f)), _wgslsmith_f_op_f32(ceil(-1103f))), vec4<f32>(104f, -1947f, _wgslsmith_f_op_f32(f32(-1f) * -1967f), _wgslsmith_f_op_f32(-1590f * 2339f)))) * _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-475f, 1538f, -1000f, 1133f)) * vec4<f32>(-648f, -523f, -746f, 1475f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1156f, 233f, 2016f, -1053f), vec4<f32>(-1000f, 877f, -779f, -1239f))))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-482f, -1000f, 356f, 1177f))))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(609f + _wgslsmith_f_op_f32(min(-465f, -968f)))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(612f, _wgslsmith_div_f32(var_2.e.x, var_2.d.x)), _wgslsmith_f_op_f32(-var_2.e.x))), true)), _wgslsmith_f_op_f32(exp2(var_2.e.x)), Struct_2(~vec2<i32>(u_input.b, firstLeadingBit(var_0.b.x)), Struct_1(var_1, ~vec2<i32>(15025i, var_0.b.x) & var_2.c.a, var_2.c.b.c)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(countOneBits(vec4<u32>(67833u, var_2.c.b.c.x, 21820u, 68269u)), firstLeadingBit(26270u), Struct_2(vec2<i32>(var_2.c.b.b.x, -2147483647i), var_2.c.b))) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2.b, var_2.d.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b)), -1287f, _wgslsmith_f_op_f32(trunc(var_2.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.e.x, 156f, -1000f, var_2.a) * vec4<f32>(var_2.d.x, var_2.b, var_2.a, var_2.d.x))))))));
    var var_4 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_3.e.x)))) * _wgslsmith_div_f32(var_2.d.x, var_2.b));
    return Struct_1(all(!(!vec3<bool>(var_1, var_0.a, var_3.c.b.a))), var_0.b << (var_2.c.b.c.xy % vec2<u32>(32u)), max(firstTrailingBit(select(var_0.c, var_0.c, vec3<bool>(true, false, false))), ~select(var_0.c, ~var_2.c.b.c, false)));
}

fn func_4(arg_0: vec2<i32>, arg_1: bool, arg_2: Struct_2) -> Struct_3 {
    let var_0 = select(vec3<bool>(true, true, true), vec3<bool>(any(select(vec4<bool>(true, arg_2.b.a, false, false), vec4<bool>(arg_2.b.a, arg_1, true, arg_2.b.a), select(vec4<bool>(true, true, arg_2.b.a, false), vec4<bool>(arg_2.b.a, arg_1, arg_2.b.a, arg_1), false))), true, !(!(arg_1 || true))), select(vec3<bool>(!(!arg_2.b.a), arg_1, arg_1), !(!(!vec3<bool>(arg_2.b.a, false, false))), vec3<bool>(false, false, true)));
    let var_1 = _wgslsmith_sub_vec4_i32(firstTrailingBit(vec4<i32>(0i, func_2().b.x, 2147483647i, _wgslsmith_clamp_i32(u_input.b, -34759i, arg_2.a.x)) & (_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 0i, u_input.b, arg_2.b.b.x), vec4<i32>(u_input.b, arg_2.a.x, 98947i, 2147483647i)) ^ (vec4<i32>(u_input.b, -40461i, 6373i, arg_0.x) >> (vec4<u32>(4294967295u, 0u, 12131u, u_input.a) % vec4<u32>(32u))))), firstTrailingBit(-(~vec4<i32>(u_input.b, arg_2.b.b.x, arg_2.b.b.x, -2147483647i))) & vec4<i32>(_wgslsmith_div_i32(min(0i, -43530i), arg_0.x), u_input.b & ~(-19594i), reverseBits(-arg_0.x), 1i << (arg_2.b.c.x % 32u)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1291f, -376f)) * _wgslsmith_f_op_f32(1000f + -963f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-424f + 309f), -423f))), -1305f) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1664f))), -948f)));
    let var_3 = ~max(4294967295u, 39860u);
    let var_4 = reverseBits(25787i);
    return Struct_3(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-527f * _wgslsmith_f_op_f32(select(-1141f, -640f, var_0.x)))), -556f)), _wgslsmith_f_op_f32(f32(-1f) * -474f), arg_2, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-1496f - 749f), 474f, -484f, _wgslsmith_f_op_f32(step(1845f, 2472f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(185f, -1000f, 292f, -949f), vec4<f32>(-1000f, -1000f, -490f, -619f))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(147f, _wgslsmith_f_op_f32(628f * -278f), _wgslsmith_f_op_f32(f32(-1f) * -1356f), -492f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(903f, -1000f, 162f, 222f)) - _wgslsmith_div_vec4_f32(vec4<f32>(-736f, 298f, 521f, 318f), vec4<f32>(705f, -1241f, 1076f, -336f))))), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1109f, 664f, -777f, 123f)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-375f, 2115f, 1000f, -159f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-857f, -2168f, -1941f, 1773f)))))));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: vec4<i32>, arg_3: vec2<bool>) -> vec2<u32> {
    let var_0 = Struct_4(func_4(vec2<i32>(reverseBits(-1i), -arg_2.x), all(vec2<bool>(true, true)), Struct_2(~select(vec2<i32>(24601i, arg_2.x), arg_2.xx, arg_3.x), func_2())));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(385f * arg_1), -764f))))) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -614f), var_0.a.a)))));
    let var_2 = _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.a.c.a.x, -1i, _wgslsmith_div_i32(func_2().b.x, 1i)), _wgslsmith_mod_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_2.x, 2147483647i, _wgslsmith_dot_vec4_i32(arg_2, arg_2)), arg_2.zzx), vec3<i32>(arg_2.x, _wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.x, 29081i, 0i), vec3<i32>(2147483647i, -7620i, arg_2.x)), 0i)));
    var var_3 = var_0.a.c;
    let var_4 = var_2;
    return vec2<u32>(4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(~var_3.b.c.x, 4294967295u), ~(~vec2<u32>(var_0.a.c.b.c.x, u_input.c))) & 16478u);
}

fn func_5(arg_0: u32, arg_1: vec2<u32>, arg_2: i32) -> Struct_4 {
    var var_0 = true;
    var_0 = true;
    var_0 = false;
    var var_1 = func_4(_wgslsmith_mod_vec2_i32(~_wgslsmith_div_vec2_i32(-vec2<i32>(2147483647i, 2147483647i), ~vec2<i32>(-2147483647i, -18021i)), vec2<i32>(-(i32(-1i) * -25620i), u_input.b)), true, Struct_2(-countOneBits(vec2<i32>(u_input.b, u_input.b)), Struct_1(arg_1.x >= 1u, vec2<i32>(arg_2, abs(u_input.b)), ~vec3<u32>(10854u, arg_0, u_input.c) | min(vec3<u32>(u_input.c, 22170u, arg_0), vec3<u32>(arg_1.x, arg_1.x, arg_1.x)))));
    var_1 = Struct_3(var_1.d.x, _wgslsmith_f_op_f32(trunc(1224f)), Struct_2(func_2().b, var_1.c.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(sign(var_1.a)), _wgslsmith_f_op_f32(var_1.d.x + 1758f), _wgslsmith_f_op_f32(-var_1.b), _wgslsmith_f_op_f32(floor(165f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-604f, -751f, 701f, -2134f)), vec4<f32>(-1077f, var_1.d.x, -1160f, var_1.a)))))), _wgslsmith_div_vec4_f32(var_1.d, _wgslsmith_f_op_vec4_f32(vec4<f32>(870f, _wgslsmith_f_op_f32(622f * 791f), var_1.b, _wgslsmith_div_f32(var_1.d.x, 1459f)) + vec4<f32>(319f, _wgslsmith_f_op_f32(142f + 550f), var_1.e.x, func_4(vec2<i32>(-1i, 1133i), false, var_1.c).e.x))));
    return Struct_4(Struct_3(-1000f, var_1.a, var_1.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.a, _wgslsmith_f_op_f32(var_1.e.x - var_1.d.x), var_1.a, _wgslsmith_f_op_f32(-var_1.a))), var_1.e));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-1f);
    var var_1 = func_5(_wgslsmith_dot_vec2_u32(~_wgslsmith_mod_vec2_u32(~vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, u_input.a)), _wgslsmith_mult_vec2_u32(vec2<u32>(_wgslsmith_clamp_u32(u_input.a, 0u, 18663u), 1u), ~func_1(vec2<bool>(true, false), -657f, vec4<i32>(u_input.b, u_input.b, u_input.b, -25692i), vec2<bool>(false, false)))), _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(23937u, u_input.c), vec2<u32>(4294967295u, u_input.c)) & countOneBits(vec2<u32>(70739u, 1u)), func_2().c.zz) ^ ~(~countOneBits(vec2<u32>(0u, 0u))), ~u_input.b);
    var_1 = Struct_4(func_4(vec2<i32>(var_1.a.c.a.x, 38437i), true, var_1.a.c));
    let var_2 = ~vec4<u32>(abs(_wgslsmith_div_u32(u_input.c, 59842u)) >> (1u % 32u), var_1.a.c.b.c.x, ~(~_wgslsmith_sub_u32(0u, u_input.a)), _wgslsmith_mod_u32(20320u, firstTrailingBit(u_input.c) | 0u));
    var var_3 = func_2();
    var_0 = -1780f;
    let var_4 = _wgslsmith_f_op_vec2_f32(step(vec2<f32>(298f, _wgslsmith_f_op_f32(abs(2511f))), var_1.a.d.ww));
    let x = u_input.a;
    s_output = StorageBuffer(-(select(~vec3<i32>(var_3.b.x, u_input.b, u_input.b), abs(vec3<i32>(var_3.b.x, -1i, -16656i)), func_2().a) & vec3<i32>(select(35384i, u_input.b, false), 8661i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.b.x, var_1.a.c.b.b.x, u_input.b), vec3<i32>(var_1.a.c.a.x, var_1.a.c.b.b.x, var_1.a.c.a.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-func_4(vec2<i32>(var_3.b.x, -29159i), var_1.a.c.b.a, func_4(var_1.a.c.b.b, var_1.a.c.b.a, var_1.a.c).c).d.x))), _wgslsmith_clamp_i32(-1i, func_5(min(var_3.c.x, 60204u), _wgslsmith_add_vec2_u32(min(vec2<u32>(u_input.c, 7678u), vec2<u32>(u_input.c, var_1.a.c.b.c.x)), vec2<u32>(var_2.x, var_1.a.c.b.c.x)), -33958i).a.c.b.b.x, _wgslsmith_mult_i32(var_1.a.c.a.x, -2147483647i)));
}

