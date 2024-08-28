struct Struct_1 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: f32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: vec4<i32>) -> vec4<i32> {
    var var_0 = 67605u;
    var var_1 = Struct_2(Struct_1(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -347f), _wgslsmith_f_op_f32(f32(-1f) * -1421f)), -282f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1448f * -818f)))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(346f, 630f, -286f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-683f, 559f, 2877f), vec3<f32>(1048f, 1269f, -618f))))), select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true))))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), false)), _wgslsmith_clamp_i32(~arg_0.x, firstTrailingBit(u_input.a), u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1631f))))), Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, -547f, -586f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(2051f, -953f, 169f) + vec3<f32>(1000f, -1000f, 1000f)), vec3<bool>(true, false, true))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-1069f, -645f, 526f)))), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1f, 1f, 1f))), vec4<bool>(true, true, true, true)), Struct_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-752f, _wgslsmith_f_op_f32(497f * 310f), _wgslsmith_f_op_f32(-161f + -498f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(-696f)), 1244f, 1957f)), !select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true), true)));
    let var_2 = Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(-var_1.e.b), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-161f, var_1.c, -404f))))), vec4<bool>(var_1.e.c.x, var_1.a.c.x, !(var_1.e.c.x & var_1.e.c.x), all(vec4<bool>(var_1.d.c.x, false, true, true)) | true)), -(-2147483647i ^ (-2147483647i & (0i ^ u_input.a))), _wgslsmith_f_op_f32(step(var_1.e.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-590f, var_1.a.b.x, var_1.a.c.x)))))), var_1.d, var_1.d);
    var_0 = _wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, ~(u_input.b.x << (u_input.b.x % 32u))) << (14485u % 32u);
    let var_3 = vec3<f32>(_wgslsmith_f_op_f32(abs(var_1.c)), _wgslsmith_f_op_f32(f32(-1f) * -891f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -163f) + _wgslsmith_div_f32(1620f, var_1.d.b.x))))));
    return -(abs(vec4<i32>(firstTrailingBit(u_input.c), arg_1.x, _wgslsmith_div_i32(arg_1.x, var_1.b), 2147483647i)) ^ _wgslsmith_add_vec4_i32(-(~vec4<i32>(arg_0.x, arg_1.x, u_input.a, u_input.a)), arg_1 << (~vec4<u32>(41975u, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u))));
}

fn func_2() -> Struct_1 {
    var var_0 = ~firstLeadingBit(_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, u_input.c, u_input.c, u_input.a) << (vec4<u32>(49528u, 0u, 1u, u_input.b.x) % vec4<u32>(32u)), abs(vec4<i32>(u_input.a, 1i, -2147483647i, -30009i) | vec4<i32>(u_input.a, 43135i, u_input.c, u_input.c))));
    var_0 = vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(-46644i, 2147483647i, var_0.x, u_input.a), vec4<i32>(u_input.a, max(-21905i, -2147483647i), ~2147483647i, var_0.x)), firstTrailingBit(_wgslsmith_add_i32(u_input.a, u_input.a)) | _wgslsmith_mod_i32(~(-1i), ~var_0.x)), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c, 0i, var_0.x, var_0.x), vec4<i32>(-2147483647i, 2147483647i, 1i, u_input.a)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(62403u, 222u, 80203u, 1u), vec4<u32>(u_input.b.x, 27648u, 0u, u_input.b.x)) % vec4<u32>(32u)), vec4<i32>(var_0.x, var_0.x, 1i, -14206i)), _wgslsmith_clamp_vec4_i32(countOneBits(func_3(var_0.yxy, vec4<i32>(var_0.x, u_input.a, 1i, -46284i))), vec4<i32>(_wgslsmith_div_i32(-1i, var_0.x), u_input.c, var_0.x, u_input.c), vec4<i32>(_wgslsmith_clamp_i32(17254i, var_0.x, var_0.x), -5565i, -var_0.x, 2147483647i))), -59362i >> (1u % 32u), 1i);
    var_0 = select(vec4<i32>(u_input.a, _wgslsmith_mod_i32(-var_0.x, _wgslsmith_sub_i32(1i, select(var_0.x, -92340i, true))), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, var_0.x, -58761i, var_0.x), vec4<i32>(-1i, u_input.c, u_input.a, 35376i)), 1i), countOneBits(-u_input.a)), _wgslsmith_add_vec4_i32(abs(-max(vec4<i32>(1i, u_input.c, 1i, u_input.c), vec4<i32>(u_input.c, u_input.a, 13311i, u_input.c))), _wgslsmith_clamp_vec4_i32(-vec4<i32>(var_0.x, var_0.x, var_0.x, var_0.x), _wgslsmith_add_vec4_i32(vec4<i32>(-63762i, u_input.c, 2147483647i, var_0.x), min(vec4<i32>(-17449i, u_input.a, -23126i, u_input.a), vec4<i32>(var_0.x, 71666i, var_0.x, u_input.a))), vec4<i32>(countOneBits(var_0.x), var_0.x, _wgslsmith_add_i32(68706i, -1i), var_0.x >> (u_input.b.x % 32u)))), u_input.b.x > ~(~u_input.b.x | _wgslsmith_clamp_u32(4294967295u, 28563u, 14466u)));
    var_0 = countOneBits(_wgslsmith_mult_vec4_i32(vec4<i32>(-63061i | var_0.x, _wgslsmith_clamp_i32(u_input.c, 72325i, 1i), 1i, firstLeadingBit(u_input.c)), abs(-vec4<i32>(var_0.x, -35773i, -22297i, var_0.x)))) >> (vec4<u32>(abs(_wgslsmith_div_u32(1u, u_input.b.x)) >> ((~u_input.b.x << (~u_input.b.x % 32u)) % 32u), reverseBits(~_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x), vec3<u32>(u_input.b.x, 44927u, 29334u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b), vec2<u32>(6801u, 4294967295u)), 1u), max(4294967295u, u_input.b.x)) % vec4<u32>(32u));
    var var_1 = select(select(!(!select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false))), !vec3<bool>(false, any(vec4<bool>(true, false, true, false)), true), select(vec3<bool>(all(vec4<bool>(false, true, false, false)), 106565i <= u_input.a, true), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), false), vec3<bool>(true, true, true))), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), true))), vec3<bool>(true, true, select(true, all(vec4<bool>(false, true, false, false)), true)), true), all(select(!select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true))));
    return Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(608f, -1612f, 1000f) - vec3<f32>(1625f, -576f, 284f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1632f, -124f, -961f)))))), vec3<f32>(-707f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(118f, -928f))) * -554f), -423f), !vec4<bool>(true, select(var_1.x == var_1.x, all(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), false), true, var_1.x));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -546f))), arg_2.b.x, -1727f), _wgslsmith_f_op_vec3_f32(round(arg_2.b)), vec4<bool>(all(vec2<bool>(arg_0.c.x, u_input.c >= 2147483647i)), any(select(vec2<bool>(arg_0.c.x, true), arg_2.c.yz, arg_0.c.x)), arg_2.c.x || arg_2.c.x, false));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: vec2<bool>) -> Struct_1 {
    var var_0 = 40325i;
    var_0 = 21102i << (1u % 32u);
    var_0 = 2147483647i;
    var_0 = _wgslsmith_sub_i32(min(-17895i, min(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, -1i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, -2147483647i, u_input.c)), 1i)) & u_input.c, ~(0i));
    let var_1 = func_4(func_2(), vec4<i32>(16259i, 8477i, select(u_input.c, u_input.c, false), select(~abs(-2147483647i), -(u_input.c & u_input.a), arg_2.x)), Struct_1(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-764f, 609f, 1f))), arg_0.a, !arg_0.c));
    return var_1;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    var var_0 = u_input.b;
    let var_1 = arg_0;
    var var_2 = -(~(max(vec2<i32>(u_input.c, -65712i), reverseBits(vec2<i32>(-9239i, u_input.a))) | vec2<i32>(func_3(vec3<i32>(u_input.a, u_input.a, u_input.a), vec4<i32>(u_input.c, u_input.a, -11947i, u_input.c)).x, u_input.a)));
    var_0 = ~vec2<u32>(var_0.x, ~0u);
    var var_3 = 1u;
    return Struct_2(func_1(Struct_1(var_1.b, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.a.x, -248f, -503f))), !var_1.c), ~((var_0.x >> (99476u % 32u)) | _wgslsmith_div_u32(4294967295u, var_0.x)), arg_0.c.yx), -2147483647i, 477f, Struct_1(_wgslsmith_f_op_vec3_f32(ceil(arg_0.b)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_1.a))), !(!(!arg_0.c))), func_1(Struct_1(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.a.x, 2005f, 939f), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_1.b.x, var_1.a.x, var_1.b.x)))), vec3<f32>(2217f, _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_div_f32(var_1.a.x, -962f)), !(!var_1.c)), u_input.b.x, vec2<bool>(true, select(!arg_0.c.x, !var_1.c.x, var_1.c.x | var_1.c.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(-reverseBits(vec4<i32>(u_input.c, 1i, -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, u_input.c), vec2<i32>(u_input.c, 2147483647i)))));
    var var_1 = func_5(func_1(Struct_1(vec3<f32>(-1181f, _wgslsmith_div_f32(-376f, 176f), 990f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-235f, 783f, 175f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(440f, -1347f, 568f)))), vec4<bool>(true, true, u_input.b.x == u_input.b.x, true)), u_input.b.x, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, any(vec4<bool>(false, false, false, true))))));
    var_0 = _wgslsmith_add_vec4_i32(-_wgslsmith_clamp_vec4_i32(~(~vec4<i32>(-3544i, 2147483647i, -2147483647i, u_input.a)), reverseBits(vec4<i32>(u_input.a, var_0.x, 0i, var_0.x)), countOneBits(vec4<i32>(u_input.c, var_1.b, 1i, 41747i))), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_add_i32(~var_1.b, -27301i), -1i, _wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(var_0.x, -1i, var_0.x, -30662i)), max(vec4<i32>(-22070i, var_0.x, -7087i, 0i), vec4<i32>(-49262i, var_0.x, -1i, -2147483647i))), var_1.b >> (~u_input.b.x % 32u)), _wgslsmith_clamp_vec4_i32(vec4<i32>(-5689i << (1u % 32u), _wgslsmith_mod_i32(38432i, var_0.x), -1i, -u_input.c), ~countOneBits(vec4<i32>(54990i, u_input.a, -13410i, 2147483647i)), vec4<i32>(-u_input.c, _wgslsmith_sub_i32(72629i, 2374i), 2147483647i, _wgslsmith_sub_i32(0i, var_0.x))), vec4<i32>(~(0i ^ var_0.x), _wgslsmith_sub_i32(_wgslsmith_add_i32(-5944i, 0i), var_0.x), ~_wgslsmith_dot_vec2_i32(vec2<i32>(-16015i, 2147483647i), vec2<i32>(-43298i, u_input.c)), 2147483647i)));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_1.d.a), var_1.e.b))), _wgslsmith_div_vec3_f32(var_1.d.a, var_1.e.a), vec4<bool>(false, all(vec2<bool>(func_2().c.x, true)), var_1.e.c.x, all(vec2<bool>(true, all(var_1.a.c.wzz)))));
    var_2 = func_5(var_1.d).e;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(~countOneBits(-1i), -74553i, countOneBits(var_1.b), abs(~var_1.b)), func_2().a.x, 1571f, u_input.b.x);
}

