struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: vec4<bool>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec4<bool> {
    var var_0 = vec4<i32>(-u_input.d.x, u_input.b, -33810i, _wgslsmith_dot_vec3_i32(abs(vec3<i32>(select(u_input.d.x, u_input.d.x, false), reverseBits(-1i), _wgslsmith_mult_i32(-3601i, u_input.c.x))), -_wgslsmith_clamp_vec3_i32(min(vec3<i32>(u_input.c.x, u_input.c.x, -2312i), vec3<i32>(u_input.c.x, 11235i, u_input.b)), vec3<i32>(-46332i, -21898i, u_input.b), ~vec3<i32>(-2147483647i, u_input.c.x, u_input.b))));
    let var_1 = _wgslsmith_mult_i32(select(countOneBits(abs(u_input.d.x)), countOneBits(select(var_0.x, var_0.x, false)), false), _wgslsmith_div_i32(var_0.x, 1i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1103f, -636f)), _wgslsmith_f_op_f32(1000f * -1635f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1000f))));
    let var_3 = max(~u_input.a, firstTrailingBit(~77434u));
    var var_4 = _wgslsmith_mod_vec3_u32(vec3<u32>(21895u, _wgslsmith_dot_vec4_u32(vec4<u32>(var_3, ~64938u, countOneBits(4294967295u), ~u_input.a), vec4<u32>(var_3, u_input.a, abs(0u), _wgslsmith_mod_u32(u_input.a, var_3))), _wgslsmith_clamp_u32(18435u, 68025u, var_3)), ~(~min(vec3<u32>(u_input.a, u_input.a, 35247u), select(vec3<u32>(u_input.a, 0u, 107717u), vec3<u32>(0u, var_3, u_input.a), false))));
    return select(vec4<bool>(true, false == all(vec2<bool>(true, true)), true, (-1i & u_input.b) < -97990i), select(vec4<bool>(true, !all(vec3<bool>(true, true, false)), all(vec3<bool>(true, false, false)), true), !(!select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false))), vec4<bool>(false, -8231i > var_1, false, true)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, false)), any(vec2<bool>(true, true))), !select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, true), var_0.x != var_0.x), select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, any(vec4<bool>(false, false, true, true)), 0u != u_input.a))));
}

fn func_2(arg_0: vec4<i32>) -> Struct_2 {
    let var_0 = Struct_1(8736u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-589f, _wgslsmith_f_op_f32(812f + -700f), _wgslsmith_f_op_f32(-1589f - 1000f), _wgslsmith_div_f32(-214f, -1930f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-129f, -612f, 623f, -142f) + vec4<f32>(-688f, -709f, -189f, -909f)) + _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(189f, -1346f, -108f, -1483f))))))), select(func_3(), vec4<bool>(u_input.a != u_input.a, true, func_3().x, all(select(vec2<bool>(false, true), vec2<bool>(true, false), false))), all(vec4<bool>(true, true, true, true))), select(select(select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, true))), !func_3(), func_3()), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), func_3(), all(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))))), vec4<i32>(85i, arg_0.x, u_input.b, _wgslsmith_dot_vec4_i32(arg_0, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, arg_0.x, u_input.b) ^ vec4<i32>(2147483647i, u_input.d.x, -1i, 0i), select(vec4<i32>(arg_0.x, 1i, 2147483647i, 2305i), vec4<i32>(-2147483647i, arg_0.x, 2147483647i, 0i), true)))));
    let var_1 = firstLeadingBit(arg_0);
    let var_2 = Struct_2(!var_0.c.zz, var_0, vec2<u32>(u_input.a, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(0u, 4294967295u), vec2<u32>(var_0.a, var_0.a), ~vec2<u32>(4294967295u, 18696u)), ~vec2<u32>(var_0.a, 6578u))));
    let var_3 = ~(((_wgslsmith_mod_vec3_u32(vec3<u32>(var_2.c.x, 4294967295u, u_input.a), vec3<u32>(var_2.b.a, var_0.a, var_0.a)) & ~vec3<u32>(67274u, 4294967295u, 0u)) >> ((~vec3<u32>(48938u, 1u, 8480u) << (_wgslsmith_sub_vec3_u32(vec3<u32>(var_2.b.a, 132169u, 1u), vec3<u32>(var_2.b.a, var_0.a, 4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u))) & vec3<u32>(~u_input.a << (u_input.a % 32u), countOneBits(var_2.b.a), _wgslsmith_mod_u32(var_0.a, _wgslsmith_sub_u32(var_0.a, var_0.a))));
    var var_4 = var_2;
    return var_2;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2) -> u32 {
    var var_0 = func_2(abs(min(_wgslsmith_clamp_vec4_i32(arg_1.b.e, -arg_1.b.e, arg_1.b.e), vec4<i32>(11751i, arg_1.b.e.x, reverseBits(arg_1.b.e.x), ~arg_1.b.e.x)))).b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.b.b.x, -527f, var_0.c.x)))), _wgslsmith_f_op_f32(-var_0.b.x))));
    var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - var_0.b.x))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1000f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(exp2(var_0.b.x)))));
    var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-273f, 273f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.b.x)))))));
    return firstLeadingBit(firstTrailingBit(~reverseBits(0u)) << (1u % 32u));
}

fn func_1(arg_0: vec2<bool>, arg_1: vec4<u32>, arg_2: bool, arg_3: i32) -> Struct_1 {
    var var_0 = arg_1.zz;
    var_0 = vec2<u32>(~func_4(!vec4<bool>(arg_0.x, false, false, false), func_2(vec4<i32>(u_input.b, 22202i, -2147483647i, arg_3) | vec4<i32>(u_input.d.x, u_input.c.x, 83110i, u_input.b))), 131142u);
    var_0 = vec2<u32>(_wgslsmith_div_u32(_wgslsmith_div_u32(var_0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, arg_1.x, 3492u), arg_1.zzw)), ~arg_1.x | _wgslsmith_clamp_u32(arg_1.x, u_input.a, u_input.a)), 1u) & (reverseBits(~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 486u), vec2<u32>(u_input.a, arg_1.x))) >> (arg_1.zy % vec2<u32>(32u)));
    var_0 = vec2<u32>(~27856u >> (~(~arg_1.x) % 32u), _wgslsmith_mult_u32(u_input.a, ~5407u));
    let var_1 = func_2(firstLeadingBit(firstTrailingBit(firstLeadingBit(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.d.x, 2147483647i, 15465i), vec4<i32>(-15584i, 0i, u_input.c.x, -1i)))))).b;
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: f32, arg_3: vec3<u32>) -> vec3<i32> {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-arg_0.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-821f)))) - -618f), _wgslsmith_f_op_f32(373f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(807f, 564f)))));
    let var_1 = arg_1;
    var var_2 = !vec2<bool>((select(arg_0.d.x, false, arg_0.c.x) && (0i <= u_input.c.x)) & func_2(func_1(vec2<bool>(false, true), vec4<u32>(4294967295u, 1u, 24079u, 61341u), arg_0.d.x, 1i).e).b.d.x, !var_1.b.c.x);
    var var_3 = Struct_1(func_1(func_2(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c.x, arg_1.b.e.x, 1i, var_1.b.e.x), arg_0.e, var_1.b.e)).a, _wgslsmith_mod_vec4_u32(select(vec4<u32>(83210u, arg_3.x, 4294967295u, u_input.a), vec4<u32>(38323u, 12665u, 4294967295u, 1u), vec4<bool>(var_2.x, var_2.x, var_1.b.d.x, var_2.x)), vec4<u32>(u_input.a, 20545u, arg_3.x, 0u) & vec4<u32>(arg_1.b.a, 67785u, var_1.c.x, arg_3.x)), !all(vec4<bool>(true, false, arg_1.b.c.x, var_2.x)), ~_wgslsmith_div_i32(arg_1.b.e.x, arg_0.e.x)).a ^ 2847u, vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1274f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(361f * 1190f)))), _wgslsmith_f_op_f32(-237f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.b.x))), arg_1.b.b.x, _wgslsmith_f_op_f32(-var_1.b.b.x)), vec4<bool>(_wgslsmith_div_f32(808f, _wgslsmith_f_op_f32(arg_0.b.x * arg_1.b.b.x)) == _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(553f)), arg_0.b.x), !var_2.x, true, true), vec4<bool>(!((var_1.b.e.x == var_1.b.e.x) & true), arg_3.x <= _wgslsmith_dot_vec3_u32(min(vec3<u32>(47762u, 1u, u_input.a), arg_3), select(arg_3, vec3<u32>(arg_3.x, u_input.a, arg_1.b.a), arg_0.c.xyx)), var_1.b.c.x, select((73535i | arg_1.b.e.x) < 1i, false, true)), abs(select(~countOneBits(vec4<i32>(2147483647i, arg_0.e.x, -37386i, arg_1.b.e.x)), vec4<i32>(min(-14722i, var_1.b.e.x), u_input.b & 38983i, min(u_input.c.x, arg_1.b.e.x), var_1.b.e.x), select(true, func_3().x, false))));
    var_3 = arg_1.b;
    return -(~vec3<i32>(var_3.e.x, _wgslsmith_mult_i32(0i, arg_1.b.e.x), u_input.b) ^ reverseBits(abs(var_3.e.xyx)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(_wgslsmith_mod_vec3_i32(min(vec3<i32>(0i, u_input.b, 1i) << (vec3<u32>(37272u, 4294967295u, u_input.a) % vec3<u32>(32u)), select(vec3<i32>(-2147483647i, 0i, u_input.d.x), vec3<i32>(u_input.d.x, u_input.d.x, 815i), true)), vec3<i32>(~u_input.c.x, -u_input.c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.d.x, -43827i, -2147483647i, -2147483647i), vec4<i32>(0i, u_input.c.x, 2147483647i, u_input.d.x)))) >> (vec3<u32>(~_wgslsmith_div_u32(u_input.a, 4294967295u), ~(~4294967295u), u_input.a) % vec3<u32>(32u)), vec3<i32>(_wgslsmith_dot_vec3_i32(func_5(func_1(vec2<bool>(true, true), vec4<u32>(0u, u_input.a, u_input.a, u_input.a), true, -9204i), Struct_2(vec2<bool>(true, false), Struct_1(u_input.a, vec4<f32>(192f, -200f, -1337f, 752f), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<i32>(0i, 0i, u_input.c.x, -1i)), vec2<u32>(u_input.a, u_input.a)), -784f, vec3<u32>(9418u, 1u, 8599u) << (vec3<u32>(1u, u_input.a, 1u) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_sub_i32(0i, 9022i), 31211i, 2147483647i)), u_input.c.x, 2147483647i), func_3().zww);
    let var_1 = u_input.c.x;
    var var_2 = firstLeadingBit(var_1);
    let var_3 = !all(vec2<bool>(true, true));
    var var_4 = -(~_wgslsmith_div_vec3_i32(~var_0, select(vec3<i32>(0i, u_input.c.x, u_input.c.x), vec3<i32>(var_0.x, var_1, u_input.b), var_3)) << (~firstLeadingBit(~vec3<u32>(u_input.a, 2600u, u_input.a)) % vec3<u32>(32u)));
    let var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(f32(-1f) * -372f)) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(-481f, 355f) * vec2<f32>(762f, -1000f)))))) * vec2<f32>(145f, -1928f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0);
}

