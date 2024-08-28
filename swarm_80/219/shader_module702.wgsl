struct Struct_1 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: u32,
    d: Struct_1,
    e: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec2<bool> {
    let var_0 = max(_wgslsmith_add_vec3_i32(firstTrailingBit(vec3<i32>(firstTrailingBit(u_input.a.x), 1i, -1i)), abs(vec3<i32>(i32(-1i) * -19285i, ~arg_0.e.x, 12405i))), ~_wgslsmith_add_vec3_i32(select(~vec3<i32>(-2147483647i, 2147483647i, u_input.b.x), arg_0.b.yxx, select(vec3<bool>(arg_0.a, false, arg_0.a), vec3<bool>(true, arg_0.d.x, true), true)), arg_0.b.wzy));
    let var_1 = u_input.a;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1043f);
    var var_3 = ~u_input.a >> (~(~select(vec4<u32>(u_input.d.x, 12976u, u_input.d.x, u_input.d.x), vec4<u32>(90652u, arg_0.c, u_input.d.x, 0u), arg_0.d.x) << (~(~vec4<u32>(9564u, arg_0.c, 4294967295u, arg_0.c)) % vec4<u32>(32u))) % vec4<u32>(32u));
    var_3 = vec4<i32>(-1i) * -var_1;
    return !(!select(select(select(vec2<bool>(true, true), arg_0.d.xz, arg_0.d.x), arg_0.d.xy, vec2<bool>(arg_0.d.x, arg_0.d.x)), select(arg_0.d.xy, vec2<bool>(true, arg_0.d.x), arg_0.d.yx), arg_0.d.xy));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec2<bool>) -> f32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-879f, _wgslsmith_f_op_f32(f32(-1f) * -519f), true))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-886f + -1076f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(min(-1046f, 557f)))))));
    var var_1 = arg_0;
    var var_2 = arg_0;
    var_1 = Struct_1(arg_0.a, abs(-arg_0.b), countOneBits(var_2.c), !select(arg_0.d, select(select(arg_0.d, vec3<bool>(arg_2.x, arg_2.x, false), vec3<bool>(var_2.d.x, arg_0.d.x, true)), arg_0.d, !var_1.d), false), _wgslsmith_div_vec2_i32(~u_input.b.yx, abs(arg_1.a.e)));
    let var_3 = Struct_3(Struct_1(true, reverseBits(countOneBits(vec4<i32>(var_1.e.x, arg_0.b.x, 2655i, var_1.b.x)) | -arg_0.b), arg_0.c, var_1.d, _wgslsmith_mult_vec2_i32(select(abs(arg_1.c.e), vec2<i32>(u_input.a.x, -2147483647i), arg_1.a.d.x), u_input.a.xy)), 1u, arg_0);
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(-685f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - _wgslsmith_f_op_f32(exp2(var_0))))))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -439f), _wgslsmith_f_op_f32(-684f + -1056f)))))));
}

fn func_2(arg_0: Struct_3) -> u32 {
    var var_0 = u_input.a.zx;
    var var_1 = arg_0.c.d.x || (~(-(-49893i & u_input.a.x)) >= 18489i);
    var var_2 = Struct_2(select(true, all(!select(vec3<bool>(arg_0.a.a, arg_0.a.a, arg_0.c.d.x), arg_0.c.d, vec3<bool>(arg_0.c.a, true, arg_0.c.d.x))), !any(arg_0.c.d.yy)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(420f, -1445f), 1879f, true)), u_input.d.x << (~(~u_input.c) % 32u), Struct_1(arg_0.a.d.x, _wgslsmith_mult_vec4_i32(abs(_wgslsmith_mult_vec4_i32(arg_0.c.b, arg_0.c.b)), arg_0.a.b), 4294967295u ^ (87881u | _wgslsmith_sub_u32(65486u, u_input.c)), arg_0.c.d, arg_0.a.e), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(804f * 1115f), _wgslsmith_f_op_f32(ceil(1432f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(816f, 117f)) + _wgslsmith_f_op_f32(403f - -487f))) + _wgslsmith_div_f32(-455f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1720f))))));
    var_2 = Struct_2(any(!(!select(var_2.d.d, var_2.d.d, arg_0.a.d))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1713f)), var_2.c, Struct_1(true, ~vec4<i32>(arg_0.c.b.x, arg_0.a.e.x, 1i, _wgslsmith_mult_i32(arg_0.c.b.x, 38978i)), _wgslsmith_mod_u32(u_input.d.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, 77252u, arg_0.c.c, u_input.d.x), _wgslsmith_mult_vec4_u32(vec4<u32>(29432u, u_input.c, 1u, 30064u), vec4<u32>(42744u, 31888u, 16025u, 62594u)))), select(!(!var_2.d.d), !vec3<bool>(arg_0.c.d.x, true, true), arg_0.c.a), var_2.d.b.wx), _wgslsmith_f_op_f32(func_4(Struct_1(any(vec2<bool>(arg_0.c.a, true)) && (arg_0.a.b.x == var_0.x), _wgslsmith_mult_vec4_i32(var_2.d.b, vec4<i32>(3494i, -2147483647i, var_0.x, 2147483647i)) >> (~vec4<u32>(var_2.c, 0u, u_input.c, arg_0.b) % vec4<u32>(32u)), ~min(var_2.d.c, 50846u), select(var_2.d.d, arg_0.a.d, !var_2.a), -vec2<i32>(2147483647i, -2147483647i)), arg_0, select(arg_0.a.d.yy, vec2<bool>(!var_2.a, all(vec4<bool>(var_2.a, true, false, false))), func_3(Struct_1(true, vec4<i32>(-10377i, u_input.a.x, -49365i, arg_0.c.e.x), 0u, vec3<bool>(true, var_2.d.a, arg_0.c.a), var_2.d.e))))));
    let var_3 = 4294967295u;
    return u_input.d.x;
}

fn func_1(arg_0: bool, arg_1: vec3<bool>) -> f32 {
    var var_0 = vec4<u32>(_wgslsmith_sub_u32(18509u, firstLeadingBit(_wgslsmith_mod_u32(func_2(Struct_3(Struct_1(arg_0, vec4<i32>(5408i, u_input.a.x, u_input.a.x, 0i), 8193u, arg_1, u_input.b.xz), 27443u, Struct_1(false, u_input.a, 0u, vec3<bool>(true, arg_0, true), vec2<i32>(u_input.a.x, 1i)))), u_input.c))), ((~u_input.c ^ 1u) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 43866u, u_input.c), vec3<u32>(0u, u_input.d.x, 0u)), func_2(Struct_3(Struct_1(arg_1.x, vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2147483647i), 14369u, arg_1, vec2<i32>(u_input.a.x, u_input.a.x)), u_input.d.x, Struct_1(arg_0, vec4<i32>(u_input.b.x, -2147483647i, u_input.a.x, u_input.b.x), 0u, arg_1, vec2<i32>(u_input.a.x, u_input.a.x))))) % 32u)) >> (_wgslsmith_clamp_u32(36194u, _wgslsmith_clamp_u32(38873u, reverseBits(u_input.d.x), 77085u), 48070u) % 32u), select(select(1u, 1u, !arg_0), u_input.c, !(_wgslsmith_div_i32(28690i, -2147483647i) == _wgslsmith_add_i32(u_input.b.x, u_input.a.x))), u_input.d.x);
    var_0 = select(_wgslsmith_mult_vec4_u32(vec4<u32>(19088u, (0u >> (var_0.x % 32u)) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 4294967295u), vec2<u32>(23094u, u_input.c)) % 32u), var_0.x, _wgslsmith_clamp_u32(reverseBits(43476u), 97943u, 4787u >> (u_input.d.x % 32u))), vec4<u32>(0u, abs(var_0.x), var_0.x, var_0.x) | ~_wgslsmith_mod_vec4_u32(vec4<u32>(var_0.x, var_0.x, var_0.x, 0u), vec4<u32>(u_input.c, 4294967295u, 4294967295u, u_input.c))), _wgslsmith_clamp_vec4_u32(abs(vec4<u32>(var_0.x, 22632u, var_0.x, u_input.d.x)) << (firstTrailingBit(vec4<u32>(u_input.c, 0u, var_0.x, 4294967295u)) % vec4<u32>(32u)), vec4<u32>(4294967295u, ~47072u, _wgslsmith_div_u32(22897u, 39208u), u_input.d.x), reverseBits(vec4<u32>(u_input.d.x, 4294967295u, u_input.c, var_0.x))) & vec4<u32>(u_input.d.x, _wgslsmith_mult_u32(139185u << (u_input.c % 32u), abs(57514u)), 1u, var_0.x), false);
    var_0 = vec4<u32>(var_0.x, 1u, u_input.c, 1u & _wgslsmith_mod_u32(_wgslsmith_clamp_u32(firstTrailingBit(u_input.d.x), _wgslsmith_add_u32(var_0.x, 4294967295u), _wgslsmith_dot_vec2_u32(u_input.d, vec2<u32>(15727u, 44270u))), 30096u));
    var var_1 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(2325f, -1000f))) + _wgslsmith_f_op_f32(f32(-1f) * -325f)))));
    var_0 = select(vec4<u32>(~firstLeadingBit(var_0.x), func_2(Struct_3(Struct_1(false, vec4<i32>(-17763i, u_input.b.x, u_input.a.x, u_input.b.x), 1u, vec3<bool>(arg_1.x, false, false), vec2<i32>(-2147483647i, -53113i)), 55760u << (1u % 32u), Struct_1(false, vec4<i32>(u_input.b.x, u_input.b.x, 37322i, 19596i), 0u, arg_1, u_input.b.zz))), 28332u, ~(~u_input.d.x ^ (var_0.x ^ 64537u))), vec4<u32>(18359u, 4294967295u, 17153u, 32397u), !(!vec4<bool>(select(arg_1.x, true, true), false, true, false)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(279f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-725f, -1499f))))) + _wgslsmith_div_f32(967f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(311f)), _wgslsmith_f_op_f32(1f + -1130f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(true, vec3<bool>(false, true, false)))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))), max(firstTrailingBit(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(2410u, u_input.d.x, 15081u, u_input.c), vec4<u32>(104562u, 1u, u_input.c, u_input.c)), ~vec4<u32>(u_input.c, 1u, 4294967295u, 0u))), firstTrailingBit(_wgslsmith_div_u32(u_input.c, abs(u_input.d.x)))), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -398f)) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(true, vec4<i32>(4082i, u_input.a.x, u_input.b.x, u_input.a.x), u_input.c, vec3<bool>(true, false, false), u_input.b.xy), Struct_3(Struct_1(false, vec4<i32>(-17372i, 23513i, u_input.a.x, -17565i), 5039u, vec3<bool>(true, false, false), u_input.a.zx), u_input.c, Struct_1(false, vec4<i32>(u_input.a.x, 23266i, u_input.a.x, -767i), u_input.d.x, vec3<bool>(false, true, false), u_input.b.yx)), vec2<bool>(true, false)))), _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(0i, 2147483647i), ~u_input.a.x, countOneBits(1i), u_input.b.x), vec4<i32>(u_input.b.x, -25726i, abs(u_input.b.x), min(u_input.b.x, u_input.a.x))), max(49354u, min(6681u, ~u_input.c)), vec3<bool>(true, true, true), vec2<i32>(~_wgslsmith_sub_i32(-2147483647i, -1i), firstTrailingBit(_wgslsmith_div_i32(-7345i, 14962i)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(129f, _wgslsmith_f_op_f32(f32(-1f) * -916f)))));
    var var_1 = !(!vec2<bool>(false, !var_0.d.a));
    var var_2 = var_0.b;
    var var_3 = select(var_0.d.b, vec4<i32>(755i, var_0.d.b.x, _wgslsmith_sub_i32(0i, _wgslsmith_dot_vec2_i32(~var_0.d.b.xw, _wgslsmith_mod_vec2_i32(vec2<i32>(var_0.d.b.x, 1i), vec2<i32>(u_input.a.x, -8828i)))), reverseBits(-(u_input.b.x ^ u_input.b.x))), var_1.x);
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(275f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(true, vec3<bool>(var_1.x, true, var_0.d.d.x))) * _wgslsmith_f_op_f32(func_4(Struct_1(false, var_0.d.b, 0u, vec3<bool>(var_1.x, true, false), var_0.d.b.xz), Struct_3(var_0.d, var_0.d.c, var_0.d), var_0.d.d.yz))))), _wgslsmith_f_op_f32(func_4(Struct_1(!(var_3.x != var_0.d.e.x), select(var_0.d.b, var_0.d.b, vec4<bool>(var_0.a, var_1.x, var_0.a, var_1.x)) & -u_input.a, 38009u, select(var_0.d.d, !var_0.d.d, var_0.d.d.x), abs(vec2<i32>(var_3.x, 88958i))), Struct_3(Struct_1(select(var_0.d.a, false, true), -var_0.d.b, func_2(Struct_3(var_0.d, 1u, var_0.d)), var_0.d.d, ~var_0.d.b.zy), var_0.d.c, var_0.d), !select(vec2<bool>(false, true), select(vec2<bool>(true, var_0.a), vec2<bool>(false, var_1.x), var_1.x), func_3(var_0.d)))));
    let var_5 = var_0.d.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -745f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(370f, var_0.e, 963f)))))), 70837i);
}

