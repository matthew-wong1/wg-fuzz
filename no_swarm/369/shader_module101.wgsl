struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<f32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec3<bool>,
}

struct Struct_5 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: f32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: vec2<f32>) -> i32 {
    let var_0 = min(_wgslsmith_div_vec3_u32(vec3<u32>(firstLeadingBit(~u_input.e), ~u_input.b, 1u), ~(~vec3<u32>(34546u, u_input.e, u_input.e))), abs(_wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.c, u_input.c, u_input.b) << ((vec3<u32>(u_input.c, u_input.b, 4294967295u) & vec3<u32>(4294967295u, 1u, u_input.b)) % vec3<u32>(32u)), ~vec3<u32>(u_input.c, u_input.c, u_input.b) << (firstLeadingBit(vec3<u32>(u_input.b, 4294967295u, u_input.c)) % vec3<u32>(32u)))));
    var var_1 = Struct_5(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(215f, arg_0.x)))), arg_0.x));
    var var_2 = Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -660f) * _wgslsmith_f_op_f32(f32(-1f) * -203f)), var_1.a.x, _wgslsmith_f_op_f32(ceil(-953f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1544f) + 1154f)), Struct_1(-1i, select(u_input.c, 1u, u_input.d <= 0i), -(~vec2<i32>(u_input.d, -1i)), true), Struct_1(u_input.d, min(1u, 17721u), firstLeadingBit(u_input.a.zz), true), Struct_1(_wgslsmith_div_i32(u_input.d, 2147483647i) << (u_input.e % 32u), u_input.e, vec2<i32>(~u_input.d, firstTrailingBit(u_input.d)), true)), all(!select(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, false)), vec4<bool>(false, true, false, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, false)))), !vec3<bool>(true, (var_1.a.x > 220f) & true, max(u_input.c, u_input.e) >= ~var_0.x));
    let var_3 = ~abs(_wgslsmith_add_u32(var_2.a.b.b, ~_wgslsmith_add_u32(1173u, var_0.x)));
    var_2 = Struct_4(Struct_2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.x)), -2343f, 2228f), Struct_1(var_2.a.b.c.x, _wgslsmith_add_u32(4294967295u, countOneBits(var_3)), u_input.a.xx, false), var_2.a.c, Struct_1(-1i, var_3, var_2.a.b.c, var_2.c.x)), true, var_2.c);
    return 1i;
}

fn func_2() -> u32 {
    var var_0 = min(~1u, u_input.c);
    var var_1 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-699f, _wgslsmith_f_op_f32(round(1000f)), _wgslsmith_f_op_f32(1614f * -1729f), 685f))), Struct_1(u_input.d, 43048u, _wgslsmith_sub_vec2_i32(~vec2<i32>(-2147483647i, u_input.a.x), vec2<i32>(2147483647i, -1i)) << (~(vec2<u32>(4294967295u, 864u) | vec2<u32>(u_input.e, u_input.b)) % vec2<u32>(32u)), true), Struct_1(u_input.d, 0u, u_input.a.yy, false), Struct_1(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 41591i), u_input.a.zz) >> (~u_input.e % 32u)), 75657u, vec2<i32>(func_3(_wgslsmith_div_vec2_f32(vec2<f32>(1628f, 624f), vec2<f32>(1189f, -229f))), _wgslsmith_sub_i32(u_input.d, -60943i)), false));
    var var_2 = !(!vec2<bool>(any(vec3<bool>(false, false, false)) && (var_1.a.x < var_1.a.x), ~1i < _wgslsmith_dot_vec3_i32(vec3<i32>(-44537i, var_1.b.a, u_input.a.x), vec3<i32>(2147483647i, u_input.a.x, u_input.a.x))));
    var_2 = select(!select(select(!vec2<bool>(var_1.b.d, var_2.x), !vec2<bool>(false, var_2.x), all(vec2<bool>(var_1.d.d, false))), vec2<bool>(var_2.x, !var_1.d.d), var_2.x), !select(!(!vec2<bool>(true, var_2.x)), select(!vec2<bool>(false, var_1.b.d), !vec2<bool>(var_1.b.d, var_2.x), vec2<bool>(var_2.x, var_2.x)), !vec2<bool>(false, var_1.d.d)), vec2<bool>(true, select(var_1.d.d & all(vec4<bool>(var_2.x, var_1.b.d, var_1.c.d, var_1.b.d)), var_1.b.d, 2147483647i >= min(-48314i, u_input.d))));
    var_2 = select(vec2<bool>(var_1.d.d, var_2.x), !vec2<bool>(!(var_1.a.x == -262f), var_1.a.x != var_1.a.x), !var_2.x);
    return u_input.b;
}

fn func_1(arg_0: vec2<u32>) -> f32 {
    let var_0 = vec2<u32>(~countOneBits(~u_input.e & ~arg_0.x), u_input.c);
    var var_1 = Struct_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-476f, -370f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 952f) * vec2<f32>(-1000f, -240f)))))));
    var var_2 = ~vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(1u, 22597u) | var_0.x), _wgslsmith_mult_u32(func_2(), func_2()), _wgslsmith_mult_u32(var_0.x, 1u), var_0.x);
    var_1 = Struct_5(var_1.a);
    let var_3 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.a.x)))), var_1.a.x));
    return 281f;
}

fn func_4(arg_0: vec4<bool>, arg_1: f32, arg_2: Struct_3, arg_3: bool) -> StorageBuffer {
    var var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(arg_1, arg_1, arg_1, 1000f))), vec4<f32>(_wgslsmith_f_op_f32(max(1983f, arg_1)), 1806f, arg_1, 526f))) * _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -166f), arg_1, _wgslsmith_f_op_f32(-1527f * arg_1), arg_1)))), Struct_1(1i, 21633u & _wgslsmith_add_u32(1u, arg_2.b), min(u_input.a.yz, min(u_input.a.zx >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), ~u_input.a.yx)), false), Struct_1(u_input.a.x, firstLeadingBit((55460u >> (arg_2.b % 32u)) | arg_2.b), _wgslsmith_clamp_vec2_i32((vec2<i32>(1i, u_input.a.x) | vec2<i32>(0i, u_input.d)) | _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.d, -1i), u_input.a.xy), vec2<i32>(0i, u_input.a.x) >> (vec2<u32>(0u, 4294967295u) % vec2<u32>(32u)), select(vec2<i32>(u_input.d, u_input.a.x), u_input.a.xy & u_input.a.yz, arg_0.yx)), false), Struct_1(-2147483647i, ~arg_2.b, _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x) ^ vec2<i32>(u_input.d, 1i), u_input.a.yz), true));
    let var_1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(-arg_1)))) - _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1 * 224f), 407f))), 1263f));
    var var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_1)));
    var_0 = Struct_2(_wgslsmith_f_op_vec4_f32(var_0.a - vec4<f32>(-435f, -1604f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -449f)), arg_1)), var_0.d, Struct_1(-_wgslsmith_dot_vec3_i32(_wgslsmith_mult_vec3_i32(u_input.a, vec3<i32>(var_0.d.c.x, u_input.a.x, var_0.d.c.x)), _wgslsmith_sub_vec3_i32(u_input.a, u_input.a)), 39219u, -(~var_0.d.c), arg_2.a.x), var_0.b);
    var_0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(abs(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -133f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1 - _wgslsmith_f_op_f32(abs(613f))) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(var_0.a.x))))), -611f), Struct_1(_wgslsmith_sub_i32(abs(~u_input.d), min(var_0.b.c.x, -27756i) | var_0.d.c.x), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(var_0.b.b, 32557u, 4294967295u, 20990u) | vec4<u32>(1u, 1u, 41952u, u_input.e), vec4<u32>(arg_2.b, var_0.b.b, 27308u, 43570u) << (vec4<u32>(64626u, var_0.d.b, 4294967295u, 0u) % vec4<u32>(32u))), (vec4<u32>(arg_2.b, arg_2.b, u_input.b, u_input.b) >> (vec4<u32>(4294967295u, 0u, 23598u, 21271u) % vec4<u32>(32u))) << (_wgslsmith_div_vec4_u32(vec4<u32>(arg_2.b, 1u, u_input.e, u_input.b), vec4<u32>(8764u, 1u, 0u, 26737u)) % vec4<u32>(32u))), u_input.a.zz, !(_wgslsmith_f_op_f32(min(-2356f, arg_1)) > -1016f)), var_0.b, var_0.b);
    return StorageBuffer(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1)) + var_0.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_1, -308f)) * var_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -291f)))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1 - _wgslsmith_f_op_f32(func_1(vec2<u32>(arg_2.b, 32429u)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_0.a.x)))), -2268f, _wgslsmith_f_op_f32(select(var_0.a.x, _wgslsmith_f_op_f32(-385f + arg_1), any(arg_2.a.wy))), _wgslsmith_f_op_f32(floor(var_0.a.x))), ~firstLeadingBit(~min(0u, 36915u)), _wgslsmith_f_op_f32(-var_1), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.d << (var_0.b.b % 32u), -20908i, var_0.b.c.x, firstTrailingBit(_wgslsmith_mult_i32(var_0.b.a, 5539i))), select(~(vec4<i32>(u_input.a.x, 1i, var_0.b.a, u_input.d) ^ vec4<i32>(-1i, 24167i, u_input.a.x, 1i)), select(vec4<i32>(var_0.c.a, var_0.b.a, u_input.a.x, u_input.d), vec4<i32>(2147483647i, u_input.d, -10701i, 477i) >> (vec4<u32>(u_input.c, var_0.c.b, var_0.b.b, 4294967295u) % vec4<u32>(32u)), arg_2.a), select(!arg_2.a, vec4<bool>(true, false, true, false), false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(vec4<bool>(false, false, (all(vec2<bool>(false, true)) && false) == true, all(select(vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))) || (-778f < _wgslsmith_f_op_f32(trunc(1000f)))), 4294967295u);
    let var_1 = var_0;
    let var_2 = select(u_input.a.yz, vec2<i32>(7339i, _wgslsmith_mult_i32(~u_input.a.x | 2147483647i, _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, 15183i, 0i), u_input.a), 40205i))), true);
    let x = u_input.a;
    s_output = func_4(vec4<bool>(!var_0.a.x, any(var_1.a), var_0.a.x, !(u_input.c > (46863u >> (u_input.e % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(~vec2<u32>(1u, u_input.b) & vec2<u32>(1u, 1u))) + 1708f), Struct_3(var_0.a, var_1.b & u_input.c), u_input.a.x >= ~_wgslsmith_mod_i32(select(u_input.a.x, -1i, var_0.a.x), 19767i));
}

