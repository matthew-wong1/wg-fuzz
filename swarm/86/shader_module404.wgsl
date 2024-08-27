struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: u32,
    d: f32,
    e: vec4<bool>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<bool>,
    c: Struct_3,
    d: Struct_1,
    e: vec3<i32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 31>;

var<private> global1: bool;

var<private> global2: array<Struct_3, 10>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_5, arg_2: Struct_5, arg_3: vec2<i32>) -> f32 {
    var var_0 = arg_0.e.e.x;
    var var_1 = arg_1.d;
    var_0 = !arg_2.b.x;
    var var_2 = arg_0.e;
    global0 = array<vec3<bool>, 31>();
    return _wgslsmith_f_op_f32(1337f - _wgslsmith_f_op_f32(trunc(arg_1.a.d)));
}

fn func_2() -> Struct_2 {
    var var_0 = u_input.d.x;
    var var_1 = Struct_4(i32(-1i) * -1i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-1814f + _wgslsmith_f_op_f32(func_3(Struct_2(Struct_1(vec3<i32>(-2147483647i, -1i, 2147483647i), u_input.d, vec4<u32>(u_input.a, u_input.a, u_input.a, 9305u), 1u, vec4<bool>(true, true, false, true)), u_input.a, -17848i, vec4<i32>(u_input.c, u_input.c, -1i, -1i), Struct_1(vec3<i32>(-41652i, -20652i, u_input.d.x), vec2<i32>(1133i, -1i), vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a), u_input.a, vec4<bool>(false, true, false, false))), Struct_5(Struct_4(2147483647i, 114f, u_input.a, 689f, vec4<bool>(false, false, false, true)), vec2<bool>(true, true), Struct_3(448f), Struct_1(vec3<i32>(-21903i, 2147483647i, u_input.b), vec2<i32>(1i, u_input.c), vec4<u32>(4294967295u, 17023u, u_input.a, 53758u), u_input.a, vec4<bool>(false, false, false, false)), vec3<i32>(1i, -27050i, 65971i)), Struct_5(Struct_4(-2147483647i, 389f, u_input.a, -428f, vec4<bool>(false, false, true, true)), vec2<bool>(false, true), Struct_3(1000f), Struct_1(vec3<i32>(u_input.d.x, 25968i, -2147483647i), u_input.d, vec4<u32>(63633u, u_input.a, 19879u, u_input.a), 1u, vec4<bool>(true, true, true, true)), vec3<i32>(u_input.b, u_input.b, -2147483647i)), vec2<i32>(u_input.d.x, -1i)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-566f + -975f))), ~(~5887u) ^ u_input.a, 1488f, vec4<bool>(true, !any(vec2<bool>(false, true)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-332f, 1042f)))) <= _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1000f - -794f))), false));
    let var_2 = Struct_2(Struct_1(vec3<i32>(-2147483647i >> (var_1.c % 32u), u_input.d.x << (1u % 32u), min(-21889i, var_1.a)) & -(vec3<i32>(u_input.b, u_input.b, -1i) << (vec3<u32>(1u, 61939u, u_input.a) % vec3<u32>(32u))), vec2<i32>(44646i, firstTrailingBit(~(-3024i))), vec4<u32>(_wgslsmith_mod_u32(~4294967295u, 40851u), 12423u, u_input.a, ~(u_input.a & 1u)), ~52166u, vec4<bool>(all(!var_1.e.zwy), var_1.e.x, false, true)), var_1.c, _wgslsmith_clamp_i32(-93099i, -7277i, u_input.c), vec4<i32>(~30004i, 57535i, _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(-56791i, -1i, var_1.a, -603i)) >> (~vec4<u32>(u_input.a, 4294967295u, 1u, var_1.c) % vec4<u32>(32u)), vec4<i32>(var_1.a, -38578i, var_1.a, 0i) & ~vec4<i32>(0i, 14566i, u_input.d.x, -3550i)), 75520i), Struct_1(max(_wgslsmith_sub_vec3_i32(select(vec3<i32>(32894i, 0i, -31479i), vec3<i32>(u_input.c, -21124i, u_input.c), var_1.e.x), vec3<i32>(-1i, -1i, var_1.a)), _wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, -1i, u_input.c), vec3<i32>(u_input.b, var_1.a, u_input.b) ^ vec3<i32>(29123i, 2147483647i, -20473i))), u_input.d, ~firstLeadingBit(vec4<u32>(6223u, var_1.c, 22871u, 7318u)), u_input.a, select(!(!var_1.e), select(vec4<bool>(var_1.e.x, var_1.e.x, var_1.e.x, false), !vec4<bool>(true, false, var_1.e.x, var_1.e.x), vec4<bool>(true, var_1.e.x, true, false)), !var_1.e)));
    let var_3 = var_2;
    let var_4 = Struct_5(Struct_4(~(-2147483647i), var_1.d, 1u, _wgslsmith_f_op_f32(1309f + _wgslsmith_f_op_f32(var_1.b - -587f)), !vec4<bool>(!var_3.a.e.x, var_1.e.x, var_1.a != 3439i, !var_2.e.e.x)), !select(vec2<bool>(false || var_1.e.x, !var_2.a.e.x), vec2<bool>(var_3.a.e.x, true), select(select(var_1.e.zw, var_1.e.ww, var_2.e.e.ww), select(var_2.a.e.zx, var_3.a.e.zx, var_2.a.e.wz), false)), Struct_3(_wgslsmith_f_op_f32(trunc(-131f))), Struct_1(var_3.a.a, var_2.a.b, var_3.e.c ^ (reverseBits(vec4<u32>(u_input.a, var_1.c, var_1.c, var_1.c)) | vec4<u32>(33312u, 1u, var_1.c, 10911u)), var_3.e.d & 79626u, var_2.a.e), var_3.e.a);
    return var_2;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = arg_0.a.e;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(-1707f, -140f), _wgslsmith_f_op_f32(floor(-1969f))))));
    var var_2 = countOneBits(u_input.c);
    var_2 = min(firstTrailingBit(~(i32(-1i) * -u_input.c)), -_wgslsmith_mult_i32(~arg_1.a.x >> (firstLeadingBit(19735u) % 32u), -2147483647i));
    global0 = array<vec3<bool>, 31>();
    return reverseBits(arg_1.a);
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<i32>, arg_2: vec4<i32>) -> f32 {
    let var_0 = _wgslsmith_dot_vec3_i32(func_4(func_2(), func_2().a), arg_0.zwx) >= reverseBits(_wgslsmith_sub_i32(reverseBits(arg_1.x), 12573i));
    global1 = true;
    global2 = array<Struct_3, 10>();
    global1 = var_0;
    global1 = var_0;
    return _wgslsmith_f_op_f32(-1074f * _wgslsmith_f_op_f32(ceil(1f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-1191f, -1365f, 430f))))), vec3<f32>(-718f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-893f)), 359f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -268f) + _wgslsmith_f_op_f32(349f - -153f)))), _wgslsmith_f_op_f32(func_1(min(vec4<i32>(2147483647i, -2147483647i, 0i, 0i), vec4<i32>(19251i, u_input.b, u_input.b, -2147483647i)), -(~vec2<i32>(-16221i, u_input.d.x)), ~vec4<i32>(2147483647i, -1i, 1i, u_input.d.x)))));
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f), _wgslsmith_f_op_f32(-var_0.x)))))) * var_0.x);
    let var_2 = _wgslsmith_div_vec3_u32(_wgslsmith_sub_vec3_u32(~func_2().a.c.xxx, ~vec3<u32>(u_input.a, u_input.a, 19437u) << (vec3<u32>(65934u, 2047u, 49009u) % vec3<u32>(32u))), vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, u_input.a), vec2<u32>(38604u, 7569u)), _wgslsmith_sub_vec2_u32(vec2<u32>(4294967295u, 21857u), vec2<u32>(u_input.a, 0u))), u_input.a), u_input.a, ~(~73644u) | abs(max(u_input.a, u_input.a))));
    let var_3 = Struct_5(Struct_4(79519i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) + var_0.x), 35443u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1250f)) - -1862f), func_2().a.e), !(!func_2().e.e.yy), Struct_3(var_0.x), func_2().e, min(reverseBits(min(~vec3<i32>(u_input.c, -1162i, 1i), min(vec3<i32>(-2147483647i, u_input.d.x, u_input.c), vec3<i32>(-47927i, u_input.c, 55038i)))), func_4(Struct_2(Struct_1(vec3<i32>(u_input.c, 2147483647i, u_input.b), vec2<i32>(u_input.d.x, u_input.b), vec4<u32>(var_2.x, 39099u, 1u, 4294967295u), u_input.a, vec4<bool>(false, false, true, false)), _wgslsmith_dot_vec4_u32(vec4<u32>(39938u, var_2.x, 4294967295u, 109126u), vec4<u32>(4294967295u, u_input.a, 1u, u_input.a)), u_input.c, ~vec4<i32>(u_input.d.x, -44168i, -2147483647i, u_input.d.x), Struct_1(vec3<i32>(2147483647i, u_input.d.x, u_input.b), vec2<i32>(u_input.d.x, -36835i), vec4<u32>(var_2.x, u_input.a, u_input.a, 90535u), u_input.a, vec4<bool>(false, false, true, true))), Struct_1(_wgslsmith_sub_vec3_i32(vec3<i32>(1i, u_input.d.x, u_input.b), vec3<i32>(1i, 16914i, -20701i)), ~u_input.d, vec4<u32>(var_2.x, u_input.a, u_input.a, 0u), u_input.a, select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-203f + var_0.x), var_0.x), _wgslsmith_f_op_f32(select(627f, 244f, any(var_3.a.e))));
    let x = u_input.a;
    s_output = StorageBuffer(37297u, 23189u);
}

