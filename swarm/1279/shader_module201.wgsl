struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec3<i32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec3<bool>, arg_2: vec3<u32>) -> u32 {
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(trunc(789f)), 1247f);
    let var_1 = _wgslsmith_f_op_vec2_f32(var_0 + var_0);
    var var_2 = 0u;
    let var_3 = arg_0.x;
    var var_4 = Struct_4(1i, -35088i, -firstTrailingBit(-abs(u_input.b.zyz)), -1983f);
    return 4294967295u;
}

fn func_2(arg_0: Struct_4) -> bool {
    var var_0 = Struct_2(reverseBits(u_input.b.x));
    var_0 = Struct_2(~u_input.b.x);
    var_0 = Struct_2(_wgslsmith_div_i32(reverseBits(~arg_0.b), arg_0.a));
    var var_1 = vec2<i32>(-min(-1i, 1i), max(u_input.b.x, u_input.b.x));
    let var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.d, 877f) * vec2<f32>(568f, -652f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-173f, arg_0.d)), vec2<f32>(_wgslsmith_f_op_f32(sign(-483f)), _wgslsmith_div_f32(1672f, arg_0.d))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_0.d))), arg_0.d)));
    return 1u == (0u >> (func_3(-vec4<i32>(var_0.a, arg_0.c.x, var_0.a, u_input.b.x), vec3<bool>(true, true, false), _wgslsmith_mod_vec3_u32(vec3<u32>(17875u, u_input.d, 4050u), ~vec3<u32>(19052u, 10491u, 4294967295u))) % 32u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2, arg_2: vec2<u32>) -> u32 {
    let var_0 = arg_0.a & -4117i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(302f - _wgslsmith_f_op_f32(f32(-1f) * -724f)));
    var var_2 = Struct_4(18921i, _wgslsmith_clamp_i32(~1i, -2147483647i >> (~arg_2.x % 32u), u_input.b.x) | -2147483647i, _wgslsmith_mult_vec3_i32(-vec3<i32>(var_0, var_0, -29901i) >> (_wgslsmith_add_vec3_u32(u_input.c, vec3<u32>(0u, 4294967295u, u_input.d)) % vec3<u32>(32u)), firstLeadingBit(u_input.b.xyw >> (~u_input.c % vec3<u32>(32u)))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1478f + 1335f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-104f - 190f))), -1122f));
    let var_3 = (~34224i > -reverseBits(abs(arg_1.a))) || true;
    var var_4 = 1u;
    return u_input.a;
}

fn func_1(arg_0: vec2<bool>) -> bool {
    var var_0 = firstLeadingBit(vec3<u32>((_wgslsmith_add_u32(1u, 0u) | u_input.d) ^ ~_wgslsmith_add_u32(u_input.c.x, u_input.a), _wgslsmith_mod_u32(u_input.d, u_input.d) << (~96713u % 32u), func_4(Struct_2(u_input.b.x | u_input.b.x), Struct_2(u_input.b.x), select(vec2<u32>(36322u, 7540u), abs(u_input.c.zz), func_2(Struct_4(-3737i, u_input.b.x, vec3<i32>(u_input.b.x, u_input.b.x, 110231i), -1332f))))));
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(step(-860f, _wgslsmith_f_op_f32(floor(1407f)))), -316f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(514f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(203f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-311f, 1000f) * _wgslsmith_f_op_f32(trunc(-750f))))));
    var_0 = u_input.c;
    var var_2 = vec4<i32>(_wgslsmith_div_i32(u_input.b.x, select(-u_input.b.x << (u_input.a % 32u), _wgslsmith_add_i32(u_input.b.x, abs(u_input.b.x)), -22885i < u_input.b.x)), _wgslsmith_sub_i32(-63074i, -firstLeadingBit(_wgslsmith_add_i32(41048i, u_input.b.x))), abs(_wgslsmith_dot_vec2_i32(u_input.b.zw, u_input.b.yy & ~u_input.b.yz)), _wgslsmith_clamp_i32(-1i, _wgslsmith_div_i32(1i, countOneBits(min(u_input.b.x, -11805i))), u_input.b.x));
    let var_3 = Struct_2(-(~(~_wgslsmith_dot_vec4_i32(u_input.b, u_input.b))));
    return ((_wgslsmith_mult_i32(-2147483647i, reverseBits(var_2.x)) > -2147483647i) | ((~var_0.x >> (21404u % 32u)) <= _wgslsmith_mod_u32(u_input.d, var_0.x))) || all(select(arg_0, !select(vec2<bool>(true, false), arg_0, vec2<bool>(arg_0.x, true)), arg_0.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(~u_input.c, -20086i, ~abs(_wgslsmith_mult_i32(_wgslsmith_mod_i32(u_input.b.x, -27149i), 1i)));
    let var_1 = select(true, !all(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true))), func_1(vec2<bool>(true, true))) || any(vec2<bool>(!all(vec3<bool>(true, false, false)), true));
    var var_2 = select(!vec4<bool>(false, all(vec2<bool>(true, true)), var_1, true), select(select(vec4<bool>(!var_1, var_1, !var_1, true), vec4<bool>(var_1, func_2(Struct_4(51617i, 0i, vec3<i32>(u_input.b.x, u_input.b.x, var_0.c), 2050f)), var_1, var_1), !func_2(Struct_4(u_input.b.x, 10906i, vec3<i32>(var_0.c, u_input.b.x, 31458i), 993f))), !select(!vec4<bool>(var_1, false, var_1, true), select(vec4<bool>(var_1, var_1, var_1, var_1), vec4<bool>(var_1, var_1, var_1, true), vec4<bool>(var_1, var_1, false, true)), var_1), false), any(select(vec3<bool>(true, var_1, var_1), select(vec3<bool>(var_1, false, true), select(vec3<bool>(false, var_1, var_1), vec3<bool>(false, true, var_1), vec3<bool>(false, var_1, var_1)), var_0.c > u_input.b.x), all(select(vec2<bool>(var_1, true), vec2<bool>(var_1, var_1), false)))));
    var var_3 = _wgslsmith_add_vec3_i32(select(_wgslsmith_mult_vec3_i32(~u_input.b.xwy, u_input.b.xwx ^ countOneBits(vec3<i32>(var_0.b, u_input.b.x, u_input.b.x))), min(_wgslsmith_sub_vec3_i32(-u_input.b.zwy, _wgslsmith_mult_vec3_i32(u_input.b.www, vec3<i32>(1i, var_0.c, 2147483647i))), vec3<i32>(2147483647i & u_input.b.x, firstTrailingBit(-2147483647i), 33139i)), true), _wgslsmith_div_vec3_i32(min(vec3<i32>(var_0.c, u_input.b.x, 2147483647i), u_input.b.xyw) | u_input.b.yzx, abs(u_input.b.xwy)) ^ _wgslsmith_mult_vec3_i32(u_input.b.zyx, _wgslsmith_div_vec3_i32(vec3<i32>(-64707i, u_input.b.x, u_input.b.x), u_input.b.zwz)));
    var_2 = select(select(!select(vec4<bool>(false, var_1, false, var_1), select(vec4<bool>(var_1, true, var_1, true), vec4<bool>(true, var_2.x, var_1, false), vec4<bool>(var_2.x, var_2.x, var_1, false)), !vec4<bool>(var_1, var_2.x, var_2.x, true)), vec4<bool>(true, func_1(!var_2.yw), true, _wgslsmith_dot_vec4_u32(vec4<u32>(39693u, 18386u, 6411u, 4294967295u), vec4<u32>(114662u, 39258u, u_input.a, 28682u)) <= u_input.a), !((var_1 & false) != var_1)), select(vec4<bool>(false, _wgslsmith_clamp_i32(var_0.b, u_input.b.x, -2147483647i) == 0i, func_2(Struct_4(u_input.b.x, 38714i, vec3<i32>(-9474i, 57163i, 1i), 552f)), false), select(vec4<bool>(all(vec4<bool>(true, var_1, false, false)), var_2.x, var_1, false), select(select(vec4<bool>(true, true, false, true), vec4<bool>(var_2.x, false, true, false), vec4<bool>(true, var_2.x, var_1, var_1)), select(vec4<bool>(false, var_2.x, false, false), vec4<bool>(true, true, true, var_1), vec4<bool>(var_1, var_1, var_2.x, var_2.x)), !var_1), vec4<bool>(true, true, select(var_2.x, var_1, true), any(vec2<bool>(false, var_2.x)))), !vec4<bool>(var_0.a.x != 80103u, !var_2.x, var_1, false)), select(select(vec4<bool>(var_1, var_2.x != var_2.x, false, false && var_2.x), select(!vec4<bool>(false, false, var_2.x, true), vec4<bool>(var_1, var_2.x, false, false), var_1), all(vec4<bool>(var_2.x, var_1, true, false))), vec4<bool>(false, !var_1, !(u_input.a > 20765u), !(var_2.x && var_2.x)), var_2.x));
    var_2 = vec4<bool>(all(vec4<bool>(all(vec3<bool>(true, true, true)), !var_1, false, true | !var_2.x)), false, !(any(!var_2.wz) && (true && any(vec2<bool>(true, true)))), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec3_u32(~(u_input.c & vec3<u32>(var_0.a.x, 53792u, u_input.c.x)) >> (vec3<u32>(~13248u, var_0.a.x, 46453u) % vec3<u32>(32u)), ~_wgslsmith_add_vec3_u32(firstLeadingBit(vec3<u32>(var_0.a.x, 35670u, 67817u)), min(vec3<u32>(u_input.c.x, var_0.a.x, var_0.a.x), u_input.c))), -u_input.b.yx);
}

