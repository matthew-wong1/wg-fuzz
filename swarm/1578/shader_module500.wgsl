struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: f32,
    d: i32,
    e: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<bool>,
    c: Struct_1,
    d: Struct_2,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: vec4<u32>) -> vec3<u32> {
    global0 = u_input.d;
    global0 = ~_wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.d, 0u, 0u, arg_0.e), firstTrailingBit(vec4<u32>(u_input.b.x, u_input.c.x, arg_1.x, arg_1.x))), abs(select(arg_1, vec4<u32>(arg_0.e, arg_0.e, u_input.d, arg_1.x), vec4<bool>(false, false, true, false)) << (_wgslsmith_mult_vec4_u32(arg_1, vec4<u32>(14402u, arg_1.x, 23530u, 0u)) % vec4<u32>(32u))));
    global0 = ~_wgslsmith_mult_u32(arg_1.x, 0u);
    global0 = 42886u;
    var var_0 = ~arg_0.d;
    return u_input.c;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3, arg_2: f32) -> vec4<i32> {
    global0 = _wgslsmith_div_u32(arg_0.e.e, ~_wgslsmith_sub_u32(arg_0.c.e, 1u >> (~arg_1.c.e % 32u)));
    let var_0 = vec2<bool>(arg_1.b.x, true);
    global0 = _wgslsmith_mult_u32(max(_wgslsmith_dot_vec3_u32(vec3<u32>(~arg_1.e.e, arg_1.e.e, 27556u), func_3(arg_0.a, ~vec4<u32>(45151u, u_input.c.x, 1u, arg_0.c.e))), _wgslsmith_sub_u32(~select(4294967295u, 4294967295u, false), 27195u)), 113338u);
    var var_1 = arg_1;
    var var_2 = Struct_1(-arg_1.a.a, arg_0.d.a.b, _wgslsmith_f_op_f32(floor(-813f)), ~(-22631i), _wgslsmith_mult_u32(~1u, _wgslsmith_dot_vec2_u32(abs(vec2<u32>(25748u, 1250u)), vec2<u32>(firstLeadingBit(38638u), 0u))));
    return vec4<i32>(abs(firstTrailingBit(~(-44850i))), -arg_0.a.a, max(2147483647i, ~1i), -1i);
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_sub_vec4_i32(select(vec4<i32>(-3664i, countOneBits(u_input.a << (u_input.d % 32u)), -u_input.a, 1i), ~(-vec4<i32>(u_input.e, u_input.e, 2147483647i, 0i)), !vec4<bool>(all(vec3<bool>(false, true, false)), true, all(vec4<bool>(false, true, true, false)), true)), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.e, -2147483647i, 61232i, u_input.a) | (vec4<i32>(2147483647i, -28049i, u_input.a, u_input.a) << (vec4<u32>(1u, 0u, 69968u, 1u) % vec4<u32>(32u))), select(vec4<i32>(0i, u_input.e, 0i, u_input.a), func_2(Struct_3(Struct_1(u_input.a, vec4<f32>(-1588f, 449f, -959f, -209f), -1382f, u_input.e, 0u), vec4<bool>(false, false, true, false), Struct_1(-33239i, vec4<f32>(-546f, 980f, -840f, 1000f), 1000f, 2147483647i, 38057u), Struct_2(Struct_1(u_input.a, vec4<f32>(-345f, -658f, -277f, -860f), 584f, -1i, 14174u), vec4<u32>(u_input.d, u_input.c.x, u_input.c.x, 39854u), -614f), Struct_1(u_input.a, vec4<f32>(-2182f, -1454f, -876f, 1513f), 1035f, 2147483647i, u_input.d)), Struct_3(Struct_1(-33670i, vec4<f32>(1000f, -144f, -1599f, -450f), 1130f, -2147483647i, u_input.d), vec4<bool>(false, true, false, false), Struct_1(u_input.e, vec4<f32>(-207f, 765f, 2130f, -1245f), -761f, 2147483647i, u_input.d), Struct_2(Struct_1(0i, vec4<f32>(-598f, 1109f, 247f, -908f), -966f, 0i, 0u), vec4<u32>(36148u, u_input.c.x, 46718u, 53603u), -707f), Struct_1(-21659i, vec4<f32>(-2388f, 180f, -378f, -268f), 629f, 2147483647i, u_input.d)), 507f), vec4<bool>(true, true, true, true))) & vec4<i32>(_wgslsmith_clamp_i32(max(-1i, u_input.a), ~(-15451i), 35351i >> (u_input.b.x % 32u)), _wgslsmith_div_i32(countOneBits(7499i), u_input.a), _wgslsmith_dot_vec3_i32(select(vec3<i32>(27151i, u_input.e, u_input.a), vec3<i32>(-2147483647i, 73738i, u_input.e), false), ~vec3<i32>(-1i, 0i, -4560i)), ~u_input.a));
    var var_1 = Struct_2(Struct_1(_wgslsmith_mod_i32(0i, u_input.e), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1345f), _wgslsmith_f_op_f32(-1611f * _wgslsmith_f_op_f32(sign(-1405f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1277f + 521f)), 1323f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -829f))), ~(~(-u_input.e)), _wgslsmith_mult_u32(u_input.b.x, 29271u)), vec4<u32>(u_input.b.x << (~22136u % 32u), _wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(select(vec4<u32>(4294967295u, 45241u, u_input.c.x, u_input.d), vec4<u32>(1u, 17310u, 47437u, u_input.b.x), vec4<bool>(true, true, true, false)), abs(vec4<u32>(u_input.c.x, 0u, u_input.c.x, 1u))), min(vec4<u32>(1195u, u_input.b.x, u_input.b.x, 10772u) >> (vec4<u32>(u_input.b.x, 0u, 0u, u_input.d) % vec4<u32>(32u)), vec4<u32>(36750u, 1u, 4294967295u, u_input.d) >> (vec4<u32>(1u, 0u, u_input.b.x, u_input.d) % vec4<u32>(32u)))), u_input.d, ~1u), 180f);
    var var_2 = _wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, _wgslsmith_add_u32(~(~var_1.b.x), u_input.d), firstLeadingBit(_wgslsmith_sub_u32(0u, u_input.c.x))), vec3<u32>(~4294967295u, func_3(Struct_1(var_1.a.d, var_1.a.b, var_1.a.c, var_1.a.a, 4294967295u), _wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.b.x, var_1.b.x, 40605u, 0u), vec4<u32>(u_input.b.x, var_1.b.x, u_input.c.x, u_input.b.x), var_1.b)).x ^ (u_input.d ^ u_input.c.x), 1u));
    var_1 = Struct_2(Struct_1(_wgslsmith_add_i32(u_input.a, -51466i), _wgslsmith_f_op_vec4_f32(abs(var_1.a.b)), var_1.a.c, ~1i, 4294967295u), ~abs(var_1.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_1.c - -299f), var_1.c)) + var_1.c) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(105f - var_1.c), var_1.c))));
    let var_3 = !(!(true | any(select(vec2<bool>(true, false), vec2<bool>(true, true), false))));
    return 45554u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = min(~abs(u_input.d), _wgslsmith_mod_u32(0u, 0u << (u_input.b.x % 32u)) >> (func_1() % 32u)) >> (u_input.b.x % 32u);
    var var_0 = max(-(vec2<i32>(-23794i, countOneBits(u_input.e)) << (vec2<u32>(u_input.c.x, ~1u) % vec2<u32>(32u))), vec2<i32>(-2147483647i, firstTrailingBit(1i | ~u_input.a)));
    var_0 = reverseBits(~(-_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.x, 42777i), vec2<i32>(u_input.a, 0i))) >> (_wgslsmith_add_vec2_u32(u_input.c.xy, vec2<u32>(~u_input.c.x, 4294967295u)) % vec2<u32>(32u)));
    var_0 = vec2<i32>(u_input.e, var_0.x);
    global0 = ~firstLeadingBit(u_input.b.x);
    var var_1 = Struct_1(var_0.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(306f - 1402f), _wgslsmith_div_f32(-2592f, -840f), _wgslsmith_f_op_f32(f32(-1f) * -640f), -1301f) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-112f, 300f, -177f, -293f)) * _wgslsmith_div_vec4_f32(vec4<f32>(401f, -672f, -1322f, 1000f), vec4<f32>(-318f, -580f, 2360f, 619f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(545f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(126f, -415f))))), firstTrailingBit(countOneBits(_wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 0i), vec2<i32>(14860i, u_input.e), vec2<i32>(2147483647i, -22821i)), vec2<i32>(2147483647i, -1i)))), _wgslsmith_div_u32(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, u_input.c.x, 15879u, u_input.b.x), vec4<u32>(1u, 1u, 1u, 1u)) | ~u_input.d), 4294967295u));
    var var_2 = 4294967295u;
    var_1 = Struct_1(~_wgslsmith_mod_i32(reverseBits(1i) << (u_input.d % 32u), func_2(Struct_3(Struct_1(var_0.x, var_1.b, 1211f, u_input.a, 22871u), vec4<bool>(false, true, false, true), Struct_1(var_1.a, vec4<f32>(283f, 807f, -290f, var_1.b.x), 476f, -32484i, 28811u), Struct_2(Struct_1(0i, var_1.b, -2270f, -1i, var_1.e), vec4<u32>(6952u, 46118u, 847u, 0u), 1389f), Struct_1(29893i, vec4<f32>(var_1.b.x, -1000f, -165f, 535f), 143f, var_0.x, 10184u)), Struct_3(Struct_1(u_input.a, var_1.b, var_1.b.x, var_0.x, 0u), vec4<bool>(false, true, true, false), Struct_1(var_1.a, var_1.b, -1505f, var_1.d, 4294967295u), Struct_2(Struct_1(0i, vec4<f32>(1162f, 1103f, -1738f, var_1.b.x), 181f, 9069i, 1u), vec4<u32>(u_input.b.x, var_1.e, 4294967295u, 0u), var_1.c), Struct_1(var_1.a, var_1.b, 1024f, 39055i, var_1.e)), 1245f).x), vec4<f32>(_wgslsmith_f_op_f32(var_1.b.x * 173f), var_1.c, var_1.b.x, var_1.c), var_1.c, 2147483647i, 52375u);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1474f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(var_1.c))) * _wgslsmith_f_op_f32(round(-243f))), -1440f), firstLeadingBit(firstTrailingBit(firstTrailingBit(var_0.x))) << (abs(_wgslsmith_clamp_u32(u_input.d, 138797u, 1u)) % 32u), _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x))))), u_input.b.x);
}

