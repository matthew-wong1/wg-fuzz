struct Struct_1 {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: u32,
    d: u32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
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

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<u32>) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(514f, _wgslsmith_f_op_f32(-937f + -530f)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(1830f + _wgslsmith_f_op_f32(min(-1000f, 197f))), 1f))));
    var var_1 = _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1070f, -1346f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1162f, -1297f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-742f, _wgslsmith_f_op_f32(1006f - -1307f)) * _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(419f, -720f), vec2<f32>(237f, 552f), arg_0.x))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)))));
    return 75602i;
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> f32 {
    var var_0 = select(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(-1i, 1i), select(~vec2<i32>(58468i, -23247i), _wgslsmith_clamp_vec2_i32(vec2<i32>(-22391i, -23794i), vec2<i32>(-51358i, 2147483647i), vec2<i32>(2147483647i, -84442i)), all(vec3<bool>(true, false, true)))), reverseBits(0i >> (~arg_0 % 32u))), ~vec2<i32>(1i, firstTrailingBit(1i)), !vec2<bool>(false, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)))));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(select(u_input.e, vec3<u32>(arg_0, arg_1.x, u_input.b.x), true) >> ((u_input.e >> (u_input.e % vec3<u32>(32u))) % vec3<u32>(32u)), u_input.e), firstTrailingBit(vec3<u32>(1u, u_input.c, arg_0)) | ~(~vec3<u32>(10040u, 8403u, arg_0))), ~(~_wgslsmith_mult_vec3_u32(max(u_input.e, u_input.a.wyx), vec3<u32>(35152u, 111027u, 4294967295u) >> (vec3<u32>(24622u, arg_0, arg_1.x) % vec3<u32>(32u)))));
    var_1 = ~(~(~1071u) >> (1u % 32u));
    var_0 = vec2<i32>(_wgslsmith_add_i32(12394i, ~(-var_0.x | var_0.x)), firstTrailingBit(_wgslsmith_add_i32(888i, i32(-1i) * -32897i)));
    var_1 = 37463u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-148f, -1107f)), -270f)))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 938f)))), select(all(vec3<bool>(true, false, false)) | true, any(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))), false))) - _wgslsmith_f_op_f32(-1087f - -962f));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec4<u32>, arg_3: i32) -> i32 {
    let var_0 = arg_1.b.d;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-341f - _wgslsmith_f_op_f32(-var_0.x)), var_0.x, any(vec3<bool>(true, true, true)))));
    var_1 = _wgslsmith_f_op_f32(func_3(abs(arg_2.x), vec2<u32>(~1u, arg_2.x)));
    var var_2 = vec2<u32>(21939u, u_input.d);
    let var_3 = _wgslsmith_div_i32(39989i, arg_0.b.x);
    return 24681i >> (~(~u_input.b.x) % 32u);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: Struct_2) -> Struct_1 {
    var var_0 = countOneBits(5605u);
    var var_1 = Struct_2(select(_wgslsmith_add_vec4_i32(reverseBits(vec4<i32>(-17666i, arg_2.a.x, arg_0.a.x, arg_0.a.x)), min(arg_0.a, vec4<i32>(arg_0.a.x, arg_2.a.x, 26142i, -29597i))), ~_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_2.a.x, arg_0.a.x, 1i, arg_2.a.x), max(vec4<i32>(-1i, -18016i, arg_2.a.x, arg_0.a.x), vec4<i32>(-82320i, arg_0.b.x, -36604i, arg_0.a.x)), arg_2.a), !vec4<bool>(arg_1 && true, true, arg_0.b.x >= arg_0.a.x, true)), arg_2.b);
    var_0 = u_input.b.x;
    var var_2 = arg_0.c;
    let var_3 = Struct_1(firstLeadingBit(_wgslsmith_clamp_vec4_i32(arg_2.b.a, ~(~vec4<i32>(arg_0.b.x, arg_2.a.x, arg_0.a.x, 1i)), firstLeadingBit(_wgslsmith_mult_vec4_i32(arg_0.a, arg_0.a)))), vec2<i32>(1i, firstLeadingBit(1i)), var_1.b.d.yz, arg_0.d);
    return Struct_1(~vec4<i32>(_wgslsmith_mult_i32(var_1.a.x ^ 0i, arg_0.a.x), func_2(Struct_1(vec4<i32>(-1i, arg_2.b.a.x, var_3.b.x, 0i), arg_0.a.xw, vec2<f32>(arg_0.c.x, -500f), vec3<f32>(1057f, -1295f, 436f)), Struct_2(vec4<i32>(var_1.a.x, arg_0.b.x, -2147483647i, var_1.a.x), var_3), u_input.a, _wgslsmith_div_i32(2147483647i, 31312i)), -firstLeadingBit(-1i), 1i), select(-vec2<i32>(-arg_2.b.b.x, i32(-1i) * -23401i), var_3.b, any(select(!vec3<bool>(true, arg_1, arg_1), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, arg_1, true), vec3<bool>(arg_1, true, arg_1)), select(vec3<bool>(arg_1, true, arg_1), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(false, true, false))))), _wgslsmith_f_op_vec2_f32(-arg_0.d.zx), vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.d.x)), arg_2.b.c.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1639f - _wgslsmith_f_op_f32(f32(-1f) * -416f)), _wgslsmith_f_op_f32(var_3.d.x * _wgslsmith_f_op_f32(-arg_0.d.x)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1154f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_1(~firstLeadingBit(vec4<i32>(-15279i, 0i, 1i, 25405i)), select(vec2<i32>(firstTrailingBit(-20821i), -26095i), vec2<i32>(i32(-1i) * -1i, max(574i, 1i)), true), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-1103f * -665f), _wgslsmith_f_op_f32(abs(555f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-941f, 1443f, _wgslsmith_f_op_f32(max(799f, 126f))))), 4294967295u < u_input.c, Struct_2(vec4<i32>(func_1(vec4<bool>(true, true, true, true), u_input.a), func_2(Struct_1(vec4<i32>(2147483647i, 874i, 1i, 1i), vec2<i32>(-2147483647i, -32110i), vec2<f32>(1684f, 1335f), vec3<f32>(1534f, 1271f, 328f)), Struct_2(vec4<i32>(1i, -1i, 0i, -1i), Struct_1(vec4<i32>(-15321i, -30980i, 0i, 0i), vec2<i32>(16242i, -61968i), vec2<f32>(-707f, 2393f), vec3<f32>(-1886f, -713f, -674f))), vec4<u32>(u_input.c, 1u, u_input.d, 57816u), _wgslsmith_div_i32(-1i, 29589i)), 1i, _wgslsmith_add_i32(-10985i << (u_input.a.x % 32u), _wgslsmith_mod_i32(2147483647i, 66189i))), Struct_1(vec4<i32>(1i, _wgslsmith_add_i32(-4682i, -1i), i32(-1i) * -17091i, -24648i), ~(-vec2<i32>(-11748i, -26616i)), vec2<f32>(135f, -261f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-341f, 1000f, -615f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(-736f, 523f, -332f) - vec3<f32>(-145f, -2025f, 1631f))))));
    var var_1 = func_4(var_0, true && any(vec4<bool>(true, true, true, true)), Struct_2(~var_0.a, var_0));
    var var_2 = var_0.a.x;
    let var_3 = -1293f;
    let var_4 = var_0;
    var_2 = var_1.a.x;
    var_1 = Struct_1(-var_4.a, vec2<i32>(_wgslsmith_dot_vec3_i32(abs(~vec3<i32>(21687i, -1i, 29066i)), func_4(Struct_1(var_4.a, vec2<i32>(var_0.a.x, -1i), var_4.c, var_4.d), true, Struct_2(vec4<i32>(var_0.a.x, var_4.b.x, 4937i, var_0.b.x), Struct_1(var_1.a, var_4.a.ww, var_1.c, vec3<f32>(var_3, var_1.c.x, var_4.c.x)))).a.yxy), var_4.b.x), _wgslsmith_f_op_vec2_f32(-var_4.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-2160f - 335f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-840f))), -1553f)));
    let var_5 = _wgslsmith_dot_vec3_i32(abs(countOneBits(vec3<i32>(var_4.b.x, var_1.b.x, var_4.b.x))) >> (~select(min(vec3<u32>(5315u, 0u, 4294967295u), vec3<u32>(u_input.a.x, 20701u, u_input.c)), max(vec3<u32>(u_input.e.x, u_input.a.x, 4294967295u), u_input.a.wyw), true) % vec3<u32>(32u)), _wgslsmith_add_vec3_i32(_wgslsmith_add_vec3_i32(firstTrailingBit(var_0.a.wwy) ^ vec3<i32>(1i, -22677i, 0i), vec3<i32>(-37022i, -20257i, ~(-2147483647i))), vec3<i32>(func_4(Struct_1(var_1.a, vec2<i32>(9552i, var_1.b.x), vec2<f32>(var_1.c.x, 1136f), var_0.d), true, Struct_2(var_1.a, Struct_1(var_1.a, vec2<i32>(2147483647i, var_0.a.x), var_0.c, vec3<f32>(var_1.c.x, 841f, -1032f)))).b.x, _wgslsmith_mod_i32(-23466i, -56139i), 2328i)));
    let var_6 = Struct_2(var_4.a, Struct_1(var_1.a, -(vec2<i32>(-1i) * -var_4.a.xz), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_4.d.x, 534f) * var_0.c) * _wgslsmith_f_op_vec2_f32(-var_0.d.yy))), vec3<f32>(var_0.d.x, _wgslsmith_f_op_f32(round(var_4.c.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -469f), var_1.c.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.d.x, var_3, -723f, -893f) + vec4<f32>(-2006f, var_1.c.x, 383f, var_3)))), vec4<f32>(var_6.b.d.x, -1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -695f))), _wgslsmith_f_op_f32(-var_6.b.c.x))), ~((_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d, u_input.a.x, 20653u), u_input.e) | u_input.d) >> (4294967295u % 32u)));
}

