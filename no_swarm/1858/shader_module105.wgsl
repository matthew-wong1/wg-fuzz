struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: vec2<i32>,
    d: vec4<u32>,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: vec4<u32>, arg_3: vec3<bool>) -> bool {
    let var_0 = vec3<f32>(-293f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1394f * 521f)), _wgslsmith_f_op_f32(abs(-2035f)))) * _wgslsmith_f_op_f32(ceil(-1796f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1315f, 1167f) - _wgslsmith_f_op_f32(709f - 1982f))))));
    var var_1 = 16779i;
    var var_2 = firstTrailingBit(_wgslsmith_dot_vec2_u32(min(~abs(vec2<u32>(u_input.c.x, u_input.c.x)), ~arg_2.wy), select(~(~arg_2.ww), vec2<u32>(1u, 27526u), arg_3.yz)));
    var_2 = select(arg_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, u_input.c.x), u_input.c.yz), u_input.c.yx), true);
    let var_3 = u_input.b.x;
    return (~1u <= (1u >> (abs(countOneBits(u_input.c.x)) % 32u))) || arg_3.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: Struct_1) -> vec2<i32> {
    var var_0 = arg_1;
    var var_1 = u_input.c.yz;
    let var_2 = vec2<bool>(!func_3(-1i << ((u_input.c.x & 78926u) % 32u), var_0.c.x ^ _wgslsmith_mod_i32(3151i, -14249i), _wgslsmith_add_vec4_u32(vec4<u32>(46249u, var_1.x, 112336u, var_0.d.x), vec4<u32>(0u, 12943u, u_input.c.x, var_0.d.x)), arg_0.zwz), 31596i > (arg_1.e.x >> (26653u % 32u)));
    let var_3 = max(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_1.d.x, arg_1.d.x), abs(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, arg_1.d.x), var_0.d.xx >> (vec2<u32>(4294967295u, var_0.d.x) % vec2<u32>(32u))))), vec2<u32>(_wgslsmith_sub_u32(~(~u_input.c.x), _wgslsmith_div_u32(_wgslsmith_sub_u32(arg_1.d.x, var_1.x), u_input.c.x)), 0u));
    let var_4 = countOneBits(select(vec2<i32>(_wgslsmith_sub_i32(arg_1.c.x, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.b.x, var_0.e.x, arg_1.c.x))), ~max(-29769i, 7125i)), vec2<i32>(0i, countOneBits(~2147483647i)), false));
    return vec2<i32>(u_input.e.x, arg_1.c.x);
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: Struct_1) -> vec3<bool> {
    var var_0 = 2252u;
    var_0 = u_input.c.x;
    var var_1 = -arg_2.e.yx;
    var_1 = vec2<i32>(min(_wgslsmith_add_i32(_wgslsmith_clamp_i32(firstLeadingBit(var_1.x), -2147483647i, var_1.x), var_1.x), _wgslsmith_sub_i32(firstLeadingBit(var_1.x) & 1i, arg_2.c.x)), ~max(u_input.d.x, u_input.a));
    var var_2 = Struct_1(vec4<f32>(-132f, arg_2.a.x, -497f, -646f), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.a.x)), 1f, -251f), -(~vec2<i32>(u_input.b.x >> (31529u % 32u), arg_1.x)), firstLeadingBit(u_input.c) << (((min(u_input.c, vec4<u32>(19143u, 1u, u_input.c.x, 1u)) | vec4<u32>(u_input.c.x, u_input.c.x, 0u, arg_2.d.x)) | arg_2.d) % vec4<u32>(32u)), vec3<i32>(38281i, -48282i, 30872i));
    return vec3<bool>(select(-_wgslsmith_mult_i32(var_2.c.x, arg_1.x) >= ~(~u_input.b.x), -2147483647i != min(-1i, ~var_2.e.x), true), !(!any(select(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), vec4<bool>(false, arg_0.x, false, false), vec4<bool>(true, arg_0.x, false, false)))), arg_0.x);
}

fn func_1() -> vec4<f32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(157f, 240f, -113f) + vec3<f32>(-434f, -574f, 1040f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(753f, 372f, 236f), vec3<f32>(452f, 721f, -436f), vec3<bool>(false, true, true)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-760f, -701f, 233f))), func_4(vec3<bool>(true, true, true), func_2(vec4<bool>(true, true, false, false), Struct_1(vec4<f32>(-350f, -1490f, -1358f, -203f), vec3<f32>(-2162f, 873f, -201f), vec2<i32>(1i, 25194i), vec4<u32>(6196u, 51318u, u_input.c.x, u_input.c.x), vec3<i32>(-66465i, 43562i, u_input.a))), Struct_1(vec4<f32>(-1000f, -1659f, -1009f, 803f), vec3<f32>(1000f, -160f, -1220f), vec2<i32>(-61710i, 1i), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 45954u), vec3<i32>(u_input.e.x, u_input.b.x, u_input.a)))))));
    let var_1 = any(vec4<bool>(func_4(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), min(-vec2<i32>(u_input.b.x, -2147483647i), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.e.x, u_input.e.x), u_input.e.xy)), Struct_1(vec4<f32>(-482f, 717f, var_0.x, -792f), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_0.x, 1889f, 899f), var_0, vec3<bool>(false, true, true))), select(vec2<i32>(u_input.d.x, 2147483647i), u_input.b.xw, false), select(u_input.c, u_input.c, vec4<bool>(true, false, false, false)), vec3<i32>(u_input.a, u_input.b.x, 36581i))).x, true, !(u_input.c.x <= u_input.c.x), all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    var var_2 = Struct_1(vec4<f32>(-670f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1000f)) * -1387f) * _wgslsmith_f_op_f32(sign(-986f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(1303f - var_0.x), var_0.x, !var_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1041f))), -866f)), vec3<f32>(_wgslsmith_f_op_f32(-262f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(676f)), _wgslsmith_f_op_f32(var_0.x + var_0.x), select(true, var_1, false)))), var_0.x, var_0.x), u_input.b.xy, u_input.c, ~_wgslsmith_add_vec3_i32(-u_input.d.wxx, ~u_input.e));
    var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), var_0.x, -1532f, var_0.x))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_2.a.x, _wgslsmith_f_op_f32(var_2.a.x + _wgslsmith_div_f32(-461f, var_2.b.x)), -117f))), vec2<i32>(u_input.b.x, -(~(-14885i))) | _wgslsmith_add_vec2_i32(vec2<i32>(~u_input.a, -2147483647i), vec2<i32>(func_2(vec4<bool>(true, var_1, var_1, false), Struct_1(var_2.a, vec3<f32>(973f, var_0.x, 596f), u_input.b.yz, var_2.d, u_input.b.yyx)).x, firstLeadingBit(0i))), countOneBits(vec4<u32>(var_2.d.x << (u_input.c.x % 32u), firstLeadingBit(u_input.c.x), _wgslsmith_mod_u32(var_2.d.x, 9825u), 4294967295u)), firstLeadingBit(~((u_input.d.yzy | var_2.e) | vec3<i32>(var_2.e.x, u_input.b.x, u_input.a))));
    let var_3 = Struct_1(var_2.a, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(386f))), -549f, _wgslsmith_f_op_f32(ceil(1896f))), -(vec2<i32>(-1i) * -(vec2<i32>(u_input.a, 2594i) & var_2.e.yx)), ~(~min(_wgslsmith_div_vec4_u32(vec4<u32>(var_2.d.x, 4294967295u, var_2.d.x, 6135u), vec4<u32>(u_input.c.x, var_2.d.x, 0u, u_input.c.x)), vec4<u32>(41779u, var_2.d.x, 4294967295u, var_2.d.x) | var_2.d)), min(vec3<i32>(_wgslsmith_sub_i32(u_input.b.x, var_2.e.x), func_2(vec4<bool>(var_1, var_1, true, false), Struct_1(vec4<f32>(var_2.b.x, var_0.x, var_0.x, 231f), vec3<f32>(-418f, var_0.x, var_0.x), vec2<i32>(0i, -17577i), var_2.d, var_2.e)).x, var_2.e.x), min(countOneBits(u_input.d.yxy), firstLeadingBit(var_2.e))) ^ -var_2.e);
    return var_2.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), _wgslsmith_f_op_vec4_f32(func_1()), true)))));
    let var_1 = -33440i;
    let var_2 = -vec2<i32>(abs(-2147483647i), min(50388i, u_input.a << (u_input.c.x % 32u)));
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0 + _wgslsmith_f_op_vec4_f32(func_1())))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(exp2(var_0.zwz))))), ~vec2<i32>(func_2(vec4<bool>(true, true, true, true), Struct_1(vec4<f32>(827f, 1202f, var_0.x, -864f), var_0.wyx, u_input.e.yz, u_input.c, u_input.d.xzz)).x, 2147483647i), vec4<u32>(u_input.c.x, 4294967295u, _wgslsmith_mod_u32(~4294967295u, u_input.c.x >> (~u_input.c.x % 32u)), u_input.c.x), vec3<i32>(19132i, var_1, _wgslsmith_dot_vec3_i32(reverseBits(u_input.d.xxz), u_input.b.wwx)));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(-1000f, var_0.x))))), 639f);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, firstLeadingBit(vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.zy, u_input.d.zz) >> (var_3.d.x % 32u), i32(-1i) * -6981i, firstLeadingBit(-u_input.d.x))));
}

