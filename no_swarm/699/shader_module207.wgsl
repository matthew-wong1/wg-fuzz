struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<u32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_4 {
    a: vec2<i32>,
}

struct Struct_5 {
    a: vec4<f32>,
    b: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: Struct_4, arg_1: u32, arg_2: vec3<bool>, arg_3: f32) -> vec2<u32> {
    global0 = countOneBits(abs(38904u));
    var var_0 = Struct_2(Struct_1(!select(select(vec3<bool>(arg_2.x, arg_2.x, arg_2.x), arg_2, arg_2), !arg_2, !arg_2), u_input.a, vec2<f32>(arg_3, 678f)), false);
    var_0 = Struct_2(var_0.a, arg_2.x);
    var_0 = Struct_2(Struct_1(!select(vec3<bool>(false, true, var_0.a.a.x), vec3<bool>(var_0.a.a.x, true, true), var_0.a.a), 0u, _wgslsmith_f_op_vec2_f32(exp2(var_0.a.c))), select(!(var_0.a.c.x < 1101f) || var_0.a.a.x, !((arg_3 > var_0.a.c.x) == !arg_2.x), true));
    var_0 = Struct_2(var_0.a, !var_0.a.a.x);
    return ~reverseBits(min(~u_input.c.yx, ~vec2<u32>(arg_1, var_0.a.b)));
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_4) -> Struct_1 {
    global0 = _wgslsmith_add_u32(u_input.a, 7605u);
    let var_0 = Struct_1(arg_2.a.a.a, 1u, _wgslsmith_f_op_vec2_f32(-arg_2.a.a.c));
    global0 = arg_2.b.x;
    global0 = ~(_wgslsmith_dot_vec2_u32(arg_1.b, ~(arg_2.b ^ u_input.c.xx)) >> (30487u % 32u));
    let var_1 = 2147483647i;
    return var_0;
}

fn func_1(arg_0: bool, arg_1: vec4<i32>) -> Struct_1 {
    var var_0 = Struct_4(arg_1.xx);
    var var_1 = Struct_3(Struct_2(func_3(1f, Struct_3(Struct_2(Struct_1(vec3<bool>(true, true, true), u_input.a, vec2<f32>(-335f, 1152f)), false), u_input.c.yx, select(vec2<bool>(false, arg_0), vec2<bool>(false, arg_0), vec2<bool>(arg_0, arg_0)), all(vec3<bool>(arg_0, true, arg_0))), Struct_3(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0), u_input.c.x, vec2<f32>(1395f, -410f)), false), func_2(Struct_4(arg_1.xx), u_input.c.x, vec3<bool>(arg_0, arg_0, arg_0), 1367f), !vec2<bool>(arg_0, false), arg_0), Struct_4(reverseBits(vec2<i32>(arg_1.x, -2147483647i)))), false), vec2<u32>(u_input.c.x, ~(~u_input.a) ^ abs(33487u)), func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(754f + 557f)), _wgslsmith_f_op_f32(-256f + _wgslsmith_f_op_f32(abs(-1630f))))), Struct_3(Struct_2(Struct_1(vec3<bool>(true, arg_0, arg_0), u_input.c.x, vec2<f32>(1374f, 342f)), any(vec4<bool>(arg_0, arg_0, true, true))), vec2<u32>(~u_input.a, 0u), func_3(_wgslsmith_f_op_f32(ceil(1543f)), Struct_3(Struct_2(Struct_1(vec3<bool>(arg_0, arg_0, arg_0), 1u, vec2<f32>(1348f, 1329f)), arg_0), u_input.c.xx, vec2<bool>(arg_0, arg_0), arg_0), Struct_3(Struct_2(Struct_1(vec3<bool>(true, arg_0, arg_0), u_input.a, vec2<f32>(623f, -404f)), true), u_input.c.zy, vec2<bool>(true, arg_0), false), Struct_4(vec2<i32>(34473i, 2147483647i))).a.yz, arg_0), Struct_3(Struct_2(func_3(-502f, Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, arg_0), u_input.c.x, vec2<f32>(-1529f, -136f)), arg_0), u_input.c.zy, vec2<bool>(arg_0, false), arg_0), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, arg_0), 4294967295u, vec2<f32>(-777f, -1096f)), arg_0), vec2<u32>(47009u, u_input.c.x), vec2<bool>(arg_0, false), true), Struct_4(arg_1.zy)), all(vec4<bool>(true, true, true, true))), u_input.c.yy, func_3(_wgslsmith_f_op_f32(-333f - 1000f), Struct_3(Struct_2(Struct_1(vec3<bool>(false, arg_0, arg_0), u_input.a, vec2<f32>(748f, -337f)), arg_0), u_input.c.zy, vec2<bool>(false, arg_0), true), Struct_3(Struct_2(Struct_1(vec3<bool>(false, false, true), u_input.a, vec2<f32>(-368f, -728f)), true), vec2<u32>(0u, u_input.a), vec2<bool>(arg_0, false), arg_0), Struct_4(vec2<i32>(1i, 0i))).a.yz, _wgslsmith_f_op_f32(-1282f - 629f) > _wgslsmith_f_op_f32(ceil(-852f))), Struct_4(firstLeadingBit(var_0.a))).a.yx, true);
    var_0 = Struct_4(-vec2<i32>(u_input.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-59006i, -14562i), vec2<i32>(-2147483647i, u_input.b))));
    let var_2 = vec2<bool>(var_1.d, 4294967295u == _wgslsmith_add_u32(~u_input.c.x, _wgslsmith_add_u32(67249u, _wgslsmith_mult_u32(u_input.a, 11610u))));
    return var_1.a.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-1014f))))), -530f));
    var_0 = 1006f;
    var var_1 = func_1(any(select(select(vec3<bool>(false, false, true), vec3<bool>(true, false, false), false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) | (all(select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), true)) || all(vec2<bool>(true, true))), vec4<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), abs(vec4<i32>(-1i, u_input.b, u_input.b, u_input.b))), _wgslsmith_mod_vec4_i32(vec4<i32>(59242i, -49989i, -2147483647i, -23641i), vec4<i32>(-36317i, u_input.b, 1646i, u_input.b))), _wgslsmith_mod_i32(1i, 34200i), abs(_wgslsmith_div_i32(u_input.b, -312i)), 1i));
    var var_2 = _wgslsmith_dot_vec2_u32(~(~(~func_2(Struct_4(vec2<i32>(-1207i, -35514i)), u_input.a, vec3<bool>(var_1.a.x, true, false), var_1.c.x))), _wgslsmith_mod_vec2_u32(~(~reverseBits(vec2<u32>(u_input.c.x, var_1.b))), firstLeadingBit(u_input.c.zz)));
    let var_3 = _wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(u_input.b, -36562i), abs(select(vec2<i32>(u_input.b, u_input.b), vec2<i32>(-99443i, -1i), var_1.a.yz))), min(-select(vec2<i32>(u_input.b, 1i), vec2<i32>(1i, u_input.b), var_1.a.x), select(firstLeadingBit(vec2<i32>(-53074i, u_input.b)), vec2<i32>(u_input.b, 16547i) | vec2<i32>(-26904i, 23126i), select(vec2<bool>(true, var_1.a.x), vec2<bool>(var_1.a.x, var_1.a.x), vec2<bool>(false, var_1.a.x))))), ~vec2<i32>(u_input.b, select(2147483647i, -59201i << (var_1.b % 32u), select(true, false, var_1.a.x))));
    let var_4 = u_input.c.xy >> (_wgslsmith_mod_vec2_u32(vec2<u32>(~(var_1.b | u_input.c.x), firstLeadingBit(var_1.b) & _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, u_input.a, 4294967295u, 0u), vec4<u32>(var_1.b, 14456u, u_input.c.x, 0u))), u_input.c.zx) % vec2<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, -vec2<i32>(44120i, -1i), var_1.c);
}

