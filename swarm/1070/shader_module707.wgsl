struct Struct_1 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec4<u32>) -> f32 {
    let var_0 = false;
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-arg_2));
    return 773f;
}

fn func_2() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-555f * 1858f), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), Struct_1(vec2<f32>(498f, -1299f)), vec2<f32>(261f, 296f), vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.b)))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(452f, -1673f), vec2<f32>(-1067f, -361f)) + _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(718f, 158f)))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(709f, 198f)) + vec2<f32>(102f, -375f)))));
    let var_1 = _wgslsmith_clamp_vec4_u32(countOneBits(firstTrailingBit(vec4<u32>(~57370u, _wgslsmith_dot_vec3_u32(vec3<u32>(31624u, 0u, 73331u), vec3<u32>(64916u, 0u, u_input.c.x)), u_input.c.x, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.b, 0u), vec4<u32>(1u, 34584u, 0u, 1u))))), ~_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(0u, u_input.b, 35553u, u_input.c.x)), ~vec4<u32>(u_input.b, 4294967295u, 94004u, u_input.b) >> ((vec4<u32>(4294967295u, 1u, 4294967295u, 4294967295u) ^ vec4<u32>(4294967295u, 1u, u_input.b, 0u)) % vec4<u32>(32u)), ~(~vec4<u32>(u_input.c.x, 112976u, u_input.b, u_input.c.x))), vec4<u32>(u_input.b, ~u_input.c.x, ~abs(u_input.c.x), _wgslsmith_mult_u32(u_input.b, ~4294967295u) & firstLeadingBit(4294967295u)));
    let var_2 = true || all(select(vec3<bool>(true, true, false), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)));
    var var_3 = u_input.d;
    var var_4 = select(select(select(vec2<bool>(var_2, true), !select(vec2<bool>(false, var_2), vec2<bool>(false, var_2), vec2<bool>(var_2, var_2)), vec2<bool>(!var_2, any(vec2<bool>(true, var_2)))), !select(select(vec2<bool>(var_2, false), vec2<bool>(var_2, false), vec2<bool>(false, var_2)), select(vec2<bool>(var_2, false), vec2<bool>(true, var_2), vec2<bool>(var_2, true)), true), any(select(select(vec3<bool>(var_2, var_2, true), vec3<bool>(false, true, false), vec3<bool>(true, false, false)), !vec3<bool>(false, true, var_2), any(vec3<bool>(false, false, false))))), !vec2<bool>(false, !all(vec3<bool>(true, true, true))), vec2<bool>(all(select(!vec2<bool>(false, var_2), !vec2<bool>(false, var_2), any(vec4<bool>(true, false, false, true)))), any(!vec3<bool>(var_2, true, var_2))));
    return vec2<bool>(true, all(select(vec2<bool>(true, true), vec2<bool>(true, var_2), !(!vec2<bool>(var_2, false)))));
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec2<bool>) -> f32 {
    let var_0 = ~vec3<u32>(4294967295u, _wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(arg_1, 44858u, 0u, arg_1)), vec4<u32>(arg_1, 39668u, arg_0.x, u_input.b)), 25081u), 16898u);
    var var_1 = -u_input.d.x;
    let var_2 = vec3<i32>(-2147483647i, 17824i, _wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(u_input.d, ~u_input.a.zyw), 24551i, -min(_wgslsmith_clamp_i32(u_input.a.x, -15499i, -51109i), -u_input.a.x)));
    let var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, arg_2.a.x)))))));
    var var_4 = select(vec2<bool>(arg_2.a.x <= 441f, !(true && (u_input.d.x > var_2.x))), arg_3, any(!select(select(arg_3, vec2<bool>(arg_3.x, false), vec2<bool>(arg_3.x, true)), vec2<bool>(false, arg_3.x), any(vec3<bool>(false, arg_3.x, true)))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_3.a.x - 1604f), -2274f))))) - arg_2.a.x);
}

fn func_5(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec2<u32>, arg_3: f32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_3 - -1275f), _wgslsmith_f_op_f32(arg_0.a.x * arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(arg_0.a.x, arg_0.a.x), vec2<f32>(arg_0.a.x, 345f)))))));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(var_2.a, _wgslsmith_f_op_vec2_f32(-var_2.a))));
    let var_3 = select(select(vec3<bool>(!select(false, true, true), all(select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), false), !(!select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), true)), !select(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), false)), vec3<bool>(func_2().x || (any(vec3<bool>(false, true, false)) | true), arg_0.a.x == var_2.a.x, false), select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(u_input.a.x > u_input.d.x, true, all(vec3<bool>(true, false, false))), all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false))), true));
    return Struct_1(var_1.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: vec2<bool>) -> i32 {
    let var_0 = func_5(arg_0, u_input.a, ~min(select(vec2<u32>(arg_2.x, 23431u), vec2<u32>(u_input.c.x, arg_2.x), true), u_input.c), _wgslsmith_f_op_f32(func_4(max(u_input.c, firstLeadingBit(arg_2.yz)), 0u, arg_0, select(!func_2(), !(!arg_3), true))));
    let var_1 = true;
    var var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_0.a.x)));
    let var_4 = var_0;
    return (i32(-1i) * -1i) | (i32(-1i) * -firstTrailingBit(_wgslsmith_mult_i32(1i, 0i)));
}

fn func_6(arg_0: i32, arg_1: f32) -> vec2<f32> {
    let var_0 = arg_0 != 67871i;
    var var_1 = !(!any(select(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, var_0), false), !vec4<bool>(var_0, var_0, var_0, true), vec4<bool>(var_0, var_0, var_0, false))));
    var_1 = var_0;
    let var_2 = vec3<i32>(firstTrailingBit(arg_0 ^ u_input.a.x), -select(reverseBits(u_input.a.x << (u_input.c.x % 32u)), -10583i, true), _wgslsmith_mult_i32(arg_0, ~_wgslsmith_add_i32(1i, u_input.a.x << (u_input.b % 32u))));
    var var_3 = Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(-937f, -154f)), -481f) + _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1, arg_1) + vec2<f32>(797f, arg_1)) + func_5(Struct_1(vec2<f32>(-989f, arg_1)), vec4<i32>(arg_0, var_2.x, var_2.x, var_2.x), vec2<u32>(28477u, u_input.c.x), arg_1).a), vec2<f32>(_wgslsmith_f_op_f32(func_3(vec2<bool>(false, var_0), Struct_1(vec2<f32>(-701f, 747f)), vec2<f32>(arg_1, -471f), vec4<u32>(12424u, u_input.c.x, 42237u, u_input.c.x))), arg_1)))));
    return var_3.a;
}

fn func_7(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(arg_2.a.x, _wgslsmith_f_op_f32(2005f * arg_2.a.x)), _wgslsmith_f_op_vec2_f32(-arg_2.a)))));
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.a, vec2<f32>(arg_0.a.x, -319f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-922f, arg_2.a.x)))))));
    var var_2 = all(!select(select(!vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), vec4<bool>(arg_1.x, false, arg_1.x, true), vec4<bool>(false, arg_1.x, false, true)), !select(vec4<bool>(true, false, arg_1.x, arg_1.x), vec4<bool>(false, arg_1.x, arg_1.x, arg_1.x), arg_1.x), arg_1.x && false));
    var_0 = arg_0;
    var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1287f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_2.a.x)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(761f - 409f)))) < _wgslsmith_f_op_f32(floor(1261f));
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_1.a, var_0.a, vec2<bool>(arg_1.x, false))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a.x, var_1.a.x)) - arg_2.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_7(Struct_1(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(998f, 1389f) + vec2<f32>(-969f, -1228f))), _wgslsmith_f_op_vec2_f32(func_6(func_1(Struct_1(vec2<f32>(-1404f, 1000f)), vec3<f32>(-1566f, 670f, -145f), vec3<u32>(1u, 30778u, 3032u), vec2<bool>(false, true)), _wgslsmith_f_op_f32(func_3(vec2<bool>(true, true), Struct_1(vec2<f32>(1562f, 1280f)), vec2<f32>(-1398f, -1447f), vec4<u32>(37965u, u_input.b, 1u, u_input.b)))))))), select(!select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true))), select(!select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), func_2().x | true), select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, false, true, true)), true, true), true)), Struct_1(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_div_f32(-925f, -2205f), 1048f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-333f, 1437f)))), vec2<bool>(true, true)))));
    let var_1 = reverseBits(func_1(func_7(func_7(func_5(Struct_1(var_0.a), vec4<i32>(58473i, -995i, u_input.a.x, 1i), vec2<u32>(1u, u_input.c.x), -594f), vec3<bool>(false, true, false), var_0), vec3<bool>(-14314i > u_input.a.x, all(vec2<bool>(false, false)), true), var_0), vec3<f32>(var_0.a.x, -1802f, -885f), vec3<u32>(1u, _wgslsmith_add_u32(u_input.c.x, 81659u), u_input.b), vec2<bool>(any(vec3<bool>(true, true, true)), false)));
    let var_2 = var_1;
    let var_3 = vec3<u32>(~26543u << (~select(u_input.c.x, 72875u, false) % 32u), _wgslsmith_sub_u32(~firstTrailingBit(_wgslsmith_div_u32(24423u, u_input.b)), firstTrailingBit(u_input.b)), u_input.b);
    var var_4 = func_7(func_5(Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.a.x, -1629f), vec2<f32>(var_0.a.x, 821f))))), vec4<i32>(_wgslsmith_div_i32(~(-2147483647i), var_2), ~2147483647i, -30049i, func_1(func_5(var_0, vec4<i32>(-24830i, var_1, var_1, -24917i), var_3.xy, var_0.a.x), vec3<f32>(-694f, 1177f, var_0.a.x), _wgslsmith_sub_vec3_u32(vec3<u32>(27469u, 24062u, var_3.x), var_3), vec2<bool>(false, false))), _wgslsmith_mult_vec2_u32(~vec2<u32>(21337u, 0u) >> (vec2<u32>(45545u, var_3.x) % vec2<u32>(32u)), max(firstTrailingBit(u_input.c), vec2<u32>(4294967295u, u_input.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x * var_0.a.x))), vec3<bool>(false, true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)))), var_0);
    var var_5 = 69031u;
    var var_6 = func_5(Struct_1(var_4.a), select(u_input.a, _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(u_input.a, vec4<i32>(var_2, var_1, var_2, 81868i)), u_input.a, vec4<i32>(var_2, max(-46417i, 1i), countOneBits(0i), var_2)), !(_wgslsmith_f_op_f32(round(var_0.a.x)) > _wgslsmith_f_op_f32(step(var_4.a.x, 1609f)))), ~(~(var_3.yy << (vec2<u32>(0u, 26260u) % vec2<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(742f)), 159f));
    let x = u_input.a;
    s_output = StorageBuffer(var_3, ~firstTrailingBit(_wgslsmith_add_u32(u_input.b, 0u) | ~1u));
}

