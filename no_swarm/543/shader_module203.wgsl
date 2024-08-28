struct Struct_1 {
    a: u32,
    b: vec4<u32>,
    c: vec3<bool>,
    d: i32,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 28> = array<vec3<f32>, 28>(vec3<f32>(-565f, 2159f, -665f), vec3<f32>(-590f, -426f, 346f), vec3<f32>(-1000f, 596f, -101f), vec3<f32>(-789f, -930f, -662f), vec3<f32>(-583f, 329f, -1535f), vec3<f32>(762f, -630f, 657f), vec3<f32>(588f, -1553f, 394f), vec3<f32>(-1692f, -1000f, 388f), vec3<f32>(-734f, -1000f, -462f), vec3<f32>(192f, -837f, 1155f), vec3<f32>(542f, -751f, -1000f), vec3<f32>(-356f, 726f, -736f), vec3<f32>(613f, 514f, 810f), vec3<f32>(-245f, -515f, -1081f), vec3<f32>(-530f, -625f, -1433f), vec3<f32>(514f, -855f, -297f), vec3<f32>(-1705f, 1065f, 1702f), vec3<f32>(1000f, 303f, -536f), vec3<f32>(661f, 676f, 783f), vec3<f32>(-1215f, 1000f, -1000f), vec3<f32>(1315f, -1068f, -2501f), vec3<f32>(334f, -1421f, -623f), vec3<f32>(-497f, 1000f, -2957f), vec3<f32>(-1913f, 637f, -285f), vec3<f32>(290f, -102f, 333f), vec3<f32>(-803f, -1000f, 113f), vec3<f32>(-314f, -1232f, 443f), vec3<f32>(1099f, 598f, -872f));

var<private> global1: array<Struct_1, 17> = array<Struct_1, 17>(Struct_1(30303u, vec4<u32>(4294967295u, 11136u, 30864u, 0u), vec3<bool>(false, true, true), 0i, vec3<f32>(156f, 1491f, -341f)), Struct_1(24568u, vec4<u32>(0u, 1u, 17597u, 55208u), vec3<bool>(true, false, true), 71995i, vec3<f32>(640f, 1437f, -1000f)), Struct_1(0u, vec4<u32>(0u, 0u, 99368u, 46565u), vec3<bool>(false, false, true), -9431i, vec3<f32>(238f, 447f, -1195f)), Struct_1(38675u, vec4<u32>(4294967295u, 70393u, 4294967295u, 1u), vec3<bool>(false, false, false), 0i, vec3<f32>(507f, 210f, -139f)), Struct_1(53176u, vec4<u32>(1u, 41366u, 0u, 54031u), vec3<bool>(true, false, false), -58982i, vec3<f32>(766f, -582f, 1016f)), Struct_1(78993u, vec4<u32>(31788u, 1u, 37626u, 3971u), vec3<bool>(false, true, false), 2147483647i, vec3<f32>(-1564f, 1000f, 270f)), Struct_1(24579u, vec4<u32>(4294967295u, 0u, 4294967295u, 107597u), vec3<bool>(true, false, true), 7135i, vec3<f32>(-760f, 1495f, 794f)), Struct_1(20734u, vec4<u32>(0u, 51210u, 36282u, 1u), vec3<bool>(true, false, true), 18517i, vec3<f32>(743f, 1000f, -2055f)), Struct_1(11079u, vec4<u32>(1u, 89733u, 8473u, 0u), vec3<bool>(false, true, false), 4239i, vec3<f32>(1000f, 1293f, 1050f)), Struct_1(1u, vec4<u32>(1u, 4294967295u, 0u, 9336u), vec3<bool>(true, true, true), -27998i, vec3<f32>(-1072f, 2251f, -1274f)), Struct_1(59260u, vec4<u32>(478u, 63099u, 21344u, 1u), vec3<bool>(false, true, false), -1i, vec3<f32>(1211f, 561f, 261f)), Struct_1(37794u, vec4<u32>(1u, 64584u, 60470u, 14348u), vec3<bool>(false, true, false), 0i, vec3<f32>(998f, -1497f, 447f)), Struct_1(17538u, vec4<u32>(0u, 0u, 61840u, 52282u), vec3<bool>(true, false, true), 0i, vec3<f32>(-660f, 1596f, -1000f)), Struct_1(60654u, vec4<u32>(779u, 54165u, 0u, 24209u), vec3<bool>(true, false, true), -59513i, vec3<f32>(-213f, -431f, 470f)), Struct_1(27701u, vec4<u32>(0u, 4294967295u, 14910u, 43317u), vec3<bool>(false, false, false), -11242i, vec3<f32>(-1848f, 517f, 959f)), Struct_1(11238u, vec4<u32>(0u, 4294967295u, 70090u, 4294967295u), vec3<bool>(false, true, true), 2043i, vec3<f32>(-1119f, -858f, 1206f)), Struct_1(1u, vec4<u32>(0u, 24523u, 4294967295u, 1u), vec3<bool>(false, false, false), 30529i, vec3<f32>(988f, 1000f, -1000f)));

var<private> global2: vec2<u32> = vec2<u32>(32588u, 4294967295u);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_3(arg_0: f32, arg_1: vec2<i32>) -> vec2<u32> {
    let var_0 = Struct_1(_wgslsmith_mult_u32(global2.x, 1u), ~(abs(vec4<u32>(89772u, 4294967295u, 69711u, 5410u)) >> (~(vec4<u32>(0u, 1u, global2.x, 1u) << (vec4<u32>(global2.x, global2.x, 55016u, global2.x) % vec4<u32>(32u))) % vec4<u32>(32u))), vec3<bool>(true != (arg_0 < arg_0), !any(select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false))), false), abs(2147483647i) << ((~max(global2.x, 736u) << (1u % 32u)) % 32u), _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(1u, 28u)] * vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_div_f32(arg_0, -246f)), arg_0, _wgslsmith_f_op_f32(select(-2301f, -933f, all(vec4<bool>(true, true, true, false)))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(global0[_wgslsmith_index_u32(firstTrailingBit(1u), 28u)] + _wgslsmith_div_vec3_f32(var_0.e, vec3<f32>(_wgslsmith_f_op_f32(step(-651f, var_0.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0)), var_0.e.x)));
    global2 = var_0.b.xy | ~(vec2<u32>(_wgslsmith_clamp_u32(7335u, u_input.a.x, var_0.b.x), _wgslsmith_sub_u32(u_input.a.x, var_0.a)) ^ (~var_0.b.xy >> (var_0.b.xx % vec2<u32>(32u))));
    global0 = array<vec3<f32>, 28>();
    global0 = array<vec3<f32>, 28>();
    return ~max(min(u_input.a.zx, u_input.a.zx), var_0.b.wx);
}

fn func_2(arg_0: Struct_1, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec2<bool>) -> i32 {
    global2 = ~arg_0.b.xz;
    let var_0 = !(!vec4<bool>(true, arg_3.x, arg_2.c.x, true));
    global2 = min(vec2<u32>(max(_wgslsmith_add_u32(global2.x, global2.x), 4294967295u), global2.x) & firstTrailingBit(~(vec2<u32>(global2.x, 0u) ^ vec2<u32>(arg_0.b.x, arg_2.a))), (func_3(_wgslsmith_f_op_f32(arg_2.e.x - 1161f), vec2<i32>(arg_2.d, 62014i)) | firstTrailingBit(select(vec2<u32>(79576u, 44334u), vec2<u32>(arg_2.a, arg_0.a), false))) >> (arg_2.b.wx % vec2<u32>(32u)));
    global1 = array<Struct_1, 17>();
    global2 = min(arg_2.b.wy, ~vec2<u32>(_wgslsmith_mult_u32(arg_0.b.x, u_input.a.x), global2.x));
    return ~_wgslsmith_mult_i32(~(-1i | select(arg_2.d, arg_0.d, false)), 32828i);
}

fn func_1(arg_0: vec4<u32>) -> vec3<i32> {
    global1 = array<Struct_1, 17>();
    var var_0 = vec2<u32>(arg_0.x, _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0.xxw, u_input.a | vec3<u32>(1u, 5752u, arg_0.x), _wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0.x, 1u, 4294967295u), abs(u_input.a))), ~u_input.a));
    var var_1 = global1[_wgslsmith_index_u32(countOneBits(5261u), 17u)];
    var var_2 = global2.x;
    global1 = array<Struct_1, 17>();
    return select(-(-firstTrailingBit(vec3<i32>(-2147483647i, 1i, 0i)) | _wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.d, -4251i, var_1.d), ~vec3<i32>(var_1.d, var_1.d, -59741i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_1.d, -35193i, var_1.d), vec3<i32>(var_1.d, 1i, var_1.d)))), -_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(var_1.d, 2147483647i), -var_1.d, func_2(Struct_1(arg_0.x, vec4<u32>(u_input.a.x, global2.x, var_1.a, 3084u), vec3<bool>(true, var_1.c.x, var_1.c.x), var_1.d, var_1.e), vec4<f32>(-1322f, var_1.e.x, 919f, 108f), global1[_wgslsmith_index_u32(u_input.a.x, 17u)], vec2<bool>(true, var_1.c.x))), _wgslsmith_div_vec3_i32(vec3<i32>(var_1.d, 1i, var_1.d) & vec3<i32>(var_1.d, var_1.d, -2147483647i), _wgslsmith_sub_vec3_i32(vec3<i32>(var_1.d, -37326i, -27059i), vec3<i32>(var_1.d, var_1.d, -2147483647i))), abs(vec3<i32>(var_1.d, var_1.d, var_1.d)) ^ max(vec3<i32>(-1i, -39741i, -48815i), vec3<i32>(1i, 1i, 2147483647i))), any(var_1.c.zy));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<f32>, 28>();
    let var_0 = global1[_wgslsmith_index_u32(66582u, 17u)];
    global1 = array<Struct_1, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(-var_0.e), select(select(select(_wgslsmith_div_vec3_i32(vec3<i32>(1i, var_0.d, 0i), vec3<i32>(var_0.d, var_0.d, -7284i)), vec3<i32>(-2147483647i, var_0.d, 13041i), var_0.c), _wgslsmith_div_vec3_i32(~vec3<i32>(var_0.d, -8073i, 18035i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_0.d, 1i, 0i), vec3<i32>(-2147483647i, -2147483647i, var_0.d))), all(vec4<bool>(false, var_0.c.x, var_0.c.x, false)) | false), func_1(var_0.b), var_0.c.x), abs(u_input.a));
}

