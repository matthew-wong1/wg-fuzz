struct Struct_1 {
    a: f32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec2<u32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: bool = true;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -1569f), u_input.d.x, vec2<i32>(_wgslsmith_dot_vec4_i32(-abs(vec4<i32>(u_input.e.x, global0.x, -46574i, 38214i)), countOneBits(-vec4<i32>(global0.x, 0i, u_input.c, u_input.c))), global0.x));
    let var_1 = Struct_2(_wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d.x, 4294967295u), u_input.d.x), u_input.d, Struct_1(_wgslsmith_f_op_f32(-var_0.a), 4294967295u, _wgslsmith_div_vec2_i32(firstTrailingBit(~var_0.c), _wgslsmith_sub_vec2_i32(min(vec2<i32>(0i, var_0.c.x), var_0.c), vec2<i32>(1i, -24316i)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(609f)) + arg_0.x) - _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-arg_0.x)))), u_input.b.x, -u_input.e.zz));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(688f - var_0.a))))));
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = reverseBits(vec2<i32>(1i, max(i32(-1i) * -50191i, u_input.c)));
    let var_1 = select(vec3<bool>(true, true, true), vec3<bool>(true, true, select(true, select(true, true, false) && false, false)), vec3<bool>(false, all(!select(vec4<bool>(true, true, false, true), vec4<bool>(false, true, false, false), false)), any(vec3<bool>(true, false, false)) | true));
    var var_2 = 15837u;
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(-1000f, -189f), arg_2)), _wgslsmith_f_op_f32(-288f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(358f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_3(vec2<f32>(_wgslsmith_f_op_f32(arg_1.a - arg_2), _wgslsmith_f_op_f32(arg_2 - -465f)))))));
    global1 = !(var_1.x != !var_1.x);
    return arg_0.d;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: u32) -> i32 {
    return ~(global0.x & 2147483647i);
}

fn func_1(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    global0 = firstTrailingBit(~vec2<i32>(_wgslsmith_add_i32(-16539i, arg_1 >> (1u % 32u)), -2147483647i >> (u_input.b.x % 32u)));
    global1 = (func_4(arg_0, Struct_2(~arg_0.b, _wgslsmith_clamp_vec2_u32(u_input.d, u_input.a.wy, u_input.b.xx), arg_0, func_2(Struct_2(u_input.d.x, u_input.d, arg_0, arg_0), Struct_1(arg_0.a, 0u, vec2<i32>(arg_0.c.x, 0i)), -513f)), 0u) <= ~51818i) == any(vec2<bool>(true, true));
    let var_0 = func_2(Struct_2(_wgslsmith_dot_vec2_u32(u_input.d, (u_input.a.zw << (vec2<u32>(arg_0.b, 1u) % vec2<u32>(32u))) >> (_wgslsmith_mult_vec2_u32(u_input.b.yz, vec2<u32>(u_input.b.x, u_input.a.x)) % vec2<u32>(32u))), _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, arg_0.b) | u_input.a.yy), u_input.a.xz), func_2(Struct_2(u_input.a.x << (u_input.a.x % 32u), firstTrailingBit(vec2<u32>(arg_0.b, 2260u)), arg_0, arg_0), func_2(Struct_2(6503u, u_input.a.zy, arg_0, Struct_1(arg_0.a, u_input.a.x, vec2<i32>(u_input.e.x, u_input.e.x))), Struct_1(2676f, 0u, u_input.e.zx), 635f), 727f), Struct_1(1470f, _wgslsmith_add_u32(~arg_0.b, ~arg_0.b), (vec2<i32>(arg_0.c.x, u_input.e.x) | vec2<i32>(u_input.c, 93339i)) | abs(vec2<i32>(-58364i, global0.x)))), arg_0, _wgslsmith_f_op_f32(func_2(Struct_2(~arg_0.b, select(vec2<u32>(arg_0.b, 73913u), vec2<u32>(62397u, 45760u), vec2<bool>(true, false)), func_2(Struct_2(32371u, vec2<u32>(u_input.b.x, u_input.a.x), Struct_1(842f, 8727u, u_input.e.zy), Struct_1(1959f, u_input.a.x, vec2<i32>(31302i, global0.x))), arg_0, -2370f), Struct_1(290f, arg_0.b, vec2<i32>(-1i, arg_0.c.x))), Struct_1(_wgslsmith_f_op_f32(arg_0.a * arg_0.a), _wgslsmith_mult_u32(1u, 0u), -u_input.e.xy), _wgslsmith_f_op_f32(-arg_0.a)).a + _wgslsmith_div_f32(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_0.a + -513f), _wgslsmith_f_op_f32(1216f * -1003f)))));
    let var_1 = vec3<bool>(true, true, true);
    let var_2 = 1073u;
    return func_2(Struct_2(countOneBits(abs(countOneBits(var_0.b))), reverseBits(_wgslsmith_div_vec2_u32(vec2<u32>(67144u, 21748u), u_input.a.xy)), Struct_1(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, arg_0.a)))), _wgslsmith_dot_vec4_u32(u_input.a & vec4<u32>(0u, 22914u, u_input.a.x, 35068u), u_input.a), ~u_input.e.zy), Struct_1(-1855f, 105564u, arg_0.c)), func_2(Struct_2(_wgslsmith_div_u32(~arg_0.b, var_2), vec2<u32>(1u, 21494u), func_2(Struct_2(arg_0.b, vec2<u32>(62988u, u_input.a.x), Struct_1(-1199f, 1u, u_input.e.zz), arg_0), func_2(Struct_2(14540u, vec2<u32>(var_2, 4294967295u), arg_0, Struct_1(-1955f, 0u, vec2<i32>(4552i, 1i))), arg_0, arg_0.a), _wgslsmith_f_op_f32(max(835f, arg_0.a))), Struct_1(1153f, ~66767u, min(vec2<i32>(arg_1, arg_0.c.x), u_input.e.yz))), arg_0, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_0.a)) * _wgslsmith_f_op_f32(var_0.a - -451f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(1464f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1000f, var_0.a), var_0.a)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(183f, -298f)), _wgslsmith_div_f32(-1092f, var_0.a))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_1(330f, u_input.d.x, ~(~vec2<i32>(global0.x, global0.x))), 15965i);
    let var_1 = !(!select(vec2<bool>(false, false), vec2<bool>(all(vec2<bool>(false, false)), select(true, true, true)), true | (1u > u_input.a.x)));
    var var_2 = !(!var_1.x);
    global0 = _wgslsmith_mult_vec2_i32(vec2<i32>(countOneBits(-var_0.c.x), u_input.c), reverseBits(var_0.c)) | _wgslsmith_add_vec2_i32(var_0.c, abs(vec2<i32>(u_input.c, global0.x >> (var_0.b % 32u))));
    let var_3 = ~func_2(Struct_2(var_0.b, vec2<u32>(13093u, u_input.d.x | u_input.d.x), Struct_1(-950f, u_input.d.x, min(var_0.c, var_0.c)), func_1(func_2(Struct_2(u_input.a.x, u_input.b.zx, var_0, var_0), var_0, var_0.a), global0.x)), func_1(func_2(Struct_2(73254u, u_input.b.xx, Struct_1(355f, var_0.b, u_input.e.zy), var_0), Struct_1(var_0.a, 9554u, var_0.c), -909f), var_0.c.x), _wgslsmith_f_op_f32(-func_2(Struct_2(u_input.b.x, vec2<u32>(u_input.a.x, u_input.b.x), Struct_1(-459f, 22817u, var_0.c), var_0), var_0, _wgslsmith_f_op_f32(min(var_0.a, 177f))).a)).b;
    global1 = false;
    global1 = true;
    global1 = var_1.x;
    let var_4 = true;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(floor(691f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-663f, 541f, var_0.a, -771f))))), _wgslsmith_add_vec4_i32(-(~abs(vec4<i32>(u_input.e.x, global0.x, 49846i, var_0.c.x))), ~((vec4<i32>(1i, global0.x, global0.x, 2147483647i) >> (u_input.a % vec4<u32>(32u))) & (vec4<i32>(-22992i, 24662i, var_0.c.x, global0.x) | vec4<i32>(var_0.c.x, -2147483647i, 1i, 80891i)))), vec3<f32>(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(743f + _wgslsmith_div_f32(-156f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(1138f))))), 458f), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-734f * 533f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1202f, 1258f)))), var_0.a));
}

