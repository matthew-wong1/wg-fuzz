struct Struct_1 {
    a: bool,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: i32,
}

struct Struct_4 {
    a: bool,
    b: vec3<f32>,
    c: f32,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: f32,
    b: Struct_4,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    let var_0 = vec2<bool>(!(abs(0i) == _wgslsmith_mod_i32(abs(55367i), select(-116182i, 28764i, false))), false || (_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(-552f, -520f)), _wgslsmith_f_op_f32(min(-770f, -354f)))) > _wgslsmith_f_op_f32(-1f)));
    let var_1 = u_input.a;
    var var_2 = select(!(!select(vec3<bool>(var_0.x, true, true), select(vec3<bool>(var_0.x, var_0.x, var_0.x), vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x)), select(vec3<bool>(true, false, true), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, var_0.x, true)))), vec3<bool>(var_0.x, any(!vec4<bool>(false, var_0.x, false, false)), all(vec2<bool>(var_0.x, true))), all(vec3<bool>(var_0.x, true, any(!vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x)))));
    let var_3 = _wgslsmith_mod_u32(var_1, var_1) << (u_input.a % 32u);
    var_2 = select(select(select(!select(vec3<bool>(var_0.x, true, false), vec3<bool>(var_2.x, var_0.x, var_2.x), vec3<bool>(var_2.x, false, var_0.x)), select(select(vec3<bool>(true, var_2.x, false), vec3<bool>(var_0.x, var_2.x, false), vec3<bool>(true, true, false)), !vec3<bool>(var_0.x, false, false), vec3<bool>(var_0.x, var_0.x, false)), false), vec3<bool>(false, !(u_input.a > 110993u), true), true), select(!(!select(vec3<bool>(false, true, var_2.x), vec3<bool>(var_0.x, var_2.x, var_0.x), var_2.x)), !vec3<bool>(any(var_2.zx), all(vec3<bool>(true, var_2.x, true)), var_2.x), !any(vec3<bool>(true, false, var_0.x))), true);
    return _wgslsmith_f_op_f32(ceil(-582f));
}

fn func_2() -> Struct_1 {
    let var_0 = 65363u;
    var var_1 = vec4<f32>(464f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec3<i32>(-66850i, 709i, 0i)))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-755f - 130f), _wgslsmith_f_op_f32(f32(-1f) * -1338f)))))), -482f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -601f))));
    var_1 = vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(var_1.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.x))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(-146f, var_1.x, 805f, -643f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-729f, -695f, var_1.x, var_1.x)))))) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1310f) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.x), -797f))), -2283f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f + var_1.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -722f))), var_1.x));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -610f) * _wgslsmith_f_op_f32(316f * _wgslsmith_f_op_f32(var_1.x + var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_1.x))), -1562f))));
    return Struct_1(_wgslsmith_f_op_f32(-var_1.x) != var_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-626f + -919f), -1157f), _wgslsmith_f_op_f32(select(-291f, _wgslsmith_f_op_f32(trunc(1195f)), all(vec2<bool>(false, true))))))), var_0);
}

fn func_1(arg_0: f32, arg_1: Struct_5) -> vec4<u32> {
    let var_0 = reverseBits(42081i);
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1010f);
    var_2 = _wgslsmith_f_op_f32(min(1106f, arg_1.b.b.x));
    var var_3 = _wgslsmith_div_vec3_i32(vec3<i32>(var_0, var_0, -firstLeadingBit(_wgslsmith_add_i32(u_input.d, 0i))), firstTrailingBit(_wgslsmith_div_vec3_i32((vec3<i32>(var_0, var_0, 1i) & vec3<i32>(-1i, var_0, -65033i)) << (~vec3<u32>(4294967295u, var_1.c, var_1.c) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(abs(vec3<i32>(42146i, 16022i, 43138i)), reverseBits(vec3<i32>(2147483647i, u_input.c.x, 47484i))))));
    return vec4<u32>(~u_input.a, ~7955u, 0u, ~4294967295u);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: bool, arg_3: vec4<u32>) -> Struct_4 {
    let var_0 = vec3<u32>((_wgslsmith_dot_vec2_u32(arg_3.zx, vec2<u32>(12541u, arg_3.x)) >> (~arg_3.x % 32u)) >> (u_input.a % 32u), arg_3.x, reverseBits(u_input.a));
    var var_1 = abs(min(vec4<i32>(firstLeadingBit(u_input.c.x), u_input.d, ~u_input.b, -1i) << (_wgslsmith_mult_vec4_u32(firstLeadingBit(vec4<u32>(0u, arg_3.x, 40616u, var_0.x)), _wgslsmith_mod_vec4_u32(arg_3, arg_3)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, 25873i, 0i, 0i), vec4<i32>(-1i, 1i, 61825i, -1i))), -_wgslsmith_mult_vec4_i32(vec4<i32>(1483i, 2147483647i, 11769i, -6659i), vec4<i32>(u_input.c.x, u_input.b, u_input.b, u_input.c.x)), _wgslsmith_div_vec4_i32(vec4<i32>(45377i, -4871i, 0i, -13474i) & vec4<i32>(-2147483647i, 40927i, u_input.d, u_input.c.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.d, u_input.d, u_input.b, u_input.b), vec4<i32>(1i, u_input.c.x, 6903i, 2147483647i), vec4<i32>(u_input.c.x, 58214i, 1i, 33421i))))));
    let var_2 = ~vec2<i32>(38668i, i32(-1i) * -(~(-8352i)));
    let var_3 = select(arg_3, vec4<u32>(u_input.a, abs(min(u_input.a, 1u)), var_0.x, ~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a, arg_3.x), ~u_input.a)), arg_0.a);
    let var_4 = !(var_0.x < reverseBits(1u));
    return Struct_4(false, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d)))), _wgslsmith_f_op_f32(f32(-1f) * -813f), func_2().b), arg_1.x, arg_1.x, var_4);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4((~u_input.b > select(u_input.c.x, u_input.d, true)) | true, vec3<f32>(-1911f, 2443f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -125f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(ceil(-988f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1662f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1990f + -110f))), -190f != _wgslsmith_f_op_f32(-103f * _wgslsmith_f_op_f32(sign(371f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-769f, -342f), vec2<f32>(996f, 215f))))), true, func_1(-238f, Struct_5(_wgslsmith_f_op_f32(1300f + -1791f), Struct_4(all(vec2<bool>(false, true)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1225f, 439f, 890f) * vec3<f32>(114f, -771f, -375f)), _wgslsmith_f_op_f32(min(918f, -1000f)), _wgslsmith_f_op_f32(trunc(-1392f)), all(vec3<bool>(true, false, false))), u_input.a)));
    let var_1 = select(vec4<bool>(true, true, true, true), select(select(!select(vec4<bool>(false, var_0.e, var_0.a, false), vec4<bool>(var_0.e, var_0.a, false, var_0.e), false), vec4<bool>(true, all(vec3<bool>(var_0.a, var_0.e, var_0.a)), true, var_0.a), true), select(!vec4<bool>(var_0.a, var_0.e, var_0.e, var_0.a), !(!vec4<bool>(false, var_0.a, false, var_0.a)), vec4<bool>(false, false, var_0.e == false, !var_0.a)), true), !vec4<bool>(all(!vec3<bool>(var_0.e, false, false)), !any(vec2<bool>(false, true)), true, false && (var_0.a & var_0.a)));
    var var_2 = Struct_1(u_input.c.x != 2147483647i, var_0.c, ~(_wgslsmith_dot_vec3_u32(~vec3<u32>(31528u, 52087u, u_input.a), ~vec3<u32>(48355u, u_input.a, u_input.a)) & ~(u_input.a ^ u_input.a)));
    var_2 = Struct_1(true, -184f, var_2.c);
    var_2 = Struct_1(var_2.a, 1265f, min(var_2.c << (_wgslsmith_add_u32(abs(var_2.c), u_input.a) % 32u), max(~var_2.c, _wgslsmith_mult_u32(1u, 4294967295u)) | var_2.c));
    var_2 = func_2();
    var_2 = func_2();
    let var_3 = Struct_1(any(vec3<bool>(var_2.b > var_0.c, false, var_2.a)) & select(!(var_2.a && var_2.a), !var_0.a, true), -1438f, 1u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(select(~(~vec3<u32>(0u, 0u, var_2.c)), func_1(1116f, Struct_5(var_0.d, var_0, var_2.c)).xxz, all(select(var_1, var_1, true))), vec3<u32>(45623u, u_input.a, min(max(4294967295u, 87405u), ~27526u))));
}

