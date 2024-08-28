struct Struct_1 {
    a: u32,
    b: vec3<i32>,
    c: i32,
    d: i32,
    e: bool,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(vec2<bool>(false, true), true, vec2<u32>(1u, 4294967295u), -228f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> bool {
    var var_0 = global0.b || false;
    var var_1 = abs(_wgslsmith_add_u32(_wgslsmith_div_u32(firstLeadingBit(max(46792u, u_input.a.x)), 0u), ~u_input.a.x));
    var var_2 = -615f;
    let var_3 = -117f;
    var_0 = true;
    return 1529f <= var_3;
}

fn func_3(arg_0: vec3<i32>) -> f32 {
    var var_0 = -(~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, -17499i), vec4<i32>(-15488i, arg_0.x, 13132i, arg_0.x)), _wgslsmith_mult_vec4_i32(vec4<i32>(-33732i, -2953i, arg_0.x, 1i), vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x))) ^ _wgslsmith_div_vec4_i32(~firstTrailingBit(vec4<i32>(1i, 1i, arg_0.x, -1i)), (vec4<i32>(arg_0.x, 2147483647i, arg_0.x, arg_0.x) << (u_input.a % vec4<u32>(32u))) >> (vec4<u32>(u_input.a.x, u_input.a.x, 4294967295u, 4294967295u) % vec4<u32>(32u))));
    let var_1 = arg_0;
    var var_2 = _wgslsmith_mod_i32(-(select(var_1.x, var_1.x, global0.b) & max(var_1.x, -2311i)) | _wgslsmith_add_i32(var_1.x, -73273i ^ (1i & arg_0.x)), _wgslsmith_mod_i32(var_1.x, _wgslsmith_mod_i32(-34941i, ~50198i)));
    var_0 = ~(~_wgslsmith_clamp_vec4_i32(-firstLeadingBit(vec4<i32>(-3052i, var_0.x, arg_0.x, -6566i)), -vec4<i32>(arg_0.x, 0i, var_1.x, arg_0.x), (vec4<i32>(-3094i, 0i, var_1.x, var_1.x) & vec4<i32>(-17671i, 2233i, -10058i, arg_0.x)) << (~vec4<u32>(0u, global0.c.x, 0u, 0u) % vec4<u32>(32u))));
    global0 = Struct_3(global0.a, !(!any(vec2<bool>(global0.a.x, global0.a.x))), reverseBits(abs(~global0.c)), global0.d);
    return _wgslsmith_f_op_f32(-global0.d);
}

fn func_4(arg_0: vec2<bool>, arg_1: Struct_3) -> Struct_1 {
    let var_0 = ~(abs(vec2<i32>(-10677i, -2147483647i)) << (firstLeadingBit(reverseBits(vec2<u32>(4294967295u, arg_1.c.x))) % vec2<u32>(32u))) | firstTrailingBit(vec2<i32>(-1i) * -countOneBits(vec2<i32>(2147483647i, 47932i)));
    let var_1 = Struct_3(vec2<bool>(arg_0.x, false), all(arg_0), vec2<u32>(~7531u, ~(~(~arg_1.c.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-523f + -1003f) - global0.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.d)) * -374f))))));
    let var_2 = _wgslsmith_add_vec2_i32(-(~var_0), _wgslsmith_clamp_vec2_i32(countOneBits(vec2<i32>(var_0.x, ~12345i)), vec2<i32>(1i, -1i), firstLeadingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, var_0.x), vec2<i32>(var_0.x, var_0.x)))));
    global0 = Struct_3(!arg_0, _wgslsmith_mult_i32(~var_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-2989i, 0i, 7338i), vec3<i32>(33643i, var_0.x, 2147483647i)), vec3<i32>(var_2.x, var_2.x, -1i))) >= _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-19412i, var_0.x, -1i, 8852i), vec4<i32>(35071i, -2147483647i, 7759i, -1i)), -vec4<i32>(var_2.x, var_0.x, var_0.x, var_0.x)), vec4<i32>(var_2.x, -61900i, ~0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, 25013i, var_2.x), vec4<i32>(2147483647i, 0i, var_2.x, var_2.x)))), abs(vec2<u32>(~_wgslsmith_mult_u32(u_input.a.x, 21560u), 4294967295u)), -1122f);
    var var_3 = var_1;
    return Struct_1(~var_3.c.x, select(~(vec3<i32>(var_2.x, var_2.x, -2146i) ^ vec3<i32>(var_0.x, var_0.x, 27924i)), vec3<i32>(select(0i, -2147483647i, arg_1.b), _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 13895i, 15397i, 10987i), vec4<i32>(-2147483647i, var_2.x, var_2.x, var_2.x)), -58783i), false) & select(~(~vec3<i32>(-1i, -15973i, 0i)), firstLeadingBit(vec3<i32>(var_0.x, -23030i, 25133i)), arg_1.c.x == 4294967295u), ~firstLeadingBit(var_0.x), reverseBits(37976i), var_3.b);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_2 {
    var var_0 = -201f;
    let var_1 = func_4(select(global0.a, select(!(!vec2<bool>(global0.b, true)), vec2<bool>(func_2(), global0.b | arg_0), vec2<bool>(true, false)), any(!(!global0.a))), Struct_3(!(!global0.a), arg_0, reverseBits(u_input.a.zz), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -737f) - _wgslsmith_f_op_f32(func_3(vec3<i32>(37265i, 10244i, 31697i)))) * _wgslsmith_f_op_f32(sign(-1000f)))));
    global0 = Struct_3(vec2<bool>(select(any(select(vec2<bool>(var_1.e, global0.a.x), vec2<bool>(var_1.e, var_1.e), true)), (true && var_1.e) | var_1.e, false), var_1.e), any(!vec3<bool>(false, func_4(global0.a, Struct_3(global0.a, arg_0, u_input.a.wz, -1291f)).e, !arg_0)), u_input.a.xx, 114f);
    var var_2 = ~firstLeadingBit(u_input.a);
    var var_3 = ~(-abs(_wgslsmith_mod_i32(func_4(global0.a, Struct_3(vec2<bool>(arg_0, var_1.e), true, arg_1.zy, global0.d)).b.x, var_1.c)));
    return Struct_2(global0.a);
}

fn func_5(arg_0: Struct_2) -> i32 {
    return ~(-firstTrailingBit(~0i));
}

fn func_6(arg_0: Struct_2, arg_1: Struct_1) -> Struct_3 {
    let var_0 = abs(u_input.a.yxw);
    let var_1 = !vec3<bool>(true, false, (_wgslsmith_sub_i32(arg_1.c, arg_1.b.x) <= 0i) | global0.a.x);
    let var_2 = true;
    var var_3 = arg_1.c;
    var_3 = arg_1.c;
    return Struct_3(arg_0.a, func_4(select(!(!arg_0.a), select(vec2<bool>(true, true), vec2<bool>(arg_0.a.x, true), var_1.x), var_1.x), Struct_3(!vec2<bool>(var_1.x, global0.a.x), arg_0.a.x, vec2<u32>(func_4(var_1.xy, Struct_3(vec2<bool>(var_1.x, arg_0.a.x), arg_1.e, var_0.yz, global0.d)).a, select(u_input.a.x, var_0.x, var_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -1394f))).e, ~(~(~(~var_0.yx))), global0.d);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_6(Struct_2(vec2<bool>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, global0.c.x, u_input.a.x), u_input.a) >= _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 10526u, 1u), u_input.a.xyx), global0.a.x)), Struct_1(~43746u, ~vec3<i32>(1i, 1i, 1i), max(~(-2147483647i), _wgslsmith_add_i32(_wgslsmith_clamp_i32(-1i, -35107i, 42956i), -3845i)), countOneBits(func_5(func_1(false, vec3<u32>(u_input.a.x, 4294967295u, 63540u)))), true));
    let x = u_input.a;
    s_output = StorageBuffer(0i, countOneBits(-1444i), vec2<u32>(~9175u, 33997u));
}

