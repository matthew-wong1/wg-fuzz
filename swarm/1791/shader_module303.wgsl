struct Struct_1 {
    a: vec2<i32>,
    b: vec3<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: u32,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_4 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> i32 {
    let var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2 * _wgslsmith_f_op_f32(-517f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(arg_2, -1140f, arg_1)) - _wgslsmith_f_op_f32(max(477f, arg_2)))))));
    let var_1 = Struct_5(Struct_4(abs(_wgslsmith_add_vec4_u32(~vec4<u32>(0u, arg_0, u_input.c.x, global0.x), vec4<u32>(global0.x, global0.x, 0u, u_input.b) | vec4<u32>(64745u, global0.x, 24957u, 9658u))), arg_3.a.x, vec4<i32>(~(-2147483647i), arg_3.c.x, 6189i, -2147483647i), -50678i));
    let var_2 = vec4<f32>(var_0, 726f, var_0, 460f);
    let var_3 = arg_1;
    let var_4 = Struct_2(arg_3.b, any(select(select(!arg_3.b.yx, arg_3.b.xy, var_3), select(arg_3.b.zy, vec2<bool>(var_3, var_3), vec2<bool>(true, true)), arg_3.b.xy)), 0i);
    return ~0i << (abs(_wgslsmith_dot_vec2_u32(u_input.c.xx, ~(u_input.c.zz ^ u_input.c.zy))) % 32u);
}

fn func_2(arg_0: Struct_1) -> vec4<i32> {
    global0 = _wgslsmith_mult_vec2_u32(vec2<u32>(global0.x, _wgslsmith_mult_u32(global0.x, 4294967295u)), vec2<u32>(~50568u, 1u)) | _wgslsmith_mod_vec2_u32(~_wgslsmith_mod_vec2_u32(u_input.c.zz, ~vec2<u32>(1u, 57268u)), firstLeadingBit(vec2<u32>(~u_input.b, select(57970u, u_input.c.x, arg_0.b.x))));
    return _wgslsmith_mult_vec4_i32(vec4<i32>(8540i, ~_wgslsmith_add_i32(0i, -52408i), u_input.d.x, arg_0.a.x), vec4<i32>(func_3(u_input.b, true, -1162f, Struct_1(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.d.x, -70351i), vec2<i32>(arg_0.a.x, arg_0.c.x)), vec3<bool>(true, false, arg_0.b.x), _wgslsmith_mult_vec3_i32(arg_0.c, arg_0.c))), -1i, -u_input.d.x, abs(u_input.a.x)));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_5, arg_2: u32) -> Struct_5 {
    global0 = ~(arg_1.a.a.zw ^ u_input.c.zz);
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(355f - 1633f))));
    var var_1 = Struct_4(~(~arg_1.a.a), arg_1.a.d, vec4<i32>(i32(-1i) * -21539i, 1i, -select(-1i, -48654i, true), -min(_wgslsmith_add_i32(u_input.a.x, u_input.d.x), -28310i)), -2147483647i);
    var var_2 = vec4<bool>(false | all(select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), true)), any(select(vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, false), true), vec3<bool>(all(vec3<bool>(true, false, true)), any(vec3<bool>(true, true, true)), any(vec3<bool>(false, false, true))))), true, false);
    var_1 = Struct_4(arg_1.a.a, -2147483647i, vec4<i32>(reverseBits(u_input.d.x), ~(-55637i), u_input.d.x, -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, -49653i, 1i), vec3<i32>(5759i, 1i, -1i))), _wgslsmith_sub_i32(2147483647i, 23828i));
    return arg_1;
}

fn func_1(arg_0: i32) -> Struct_3 {
    global0 = vec2<u32>(_wgslsmith_sub_u32(global0.x, _wgslsmith_sub_u32(firstLeadingBit(1u), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(1u, 0u, u_input.b), 0u))), min(~1u, ~global0.x) | reverseBits(global0.x));
    let var_0 = func_4(select(firstLeadingBit(vec4<i32>(1i, 7634i, 1i, countOneBits(-2147483647i))), func_2(Struct_1(vec2<i32>(arg_0, -1i) | vec2<i32>(arg_0, -46412i), vec3<bool>(true, true, true), vec3<i32>(1i, 1i, 1i))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))), Struct_5(Struct_4(vec4<u32>(1u, global0.x | 4294967295u, countOneBits(8883u), global0.x), u_input.d.x, -reverseBits(vec4<i32>(arg_0, -1i, 31730i, 2147483647i)), -(arg_0 ^ 62609i))), firstTrailingBit(u_input.b));
    let var_1 = u_input.c.zy;
    let var_2 = var_0.a.c.yzz;
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-455f, 766f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1015f + -899f) * _wgslsmith_f_op_f32(764f + 440f))))));
    return Struct_3(min(max(u_input.b, firstTrailingBit(select(u_input.b, var_1.x, false))), 7163u), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-935f, 450f, 461f, -683f))), vec4<f32>(923f, var_3.x, 443f, -766f))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(465f, -428f, var_3.x, -773f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, 1067f, var_3.x, -461f) - vec4<f32>(482f, var_3.x, var_3.x, -325f))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.x, -2228f, 995f, var_3.x)), vec4<f32>(var_3.x, 1218f, var_3.x, 278f))))), Struct_1(firstLeadingBit(vec2<i32>(arg_0, var_2.x >> (var_0.a.a.x % 32u))), select(!select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), vec3<bool>(true, true, true), _wgslsmith_f_op_f32(sign(var_3.x)) < 971f), var_2));
}

fn func_5(arg_0: Struct_3, arg_1: i32) -> Struct_3 {
    global0 = select(max((u_input.c.zy << (~vec2<u32>(global0.x, u_input.c.x) % vec2<u32>(32u))) << (~u_input.c.zy % vec2<u32>(32u)), vec2<u32>(func_4(reverseBits(vec4<i32>(u_input.d.x, 1i, arg_1, 1i)), func_4(vec4<i32>(arg_1, arg_0.c.a.x, arg_0.c.c.x, arg_0.c.a.x), Struct_5(Struct_4(vec4<u32>(u_input.c.x, 1u, u_input.b, 9639u), 51896i, vec4<i32>(arg_1, -1i, 12884i, -10938i), -2147483647i)), u_input.c.x), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.a, arg_0.a, 18466u, 88699u), vec4<u32>(arg_0.a, 0u, global0.x, u_input.c.x))).a.a.x, global0.x)), vec2<u32>(u_input.c.x, firstTrailingBit(~u_input.b) >> (global0.x % 32u)), !select(arg_0.c.b.zy, select(vec2<bool>(arg_0.c.b.x, true), select(vec2<bool>(arg_0.c.b.x, false), arg_0.c.b.zy, vec2<bool>(arg_0.c.b.x, false)), !arg_0.c.b.yx), arg_0.c.b.zz));
    let var_0 = 51954u;
    global0 = u_input.c.yy;
    global0 = vec2<u32>(firstLeadingBit(~_wgslsmith_sub_u32(func_4(vec4<i32>(16694i, -2147483647i, arg_1, 2147483647i), Struct_5(Struct_4(vec4<u32>(100576u, 1u, 4294967295u, 4294967295u), -1i, vec4<i32>(30557i, arg_0.c.c.x, -50833i, 1i), -2147483647i)), 52977u).a.a.x, u_input.c.x)), func_1(min(_wgslsmith_mod_i32(~u_input.a.x, ~1i), reverseBits(u_input.d.x))).a);
    global0 = vec2<u32>(_wgslsmith_div_u32(25869u | u_input.b, 1u), _wgslsmith_mod_u32(_wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.a, ~32994u), _wgslsmith_dot_vec4_u32(func_4(vec4<i32>(u_input.a.x, -24888i, arg_0.c.c.x, -27770i), Struct_5(Struct_4(vec4<u32>(u_input.b, 82149u, 4294967295u, 4294967295u), 21134i, vec4<i32>(-10247i, 2147483647i, -6008i, arg_1), arg_0.c.a.x)), 40832u).a.a, vec4<u32>(global0.x, var_0, 9450u, global0.x))), u_input.c.x));
    return arg_0;
}

fn func_6(arg_0: f32, arg_1: i32, arg_2: Struct_3, arg_3: Struct_5) -> u32 {
    var var_0 = arg_2.b;
    let var_1 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1557f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1475f))), arg_2.b.x))), var_0.yyw));
    let var_2 = Struct_3(firstTrailingBit(66332u), _wgslsmith_f_op_vec4_f32(ceil(arg_2.b)), Struct_1(vec2<i32>(-arg_1, 2147483647i), arg_2.c.b, vec3<i32>(-19073i, firstTrailingBit(arg_2.c.a.x), 1i)));
    var var_3 = arg_3.a;
    let var_4 = ~_wgslsmith_mod_u32(u_input.c.x, ~1u) ^ ~func_1(0i).a;
    return ~8950u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = countOneBits(vec2<u32>(4294967295u, ~96586u));
    global0 = ~max(vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(global0.x, 4294967295u, u_input.b), vec3<u32>(0u, u_input.c.x, global0.x)), firstLeadingBit(vec3<u32>(4294967295u, u_input.b, global0.x))), ~(~u_input.c.x)), abs(abs(vec2<u32>(global0.x, global0.x))));
    global0 = ~u_input.c.xx << (vec2<u32>(global0.x, func_6(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -238f) + -1918f), firstLeadingBit(u_input.d.x), func_5(func_1(47217i), u_input.a.x), func_4(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.d.x, u_input.d.x, 2147483647i, u_input.d.x), vec4<i32>(1i, u_input.a.x, u_input.d.x, u_input.d.x)), Struct_5(Struct_4(vec4<u32>(49847u, 0u, 95307u, 82215u), u_input.a.x, vec4<i32>(u_input.d.x, 1i, u_input.d.x, 0i), 27751i)), 17219u))) % vec2<u32>(32u));
    global0 = vec2<u32>(~_wgslsmith_div_u32(19003u, ~25387u), 1u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec3<u32>(firstLeadingBit(global0.x), min(global0.x, u_input.c.x), u_input.c.x)), global0.x, vec4<i32>(~24508i, ~reverseBits(countOneBits(-17972i)), ~(51544i << (reverseBits(u_input.c.x) % 32u)), -24455i));
}

