struct Struct_1 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: vec4<bool>) -> vec3<bool> {
    let var_0 = vec2<u32>(_wgslsmith_sub_u32(arg_0.d.c, 74135u), select(21731u, _wgslsmith_dot_vec3_u32(vec3<u32>(~1u, arg_0.d.e, ~133076u), vec3<u32>(~arg_0.d.e, abs(87923u), 110222u & arg_0.d.e)), false));
    let var_1 = firstTrailingBit(-vec4<i32>(reverseBits(~u_input.a.x), ~(i32(-1i) * -73373i), -2147483647i, arg_0.a.x));
    global0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global0.x, -662f, global0.x), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(arg_0.d.b.x, 361f, -426f), vec3<f32>(-664f, 201f, global0.x)))) + arg_0.d.b))));
    var var_2 = arg_0;
    var var_3 = arg_0.d.b.x;
    return !vec3<bool>(true, arg_0.d.b.x <= global0.x, select(var_2.d.c ^ 0u, _wgslsmith_mult_u32(0u, var_2.d.c), var_2.c.x) > _wgslsmith_add_u32(max(19645u, arg_0.d.e), ~var_0.x));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = ~min(~_wgslsmith_mod_vec3_u32(~vec3<u32>(20076u, 47133u, 74881u), firstTrailingBit(vec3<u32>(arg_1.e, 35119u, 21127u))), _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_div_u32(19259u, 1u), 1u, arg_0.c), _wgslsmith_clamp_vec3_u32(~vec3<u32>(0u, 4294967295u, arg_0.e), ~vec3<u32>(10118u, arg_1.c, arg_0.c), vec3<u32>(arg_1.c, arg_1.c, 17416u))));
    let var_1 = Struct_2(_wgslsmith_div_vec3_i32(arg_1.a, select(_wgslsmith_sub_vec3_i32(vec3<i32>(25970i, arg_1.a.x, -32081i), u_input.a) ^ _wgslsmith_clamp_vec3_i32(arg_0.a, u_input.a, arg_0.a), arg_0.a, vec3<bool>(true, true, true))), !(!(!vec3<bool>(arg_1.d, arg_1.d, arg_0.d))), select(!func_3(Struct_2(vec3<i32>(arg_0.a.x, -1i, 1i), vec3<bool>(false, arg_0.d, arg_0.d), vec3<bool>(true, arg_1.d, false), arg_0, -42205i), vec4<bool>(true, arg_1.d, true, false)), vec3<bool>(_wgslsmith_f_op_f32(886f + arg_1.b.x) >= _wgslsmith_f_op_f32(step(-597f, -468f)), true, true), true), arg_0, abs(~((21177i >> (arg_1.c % 32u)) >> (arg_1.e % 32u))));
    var var_2 = arg_0.b.x;
    global0 = arg_0.b;
    let var_3 = _wgslsmith_mult_vec3_i32(vec3<i32>(-1i, ~(~_wgslsmith_dot_vec3_i32(vec3<i32>(22245i, arg_0.a.x, var_1.d.a.x), var_1.d.a)), -(i32(-1i) * -31252i) << (_wgslsmith_mult_u32(_wgslsmith_mult_u32(var_1.d.e, var_1.d.c), ~var_1.d.e) % 32u)), countOneBits(~vec3<i32>(1i, var_1.a.x & -7140i, countOneBits(u_input.a.x))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(arg_1.b.x, var_1.d.b.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1000f))), -2717f) - vec3<f32>(154f, _wgslsmith_f_op_f32(-var_1.d.b.x), global0.x)));
}

fn func_1() -> Struct_2 {
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_div_f32(-149f, -750f), 384f, global0.x));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(func_2(Struct_1(vec3<i32>(-2147483647i, 2147483647i, -20051i), vec3<f32>(global0.x, 3070f, -1142f), 0u, false, 46785u), Struct_1(u_input.a, vec3<f32>(global0.x, 280f, global0.x), 5713u, true, 4496u)))))) * vec3<f32>(780f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1158f * global0.x)), _wgslsmith_f_op_f32(global0.x + 1521f))));
    let var_0 = Struct_2(_wgslsmith_clamp_vec3_i32(u_input.a, _wgslsmith_div_vec3_i32(-vec3<i32>(u_input.a.x, -32211i, 2147483647i), u_input.a), u_input.a << (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u))), vec3<bool>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(1000f, -1445f, false)), _wgslsmith_f_op_f32(468f - global0.x))) != 921f, true, !all(select(vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, false), false))), func_3(Struct_2(~_wgslsmith_mult_vec3_i32(u_input.a, u_input.a), !func_3(Struct_2(u_input.a, vec3<bool>(false, true, false), vec3<bool>(true, false, true), Struct_1(u_input.a, vec3<f32>(-279f, global0.x, global0.x), 32018u, true, 0u), u_input.a.x), vec4<bool>(true, false, false, false)), vec3<bool>(true, any(vec4<bool>(true, false, true, false)), select(false, true, false)), Struct_1(firstLeadingBit(vec3<i32>(2147483647i, u_input.a.x, u_input.a.x)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-263f, global0.x, global0.x)), ~4294967295u, true, 0u), firstTrailingBit(abs(u_input.a.x))), !vec4<bool>(true, global0.x > -602f, true, true)), Struct_1(vec3<i32>(u_input.a.x, -min(0i, 0i), ~(~u_input.a.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 712f, -851f)))))), ~abs(46535u), false, reverseBits(~(~30296u))), countOneBits(u_input.a.x));
    return var_0;
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    var var_0 = func_1().d;
    return Struct_2(max(abs(vec3<i32>(-1i) * -vec3<i32>(2147483647i, u_input.a.x, var_0.a.x)), vec3<i32>(arg_0.d.a.x, _wgslsmith_sub_i32(var_0.a.x, -22133i), _wgslsmith_sub_i32(~var_0.a.x, abs(-35477i)))), arg_0.c, arg_0.b, arg_0.d, 0i);
}

fn func_5(arg_0: Struct_2, arg_1: u32) -> Struct_1 {
    var var_0 = arg_1;
    let var_1 = _wgslsmith_add_i32(arg_0.e, 0i);
    return Struct_1(~_wgslsmith_sub_vec3_i32(countOneBits(vec3<i32>(var_1, u_input.a.x, -23431i)), ~vec3<i32>(u_input.a.x, arg_0.d.a.x, var_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(1246f, -886f, _wgslsmith_div_f32(arg_0.d.b.x, arg_0.d.b.x)) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-429f, -623f, -1020f)))), select(arg_1, 1u, false), arg_0.d.d, _wgslsmith_sub_u32(~_wgslsmith_add_u32(~arg_1, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 1u, 0u, arg_0.d.e), vec4<u32>(arg_0.d.c, 4294967295u, 1u, arg_0.d.c))), arg_1));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_4(func_1()), reverseBits(firstLeadingBit(_wgslsmith_clamp_u32(0u, 28490u, 38973u) << (~20310u % 32u))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(Struct_1(u_input.a, var_0.b, 4294967295u, true, var_0.e), Struct_1(u_input.a, vec3<f32>(var_0.b.x, -1750f, global0.x), 9424u, true, var_0.e)))))));
    var var_1 = Struct_2(-(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(vec3<i32>(1i, u_input.a.x, -23538i), vec3<i32>(u_input.a.x, 4372i, -25471i))), !(!vec3<bool>(false && var_0.d, !var_0.d, true)), !func_3(Struct_2(-vec3<i32>(var_0.a.x, var_0.a.x, var_0.a.x), vec3<bool>(true, false, false), vec3<bool>(var_0.d, true, false), var_0, -42326i), select(select(vec4<bool>(false, false, var_0.d, var_0.d), vec4<bool>(true, var_0.d, var_0.d, false), false), select(vec4<bool>(false, true, var_0.d, var_0.d), vec4<bool>(var_0.d, true, true, true), vec4<bool>(var_0.d, var_0.d, var_0.d, var_0.d)), select(vec4<bool>(true, true, false, var_0.d), vec4<bool>(false, false, var_0.d, true), false))), func_1().d, -reverseBits(~_wgslsmith_div_i32(var_0.a.x, u_input.a.x)));
    var_1 = func_1();
    var_1 = Struct_2(_wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(vec3<i32>(1i, ~var_1.a.x, min(56165i, var_0.a.x)), var_0.a), -countOneBits(var_0.a)), var_1.b, select(vec3<bool>(func_1().d.d, 42976u > (var_1.d.e | var_1.d.c), select(all(vec3<bool>(true, var_0.d, false)), var_0.d, true & var_0.d)), var_1.c, vec3<bool>(true, func_5(func_4(Struct_2(var_1.a, var_1.c, var_1.c, Struct_1(var_0.a, var_0.b, var_0.e, true, 9676u), 16493i)), var_1.d.e).d, !var_1.d.d)), func_5(func_1(), _wgslsmith_dot_vec3_u32(vec3<u32>(countOneBits(80870u), ~var_1.d.c, _wgslsmith_mod_u32(36746u, var_1.d.e)), select(vec3<u32>(var_0.e, 4294967295u, var_0.c), vec3<u32>(82086u, 4294967295u, var_0.c), vec3<bool>(var_0.d, true, var_1.d.d)) >> (select(vec3<u32>(var_1.d.e, var_1.d.e, 0u), vec3<u32>(var_1.d.e, 4294967295u, 5937u), var_1.c) % vec3<u32>(32u)))), 0i);
    let var_2 = ((var_0.a.x == _wgslsmith_mod_i32(func_4(Struct_2(vec3<i32>(8123i, -2147483647i, u_input.a.x), var_1.c, var_1.c, Struct_1(u_input.a, var_0.b, var_1.d.e, var_0.d, 4294967295u), -1i)).d.a.x, 23776i << (var_0.e % 32u))) && false) == true;
    let var_3 = ~(~1u);
    global0 = _wgslsmith_f_op_vec3_f32(step(var_1.d.b, vec3<f32>(-1512f, var_0.b.x, _wgslsmith_f_op_f32(var_0.b.x * global0.x))));
    var_1 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(772u, 6882u) >> (vec2<u32>(var_0.c, 4294967295u) % vec2<u32>(32u)), ~(~vec2<u32>(0u, 67977u))), vec2<u32>(~0u, firstTrailingBit(func_1().d.c))), ~vec3<i32>(var_0.a.x, 7595i, countOneBits(abs(var_0.a.x))), global0.x);
}

