struct Struct_1 {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: bool) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-343f, _wgslsmith_f_op_f32(-1223f * 812f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1000f, -793f), vec2<f32>(-147f, -1057f), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(593f, -1836f) + _wgslsmith_f_op_vec2_f32(vec2<f32>(1031f, 202f) * vec2<f32>(1155f, -1629f))))));
    var var_1 = Struct_1(~(-countOneBits(~vec4<i32>(2147483647i, 17516i, u_input.e.x, 0i))), abs(~(~(vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x) & vec3<u32>(22292u, 4294967295u, 1u)))), u_input.d.x, all(!vec4<bool>(true, select(true, arg_0, arg_0), any(vec3<bool>(arg_0, arg_0, false)), any(vec4<bool>(false, false, false, arg_0)))));
    var var_2 = _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(1u, abs(~4294967295u))), ~select(vec2<u32>(u_input.d.x, 43850u) & vec2<u32>(0u, 20778u), vec2<u32>(74037u, var_1.b.x), !vec2<bool>(true, arg_0)) ^ select(vec2<u32>(max(var_1.b.x, 49598u), ~var_1.c), ~(var_1.b.xy ^ vec2<u32>(9313u, u_input.d.x)), select(var_1.b.x >= u_input.d.x, var_1.b.x <= 0u, !var_1.d)));
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -1798f, 1241f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(120f, var_0.x, 138f, var_0.x) - vec4<f32>(-631f, var_0.x, var_0.x, var_0.x))))));
    let var_4 = firstTrailingBit(vec3<u32>((~var_2.x ^ ~70224u) << (u_input.d.x % 32u), var_2.x, ~(1u | ~var_1.c)));
    return firstLeadingBit(_wgslsmith_dot_vec2_i32(-(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, -1i), var_1.a.yw)), -vec2<i32>(-44730i, min(1i, var_1.a.x))));
}

fn func_2() -> vec3<u32> {
    let var_0 = vec4<bool>(u_input.e.x >= (30020i << (_wgslsmith_add_u32(39038u, u_input.d.x) % 32u)), true, true, true);
    let var_1 = Struct_1(vec4<i32>(func_3(!var_0.x), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(-vec4<i32>(1i, 2147483647i, -10045i, u_input.c), -vec4<i32>(u_input.b.x, 54153i, 1i, u_input.e.x)), vec4<i32>(-10382i, -5894i, u_input.b.x, u_input.c) << (~vec4<u32>(u_input.d.x, 0u, 4294967295u, u_input.d.x) % vec4<u32>(32u))), -abs(firstLeadingBit(u_input.c)), u_input.e.x), ~vec3<u32>(_wgslsmith_clamp_u32(~u_input.d.x, ~4294967295u, _wgslsmith_sub_u32(4294967295u, 1u)), ~4294967295u, ~_wgslsmith_add_u32(23086u, 72926u)), 1u, !select(var_0.x, true, var_0.x));
    var var_2 = var_1.a.x;
    var var_3 = var_1;
    var var_4 = select(var_0.xzz, var_0.xyz, all(vec3<bool>(var_1.d & var_3.d, all(!vec2<bool>(true, var_3.d)), any(var_0))));
    return _wgslsmith_div_vec3_u32(min(max(var_1.b, firstLeadingBit(~vec3<u32>(0u, 4294967295u, var_3.b.x))), var_3.b), var_3.b);
}

fn func_4(arg_0: Struct_1) -> i32 {
    var var_0 = all(!select(!vec2<bool>(false, arg_0.d), vec2<bool>(true, true), any(vec4<bool>(arg_0.d, false, true, arg_0.d)) | true));
    let var_1 = Struct_1(~countOneBits(_wgslsmith_mult_vec4_i32(firstTrailingBit(vec4<i32>(arg_0.a.x, u_input.c, arg_0.a.x, u_input.e.x)), arg_0.a ^ arg_0.a)), arg_0.b, 74838u, arg_0.d);
    var_0 = true;
    var_0 = true;
    var_0 = all(vec4<bool>(arg_0.d, true, any(select(vec2<bool>(arg_0.d, arg_0.d), select(vec2<bool>(var_1.d, false), vec2<bool>(true, arg_0.d), vec2<bool>(true, true)), vec2<bool>(true, false))), any(!select(vec3<bool>(var_1.d, true, arg_0.d), vec3<bool>(var_1.d, var_1.d, true), arg_0.d))));
    return reverseBits(~(-u_input.b.x)) ^ 23479i;
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<f32>, arg_3: vec3<i32>) -> vec4<u32> {
    let var_0 = u_input.e.zz;
    let var_1 = func_4(Struct_1(-vec4<i32>(arg_0.a.x, arg_1.a.x, var_0.x, _wgslsmith_add_i32(arg_1.a.x, var_0.x)), ~func_2(), u_input.d.x, ((arg_3.x ^ u_input.c) != 9876i) || arg_0.d));
    var var_2 = u_input.e;
    var var_3 = Struct_1(_wgslsmith_sub_vec4_i32(~(vec4<i32>(-62297i, -2147483647i, 0i, arg_0.a.x) >> ((vec4<u32>(arg_1.c, 1u, 56002u, arg_0.b.x) & vec4<u32>(arg_1.b.x, arg_0.b.x, arg_0.b.x, arg_1.c)) % vec4<u32>(32u))), arg_0.a | vec4<i32>(abs(-2147483647i), -1757i, -2147483647i, ~var_1)), ~vec3<u32>(arg_0.c, func_2().x, u_input.d.x), ~max(~18196u, u_input.d.x), arg_1.d || arg_0.d);
    let var_4 = Struct_1(abs(~vec4<i32>(arg_0.a.x, arg_3.x, var_2.x >> (0u % 32u), 1i)), vec3<u32>(_wgslsmith_mult_u32(firstLeadingBit(32294u), var_3.b.x), var_3.c, ~countOneBits(u_input.d.x)), ~30620u, false);
    return vec4<u32>(firstTrailingBit(_wgslsmith_mult_u32(~var_3.b.x, var_4.c)), _wgslsmith_clamp_u32(0u, 4294967295u, _wgslsmith_mult_u32(_wgslsmith_div_u32(31129u, 23589u), 4294967295u)) & ((u_input.d.x >> (var_4.b.x % 32u)) >> (var_3.c % 32u)), firstTrailingBit(u_input.d.x), var_4.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -(abs(vec4<i32>(~u_input.a, ~u_input.b.x, u_input.a, -u_input.c)) >> (func_1(Struct_1(vec4<i32>(-1i, 35757i, -25657i, 57379i), min(vec3<u32>(u_input.d.x, u_input.d.x, 0u), vec3<u32>(0u, 4294967295u, u_input.d.x)), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, 24653u)), true), Struct_1(~vec4<i32>(u_input.a, -13144i, 6620i, u_input.c), ~vec3<u32>(102586u, 4994u, u_input.d.x), u_input.d.x ^ 94309u, true), vec4<f32>(_wgslsmith_f_op_f32(550f - -123f), _wgslsmith_f_op_f32(step(238f, 2032f)), _wgslsmith_f_op_f32(floor(327f)), -889f), u_input.b) % vec4<u32>(32u)));
    var_0 = vec4<i32>(-(~u_input.a) ^ reverseBits(abs(u_input.c)), var_0.x, 26561i, -_wgslsmith_dot_vec2_i32(-vec2<i32>(var_0.x, var_0.x), ~vec2<i32>(1i, var_0.x))) ^ _wgslsmith_mult_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(func_3(false), -48556i, u_input.e.x, _wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(u_input.a, 53908i, 57219i))), ~(vec4<i32>(-22847i, u_input.b.x, -2147483647i, u_input.c) ^ vec4<i32>(-10455i, u_input.b.x, var_0.x, 0i))), ~_wgslsmith_sub_vec4_i32(vec4<i32>(-18308i, u_input.c, 10043i, var_0.x), vec4<i32>(u_input.a, var_0.x, var_0.x, -12959i)) ^ _wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(-1i, u_input.e.x, 1i, 6037i)), abs(vec4<i32>(var_0.x, var_0.x, 19664i, -2147483647i))));
    var_0 = ~(-vec4<i32>(var_0.x, firstLeadingBit(1i), _wgslsmith_sub_i32(~(-1i), max(1228i, u_input.e.x)), -u_input.b.x));
    let var_1 = firstTrailingBit(_wgslsmith_add_vec3_i32(select(vec3<i32>(i32(-1i) * -55461i, ~(-1i), func_4(Struct_1(vec4<i32>(1i, 2147483647i, 2147483647i, 7807i), vec3<u32>(u_input.d.x, 55351u, u_input.d.x), u_input.d.x, false))), ~(-var_0.zwy), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, true)), vec3<bool>(true, false, false))), _wgslsmith_div_vec3_i32(-vec3<i32>(-20006i, u_input.e.x, u_input.b.x), ~(~u_input.b))));
    var var_2 = -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(abs(vec2<i32>(var_1.x, var_0.x) >> ((~u_input.d | min(vec2<u32>(u_input.d.x, 1u), u_input.d)) % vec2<u32>(32u))), _wgslsmith_f_op_f32(614f - _wgslsmith_div_f32(172f, -1102f)));
}

