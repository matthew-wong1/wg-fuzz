struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<i32>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec3<u32> = vec3<u32>(1u, 4294967295u, 58716u);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    let var_0 = vec2<bool>(true, true);
    let var_1 = true;
    var var_2 = var_0.x;
    return Struct_3(~_wgslsmith_div_u32(global1.x, ~_wgslsmith_clamp_u32(17920u, arg_0.x, 0u)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1027f + _wgslsmith_f_op_f32(376f - 184f))), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -797f)), countOneBits(-select(vec4<i32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-2147483647i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<bool>(var_1, true, true, true))), vec3<bool>(var_0.x, var_1, var_1)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2, arg_2: f32) -> Struct_3 {
    return func_2(select(~(~(~vec4<u32>(u_input.c.x, u_input.b, global1.x, global1.x))), ~(~vec4<u32>(1u, 48073u, 4294967295u, global1.x)), !(-u_input.a.x == (-13617i >> (0u % 32u)))));
}

fn func_3(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec2<f32>) -> Struct_1 {
    let var_0 = arg_0;
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, -1193f, 1120f)))) + _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1832f, 1228f, arg_2.x)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.a.b.a, var_0.a.b.a, -154f) + vec3<f32>(arg_1.x, -671f, arg_0.c.a))))))), vec3<f32>(_wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1865f)), _wgslsmith_f_op_f32(abs(248f))));
    global1 = _wgslsmith_add_vec3_u32(u_input.c, min(~_wgslsmith_div_vec3_u32(reverseBits(u_input.c), vec3<u32>(19238u, 1u, 4294967295u)), ~vec3<u32>(global1.x >> (global1.x % 32u), u_input.b, u_input.c.x)));
    var var_2 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(877f, 1629f, arg_2.x) * vec3<f32>(arg_1.x, arg_1.x, arg_0.c.a)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1542f, -1086f, 517f))))))), func_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1397f, -224f, -510f)) - _wgslsmith_f_op_vec3_f32(select(vec3<f32>(var_1.x, var_0.c.a, -1000f), vec3<f32>(var_1.x, var_1.x, var_0.c.a), var_0.a.b.d.x))), vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.b.b.a), var_1.x, _wgslsmith_f_op_f32(-808f + 884f))), func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1374f, 205f, -1618f) - vec3<f32>(-483f, -640f, arg_1.x)), func_1(_wgslsmith_f_op_vec3_f32(-vec3<f32>(958f, arg_1.x, -1459f)), Struct_2(var_0.a.b.a, Struct_1(-650f), vec4<i32>(arg_0.a.b.c.x, arg_0.a.b.c.x, 57659i, u_input.a.x), var_0.a.b.d), -2052f).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c.a))).b, 1386f).b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -768f) - _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1449f, _wgslsmith_f_op_f32(arg_2.x + arg_2.x)), 764f)))).b.d.x;
    var var_3 = _wgslsmith_f_op_f32(-arg_2.x);
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-994f * -952f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(592f + -240f), _wgslsmith_f_op_f32(ceil(var_1.x)))))));
}

fn func_4(arg_0: Struct_2, arg_1: bool) -> Struct_4 {
    var var_0 = -1989f;
    global0 = (u_input.c.x | 46318u) >= ~(~(~global1.x));
    let var_1 = vec2<bool>(all(vec4<bool>(false, arg_0.d.x, ~(-27919i) > arg_0.c.x, arg_1)), all(vec3<bool>(false, func_1(vec3<f32>(779f, -1924f, 1160f), Struct_2(arg_0.a, arg_0.b, arg_0.c, arg_0.d), _wgslsmith_div_f32(arg_0.a, 1000f)).b.d.x, false)));
    global1 = vec3<u32>(1u, 11244u, global1.x);
    let var_2 = 1u;
    return Struct_4(Struct_3(26243u, Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1918f + arg_0.a), _wgslsmith_f_op_f32(ceil(arg_0.b.a)))), arg_0.b, firstTrailingBit(arg_0.c) << (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, global1.x, 0u, 0u), vec4<u32>(global1.x, global1.x, global1.x, u_input.c.x)) % vec4<u32>(32u)), select(select(vec3<bool>(false, arg_1, arg_1), vec3<bool>(arg_0.d.x, arg_0.d.x, arg_1), arg_0.d.x), select(vec3<bool>(arg_1, var_1.x, true), vec3<bool>(false, arg_1, true), arg_0.d), true))), global1.x, Struct_1(arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = u_input.c;
    let var_0 = -reverseBits(u_input.a.x);
    let var_1 = func_4(Struct_2(163f, func_3(Struct_4(func_1(vec3<f32>(-168f, -1417f, -615f), Struct_2(1158f, Struct_1(1173f), vec4<i32>(31654i, u_input.a.x, var_0, -9183i), vec3<bool>(true, false, true)), 884f), global1.x, Struct_1(-975f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1480f, 1067f) - vec2<f32>(-293f, 1587f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(138f, -619f), vec2<f32>(169f, -660f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(586f, 1460f) + vec2<f32>(-460f, -1241f)))), ((vec4<i32>(var_0, u_input.a.x, var_0, var_0) >> (vec4<u32>(global1.x, u_input.b, global1.x, 23726u) % vec4<u32>(32u))) ^ ~vec4<i32>(var_0, var_0, u_input.a.x, u_input.a.x)) | (_wgslsmith_div_vec4_i32(vec4<i32>(var_0, 1i, 22048i, 24322i), vec4<i32>(u_input.a.x, var_0, 2147483647i, -11299i)) | -vec4<i32>(0i, u_input.a.x, var_0, var_0)), vec3<bool>(true, true, true)), !all(func_1(_wgslsmith_f_op_vec3_f32(vec3<f32>(1896f, -1798f, 1000f) * vec3<f32>(-1648f, 1208f, -462f)), func_2(vec4<u32>(u_input.c.x, 1783u, global1.x, global1.x)).b, 1290f).b.d.zy));
    var var_2 = abs(countOneBits(vec4<u32>(1u, _wgslsmith_mod_u32(16400u, global1.x), 2761u, ~var_1.a.a) ^ ~countOneBits(vec4<u32>(15362u, 66157u, var_1.a.a, global1.x))));
    global0 = var_1.a.b.d.x;
    let var_3 = var_1.a;
    var_2 = vec4<u32>(var_3.a, _wgslsmith_mod_u32(20753u ^ ~min(var_1.a.a, var_2.x), ~(43987u >> (_wgslsmith_mult_u32(22590u, var_3.a) % 32u))), ~_wgslsmith_clamp_u32(var_3.a, 1u, 1u), _wgslsmith_add_u32(global1.x, _wgslsmith_add_u32(~_wgslsmith_mod_u32(4294967295u, 1u), global1.x)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(_wgslsmith_mult_u32(var_3.a, _wgslsmith_mod_u32(var_2.x, 4294967295u)), 45667u ^ ~var_1.a.a), 1u, abs(global1.x & ~var_3.a), ~0u), _wgslsmith_div_i32(select(u_input.a.x, var_0, all(func_1(vec3<f32>(var_1.c.a, -521f, 319f), Struct_2(var_3.b.b.a, Struct_1(563f), var_1.a.b.c, var_3.b.d), var_1.a.b.a).b.d)), -_wgslsmith_mult_i32(_wgslsmith_mod_i32(var_3.b.c.x, -32229i), var_0 ^ var_3.b.c.x)), var_1.a.b.c.x);
}

