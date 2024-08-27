struct Struct_1 {
    a: bool,
    b: vec2<u32>,
    c: u32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(true, true, true);

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> f32 {
    global0 = !vec3<bool>(!global0.x, all(vec2<bool>(any(vec2<bool>(true, global0.x)), global0.x)), !(true & select(global0.x, true, true)));
    var var_0 = 472f < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(217f, -680f))));
    global0 = select(vec3<bool>(!select(false, !global0.x, global0.x && global0.x), 701u >= _wgslsmith_div_u32(_wgslsmith_mult_u32(24763u, 39076u), select(0u, 83829u, global0.x)), false), !vec3<bool>(!(u_input.a.x == u_input.a.x), global0.x, false), select(global0.x, true, true) || (false | !global0.x));
    let var_1 = Struct_3(Struct_2(Struct_1(global0.x == true, _wgslsmith_div_vec2_u32(max(vec2<u32>(22700u, 34002u), vec2<u32>(9938u, 72325u)), reverseBits(vec2<u32>(22079u, 6634u))), ~4052u, all(select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(false, global0.x, global0.x, true), true))), Struct_1(!select(true, false, global0.x), ~vec2<u32>(45321u, 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 0u, 4294967295u, 1u), ~vec4<u32>(4294967295u, 1u, 68505u, 68235u)), !all(vec4<bool>(global0.x, global0.x, global0.x, false))), global0.xy, -768f, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2006f, -296f, 723f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-130f, -921f, -1241f)))))));
    var var_2 = var_1.a;
    return var_1.a.e.x;
}

fn func_2(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-997f - arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) + _wgslsmith_f_op_f32(-arg_0.x)));
    let var_1 = !select(false, global0.x && (_wgslsmith_f_op_f32(-122f * 1219f) <= _wgslsmith_f_op_f32(ceil(819f))), true);
    global0 = vec3<bool>(true, select(global0.x, any(!(!global0.zz)), global0.x), var_1);
    var var_2 = vec4<bool>(var_1, all(global0.xz) || true, all(global0.zy), global0.x);
    let var_3 = vec4<i32>(35965i, u_input.a.x, -38661i, -2147483647i);
    return vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-486f)) + _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(arg_0.x - 1378f)))) < arg_0.x, true, global0.x || global0.x);
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_3) -> vec3<u32> {
    global0 = func_2(vec4<f32>(-2356f, -800f, -652f, 1935f));
    let var_0 = _wgslsmith_f_op_f32(870f + arg_2.a.e.x);
    global0 = vec3<bool>(false, any(vec2<bool>(!all(vec4<bool>(arg_2.a.b.d, true, true, arg_1)), global0.x)), false);
    global0 = vec3<bool>(any(select(vec3<bool>(false, true, global0.x), vec3<bool>(false, arg_0.d, true), !vec3<bool>(false, arg_0.a, arg_1))) | (true && global0.x), (~(~69842u) ^ _wgslsmith_sub_u32(80011u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.a.a.c, arg_0.b.x, arg_2.a.a.c, arg_2.a.a.c), vec4<u32>(4294967295u, 38468u, 0u, 4294967295u)))) <= ~_wgslsmith_mod_u32(arg_0.b.x | 1u, arg_2.a.b.c), true);
    var var_1 = arg_2.a.e.zy;
    return ~vec3<u32>(_wgslsmith_mod_u32(17867u, ~firstLeadingBit(1u)), ~(~41758u) << (arg_0.c % 32u), ~_wgslsmith_dot_vec3_u32(vec3<u32>(7764u, 0u, 4294967295u) << (vec3<u32>(49387u, arg_2.a.b.b.x, arg_2.a.a.b.x) % vec3<u32>(32u)), vec3<u32>(77879u, 4294967295u, 4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<u32>(abs(_wgslsmith_add_u32(~firstTrailingBit(5520u), 40757u)), ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(1u, 23093u, 13160u)), ~func_1(Struct_1(true, vec2<u32>(0u, 36340u), 0u, false), global0.x, Struct_3(Struct_2(Struct_1(false, vec2<u32>(35356u, 8017u), 13764u, global0.x), Struct_1(global0.x, vec2<u32>(4294967295u, 4294967295u), 57062u, global0.x), global0.zy, 1356f, vec3<f32>(1444f, -1049f, 1000f))))), 0u);
    let var_1 = !func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(240f, -1000f, 1000f, -193f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-970f, 1408f, 2034f, 1871f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(1981f, 1270f, -246f, 1530f))))).xz;
    let var_2 = _wgslsmith_mult_vec3_u32(abs(~countOneBits(~vec3<u32>(0u, 4294967295u, 44238u))), vec3<u32>((_wgslsmith_clamp_u32(var_0.x, var_0.x, var_0.x) << (13535u % 32u)) ^ 4294967295u, var_0.x | 0u, ~reverseBits(var_0.x) | ~abs(var_0.x)));
    var var_3 = 4102u;
    var var_4 = Struct_3(Struct_2(Struct_1(true, _wgslsmith_mod_vec2_u32(abs(var_0.yy), countOneBits(var_2.zx)), 60618u, true), Struct_1(var_1.x, (vec2<u32>(var_2.x, 4294967295u) ^ vec2<u32>(var_2.x, 78413u)) | ~vec2<u32>(4294967295u, 17748u), ~var_2.x, true), !var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-166f - -1537f) - _wgslsmith_f_op_f32(func_3()))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -207f), -873f, 1583f) + vec3<f32>(_wgslsmith_div_f32(-925f, -357f), -812f, 1792f))));
    let var_5 = _wgslsmith_mult_u32(19721u, _wgslsmith_add_u32(var_2.x, ~(~62320u))) ^ var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_sub_i32(~_wgslsmith_add_i32(-825i, u_input.a.x), 2147483647i), select(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_add_u32(var_5, var_5), _wgslsmith_dot_vec4_u32(vec4<u32>(var_5, 1u, 4294967295u, var_2.x), vec4<u32>(4294967295u, 31416u, 90356u, var_2.x)), 4294967295u), max(select(vec4<u32>(var_5, 623u, 4018u, 36159u), vec4<u32>(4294967295u, 49934u, var_4.a.a.b.x, var_4.a.b.c), global0.x), _wgslsmith_add_vec4_u32(vec4<u32>(var_2.x, var_5, 1u, var_2.x), vec4<u32>(4294967295u, 228u, var_2.x, 0u))), _wgslsmith_add_vec4_u32(select(vec4<u32>(1u, var_4.a.b.c, 71173u, 1u), vec4<u32>(1u, var_4.a.b.c, 4294967295u, var_2.x), vec4<bool>(var_1.x, false, var_1.x, var_4.a.c.x)), vec4<u32>(var_0.x, var_0.x, 0u, var_5))), _wgslsmith_mult_vec4_u32(vec4<u32>(37002u, var_4.a.a.b.x, var_0.x, 4294967295u), vec4<u32>(var_2.x, var_2.x, 72728u, 1u)) & ~(~vec4<u32>(var_2.x, 40668u, 78469u, 0u)), select(!select(vec4<bool>(true, global0.x, true, false), vec4<bool>(global0.x, var_1.x, var_1.x, var_1.x), vec4<bool>(var_4.a.b.d, global0.x, var_1.x, var_1.x)), vec4<bool>(var_4.a.b.c != 0u, true, true, false), !(!vec4<bool>(true, var_4.a.b.d, false, var_1.x)))), _wgslsmith_mult_vec4_i32(~(-u_input.a), _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(u_input.a, _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), ~u_input.a)), 1u, var_0.x);
}

