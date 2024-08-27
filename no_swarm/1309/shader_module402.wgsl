struct Struct_1 {
    a: vec2<i32>,
    b: bool,
    c: vec2<u32>,
    d: i32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: u32,
    c: u32,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
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

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> vec4<i32> {
    return max(~_wgslsmith_clamp_vec4_i32(-(~vec4<i32>(-8880i, -38060i, u_input.b.x, -1i)), vec4<i32>(firstLeadingBit(0i), 4982i, -u_input.b.x, u_input.b.x), abs(-vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), select(_wgslsmith_clamp_vec4_i32(vec4<i32>(14002i, u_input.b.x, _wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, -18564i)), i32(-1i) * -9890i), _wgslsmith_div_vec4_i32(vec4<i32>(13655i, 1i, u_input.b.x, u_input.b.x), min(vec4<i32>(u_input.b.x, -23009i, u_input.b.x, u_input.b.x), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 4191i) & (vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x) >> (vec4<u32>(0u, u_input.c.x, arg_0, arg_0) % vec4<u32>(32u)))), reverseBits(vec4<i32>(max(u_input.b.x, u_input.b.x), u_input.b.x, 0i, ~u_input.b.x)), true));
}

fn func_2(arg_0: Struct_3, arg_1: vec4<i32>) -> Struct_4 {
    var var_0 = _wgslsmith_dot_vec4_i32(-(abs(vec4<i32>(arg_1.x, u_input.b.x, 56444i, u_input.b.x) | vec4<i32>(-36029i, -37191i, 24213i, 1i)) >> (u_input.a % vec4<u32>(32u))), func_3(_wgslsmith_dot_vec4_u32(u_input.a, u_input.a)));
    var var_1 = Struct_2(1036f, Struct_1(countOneBits(~arg_1.yw) << (max(abs(vec2<u32>(u_input.a.x, u_input.a.x)), u_input.c.zx) % vec2<u32>(32u)), !select(false, true, true), ~reverseBits(vec2<u32>(u_input.c.x, arg_0.b)), 2147483647i), Struct_1(_wgslsmith_div_vec2_i32(arg_1.ww, _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x, 40551i) & vec2<i32>(-34961i, u_input.b.x), max(vec2<i32>(12417i, arg_1.x), vec2<i32>(arg_1.x, arg_1.x)), ~vec2<i32>(u_input.b.x, u_input.b.x))), false, ~min(_wgslsmith_mod_vec2_u32(vec2<u32>(47243u, u_input.a.x), vec2<u32>(arg_0.c, u_input.c.x)), _wgslsmith_add_vec2_u32(u_input.a.xx, vec2<u32>(4294967295u, 0u))), arg_1.x));
    let var_2 = max(u_input.a, abs(~min(abs(vec4<u32>(arg_0.b, var_1.b.c.x, arg_0.b, arg_0.c)), ~vec4<u32>(u_input.c.x, arg_0.c, var_1.c.c.x, 1u))));
    var_1 = Struct_2(_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_f_op_f32(-1384f - _wgslsmith_div_f32(-2144f, _wgslsmith_f_op_f32(trunc(1408f))))), var_1.c, Struct_1(min(arg_1.xy ^ vec2<i32>(31391i, -8712i), reverseBits(vec2<i32>(48503i, -20607i)) & (arg_1.wx ^ var_1.b.a)), !(var_1.a >= 1260f), max(var_2.xw, u_input.c.zy), arg_1.x));
    let var_3 = var_1.c.c.x;
    return Struct_4(arg_1.xz >> (_wgslsmith_mult_vec2_u32(var_1.c.c, var_2.zz) % vec2<u32>(32u)));
}

fn func_4(arg_0: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(sign(1632f));
    var var_1 = arg_0.a.x;
    var var_2 = -1i;
    var var_3 = ~vec2<u32>(53936u, min(u_input.a.x, 81406u)) & firstLeadingBit(firstTrailingBit(vec2<u32>(4294967295u, ~u_input.c.x)));
    var var_4 = abs(vec3<i32>(-_wgslsmith_div_i32(arg_0.a.x, 2147483647i), ~arg_0.a.x, _wgslsmith_div_i32(max(~u_input.b.x, arg_0.a.x), i32(-1i) * -49754i)));
    return Struct_1(min(u_input.b, firstTrailingBit(var_4.yz << (vec2<u32>(0u, u_input.c.x) % vec2<u32>(32u)))) << ((max(vec2<u32>(0u, var_3.x), ~u_input.a.yz) << (_wgslsmith_mod_vec2_u32(min(u_input.c.zz, u_input.c.zz), u_input.a.wz) % vec2<u32>(32u))) % vec2<u32>(32u)), min(~_wgslsmith_mod_i32(0i, -1i), _wgslsmith_sub_i32(~arg_0.a.x, _wgslsmith_div_i32(-21816i, 2147483647i))) >= 1i, _wgslsmith_div_vec2_u32(vec2<u32>(~var_3.x, 43444u), vec2<u32>(abs(4294967295u), 0u)), -var_4.x);
}

fn func_1(arg_0: Struct_4, arg_1: vec2<i32>) -> Struct_1 {
    var var_0 = firstTrailingBit(max(u_input.c.x, 4294967295u));
    var var_1 = _wgslsmith_div_u32(countOneBits(_wgslsmith_div_u32(1u, ~u_input.c.x ^ 79619u)), 30568u);
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1492f);
    var var_3 = ~arg_0.a.x;
    var var_4 = Struct_1(~vec2<i32>(~u_input.b.x >> (51374u % 32u), _wgslsmith_div_i32(u_input.b.x, -4821i) ^ -arg_0.a.x), all(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), true)), ~vec2<u32>(~u_input.a.x | 1u, _wgslsmith_div_u32(77416u, u_input.a.x) | firstLeadingBit(1u)), u_input.b.x);
    return func_4(func_2(Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(848f, 1830f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1147f, -1391f) - vec2<f32>(-775f, 1794f))), ~(u_input.a.x ^ var_4.c.x), ~27844u), -(~select(vec4<i32>(arg_1.x, arg_1.x, 0i, 2147483647i), vec4<i32>(36670i, -2990i, -2147483647i, 23186i), var_4.b))));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = func_2(Struct_3(vec2<f32>(_wgslsmith_f_op_f32(select(-720f, _wgslsmith_f_op_f32(f32(-1f) * -848f), !arg_0.b)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-2092f * -874f), _wgslsmith_f_op_f32(-426f + 1667f)))), (~u_input.a.x & arg_0.c.x) | _wgslsmith_mult_u32(u_input.c.x, 0u), ~u_input.c.x), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.a.x, arg_0.d, arg_0.a.x, 2147483647i), vec4<i32>(~(-37986i), -arg_0.a.x, _wgslsmith_mult_i32(-1i, -1i), u_input.b.x), countOneBits(max(vec4<i32>(28597i, u_input.b.x, -1814i, 17342i), vec4<i32>(arg_0.d, 33860i, -1i, u_input.b.x)))), abs(firstTrailingBit(vec4<i32>(2147483647i, arg_0.d, -1i, -1i)))));
    let var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1342f, -1000f), vec2<f32>(255f, 296f))))))), u_input.a.x, 8441u);
    let var_2 = vec3<f32>(-1000f, var_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -307f)))));
    let var_3 = 14489u;
    let var_4 = arg_0;
    return -reverseBits(min(arg_0.d, var_0.a.x)) <= ~func_3(max(~0u, 0u)).x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~u_input.a);
    var var_1 = Struct_1(u_input.b, func_5(func_1(Struct_4(u_input.b << (var_0.xz % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(u_input.b, vec2<i32>(u_input.b.x, u_input.b.x)))), vec2<u32>(func_1(func_2(Struct_3(vec2<f32>(-1185f, 864f), var_0.x, 4294967295u), vec4<i32>(2147483647i, u_input.b.x, 47746i, u_input.b.x)), reverseBits(~u_input.b)).c.x, ~abs(reverseBits(51195u))), abs(abs(1i)));
    let var_2 = _wgslsmith_clamp_vec4_u32(vec4<u32>(reverseBits(var_0.x), ~4294967295u, func_1(func_2(Struct_3(vec2<f32>(-2885f, -846f), 21875u, 50319u), vec4<i32>(-6199i, u_input.b.x, 2147483647i, 16706i) << (u_input.a % vec4<u32>(32u))), -vec2<i32>(u_input.b.x, var_1.a.x)).c.x, 0u), firstTrailingBit(_wgslsmith_clamp_vec4_u32(~vec4<u32>(4294967295u, 60546u, 4294967295u, 0u), ~abs(u_input.a), ~vec4<u32>(var_1.c.x, u_input.c.x, 1u, var_1.c.x))), select(firstTrailingBit(vec4<u32>(abs(u_input.a.x), 18494u, u_input.a.x, _wgslsmith_add_u32(1u, u_input.c.x))), u_input.a, true));
    var_1 = func_1(Struct_4(select(-vec2<i32>(60874i, var_1.d), var_1.a | func_1(Struct_4(vec2<i32>(1564i, u_input.b.x)), vec2<i32>(9525i, var_1.a.x)).a, !select(vec2<bool>(true, var_1.b), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, var_1.b)))), vec2<i32>(countOneBits(1i), ~(-1i)));
    let var_3 = !select(select(vec2<bool>(false, true), vec2<bool>(var_1.b, any(vec4<bool>(false, var_1.b, false, var_1.b))), select(!vec2<bool>(var_1.b, var_1.b), !vec2<bool>(false, var_1.b), true)), vec2<bool>(var_1.b, var_1.b), vec2<bool>(var_1.b, func_4(func_2(Struct_3(vec2<f32>(1782f, -1000f), var_1.c.x, var_0.x), vec4<i32>(u_input.b.x, var_1.a.x, -18640i, var_1.a.x))).b));
    var var_4 = Struct_4(-(~var_1.a));
    let var_5 = Struct_3(vec2<f32>(-666f, _wgslsmith_f_op_f32(round(1f))), 3281u, reverseBits((4294967295u & var_0.x) & _wgslsmith_mult_u32(1u, var_2.x)) | 64397u);
    var_4 = func_2(var_5, vec4<i32>(-2147483647i, _wgslsmith_mult_i32(u_input.b.x, 2147483647i), var_4.a.x, select(-2864i, ~var_1.a.x, _wgslsmith_f_op_f32(var_5.a.x + 2478f) == -1214f)));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, ~_wgslsmith_dot_vec2_i32(-u_input.b, _wgslsmith_add_vec2_i32(vec2<i32>(var_4.a.x, var_1.d), vec2<i32>(-56513i, var_4.a.x)))));
}

