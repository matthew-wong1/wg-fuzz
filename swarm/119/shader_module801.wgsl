struct Struct_1 {
    a: vec4<u32>,
    b: vec2<bool>,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: u32,
    e: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: u32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: i32,
    e: u32,
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

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-164f, arg_0.x, -1110f, arg_0.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 223f, 1081f, arg_0.x) - vec4<f32>(1139f, 427f, arg_0.x, -1000f)), u_input.a.x >= u_input.a.x))))));
    var var_1 = Struct_2(Struct_1(select(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1, 1u, arg_1, 8852u), vec4<u32>(u_input.b.x, arg_1, u_input.c, arg_1)) >> (vec4<u32>(4294967295u, arg_1, u_input.d.x, arg_1) % vec4<u32>(32u)), vec4<u32>(reverseBits(1u), u_input.c >> (4294967295u % 32u), ~4294967295u, arg_1), -1i > u_input.a.x), vec2<bool>(select(true, var_0.x == var_0.x, all(vec2<bool>(false, true))), false), select(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), false), select(vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, false))), vec4<bool>(true, true, true, true), true)), Struct_1(vec4<u32>(firstLeadingBit(arg_1), ~35426u, ~0u, _wgslsmith_add_u32(~u_input.c, arg_1)), vec2<bool>(any(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false)), select(false, true, any(vec4<bool>(true, false, true, false)))), vec4<bool>(false, false, any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(true, false, true))), _wgslsmith_f_op_f32(round(-1000f)) < _wgslsmith_f_op_f32(f32(-1f) * -299f))), Struct_1(~(~(~u_input.b)), select(vec2<bool>(true, true), vec2<bool>(false, true), !any(vec3<bool>(true, true, false))), select(select(vec4<bool>(true, false, false, true), select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, true, false)), vec4<bool>(true, true, true, true)), vec4<bool>(select(false, true, true), true, false, true), vec4<bool>(any(vec4<bool>(false, true, true, true)), 4294967295u != arg_1, var_0.x > var_0.x, all(vec2<bool>(false, true))))), u_input.b.x | 1u, ~vec2<i32>(_wgslsmith_sub_i32(0i, u_input.a.x), _wgslsmith_div_i32(~(-63175i), u_input.a.x)));
    var_0 = vec4<f32>(468f, -911f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -711f) * arg_0.x))))), _wgslsmith_f_op_f32(-106f - _wgslsmith_f_op_f32(-var_0.x)));
    var var_2 = vec2<u32>(reverseBits(~(~arg_1)), _wgslsmith_sub_u32(var_1.c.a.x, ~abs(~1u)));
    var_1 = Struct_2(Struct_1(var_1.c.a, !(!select(var_1.b.c.ww, var_1.c.c.xw, var_1.a.c.yy)), var_1.c.c), Struct_1(u_input.d, vec2<bool>(all(vec3<bool>(var_1.a.c.x, false, var_1.a.c.x)) | true, var_1.c.b.x), select(vec4<bool>(all(var_1.a.c.yyw), any(vec2<bool>(false, var_1.c.c.x)), true, true), vec4<bool>(var_1.a.b.x, !var_1.b.b.x, var_1.c.b.x, any(var_1.c.b)), !vec4<bool>(var_1.a.b.x, var_1.a.b.x, false, false))), Struct_1(~vec4<u32>(u_input.b.x, firstLeadingBit(var_2.x), var_1.c.a.x, 36276u << (var_1.b.a.x % 32u)), var_1.a.c.yw, !vec4<bool>(true, any(var_1.b.c.wyz), var_1.a.b.x, all(vec3<bool>(var_1.c.b.x, true, var_1.a.b.x)))), ~(~(~4294967295u)), vec2<i32>(0i, 18558i));
    return var_1.c.b.x;
}

fn func_2() -> Struct_2 {
    var var_0 = !(!(!(!select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false)))));
    let var_1 = Struct_3(func_3(vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-357f - -915f))), _wgslsmith_f_op_f32(step(-1443f, _wgslsmith_f_op_f32(819f * 1820f))), _wgslsmith_f_op_f32(trunc(495f))), abs(1u)), Struct_2(Struct_1((vec4<u32>(16449u, u_input.b.x, u_input.c, 0u) << (vec4<u32>(u_input.b.x, u_input.c, 16828u, u_input.c) % vec4<u32>(32u))) << (max(u_input.d, vec4<u32>(4294967295u, 22503u, u_input.c, u_input.c)) % vec4<u32>(32u)), select(select(vec2<bool>(true, var_0.x), vec2<bool>(true, var_0.x), vec2<bool>(var_0.x, var_0.x)), !vec2<bool>(var_0.x, true), any(vec3<bool>(var_0.x, var_0.x, true))), select(vec4<bool>(var_0.x, var_0.x, true, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), !vec4<bool>(var_0.x, var_0.x, var_0.x, true))), Struct_1(_wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(u_input.c, 0u, u_input.c, u_input.d.x) & vec4<u32>(4294967295u, u_input.b.x, u_input.b.x, 4294967295u), u_input.d), select(vec2<bool>(true, true), !vec2<bool>(false, var_0.x), !var_0.x), select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, true), true), !vec4<bool>(var_0.x, false, false, var_0.x), var_0.x)), Struct_1(vec4<u32>(1u, _wgslsmith_sub_u32(u_input.b.x, 34680u), u_input.d.x >> (32736u % 32u), u_input.b.x), !select(vec2<bool>(var_0.x, var_0.x), vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, false)), !(!vec4<bool>(var_0.x, true, var_0.x, var_0.x))), abs(~(~u_input.c)), ~(-vec2<i32>(u_input.a.x, u_input.a.x))), _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(u_input.d.ywx, u_input.b.yyw), vec3<u32>(u_input.c, _wgslsmith_mult_u32(u_input.c, ~7041u), _wgslsmith_mod_u32(u_input.d.x, u_input.b.x) & _wgslsmith_div_u32(u_input.d.x, u_input.b.x))));
    var var_2 = var_1.b.c;
    var_0 = vec2<bool>(true, var_2.b.x);
    var var_3 = ~u_input.a.x;
    return Struct_2(Struct_1(vec4<u32>(var_1.b.b.a.x, var_2.a.x, reverseBits(1u), 39793u & _wgslsmith_dot_vec3_u32(var_1.b.a.a.zwy, var_2.a.xxx)), vec2<bool>(!all(vec2<bool>(true, var_2.b.x)), var_1.c.x >= 0u), var_2.c), Struct_1(u_input.b, select(vec2<bool>(all(vec2<bool>(var_2.b.x, var_1.a)), select(var_0.x, var_1.b.c.b.x, false)), select(var_2.c.ww, !var_1.b.b.b, true | var_1.b.a.b.x), select(var_2.c.zx, !var_2.b, !var_2.c.wx)), !vec4<bool>(!var_2.c.x, any(vec3<bool>(true, false, var_1.b.b.c.x)), true, false)), var_1.b.a, var_2.a.x, vec2<i32>(_wgslsmith_div_i32(-firstLeadingBit(-11785i), var_1.b.e.x), ~max(var_1.b.e.x, var_1.b.e.x) << (u_input.d.x % 32u)));
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: i32) -> f32 {
    let var_0 = _wgslsmith_div_i32(~2147483647i, u_input.a.x);
    let var_1 = func_2();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1437f, _wgslsmith_f_op_f32(f32(-1f) * -1673f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1199f, -366f, arg_1.c.x)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_1(firstLeadingBit(u_input.d.ww), Struct_1(vec4<u32>(33516u, u_input.d.x, u_input.c, u_input.d.x), vec2<bool>(true, true), vec4<bool>(true, true, true, false)), u_input.a.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.d.ww, Struct_1(u_input.b, vec2<bool>(false, false), vec4<bool>(true, true, false, false)), u_input.a.x)) - -813f)), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(600f, -333f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-1162f, -819f) * vec2<f32>(-385f, -1202f)))))));
    var var_1 = reverseBits(-36794i);
    var_1 = 2147483647i;
    var_1 = select(func_2().e.x, _wgslsmith_add_i32(~1i, _wgslsmith_sub_i32(-1i, u_input.a.x)), any(vec2<bool>(select(any(vec4<bool>(true, false, true, true)), true, true), all(vec2<bool>(true, true)))));
    var var_2 = ~(-2147483647i);
    let x = u_input.a;
    s_output = StorageBuffer(-(17558i >> (countOneBits(u_input.b.x) % 32u)) & _wgslsmith_mod_i32(_wgslsmith_clamp_i32(u_input.a.x, -1i, 1i), _wgslsmith_div_i32(u_input.a.x, -12754i)), u_input.d.xyx, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.x)), 1000f, _wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(step(-1053f, -617f)), var_0.x, var_0.x))), all(vec4<bool>(true, true, true, true)) | true)), 2147483647i, ~u_input.b.x);
}

