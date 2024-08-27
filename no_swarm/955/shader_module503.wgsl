struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_3,
}

struct Struct_5 {
    a: bool,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: Struct_4) -> u32 {
    var var_0 = false;
    var var_1 = Struct_3(abs(arg_1), arg_0, firstTrailingBit(vec2<u32>(arg_0.b, 7447u)));
    var var_2 = arg_2.d;
    var_2 = Struct_2(arg_2.d.c, abs(var_2.b), ~_wgslsmith_mod_i32(_wgslsmith_add_i32(-7644i, ~1i), reverseBits(var_2.c)), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1801f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.d.d.x + -1179f) * _wgslsmith_f_op_f32(-919f * var_2.d.x))), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(arg_2.d.d.x, _wgslsmith_f_op_f32(sign(var_2.d.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1067f * var_2.d.x))), Struct_1(max(abs(_wgslsmith_dot_vec3_i32(vec3<i32>(-35676i, var_1.a, arg_0.a), vec3<i32>(arg_0.a, arg_2.e.b.a, 1i))), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_2.e.b.a), vec2<i32>(5040i, var_1.b.a)), abs(var_1.b.a))), ~u_input.c.x));
    var var_3 = Struct_3(arg_0.a, Struct_1(u_input.b, 10858u), u_input.c.yy);
    return var_3.c.x;
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: bool) -> Struct_4 {
    var var_0 = Struct_4(~(~(vec2<u32>(81801u, 1u) << (~u_input.c.zy % vec2<u32>(32u)))), arg_0.d.xx, Struct_1((i32(-1i) * -arg_0.c) ^ 0i, arg_0.b), arg_0, Struct_3(u_input.b ^ -55747i, arg_0.e, vec2<u32>(_wgslsmith_mult_u32(~1504u, u_input.c.x & u_input.c.x), firstTrailingBit(func_3(arg_0.e, -3093i, Struct_4(vec2<u32>(96529u, u_input.c.x), vec2<f32>(-1288f, arg_0.d.x), arg_0.e, arg_0, Struct_3(2147483647i, Struct_1(u_input.b, arg_0.b), u_input.c.wy)))))));
    var_0 = Struct_4(~vec2<u32>(abs(14412u), abs(_wgslsmith_clamp_u32(var_0.e.b.b, 4294967295u, 60058u))), var_0.d.d.zz, Struct_1(-1i, u_input.c.x), Struct_2(-1i, 1u, -2147483647i, vec3<f32>(var_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(arg_0.d.x)) - _wgslsmith_div_f32(arg_0.d.x, 528f)), _wgslsmith_f_op_f32(-arg_0.d.x)), Struct_1(-45607i, ~firstLeadingBit(10421u))), var_0.e);
    var var_1 = -_wgslsmith_mult_vec4_i32(-(vec4<i32>(arg_1, var_0.c.a, arg_1, u_input.b) | (vec4<i32>(-25760i, -2450i, -12126i, arg_1) & vec4<i32>(10097i, 0i, 14909i, 1i))), vec4<i32>(u_input.a, ~u_input.b, arg_1, ~39030i));
    var_0 = Struct_4(_wgslsmith_clamp_vec2_u32(vec2<u32>(arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 25133u), var_0.a)), vec2<u32>(0u, 1u) << (min(var_0.e.c, vec2<u32>(u_input.c.x, 43130u)) % vec2<u32>(32u)), min(~var_0.a, var_0.e.c)) >> (vec2<u32>(arg_0.b, arg_0.b) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(var_0.d.d.xz * arg_0.d.zz), var_0.e.b, arg_0, var_0.e);
    var_1 = vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-39963i), _wgslsmith_mult_i32(~1i, ~arg_1), ~arg_0.a), (var_1.yzy ^ vec3<i32>(u_input.a, arg_0.e.a, 1i)) & _wgslsmith_add_vec3_i32(select(vec3<i32>(-1i, 54830i, arg_0.a), vec3<i32>(17928i, 52022i, u_input.a), arg_2), var_1.zzy)), firstTrailingBit(reverseBits(-var_0.c.a)), max(-2190i, -1i), abs(var_0.c.a));
    return Struct_4(select(_wgslsmith_clamp_vec2_u32(abs(u_input.c.zx) & max(vec2<u32>(arg_0.e.b, var_0.e.c.x), vec2<u32>(1u, 1u)), ~(u_input.c.wz | vec2<u32>(var_0.a.x, var_0.d.e.b)), vec2<u32>(arg_0.b, 28252u)), vec2<u32>(select(var_0.e.b.b, 32533u, false) | ~u_input.c.x, 1u), all(vec3<bool>(any(vec4<bool>(true, arg_2, arg_2, arg_2)), arg_2, arg_2))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_0.d.x, 261f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-636f, var_0.d.d.x))), var_0.b)), var_0.e.b, var_0.d, Struct_3(var_0.e.b.a, arg_0.e, u_input.c.xw));
}

fn func_4(arg_0: Struct_4) -> vec2<u32> {
    let var_0 = Struct_5(!any(vec3<bool>(true, true, true)));
    let var_1 = arg_0.d;
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, _wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_f_op_f32(arg_0.b.x + arg_0.d.d.x), arg_0.b.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.d.d.x, -1225f, -1187f, arg_0.d.d.x) + vec4<f32>(-1000f, -468f, 1000f, var_1.d.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.d.x, -419f, var_1.d.x, 338f))))));
    var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-191f, var_1.d.x, var_1.d.x, var_2.x), vec4<f32>(248f, var_1.d.x, 1541f, 497f), false)) * vec4<f32>(var_1.d.x, arg_0.b.x, arg_0.b.x, -238f))))));
    var_2 = vec4<f32>(-999f, _wgslsmith_f_op_f32(f32(-1f) * -1331f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0.b.x + -1000f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1324f) - var_2.x));
    return vec2<u32>(4294967295u, _wgslsmith_mod_u32(u_input.c.x, 4294967295u));
}

fn func_5(arg_0: vec4<bool>, arg_1: i32, arg_2: u32, arg_3: Struct_4) -> f32 {
    var var_0 = vec2<i32>(12080i, -abs(abs(-arg_1)));
    var_0 = countOneBits(vec2<i32>(_wgslsmith_mult_i32(1i, _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(arg_1, arg_1), vec2<i32>(u_input.a, 1276i)), 0i)), -12786i));
    var_0 = ~(vec2<i32>(-1i) * -_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(arg_1, u_input.a), vec2<i32>(var_0.x, var_0.x)), vec2<i32>(0i, -65442i)));
    return arg_3.b.x;
}

fn func_1(arg_0: bool) -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_f32(func_5(vec4<bool>(arg_0, true, true, false), -1i, u_input.c.x, Struct_4(func_4(func_2(Struct_2(u_input.a, u_input.c.x, -4512i, vec3<f32>(1143f, -2643f, -181f), Struct_1(1i, u_input.c.x)), u_input.b, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(932f, -1750f)), func_2(Struct_2(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b, u_input.a), vec2<i32>(-22536i, u_input.a)), 1035u, i32(-1i) * -43794i, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-885f, -1269f, 261f)), Struct_1(-3958i, u_input.c.x)), u_input.a, false).e.b, Struct_2(-max(u_input.b, 32859i), ~func_2(Struct_2(u_input.a, 5945u, u_input.a, vec3<f32>(1258f, 672f, -464f), Struct_1(u_input.b, u_input.c.x)), 29251i, arg_0).a.x, ~u_input.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(573f, -1658f, 1304f) * vec3<f32>(801f, -1211f, 1191f)))), Struct_1(u_input.b >> (u_input.c.x % 32u), 1u)), Struct_3(~u_input.a, func_2(func_2(Struct_2(u_input.b, 1u, -10191i, vec3<f32>(-317f, 861f, 600f), Struct_1(0i, u_input.c.x)), 2147483647i, true).d, u_input.b, true).c, ~_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c.x, 0u), vec2<u32>(u_input.c.x, u_input.c.x))))));
    var var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-381f)) - _wgslsmith_f_op_f32(select(-702f, 1048f, false))) * _wgslsmith_f_op_f32(-func_2(Struct_2(u_input.b, u_input.c.x, -2147483647i, vec3<f32>(-687f, 1293f, -899f), Struct_1(-33849i, u_input.c.x)), -27085i, arg_0).d.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_div_f32(-426f, -182f), _wgslsmith_div_f32(-436f, -628f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-706f + 488f)))))));
    let var_2 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1703f + -1410f))))))));
    var_0 = var_2;
    var_1 = var_2;
    return StorageBuffer(-vec2<i32>(~u_input.b, u_input.b) >> (vec2<u32>(15874u, 1u) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(4294967295u <= u_input.c.x);
}

