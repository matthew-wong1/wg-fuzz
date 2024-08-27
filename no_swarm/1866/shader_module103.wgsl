struct Struct_1 {
    a: vec4<bool>,
    b: u32,
    c: vec4<f32>,
    d: vec4<i32>,
    e: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: Struct_1, arg_3: i32) -> vec4<i32> {
    var var_0 = Struct_1(!(!select(!vec4<bool>(arg_0.a.x, arg_2.a.x, arg_2.a.x, false), vec4<bool>(arg_0.a.x, arg_0.a.x, false, false), true)), 4294967295u, arg_0.c, _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(~firstLeadingBit(vec4<i32>(-576i, 15567i, -24014i, arg_2.d.x)), vec4<i32>(-1i) * -arg_0.d, arg_0.d), -(-vec4<i32>(arg_3, 0i, arg_2.d.x, 0i) | arg_0.d)), ~95518u);
    var var_1 = vec3<i32>(2147483647i, reverseBits(-var_0.d.x & arg_3), -2147483647i);
    var var_2 = arg_0.a.x;
    return -vec4<i32>(arg_3, _wgslsmith_mult_i32(2147483647i, min(-2084i ^ var_0.d.x, var_1.x)), u_input.c << (780u % 32u), _wgslsmith_div_i32(2147483647i, ~2147483647i));
}

fn func_2(arg_0: vec3<i32>, arg_1: f32, arg_2: f32) -> Struct_1 {
    let var_0 = vec2<i32>(2147483647i, -1i);
    var var_1 = 10559u;
    var_1 = 4294967295u;
    var var_2 = arg_1;
    var var_3 = vec3<i32>(_wgslsmith_div_i32(-24115i, ~(_wgslsmith_sub_i32(arg_0.x, 0i) & (i32(-1i) * -2147483647i))), _wgslsmith_dot_vec4_i32(-(-vec4<i32>(arg_0.x, arg_0.x, 0i, u_input.c) & func_3(Struct_1(vec4<bool>(true, true, false, false), 4294967295u, vec4<f32>(arg_1, arg_1, arg_1, 456f), vec4<i32>(2147483647i, 0i, -2147483647i, -18821i), u_input.b), arg_2, Struct_1(vec4<bool>(false, true, true, true), 39566u, vec4<f32>(-775f, 692f, arg_2, 424f), vec4<i32>(7335i, arg_0.x, 3872i, 0i), 0u), -35272i)), -vec4<i32>(~28370i, ~(-2147483647i), var_0.x, _wgslsmith_dot_vec4_i32(vec4<i32>(3536i, 0i, -61601i, var_0.x), vec4<i32>(u_input.c, -2147483647i, u_input.c, u_input.c)))), u_input.c);
    return Struct_1(select(!vec4<bool>(true, false, true, select(false, false, false)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, true)), true), true), (~(~18021u) >> (u_input.a.x % 32u)) & ~abs(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.a.x, u_input.a.x), vec4<u32>(27933u, 0u, 1u, u_input.b))), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-167f - _wgslsmith_f_op_f32(arg_2 - arg_1)), arg_2, -1465f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1024f, 1274f, -2153f, -798f) - vec4<f32>(arg_1, arg_2, 985f, arg_2))))))), vec4<i32>(var_0.x, u_input.c, ~(60601i & u_input.c), -var_3.x << (~_wgslsmith_dot_vec2_u32(u_input.a, vec2<u32>(u_input.b, u_input.b)) % 32u)), u_input.b);
}

fn func_4(arg_0: Struct_1, arg_1: f32, arg_2: vec4<bool>) -> Struct_1 {
    return func_2(-vec3<i32>(countOneBits(_wgslsmith_add_i32(arg_0.d.x, -1i)), reverseBits(max(arg_0.d.x, 0i)), u_input.c), _wgslsmith_f_op_f32(trunc(arg_1)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1122f - -854f), -1838f) - _wgslsmith_f_op_f32(select(616f, _wgslsmith_f_op_f32(-arg_0.c.x), arg_2.x && false))));
}

fn func_5(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<bool> {
    var var_0 = arg_1.x && (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.c.x - 1000f)) == -1024f);
    var_0 = !(!(arg_0.a.x && all(func_2(arg_0.d.xyy, arg_0.c.x, 1000f).a.wy)));
    var var_1 = Struct_1(!vec4<bool>(arg_1.x, arg_0.a.x, min(arg_0.b, arg_0.b) > reverseBits(0u), true), _wgslsmith_mult_u32(~(func_2(vec3<i32>(u_input.c, 2805i, arg_0.d.x), arg_0.c.x, -146f).e | u_input.a.x), u_input.a.x), arg_0.c, _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(arg_0.d, arg_0.d), ~(arg_0.d >> (vec4<u32>(0u, 15911u, 0u, 50065u) % vec4<u32>(32u)))) | func_4(func_4(func_2(vec3<i32>(-1i, u_input.c, 50459i), arg_0.c.x, arg_0.c.x), _wgslsmith_f_op_f32(f32(-1f) * -479f), vec4<bool>(arg_0.a.x, arg_0.a.x, false, arg_1.x)), -378f, !vec4<bool>(arg_0.a.x, false, true, arg_0.a.x)).d, 1u);
    let var_2 = ~15111u;
    let var_3 = func_4(func_2(_wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d.x, -58710i, var_1.d.x) >> (~vec3<u32>(var_2, 4919u, 4294967295u) % vec3<u32>(32u)), vec3<i32>(var_1.d.x, 37582i, -41102i) >> (vec3<u32>(var_1.e, arg_0.e, 52212u) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.x) + _wgslsmith_f_op_f32(-var_1.c.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -513f), _wgslsmith_f_op_f32(var_1.c.x + arg_0.c.x))))), 938f, select(!vec4<bool>(any(vec2<bool>(true, false)), arg_1.x, arg_1.x, var_1.a.x & var_1.a.x), !vec4<bool>(var_1.a.x, any(var_1.a.wwz), arg_0.c.x <= 1000f, !arg_1.x), any(func_4(func_4(Struct_1(arg_0.a, 24455u, vec4<f32>(1181f, 427f, -293f, -1000f), vec4<i32>(1i, arg_0.d.x, var_1.d.x, var_1.d.x), 1u), 1000f, arg_0.a), 1090f, !vec4<bool>(arg_0.a.x, false, arg_1.x, arg_1.x)).a)));
    return vec2<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_1.c.x, 1f)) * var_3.c.x) > var_3.c.x, var_3.a.x);
}

fn func_6(arg_0: vec4<i32>, arg_1: bool, arg_2: f32) -> vec2<bool> {
    let var_0 = Struct_1(select(select(vec4<bool>(arg_1, any(vec4<bool>(arg_1, arg_1, false, false)), false && arg_1, false), !select(vec4<bool>(arg_1, true, false, arg_1), vec4<bool>(false, false, false, arg_1), false), func_4(func_4(Struct_1(vec4<bool>(true, arg_1, arg_1, false), 36234u, vec4<f32>(-723f, arg_2, arg_2, arg_2), arg_0, u_input.a.x), arg_2, vec4<bool>(arg_1, false, false, true)), arg_2, vec4<bool>(arg_1, false, false, arg_1)).a), vec4<bool>(true, false, u_input.b > _wgslsmith_add_u32(16538u, u_input.b), false), func_5(Struct_1(select(vec4<bool>(false, true, true, false), vec4<bool>(arg_1, arg_1, true, false), arg_1), ~4294967295u, vec4<f32>(778f, 1341f, arg_2, arg_2), firstTrailingBit(vec4<i32>(u_input.c, arg_0.x, arg_0.x, 1i)), 78561u), !(!vec2<bool>(false, arg_1))).x), abs(countOneBits(23656u)), vec4<f32>(_wgslsmith_f_op_f32(-arg_2), arg_2, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(380f + _wgslsmith_f_op_f32(max(arg_2, arg_2)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_2))) * arg_2)), func_2(arg_0.zww, -701f, -1000f).d, ~(~((u_input.a.x >> (u_input.b % 32u)) | firstLeadingBit(0u))));
    let var_1 = _wgslsmith_div_vec3_u32(vec3<u32>(~(~0u), _wgslsmith_div_u32(max(u_input.a.x, firstLeadingBit(1u)), ~4294967295u << (~var_0.b % 32u)), u_input.a.x | 667u), ~(~vec3<u32>(var_0.e, _wgslsmith_mod_u32(0u, 1u), var_0.e)));
    var var_2 = var_0;
    let var_3 = any(var_2.a);
    let var_4 = vec3<f32>(var_0.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_2.c.x, 992f)))))), func_4(Struct_1(select(!vec4<bool>(false, false, true, var_0.a.x), vec4<bool>(false, var_2.a.x, var_0.a.x, true), var_0.a), var_1.x, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1000f, 2201f, arg_2)), func_4(Struct_1(vec4<bool>(true, true, false, true), 1u, vec4<f32>(-128f, 522f, 1600f, var_2.c.x), vec4<i32>(-43675i, var_2.d.x, 0i, u_input.c), 10891u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), var_2.a).d, abs(~0u)), -1581f, vec4<bool>(var_2.a.x, func_4(Struct_1(vec4<bool>(arg_1, true, var_3, false), u_input.b, vec4<f32>(-551f, var_0.c.x, 1013f, -1000f), vec4<i32>(-28986i, u_input.c, u_input.c, 2147483647i), 0u), -474f, var_0.a).a.x && (u_input.a.x < 1u), true, any(select(vec2<bool>(var_0.a.x, false), var_0.a.yy, false)))).c.x);
    return !vec2<bool>(var_3, var_2.a.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<u32>, arg_2: vec2<i32>, arg_3: bool) -> bool {
    let var_0 = func_6(-vec4<i32>(-(~arg_2.x), ~_wgslsmith_div_i32(98225i, u_input.c), _wgslsmith_dot_vec3_i32(vec3<i32>(20771i, -2180i, -1i), vec3<i32>(arg_2.x, u_input.c, u_input.c)), reverseBits(u_input.c)), all(func_5(func_4(func_2(vec3<i32>(0i, u_input.c, -1i), 293f, -2058f), _wgslsmith_f_op_f32(-448f + 340f), vec4<bool>(false, false, true, arg_0.x)), select(vec2<bool>(arg_0.x, false), vec2<bool>(false, false), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(430f - _wgslsmith_f_op_f32(584f * 818f))) + -506f));
    var var_1 = Struct_1(vec4<bool>(select(func_4(Struct_1(vec4<bool>(true, true, arg_3, arg_3), arg_1.x, vec4<f32>(-1000f, -1000f, 1214f, 381f), vec4<i32>(u_input.c, 0i, u_input.c, -10788i), 76878u), 1524f, vec4<bool>(arg_0.x, arg_0.x, var_0.x, var_0.x)).d.x, select(3647i, arg_2.x, false), true) != -1i, true && !arg_0.x, arg_3, ~_wgslsmith_mod_u32(arg_1.x, 0u) > (countOneBits(0u) << (~arg_1.x % 32u))), ~_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(arg_1.x, 0u, arg_1.x, 1u), vec4<u32>(arg_1.x, arg_1.x, 0u, 4294967295u)), ~vec4<u32>(95321u, arg_1.x, u_input.b, arg_1.x), _wgslsmith_mult_vec4_u32(vec4<u32>(12016u, 4294967295u, 4294967295u, 0u), vec4<u32>(1u, u_input.a.x, arg_1.x, 1u))), reverseBits(vec4<u32>(4294967295u, arg_1.x, arg_1.x, 0u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-207f, _wgslsmith_f_op_f32(-1438f * 518f), _wgslsmith_f_op_f32(-1103f + -1348f), _wgslsmith_f_op_f32(sign(-1637f)))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-657f + 1385f), -1783f, _wgslsmith_f_op_f32(-359f + 536f), -1249f) + vec4<f32>(_wgslsmith_f_op_f32(select(335f, 1000f, true)), func_4(Struct_1(vec4<bool>(true, false, arg_0.x, false), 0u, vec4<f32>(840f, -593f, -569f, -1852f), vec4<i32>(arg_2.x, 2147483647i, u_input.c, -3385i), u_input.b), 1162f, vec4<bool>(arg_0.x, false, false, false)).c.x, _wgslsmith_f_op_f32(floor(777f)), _wgslsmith_f_op_f32(f32(-1f) * -1500f)))), _wgslsmith_add_vec4_i32(-max(vec4<i32>(-20497i, u_input.c, -18161i, -15641i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, -2147483647i, arg_2.x, u_input.c), vec4<i32>(-34844i, -1434i, arg_2.x, arg_2.x))), _wgslsmith_div_vec4_i32(vec4<i32>(-2147483647i, arg_2.x, u_input.c, -5750i), _wgslsmith_add_vec4_i32(vec4<i32>(-1i, -2147483647i, 0i, u_input.c), vec4<i32>(-1i, u_input.c, u_input.c, u_input.c))) >> ((~vec4<u32>(u_input.b, u_input.b, u_input.b, u_input.a.x) ^ vec4<u32>(4294967295u, arg_1.x, arg_1.x, arg_1.x)) % vec4<u32>(32u))), ~(~85275u));
    var var_2 = 1171f;
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), var_1.c.x));
    let var_4 = ~4805u;
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = (true & !func_1(vec3<bool>(true, true, true), abs(vec3<u32>(u_input.b, u_input.b, 37454u)), vec2<i32>(u_input.c, u_input.c), any(vec3<bool>(true, false, false)))) && true;
    let var_1 = _wgslsmith_div_f32(-806f, -224f);
    var var_2 = !(!(16454i >= u_input.c));
    var_2 = var_0;
    let var_3 = _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(-572f, var_1, _wgslsmith_f_op_f32(sign(-1013f)), func_2(~vec3<i32>(u_input.c, -2147483647i, 0i), _wgslsmith_div_f32(var_1, -917f), func_4(Struct_1(vec4<bool>(var_0, true, var_0, true), 37102u, vec4<f32>(var_1, -1507f, -1146f, -879f), vec4<i32>(u_input.c, u_input.c, u_input.c, u_input.c), u_input.b), var_1, vec4<bool>(var_0, var_0, true, var_0)).c.x).c.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_1 + -1000f), -577f, var_1, _wgslsmith_f_op_f32(var_1 * var_1))))));
    var var_4 = vec3<u32>(u_input.b, 0u, 1u);
    let var_5 = func_2(_wgslsmith_sub_vec3_i32(-vec3<i32>(-u_input.c, 35661i, firstLeadingBit(1i)), ~firstTrailingBit(vec3<i32>(-11185i, u_input.c, 2147483647i) | vec3<i32>(u_input.c, -1i, u_input.c))), var_3.x, -1295f).c.x;
    var_2 = !var_0;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.wx, func_2(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, u_input.c, -2147483647i), countOneBits(vec3<i32>(u_input.c, 0i, 35848i))) >> (vec3<u32>(40824u, 38914u & var_4.x, 29744u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_1), func_2(vec3<i32>(7159i, u_input.c, u_input.c), var_5, var_5).c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-189f + 714f) + 2088f)).d.x, _wgslsmith_clamp_vec3_u32(select(~vec3<u32>(u_input.b, 1u, var_4.x) | vec3<u32>(77344u, 0u, var_4.x), vec3<u32>(12734u, reverseBits(33737u), u_input.b), false), select(vec3<u32>(~9553u, ~u_input.b, ~9096u), _wgslsmith_mod_vec3_u32(select(vec3<u32>(13222u, u_input.a.x, var_4.x), vec3<u32>(21151u, u_input.b, 23472u), vec3<bool>(var_0, true, var_0)), vec3<u32>(var_4.x, 1u, var_4.x)), func_2(~vec3<i32>(u_input.c, u_input.c, 1i), var_3.x, -698f).a.yzy), ~(~(vec3<u32>(u_input.a.x, var_4.x, 23386u) >> (vec3<u32>(1u, 4294967295u, 4294967295u) % vec3<u32>(32u))))));
}

