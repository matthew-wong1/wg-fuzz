struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> i32 {
    let var_0 = Struct_2(true, Struct_1(min(vec3<u32>(select(1567u, 39321u, false), arg_1.a.x, ~4294967295u), vec3<u32>(~arg_1.a.x, countOneBits(arg_1.a.x), _wgslsmith_sub_u32(u_input.d, arg_1.a.x)))), vec4<bool>(any(select(vec3<bool>(true, false, true), select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), any(vec2<bool>(true, false)))), !all(vec3<bool>(true, true, true)), true, true));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-522f, -313f, -229f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-167f, -224f, _wgslsmith_f_op_f32(f32(-1f) * -1470f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1971f, 238f, 184f) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-676f, -121f, 675f))))))));
    var var_2 = -select(~u_input.e, select(select(u_input.e, u_input.e >> (arg_1.a % vec3<u32>(32u)), !vec3<bool>(var_0.c.x, var_0.c.x, var_0.a)), firstTrailingBit(_wgslsmith_clamp_vec3_i32(u_input.e, u_input.e, vec3<i32>(arg_0, arg_0, u_input.e.x))), var_0.c.zxy), false && ((true | var_0.a) && var_0.c.x));
    var var_3 = -413f;
    var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(416f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x))))));
    return abs(38855i);
}

fn func_4(arg_0: vec2<i32>) -> f32 {
    let var_0 = Struct_2(all(!vec4<bool>(true, true, true, all(vec2<bool>(false, true)))), Struct_1(vec3<u32>(1u, 1u, 1u)), !(!(!select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), false))));
    let var_1 = Struct_2(false, Struct_1(vec3<u32>(_wgslsmith_mult_u32(4294967295u, u_input.b), var_0.b.a.x, 5297u)), !(!var_0.c));
    let var_2 = ~(-1i);
    var var_3 = 46750u;
    let var_4 = !var_0.c.wxx;
    return -808f;
}

fn func_2(arg_0: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(vec2<i32>(38402i | u_input.c, func_3(-2147483647i, Struct_1(arg_0.a)))))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1673f + 340f)));
    var var_1 = Struct_2(true, arg_0, select(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false)), select(false, true, false)), select(select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, true), true), all(vec2<bool>(false, true))), false), vec4<bool>(true, true, any(vec4<bool>(true, true, true, true)), any(vec4<bool>(true, true, true, true)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(979f - -865f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(549f * 131f))), _wgslsmith_f_op_f32(-448f - -1000f)));
    var var_3 = Struct_2(true, Struct_1(_wgslsmith_add_vec3_u32(vec3<u32>(28311u, ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.b.a.x, 1u, u_input.b), vec3<u32>(1u, arg_0.a.x, arg_0.a.x))), vec3<u32>(54480u, 1u, 67617u))), select(!vec4<bool>(true, var_1.c.x, false && var_1.a, true), vec4<bool>(all(vec2<bool>(var_1.c.x, var_1.c.x)), var_1.a, var_1.c.x, true), !(!(var_2.x > -186f))));
    var_3 = Struct_2(!any(vec2<bool>(true, any(var_3.c.yy))), Struct_1(~(~var_1.b.a << (_wgslsmith_mult_vec3_u32(vec3<u32>(0u, 4294967295u, var_3.b.a.x), var_3.b.a) % vec3<u32>(32u)))), !var_1.c);
    return Struct_2(var_3.a, Struct_1(firstTrailingBit(vec3<u32>(_wgslsmith_dot_vec2_u32(arg_0.a.xz, vec2<u32>(arg_0.a.x, 1u)), ~var_1.b.a.x, var_1.b.a.x))), var_3.c);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = firstLeadingBit(~0u);
    let var_1 = func_2(Struct_1(vec3<u32>(select(4294967295u, 1u, true), 0u, ~var_0)));
    var var_2 = var_1.b.a.xz;
    var_2 = var_1.b.a.zx;
    var var_3 = vec4<bool>(!arg_0, var_1.c.x, !(var_1.a || arg_0), all(select(func_2(var_1.b).c, vec4<bool>(false, true, any(vec4<bool>(arg_0, false, true, var_1.a)), !arg_0), !any(vec3<bool>(var_1.c.x, var_1.a, true)))));
    return Struct_1(~vec3<u32>(reverseBits(abs(28240u)), ~(~4294967295u), firstTrailingBit(min(1868u, var_0))));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_2(!arg_1.c.x, func_2(Struct_1(vec3<u32>(max(arg_0.a.x, arg_1.b.a.x), 29588u, arg_0.a.x))).b, !(!select(vec4<bool>(arg_1.a, arg_1.c.x, arg_1.a, arg_1.c.x), arg_1.c, arg_1.c)));
    var var_1 = !all(arg_1.c.zxy) == all(var_0.c.xw);
    let var_2 = u_input.e.x ^ -1i;
    var var_3 = func_1(select(all(!var_0.c.wxy) == (1u >= arg_3.a.x), arg_1.a, !arg_1.c.x), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1269f, _wgslsmith_f_op_f32(func_4(vec2<i32>(51307i, var_2))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(1000f, -1239f) * -1000f), -1039f))));
    var_3 = var_0.b;
    return func_2(func_2(func_1(false, vec4<f32>(1f, 1f, 1f, 1f))).b).b;
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = Struct_2(any(func_2(Struct_1(vec3<u32>(4294967295u, 0u, arg_0.a.x))).c), Struct_1(arg_0.a), !(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(false, false, true, false)), vec4<bool>(true, false, false, true), select(vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, false)))));
    var_0 = func_2(Struct_1(arg_0.a));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-2206f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(-477f, _wgslsmith_f_op_f32(375f * -1731f))), _wgslsmith_div_f32(-2601f, -578f))));
    let var_2 = -_wgslsmith_mod_vec2_i32(_wgslsmith_add_vec2_i32(~u_input.e.xx, u_input.e.yx | vec2<i32>(u_input.e.x, u_input.c)), u_input.e.xz);
    var_0 = func_2(func_5(var_0.b, Struct_2(arg_0.a.x == func_2(arg_0).b.a.x, var_0.b, !select(vec4<bool>(true, false, var_0.a, var_0.c.x), vec4<bool>(true, var_0.a, false, var_0.a), vec4<bool>(false, var_0.a, true, false))), Struct_1(~min(arg_0.a, arg_0.a)), Struct_1(_wgslsmith_mult_vec3_u32(func_1(var_0.a, vec4<f32>(-729f, -529f, -735f, 1255f)).a, _wgslsmith_div_vec3_u32(arg_0.a, vec3<u32>(arg_0.a.x, 38509u, 0u))))));
    return func_5(func_1(var_0.c.x, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-605f, 582f, 530f, 1352f))), vec4<f32>(1f, 1f, 1f, 1f))), Struct_2(false, var_0.b, vec4<bool>(any(var_0.c), false, true, var_0.c.x)), func_1(28424u == func_5(Struct_1(vec3<u32>(u_input.b, 1u, 4294967295u)), func_2(arg_0), Struct_1(arg_0.a), var_0.b).a.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 499f, 954f, 349f) - _wgslsmith_div_vec4_f32(vec4<f32>(-579f, -1281f, 1000f, -240f), vec4<f32>(1021f, -431f, -449f, -344f))))), func_5(var_0.b, Struct_2(true, var_0.b, vec4<bool>(!var_0.a, !var_0.c.x, !var_0.a, var_0.a)), func_1(!all(vec4<bool>(var_0.a, false, var_0.a, true)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1000f, -470f, -1653f, 127f), vec4<f32>(1051f, 220f, -2019f, -1726f), vec4<bool>(true, false, var_0.c.x, var_0.c.x)))))), arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(Struct_1(vec3<u32>(u_input.d & 0u, _wgslsmith_div_u32(u_input.b, 4294967295u), 56632u)), Struct_2(any(vec3<bool>(false, true, true)), Struct_1(_wgslsmith_div_vec3_u32(vec3<u32>(11642u, u_input.a, 1u), vec3<u32>(1u, u_input.b, 1u))), select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), any(vec4<bool>(false, true, false, false)))), func_1(any(vec4<bool>(true, true, true, true)), vec4<f32>(1278f, _wgslsmith_f_op_f32(select(-498f, -2230f, true)), -690f, _wgslsmith_f_op_f32(max(-1204f, -200f)))), func_2(func_2(func_2(Struct_1(vec3<u32>(54107u, 1u, u_input.d))).b).b).b));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(-155f, 1042f))) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-347f, 2078f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1072f, -936f), vec2<f32>(1068f, -1000f), vec2<bool>(true, true))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(971f, 1182f))))) * _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, _wgslsmith_f_op_f32(abs(-903f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-456f, _wgslsmith_f_op_f32(-498f * 1244f))))));
    var_0 = Struct_1(~(~reverseBits(var_0.a)));
    var_0 = Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(min(vec4<u32>(0u, var_0.a.x, var_0.a.x, u_input.d), vec4<u32>(var_0.a.x, var_0.a.x, 4294967295u, 94495u)), ~vec4<u32>(u_input.d, 4294967295u, 4294967295u, u_input.a)), 29549u, reverseBits(var_0.a.x)) << (var_0.a % vec3<u32>(32u)));
    var var_2 = var_1.x;
    var_0 = func_5(Struct_1(var_0.a), func_2(func_6(Struct_1(var_0.a))), Struct_1(firstTrailingBit(func_5(func_2(Struct_1(vec3<u32>(69852u, var_0.a.x, 1u))).b, func_2(Struct_1(var_0.a)), Struct_1(vec3<u32>(4294967295u, u_input.b, u_input.b)), func_6(Struct_1(vec3<u32>(u_input.b, 0u, u_input.a)))).a)), func_2(func_2(func_1(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, 951f, 805f)))).b).b);
    var var_3 = select(_wgslsmith_sub_vec4_i32(~vec4<i32>(-45281i, 2350i, 4726i, 2147483647i), vec4<i32>(u_input.e.x, u_input.c, u_input.e.x, u_input.e.x)) ^ select(vec4<i32>(-73053i, u_input.e.x, -2147483647i, u_input.c), -vec4<i32>(13165i, 5499i, u_input.c, -1i), true), countOneBits(countOneBits(~vec4<i32>(u_input.e.x, 2147483647i, -2147483647i, u_input.e.x))), vec4<bool>(any(select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), true)), false, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true))), true)) & (((_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.e.x, -1i, -18172i, 2147483647i), vec4<i32>(39162i, u_input.e.x, u_input.e.x, u_input.c), vec4<i32>(17531i, u_input.c, u_input.e.x, -33379i)) | countOneBits(vec4<i32>(-2147483647i, u_input.c, -1i, u_input.c))) << ((vec4<u32>(var_0.a.x, u_input.d, 4294967295u, var_0.a.x) << (~vec4<u32>(0u, 4294967295u, 1u, var_0.a.x) % vec4<u32>(32u))) % vec4<u32>(32u))) ^ (~_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.e.x, -1115i, u_input.c), vec4<i32>(u_input.c, u_input.e.x, -51282i, u_input.e.x), vec4<i32>(u_input.c, u_input.e.x, u_input.e.x, 1i)) ^ (~vec4<i32>(26008i, -21625i, 0i, -34028i) & firstTrailingBit(vec4<i32>(-1i, u_input.c, u_input.c, u_input.c)))));
    var_3 = ~(vec4<i32>(~72788i, ~(-67265i) ^ min(var_3.x, -22987i), _wgslsmith_add_i32(-23045i, var_3.x), countOneBits(-var_3.x)) >> (vec4<u32>(abs(max(u_input.b, u_input.a)), var_0.a.x, 1u, ~var_0.a.x) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.x, 0u, var_0.a.x, vec4<i32>(-1i, var_3.x, var_3.x, var_3.x | _wgslsmith_mod_i32(_wgslsmith_mod_i32(u_input.c, u_input.c), 40879i << (0u % 32u))), var_1.x);
}

