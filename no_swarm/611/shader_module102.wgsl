struct Struct_1 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<u32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: vec4<f32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
}

struct Struct_5 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
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

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: i32) -> vec3<bool> {
    let var_0 = arg_0;
    let var_1 = Struct_1(_wgslsmith_mod_vec4_i32(select(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, var_0, var_0, u_input.d.x) ^ vec4<i32>(-12903i, 1i, -20347i, u_input.d.x), ~vec4<i32>(arg_0, arg_0, arg_0, -2147483647i)), ~vec4<i32>(var_0, var_0, 42180i, 0i), true), -(~_wgslsmith_mult_vec4_i32(vec4<i32>(0i, -17948i, -75716i, 2147483647i), vec4<i32>(37463i, -15404i, u_input.a, -4455i)))), var_0, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_div_f32(-761f, -1723f), _wgslsmith_f_op_f32(sign(318f)), -1276f, _wgslsmith_f_op_f32(step(-231f, 2277f))), vec4<f32>(_wgslsmith_f_op_f32(-1790f + -958f), 1483f, _wgslsmith_f_op_f32(step(-456f, -265f)), -382f))))), _wgslsmith_sub_vec3_u32(min(vec3<u32>(4294967295u, select(0u, 0u, false), _wgslsmith_dot_vec3_u32(vec3<u32>(57002u, u_input.c.x, u_input.c.x), vec3<u32>(4294967295u, 922u, u_input.c.x))), vec3<u32>(u_input.c.x, select(0u, 1u, false), 41785u)), select(vec3<u32>(abs(u_input.c.x), u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c.zw, u_input.c.wy)), u_input.c.xzy ^ reverseBits(vec3<u32>(0u, u_input.b, u_input.b)), select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), select(vec3<bool>(false, true, false), vec3<bool>(true, false, true), vec3<bool>(false, true, true))))), select(_wgslsmith_clamp_vec3_i32(-max(vec3<i32>(u_input.a, 62462i, 68205i), vec3<i32>(-16419i, 2147483647i, var_0)), _wgslsmith_div_vec3_i32(min(vec3<i32>(-11991i, var_0, -11142i), vec3<i32>(-2147483647i, 0i, -1i)), -vec3<i32>(arg_0, u_input.a, 1i)), vec3<i32>(-1i, -2147483647i, _wgslsmith_clamp_i32(0i, 70865i, var_0))), ~min(vec3<i32>(1i, u_input.d.x, 2147483647i), vec3<i32>(22918i, arg_0, u_input.a) | vec3<i32>(0i, -2147483647i, 0i)), all(vec3<bool>(true, true, true))));
    let var_2 = ~26204u;
    let var_3 = _wgslsmith_mod_u32(min(~47602u, ~1u), countOneBits(~(~(u_input.b | 7955u))));
    var var_4 = var_1.c.yw;
    return !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, true, false))), vec3<bool>(all(vec4<bool>(false, false, true, true)), true, true)), vec3<bool>(false, false, select(any(vec4<bool>(true, true, true, true)), true, true)), all(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))) & true);
}

fn func_2(arg_0: Struct_5, arg_1: vec2<bool>, arg_2: Struct_5) -> Struct_5 {
    var var_0 = Struct_4(select(vec3<i32>(u_input.d.x, u_input.d.x >> (1u % 32u), -8278i), abs(-(~vec3<i32>(-1308i, u_input.a, -2147483647i))), select(func_3(2147483647i), !vec3<bool>(arg_0.b.x, arg_1.x, true), true)));
    return arg_0;
}

fn func_4(arg_0: Struct_5) -> Struct_4 {
    var var_0 = 4294967295u;
    let var_1 = 2147483647i != u_input.d.x;
    var var_2 = arg_0.d.wy;
    let var_3 = ~firstLeadingBit(~u_input.a);
    let var_4 = func_2(func_2(func_2(func_2(arg_0, select(arg_0.b, arg_0.b, arg_0.b), arg_0), select(func_2(arg_0, arg_0.b, Struct_5(vec2<f32>(arg_0.a.x, 184f), arg_0.b, vec4<u32>(arg_0.d.x, 1728u, var_2.x, 15251u), arg_0.c)).b, !vec2<bool>(var_1, false), true), Struct_5(vec2<f32>(364f, 1000f), arg_0.b, vec4<u32>(var_2.x, u_input.c.x, 75243u, arg_0.d.x), vec4<u32>(40354u, 1u, arg_0.c.x, var_2.x))), vec2<bool>((u_input.c.x != 4294967295u) || true, func_2(Struct_5(vec2<f32>(-1818f, arg_0.a.x), vec2<bool>(var_1, true), u_input.c, vec4<u32>(19213u, 4294967295u, 22774u, 4294967295u)), vec2<bool>(true, true), arg_0).b.x), Struct_5(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.a.x, 434f) + _wgslsmith_f_op_vec2_f32(select(arg_0.a, vec2<f32>(1372f, -668f), var_1))), arg_0.b, ~countOneBits(vec4<u32>(27614u, 38597u, arg_0.d.x, arg_0.c.x)), vec4<u32>(98901u, 10697u, ~var_2.x, u_input.b))), vec2<bool>(arg_0.b.x, false && (!arg_0.b.x & !arg_0.b.x)), Struct_5(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.a.x) + _wgslsmith_f_op_f32(-477f + 1000f)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(arg_0.a.x, 1279f)))), arg_0.b, ~arg_0.d, u_input.c)).c.x;
    return Struct_4(abs(vec3<i32>(var_3, 1i, 2147483647i)));
}

fn func_1(arg_0: vec2<bool>, arg_1: f32, arg_2: i32) -> bool {
    let var_0 = func_4(func_2(Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, -728f))), !vec2<bool>(arg_0.x, true), vec4<u32>(_wgslsmith_mod_u32(0u, u_input.b), ~1u, u_input.c.x, u_input.c.x ^ u_input.b), u_input.c), vec2<bool>(all(select(vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), vec4<bool>(true, arg_0.x, arg_0.x, true), false)), arg_0.x), Struct_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1, 910f), vec2<f32>(-845f, 205f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-441f, arg_1) + vec2<f32>(arg_1, arg_1))), select(vec2<bool>(arg_0.x, false), arg_0, select(false, true, false)), vec4<u32>(1u, u_input.b, u_input.c.x, ~u_input.b), u_input.c << (vec4<u32>(4914u, u_input.b, 0u, 19234u) % vec4<u32>(32u)))));
    let var_1 = select(!vec4<bool>(all(vec4<bool>(false, false, arg_0.x, arg_0.x)), select(true, true, true), (arg_0.x != arg_0.x) & (arg_0.x | arg_0.x), true), vec4<bool>(!((false | arg_0.x) && arg_0.x), func_3(select(1i, _wgslsmith_mult_i32(var_0.a.x, var_0.a.x), all(vec3<bool>(false, false, true)))).x, !arg_0.x | arg_0.x, all(vec3<bool>(arg_0.x, var_0.a.x < 2147483647i, false))), true);
    let var_2 = Struct_2(Struct_1(reverseBits(vec4<i32>(u_input.d.x, var_0.a.x, arg_2, arg_2) & vec4<i32>(arg_2, 44160i, arg_2, arg_2)) >> (vec4<u32>(u_input.b, u_input.b, 4294967295u, u_input.b) % vec4<u32>(32u)), var_0.a.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, arg_1, arg_1, arg_1) * vec4<f32>(arg_1, arg_1, -443f, 467f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1, arg_1, -854f, arg_1)))))), ~vec3<u32>(~u_input.b, u_input.c.x, max(47108u, 0u)), vec3<i32>(firstTrailingBit(-2147483647i & var_0.a.x), arg_2, firstLeadingBit(arg_2 >> (u_input.c.x % 32u)))), ~(-23507i), Struct_1(_wgslsmith_mod_vec4_i32(~(~vec4<i32>(2147483647i, 2147483647i, u_input.d.x, 1i)), -vec4<i32>(arg_2, arg_2, 0i, u_input.a)), 0i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(104f, arg_1, 1909f, 885f) * vec4<f32>(130f, arg_1, arg_1, 193f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1951f, -1221f, 850f, arg_1))), ~(~vec3<u32>(u_input.c.x, 71663u, 1u)), var_0.a));
    return !any(var_1);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 43343u;
    var var_1 = vec4<bool>(!any(vec3<bool>(func_1(vec2<bool>(false, false), -1777f, u_input.d.x), true, func_1(vec2<bool>(false, false), -516f, 2147483647i))), !(!any(select(vec3<bool>(false, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)))), true, true);
    var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~75279u, _wgslsmith_mult_u32(u_input.c.x, ~(~u_input.b)), ~(~u_input.c.x) >> (~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 7128u, 3328u), u_input.c.wzy) % 32u), u_input.c.x), vec4<u32>(~u_input.b, reverseBits(~(4294967295u ^ u_input.c.x)), ~(~_wgslsmith_dot_vec3_u32(u_input.c.xww, u_input.c.yzy)), min(u_input.b, _wgslsmith_sub_u32(49641u, 19650u))));
    let var_2 = Struct_3(false, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(-816f, _wgslsmith_f_op_f32(-1598f - -348f), _wgslsmith_f_op_f32(-1011f - -1431f), -180f) - vec4<f32>(-447f, _wgslsmith_f_op_f32(sign(768f)), _wgslsmith_f_op_f32(-1544f - -470f), -386f)))), u_input.a);
    var var_3 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(395f - _wgslsmith_f_op_f32(max(var_2.b.x, var_2.b.x))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.b.x + 1000f) + _wgslsmith_f_op_f32(ceil(1456f))))))), var_2.b.x, var_1.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c);
}

