struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_2,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_4 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec2<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec3<u32>) -> vec3<i32> {
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(323f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(3211f)))), -2548f))), Struct_1(min(min(countOneBits(vec4<i32>(u_input.b.x, u_input.b.x, 1i, u_input.b.x)), vec4<i32>(u_input.a.x, u_input.e.x, u_input.c.x, u_input.c.x) | vec4<i32>(-24776i, u_input.a.x, u_input.a.x, u_input.c.x)), -vec4<i32>(1i, 0i, -2147483647i, -26534i))), Struct_2(Struct_1(vec4<i32>(u_input.b.x, -u_input.b.x, 2147483647i, _wgslsmith_dot_vec2_i32(u_input.c, vec2<i32>(u_input.c.x, u_input.b.x)))), arg_0.x, Struct_1(firstLeadingBit(vec4<i32>(u_input.c.x, 43467i, 42697i, 26851i)))), Struct_1(abs(-_wgslsmith_mod_vec4_i32(vec4<i32>(1279i, u_input.b.x, u_input.c.x, 2147483647i), vec4<i32>(-1i, u_input.e.x, u_input.e.x, u_input.c.x)))), Struct_2(Struct_1(_wgslsmith_sub_vec4_i32(vec4<i32>(18794i, 0i, u_input.e.x, u_input.b.x), firstTrailingBit(vec4<i32>(-2147483647i, u_input.a.x, u_input.b.x, 1i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(-420f, -1580f)))), Struct_1(-vec4<i32>(u_input.b.x, 0i, u_input.e.x, u_input.c.x))));
    var var_1 = Struct_3(var_0.a, Struct_1(-vec4<i32>(-2147483647i, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, -60445i), vec2<i32>(var_0.d.a.x, 2147483647i)), _wgslsmith_dot_vec4_i32(var_0.d.a, var_0.c.a.a), firstTrailingBit(18898i))), var_0.c, var_0.c.c, var_0.c);
    var_1 = Struct_3(_wgslsmith_f_op_vec3_f32(max(var_0.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -625f), var_0.c.b, var_0.e.b)))), Struct_1(var_0.c.c.a | vec4<i32>(select(-2147483647i, -1i, true), var_1.d.a.x, -2147483647i, 38959i)), Struct_2(var_1.d, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-1151f + var_1.c.b)), arg_0.x, all(vec3<bool>(true, true, false)))), Struct_1(vec4<i32>(var_1.c.c.a.x, 3694i, _wgslsmith_add_i32(var_1.d.a.x, -2147483647i), _wgslsmith_dot_vec3_i32(var_1.d.a.yyy, vec3<i32>(-1i, -1i, u_input.c.x))))), Struct_1(_wgslsmith_sub_vec4_i32(select(vec4<i32>(-2147483647i, 5706i, var_1.b.a.x, -2147483647i), var_1.e.c.a, false), var_1.c.c.a) << ((select(vec4<u32>(0u, u_input.d, u_input.d, 0u), vec4<u32>(43344u, u_input.d, arg_1.x, 17088u), false) ^ countOneBits(vec4<u32>(arg_1.x, 1u, arg_1.x, 59060u))) % vec4<u32>(32u))), var_1.c);
    var_0 = Struct_3(vec3<f32>(2564f, _wgslsmith_f_op_f32(min(var_1.a.x, _wgslsmith_f_op_f32(ceil(var_1.c.b)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -799f))), 1581f))), Struct_1(countOneBits(-(var_1.b.a | vec4<i32>(1i, var_0.b.a.x, 17392i, var_1.d.a.x)))), Struct_2(var_1.b, _wgslsmith_f_op_f32(var_1.e.b * -380f), var_1.c.c), var_0.c.a, var_0.e);
    let var_2 = vec2<f32>(var_0.a.x, arg_0.x);
    return ~u_input.e;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<f32>, arg_2: vec4<f32>) -> u32 {
    return u_input.d;
}

fn func_2(arg_0: Struct_1) -> Struct_4 {
    let var_0 = Struct_4(-u_input.a.x);
    var var_1 = _wgslsmith_div_i32((firstTrailingBit(~9767i) & -11976i) & _wgslsmith_dot_vec2_i32(u_input.a.zy, select(~u_input.a.xz, vec2<i32>(2147483647i, var_0.a) & u_input.c, true)), _wgslsmith_clamp_i32(min(u_input.a.x, ~min(var_0.a, 0i)), _wgslsmith_sub_i32(arg_0.a.x, _wgslsmith_dot_vec2_i32(firstLeadingBit(vec2<i32>(u_input.a.x, u_input.b.x)), arg_0.a.xy)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i) & arg_0.a.wx, select(_wgslsmith_mod_vec2_i32(u_input.e.xx, vec2<i32>(-53064i, arg_0.a.x)), _wgslsmith_add_vec2_i32(arg_0.a.yy, arg_0.a.xz), true))));
    var var_2 = -vec3<i32>(_wgslsmith_div_i32(i32(-1i) * -57080i, i32(-1i) * -2147483647i), ~(-arg_0.a.x) & _wgslsmith_dot_vec4_i32(vec4<i32>(1i, 76529i, var_0.a, -29987i), -vec4<i32>(u_input.b.x, arg_0.a.x, u_input.b.x, u_input.a.x)), arg_0.a.x);
    var_2 = min(u_input.a, ~abs(firstTrailingBit(-vec3<i32>(28399i, arg_0.a.x, 20358i))));
    var var_3 = (u_input.d ^ 20595u) | ~func_4(vec3<i32>(var_2.x, var_2.x, u_input.c.x) ^ func_3(vec2<f32>(-155f, 385f), vec3<u32>(u_input.d, u_input.d, u_input.d)), vec3<f32>(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -183f), 421f), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f))));
    return Struct_4(~arg_0.a.x);
}

fn func_1(arg_0: vec3<i32>) -> Struct_4 {
    let var_0 = 4294967295u;
    let var_1 = func_2(Struct_1(-_wgslsmith_mult_vec4_i32(vec4<i32>(1i, u_input.c.x, -1i, arg_0.x), abs(vec4<i32>(-5733i, -1i, arg_0.x, u_input.c.x)))));
    let var_2 = u_input.d;
    var var_3 = Struct_3(vec3<f32>(1597f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(813f)), _wgslsmith_f_op_f32(f32(-1f) * -1096f)))), 493f), Struct_1(~(~reverseBits(vec4<i32>(19939i, var_1.a, 1i, var_1.a)))), Struct_2(Struct_1(~vec4<i32>(-26736i, -2147483647i, u_input.e.x, 0i)), _wgslsmith_f_op_f32(f32(-1f) * -1943f), Struct_1(_wgslsmith_add_vec4_i32(vec4<i32>(23715i, 1i, -2147483647i, arg_0.x), vec4<i32>(23473i, 3880i, u_input.a.x, -20061i)) & vec4<i32>(u_input.b.x, u_input.c.x, 26112i, var_1.a))), Struct_1(_wgslsmith_mod_vec4_i32(select(vec4<i32>(-22453i, arg_0.x, arg_0.x, 12458i), select(vec4<i32>(-6252i, var_1.a, 8651i, -4959i), vec4<i32>(2147483647i, arg_0.x, -8892i, u_input.a.x), true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, false), true)), select(vec4<i32>(arg_0.x, -342i, 1i, -1i), vec4<i32>(-11828i, -37354i, arg_0.x, 21716i), vec4<bool>(false, false, false, true)) << (~vec4<u32>(1u, 0u, 1u, 71733u) % vec4<u32>(32u)))), Struct_2(Struct_1(max(max(vec4<i32>(16271i, 0i, 1256i, 2147483647i), vec4<i32>(-1i, u_input.e.x, arg_0.x, u_input.c.x)), vec4<i32>(u_input.a.x, arg_0.x, var_1.a, u_input.e.x) ^ vec4<i32>(76524i, u_input.c.x, arg_0.x, 1i))), -1628f, Struct_1(~(vec4<i32>(-31647i, arg_0.x, arg_0.x, var_1.a) ^ vec4<i32>(arg_0.x, -2147483647i, 0i, var_1.a)))));
    var var_4 = ~abs(~(~vec2<u32>(u_input.d, var_0)));
    return func_2(Struct_1(_wgslsmith_mod_vec4_i32(var_3.b.a, var_3.c.c.a) ^ _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_3.b.a, vec4<i32>(-2147483647i, -2147483647i, 12455i, 21752i)), firstLeadingBit(var_3.b.a))));
}

fn func_5(arg_0: Struct_4, arg_1: i32, arg_2: bool, arg_3: Struct_1) -> Struct_2 {
    var var_0 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(156f, -391f, 732f, 266f)))) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-729f, 398f, _wgslsmith_f_op_f32(select(676f, -141f, arg_2)), _wgslsmith_f_op_f32(f32(-1f) * -586f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-846f, 584f, 1483f, 1340f), vec4<f32>(1000f, -236f, -350f, -2450f)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(769f, -1027f, 1249f, -1176f)))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(381f - 1077f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-351f * 412f) + _wgslsmith_f_op_f32(select(396f, -1411f, false))), _wgslsmith_div_f32(132f, _wgslsmith_div_f32(-377f, -188f)))));
    var var_1 = vec4<bool>(!arg_2, any(select(vec3<bool>(arg_2, any(vec3<bool>(arg_2, false, arg_2)), arg_2), select(vec3<bool>(false, arg_2, false), select(vec3<bool>(arg_2, true, arg_2), vec3<bool>(true, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2)), select(vec3<bool>(false, arg_2, true), vec3<bool>(arg_2, arg_2, arg_2), true)), arg_2)), any(vec4<bool>(true, true, true, true)), all(vec2<bool>(abs(arg_3.a.x) >= -arg_3.a.x, all(select(vec3<bool>(arg_2, arg_2, false), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(false, arg_2, arg_2))))));
    var var_2 = arg_3.a;
    var_2 = arg_3.a;
    var var_3 = select(select(vec2<bool>(all(var_1.xy), arg_2 == false), vec2<bool>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_2.x, arg_3.a.x), arg_3.a.zz) >= firstTrailingBit(-47051i), false), vec2<bool>(any(!var_1.wx), _wgslsmith_add_u32(u_input.d, 4294967295u) < (u_input.d >> (1u % 32u)))), var_1.yz, var_1.xw);
    return Struct_2(Struct_1(select(_wgslsmith_add_vec4_i32(arg_3.a, ~arg_3.a), vec4<i32>(1i, arg_0.a | -2147483647i, -5572i, func_3(var_0.zx, vec3<u32>(1u, 43910u, u_input.d)).x), !(arg_0.a <= u_input.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * _wgslsmith_f_op_f32(-885f + 303f))), Struct_1(~vec4<i32>(-2147483647i, -2147483647i, 1i, arg_0.a)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1(vec3<i32>(-_wgslsmith_div_i32(u_input.e.x, u_input.e.x), (u_input.b.x << (u_input.d % 32u)) >> (u_input.d % 32u), ~(-15924i))), _wgslsmith_div_i32(-max(u_input.e.x, u_input.e.x), u_input.e.x), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(min(vec3<i32>(-2147483647i, 15840i, u_input.a.x), vec3<i32>(0i, u_input.a.x, u_input.e.x)), select(vec3<i32>(u_input.a.x, 14441i, u_input.b.x), u_input.a, vec3<bool>(false, true, true)))) < u_input.b.x, Struct_1(-max(select(vec4<i32>(0i, u_input.b.x, u_input.e.x, -1i), vec4<i32>(-1106i, -4323i, u_input.a.x, 2147483647i), false), firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 38210i, u_input.a.x)))));
    let var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b, var_0.b, var_0.b), _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_0.b, var_0.b) + vec3<f32>(var_0.b, 198f, var_0.b)))))));
    var var_2 = vec2<bool>(!(true & (_wgslsmith_mult_u32(70u, u_input.d) >= u_input.d)), _wgslsmith_sub_u32(~u_input.d, _wgslsmith_mod_u32(~u_input.d, 42987u)) <= ~_wgslsmith_mod_u32(u_input.d, ~0u));
    var var_3 = var_0.c;
    var var_4 = select(vec2<u32>(u_input.d, _wgslsmith_dot_vec4_u32(countOneBits(abs(vec4<u32>(37077u, u_input.d, 1u, u_input.d))), select(select(vec4<u32>(5294u, 4294967295u, 0u, 1u), vec4<u32>(30032u, u_input.d, u_input.d, u_input.d), vec4<bool>(var_2.x, false, true, var_2.x)), vec4<u32>(1u, 7467u, 0u, 1u), true))), ~_wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(u_input.d, 4294967295u)), ~vec2<u32>(0u, u_input.d)) | firstTrailingBit(~(vec2<u32>(u_input.d, u_input.d) >> (vec2<u32>(u_input.d, 63215u) % vec2<u32>(32u)))), var_2.x);
    var_2 = !vec2<bool>((all(vec2<bool>(false, var_2.x)) && (17295i <= u_input.a.x)) || var_2.x, !var_2.x);
    var var_5 = var_2.x;
    let x = u_input.a;
    s_output = StorageBuffer(var_4.x, ~firstLeadingBit(_wgslsmith_mod_u32(var_4.x, 1u)) | 1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-1209f * -1000f), 1843f, var_0.b, _wgslsmith_f_op_f32(var_1.x + 456f)) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-426f, 1000f, -482f, -1002f) + vec4<f32>(var_1.x, 607f, 1000f, var_0.b)), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(var_0.b, -143f, 1009f, var_0.b), vec4<f32>(var_0.b, var_0.b, var_1.x, var_1.x)))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-417f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - var_1.x)))), 495f));
}

