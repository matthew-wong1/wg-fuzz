struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec2<f32>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
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

var<private> global0: f32 = -1754f;

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: u32) -> vec4<bool> {
    var var_0 = u_input.b.x;
    let var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -506f), -987f), vec2<f32>(_wgslsmith_f_op_f32(min(-180f, 2118f)), -1895f), true)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(-825f + -961f))))));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(175f)));
    var_0 = reverseBits(~(~4294967295u >> (arg_0 % 32u)) ^ firstTrailingBit(select(~13459u, 12605u, all(vec2<bool>(true, false)))));
    return select(select(select(select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false), false), vec4<bool>(true, false, false, false)), select(select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, false, false), true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, false, false), false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, false), false), true)), vec4<bool>(true, any(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, true, false), false)), any(vec4<bool>(true, true, true, true)), !any(vec4<bool>(true, false, false, true))), !select(true, true, true)), vec4<bool>(true, any(vec2<bool>(var_2.x <= var_2.x, true)), true, !all(vec3<bool>(false, false, false)) & true), false);
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    var var_0 = arg_0;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -450f));
    let var_1 = u_input.a;
    let var_2 = min(35701u, ~u_input.b.x);
    var_0 = Struct_1(vec3<u32>(33791u, ~_wgslsmith_dot_vec2_u32(var_0.c.zx & var_0.a.zx, vec2<u32>(u_input.a, var_1)), u_input.a), select(-(i32(-1i) * -2147483647i), firstTrailingBit(2350i) & (arg_0.b >> (arg_0.c.x % 32u)), all(arg_2)) & arg_1, reverseBits(var_0.a), arg_0.d, any(vec2<bool>(arg_2.x, true)) | false);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1689f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(944f * var_0.d.x), -740f))));
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_f_op_f32(arg_0.d.x + _wgslsmith_f_op_f32(func_4(arg_0, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-17791i, 8923i), vec2<i32>(arg_0.b, 27653i)), arg_0.b), func_3(arg_0.c.x))));
    let var_0 = _wgslsmith_f_op_f32(round(arg_0.d.x));
    global0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(arg_0.d.x))));
    let var_1 = arg_0;
    let var_2 = vec4<u32>(var_1.c.x, 4294967295u, 836u, 3892u);
    return var_1;
}

fn func_1() -> u32 {
    let var_0 = func_2(Struct_1(vec3<u32>((5715u & u_input.a) | 30801u, reverseBits(_wgslsmith_mod_u32(0u, u_input.a)), u_input.b.x), 1i >> (0u % 32u), select(vec3<u32>(47704u, 4294967295u, u_input.a) & ~vec3<u32>(u_input.a, 24316u, u_input.a), max(vec3<u32>(4294967295u, u_input.a, 74442u) << (vec3<u32>(28534u, u_input.b.x, u_input.a) % vec3<u32>(32u)), vec3<u32>(u_input.a, 75221u, u_input.b.x) | vec3<u32>(u_input.b.x, u_input.b.x, u_input.b.x)), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-449f, -389f))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(1653f, -401f))), all(vec3<bool>(true, true, true)))) + _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(349f, 226f)))), false));
    global0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x)))))));
    let var_1 = var_0.d.x;
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1042f, 239f, 402f, var_0.d.x)))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.d.x, func_2(Struct_1(var_0.a, var_0.b, vec3<u32>(u_input.b.x, var_0.c.x, u_input.a), var_0.d, true)).d.x, _wgslsmith_f_op_f32(min(var_0.d.x, var_1)), var_1) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.d.x, -1911f, var_0.d.x, var_1))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(494f, 637f, 797f, -714f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, var_0.d.x, 1610f)))));
    let var_3 = vec2<bool>(!(!(133f <= _wgslsmith_f_op_f32(func_4(var_0, var_0.b, vec4<bool>(var_0.e, var_0.e, var_0.e, false))))), !(select(false, !var_0.e, false) | any(func_3(1u))));
    return _wgslsmith_sub_u32(~(~38949u), ~(~func_2(func_2(var_0)).a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(vec3<u32>(_wgslsmith_sub_u32(u_input.a & 1u, 99343u) & u_input.a, ~(~(u_input.b.x ^ 12654u)), min(firstTrailingBit(abs(93u)), func_1() >> (~u_input.b.x % 32u))), max(1i, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(-54140i, 16606i), countOneBits(2147483647i), 1i)) ^ -(~(-56123i)), ~(vec3<u32>(~u_input.b.x, max(4294967295u, u_input.b.x), u_input.b.x) & vec3<u32>(10517u, select(44507u, 4294967295u, false), _wgslsmith_add_u32(13172u, u_input.a))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-241f, -960f) * vec2<f32>(216f, 560f))))), false);
    var var_1 = Struct_1(select(firstLeadingBit(vec3<u32>(var_0.a.x, 48929u, 4294967295u)) ^ (vec3<u32>(u_input.a, var_0.c.x, 1u) ^ var_0.c), ~vec3<u32>(4294967295u, var_0.a.x, u_input.a), all(vec2<bool>(true, var_0.e)) & var_0.e) | ~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.a.x, 10167u), _wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, u_input.a, 4294967295u), var_0.c, vec3<u32>(1u, 2961u, u_input.b.x))), i32(-1i) * -2147483647i, var_0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-208f, var_0.d.x), vec2<f32>(var_0.d.x, var_0.d.x), false)) + _wgslsmith_f_op_vec2_f32(var_0.d * vec2<f32>(var_0.d.x, -978f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(268f, var_0.d.x)) * vec2<f32>(-1000f, var_0.d.x)))), !var_0.e);
    global0 = _wgslsmith_f_op_f32(var_1.d.x - _wgslsmith_f_op_f32(var_0.d.x * _wgslsmith_f_op_f32(-var_0.d.x)));
    let var_2 = ~min(_wgslsmith_div_vec4_i32(~(vec4<i32>(-30299i, var_0.b, var_1.b, var_1.b) >> (vec4<u32>(var_0.c.x, 10436u, var_0.c.x, 1u) % vec4<u32>(32u))), max(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b, var_0.b, 40285i, -32003i), vec4<i32>(var_1.b, var_0.b, 2147483647i, var_0.b)), _wgslsmith_mod_vec4_i32(vec4<i32>(-9908i, 0i, var_0.b, var_1.b), vec4<i32>(var_1.b, var_0.b, 52082i, var_0.b)))), vec4<i32>(abs(0i) & -var_1.b, -22427i, 48889i, var_1.b));
    var var_3 = func_3(var_1.a.x >> (~u_input.a % 32u)).x;
    var_1 = func_2(func_2(Struct_1(~(~vec3<u32>(var_0.a.x, 26133u, u_input.b.x)), var_1.b, var_1.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1101f, var_0.d.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1066f, 225f))), true)));
    var_1 = func_2(Struct_1(~(~var_1.c), -var_1.b, ~(~(~vec3<u32>(29677u, var_0.c.x, u_input.a))), _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1002f, -1806f), vec2<f32>(-392f, -475f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-561f, var_1.d.x))))), true));
    var_1 = Struct_1(countOneBits(_wgslsmith_div_vec3_u32(vec3<u32>(27349u, u_input.a | 4294967295u, _wgslsmith_sub_u32(1u, u_input.b.x)), var_1.c)), _wgslsmith_sub_i32(0i, -var_2.x), ~var_1.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(var_1.d)))), false);
    var var_4 = func_2(Struct_1(~(_wgslsmith_div_vec3_u32(var_0.c, vec3<u32>(var_1.c.x, 4294967295u, 3125u)) & var_1.c), 11770i, ~var_0.c, _wgslsmith_f_op_vec2_f32(max(var_0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(523f, var_0.d.x) * vec2<f32>(var_0.d.x, 210f))))), !var_1.e));
    let x = u_input.a;
    s_output = StorageBuffer(abs(firstTrailingBit(37085u)));
}

