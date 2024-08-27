struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: vec2<i32>,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(1094f, 957f, 1067f), vec3<f32>(-1115f, 1084f, -1613f), vec3<f32>(-719f, 597f, 1223f), vec3<f32>(259f, -1000f, -716f), vec3<f32>(1000f, -470f, 1144f), vec3<f32>(481f, -712f, 335f), vec3<f32>(929f, 1000f, 1556f), vec3<f32>(-1019f, -464f, -739f), vec3<f32>(-972f, 570f, 1762f), vec3<f32>(-1308f, 1356f, 135f), vec3<f32>(-175f, 596f, -357f), vec3<f32>(-370f, 138f, 1892f), vec3<f32>(-748f, -294f, 374f), vec3<f32>(-1148f, 1061f, 805f), vec3<f32>(1149f, -477f, -431f), vec3<f32>(899f, -2546f, 1000f), vec3<f32>(-1402f, -154f, -115f), vec3<f32>(-1723f, -662f, 1000f), vec3<f32>(-270f, 825f, -498f), vec3<f32>(176f, 1477f, 563f), vec3<f32>(-1662f, -746f, -822f), vec3<f32>(204f, 1021f, -301f), vec3<f32>(-252f, -1370f, -1083f), vec3<f32>(-672f, 1112f, -481f), vec3<f32>(-608f, 172f, 1000f), vec3<f32>(625f, -1255f, 574f), vec3<f32>(285f, 1060f, 484f), vec3<f32>(2348f, 1000f, -545f), vec3<f32>(711f, 462f, -1118f), vec3<f32>(-1354f, -611f, 1951f), vec3<f32>(974f, -103f, 1137f));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_1() -> i32 {
    return ~(-1i);
}

fn func_3() -> i32 {
    var var_0 = vec4<i32>(_wgslsmith_div_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b.x, 9245i), u_input.b), _wgslsmith_add_vec2_i32(u_input.b, u_input.b)) & ~u_input.c), 24241i, i32(-1i) * -1i, -36465i);
    var var_1 = -(~abs(vec4<i32>(abs(27744i), _wgslsmith_mult_i32(2147483647i, u_input.c), ~var_0.x, ~u_input.b.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(507f, 285f) * vec2<f32>(817f, 207f)), vec2<f32>(1459f, 200f), true)))));
    var_1 = vec4<i32>(min(max(-30201i, _wgslsmith_sub_i32(~2147483647i, var_0.x)), var_0.x), 0i, ~(-21411i), reverseBits(max(_wgslsmith_clamp_i32(countOneBits(1i), var_0.x, _wgslsmith_div_i32(47083i, var_0.x)), _wgslsmith_mult_i32(~(-36437i), 19330i))));
    var var_3 = Struct_1(firstLeadingBit(vec4<i32>(func_1(), -var_1.x, 50i, 31725i) << (~(~u_input.a) % vec4<u32>(32u))), all(select(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, true, all(vec3<bool>(false, true, false))), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true))), vec4<bool>(u_input.b.x >= 2147483647i, all(vec4<bool>(true, false, false, true)), var_0.x >= u_input.b.x, false))), _wgslsmith_dot_vec2_i32(abs(select(abs(u_input.b), _wgslsmith_div_vec2_i32(u_input.b, var_1.yw), vec2<bool>(true, false))), _wgslsmith_div_vec2_i32(~u_input.b ^ vec2<i32>(u_input.c, var_1.x), ~select(var_0.zw, vec2<i32>(-21735i, u_input.b.x), true))));
    return ~(~2147483647i);
}

fn func_2(arg_0: vec4<u32>) -> Struct_3 {
    global0 = array<vec3<f32>, 31>();
    var var_0 = arg_0.zz;
    var_0 = u_input.a.ww;
    var var_1 = Struct_3(Struct_2(vec3<u32>(~u_input.a.x, u_input.a.x, firstTrailingBit(44756u)) | vec3<u32>(53203u, ~1u, 23723u), Struct_1(min(vec4<i32>(u_input.c, 1i, u_input.c, -8997i), vec4<i32>(u_input.b.x, u_input.c, u_input.b.x, 11671i)) << (u_input.a % vec4<u32>(32u)), abs(u_input.c) >= ~u_input.b.x, u_input.c), (firstLeadingBit(4294967295u) & _wgslsmith_mult_u32(var_0.x, 37666u)) > u_input.a.x), Struct_1(~(~(~vec4<i32>(-1i, u_input.c, -2147483647i, -73144i))), true, _wgslsmith_clamp_i32(_wgslsmith_add_i32(2147483647i, _wgslsmith_mult_i32(u_input.c, u_input.b.x)), countOneBits(u_input.c | -2147483647i), -32572i)), vec2<i32>(u_input.c, firstLeadingBit(-(i32(-1i) * -25966i))), Struct_2(_wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.a.zxz, u_input.a.xxx) << (vec3<u32>(1u, 4294967295u, arg_0.x) % vec3<u32>(32u)), _wgslsmith_sub_vec3_u32(arg_0.wyx, vec3<u32>(39579u, var_0.x, u_input.a.x))), Struct_1(firstTrailingBit(vec4<i32>(u_input.c, u_input.b.x, -14267i, u_input.b.x)), true, func_3()), true), max(0u, ~arg_0.x));
    var_0 = u_input.a.yx ^ vec2<u32>(arg_0.x, arg_0.x);
    return Struct_3(Struct_2(vec3<u32>(_wgslsmith_add_u32(~4294967295u, var_0.x), _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, var_1.d.a.x), _wgslsmith_sub_vec2_u32(u_input.a.wx, arg_0.xw)), _wgslsmith_div_u32(1u, ~38069u)), Struct_1(firstLeadingBit(var_1.d.b.a), true, _wgslsmith_dot_vec2_i32(var_1.c ^ vec2<i32>(u_input.b.x, u_input.c), var_1.b.a.wz)), _wgslsmith_f_op_f32(ceil(1000f)) <= -664f), var_1.d.b, _wgslsmith_mod_vec2_i32(firstTrailingBit(vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(var_1.c.x, -2147483647i))), ~abs(~u_input.b)), var_1.d, ~49698u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(1i, -u_input.b.x, func_1());
    global0 = array<vec3<f32>, 31>();
    global0 = array<vec3<f32>, 31>();
    var_0 = vec3<i32>(-2147483647i, -1i, var_0.x) & vec3<i32>(-2147483647i, -1i, var_0.x);
    global0 = array<vec3<f32>, 31>();
    var var_1 = func_2(~(~u_input.a));
    let var_2 = abs(firstLeadingBit(var_1.d.a.x));
    var var_3 = var_1.b;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.a, firstTrailingBit(vec3<u32>(reverseBits(4294967295u), abs(~1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.a.x, u_input.a.x, 11989u), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2, 24656u, 78972u), var_1.d.a)))));
}

