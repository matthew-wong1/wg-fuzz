struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<f32>,
    d: i32,
    e: vec3<i32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_1,
    b: f32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec3<bool>, arg_1: f32, arg_2: Struct_4, arg_3: Struct_1) -> f32 {
    return arg_3.c.x;
}

fn func_2(arg_0: u32) -> vec3<i32> {
    var var_0 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-409f + _wgslsmith_f_op_f32(func_3(vec3<bool>(true, false, true), 977f, Struct_4(Struct_1(vec3<f32>(110f, 1000f, 1223f), 500f, vec4<f32>(-1000f, -710f, 921f, -773f), u_input.c, vec3<i32>(1i, -1i, u_input.c)), -615f), Struct_1(vec3<f32>(1208f, 704f, -890f), -1408f, vec4<f32>(1329f, -1537f, 514f, -1000f), u_input.c, vec3<i32>(u_input.c, u_input.c, -1218i)))))), _wgslsmith_f_op_f32(-506f - 345f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(243f, -341f, false)), _wgslsmith_f_op_f32(abs(-824f)))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -670f)))), _wgslsmith_f_op_f32(f32(-1f) * -1082f), _wgslsmith_f_op_vec4_f32(vec4<f32>(-486f, -206f, _wgslsmith_div_f32(139f, _wgslsmith_f_op_f32(582f - -443f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -283f), -1071f)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-728f, 433f, 407f, 545f))) + vec4<f32>(1283f, 1212f, 157f, -308f)))), abs(~1i), ~(vec3<i32>(u_input.c, 19631i, u_input.c) ^ select(vec3<i32>(u_input.c, -2147483647i, u_input.c), vec3<i32>(u_input.c, 26721i, -2147483647i), vec3<bool>(false, true, true))) >> (u_input.b % vec3<u32>(32u)));
    var var_1 = var_0.a.zx;
    var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_1.x)) * _wgslsmith_div_f32(194f, 1042f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2340f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(146f, 324f), vec2<f32>(var_0.a.x, 1350f))))));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -415f)));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.x, -1535f, var_1.x) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1386f, 693f, -1184f))))))), -409f, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(var_0.c, _wgslsmith_div_vec4_f32(var_0.c, var_0.c)) - _wgslsmith_f_op_vec4_f32(step(var_0.c, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(474f, -370f, var_1.x, var_1.x), var_0.c))))), vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(var_1.x, -1477f)), -1650f)), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(-var_0.b)), _wgslsmith_f_op_f32(f32(-1f) * -2397f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(var_0.a.x + 1052f), var_0.a.x)))), _wgslsmith_dot_vec4_i32(~vec4<i32>(-2147483647i, reverseBits(var_0.d), select(-2147483647i, var_0.e.x, true), ~u_input.c), vec4<i32>(0i >> ((u_input.b.x << (4294967295u % 32u)) % 32u), u_input.c, u_input.c, ~u_input.c)), var_0.e);
    return min(~(-vec3<i32>(var_0.d, -1i, -21117i)) << (_wgslsmith_clamp_vec3_u32(u_input.d.xxz, u_input.d.wyw, u_input.d.wwx) % vec3<u32>(32u)), select(vec3<i32>(_wgslsmith_div_i32(abs(43886i), 26244i), abs(var_0.e.x), u_input.c), countOneBits(var_0.e), !(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a, 1u, arg_0), vec3<u32>(1u, 43948u, 25329u)) < arg_0)));
}

fn func_1(arg_0: vec2<u32>, arg_1: vec3<bool>) -> Struct_1 {
    let var_0 = Struct_2(-_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(firstLeadingBit(vec3<i32>(2147483647i, 0i, -1i)), _wgslsmith_add_vec3_i32(vec3<i32>(16645i, 34729i, 37102i), vec3<i32>(u_input.c, u_input.c, 3106i))), func_2(abs(29845u))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(vec3<f32>(-1000f, 574f, -1246f), vec3<f32>(-905f, -1609f, -1000f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-371f + -2036f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1443f, 1388f, -1429f, 1000f), vec4<f32>(-907f, -600f, 1000f, 556f))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(843f, -1000f, -1050f, -170f), vec4<f32>(397f, 1701f, 627f, -850f)))), false)), u_input.c, _wgslsmith_sub_vec3_i32(min(vec3<i32>(u_input.c, u_input.c, u_input.c), vec3<i32>(u_input.c, u_input.c, u_input.c)), vec3<i32>(72450i, -68147i, 70006i)) >> (abs(u_input.d.zwz) % vec3<u32>(32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 283f)));
    var var_1 = u_input.b.x & reverseBits(~4294967295u ^ countOneBits(u_input.a));
    var_1 = reverseBits(~(~38231u));
    let var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-536f * -1000f), _wgslsmith_f_op_f32(-var_0.b.c.x), var_0.b.a.x, _wgslsmith_f_op_f32(var_0.c + -1000f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(var_0.b.c, vec4<f32>(-217f, var_0.c, var_0.b.c.x, var_0.b.a.x)))) - _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1363f, var_0.b.a.x, var_0.b.c.x, var_0.c)))), !vec4<bool>(2179f >= var_0.b.c.x, !arg_1.x, any(vec4<bool>(arg_1.x, arg_1.x, false, arg_1.x)), arg_1.x))));
    var var_3 = arg_1;
    return var_0.b;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.c, 1i, u_input.c), abs(_wgslsmith_sub_vec3_i32(vec3<i32>(-33532i, 67337i, u_input.c), vec3<i32>(u_input.c, 53590i, u_input.c)) << (u_input.d.yzw % vec3<u32>(32u)))), func_1(~u_input.b.yy, !vec3<bool>(true, true, all(vec2<bool>(true, false)))), 363f);
    var_0 = Struct_2(_wgslsmith_div_vec3_i32(vec3<i32>(44136i, i32(-1i) * -2147483647i, var_0.b.d) ^ var_0.a, abs(reverseBits(var_0.b.e ^ vec3<i32>(var_0.b.e.x, -1i, u_input.c)))), Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b.a), var_0.c, _wgslsmith_f_op_vec4_f32(-var_0.b.c), 1i, var_0.b.e), -1000f);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-var_0.b.a), _wgslsmith_f_op_f32(ceil(var_0.b.b)), func_1(~abs(vec2<u32>(27329u, 0u)) | u_input.b.yy, vec3<bool>(true, true, true)).c, min(_wgslsmith_sub_i32(~u_input.c, -25896i), firstTrailingBit(~15786i)), var_0.b.e);
    let var_2 = vec2<i32>(1i, var_0.b.d);
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(func_1(~u_input.b.zy, vec3<bool>(true, false, false)).c.x)) - var_1.a.x));
    var var_4 = -9103i;
    let var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_5, 0i, var_1.d) & vec4<i32>(21891i, var_0.a.x, 2147483647i, 0i), vec4<i32>(u_input.c, 1i, var_2.x, var_2.x)), 2147483647i));
}

