struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: vec3<u32>) -> u32 {
    let var_0 = ~(~0u) ^ reverseBits(arg_1.x);
    let var_1 = false;
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -405f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-685f + -240f)))))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-695f, 1450f, var_1)) + 461f)))));
    var_2 = vec2<f32>(964f, _wgslsmith_f_op_f32(-var_2.x));
    var var_3 = vec4<i32>(_wgslsmith_dot_vec4_i32(max(vec4<i32>(u_input.a >> (arg_1.x % 32u), ~arg_0.a, i32(-1i) * -773i, ~2147483647i), ~_wgslsmith_sub_vec4_i32(vec4<i32>(arg_0.a, 25866i, arg_0.a, 0i), vec4<i32>(-2147483647i, 46320i, u_input.a, arg_0.a))), -_wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, arg_0.a, u_input.a, 55443i), vec4<i32>(arg_0.a, u_input.a, -2147483647i, -13394i), vec4<i32>(2147483647i, 0i, -25295i, -43469i)), firstTrailingBit(vec4<i32>(u_input.a, 39462i, 29715i, arg_0.a)))), -2297i, countOneBits(-12608i), ~(arg_0.a << (firstLeadingBit(abs(var_0)) % 32u)));
    return ~78507u;
}

fn func_2(arg_0: vec3<u32>, arg_1: f32, arg_2: vec2<u32>, arg_3: vec4<f32>) -> bool {
    let var_0 = -1105f;
    let var_1 = arg_3.x;
    let var_2 = vec4<i32>(~_wgslsmith_mult_i32(u_input.a, u_input.a) >> (~firstLeadingBit(17563u) % 32u), ~1i, -8905i, -6113i) << ((min(u_input.b, _wgslsmith_div_vec4_u32(~vec4<u32>(arg_0.x, u_input.c.x, 1u, 18576u), vec4<u32>(u_input.b.x, 7168u, 71093u, arg_0.x))) | _wgslsmith_div_vec4_u32(select(vec4<u32>(arg_0.x, arg_0.x, u_input.b.x, arg_0.x), u_input.b, vec4<bool>(false, true, false, true)) | reverseBits(vec4<u32>(1u, 4294967295u, arg_0.x, 0u)), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 0u, arg_2.x, u_input.c.x), vec4<u32>(4294967295u, arg_2.x, 0u, 1u)) >> (u_input.b % vec4<u32>(32u)))) % vec4<u32>(32u));
    let var_3 = Struct_2(select(vec4<u32>(0u, ~arg_0.x, 65393u, func_3(Struct_1(2147483647i, vec2<bool>(false, false), true), vec3<u32>(75270u, arg_2.x, 58821u), arg_0)) >> (_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(u_input.b, u_input.b), u_input.b) % vec4<u32>(32u)), vec4<u32>(_wgslsmith_mult_u32(arg_0.x ^ arg_0.x, firstTrailingBit(arg_2.x)), arg_0.x, abs(arg_2.x), arg_2.x), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, false, false))), true, !(arg_2.x > u_input.c.x), true)));
    let var_4 = Struct_1(~_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-2147483647i, 0i, -1i) >> (arg_0.x % 32u), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-28594i, -18479i, var_2.x), var_2.xwz), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.x, 16775i, -2147483647i), var_2.zww))), !vec2<bool>(any(vec3<bool>(true, true, false)), all(vec3<bool>(false, true, true))), true);
    return true;
}

fn func_1() -> vec2<i32> {
    var var_0 = Struct_1(-_wgslsmith_clamp_i32(_wgslsmith_div_i32(u_input.a, u_input.a), ~u_input.a, ~u_input.a) >> (u_input.c.x % 32u), vec2<bool>(!select(u_input.a <= u_input.a, true, true), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(1900f, -811f))) <= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(162f + -463f))), true);
    let var_1 = select(vec4<bool>(true, true, !(!(!var_0.c)), func_2(vec3<u32>(u_input.b.x, u_input.c.x & u_input.b.x, u_input.b.x | u_input.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(842f))), ~(~u_input.b.zx), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2412f, 872f, -1131f, 1877f)))), select(select(vec4<bool>(all(vec3<bool>(var_0.b.x, false, false)), func_2(vec3<u32>(0u, u_input.c.x, u_input.b.x), -1527f, vec2<u32>(u_input.b.x, 59260u), vec4<f32>(737f, 149f, 300f, -151f)), true, any(vec2<bool>(var_0.c, var_0.b.x))), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, var_0.b.x), vec4<bool>(true, true, var_0.c, var_0.c)), !(!var_0.b.x)), select(vec4<bool>(true, -41780i != var_0.a, true, var_0.c), select(!vec4<bool>(false, var_0.c, true, false), select(vec4<bool>(var_0.c, var_0.c, var_0.b.x, var_0.c), vec4<bool>(var_0.b.x, false, var_0.c, var_0.c), vec4<bool>(var_0.c, var_0.b.x, var_0.b.x, var_0.b.x)), vec4<bool>(var_0.c, var_0.c, var_0.c, var_0.c)), vec4<bool>(false && var_0.b.x, false, true, true)), !select(!vec4<bool>(true, var_0.b.x, var_0.b.x, var_0.c), select(vec4<bool>(var_0.c, var_0.b.x, false, var_0.b.x), vec4<bool>(true, var_0.c, var_0.b.x, false), var_0.b.x), false)), !var_0.b.x);
    var_0 = Struct_1(~countOneBits(abs(firstTrailingBit(var_0.a))), select(!var_1.wx, var_1.yw, var_0.b), var_0.b.x);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(715f, 1144f))))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1339f, 1084f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1246f, 1034f) - vec2<f32>(950f, -140f)))), select(!(!vec2<bool>(var_1.x, false)), select(var_1.wx, !var_1.wx, var_0.b), all(vec4<bool>(var_0.b.x, true, false, false))))));
    return vec2<i32>(u_input.a, countOneBits(var_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = any(vec2<bool>((_wgslsmith_f_op_f32(-558f + 1836f) <= _wgslsmith_f_op_f32(ceil(1850f))) == all(vec2<bool>(false, true)), true));
    let var_1 = abs(2147483647i ^ firstTrailingBit(u_input.a));
    let var_2 = _wgslsmith_div_i32(~1i, ~max(min(countOneBits(u_input.a), var_1), _wgslsmith_clamp_i32(1i, u_input.a, ~13543i)));
    let var_3 = 1u;
    var var_4 = _wgslsmith_mod_vec2_i32(-_wgslsmith_mult_vec2_i32(firstLeadingBit(vec2<i32>(2147483647i, u_input.a)), -(vec2<i32>(u_input.a, 0i) & vec2<i32>(0i, var_2))), func_1());
    let var_5 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(max(311f, _wgslsmith_f_op_f32(floor(112f)))), _wgslsmith_f_op_f32(step(1f, _wgslsmith_f_op_f32(ceil(-280f)))), 1931f))) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(373f, -779f, 200f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(1230f, -577f, 1000f), vec3<f32>(1276f, -1000f, 116f), vec3<bool>(var_0, true, var_0)))) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -843f), _wgslsmith_f_op_f32(f32(-1f) * -1155f), 1828f)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-834f, 1436f, -167f), vec3<f32>(-823f, -1000f, 1306f)))))));
    var var_6 = reverseBits(_wgslsmith_dot_vec2_i32(max(max(vec2<i32>(var_4.x, var_4.x), vec2<i32>(var_4.x, -3791i)) & vec2<i32>(var_4.x, 2147483647i), vec2<i32>(-2147483647i, ~1i)), -vec2<i32>(var_4.x, u_input.a) & ~abs(vec2<i32>(13668i, -67012i))));
    let var_7 = Struct_2(~vec4<u32>(var_3, firstTrailingBit(u_input.c.x), max(1u, u_input.c.x), ~0u));
    var var_8 = countOneBits(~firstLeadingBit(-vec3<i32>(u_input.a, -2147483647i, 2147483647i))) ^ _wgslsmith_clamp_vec3_i32(vec3<i32>(reverseBits(var_2 << (88799u % 32u)), -var_2, firstLeadingBit(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2, 16405i), vec2<i32>(1i, var_4.x)))), _wgslsmith_clamp_vec3_i32(firstTrailingBit(min(vec3<i32>(1025i, 0i, 2147483647i), vec3<i32>(0i, u_input.a, 2147483647i))), ~reverseBits(vec3<i32>(0i, var_1, u_input.a)), -_wgslsmith_sub_vec3_i32(vec3<i32>(var_4.x, u_input.a, 16997i), vec3<i32>(-2147483647i, -33222i, u_input.a))), vec3<i32>(1i, select(_wgslsmith_clamp_i32(var_1, var_2, u_input.a), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.a, 58792i, var_2), vec4<i32>(u_input.a, var_2, var_1, var_2)), true), _wgslsmith_dot_vec4_i32(vec4<i32>(var_1, 2147483647i, 1i, var_1), vec4<i32>(var_2, u_input.a, 1i, var_1)) << ((1u << (u_input.b.x % 32u)) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec3_u32(u_input.b.zwy >> (vec3<u32>(~var_3, reverseBits(0u), _wgslsmith_mult_u32(1u, var_3)) % vec3<u32>(32u)), var_7.a.xwx >> (~(~u_input.b.wzx) % vec3<u32>(32u))), _wgslsmith_f_op_f32(-var_5.x), _wgslsmith_sub_vec4_i32(-_wgslsmith_add_vec4_i32(vec4<i32>(-2147483647i, 66201i, -18537i, var_8.x), _wgslsmith_div_vec4_i32(vec4<i32>(0i, 17770i, var_8.x, -48077i), vec4<i32>(var_8.x, var_8.x, 1i, u_input.a))), (vec4<i32>(1i, 17772i, 2147483647i, 6186i) >> ((vec4<u32>(u_input.c.x, var_7.a.x, u_input.b.x, 82255u) | u_input.b) % vec4<u32>(32u))) & abs(vec4<i32>(-11135i, 0i, -2600i, 2147483647i))), _wgslsmith_f_op_f32(step(-167f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(var_5.x)))))));
}

