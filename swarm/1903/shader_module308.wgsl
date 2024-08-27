struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: vec4<f32>,
    d: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32 = -33391i;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<i32> {
    var var_0 = Struct_3(Struct_2(_wgslsmith_mod_u32(~55047u, u_input.c), ~(-select(23342i, -65665i, false)), Struct_1(vec2<u32>(~u_input.b.x, 1u))));
    global0 = var_0.a.c;
    global1 = -28050i;
    let var_1 = vec2<u32>(countOneBits(~(~(u_input.b.x | global0.a.x))), var_0.a.c.a.x);
    global0 = var_0.a.c;
    return _wgslsmith_mod_vec3_i32(reverseBits(select(vec3<i32>(var_0.a.b, var_0.a.b, var_0.a.b) ^ vec3<i32>(0i, var_0.a.b, var_0.a.b), select(vec3<i32>(2147483647i, var_0.a.b, -1i), vec3<i32>(2147483647i, 43123i, var_0.a.b), false), vec3<bool>(true, true, false))) ^ (~_wgslsmith_mod_vec3_i32(vec3<i32>(-2147483647i, -31217i, 14966i), vec3<i32>(0i, var_0.a.b, var_0.a.b)) | vec3<i32>(_wgslsmith_mult_i32(-2669i, -9459i), var_0.a.b, -34199i)), min(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, -23595i, min(var_0.a.b, 30806i)), vec3<i32>(var_0.a.b, min(var_0.a.b, var_0.a.b), ~var_0.a.b), -vec3<i32>(var_0.a.b, -2147483647i, -15246i)), -(~vec3<i32>(var_0.a.b, var_0.a.b, var_0.a.b))));
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: vec2<i32>, arg_3: vec3<i32>) -> f32 {
    var var_0 = Struct_3(arg_0);
    var var_1 = arg_0.c;
    var var_2 = Struct_2(~u_input.a, 5553i, arg_0.c);
    var var_3 = select(_wgslsmith_clamp_u32(var_0.a.a, ~(~4294967295u >> (firstTrailingBit(arg_0.c.a.x) % 32u)), ~_wgslsmith_mod_u32(49293u, select(37001u, 1u, true))), ~firstTrailingBit(~_wgslsmith_div_u32(4294967295u, var_1.a.x)), all(select(select(vec3<bool>(true, true, true), vec3<bool>(false, arg_1, true), true), select(select(vec3<bool>(true, arg_1, false), vec3<bool>(true, true, true), vec3<bool>(arg_1, true, false)), !vec3<bool>(false, arg_1, arg_1), true), !vec3<bool>(true, arg_1, arg_1))));
    return -1060f;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_f32(func_4(Struct_2(min(firstLeadingBit(72926u), ~global0.a.x & 1u), ~(-2147483647i), Struct_1(vec2<u32>(89334u, 4294967295u) | vec2<u32>(1u, u_input.a))), true, _wgslsmith_mult_vec2_i32(-(~vec2<i32>(1i, -1i)), vec2<i32>(i32(-1i) * -59411i, 1i)) << (global0.a % vec2<u32>(32u)), func_3()));
    global1 = func_3().x;
    let var_1 = abs(vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(~20305u), ~abs(u_input.a)), countOneBits(25370u | firstLeadingBit(u_input.a))));
    global1 = abs(abs(_wgslsmith_add_i32(2147483647i, reverseBits(1i))));
    var var_2 = Struct_3(Struct_2(~1u, abs(abs(_wgslsmith_add_i32(27458i, 1i))), Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(14070u, var_1.x) | vec2<u32>(1u, 1u), global0.a))));
    return !(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -216f))), var_0, true)) >= 875f);
}

fn func_5(arg_0: vec4<bool>) -> Struct_1 {
    var var_0 = min(min(_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, -3641i), vec2<i32>(-4985i, -13245i)) << (u_input.b.xy % vec2<u32>(32u)), _wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(20362i, 59658i), vec2<i32>(-22386i, 3763i)), vec2<i32>(-69201i, -25284i))) >> (global0.a % vec2<u32>(32u)), vec2<i32>(-_wgslsmith_div_i32(-1i, 1i), _wgslsmith_div_i32(i32(-1i) * -2147483647i, _wgslsmith_mod_i32(11708i, 58713i))) ^ vec2<i32>(-(-20039i << (1u % 32u)), _wgslsmith_add_i32(min(0i, -4052i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i, 2147483647i, 2573i, 75109i), vec4<i32>(0i, 11431i, -15913i, -29523i)))));
    var var_1 = Struct_4(Struct_1(abs(global0.a)), 489u, _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1580f, -1231f, -1733f, 993f))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-824f, 847f, -1696f, 133f)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(1350f, -2471f, -465f, -970f), vec4<f32>(185f, -1541f, 1104f, -832f))), true)), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-392f, 493f, -1385f, -1000f), vec4<f32>(-3027f, -333f, 1000f, 1299f))))))), arg_0)), Struct_3(Struct_2(_wgslsmith_add_u32(4294967295u, u_input.a), var_0.x, Struct_1(vec2<u32>(1u, 1u)))));
    var var_2 = Struct_4(var_1.a, 4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.c.x, -339f, var_1.c.x, -230f), var_1.c), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_1.c * vec4<f32>(369f, var_1.c.x, var_1.c.x, 933f)) - vec4<f32>(var_1.c.x, var_1.c.x, -497f, 123f)))), Struct_3(var_1.d.a));
    let var_3 = vec4<f32>(var_1.c.x, var_1.c.x, _wgslsmith_f_op_f32(trunc(-378f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -269f) + var_1.c.x));
    let var_4 = _wgslsmith_mod_u32(firstTrailingBit(~global0.a.x), ~92208u);
    return Struct_1(reverseBits(var_2.d.a.c.a));
}

fn func_1() -> StorageBuffer {
    let var_0 = Struct_3(Struct_2(((u_input.b.x >> (global0.a.x % 32u)) & ~u_input.c) >> (global0.a.x % 32u), reverseBits(_wgslsmith_sub_i32(-15155i, countOneBits(3679i))), func_5(vec4<bool>(true, func_2(), all(vec2<bool>(false, false)), true))));
    var var_1 = -vec4<i32>(40366i, _wgslsmith_add_i32(_wgslsmith_mod_i32(584i, var_0.a.b), _wgslsmith_dot_vec3_i32(abs(vec3<i32>(var_0.a.b, var_0.a.b, var_0.a.b)), _wgslsmith_sub_vec3_i32(vec3<i32>(-1i, 74660i, var_0.a.b), vec3<i32>(11924i, 0i, -17510i)))), 2147483647i, var_0.a.b);
    var var_2 = Struct_2(_wgslsmith_div_u32(~max(~4294967295u, _wgslsmith_dot_vec3_u32(u_input.b.xyx, vec3<u32>(31378u, u_input.c, 15967u))), u_input.c), _wgslsmith_sub_i32(~(~var_1.x), _wgslsmith_dot_vec3_i32(var_1.wxy, func_3())), Struct_1(_wgslsmith_sub_vec2_u32(var_0.a.c.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_0.a.c.a.x, u_input.a), var_0.a.c.a) | vec2<u32>(var_0.a.a, 0u))));
    var var_3 = var_0.a.c;
    let var_4 = -24653i;
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, 1679f, 729f, 1155f) - vec4<f32>(-144f, -1557f, 847f, -213f))))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(340f, 196f)), 667f, _wgslsmith_f_op_f32(floor(133f)), _wgslsmith_f_op_f32(ceil(106f))), vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(-809f)), -748f, -414f))))), ~59373u, 6525u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(~(~vec3<u32>(~4294967295u, _wgslsmith_mult_u32(0u, 43927u), max(1u, global0.a.x))), ~(~u_input.b.xxy), true);
    global0 = Struct_1(var_0.xy);
    global1 = -1i;
    var var_1 = Struct_1(u_input.b.yz);
    let x = u_input.a;
    s_output = func_1();
}

