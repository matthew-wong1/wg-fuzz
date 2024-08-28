struct Struct_1 {
    a: f32,
    b: bool,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> u32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-arg_1.a), true, _wgslsmith_f_op_f32(abs(arg_1.a)), ~(_wgslsmith_add_u32(select(arg_1.d, 23583u, arg_1.b), ~4294967295u) >> (select(_wgslsmith_mod_u32(u_input.c.x, 82445u), u_input.c.x, any(vec4<bool>(arg_1.b, true, true, arg_1.b))) % 32u)));
    var var_1 = Struct_2(_wgslsmith_mult_i32(~arg_0.x, _wgslsmith_mod_i32(-2147483647i, max(arg_0.x, arg_0.x) | ~(-7466i))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1000f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-511f)) - _wgslsmith_f_op_f32(min(arg_1.c, -374f)))), arg_1.b)), countOneBits(0u), ~_wgslsmith_mult_vec3_u32(~vec3<u32>(81092u, u_input.c.x, var_0.d), ~select(vec3<u32>(11293u, 18297u, 1378u), vec3<u32>(arg_1.d, arg_1.d, var_0.d), false)));
    var var_2 = 451f;
    let var_3 = arg_1;
    var_1 = Struct_2(63939i, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(-1000f)))), _wgslsmith_f_op_f32(2402f * -1002f)), var_0.d, _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(var_1.d, ~vec3<u32>(0u, 118457u, var_1.c)) << (_wgslsmith_sub_vec3_u32(vec3<u32>(34443u, 61287u, 4294967295u), vec3<u32>(arg_1.d, 1u, u_input.c.x)) % vec3<u32>(32u)), vec3<u32>(max(4294967295u | arg_1.d, ~4294967295u), u_input.c.x, 41325u)));
    return 24753u;
}

fn func_2() -> f32 {
    var var_0 = Struct_2(~(~(~(-4031i))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(f32(-1f) * -2361f)) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-759f, -902f)), -1246f)))), 25839u & (_wgslsmith_mult_u32(u_input.c.x, u_input.c.x) & ~func_3(u_input.a, Struct_1(-736f, false, -376f, u_input.c.x))), firstTrailingBit(_wgslsmith_sub_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 31387u, u_input.c.x), vec3<u32>(4294967295u, u_input.c.x, 47287u)), ~vec3<u32>(u_input.c.x, u_input.c.x, 0u))) << (vec3<u32>(8732u << (~u_input.c.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.c.x, 11889u), ~vec4<u32>(4294967295u, u_input.c.x, u_input.c.x, u_input.c.x)), u_input.c.x ^ select(u_input.c.x, 4294967295u, false)) % vec3<u32>(32u)));
    let var_1 = reverseBits(_wgslsmith_mod_vec2_u32(_wgslsmith_div_vec2_u32(firstTrailingBit(var_0.d.zz), var_0.d.yy), u_input.c));
    let var_2 = 1652f;
    var_0 = Struct_2(_wgslsmith_mod_i32(~(-1i), -10848i), _wgslsmith_div_f32(620f, var_0.b), ~_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.c.x, 1u) | vec2<u32>(4294967295u, 2701u)), _wgslsmith_sub_vec2_u32(max(u_input.c, vec2<u32>(0u, var_0.c)), _wgslsmith_add_vec2_u32(u_input.c, vec2<u32>(1u, var_0.c)))), var_0.d);
    var var_3 = (vec3<i32>(-1i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.a, 1i, var_0.a, 2388i), vec4<i32>(u_input.a.x, u_input.d, 28695i, -70663i)), _wgslsmith_div_i32(reverseBits(2147483647i), -59475i)) | vec3<i32>(-1i, u_input.d, u_input.b.x)) | ~(_wgslsmith_add_vec3_i32(~vec3<i32>(-1i, -1i, 1i), u_input.a) | u_input.b.yzy);
    return var_0.b;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(func_2()), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-391f)) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1469f, -1939f, true)), -519f)))), ~u_input.c.x);
    var var_1 = 4294967295u != ~(_wgslsmith_sub_u32(var_0.d, var_0.d) ^ ~(~57748u));
    return Struct_1(var_0.c, any(vec2<bool>(select(u_input.c.x, 52345u, true) > _wgslsmith_dot_vec3_u32(vec3<u32>(17751u, u_input.c.x, u_input.c.x), vec3<u32>(var_0.d, 4294967295u, u_input.c.x)), !(!var_0.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2())))), var_0.c)), u_input.c.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: Struct_1) -> vec3<i32> {
    var var_0 = select(!select(vec3<bool>(true, true, true), select(select(vec3<bool>(arg_0.b, arg_2.b, true), vec3<bool>(true, true, arg_0.b), arg_0.b), select(vec3<bool>(arg_2.b, arg_0.b, true), vec3<bool>(false, true, true), vec3<bool>(false, arg_2.b, arg_2.b)), !vec3<bool>(true, false, arg_2.b)), !select(arg_0.b, arg_2.b, arg_0.b)), !(!select(vec3<bool>(true, arg_2.b, false), select(vec3<bool>(false, arg_0.b, false), vec3<bool>(true, arg_2.b, arg_0.b), arg_0.b), true)), !arg_0.b || true);
    var_0 = !vec3<bool>(true, all(!vec4<bool>(false, arg_2.b, var_0.x, true)), any(vec3<bool>(true, true, false)));
    var var_1 = func_1();
    let var_2 = _wgslsmith_add_i32(i32(-1i) * -33489i, -19332i) << (abs(~arg_1.x) % 32u);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.b.yxz & min(~u_input.a, func_4(func_1(), ~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 46476u), u_input.c, u_input.c), func_1()));
    var var_1 = false;
    let var_2 = u_input.b.yyw;
    var var_3 = _wgslsmith_f_op_f32(-func_1().a);
    let var_4 = _wgslsmith_f_op_f32(ceil(-395f));
    var var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(256f, 369f, _wgslsmith_f_op_f32(-var_4))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4, var_4, var_4)))))));
    var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) * _wgslsmith_f_op_f32(-393f * var_4)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_4)) + var_5.x)) * _wgslsmith_f_op_f32(-var_5.x))));
    var_5 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-431f, var_5.x, _wgslsmith_f_op_f32(f32(-1f) * -692f)))));
    let var_6 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_5.x - 1277f), -632f))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_5.x)), _wgslsmith_f_op_f32(f32(-1f) * -437f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_4, var_4) - _wgslsmith_f_op_f32(f32(-1f) * -1284f)) - 254f)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(var_4, var_5.x))) + _wgslsmith_div_f32(var_4, -155f)), u_input.a.xz, _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(var_5.xy))) * vec2<f32>(_wgslsmith_f_op_f32(round(1200f)), _wgslsmith_f_op_f32(f32(-1f) * -449f))))), max(u_input.c.x, 1u | max(select(1u, u_input.c.x, false), ~u_input.c.x)), vec4<i32>(~(-24345i << (_wgslsmith_mult_u32(1u, 1u) % 32u)), -min(u_input.d, reverseBits(28760i)), abs(-var_0.x), var_0.x));
}

