struct Struct_1 {
    a: bool,
    b: f32,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_3,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: i32;

var<private> global2: array<Struct_3, 32>;

var<private> global3: vec4<bool> = vec4<bool>(true, false, true, false);

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec3<f32>, arg_1: vec3<i32>, arg_2: f32) -> bool {
    let var_0 = global2[_wgslsmith_index_u32(firstLeadingBit(_wgslsmith_mod_u32(41239u, ~abs(1u))), 32u)];
    global1 = _wgslsmith_dot_vec4_i32(select(vec4<i32>(1i, arg_1.x, min(-2147483647i, arg_1.x | 2147483647i), _wgslsmith_clamp_i32(countOneBits(u_input.b), i32(-1i) * -36862i, _wgslsmith_mod_i32(55256i, -27357i))), vec4<i32>(firstLeadingBit(_wgslsmith_mod_i32(-2147483647i, -33620i)), firstTrailingBit(2147483647i) & min(arg_1.x, arg_1.x), ~arg_1.x | -u_input.a.x, 1i), vec4<bool>(var_0.a.x, select(global3.x, !global3.x, true), global3.x, false)), vec4<i32>(countOneBits(22597i) | -u_input.a.x, _wgslsmith_sub_i32(655i, 58268i), arg_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, 1i, arg_1.x, -16260i), vec4<i32>(u_input.b, -29147i, u_input.c.x, 10709i)), vec4<i32>(-arg_1.x, 1i, ~1i, 2147483647i))));
    let var_1 = Struct_2(Struct_1(any(global3.yzy), _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2 + 457f) - var_0.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-104f, 1213f, 322f, 571f) - vec4<f32>(1127f, arg_2, -922f, arg_2)) + vec4<f32>(-726f, 1000f, 871f, var_0.b)))), Struct_1(!global3.x, _wgslsmith_f_op_f32(abs(1f)), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b, arg_2, var_0.b, var_0.b)), _wgslsmith_div_vec4_f32(vec4<f32>(747f, arg_0.x, -341f, 312f), vec4<f32>(var_0.b, -416f, 1116f, arg_2)))), vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-893f * arg_0.x), _wgslsmith_f_op_f32(max(var_0.b, arg_0.x)), _wgslsmith_div_f32(arg_0.x, 485f))))), firstLeadingBit(vec3<i32>(-27080i, 1i << (0u % 32u), min(arg_1.x, u_input.b & 65403i))), 61521u);
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_1.a.c.x))))), -1000f));
    global0 = select(1u, select(var_1.d, 89100u, !(var_0.a.x || false) | true), !((all(vec4<bool>(var_1.a.a, var_0.a.x, false, global3.x)) | any(vec2<bool>(var_1.b.a, var_0.a.x))) == all(select(vec3<bool>(true, true, global3.x), vec3<bool>(var_1.a.a, var_0.a.x, var_1.a.a), global3.zxz))));
    return false;
}

fn func_4(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = ~(~(~1u));
    var var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(-1459f, 1664f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1227f), _wgslsmith_f_op_f32(f32(-1f) * -141f))))), 1f), vec4<f32>(1211f, _wgslsmith_div_f32(1000f, -268f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1885f, 1089f)) + _wgslsmith_div_f32(-426f, 1259f))), -1522f));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(329f, var_1.x, -1580f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -582f, any(vec2<bool>(arg_0.x, arg_0.x)))) + _wgslsmith_f_op_f32(-799f * _wgslsmith_f_op_f32(f32(-1f) * -792f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_1.x, var_1.x, var_1.x, 392f))))));
    var var_3 = Struct_4(Struct_2(Struct_1(any(global3.xwx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -114f) - _wgslsmith_f_op_f32(var_1.x * var_2.x)), vec4<f32>(_wgslsmith_f_op_f32(-var_1.x), var_1.x, _wgslsmith_f_op_f32(-var_2.x), 1053f)), Struct_1(any(global3.wyz), 471f, vec4<f32>(-347f, _wgslsmith_div_f32(-355f, var_2.x), -893f, var_1.x)), u_input.c.zyz, reverseBits(var_0)), Struct_3(vec3<bool>(arg_0.x, true, true), _wgslsmith_f_op_f32(-var_2.x)), u_input.a.x << (var_0 % 32u));
    let var_4 = Struct_1(!(!any(arg_0)), var_2.x, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a.b.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_2.x, var_2.x)))), -778f, var_3.a.a.c.x, var_1.x));
    return vec4<bool>(!var_4.a, var_2.x >= -106f, var_3.b.a.x, !(!(!global3.x)));
}

fn func_2(arg_0: Struct_3) -> bool {
    let var_0 = Struct_3(global3.zzy, arg_0.b);
    global3 = select(vec4<bool>(var_0.a.x, true, firstLeadingBit(u_input.c.x) < u_input.b, any(vec4<bool>(global3.x, true, global3.x, any(arg_0.a)))), func_4(!vec4<bool>(func_3(vec3<f32>(707f, var_0.b, 708f), u_input.c.yxw, -3365f), 2147483647i == u_input.b, var_0.a.x, true), ~(~u_input.c.zwx)), select(!(!(!vec4<bool>(true, false, arg_0.a.x, arg_0.a.x))), vec4<bool>(var_0.a.x, var_0.a.x, !arg_0.a.x, all(func_4(vec4<bool>(arg_0.a.x, false, global3.x, false), vec3<i32>(-6532i, 0i, u_input.c.x)))), func_4(select(vec4<bool>(var_0.a.x, false, global3.x, var_0.a.x), vec4<bool>(false, arg_0.a.x, arg_0.a.x, true), true), vec3<i32>(~(-48287i), u_input.a.x, max(20603i, -48977i))).x));
    let var_1 = !func_4(select(select(!vec4<bool>(false, true, global3.x, true), !vec4<bool>(arg_0.a.x, true, global3.x, false), func_4(vec4<bool>(true, arg_0.a.x, false, global3.x), vec3<i32>(u_input.b, u_input.b, -25353i))), !vec4<bool>(true, arg_0.a.x, false, true), vec4<bool>(false, true || arg_0.a.x, true, !var_0.a.x)), firstLeadingBit(~countOneBits(u_input.c.wxy))).zx;
    let var_2 = arg_0;
    global0 = 1u;
    return false;
}

fn func_1(arg_0: u32, arg_1: vec2<u32>, arg_2: vec4<f32>) -> i32 {
    var var_0 = global3.x;
    var_0 = func_2(Struct_3(!(!vec3<bool>(false, global3.x, false)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(sign(1213f)))))) | true;
    global0 = arg_0;
    var var_1 = _wgslsmith_clamp_i32(i32(-1i) * -abs(u_input.c.x), u_input.a.x, -8042i);
    var_1 = u_input.b;
    return -4028i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -u_input.c.x;
    let var_0 = (_wgslsmith_div_vec4_i32(-vec4<i32>(u_input.a.x, -18722i, u_input.a.x, u_input.c.x), vec4<i32>(0i, u_input.a.x, u_input.c.x, u_input.b) ^ u_input.c) | vec4<i32>(u_input.b, firstLeadingBit(-44933i), func_1(51288u, vec2<u32>(4294967295u, 10456u), vec4<f32>(1819f, -423f, -500f, -1362f)) << (94527u % 32u), countOneBits(u_input.c.x))) ^ u_input.c;
    global3 = vec4<bool>(true, true, select(true, !all(vec2<bool>(global3.x, global3.x)), global3.x), any(func_4(!select(vec4<bool>(true, true, global3.x, false), vec4<bool>(true, false, global3.x, true), true), var_0.yzw).xxx));
    global0 = 1u;
    global0 = 51314u;
    global0 = _wgslsmith_div_u32(~(~max(_wgslsmith_add_u32(3791u, 74830u), 4294967295u >> (0u % 32u))), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, ~1u, _wgslsmith_mod_u32(1u, 3686u >> (0u % 32u))), vec3<u32>(1u, 1u, 1u)));
    global2 = array<Struct_3, 32>();
    let var_1 = Struct_4(Struct_2(Struct_1(global3.x, -799f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-670f, -586f, -189f, 2212f)))), Struct_1(global3.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(578f + -1000f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-792f, -601f, -446f, 679f)))), ~vec3<i32>(-32421i, u_input.a.x, 1i) | _wgslsmith_sub_vec3_i32(var_0.zwy, ~var_0.wxx), ~1u), Struct_3(global3.yyw, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -307f)) + _wgslsmith_f_op_f32(f32(-1f) * -1474f))), _wgslsmith_sub_i32(abs(-(~0i)), _wgslsmith_div_i32(var_0.x, -2147483647i) << (~1u % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(-(firstTrailingBit(vec4<i32>(-3790i, var_1.c, u_input.c.x, u_input.c.x) >> (vec4<u32>(var_1.a.d, var_1.a.d, var_1.a.d, 1u) % vec4<u32>(32u))) >> (vec4<u32>(~4294967295u, 4294967295u << (var_1.a.d % 32u), 2027u, 0u) % vec4<u32>(32u))), _wgslsmith_mod_vec2_i32(-(vec2<i32>(var_0.x, u_input.c.x) ^ vec2<i32>(var_1.a.c.x, -37239i)), -countOneBits(u_input.a) >> (~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_1.a.d), vec2<u32>(var_1.a.d, 0u)) % vec2<u32>(32u))), ~1i);
}

