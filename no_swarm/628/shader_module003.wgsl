struct Struct_1 {
    a: vec3<i32>,
    b: bool,
    c: bool,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<u32>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 2260u;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<f32> {
    global0 = 1u >> (~u_input.c.x % 32u);
    let var_0 = arg_0.a;
    global0 = ~u_input.b;
    global0 = u_input.c.x;
    global0 = _wgslsmith_clamp_u32(select(4294967295u, arg_0.b.x, arg_1.x), arg_0.b.x ^ _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(arg_0.b.x, 85206u, u_input.b), vec3<u32>(0u, 4294967295u, arg_0.b.x) >> (vec3<u32>(48730u, u_input.b, arg_0.b.x) % vec3<u32>(32u))), vec3<u32>(20171u & arg_0.b.x, ~u_input.a.x, reverseBits(arg_0.b.x))), ~(_wgslsmith_clamp_u32(firstLeadingBit(1u), 4294967295u, abs(4294967295u)) >> (36435u % 32u)));
    return _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0 + arg_0.a)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: Struct_2) -> Struct_1 {
    let var_0 = !vec4<bool>(false, !any(vec2<bool>(false, true)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.x + arg_1.x)) != -1000f);
    let var_1 = abs(vec3<u32>(~35448u, 1u, ~(~reverseBits(4294967295u))));
    global0 = var_1.x;
    var var_2 = Struct_1(_wgslsmith_mod_vec3_i32(vec3<i32>(-9718i, arg_0.c, reverseBits(49662i)), ~vec3<i32>(arg_2.c, arg_0.c, -6207i) | select(vec3<i32>(-39567i, -32696i, arg_0.c), vec3<i32>(-18917i, arg_0.c, -52156i), vec3<bool>(true, var_0.x, var_0.x))) ^ firstTrailingBit(-vec3<i32>(2147483647i, arg_0.c, arg_2.c) >> (countOneBits(vec3<u32>(arg_2.b.x, arg_0.b.x, arg_0.b.x)) % vec3<u32>(32u))), false, true, var_0.x, ~_wgslsmith_div_vec2_i32(~select(vec2<i32>(0i, 21784i), vec2<i32>(-2147483647i, arg_0.c), var_0.xw), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-20273i, 34705i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(785f + arg_0.a.x))), _wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(-arg_1.x)), var_0.x || (u_input.c.x != arg_2.b.x))))) * arg_0.a.x);
    return Struct_1(-_wgslsmith_sub_vec3_i32(vec3<i32>(arg_2.c, -60349i, 26091i), _wgslsmith_add_vec3_i32(vec3<i32>(44479i, arg_2.c, arg_0.c), vec3<i32>(-48009i, var_2.e.x, arg_0.c))) << (~vec3<u32>(~var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.x, 46569u, 36406u), arg_0.b.xzw), ~var_1.x) % vec3<u32>(32u)), var_0.x, !all(var_0.zwz), min(2147483647i, reverseBits(var_2.a.x >> (arg_0.b.x % 32u))) <= arg_0.c, ~var_2.e);
}

fn func_4(arg_0: Struct_1, arg_1: i32) -> i32 {
    let var_0 = true;
    var var_1 = (_wgslsmith_f_op_f32(select(-662f, -1179f, _wgslsmith_mult_i32(arg_0.a.x, arg_1) != _wgslsmith_sub_i32(-11470i, 1i))) == _wgslsmith_f_op_f32(621f + 700f)) && (u_input.b >= ~(~u_input.a.x));
    var_1 = all(select(vec3<bool>(false || var_0, true || var_0, all(vec3<bool>(var_0, var_0, var_0))), vec3<bool>(true, var_0, all(vec3<bool>(true, arg_0.b, true))), var_0)) | arg_0.c;
    let var_2 = false;
    global0 = _wgslsmith_dot_vec4_u32(~(~_wgslsmith_add_vec4_u32(u_input.c ^ u_input.c, select(vec4<u32>(10146u, 60235u, 87446u, u_input.a.x), vec4<u32>(4294967295u, 4294967295u, 1u, u_input.a.x), vec4<bool>(true, var_0, var_2, true)))), vec4<u32>(u_input.c.x, u_input.b | ~1u, ~45927u, _wgslsmith_mult_u32(max(countOneBits(u_input.a.x), u_input.a.x), 127929u)));
    return -15460i;
}

fn func_5(arg_0: i32, arg_1: vec3<i32>, arg_2: Struct_1) -> bool {
    var var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(ceil(1f)), -1462f, _wgslsmith_f_op_f32(f32(-1f) * -1226f)), vec4<u32>(u_input.b, ~(~_wgslsmith_div_u32(4294967295u, u_input.c.x)), 3133u, ~47837u), -(~(~(~arg_2.a.x))));
    let var_1 = firstTrailingBit(select(u_input.a.x, 1u, true));
    let var_2 = reverseBits(_wgslsmith_mult_vec4_i32(vec4<i32>(abs(min(var_0.c, arg_1.x)), 1i, _wgslsmith_div_i32(~arg_1.x, i32(-1i) * -37288i), 1i), select(~vec4<i32>(7163i, arg_0, -2147483647i, var_0.c), -vec4<i32>(1i, 33524i, 8875i, 1i), !(!vec4<bool>(false, false, false, arg_2.b)))));
    var var_3 = ~(~firstLeadingBit(-28048i) & arg_0);
    var var_4 = vec3<bool>(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(-var_0.a), select(var_0.b, ~vec4<u32>(5565u, var_0.b.x, var_0.b.x, var_1), arg_2.b), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, -18107i), vec2<i32>(arg_2.a.x, arg_1.x))), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(trunc(var_0.a.xx)), _wgslsmith_f_op_vec2_f32(-var_0.a.zx))))), Struct_2(_wgslsmith_f_op_vec3_f32(var_0.a - vec3<f32>(881f, 828f, var_0.a.x)), firstTrailingBit(~var_0.b), _wgslsmith_mod_i32(firstLeadingBit(42294i), var_0.c))).b, all(select(!select(vec3<bool>(true, true, true), vec3<bool>(false, arg_2.b, true), vec3<bool>(arg_2.c, true, arg_2.c)), select(vec3<bool>(arg_2.c, arg_2.b, arg_2.c), select(vec3<bool>(arg_2.c, arg_2.c, false), vec3<bool>(arg_2.b, arg_2.d, arg_2.b), arg_2.b), select(vec3<bool>(false, true, true), vec3<bool>(true, arg_2.d, false), vec3<bool>(false, true, true))), false)), any(vec3<bool>(true, arg_2.d, true)));
    return true;
}

fn func_1(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: u32) -> Struct_1 {
    global0 = 13031u;
    let var_0 = func_5(func_4(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1075f, 1438f, 404f), vec3<f32>(-510f, 397f, -1091f))), u_input.c, max(23718i, arg_0.a.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1308f, -321f))), Struct_2(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec3<f32>(-419f, 1893f, 1303f), u_input.c, arg_0.e.x), vec4<bool>(arg_0.d, arg_0.b, arg_0.d, arg_0.c))), ~u_input.c, _wgslsmith_sub_i32(2147483647i, arg_0.e.x))), max(2147483647i, _wgslsmith_dot_vec2_i32(arg_0.a.xy, arg_0.a.yz) ^ ~2947i)), arg_0.a, arg_0);
    global0 = reverseBits(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_1.x, 6421u, 195u), firstTrailingBit(u_input.c.xzx)));
    let var_1 = abs(4294967295u);
    let var_2 = -268f;
    return Struct_1(firstTrailingBit(min(_wgslsmith_mult_vec3_i32(vec3<i32>(1i, 1i, 14729i), firstTrailingBit(vec3<i32>(arg_0.e.x, 1i, arg_0.a.x))), vec3<i32>(-arg_0.e.x, 2147483647i & arg_0.a.x, arg_0.e.x))), var_0, arg_0.a.x >= -16253i, select(func_5(arg_0.a.x, _wgslsmith_mult_vec3_i32(arg_0.a, arg_0.a) | firstLeadingBit(arg_0.a), Struct_1(vec3<i32>(-26711i, -23943i, 25840i), arg_1.x >= arg_1.x, func_3(Struct_2(vec3<f32>(var_2, var_2, var_2), vec4<u32>(u_input.b, var_1, arg_2, 48303u), 0i), vec2<f32>(-366f, -974f), Struct_2(vec3<f32>(-168f, 384f, var_2), vec4<u32>(29750u, 31776u, 1u, 55186u), arg_0.e.x)).d, true, arg_0.a.xz)), false & var_0, false), vec2<i32>(_wgslsmith_dot_vec2_i32(arg_0.a.xy, arg_0.a.xy << (arg_1.zz % vec2<u32>(32u))) ^ arg_0.e.x, arg_0.a.x));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    global0 = 4294967295u;
    var var_0 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-236f)))), _wgslsmith_f_op_f32(f32(-1f) * -871f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1038f, 2088f))), 1169f), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-285f * -2096f), _wgslsmith_f_op_f32(-1352f - -1798f), _wgslsmith_div_f32(560f, 1000f), _wgslsmith_f_op_f32(round(-1143f))) * _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(2837f, 798f, 1208f, 1389f), vec4<f32>(1361f, 882f, -1214f, -1609f)))))), vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-642f, 240f, arg_0.d)))), _wgslsmith_f_op_f32(f32(-1f) * -684f), -390f, _wgslsmith_f_op_f32(-1781f + _wgslsmith_f_op_f32(step(431f, -326f))))))));
    global0 = _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(u_input.b, u_input.b << (33563u % 32u), ~u_input.a.x, firstLeadingBit(min(~29490u, ~4294967295u))));
    let var_1 = Struct_2(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-708f)))), 137f), min(vec4<u32>(~(u_input.a.x ^ 14884u), u_input.a.x, max(~u_input.a.x, _wgslsmith_sub_u32(u_input.a.x, u_input.b)), max(~u_input.b, u_input.c.x)), vec4<u32>(~_wgslsmith_mod_u32(u_input.b, u_input.b), max(_wgslsmith_div_u32(49376u, u_input.a.x), _wgslsmith_div_u32(37230u, u_input.c.x)), min(89285u, u_input.b), 19940u)), arg_0.e.x);
    var_0 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-466f, var_0.x, 461f, var_1.a.x) - vec4<f32>(var_0.x, var_0.x, -908f, 1000f)))))));
    return Struct_1(_wgslsmith_mult_vec3_i32(-countOneBits(vec3<i32>(0i, 52212i, -2147483647i)), arg_0.a >> ((select(u_input.c.wzy, u_input.c.wzy, arg_0.c) ^ vec3<u32>(1u, 0u, 21528u)) % vec3<u32>(32u))), any(vec2<bool>(arg_0.b, false)), all(select(select(vec4<bool>(arg_0.b, arg_0.c, true, arg_0.b), !vec4<bool>(arg_0.c, arg_0.b, arg_0.d, arg_0.d), vec4<bool>(arg_0.d, false, arg_0.c, arg_0.b)), select(!vec4<bool>(true, arg_0.c, arg_0.b, false), !vec4<bool>(false, arg_0.c, arg_0.d, arg_0.d), vec4<bool>(arg_0.b, true, false, true)), !(arg_0.c || arg_0.c))), all(vec2<bool>(arg_0.c, arg_0.b)), -(vec2<i32>(~arg_0.a.x, ~64191i) & ~vec2<i32>(arg_0.e.x, -43678i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_1(Struct_1(max(-vec3<i32>(5947i, 13720i, -1i), vec3<i32>(-25750i, -7404i, -1i) >> (u_input.c.xwz % vec3<u32>(32u))), true, select(all(vec4<bool>(true, false, false, false)), true, any(vec3<bool>(false, true, true))), any(vec3<bool>(true, true, true)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 5221i, 2147483647i), vec3<i32>(-1i, -4556i, 42968i)), -2147483647i << (0u % 32u))), ~_wgslsmith_clamp_vec3_u32(u_input.c.wxz, vec3<u32>(30645u, 24711u, u_input.a.x), vec3<u32>(29499u, u_input.a.x, u_input.a.x)) << (vec3<u32>(countOneBits(u_input.c.x), 11120u, 24342u) % vec3<u32>(32u)), _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.c.x, 1u, u_input.a.x), _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(99333u, u_input.c.x, 0u), u_input.c.wxw), u_input.c.yyx))));
    let var_1 = false;
    var var_2 = func_6(func_1(Struct_1(vec3<i32>(-19079i, firstLeadingBit(var_0.e.x), 27150i << (u_input.b % 32u)), select(false, all(vec4<bool>(var_1, false, var_1, var_0.c)), var_0.d && true), true, func_6(func_3(Struct_2(vec3<f32>(1000f, 167f, 228f), vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.c.x), 1i), vec2<f32>(1158f, 1000f), Struct_2(vec3<f32>(359f, 432f, -653f), u_input.c, 1i))).c, ~(var_0.a.yx >> (u_input.a % vec2<u32>(32u)))), u_input.c.yzy, ~1u << ((~4294967295u & _wgslsmith_mod_u32(u_input.b, 36982u)) % 32u)));
    let var_3 = u_input.a.x;
    global0 = var_3;
    let var_4 = func_6(func_3(Struct_2(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-962f, 472f, 432f))), vec3<f32>(-110f, 1311f, 1000f), vec3<bool>(false, var_2.c, var_0.b))), u_input.c, var_2.e.x), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec3_f32(func_2(Struct_2(vec3<f32>(1400f, 243f, 106f), vec4<u32>(33652u, 24003u, var_3, 4294967295u), var_2.a.x), vec4<bool>(false, var_1, false, false))).yy, vec2<f32>(_wgslsmith_f_op_f32(883f * -1515f), _wgslsmith_f_op_f32(f32(-1f) * -446f)))), Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-128f, -1731f, 399f))), ~(vec4<u32>(var_3, 32594u, 0u, 1u) << (vec4<u32>(4294967295u, var_3, var_3, 0u) % vec4<u32>(32u))), var_0.e.x)));
    global0 = firstTrailingBit(4294967295u);
    let var_5 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, 1306f, -var_2.e.x);
}

