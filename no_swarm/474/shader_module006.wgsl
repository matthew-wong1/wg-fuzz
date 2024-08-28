struct Struct_1 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec4<bool>,
    e: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: vec4<bool>) -> vec2<f32> {
    return _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(237f, 704f))))));
}

fn func_3(arg_0: Struct_1, arg_1: bool, arg_2: vec3<bool>) -> i32 {
    global0 = _wgslsmith_f_op_vec2_f32(func_1(!(!select(select(vec4<bool>(true, arg_0.d, arg_2.x, false), vec4<bool>(false, true, false, true), arg_2.x), !vec4<bool>(arg_0.d, arg_2.x, arg_1, arg_1), select(vec4<bool>(arg_2.x, arg_1, arg_0.d, arg_0.d), vec4<bool>(arg_2.x, true, arg_2.x, true), true))))).x;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(712f))) - 1f));
    var var_0 = Struct_3(_wgslsmith_mod_u32(_wgslsmith_add_u32(u_input.c.x, abs(~u_input.a)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 1u, u_input.c.x) >> (vec4<u32>(u_input.e.x, u_input.a, 4294967295u, 58780u) % vec4<u32>(32u)), ~vec4<u32>(u_input.a, 16529u, 1u, u_input.c.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(0u, 1u, _wgslsmith_mod_u32(1u, u_input.c.x)), abs((vec3<u32>(u_input.c.x, u_input.c.x, 1u) >> (u_input.e % vec3<u32>(32u))) >> (u_input.e % vec3<u32>(32u)))), ~(~min(_wgslsmith_sub_u32(5240u, 0u), u_input.e.x << (0u % 32u))), vec4<bool>(true, _wgslsmith_div_f32(-1406f, _wgslsmith_f_op_f32(max(-512f, -618f))) > _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(310f, 1000f)), 2012f), !(true || arg_1) == arg_2.x, !(!arg_0.d)), true);
    let var_1 = Struct_3(_wgslsmith_div_u32(u_input.a ^ 22472u, 1u), ~var_0.b & vec3<u32>(52126u, 4294967295u, _wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, 4294967295u), u_input.c.x)), 11532u, var_0.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(899f * -355f))) * 588f) >= _wgslsmith_div_f32(-375f, 1000f));
    var var_2 = arg_0;
    return arg_0.c;
}

fn func_4(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_1) -> bool {
    let var_0 = all(vec4<bool>(!select(false, true, true), any(!select(vec2<bool>(true, arg_0), vec2<bool>(true, arg_0), arg_0)), any(!vec4<bool>(arg_2.d, arg_2.d, arg_0, arg_0)), true));
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(false, var_0, false, true))).x)));
    global0 = arg_1.x;
    let var_1 = Struct_3(4294967295u, max(_wgslsmith_div_vec3_u32(vec3<u32>(67508u, 49362u, u_input.c.x), min(vec3<u32>(u_input.e.x, u_input.c.x, u_input.e.x), vec3<u32>(5934u, u_input.c.x, u_input.e.x))), ~vec3<u32>(u_input.c.x, 9147u, u_input.e.x)) ^ abs(vec3<u32>(~u_input.a, 1u, 1u)), _wgslsmith_add_u32(~_wgslsmith_div_u32(u_input.c.x, 28812u), abs(~(~u_input.e.x))), !vec4<bool>(arg_0, any(!vec4<bool>(arg_2.d, true, true, arg_2.d)), any(select(vec4<bool>(false, false, var_0, false), vec4<bool>(arg_2.d, arg_0, true, var_0), vec4<bool>(var_0, arg_2.d, true, arg_2.d))), true), firstTrailingBit(_wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(vec4<u32>(61502u, 676u, 5411u, u_input.a), vec4<u32>(u_input.a, 1u, 1u, u_input.c.x)))) == 1u);
    let var_2 = false;
    return arg_0 || all(var_1.d);
}

fn func_2() -> Struct_1 {
    var var_0 = 1i;
    let var_1 = vec3<bool>(firstLeadingBit(~countOneBits(u_input.e.x)) >= 14471u, true, func_4(!select(false, true, false) | true, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1375f, -108f, -1000f))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1f, 1f, 1f), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -440f, 326f), vec3<f32>(1762f, 2678f, 1000f))))), Struct_1(u_input.b.xz, _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(u_input.b.yww, u_input.b.xzy), vec3<i32>(-1i, u_input.b.x, u_input.d)), -func_3(Struct_1(u_input.b.zz, u_input.b.wwx, 25482i, true), false, vec3<bool>(true, false, false)), false)));
    var var_2 = func_3(Struct_1(u_input.b.xw, _wgslsmith_mult_vec3_i32(countOneBits(max(vec3<i32>(2147483647i, 0i, 0i), u_input.b.xyx)), abs(u_input.b.xwx)), i32(-1i) * -countOneBits(u_input.b.x), any(!select(var_1.xx, vec2<bool>(var_1.x, var_1.x), var_1.zz))), any(select(select(!var_1.zy, vec2<bool>(true, true), !vec2<bool>(false, var_1.x)), vec2<bool>(var_1.x & var_1.x, !var_1.x), true)), vec3<bool>(true, false, all(var_1.xy)));
    var var_3 = Struct_2(Struct_1(u_input.b.wz, firstTrailingBit(max(~vec3<i32>(0i, u_input.b.x, u_input.b.x), -u_input.b.wzw)), _wgslsmith_div_i32(-u_input.d, ~(-4580i)), var_1.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(770f * -1187f)), 294f)));
    let var_4 = vec4<u32>(5973u, ~(~u_input.a) | 90150u, u_input.e.x, _wgslsmith_div_u32(~_wgslsmith_dot_vec3_u32(max(vec3<u32>(0u, 0u, 0u), vec3<u32>(u_input.a, 0u, 0u)), vec3<u32>(97u, 57953u, u_input.a) ^ u_input.e), max(u_input.c.x, ~_wgslsmith_clamp_u32(24716u, u_input.c.x, u_input.e.x))));
    return Struct_1(-_wgslsmith_mod_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(u_input.d, 1050i)), u_input.b.zw | vec2<i32>(u_input.d, u_input.d)), var_3.a.b.yy), reverseBits(~u_input.b.wwz), -((_wgslsmith_add_i32(u_input.d, u_input.d) >> (_wgslsmith_mod_u32(var_4.x, 0u) % 32u)) << (17915u % 32u)), var_3.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_div_vec2_u32(u_input.e.zx, _wgslsmith_div_vec2_u32(u_input.c, u_input.e.xx))) & ~(~vec2<u32>(~u_input.c.x, ~u_input.a));
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2236f, -337f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1573f, -382f) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-466f, 415f) - vec2<f32>(-157f, -1500f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(296f, -716f)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1842f, 1461f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1489f, -1000f), vec2<f32>(1724f, -209f)) * _wgslsmith_f_op_vec2_f32(func_1(vec4<bool>(true, true, false, true))))))));
    let var_2 = var_0.x;
    var var_3 = func_2();
    var_3 = Struct_1(vec2<i32>(-2147483647i, _wgslsmith_clamp_i32(~var_3.a.x, var_3.c, countOneBits(u_input.b.x << (u_input.a % 32u)))), -_wgslsmith_add_vec3_i32(var_3.b, _wgslsmith_add_vec3_i32(u_input.b.xxw, -u_input.b.zyy)), var_3.c, any(!vec3<bool>(var_3.d, all(vec3<bool>(var_3.d, var_3.d, var_3.d)), !var_3.d)));
    var var_4 = !func_2().d;
    var_4 = false;
    var var_5 = -604f;
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.d, var_3.b, _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_div_f32(-1489f, var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1121f)), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(var_1.x)))))));
}

