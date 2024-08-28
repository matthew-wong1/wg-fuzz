struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<bool>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: bool,
    c: vec4<u32>,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: f32,
    d: i32,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: vec2<u32>) -> i32 {
    var var_0 = -1i << (firstLeadingBit(max(~1u, ~u_input.c.x)) % 32u);
    let var_1 = vec4<bool>(true, arg_0 && arg_0, !all(vec2<bool>(true, all(vec4<bool>(arg_0, true, arg_2.b.x, false)))), false);
    let var_2 = ~arg_2.a.x >= 0u;
    var_0 = -arg_2.c.x;
    return _wgslsmith_dot_vec4_i32(vec4<i32>(abs(u_input.a.x), arg_2.c.x, 69401i, arg_2.c.x), ~(~(-arg_2.c))) & ~(i32(-1i) * -14567i);
}

fn func_2() -> u32 {
    var var_0 = min(u_input.a << (~vec4<u32>(_wgslsmith_clamp_u32(4294967295u, 42685u, u_input.b.x), u_input.b.x | 34814u, u_input.c.x, ~61672u) % vec4<u32>(32u)), u_input.a);
    var_0 = ~_wgslsmith_mult_vec4_i32(~abs(vec4<i32>(var_0.x, var_0.x, -1i, u_input.a.x)), -_wgslsmith_div_vec4_i32(vec4<i32>(-25157i, -49122i, 0i, 1i), u_input.a) & reverseBits(u_input.a));
    var_0 = u_input.a;
    var_0 = vec4<i32>(-1i) * -_wgslsmith_clamp_vec4_i32(max(-vec4<i32>(-1i, var_0.x, 49109i, u_input.a.x), u_input.a), abs(select(vec4<i32>(u_input.a.x, -29726i, -2147483647i, u_input.a.x), u_input.a, vec4<bool>(true, false, true, false))), u_input.a);
    let var_1 = Struct_1(vec2<i32>(-1i) * -vec2<i32>(~var_0.x, func_3(true, vec4<f32>(-1387f, 159f, -128f, -1349f), Struct_2(vec4<u32>(19615u, u_input.c.x, u_input.c.x, u_input.b.x), vec4<bool>(true, false, true, true), u_input.a), vec2<u32>(64994u, 37057u))));
    return ~u_input.c.x;
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1) -> Struct_4 {
    var var_0 = Struct_3(~firstLeadingBit(vec3<u32>(firstTrailingBit(arg_0.a.x), 102613u << (u_input.b.x % 32u), ~u_input.b.x)), true || ((-32465i >> (u_input.c.x % 32u)) == arg_1.a.x), arg_0.c);
    var var_1 = vec2<bool>(arg_0.b, var_0.b);
    var var_2 = Struct_4(arg_1.a.x ^ (arg_1.a.x << (~(0u << (u_input.c.x % 32u)) % 32u)), arg_1, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-665f + -2905f), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(max(828f, -564f)))))), -538i, -vec4<i32>(arg_1.a.x, -abs(-13334i), -1i, func_3(true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(699f, 994f, -1147f, -325f)), Struct_2(var_0.c, vec4<bool>(var_0.b, arg_0.b, true, var_0.b), u_input.a), ~vec2<u32>(4294967295u, 46367u))));
    var var_3 = 21918u;
    var_2 = Struct_4(11133i, Struct_1(select(~arg_1.a & vec2<i32>(u_input.a.x, 34304i), vec2<i32>(_wgslsmith_div_i32(-11933i, 639i), -var_2.d), !select(vec2<bool>(arg_0.b, false), vec2<bool>(arg_0.b, var_1.x), vec2<bool>(false, var_1.x)))), -702f, ~(~(~(i32(-1i) * -9880i))), _wgslsmith_mod_vec4_i32(abs(var_2.e), vec4<i32>(u_input.a.x, var_2.d, var_2.a | _wgslsmith_sub_i32(var_2.b.a.x, var_2.d), reverseBits(_wgslsmith_mod_i32(-1i, var_2.e.x)))));
    return Struct_4(-2147483647i, Struct_1(_wgslsmith_div_vec2_i32(select(_wgslsmith_mod_vec2_i32(vec2<i32>(1i, 1i), var_2.b.a), vec2<i32>(-27853i, 0i), !vec2<bool>(var_1.x, false)), vec2<i32>(-2147483647i, u_input.a.x) >> (~arg_0.c.xx % vec2<u32>(32u)))), _wgslsmith_div_f32(var_2.c, _wgslsmith_f_op_f32(-var_2.c)), u_input.a.x, -u_input.a);
}

fn func_1() -> f32 {
    var var_0 = func_4(Struct_3(vec3<u32>(u_input.c.x, abs(u_input.c.x), min(~48434u, func_2())), any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false)), any(vec4<bool>(true, false, false, false)))), ~vec4<u32>(func_2(), ~52146u, func_2(), _wgslsmith_add_u32(u_input.c.x, 36459u))), Struct_1(min(-(vec2<i32>(u_input.a.x, -2147483647i) & vec2<i32>(u_input.a.x, 2147483647i)), reverseBits(vec2<i32>(-2147483647i, u_input.a.x)) & vec2<i32>(14709i, u_input.a.x))));
    var_0 = func_4(Struct_3(~vec3<u32>(4294967295u, u_input.c.x, u_input.b.x) >> (~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b.x, 0u, u_input.c.x), vec3<u32>(0u, u_input.b.x, 58167u), vec3<u32>(u_input.c.x, 0u, u_input.b.x)) % vec3<u32>(32u)), any(vec3<bool>(4294967295u < u_input.c.x, true, all(vec3<bool>(true, true, true)))), ~vec4<u32>(u_input.c.x, u_input.b.x, 15359u, u_input.c.x) >> (_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.c.x, 11638u, 0u, 47111u), vec4<u32>(0u, 0u, u_input.c.x, 84316u) & vec4<u32>(0u, u_input.c.x, u_input.b.x, u_input.b.x)) % vec4<u32>(32u))), var_0.b);
    var var_1 = -firstTrailingBit(~var_0.e);
    let var_2 = func_4(Struct_3(reverseBits(countOneBits(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x, 13769u), vec3<u32>(1u, u_input.b.x, u_input.b.x)))), true, vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.b.x, 62815u, u_input.c.x), vec4<u32>(1u, 1u, u_input.b.x, 11607u)), 58601u, 0u, ~u_input.c.x & 67720u)), Struct_1(_wgslsmith_sub_vec2_i32(~(-var_0.e.zw), vec2<i32>(select(49970i, u_input.a.x, true), var_1.x))));
    var var_3 = var_0.b;
    return var_2.c;
}

fn func_5(arg_0: Struct_2, arg_1: f32, arg_2: u32) -> Struct_1 {
    var var_0 = max(func_2(), ~arg_0.a.x ^ ((~1497u >> (arg_2 % 32u)) << (0u % 32u)));
    var_0 = firstTrailingBit(_wgslsmith_div_u32(func_2(), 7867u));
    let var_1 = true;
    let var_2 = Struct_4(u_input.a.x, func_4(Struct_3(max(_wgslsmith_mult_vec3_u32(vec3<u32>(20105u, 134564u, 8962u), vec3<u32>(u_input.b.x, 6349u, 38082u)), ~vec3<u32>(arg_0.a.x, u_input.c.x, 3696u)), any(select(vec4<bool>(true, true, var_1, false), vec4<bool>(false, var_1, arg_0.b.x, false), arg_0.b)), ~arg_0.a), func_4(Struct_3(_wgslsmith_div_vec3_u32(vec3<u32>(arg_2, 9532u, 52968u), vec3<u32>(arg_2, 4294967295u, 94064u)), true, arg_0.a), func_4(Struct_3(vec3<u32>(27039u, 0u, 21442u), true, arg_0.a), Struct_1(u_input.a.zw)).b).b).b, arg_1, -1i, firstLeadingBit(-max(-vec4<i32>(u_input.a.x, u_input.a.x, 0i, 49302i), ~vec4<i32>(u_input.a.x, arg_0.c.x, arg_0.c.x, arg_0.c.x))));
    let var_3 = select(select(arg_0.b.xw, select(vec2<bool>(any(arg_0.b.xy), true), !select(arg_0.b.wz, vec2<bool>(true, false), vec2<bool>(var_1, arg_0.b.x)), !(arg_1 != -1352f)), -10641i < -u_input.a.x), select(select(arg_0.b.zw, !select(vec2<bool>(var_1, arg_0.b.x), vec2<bool>(var_1, arg_0.b.x), false), arg_0.b.yx), !arg_0.b.xx, arg_0.b.x), any(vec2<bool>(false || (arg_0.b.x & arg_0.b.x), false)));
    return Struct_1(vec2<i32>(func_4(Struct_3(vec3<u32>(arg_0.a.x, arg_2, 7427u), true, vec4<u32>(38591u, u_input.b.x, 0u, 12306u)), var_2.b).a, -45308i) ^ (var_2.b.a << (vec2<u32>(arg_0.a.x, 1u) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 699f;
    var_0 = 296f;
    var var_1 = func_5(Struct_2(vec4<u32>(reverseBits(max(u_input.b.x, u_input.c.x)), _wgslsmith_mult_u32(_wgslsmith_div_u32(0u, 1u), ~4294967295u), u_input.b.x, (u_input.c.x & u_input.c.x) & u_input.b.x), !vec4<bool>(true, all(vec2<bool>(false, false)), any(vec3<bool>(true, false, false)), false), min(_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, u_input.a.x)), max(u_input.a, u_input.a)), abs(u_input.a))), _wgslsmith_f_op_f32(func_1()), _wgslsmith_add_u32(u_input.c.x, ~countOneBits(_wgslsmith_sub_u32(u_input.b.x, u_input.c.x))));
    let var_2 = ~u_input.a;
    var_1 = Struct_1(vec2<i32>(u_input.a.x, var_1.a.x));
    var var_3 = select((_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(815f - -2220f))) != _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -476f), _wgslsmith_f_op_f32(-836f - -107f)))) & all(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), any(select(select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true)), vec2<bool>(all(vec2<bool>(true, false)), false), select(select(vec2<bool>(false, true), vec2<bool>(true, true), true), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false)), true))), !(any(select(vec2<bool>(false, true), vec2<bool>(false, true), false)) == (all(vec2<bool>(false, false)) & any(vec3<bool>(true, false, false)))));
    var var_4 = -1000f;
    var_4 = _wgslsmith_f_op_f32(-317f + -1000f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, -388f, -1155f, 759f)))))), -130f);
}

