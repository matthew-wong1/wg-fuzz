struct Struct_1 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: vec3<bool>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: vec4<i32>,
    b: Struct_2,
    c: u32,
    d: vec4<f32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: Struct_3,
    d: i32,
}

struct Struct_5 {
    a: vec4<bool>,
    b: Struct_4,
    c: Struct_4,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: i32) -> vec3<bool> {
    let var_0 = -211f;
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_0.d.b)) + arg_0.a.b) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.d.b) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -285f, arg_0.a.b.x, -882f)))));
    let var_2 = arg_0.a.e;
    return !select(arg_0.d.c, !arg_0.a.c, arg_0.e);
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: u32) -> u32 {
    var var_0 = Struct_1(abs(arg_0.xz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2101f, -795f, 719f, -876f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(552f, -1605f, 2879f, 845f) + vec4<f32>(871f, 181f, -1347f, -355f)))))), select(select(vec3<bool>(true, true, true), vec3<bool>(all(vec4<bool>(true, true, false, true)), true, all(vec4<bool>(true, true, false, true))), vec3<bool>(u_input.c.x != 30388i, false, all(vec2<bool>(true, true)))), vec3<bool>(true, select(true, true, true), all(vec4<bool>(false, true, false, false))), select(func_3(Struct_2(Struct_1(vec2<u32>(arg_0.x, arg_2), vec4<f32>(881f, -136f, 456f, 571f), vec3<bool>(false, true, false), 2147483647i, vec3<i32>(u_input.c.x, arg_1.x, 29958i)), vec4<bool>(true, true, false, false), arg_1.x, Struct_1(vec2<u32>(0u, 1u), vec4<f32>(111f, 502f, -810f, 1000f), vec3<bool>(false, false, true), 25451i, vec3<i32>(-2147483647i, -23754i, -1i)), false), _wgslsmith_clamp_i32(u_input.d, arg_1.x, arg_1.x)), select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), func_3(Struct_2(Struct_1(vec2<u32>(arg_2, 0u), vec4<f32>(613f, -644f, -447f, 304f), vec3<bool>(false, true, false), -1i, arg_1.xzy), vec4<bool>(false, false, true, false), arg_1.x, Struct_1(arg_0.xz, vec4<f32>(-1387f, 306f, 254f, -732f), vec3<bool>(false, false, false), u_input.a, vec3<i32>(arg_1.x, arg_1.x, -2147483647i)), false), arg_1.x)), select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true))), ~(-_wgslsmith_add_i32(_wgslsmith_clamp_i32(-7897i, u_input.c.x, -1i), -1i)), ~countOneBits(abs(abs(arg_1.xzw))));
    var_0 = Struct_1(arg_0.zz, vec4<f32>(_wgslsmith_f_op_f32(-var_0.b.x), 2157f, 235f, var_0.b.x), vec3<bool>(!((arg_0.x ^ arg_0.x) > min(var_0.a.x, 0u)), select(true, true, !(!var_0.c.x)), false), _wgslsmith_dot_vec3_i32(~max(-arg_1.zzx, ~vec3<i32>(u_input.c.x, var_0.d, arg_1.x)), select(~arg_1.zwx, _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d, 9970i, 0i), vec3<i32>(var_0.d, var_0.e.x, arg_1.x)), _wgslsmith_div_vec3_i32(vec3<i32>(-29578i, 0i, var_0.e.x), vec3<i32>(u_input.c.x, var_0.e.x, 1i))), func_3(Struct_2(Struct_1(vec2<u32>(var_0.a.x, u_input.b.x), vec4<f32>(-132f, -336f, var_0.b.x, var_0.b.x), vec3<bool>(var_0.c.x, false, var_0.c.x), var_0.d, vec3<i32>(0i, -2147483647i, u_input.d)), vec4<bool>(var_0.c.x, false, true, true), -15673i, Struct_1(var_0.a, vec4<f32>(var_0.b.x, var_0.b.x, -2208f, var_0.b.x), vec3<bool>(true, var_0.c.x, true), 0i, var_0.e), var_0.c.x), ~arg_1.x))), vec3<i32>(~reverseBits(-3869i), var_0.d, min(arg_1.x, arg_1.x | 16737i)) & vec3<i32>(1i, -41184i, u_input.a >> (arg_0.x % 32u)));
    let var_1 = _wgslsmith_f_op_vec4_f32(-var_0.b);
    var_0 = Struct_1(~min(select(_wgslsmith_mod_vec2_u32(arg_0.yz, vec2<u32>(u_input.b.x, u_input.b.x)), ~vec2<u32>(arg_2, arg_0.x), true), firstTrailingBit(vec2<u32>(0u, var_0.a.x) ^ u_input.b.xx)), var_0.b, var_0.c, 5i, select(arg_1.zzw, _wgslsmith_sub_vec3_i32(vec3<i32>(-1i) * -vec3<i32>(arg_1.x, 32933i, var_0.e.x), -arg_1.xzx), var_0.c.x));
    let var_2 = _wgslsmith_add_vec3_i32(max(arg_1.yyy | -(var_0.e | arg_1.yyy), _wgslsmith_div_vec3_i32(vec3<i32>(select(u_input.d, arg_1.x, true), u_input.c.x, -41693i), arg_1.yxy >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(27413u, arg_0.x, 57314u), vec3<u32>(4294967295u, var_0.a.x, arg_2), vec3<u32>(var_0.a.x, 15806u, 0u)) % vec3<u32>(32u)))), -firstTrailingBit(abs(-vec3<i32>(-2073i, 31881i, 1i))));
    return firstLeadingBit(arg_0.x);
}

fn func_4(arg_0: u32) -> i32 {
    var var_0 = Struct_2(Struct_1(vec2<u32>(u_input.b.x, ~151477u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1f, 1f, 1f, 1f), vec4<f32>(-558f, -671f, -122f, -124f), false)), _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(596f, -606f, -740f, 761f)))))), func_3(Struct_2(Struct_1(vec2<u32>(1280u, u_input.b.x), vec4<f32>(817f, -292f, -916f, 1372f), vec3<bool>(true, true, false), 1i, vec3<i32>(u_input.c.x, 1i, -1i)), vec4<bool>(true, true, true, true), _wgslsmith_clamp_i32(u_input.c.x, -31952i, -2147483647i), Struct_1(u_input.b.zz, vec4<f32>(-1000f, 634f, 937f, 282f), vec3<bool>(true, false, true), -16132i, vec3<i32>(u_input.c.x, -2147483647i, -2147483647i)), true), select(-6311i, u_input.d, true)), u_input.a, vec3<i32>(u_input.c.x, u_input.a, i32(-1i) * -46925i)), vec4<bool>(true, select((1u > arg_0) || true, true, select(func_3(Struct_2(Struct_1(vec2<u32>(arg_0, u_input.b.x), vec4<f32>(-1754f, 793f, 2714f, -743f), vec3<bool>(true, true, true), u_input.d, vec3<i32>(-2147483647i, 22447i, 19257i)), vec4<bool>(true, true, true, true), 33175i, Struct_1(u_input.b.wx, vec4<f32>(-1309f, -629f, -493f, -1367f), vec3<bool>(true, false, true), u_input.c.x, vec3<i32>(u_input.a, u_input.a, 2147483647i)), false), u_input.c.x).x, true, all(vec4<bool>(true, false, true, true)))), !(true && any(vec3<bool>(false, true, false))), !all(vec4<bool>(false, true, false, true))), ~19411i, Struct_1(u_input.b.ww, _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(555f, 379f, 132f, -317f) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-370f, 167f, -1673f, -1038f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-300f, 513f, 802f, 910f)), vec4<f32>(1516f, -725f, 940f, -806f)))), func_3(Struct_2(Struct_1(vec2<u32>(arg_0, u_input.b.x), vec4<f32>(1415f, 151f, -326f, -297f), vec3<bool>(false, false, true), -2147483647i, vec3<i32>(u_input.c.x, u_input.c.x, -2147483647i)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false)), ~u_input.c.x, Struct_1(vec2<u32>(1u, u_input.b.x), vec4<f32>(557f, -319f, 119f, -731f), vec3<bool>(false, false, true), 1i, vec3<i32>(u_input.a, 2147483647i, 1i)), false), 12889i), -23713i, -(~min(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(u_input.d, u_input.a, u_input.d)))), func_3(Struct_2(Struct_1(u_input.b.yw, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(1000f, 164f, -919f, -422f))), vec3<bool>(true, true, true), -2147483647i, vec3<i32>(-79634i, u_input.d, u_input.c.x) & vec3<i32>(u_input.a, 1i, -2147483647i)), select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true)), u_input.c.x, Struct_1(min(u_input.b.yw, vec2<u32>(arg_0, 43099u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-670f, -313f, 605f, 181f) + vec4<f32>(487f, 180f, -345f, -1811f)), func_3(Struct_2(Struct_1(u_input.b.yy, vec4<f32>(1475f, -789f, -755f, 1485f), vec3<bool>(true, false, true), 4976i, vec3<i32>(1i, -2147483647i, 4106i)), vec4<bool>(false, false, true, true), -8992i, Struct_1(vec2<u32>(arg_0, u_input.b.x), vec4<f32>(301f, 329f, 201f, 1189f), vec3<bool>(false, false, false), u_input.d, vec3<i32>(1i, -2147483647i, -2237i)), false), u_input.a), u_input.d, ~vec3<i32>(u_input.c.x, u_input.c.x, 19819i)), true), -1i).x);
    var var_1 = Struct_3(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(31470i, 0i, _wgslsmith_mod_i32(-24753i, 50610i), 0i), vec4<i32>(~(-2147483647i), -7399i, ~(-2147483647i), -22043i)), _wgslsmith_div_vec4_i32(~vec4<i32>(u_input.d, u_input.a, -2147483647i, -36811i) | vec4<i32>(var_0.d.d, var_0.a.d, u_input.a, -30923i), -(~vec4<i32>(var_0.a.d, -2147483647i, u_input.d, -2987i))), _wgslsmith_sub_vec4_i32(select(select(vec4<i32>(var_0.c, 0i, 2147483647i, var_0.d.e.x), vec4<i32>(u_input.d, u_input.a, u_input.c.x, var_0.d.e.x), vec4<bool>(var_0.a.c.x, true, false, true)), ~vec4<i32>(var_0.a.d, var_0.d.d, 0i, var_0.c), var_0.a.b.x >= -1000f), firstLeadingBit(vec4<i32>(27300i, var_0.d.e.x, 2147483647i, -37704i)) | vec4<i32>(var_0.d.e.x, -1i, -37989i, -21592i))), Struct_2(var_0.d, select(select(!vec4<bool>(var_0.d.c.x, true, false, var_0.a.c.x), select(vec4<bool>(false, var_0.a.c.x, true, true), vec4<bool>(var_0.e, true, false, var_0.a.c.x), var_0.b.x), var_0.d.c.x), var_0.b, var_0.b), var_0.a.e.x, var_0.d, true), ~arg_0, vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_0.a.b.x, 385f)))), -117f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.d.b.x, -650f))))), var_0.d.b.x));
    let var_2 = Struct_1(_wgslsmith_div_vec2_u32((u_input.b.wz | vec2<u32>(var_1.b.d.a.x, 8974u)) << (_wgslsmith_mod_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(var_1.b.a.a.x, var_1.c), vec2<u32>(39583u, 4294967295u), vec2<u32>(u_input.b.x, arg_0)), var_1.b.a.a) % vec2<u32>(32u)), vec2<u32>(~1u, var_0.d.a.x)), vec4<f32>(var_0.d.b.x, _wgslsmith_f_op_f32(-var_1.b.d.b.x), var_1.d.x, -604f), vec3<bool>(_wgslsmith_f_op_f32(round(-1084f)) >= var_1.d.x, _wgslsmith_add_i32(var_0.c, ~(-2147483647i)) == 2147483647i, !(_wgslsmith_f_op_f32(-var_1.d.x) != _wgslsmith_f_op_f32(var_0.d.b.x - var_0.d.b.x))), firstLeadingBit(i32(-1i) * -min(2982i, var_1.b.c)), var_1.a.xyz);
    let var_3 = Struct_2(var_0.a, select(!select(select(vec4<bool>(true, var_0.e, var_2.c.x, true), vec4<bool>(var_1.b.b.x, true, var_1.b.d.c.x, var_2.c.x), vec4<bool>(true, true, true, var_2.c.x)), var_0.b, select(vec4<bool>(var_0.e, var_0.e, var_0.e, false), var_1.b.b, vec4<bool>(var_0.a.c.x, var_0.e, var_2.c.x, false))), var_0.b, select(vec4<bool>(true, true, false, all(var_2.c.yx)), vec4<bool>(true, all(var_0.a.c.yy), var_2.c.x, any(var_1.b.d.c.zx)), all(var_1.b.b))), u_input.c.x, Struct_1(~u_input.b.zz, var_2.b, vec3<bool>(true, true, true), abs(var_2.d), vec3<i32>(-1i, abs(2147483647i | var_2.d), ~(-2147483647i))), false);
    var_0 = var_3;
    return 0i;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_3, arg_2: Struct_4, arg_3: Struct_2) -> Struct_3 {
    var var_0 = _wgslsmith_clamp_i32(arg_0.d, firstLeadingBit(u_input.d), -4544i);
    let var_1 = arg_3.d.e.x;
    var_0 = ~_wgslsmith_mod_i32(-64915i, firstLeadingBit(31454i) << (arg_2.c.b.a.a.x % 32u));
    let var_2 = _wgslsmith_f_op_vec2_f32(-arg_1.b.a.b.xw);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-410f - _wgslsmith_f_op_f32(round(arg_0.b.x))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.d.b.x - arg_0.b.x))) - -1250f), _wgslsmith_f_op_f32(arg_2.a.x - _wgslsmith_f_op_f32(-407f + _wgslsmith_f_op_f32(f32(-1f) * -746f))), arg_0.b.x);
    return Struct_3(_wgslsmith_mult_vec4_i32(~_wgslsmith_sub_vec4_i32(~vec4<i32>(-1i, 0i, arg_2.c.b.d.d, -2147483647i), arg_1.a), arg_1.a), arg_3, ~64418u, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(arg_0.b, arg_3.d.b), _wgslsmith_f_op_vec4_f32(-arg_1.d))));
}

fn func_1() -> Struct_2 {
    var var_0 = -(~_wgslsmith_mult_i32(4514i << (1u % 32u), 1i) << (_wgslsmith_mult_u32(u_input.b.x & u_input.b.x, ~u_input.b.x) % 32u));
    var_0 = -4630i;
    let var_1 = ~(~(~u_input.b.x));
    var var_2 = func_5(Struct_1(min(select(vec2<u32>(u_input.b.x, 28628u), vec2<u32>(var_1, 22727u), true) << (~vec2<u32>(var_1, var_1) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_mod_u32(1u, var_1), u_input.b.x)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1438f, -495f, -984f, 1510f))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1124f, 999f, -561f, 510f) + vec4<f32>(-1382f, 299f, 934f, -1046f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-467f, 830f, 1571f, 537f)))), !(!select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), false)), i32(-1i) * -max(-2147483647i, -3774i), vec3<i32>(func_4(func_2(u_input.b.yww, vec4<i32>(-10301i, u_input.d, u_input.d, u_input.c.x), 1u)), 14766i, i32(-1i) * -1i)), Struct_3(vec4<i32>(u_input.a, 18952i, 42311i, 30045i) | min(_wgslsmith_clamp_vec4_i32(vec4<i32>(5112i, u_input.a, 13279i, -2135i), vec4<i32>(u_input.a, 1i, -2147483647i, u_input.a), vec4<i32>(u_input.c.x, -1i, 2147483647i, -41808i)), min(vec4<i32>(-1134i, u_input.d, 41329i, u_input.d), vec4<i32>(u_input.c.x, -3700i, u_input.d, u_input.c.x))), Struct_2(Struct_1(vec2<u32>(var_1, var_1), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1182f, 1924f, -1000f, -178f)), vec3<bool>(true, true, true), max(u_input.d, u_input.c.x), ~vec3<i32>(u_input.a, -44582i, u_input.d)), vec4<bool>(true, true, all(vec3<bool>(false, false, true)), true), -1i, Struct_1(~u_input.b.zy, vec4<f32>(-420f, -1000f, -1495f, 692f), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, false)), ~u_input.d, -vec3<i32>(1i, u_input.c.x, -1i)), all(vec3<bool>(false, false, false))), 1u, _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -1933f, -109f, -505f)))))), Struct_4(vec2<f32>(-1411f, -549f), Struct_2(Struct_1(min(vec2<u32>(u_input.b.x, u_input.b.x), vec2<u32>(21528u, 1u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1408f, 1000f, -481f, 308f) + vec4<f32>(-1485f, 1000f, 1390f, -1487f)), vec3<bool>(true, true, true), 1i, max(vec3<i32>(-32149i, u_input.d, u_input.c.x), vec3<i32>(21557i, u_input.c.x, -9010i))), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), _wgslsmith_sub_i32(u_input.c.x >> (var_1 % 32u), ~(-10105i)), Struct_1(vec2<u32>(var_1, 24053u), _wgslsmith_div_vec4_f32(vec4<f32>(-1619f, 496f, 1257f, 357f), vec4<f32>(-2149f, -228f, -137f, -747f)), vec3<bool>(true, true, true), u_input.c.x & 0i, vec3<i32>(u_input.c.x, -1588i, u_input.a) >> (u_input.b.zzz % vec3<u32>(32u))), any(vec3<bool>(true, true, true))), Struct_3(~vec4<i32>(-2147483647i, 8431i, 22934i, u_input.a), Struct_2(Struct_1(u_input.b.yz, vec4<f32>(-286f, -124f, -341f, -1511f), vec3<bool>(false, true, false), 1i, vec3<i32>(u_input.a, 8417i, u_input.d)), vec4<bool>(false, true, false, false), 29637i, Struct_1(u_input.b.yx, vec4<f32>(283f, 304f, -1539f, 193f), vec3<bool>(false, false, false), -44395i, vec3<i32>(u_input.c.x, u_input.a, 0i)), true), var_1, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-415f, -835f, 780f, 848f)))), firstLeadingBit(_wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.c.x, -2147483647i, u_input.a, u_input.c.x), vec4<i32>(u_input.a, 2109i, u_input.c.x, 29483i) & vec4<i32>(u_input.a, u_input.a, -1i, 0i)))), Struct_2(Struct_1(~vec2<u32>(u_input.b.x, 4294967295u) >> (~vec2<u32>(42543u, u_input.b.x) % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1435f, 1613f, 1001f, -1989f) + vec4<f32>(-1288f, 735f, -848f, 1172f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(1571f, 499f, -1177f, 526f))), vec3<bool>(true, true, true), 2147483647i | u_input.a, reverseBits(~vec3<i32>(u_input.a, -95796i, 43323i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true)), u_input.d, Struct_1(u_input.b.xy, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-107f, 1179f, 740f, -274f))), vec3<bool>(true, true, true), -_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), -(vec3<i32>(-2147483647i, 2147483647i, 0i) | vec3<i32>(u_input.d, 1i, 3549i))), false));
    var_2 = Struct_3(abs(vec4<i32>(var_2.b.d.e.x, func_5(var_2.b.d, Struct_3(vec4<i32>(-38i, 0i, 0i, var_2.a.x), var_2.b, var_1, var_2.b.a.b), Struct_4(var_2.d.xx, Struct_2(Struct_1(vec2<u32>(0u, 59781u), var_2.d, var_2.b.d.c, 6207i, var_2.b.a.e), var_2.b.b, var_2.b.d.d, var_2.b.d, var_2.b.b.x), Struct_3(vec4<i32>(var_2.a.x, 1i, -39823i, u_input.c.x), Struct_2(var_2.b.a, vec4<bool>(var_2.b.a.c.x, false, false, true), var_2.b.a.d, Struct_1(vec2<u32>(var_2.b.a.a.x, var_1), var_2.b.a.b, vec3<bool>(false, true, var_2.b.a.c.x), var_2.b.a.e.x, var_2.a.zww), var_2.b.a.c.x), u_input.b.x, var_2.b.a.b), u_input.a), func_5(var_2.b.d, Struct_3(vec4<i32>(u_input.d, u_input.c.x, u_input.d, -2147483647i), var_2.b, 1u, var_2.b.d.b), Struct_4(vec2<f32>(var_2.d.x, -567f), var_2.b, Struct_3(vec4<i32>(-1716i, var_2.a.x, u_input.a, var_2.a.x), var_2.b, var_1, vec4<f32>(-532f, 738f, -903f, -251f)), var_2.a.x), var_2.b).b).b.d.e.x, ~_wgslsmith_dot_vec2_i32(u_input.c, u_input.c), _wgslsmith_dot_vec3_i32(var_2.b.a.e & var_2.b.d.e, select(vec3<i32>(var_2.a.x, -6149i, u_input.d), var_2.a.zxy, var_2.b.a.c.x)))), func_5(func_5(Struct_1(u_input.b.zz, _wgslsmith_f_op_vec4_f32(-var_2.b.d.b), !vec3<bool>(var_2.b.b.x, true, true), 0i, var_2.b.a.e & var_2.a.zwy), Struct_3(vec4<i32>(var_2.a.x, var_2.b.c, -35477i, -8029i), func_5(Struct_1(vec2<u32>(4294967295u, u_input.b.x), vec4<f32>(var_2.b.d.b.x, 600f, var_2.d.x, -1062f), var_2.b.b.zzx, -2147483647i, var_2.b.d.e), Struct_3(vec4<i32>(-16293i, u_input.d, 52507i, var_2.b.d.e.x), Struct_2(var_2.b.d, var_2.b.b, -2147483647i, Struct_1(vec2<u32>(var_1, var_2.b.a.a.x), var_2.d, var_2.b.d.c, var_2.b.d.d, var_2.b.d.e), false), var_2.b.d.a.x, var_2.b.a.b), Struct_4(var_2.b.a.b.wz, var_2.b, Struct_3(var_2.a, Struct_2(Struct_1(u_input.b.ww, vec4<f32>(var_2.d.x, -135f, 406f, var_2.d.x), vec3<bool>(false, true, true), 1312i, vec3<i32>(2147483647i, -53207i, u_input.d)), var_2.b.b, 1i, var_2.b.a, var_2.b.b.x), 0u, vec4<f32>(var_2.d.x, var_2.b.a.b.x, var_2.d.x, -183f)), 0i), Struct_2(Struct_1(u_input.b.wz, var_2.d, var_2.b.d.c, -16459i, vec3<i32>(var_2.b.d.e.x, 1i, 2147483647i)), var_2.b.b, var_2.b.a.e.x, var_2.b.a, var_2.b.d.c.x)).b, 4294967295u, _wgslsmith_f_op_vec4_f32(ceil(var_2.d))), Struct_4(var_2.d.zz, func_5(var_2.b.d, Struct_3(vec4<i32>(-8632i, -6265i, u_input.a, -56078i), Struct_2(var_2.b.a, var_2.b.b, u_input.a, var_2.b.d, false), 50801u, vec4<f32>(var_2.b.d.b.x, var_2.d.x, -156f, var_2.b.d.b.x)), Struct_4(vec2<f32>(var_2.d.x, 1887f), var_2.b, Struct_3(var_2.a, var_2.b, u_input.b.x, var_2.d), -57783i), var_2.b).b, Struct_3(var_2.a, Struct_2(var_2.b.d, vec4<bool>(var_2.b.a.c.x, var_2.b.d.c.x, var_2.b.d.c.x, var_2.b.d.c.x), 15161i, var_2.b.d, var_2.b.e), var_2.b.a.a.x, vec4<f32>(var_2.b.d.b.x, 266f, var_2.d.x, var_2.b.d.b.x)), min(var_2.b.d.e.x, -15207i)), Struct_2(func_5(Struct_1(var_2.b.a.a, var_2.d, var_2.b.b.xyx, 2147483647i, var_2.a.xww), Struct_3(vec4<i32>(var_2.a.x, var_2.b.a.e.x, u_input.d, var_2.a.x), var_2.b, var_2.c, var_2.d), Struct_4(var_2.b.d.b.yx, Struct_2(var_2.b.a, var_2.b.b, 13017i, Struct_1(vec2<u32>(31325u, var_2.c), vec4<f32>(923f, 254f, -562f, var_2.b.d.b.x), vec3<bool>(false, true, var_2.b.a.c.x), -36265i, vec3<i32>(-2147483647i, -2147483647i, -738i)), var_2.b.d.c.x), Struct_3(vec4<i32>(-31063i, var_2.a.x, u_input.d, -4079i), var_2.b, var_2.c, vec4<f32>(var_2.d.x, var_2.d.x, var_2.d.x, -906f)), var_2.a.x), var_2.b).b.d, var_2.b.b, countOneBits(u_input.d), Struct_1(u_input.b.zy, var_2.b.a.b, vec3<bool>(true, var_2.b.b.x, false), 0i, var_2.a.wxz), 2147483647i >= u_input.d)).b.d, Struct_3(var_2.a, Struct_2(func_5(var_2.b.a, Struct_3(vec4<i32>(u_input.d, u_input.a, u_input.a, 1i), var_2.b, 10602u, vec4<f32>(-1111f, 716f, 177f, var_2.b.a.b.x)), Struct_4(var_2.b.d.b.ww, var_2.b, Struct_3(vec4<i32>(1i, 1i, var_2.a.x, u_input.d), var_2.b, 0u, var_2.d), -1i), var_2.b).b.d, var_2.b.b, -u_input.d, func_5(Struct_1(vec2<u32>(u_input.b.x, 64752u), vec4<f32>(var_2.b.d.b.x, var_2.b.a.b.x, 934f, var_2.d.x), var_2.b.b.ywx, 0i, vec3<i32>(var_2.a.x, u_input.c.x, -51771i)), Struct_3(var_2.a, var_2.b, 60030u, var_2.d), Struct_4(vec2<f32>(var_2.d.x, var_2.b.a.b.x), var_2.b, Struct_3(var_2.a, var_2.b, 25074u, var_2.b.d.b), var_2.a.x), var_2.b).b.a, false), 56876u ^ var_1, vec4<f32>(_wgslsmith_f_op_f32(-var_2.b.d.b.x), _wgslsmith_f_op_f32(f32(-1f) * -253f), var_2.d.x, _wgslsmith_f_op_f32(-var_2.b.a.b.x))), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(577f, 854f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.b.d.b.x, var_2.b.a.b.x))), var_2.b, Struct_3(-vec4<i32>(42222i, -19225i, u_input.d, u_input.d), func_5(var_2.b.d, Struct_3(vec4<i32>(2147483647i, -23174i, -13254i, 2147483647i), Struct_2(Struct_1(vec2<u32>(1u, 1u), vec4<f32>(297f, -1102f, -1899f, var_2.b.a.b.x), var_2.b.a.c, 9310i, var_2.b.a.e), vec4<bool>(var_2.b.a.c.x, true, var_2.b.b.x, var_2.b.a.c.x), u_input.d, Struct_1(vec2<u32>(var_1, 1u), vec4<f32>(var_2.b.d.b.x, var_2.b.a.b.x, var_2.d.x, -403f), var_2.b.d.c, -2147483647i, vec3<i32>(-2147483647i, var_2.b.c, var_2.b.c)), var_2.b.a.c.x), var_2.c, var_2.b.d.b), Struct_4(vec2<f32>(var_2.b.d.b.x, var_2.b.d.b.x), var_2.b, Struct_3(var_2.a, var_2.b, var_2.b.d.a.x, var_2.b.a.b), 1i), var_2.b).b, ~var_2.c, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.a.b.x, var_2.b.d.b.x, -1424f, var_2.d.x))), var_2.a.x), Struct_2(var_2.b.d, func_5(func_5(var_2.b.d, Struct_3(vec4<i32>(var_2.b.a.e.x, var_2.a.x, -2147483647i, -41810i), Struct_2(Struct_1(var_2.b.a.a, var_2.d, vec3<bool>(var_2.b.d.c.x, var_2.b.b.x, var_2.b.b.x), 1i, var_2.b.a.e), vec4<bool>(false, true, false, false), u_input.a, var_2.b.d, false), u_input.b.x, vec4<f32>(var_2.b.a.b.x, 418f, var_2.b.d.b.x, var_2.b.d.b.x)), Struct_4(vec2<f32>(276f, var_2.b.d.b.x), var_2.b, Struct_3(var_2.a, Struct_2(var_2.b.a, vec4<bool>(true, var_2.b.a.c.x, var_2.b.b.x, true), 1i, Struct_1(u_input.b.zy, var_2.b.d.b, var_2.b.a.c, -2147483647i, vec3<i32>(var_2.b.d.d, u_input.c.x, u_input.d)), var_2.b.a.c.x), 27884u, vec4<f32>(var_2.b.d.b.x, var_2.d.x, 1000f, 1113f)), 40595i), var_2.b).b.a, func_5(Struct_1(vec2<u32>(var_1, var_1), var_2.b.a.b, vec3<bool>(var_2.b.d.c.x, var_2.b.d.c.x, false), 0i, vec3<i32>(0i, 12997i, -1i)), Struct_3(vec4<i32>(var_2.a.x, u_input.a, var_2.b.a.e.x, 32382i), var_2.b, 23209u, vec4<f32>(-322f, -901f, var_2.b.a.b.x, var_2.b.d.b.x)), Struct_4(var_2.d.xy, var_2.b, Struct_3(vec4<i32>(-2147483647i, -24515i, 1i, var_2.b.a.d), var_2.b, var_2.b.d.a.x, var_2.d), 5998i), var_2.b), Struct_4(var_2.d.xw, Struct_2(Struct_1(vec2<u32>(7315u, u_input.b.x), vec4<f32>(-588f, var_2.b.d.b.x, -500f, var_2.b.d.b.x), vec3<bool>(false, true, true), u_input.c.x, vec3<i32>(7876i, -9244i, -2147483647i)), vec4<bool>(true, false, var_2.b.a.c.x, var_2.b.b.x), 1i, var_2.b.d, true), Struct_3(vec4<i32>(2141i, -43855i, 0i, var_2.a.x), var_2.b, u_input.b.x, var_2.d), var_2.b.a.e.x), Struct_2(var_2.b.d, vec4<bool>(true, var_2.b.e, var_2.b.b.x, false), 1i, Struct_1(var_2.b.a.a, vec4<f32>(1000f, var_2.b.a.b.x, var_2.b.a.b.x, var_2.b.a.b.x), var_2.b.a.c, u_input.c.x, var_2.a.xww), false)).b.b, -1i, var_2.b.d, true)).b, ~94865u, var_2.b.d.b);
    return var_2.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(725f + 105f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(587f + -1485f) - _wgslsmith_f_op_f32(round(-250f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-919f)) + _wgslsmith_div_f32(1513f, -546f))), func_1(), Struct_3(_wgslsmith_mod_vec4_i32(~vec4<i32>(2147483647i, u_input.a, u_input.d, u_input.a), countOneBits(vec4<i32>(u_input.a, u_input.d, 25968i, -2147483647i) ^ vec4<i32>(-1i, -1i, -2147483647i, u_input.d))), func_1(), ~abs(1u), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(843f, -640f, 515f, -129f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(1097f, 1507f, 221f, 878f)))))), _wgslsmith_sub_i32(_wgslsmith_div_i32(1i, reverseBits(-37450i)) << (_wgslsmith_sub_u32(~11164u, u_input.b.x >> (u_input.b.x % 32u)) % 32u), _wgslsmith_div_i32(_wgslsmith_div_i32(u_input.d, u_input.c.x), -3880i) >> (select(firstLeadingBit(u_input.b.x), abs(u_input.b.x), true) % 32u)));
    let var_1 = u_input.b;
    var var_2 = Struct_5(vec4<bool>(!(1u != ~var_1.x), ~114845u == firstTrailingBit(1u >> (var_0.b.d.a.x % 32u)), false, any(var_0.b.b)), Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.a + vec2<f32>(-1012f, -1000f)), vec2<f32>(var_0.c.b.a.b.x, -1454f)) * var_0.a), func_1(), var_0.c, ~var_0.c.a.x), Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(var_0.b.d.b.x * 383f), _wgslsmith_f_op_f32(max(var_0.c.b.a.b.x, var_0.b.d.b.x))) + vec2<f32>(_wgslsmith_f_op_f32(-var_0.a.x), 413f)), var_0.c.b, Struct_3(-select(vec4<i32>(-1i, u_input.a, u_input.d, -12551i), vec4<i32>(u_input.d, var_0.c.a.x, -1i, var_0.b.c), var_0.c.b.e), func_5(var_0.c.b.a, func_5(var_0.b.d, Struct_3(vec4<i32>(u_input.c.x, var_0.d, 22446i, var_0.b.c), Struct_2(var_0.b.a, var_0.b.b, -15773i, Struct_1(vec2<u32>(var_1.x, 2469u), vec4<f32>(var_0.a.x, 644f, -344f, var_0.b.a.b.x), var_0.b.a.c, -1i, vec3<i32>(u_input.d, var_0.d, var_0.d)), false), 1u, var_0.c.d), Struct_4(var_0.a, var_0.b, var_0.c, var_0.d), var_0.b), var_0, Struct_2(var_0.c.b.d, var_0.c.b.b, 12032i, var_0.c.b.a, var_0.b.b.x)).b, 20127u, var_0.c.d), -_wgslsmith_clamp_i32(~0i, -47602i, -var_0.b.c)));
    let var_3 = ~(~func_2(vec3<u32>(~0u, 4294967295u ^ var_1.x, ~5100u), var_0.c.a, var_2.c.c.c));
    let var_4 = var_0.d;
    var var_5 = var_2.b.c.b.b.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_i32(_wgslsmith_mult_i32(u_input.d, -4862i), ~firstLeadingBit(u_input.d)), var_2.c.c.b.a.e.x, 1i, ~firstLeadingBit(func_1().d.d), firstLeadingBit(~var_1.x));
}

