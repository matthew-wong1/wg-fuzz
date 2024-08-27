struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: i32,
    c: bool,
    d: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: u32,
    c: Struct_1,
    d: vec4<i32>,
    e: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: u32,
    c: Struct_3,
}

struct Struct_5 {
    a: vec4<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<bool>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(380f, 481f, -1276f) * vec3<f32>(1000f, -766f, 1106f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1389f, -1507f, 212f) + vec3<f32>(406f, 301f, -659f)))))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(var_0.x)), var_0.x);
}

fn func_3() -> vec4<bool> {
    var var_0 = Struct_1(!(_wgslsmith_f_op_f32(f32(-1f) * -580f) != _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1000f)))), (~(~0u) != firstTrailingBit(~0u)) && all(vec3<bool>(true, true, true)), _wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c << (u_input.a % 32u), u_input.c, -36743i >> (u_input.a % 32u)), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(13789i, 0i, u_input.c), vec3<i32>(u_input.b, -22747i, u_input.c), vec3<i32>(2147483647i, u_input.c, -49175i))), abs(vec3<i32>(reverseBits(u_input.b), u_input.b >> (1u % 32u), u_input.c))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1588f, -1328f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, -1196f))))), _wgslsmith_dot_vec2_u32(countOneBits(max(vec2<u32>(u_input.a, u_input.a), vec2<u32>(1u, 24227u))), vec2<u32>(u_input.a | ~u_input.d, ~_wgslsmith_clamp_u32(9934u, u_input.a, u_input.d))), Struct_3(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1235f) * _wgslsmith_f_op_f32(f32(-1f) * -428f)), select(9078u >> (min(48320u, u_input.d) % 32u), 1u, true), Struct_1(_wgslsmith_f_op_f32(round(-127f)) > 1f, all(vec4<bool>(var_0.a, true, true, var_0.b)), ~var_0.c), _wgslsmith_add_vec4_i32(vec4<i32>(0i, 3577i, var_0.c.x, u_input.b), vec4<i32>(var_0.c.x, 2584i, var_0.c.x, -1836i) >> (vec4<u32>(1u, 108698u, u_input.d, u_input.d) % vec4<u32>(32u))), select(vec2<bool>(false, true), select(vec2<bool>(true, false), select(vec2<bool>(true, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, false)), vec2<bool>(var_0.b, false)), vec2<bool>(all(vec4<bool>(true, var_0.a, false, true)), var_0.b))));
    var var_2 = var_1.c.e;
    var var_3 = !(!select(select(vec4<bool>(var_2.x, false, var_0.a, var_0.a), !vec4<bool>(true, var_0.a, false, false), !vec4<bool>(var_0.b, var_1.c.c.b, true, false)), select(select(vec4<bool>(var_0.b, false, false, false), vec4<bool>(false, false, false, true), false), vec4<bool>(var_1.c.e.x, true, true, var_0.b), vec4<bool>(var_1.c.c.b, var_1.c.c.a, true, true)), !vec4<bool>(var_0.a, false, true, false)));
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-296f, var_1.c.a, _wgslsmith_f_op_f32(abs(-197f)))) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(638f, var_1.c.a, var_1.a.x), vec3<f32>(var_1.c.a, var_1.c.a, 1000f))))))));
    return select(!vec4<bool>(var_3.x, all(vec4<bool>(var_2.x, var_1.c.c.b, true, true)), any(select(vec4<bool>(false, var_0.a, true, var_2.x), vec4<bool>(true, var_1.c.e.x, var_0.b, false), vec4<bool>(var_0.b, var_3.x, false, var_1.c.e.x))), (u_input.c >> (42269u % 32u)) < min(-27954i, u_input.c)), !(!vec4<bool>(!var_3.x, any(var_3.xzy), any(vec3<bool>(true, false, var_3.x)), var_2.x)), false);
}

fn func_4(arg_0: Struct_5, arg_1: Struct_3) -> i32 {
    return 1i;
}

fn func_1(arg_0: vec4<f32>, arg_1: vec3<i32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()));
    var var_1 = vec2<i32>(~arg_1.x, arg_1.x) & arg_1.zx;
    var var_2 = -func_4(Struct_5(vec4<i32>(~1i, 20370i, ~0i, -2147483647i), select(arg_1.x, -1i, all(vec3<bool>(true, false, true))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1324f, -620f, -308f)) * vec4<f32>(-883f, -236f, -732f, arg_0.x)), func_3(), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-arg_0.xy)))), Struct_3(arg_0.x, u_input.d, Struct_1(all(vec3<bool>(false, false, false)), true, abs(arg_1)), countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, 1i, -1i, u_input.c), vec4<i32>(u_input.b, var_1.x, arg_1.x, 1i))), func_3().yz));
    let var_3 = Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0)), 1504f) - arg_0.zz) - vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -834f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(-1407f)))))), firstLeadingBit(~1u | (u_input.d >> (u_input.d % 32u))), Struct_3(_wgslsmith_f_op_f32(func_2()), 58099u, Struct_1(all(vec2<bool>(true, true)), false, arg_1), vec4<i32>(~u_input.c, 1i, -(u_input.c ^ arg_1.x), firstTrailingBit(0i << (u_input.a % 32u))), !vec2<bool>(true, any(vec2<bool>(false, true)))));
    var var_4 = ~_wgslsmith_mod_i32(abs(max(arg_1.x, var_3.c.d.x)), firstLeadingBit(var_1.x << (5845u % 32u))) ^ 0i;
    return !all(vec2<bool>(select(u_input.c == var_3.c.d.x, var_3.c.e.x && var_3.c.c.a, select(var_3.c.c.b, false, var_3.c.c.b)), true));
}

fn func_5(arg_0: f32, arg_1: Struct_3, arg_2: vec4<i32>, arg_3: Struct_5) -> Struct_4 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(arg_3.c.yy))))), 13925u, arg_1);
    var var_1 = any(vec2<bool>(true, func_1(arg_3.c, vec3<i32>(-19622i, _wgslsmith_clamp_i32(arg_3.a.x, 12393i, arg_1.d.x), arg_1.d.x))));
    var_1 = true;
    let var_2 = ~(17781i ^ max(_wgslsmith_add_i32(1i, _wgslsmith_mult_i32(u_input.b, -17546i)), ~(-39719i) | arg_2.x));
    var var_3 = Struct_4(var_0.a, ~u_input.d, arg_1);
    return Struct_4(_wgslsmith_f_op_vec2_f32(arg_3.e - var_0.a), 44647u, arg_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - -126f), _wgslsmith_f_op_f32(f32(-1f) * -1150f)))), -1209f, select(true, true, !(u_input.b < u_input.c)))), Struct_3(-396f, ~u_input.d, Struct_1(func_1(vec4<f32>(1159f, -193f, 135f, 1080f), vec3<i32>(-71918i, 45092i, u_input.c)) == (u_input.b != u_input.b), !func_3().x, -firstTrailingBit(vec3<i32>(84024i, 41176i, 0i))), vec4<i32>(_wgslsmith_div_i32(1i, -38154i), -u_input.c, func_4(Struct_5(vec4<i32>(u_input.c, u_input.c, u_input.b, -17070i), 14457i, vec4<f32>(-997f, -167f, 1000f, 937f), vec4<bool>(true, false, false, false), vec2<f32>(1035f, 1000f)), Struct_3(1363f, 1u, Struct_1(true, false, vec3<i32>(u_input.b, u_input.c, u_input.b)), vec4<i32>(8115i, u_input.c, -2147483647i, 2147483647i), vec2<bool>(true, false))), select(2147483647i, u_input.c, false)) | vec4<i32>(abs(2147483647i), u_input.c, countOneBits(1i), u_input.b), select(vec2<bool>(true, false), !select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, true)), vec2<bool>(true, any(vec4<bool>(true, true, true, true))))), vec4<i32>(u_input.b, u_input.c, u_input.c, u_input.c), Struct_5(-(max(vec4<i32>(-16002i, u_input.c, 1i, u_input.c), vec4<i32>(-28351i, u_input.b, u_input.c, 0i)) >> (vec4<u32>(4294967295u, u_input.d, u_input.a, 1u) % vec4<u32>(32u))), ~(-968i), vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(2039f * -1198f), _wgslsmith_f_op_f32(f32(-1f) * -705f)), _wgslsmith_f_op_f32(abs(-1393f)), 168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(228f)))), !select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-956f, -1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(-1522f, _wgslsmith_f_op_f32(round(var_0.a.x)), -1038f));
}

