struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: vec3<bool>, arg_1: Struct_1) -> u32 {
    return u_input.c;
}

fn func_2(arg_0: vec2<i32>) -> f32 {
    var var_0 = _wgslsmith_sub_u32(func_3(select(vec3<bool>(true, true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), any(vec3<bool>(true, true, true))), Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1000f, 1378f, -406f, -1306f))), vec4<f32>(1293f, 413f, 803f, 211f))), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-345f, -1513f, 2717f))))), _wgslsmith_div_u32(firstTrailingBit(_wgslsmith_dot_vec4_u32(~vec4<u32>(1u, 555u, u_input.b, u_input.b), ~vec4<u32>(u_input.b, u_input.b, u_input.c, u_input.c))), ~63716u));
    var_0 = u_input.c;
    let var_1 = ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.c, u_input.c) & vec3<u32>(u_input.c, 32415u, u_input.b), ~vec3<u32>(u_input.c, 93013u, 1u)), vec3<u32>(~72708u, ~1u, 1u)), ~_wgslsmith_div_vec3_u32(vec3<u32>(4316u, 1u, u_input.b), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.b, u_input.b, 1u), vec3<u32>(1u, u_input.c, u_input.c))));
    var var_2 = _wgslsmith_sub_i32(reverseBits(arg_0.x), _wgslsmith_div_i32(reverseBits(arg_0.x), u_input.a));
    var var_3 = var_1;
    return -169f;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_1 {
    var var_0 = 1u;
    let var_1 = max(_wgslsmith_dot_vec2_i32(~(~arg_0.xx), countOneBits(arg_0.yz)), (u_input.d.x ^ u_input.d.x) >> (~1u % 32u));
    let var_2 = firstLeadingBit(arg_0.x ^ -1i);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -888f), arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1794f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-811f, 585f))))), _wgslsmith_f_op_f32(-arg_1.x));
    var_0 = _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(reverseBits(_wgslsmith_div_u32(67839u, 13976u)), 79983u, abs(u_input.c), 24011u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.c, max(u_input.c, 27759u)), ~(~vec4<u32>(u_input.b, 13734u, u_input.c, 61156u)), vec4<u32>(1u, 1u, 1u, 1u))), 12731u);
    return Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_3.x, arg_1.x, 1129f, var_3.x), vec4<f32>(-1838f, var_3.x, 410f, -481f)) * _wgslsmith_div_vec4_f32(vec4<f32>(arg_1.x, var_3.x, arg_1.x, var_3.x), vec4<f32>(var_3.x, 2362f, arg_1.x, 420f))), vec4<f32>(arg_1.x, -345f, _wgslsmith_f_op_f32(var_3.x - -1000f), -987f))) + _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, arg_1.x, 777f, 1000f) - vec4<f32>(-617f, var_3.x, arg_1.x, 1360f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-237f, arg_1.x, 774f, -1232f)))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_3.xzw))));
}

fn func_1(arg_0: vec3<u32>, arg_1: u32) -> Struct_1 {
    return func_4(firstTrailingBit(abs(abs(_wgslsmith_add_vec3_i32(vec3<i32>(0i, 31643i, u_input.d.x), vec3<i32>(u_input.a, 0i, 36473i))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-1205f))), _wgslsmith_f_op_f32(func_2(vec2<i32>(1i, ~u_input.d.x)))));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(any(select(select(vec4<bool>(false, arg_1.c.x, arg_0.a, arg_0.a), vec4<bool>(false, false, false, arg_0.a), all(vec2<bool>(arg_1.c.x, true))), !(!vec4<bool>(arg_1.c.x, true, false, arg_1.a)), select(vec4<bool>(true, arg_0.a, arg_1.c.x, true), vec4<bool>(true, true, true, true), !arg_1.a))), Struct_1(func_4(_wgslsmith_div_vec3_i32(-vec3<i32>(u_input.d.x, 38539i, 39435i), _wgslsmith_add_vec3_i32(vec3<i32>(u_input.a, arg_0.b.a, -65039i), vec3<i32>(0i, 0i, 12145i))), arg_0.b.c.yx).a, vec4<f32>(_wgslsmith_f_op_f32(select(arg_0.b.b.x, arg_0.b.c.x, all(vec4<bool>(true, true, arg_0.a, arg_0.a)))), func_4(-vec3<i32>(u_input.a, arg_0.b.a, -1i), vec2<f32>(arg_0.b.c.x, 387f)).b.x, 1000f, 964f), arg_0.b.b.xxy), arg_1.c);
    var var_1 = vec3<i32>(_wgslsmith_div_i32(_wgslsmith_clamp_i32(-11765i << (u_input.c % 32u), abs(var_0.b.a), _wgslsmith_div_i32(arg_1.b.a, -24696i)), -46840i) << (u_input.b % 32u), 1i, _wgslsmith_clamp_i32(_wgslsmith_mod_i32(~0i, abs(u_input.a)), abs(~_wgslsmith_sub_i32(0i, u_input.d.x)), -37823i));
    var var_2 = var_0.b.c.x;
    let var_3 = select(select(var_0.c, var_0.c, select(select(var_0.c, var_0.c, arg_0.c), vec3<bool>(arg_1.a, arg_0.a, -32074i == var_1.x), arg_1.a)), vec3<bool>(true, select(true, _wgslsmith_sub_u32(1u, u_input.b) > 1u, all(select(vec2<bool>(false, false), vec2<bool>(false, false), true))), arg_1.c.x), arg_1.c);
    var var_4 = arg_0.b.b;
    return func_4(firstTrailingBit(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 25132i, arg_1.b.a), vec3<i32>(arg_1.b.a, arg_0.b.a, u_input.a), vec3<i32>(-1i, 19972i, arg_0.b.a)) >> (countOneBits(vec3<u32>(u_input.b, 24299u, 0u)) % vec3<u32>(32u))) | vec3<i32>(u_input.a, 1i, -52109i), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_div_f32(993f, var_4.x), arg_1.b.c.x), _wgslsmith_div_vec2_f32(var_4.zx, vec2<f32>(var_4.x, var_4.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(var_0.b.b.x, -420f), vec2<f32>(1996f, arg_1.b.b.x))))))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: f32) -> i32 {
    return ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.a, arg_2.a, 1i), vec4<i32>(arg_1.a, -1i, 2147483647i, -2147483647i)), reverseBits(vec4<i32>(1i, -16128i, u_input.d.x, u_input.d.x) | vec4<i32>(-22939i, 48688i, arg_0.a, -2147483647i))) | _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, -2147483647i, func_5(Struct_3(false, arg_1, vec3<bool>(false, false, false)), Struct_3(false, Struct_1(u_input.a, arg_0.b, arg_0.c), vec3<bool>(false, false, true))).a), select(vec3<i32>(1i, i32(-1i) * -6078i, arg_0.a), ~(-vec3<i32>(-21860i, 2147483647i, arg_2.a)), select(select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), vec3<bool>(true, true, false), vec3<bool>(true, true, true))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = vec3<i32>(func_6(func_5(Struct_3(select(true, false, true), func_1(vec3<u32>(1u, u_input.c, 28271u), u_input.b), select(vec3<bool>(false, true, true), vec3<bool>(true, false, true), true)), Struct_3(true, func_4(vec3<i32>(u_input.d.x, 22984i, u_input.a), vec2<f32>(268f, 389f)), vec3<bool>(true, true, true))), Struct_1(4107i, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1366f, -522f, 345f, 752f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-872f, 592f, -1577f))))), func_1(~(~vec3<u32>(u_input.c, u_input.b, u_input.c)), 1u), 651f), _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.d.x, u_input.a, u_input.a, -40138i), vec4<i32>(u_input.d.x, 1i, -16899i, 1i)) | ~vec4<i32>(u_input.d.x, u_input.a, 0i, u_input.a), vec4<i32>(0i, u_input.d.x, 9008i, -50852i) & (vec4<i32>(u_input.a, u_input.a, 41739i, -1i) << (vec4<u32>(u_input.c, 467u, 0u, u_input.b) % vec4<u32>(32u)))), (u_input.d.x & _wgslsmith_add_i32(u_input.d.x, 0i)) | u_input.d.x), u_input.a & u_input.d.x);
    var var_2 = vec4<i32>(select(func_5(Struct_3(true, func_4(var_1, vec2<f32>(1935f, 319f)), vec3<bool>(false, false, false)), Struct_3(false, Struct_1(13861i, vec4<f32>(-1898f, -1222f, -1000f, 193f), vec3<f32>(1000f, -1000f, 888f)), vec3<bool>(true, true, true))).a, u_input.a, true), u_input.a, u_input.d.x, var_1.x);
    var_2 = vec4<i32>(-1i) * -vec4<i32>(i32(-1i) * -16307i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_2.x, 0i, u_input.a, var_2.x) | vec4<i32>(-2147483647i, u_input.d.x, var_1.x, -11313i), -vec4<i32>(-56237i, 22877i, u_input.d.x, var_1.x)), _wgslsmith_clamp_i32(u_input.a << (0u % 32u), -u_input.d.x, var_1.x), var_1.x);
    var_2 = min(abs(vec4<i32>(-1i) * -select(vec4<i32>(u_input.a, 1i, 2147483647i, 1i), vec4<i32>(var_2.x, 1i, -35036i, -22238i), true)), abs(vec4<i32>(var_1.x, _wgslsmith_div_i32(var_2.x, -2147483647i), firstLeadingBit(5729i), max(-6064i, var_1.x)) | countOneBits(vec4<i32>(0i, u_input.a, var_1.x, u_input.a))));
    var_2 = _wgslsmith_mult_vec4_i32(~select((vec4<i32>(-1i, var_2.x, var_2.x, u_input.a) | vec4<i32>(-4982i, var_1.x, -41000i, 13893i)) ^ abs(vec4<i32>(-1i, 0i, -10554i, u_input.a)), select(vec4<i32>(-2147483647i, u_input.a, var_2.x, var_2.x), vec4<i32>(2147483647i, -1i, 8931i, var_1.x), false) << (_wgslsmith_sub_vec4_u32(vec4<u32>(1u, u_input.c, u_input.b, 4149u), vec4<u32>(u_input.b, 4294967295u, u_input.c, 9113u)) % vec4<u32>(32u)), select(vec4<bool>(false, false, false, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), false), vec4<bool>(true, true, true, true))), -vec4<i32>(u_input.d.x, abs(-2147483647i), 54701i, var_2.x));
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -550f), _wgslsmith_div_f32(-1053f, -147f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1522f, 498f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(1084f, -1647f)))) - _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(308f)), 696f) + vec2<f32>(_wgslsmith_f_op_f32(abs(-838f)), _wgslsmith_f_op_f32(f32(-1f) * -482f))))));
    var var_4 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(1000f, var_3.x, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true))) && true)), _wgslsmith_f_op_f32(-var_3.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, var_3.x))))), vec4<i32>(u_input.a, ~(~(-2147483647i)), -18194i, 1i), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_3.x, -336f, var_3.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-976f, -1340f, 300f))))))));
}

