struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<i32>,
    d: vec4<bool>,
}

struct Struct_2 {
    a: u32,
    b: f32,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
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

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_3) -> vec4<f32> {
    var var_0 = arg_0.a;
    var var_1 = vec2<i32>(-42988i, _wgslsmith_mult_i32(-28232i | _wgslsmith_dot_vec4_i32(vec4<i32>(41400i, 1i, 0i, 23995i), u_input.a), -(~var_0.c.x))) >> (var_0.a.yz % vec2<u32>(32u));
    var_1 = vec2<i32>(20818i, min(-12947i | _wgslsmith_dot_vec3_i32(vec3<i32>(arg_0.a.c.x, var_1.x, 3079i), u_input.c), firstTrailingBit(select(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.c.x), var_0.c), !arg_0.a.d.x))));
    var var_2 = u_input.c.xy >> ((~var_0.a.xy | ~max(~arg_0.a.a.zy, vec2<u32>(arg_0.a.a.x, arg_0.a.a.x))) % vec2<u32>(32u));
    let var_3 = _wgslsmith_div_i32(29763i, 12375i);
    return vec4<f32>(_wgslsmith_f_op_f32(arg_0.a.b + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - -1655f))))), _wgslsmith_f_op_f32(-var_0.b), arg_0.a.b, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-607f, -784f))));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<f32>, arg_2: f32) -> u32 {
    var var_0 = _wgslsmith_add_i32(0i >> (_wgslsmith_mult_u32(u_input.e.x, u_input.d.x) % 32u), abs(firstLeadingBit(0i)));
    let var_1 = _wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.b, 26651i, -firstLeadingBit(1i))), u_input.a.ywx);
    let var_2 = firstTrailingBit(_wgslsmith_div_vec3_i32(var_1, u_input.c)) >> (~reverseBits(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 128620u), vec3<u32>(68915u, u_input.e.x, 8937u))) % vec3<u32>(32u));
    let var_3 = Struct_3(Struct_1(vec3<u32>(4294967295u, 1u, min(u_input.e.x, 1u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2)), _wgslsmith_mod_vec2_i32(~u_input.a.xy, var_1.yy), vec4<bool>(true, false, any(vec4<bool>(false, true, true, arg_0.x)) | arg_0.x, arg_0.x)));
    var var_4 = var_3.a.d;
    return ~u_input.d.x;
}

fn func_2() -> vec2<i32> {
    var var_0 = select(false, true, true);
    let var_1 = _wgslsmith_mult_vec3_u32(u_input.e.wzy, vec3<u32>(_wgslsmith_add_u32(~(~u_input.d.x), _wgslsmith_add_u32(110505u, 0u) << (~u_input.d.x % 32u)), func_4(select(select(vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_3(Struct_1(u_input.d.zxy, 1328f, u_input.a.ww, vec4<bool>(true, false, true, true)))))), 655f), u_input.e.x));
    var var_2 = Struct_1(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, ~(~var_1.x), abs(_wgslsmith_dot_vec3_u32(u_input.e.zxw, u_input.d.wxx))), vec3<u32>(33701u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.e.x, 64487u, u_input.d.x, 33644u), u_input.e), 38973u), abs(u_input.e.xww)), _wgslsmith_div_f32(628f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -235f)), 1165f, all(vec2<bool>(true, true))))), countOneBits(_wgslsmith_clamp_vec2_i32(~u_input.a.ww, ~(u_input.c.yx >> (u_input.d.wy % vec2<u32>(32u))), -vec2<i32>(2147483647i, u_input.b))), select(vec4<bool>(true, true, select(true, true, var_1.x > 57225u), all(vec4<bool>(false, false, true, false))), vec4<bool>(any(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, false), false)), false, true, !all(vec3<bool>(false, false, false))), true));
    var_2 = Struct_1(countOneBits(~(vec3<u32>(var_1.x, 28490u, 2139u) & var_2.a) >> (~var_1 % vec3<u32>(32u))), 400f, vec2<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, _wgslsmith_dot_vec4_i32(u_input.a, u_input.a)), var_2.c.x << (u_input.d.x % 32u)), _wgslsmith_clamp_i32(1i, -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.c.x, 2666i, 14934i), u_input.a.zzw))), select(select(!select(var_2.d, var_2.d, vec4<bool>(false, false, true, false)), !var_2.d, any(vec3<bool>(true, var_2.d.x, var_2.d.x))), select(var_2.d, vec4<bool>(false, any(var_2.d.yxz), false, false || var_2.d.x), true), !all(vec3<bool>(var_2.d.x, false, false))));
    var_0 = var_2.d.x;
    return vec2<i32>(-_wgslsmith_add_i32(_wgslsmith_mod_i32(_wgslsmith_mult_i32(-1i, var_2.c.x), 1i), -13332i), 1i);
}

fn func_1() -> bool {
    var var_0 = u_input.a;
    let var_1 = Struct_2(0u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-113f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-563f, -1415f)) + 376f))), Struct_1(vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u), _wgslsmith_add_vec2_u32(u_input.d.zw, u_input.d.wz)), ~(~0u), _wgslsmith_div_u32(~4294967295u, min(7749u, 4294967295u))), -476f, func_2(), select(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), !select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false), select(false, true, false)))), Struct_1(u_input.e.xxy, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-410f)), _wgslsmith_f_op_f32(f32(-1f) * -1314f))))), vec2<i32>(var_0.x, -33159i << (u_input.e.x % 32u)) << ((vec2<u32>(0u, u_input.e.x) << ((u_input.d.zx >> (vec2<u32>(4294967295u, 67543u) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u)), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true))), min(-12292i, _wgslsmith_add_i32(-1i, var_0.x) & reverseBits(-17579i)) >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(31025u, u_input.d.x), _wgslsmith_mult_u32(func_4(vec3<bool>(false, false, false), vec4<f32>(937f, -1355f, -540f, -1308f), -155f), u_input.e.x)) % 32u));
    var_0 = _wgslsmith_div_vec4_i32(vec4<i32>(var_0.x, _wgslsmith_dot_vec4_i32(u_input.a, vec4<i32>(var_1.c.c.x, var_0.x, var_0.x, 0i) ^ abs(vec4<i32>(38387i, 26571i, var_0.x, 9803i))), var_0.x, _wgslsmith_clamp_i32(57416i, _wgslsmith_dot_vec2_i32(~u_input.a.xy, var_1.c.c << (vec2<u32>(u_input.d.x, var_1.d.a.x) % vec2<u32>(32u))), var_0.x)), vec4<i32>(func_2().x, i32(-1i) * -904i, ~_wgslsmith_dot_vec3_i32(u_input.a.wzw & vec3<i32>(-64371i, -3505i, 12335i), _wgslsmith_div_vec3_i32(vec3<i32>(-4600i, var_1.e, var_0.x), vec3<i32>(293i, -46886i, var_0.x))), firstTrailingBit(2147483647i)));
    var_0 = -firstTrailingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -1i, _wgslsmith_mod_i32(var_0.x, u_input.a.x), u_input.b & var_1.e), u_input.a));
    var_0 = u_input.a;
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !func_1();
    var var_1 = true;
    var var_2 = select(vec4<bool>(func_1(), any(vec4<bool>(true, true, true, true)), all(vec4<bool>(true, true, all(vec4<bool>(false, false, false, false)), false)), all(vec2<bool>(false, true)) | (false & all(vec3<bool>(false, false, true)))), vec4<bool>(true, any(!select(vec2<bool>(true, true), vec2<bool>(true, true), true)), true, all(vec3<bool>(true, true, true))), true);
    let var_3 = all(vec4<bool>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-362f + 1986f))) == _wgslsmith_f_op_f32(1061f - _wgslsmith_f_op_f32(round(120f))), var_2.x, _wgslsmith_clamp_i32(-32734i, u_input.a.x >> (4458u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(25911i, u_input.a.x, u_input.c.x), u_input.a.xww)) >= -u_input.a.x, any(var_2.zx)));
    let var_4 = Struct_4(any(vec2<bool>(!(u_input.d.x <= 62367u), all(!var_2.ww))), u_input.b, select(select(abs(max(u_input.d.www, u_input.e.zxw)), _wgslsmith_add_vec3_u32(firstTrailingBit(u_input.d.zxy), u_input.d.zxy), true), vec3<u32>(~(u_input.d.x >> (1u % 32u)), (u_input.d.x & u_input.e.x) | 0u, 37813u), false), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), -((vec2<i32>(u_input.c.x, -1i) | vec2<i32>(u_input.c.x, -1i)) | vec2<i32>(u_input.a.x, u_input.b))));
    let var_5 = Struct_1(vec3<u32>(var_4.c.x, countOneBits(4294967295u), 58832u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(778f - -465f) + _wgslsmith_f_op_f32(_wgslsmith_div_f32(-124f, 934f) - _wgslsmith_f_op_f32(378f - 467f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(613f)), 1f, any(var_2.yz))))), reverseBits(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, var_4.d.x ^ var_4.b), u_input.c.zx)), vec4<bool>(var_4.a, all(!select(vec3<bool>(true, false, false), vec3<bool>(false, var_4.a, var_4.a), var_2.wyw)), var_3, !var_3));
    let x = u_input.a;
    s_output = StorageBuffer(~(-1i));
}

