struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec3<bool>,
    d: bool,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<f32>,
    c: bool,
    d: vec3<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_1,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_3(arg_0: vec4<f32>) -> u32 {
    var var_0 = u_input.a.x;
    let var_1 = -_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(_wgslsmith_add_vec4_i32(select(vec4<i32>(-5786i, -1i, u_input.a.x, u_input.c.x), vec4<i32>(u_input.c.x, u_input.c.x, -1i, u_input.c.x), false), vec4<i32>(-1i, u_input.c.x, u_input.c.x, u_input.a.x)), u_input.b), vec4<i32>(u_input.c.x, _wgslsmith_mult_i32(_wgslsmith_add_i32(18390i, u_input.c.x), -u_input.b.x), ~1i, ~u_input.c.x));
    var_0 = 1i;
    var_0 = u_input.c.x;
    var_0 = _wgslsmith_add_i32(32724i, var_1.x);
    return u_input.d;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec4<u32>, arg_2: Struct_2, arg_3: vec4<f32>) -> i32 {
    var var_0 = ~(reverseBits(vec2<u32>(~arg_1.x, arg_0.x)) | (vec2<u32>(arg_0.x & 60322u, arg_1.x << (1u % 32u)) >> (vec2<u32>(arg_0.x, 40817u) % vec2<u32>(32u))));
    var_0 = vec2<u32>(_wgslsmith_sub_u32(func_3(arg_3), firstLeadingBit(func_3(_wgslsmith_f_op_vec4_f32(floor(arg_2.b))))), abs(arg_0.x));
    var var_1 = ~select(firstLeadingBit(vec3<i32>(reverseBits(-43699i), ~(-29399i), -u_input.a.x)), _wgslsmith_mult_vec3_i32(vec3<i32>(55689i, firstLeadingBit(-1i), arg_2.d.x & 11522i), abs(vec3<i32>(u_input.c.x, arg_2.d.x, arg_2.d.x) | vec3<i32>(arg_2.d.x, 1i, -8522i))), !all(vec4<bool>(arg_2.c, false, arg_2.c, false)));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-921f - arg_2.b.x)) * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2673f, -714f) - arg_3.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.x)))));
    var_1 = vec3<i32>(_wgslsmith_div_i32(~46012i, select(_wgslsmith_dot_vec4_i32(max(vec4<i32>(arg_2.d.x, -28529i, 2147483647i, u_input.c.x), u_input.c), vec4<i32>(27489i, 15468i, -24397i, -22694i)), 0i, !select(false, false, false))), _wgslsmith_mod_i32(-var_1.x, -22588i), var_1.x);
    return _wgslsmith_dot_vec2_i32(select(countOneBits(~(-u_input.a)), abs(u_input.a | vec2<i32>(var_1.x, arg_2.d.x)), false), _wgslsmith_clamp_vec2_i32(firstTrailingBit(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, 11988i), vec2<i32>(var_1.x, -5947i))), _wgslsmith_sub_vec2_i32(u_input.b.wx, vec2<i32>(61950i, arg_2.d.x)) << (~vec2<u32>(arg_2.a.x, u_input.d) % vec2<u32>(32u)), vec2<i32>(_wgslsmith_add_i32(11074i, 25774i), ~(-7230i))) | u_input.c.zx);
}

fn func_4(arg_0: u32, arg_1: i32, arg_2: Struct_3) -> vec3<u32> {
    return vec3<u32>(0u, ~min(1u << (select(arg_2.b.e.x, arg_0, false) % 32u), ~15427u), select(1u, ~reverseBits(0u), all(!vec4<bool>(arg_2.b.d, true, arg_2.b.a, true))));
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: vec2<bool>) -> f32 {
    let var_0 = Struct_2(_wgslsmith_mult_vec3_u32(func_4(_wgslsmith_mod_u32(13935u | u_input.d, u_input.d ^ 9172u), min(0i, func_2(vec3<u32>(0u, u_input.d, u_input.d), vec4<u32>(4294967295u, u_input.d, 93094u, u_input.d), Struct_2(vec3<u32>(4294967295u, u_input.d, 1u), vec4<f32>(-1201f, 1000f, 1000f, -257f), false, arg_1), vec4<f32>(980f, -485f, 978f, -151f))), Struct_3(_wgslsmith_f_op_vec4_f32(vec4<f32>(1872f, -663f, 1867f, 714f) * vec4<f32>(-240f, 923f, 405f, -566f)), Struct_1(arg_0, vec3<f32>(2019f, 441f, 907f), vec3<bool>(arg_2.x, true, arg_2.x), arg_2.x, vec4<u32>(54907u, 0u, u_input.d, u_input.d)), 51592i)), _wgslsmith_sub_vec3_u32(~vec3<u32>(39988u, 4294967295u, u_input.d), abs(vec3<u32>(u_input.d, 12856u, u_input.d)) >> (~vec3<u32>(u_input.d, u_input.d, 0u) % vec3<u32>(32u)))), _wgslsmith_div_vec4_f32(vec4<f32>(354f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1904f + 1057f) + -1638f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-566f - -395f) + -1209f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(290f)), _wgslsmith_div_f32(717f, 248f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-740f + 129f), -1387f, _wgslsmith_f_op_f32(-497f - -451f), _wgslsmith_f_op_f32(f32(-1f) * -269f)) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(-499f, -1491f, -3075f, 960f) + vec4<f32>(296f, -1699f, 987f, -641f)))))), !arg_0, -vec3<i32>(-(~0i), reverseBits(_wgslsmith_sub_i32(u_input.a.x, arg_1.x)), _wgslsmith_sub_i32(1i, arg_1.x) | (-22313i >> (u_input.d % 32u))));
    let var_1 = select(!vec4<bool>(select(true, any(vec4<bool>(arg_2.x, var_0.c, arg_2.x, arg_2.x)), all(arg_2)), any(vec2<bool>(true, true)), false, arg_0), !vec4<bool>(all(vec4<bool>(arg_2.x, arg_2.x, var_0.c, false)), var_0.c, true, arg_2.x), 8506u > ~_wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.a.x, 72492u), 24753u ^ u_input.d));
    var var_2 = Struct_1(true, var_0.b.zww, !select(select(var_1.zyy, var_1.xyz, !var_1.wxy), select(var_1.xyw, var_1.xwz, !vec3<bool>(true, arg_0, false)), true), all(!vec4<bool>(true, arg_0, arg_0, true)), _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(vec4<u32>(13478u, 53609u, u_input.d, 4294967295u) << (vec4<u32>(var_0.a.x, u_input.d, u_input.d, u_input.d) % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(u_input.d, u_input.d, 57124u, var_0.a.x))), vec4<u32>(52296u, ~var_0.a.x, u_input.d ^ var_0.a.x, ~var_0.a.x) ^ firstLeadingBit(max(vec4<u32>(1u, 1u, 9463u, var_0.a.x), vec4<u32>(u_input.d, u_input.d, 53701u, var_0.a.x)))));
    var var_3 = _wgslsmith_sub_u32(~max(_wgslsmith_clamp_u32(u_input.d, 27333u, var_2.e.x), 6624u) & ~_wgslsmith_clamp_u32(abs(0u), ~var_2.e.x, var_2.e.x), _wgslsmith_dot_vec4_u32(~(~(vec4<u32>(16016u, var_0.a.x, 4294967295u, 1u) << (vec4<u32>(68545u, 1u, 17942u, var_0.a.x) % vec4<u32>(32u)))), min(~(~vec4<u32>(var_0.a.x, u_input.d, var_0.a.x, u_input.d)), select(vec4<u32>(0u, var_2.e.x, 1353u, var_2.e.x), reverseBits(var_2.e), vec4<bool>(var_2.d, false, true, var_2.d)))));
    var var_4 = _wgslsmith_mod_i32(~_wgslsmith_mod_i32(select(-var_0.d.x, firstLeadingBit(-43241i), true), arg_1.x ^ var_0.d.x), max(~(~(-1i)), _wgslsmith_mod_i32(firstLeadingBit(-var_0.d.x), -(arg_1.x >> (u_input.d % 32u)))));
    return 672f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -select(u_input.b, firstLeadingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(u_input.b.x, u_input.b.x, 17030i, 2147483647i), -u_input.b)), true);
    var_0 = u_input.b;
    var_0 = vec4<i32>(u_input.b.x, _wgslsmith_clamp_i32(countOneBits(abs(var_0.x) & (var_0.x >> (1u % 32u))), ~(-56671i), firstTrailingBit(~(0i << (u_input.d % 32u)))), 28862i, countOneBits(-3852i));
    let var_1 = _wgslsmith_f_op_f32(func_1(true, var_0.zxz, vec2<bool>(false, !((18241u > u_input.d) == false))));
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(625f, 391f, var_1, -1938f), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_1, -1024f, var_1, var_1), vec4<f32>(var_1, 487f, var_1, 1175f))))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(669f, var_1, -1000f, 1000f)))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1, var_1, 488f, var_1)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_1, var_1, var_1, -901f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(1890f, var_1, var_1, -300f) * vec4<f32>(-523f, var_1, var_1, var_1)))), vec4<bool>(true, false, true, true))), Struct_1(true, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(var_1, 404f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1160f, 425f)), _wgslsmith_div_f32(var_1, _wgslsmith_f_op_f32(var_1 - var_1))), select(vec3<bool>(select(true, true, true), any(vec2<bool>(true, false)), any(vec3<bool>(true, false, false))), vec3<bool>(true, any(vec3<bool>(false, true, false)), true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), false)), true, _wgslsmith_mod_vec4_u32(_wgslsmith_sub_vec4_u32(~vec4<u32>(u_input.d, 0u, u_input.d, u_input.d), countOneBits(vec4<u32>(u_input.d, 98154u, u_input.d, 0u))), countOneBits(vec4<u32>(70772u, 45612u, 4294967295u, u_input.d)))), ~(-20288i));
    let x = u_input.a;
    s_output = StorageBuffer(-436f);
}

