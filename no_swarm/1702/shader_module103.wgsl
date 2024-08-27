struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> i32 {
    var var_0 = Struct_1(_wgslsmith_dot_vec2_u32(max(u_input.c | abs(vec2<u32>(u_input.c.x, 1u)), u_input.c), _wgslsmith_div_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_3.a, arg_0.a), vec2<u32>(u_input.c.x, arg_0.a), countOneBits(u_input.c)), u_input.c >> (_wgslsmith_div_vec2_u32(u_input.c, vec2<u32>(arg_1.a, u_input.c.x)) % vec2<u32>(32u)))), arg_0.b, arg_3.c);
    var_0 = Struct_1(8874u, _wgslsmith_mult_vec3_i32(vec3<i32>(0i, 2147483647i & _wgslsmith_mod_i32(arg_0.b.x, arg_0.b.x), ~_wgslsmith_dot_vec3_i32(arg_1.b, arg_3.b)), min(vec3<i32>(-1005i, -25183i & arg_3.c, 2147483647i), arg_3.b)), _wgslsmith_sub_i32(~(var_0.b.x & 1i), u_input.a));
    var_0 = Struct_1(0u, ~(-(~vec3<i32>(u_input.d, u_input.b, arg_3.c))) & _wgslsmith_add_vec3_i32(_wgslsmith_mod_vec3_i32(~vec3<i32>(0i, arg_3.b.x, arg_0.c), vec3<i32>(arg_1.c, -2147483647i, arg_0.c)), arg_1.b), _wgslsmith_div_i32(u_input.a, u_input.a));
    var var_1 = arg_3.b;
    let var_2 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_2.x), arg_2.x)) - -1000f), -456f);
    return firstLeadingBit(-18305i);
}

fn func_2() -> vec3<bool> {
    return vec3<bool>(select(true, true, firstLeadingBit(_wgslsmith_sub_i32(u_input.b, 10015i)) >= _wgslsmith_sub_i32(func_3(Struct_1(12764u, vec3<i32>(-26836i, u_input.a, 1i), -2147483647i), Struct_1(29994u, vec3<i32>(2147483647i, 65480i, 2147483647i), -39404i), vec3<f32>(1184f, -1023f, -2278f), Struct_1(0u, vec3<i32>(u_input.a, -10630i, -27594i), u_input.a)), u_input.a)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-1123f)))))) >= _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(1176f, 1307f)))), _wgslsmith_f_op_f32(f32(-1f) * -843f))), all(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), select(true, false, true)), vec4<bool>(true, true, true, true), true)));
}

fn func_1() -> vec4<i32> {
    var var_0 = true;
    var_0 = all(func_2());
    var_0 = !(!(true | all(vec4<bool>(false, false, true, false)))) || (~countOneBits(~1u) != countOneBits(max(4294967295u, u_input.c.x)));
    var_0 = select(u_input.c.x, ~u_input.c.x, false) == _wgslsmith_div_u32(~(~(u_input.c.x >> (4294967295u % 32u))), _wgslsmith_clamp_u32(max(~0u, u_input.c.x), 68295u, 33248u));
    var_0 = true;
    return ~max(vec4<i32>(u_input.b, -1i, _wgslsmith_add_i32(min(u_input.b, u_input.d), u_input.d), u_input.b), vec4<i32>(~1i, _wgslsmith_add_i32(~2147483647i, reverseBits(u_input.d)), u_input.a, u_input.d << (_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, u_input.c.x), vec3<u32>(u_input.c.x, 16771u, u_input.c.x)) % 32u)));
}

fn func_4(arg_0: i32) -> f32 {
    var var_0 = !all(vec2<bool>(any(vec4<bool>(true, true, true, true)), true));
    var_0 = true;
    var var_1 = !(51202u != u_input.c.x) != !select(select(true, true, true), true, true || all(vec2<bool>(true, true)));
    let var_2 = Struct_1(1u, -_wgslsmith_mod_vec3_i32(countOneBits(min(vec3<i32>(u_input.a, u_input.d, 2147483647i), vec3<i32>(11265i, arg_0, 849i))), vec3<i32>(reverseBits(u_input.a), u_input.d, arg_0)), _wgslsmith_dot_vec2_i32(-(~vec2<i32>(0i, arg_0)) & vec2<i32>(-34703i, -arg_0), ~_wgslsmith_div_vec2_i32(countOneBits(vec2<i32>(-2147483647i, 14683i)), _wgslsmith_sub_vec2_i32(vec2<i32>(arg_0, -27385i), vec2<i32>(1i, arg_0)))));
    var_0 = true;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(2581f, -1850f))) + 1647f);
}

fn func_5(arg_0: i32, arg_1: f32, arg_2: vec3<f32>, arg_3: vec2<f32>) -> Struct_1 {
    let var_0 = vec4<i32>(reverseBits(func_1().x) | -39707i, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-48953i, arg_0), vec2<i32>(u_input.a, arg_0) ^ vec2<i32>(-2147483647i, 49099i)), -4940i), _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(u_input.a, arg_0)), ~vec2<i32>(-131i, u_input.b)), firstLeadingBit(max(vec2<i32>(-1i, arg_0), vec2<i32>(u_input.a, 2147483647i)))), ~(~func_3(Struct_1(u_input.c.x, vec3<i32>(u_input.a, 16344i, u_input.d), -32105i), Struct_1(u_input.c.x, vec3<i32>(arg_0, u_input.b, u_input.d), -2147483647i), arg_2, Struct_1(u_input.c.x, vec3<i32>(-2147483647i, -53274i, -2147483647i), u_input.b)))) << (~firstTrailingBit(~vec4<u32>(30455u, u_input.c.x, u_input.c.x, u_input.c.x)) % vec4<u32>(32u));
    let var_1 = ~(~(~(abs(vec2<u32>(4294967295u, 104557u)) << (u_input.c % vec2<u32>(32u)))));
    var var_2 = Struct_1(~(var_1.x >> (var_1.x % 32u)), -select(vec3<i32>(var_0.x, _wgslsmith_mod_i32(var_0.x, 85195i), 2147483647i), vec3<i32>(u_input.d, -2980i << (u_input.c.x % 32u), _wgslsmith_add_i32(1i, u_input.a)), vec3<bool>(true, true, true)), _wgslsmith_div_i32(_wgslsmith_mod_i32(-48148i, -var_0.x), 7595i));
    let var_3 = -35324i;
    var_2 = Struct_1(var_2.a, _wgslsmith_mult_vec3_i32(select(var_0.xwx, vec3<i32>(var_0.x, -28367i, arg_0), select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), abs(vec3<i32>(u_input.a, var_3, 1i)) >> (firstTrailingBit(vec3<u32>(var_2.a, var_1.x, var_2.a)) % vec3<u32>(32u))) << ((select(vec3<u32>(var_2.a, var_2.a, 1u), ~vec3<u32>(28228u, 0u, var_2.a), true) | (~vec3<u32>(32847u, 64368u, 4294967295u) >> (~vec3<u32>(21664u, u_input.c.x, 74672u) % vec3<u32>(32u)))) % vec3<u32>(32u)), _wgslsmith_mult_i32(-40938i, _wgslsmith_dot_vec4_i32(vec4<i32>(-28318i, arg_0, 29560i, u_input.a) << ((vec4<u32>(2128u, 26655u, var_1.x, var_2.a) << (vec4<u32>(10861u, 16388u, 4294967295u, var_1.x) % vec4<u32>(32u))) % vec4<u32>(32u)), var_0)));
    return Struct_1(firstLeadingBit(u_input.c.x), var_2.b, u_input.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(~(1i & u_input.b), _wgslsmith_f_op_f32(func_4(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, 55018i, -2238i, abs(-23266i)), select(func_1(), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.d, u_input.b, 12889i, 34296i), vec4<i32>(u_input.a, u_input.d, u_input.a, u_input.d)), vec4<bool>(false, true, true, false))))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(953f, -1024f, 292f) + vec3<f32>(1349f, 853f, -1000f)))) + _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-641f, 679f, 215f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(551f, -1000f, -648f))))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(874f - 387f) - -1181f), -1191f, -1572f))), vec2<f32>(_wgslsmith_div_f32(205f, _wgslsmith_f_op_f32(func_4(-2147483647i))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1860f + _wgslsmith_f_op_f32(1000f * -1307f))))));
    var_0 = func_5(var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1758f + -2892f)), 2037f))), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(257f, 534f, 1268f))) * vec3<f32>(1f, 1f, 1f)), vec3<f32>(_wgslsmith_f_op_f32(step(105f, _wgslsmith_f_op_f32(f32(-1f) * -196f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-2937f))), _wgslsmith_f_op_f32(abs(-1027f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-967f, -569f))), _wgslsmith_f_op_f32(ceil(-354f)))));
    let var_1 = var_0.b.x;
    let var_2 = func_5(var_0.b.x, _wgslsmith_f_op_f32(floor(902f)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(340f, 968f)), _wgslsmith_f_op_f32(step(-1541f, -1000f)), -1490f) - _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-366f, 143f, -691f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -278f), _wgslsmith_f_op_f32(ceil(-634f)), _wgslsmith_div_f32(1000f, -664f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-830f, -1328f, 1106f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1099f, 1158f, -268f))))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -337f), -1177f))), vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(1566f)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -460f)))))));
    var var_3 = 1i;
    var var_4 = reverseBits(firstTrailingBit(~u_input.c));
    let var_5 = var_0.b.zy;
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_mod_i32(15846i, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-12486i, var_2.b.x), var_2.b.zy))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1000f)) * -904f))), func_5(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(var_5.x, var_5.x, u_input.a, var_2.b.x) | vec4<i32>(var_0.c, u_input.a, -19009i, var_5.x), vec4<i32>(4869i, u_input.a, 2147483647i, 2147483647i)), vec4<i32>(2147483647i, var_0.b.x, var_2.c, 1997i) & -vec4<i32>(-6454i, var_0.b.x, var_0.c, var_0.c)), 486f, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1000f, -1766f, -190f))), vec3<f32>(209f, -346f, -856f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(834f, 532f)))).a, 3226i, _wgslsmith_f_op_f32(round(-763f)));
}

