struct Struct_1 {
    a: vec4<u32>,
    b: vec3<bool>,
    c: vec2<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec4<i32>,
    d: vec4<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(1u, 20441u, 0u, 39166u), vec3<bool>(false, true, true), vec2<u32>(4294967295u, 11282u), 748f, vec4<i32>(-25975i, 2147483647i, 2147483647i, -20775i)), Struct_1(vec4<u32>(27556u, 1u, 113468u, 9360u), vec3<bool>(true, false, true), vec2<u32>(60574u, 55754u), 1000f, vec4<i32>(-1629i, 8331i, -27280i, 27648i)), Struct_1(vec4<u32>(46098u, 1u, 4294967295u, 1u), vec3<bool>(false, false, true), vec2<u32>(114402u, 4294967295u), -327f, vec4<i32>(-34503i, -1i, -1i, -15277i)), Struct_1(vec4<u32>(8219u, 4294967295u, 34632u, 0u), vec3<bool>(false, false, true), vec2<u32>(4294967295u, 22412u), -230f, vec4<i32>(i32(-2147483648), 0i, 41472i, 1i)), Struct_1(vec4<u32>(63920u, 58233u, 44678u, 1u), vec3<bool>(true, true, false), vec2<u32>(1u, 0u), 2063f, vec4<i32>(i32(-2147483648), 2147483647i, 0i, -1i)), Struct_1(vec4<u32>(1u, 9946u, 4294967295u, 4294967295u), vec3<bool>(false, false, false), vec2<u32>(0u, 4294967295u), 1324f, vec4<i32>(-1i, -58588i, 21376i, -46644i)), Struct_1(vec4<u32>(24833u, 4294967295u, 0u, 7216u), vec3<bool>(false, false, false), vec2<u32>(1u, 4294967295u), -843f, vec4<i32>(0i, -8834i, -1i, i32(-2147483648))), Struct_1(vec4<u32>(36532u, 539u, 0u, 19101u), vec3<bool>(false, false, true), vec2<u32>(0u, 1u), -1112f, vec4<i32>(-18969i, 2983i, -13170i, 0i)), Struct_1(vec4<u32>(1u, 7232u, 0u, 4294967295u), vec3<bool>(false, true, false), vec2<u32>(11997u, 4294967295u), -1000f, vec4<i32>(-1i, 0i, 1i, i32(-2147483648))), Struct_1(vec4<u32>(93614u, 54596u, 0u, 4294967295u), vec3<bool>(false, false, true), vec2<u32>(28063u, 55417u), 2561f, vec4<i32>(29496i, -43964i, 1i, -17191i)), Struct_1(vec4<u32>(2820u, 63652u, 14052u, 40740u), vec3<bool>(true, true, false), vec2<u32>(76422u, 21556u), 1696f, vec4<i32>(2147483647i, 5194i, 0i, -1i)), Struct_1(vec4<u32>(0u, 13885u, 1u, 4294967295u), vec3<bool>(false, false, true), vec2<u32>(49897u, 4294967295u), -1070f, vec4<i32>(i32(-2147483648), -52936i, 2147483647i, 0i)), Struct_1(vec4<u32>(112807u, 1u, 0u, 4294967295u), vec3<bool>(false, false, true), vec2<u32>(29194u, 1u), 458f, vec4<i32>(2147483647i, 1i, 47138i, 36068i)), Struct_1(vec4<u32>(54523u, 38789u, 0u, 1u), vec3<bool>(false, false, false), vec2<u32>(1u, 0u), -863f, vec4<i32>(-21785i, -1i, 2147483647i, 0i)), Struct_1(vec4<u32>(1u, 0u, 36854u, 39974u), vec3<bool>(true, false, true), vec2<u32>(0u, 20308u), 624f, vec4<i32>(21512i, 1i, -3676i, -28317i)), Struct_1(vec4<u32>(4294967295u, 27319u, 4294967295u, 1096u), vec3<bool>(true, false, true), vec2<u32>(4294967295u, 42197u), 425f, vec4<i32>(-1i, i32(-2147483648), 0i, 2147483647i)), Struct_1(vec4<u32>(51963u, 15038u, 1u, 10871u), vec3<bool>(false, true, true), vec2<u32>(0u, 3758u), -2464f, vec4<i32>(-20678i, -33i, 7832i, 0i)), Struct_1(vec4<u32>(4294967295u, 1u, 11702u, 23096u), vec3<bool>(true, true, false), vec2<u32>(0u, 6640u), -840f, vec4<i32>(i32(-2147483648), 2147483647i, i32(-2147483648), -12947i)), Struct_1(vec4<u32>(0u, 55957u, 0u, 4294967295u), vec3<bool>(true, false, true), vec2<u32>(28847u, 18698u), -866f, vec4<i32>(1i, -1971i, 0i, 0i)), Struct_1(vec4<u32>(64279u, 4294967295u, 88291u, 45532u), vec3<bool>(false, false, true), vec2<u32>(0u, 89515u), -433f, vec4<i32>(1i, 2101i, i32(-2147483648), 57229i)), Struct_1(vec4<u32>(0u, 55033u, 4294967295u, 0u), vec3<bool>(false, false, false), vec2<u32>(24699u, 27040u), -789f, vec4<i32>(-4182i, 61672i, 0i, i32(-2147483648))), Struct_1(vec4<u32>(30819u, 1u, 749u, 66162u), vec3<bool>(false, true, true), vec2<u32>(37390u, 11313u), -1017f, vec4<i32>(-1i, 56937i, -1i, 11741i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 17733u, 49211u), vec3<bool>(true, false, true), vec2<u32>(1u, 1u), 1102f, vec4<i32>(0i, 25719i, -32640i, 2147483647i)), Struct_1(vec4<u32>(4294967295u, 30807u, 4294967295u, 4294967295u), vec3<bool>(false, true, true), vec2<u32>(46782u, 18500u), 1000f, vec4<i32>(-1i, 10071i, -20409i, 61030i)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 1u, 35670u), vec3<bool>(true, false, false), vec2<u32>(7964u, 1u), 208f, vec4<i32>(i32(-2147483648), -1i, 1i, 1i)), Struct_1(vec4<u32>(1u, 24879u, 4294967295u, 4294967295u), vec3<bool>(false, true, true), vec2<u32>(12102u, 1u), -1000f, vec4<i32>(-1i, 2147483647i, -27778i, 17754i)), Struct_1(vec4<u32>(39497u, 4294967295u, 37147u, 1u), vec3<bool>(false, false, true), vec2<u32>(51649u, 29129u), -119f, vec4<i32>(11787i, -74337i, -9004i, 437i)));

var<private> global1: i32 = 32815i;

var<private> global2: bool = true;

var<private> global3: bool = false;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<i32>, arg_2: vec2<i32>, arg_3: Struct_1) -> u32 {
    var var_0 = arg_3;
    global3 = true;
    var_0 = Struct_1(_wgslsmith_div_vec4_u32(max(vec4<u32>(27122u, _wgslsmith_add_u32(arg_3.a.x, 47970u), u_input.b.x, ~0u), vec4<u32>(0u, firstLeadingBit(0u), 49900u, u_input.b.x)), vec4<u32>(~_wgslsmith_dot_vec4_u32(arg_3.a, var_0.a), 0u, u_input.b.x, _wgslsmith_sub_u32(arg_3.c.x, ~1u))), !arg_3.b, ~_wgslsmith_mod_vec2_u32(vec2<u32>(countOneBits(4294967295u), ~1u), arg_3.a.yy), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.d)), abs(~var_0.e));
    var var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -397f)));
    var var_2 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.d, var_0.d) * vec2<f32>(918f, var_0.d))) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, arg_3.d)))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1373f, arg_3.d), vec2<f32>(-1017f, -906f))))), arg_3.b.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d, 786f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.d, var_0.d) * vec2<f32>(-357f, 669f))))))));
    return _wgslsmith_add_u32(43592u, var_0.c.x) & arg_3.c.x;
}

fn func_2() -> i32 {
    var var_0 = u_input.e;
    global1 = u_input.d.x;
    let var_1 = u_input.c.yz;
    var var_2 = _wgslsmith_mod_u32(func_3(Struct_2(1i), var_1, -(~u_input.c.zw), global0[_wgslsmith_index_u32(4294967295u, 27u)]), 0u);
    var var_3 = Struct_1(_wgslsmith_add_vec4_u32(select(vec4<u32>(_wgslsmith_clamp_u32(4294967295u, u_input.e.x, u_input.e.x), func_3(Struct_2(var_1.x), var_1, var_1, global0[_wgslsmith_index_u32(1u, 27u)]), var_0.x, _wgslsmith_dot_vec3_u32(u_input.e.zxy, u_input.b)), select(u_input.e, _wgslsmith_clamp_vec4_u32(vec4<u32>(1776u, var_0.x, u_input.b.x, 0u), u_input.e, vec4<u32>(u_input.e.x, 1u, 0u, var_0.x)), true), any(select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)))), ~u_input.e), select(vec3<bool>(any(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true), vec3<bool>(true, true, any(vec2<bool>(true, true))), select(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), vec3<bool>(true, true, all(vec3<bool>(false, true, true))), true)), var_0.yz, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f + -1111f) - 1219f) - _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -454f)))))), ~vec4<i32>(~(-2147483647i), u_input.a, u_input.d.x, max(var_1.x, var_1.x) | var_1.x));
    return _wgslsmith_add_i32(firstLeadingBit(-2147483647i), abs(var_3.e.x));
}

fn func_1(arg_0: i32) -> i32 {
    var var_0 = global0[_wgslsmith_index_u32(~_wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(u_input.e.zww, ~u_input.e.zyw), u_input.b.x), 27u)];
    global2 = !(~(~27057u) >= ~u_input.e.x);
    global3 = max(var_0.e.x, 2147483647i) > u_input.c.x;
    global3 = true;
    let var_1 = _wgslsmith_mult_vec2_u32(~vec2<u32>(_wgslsmith_clamp_u32(countOneBits(0u), u_input.e.x, 21807u), ~reverseBits(u_input.e.x)), abs(_wgslsmith_mult_vec2_u32(~min(vec2<u32>(52222u, 110110u), var_0.c), _wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(77518u, u_input.e.x), u_input.b.yx), select(var_0.a.wy, vec2<u32>(u_input.e.x, var_0.a.x), vec2<bool>(true, var_0.b.x))))));
    return 1i ^ max(abs(arg_0), func_2());
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(u_input.a, func_1(-2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, i32(-1i) * -2147483647i), (vec2<i32>(u_input.c.x, u_input.d.x) | _wgslsmith_mod_vec2_i32(u_input.d.xz, u_input.c.wy)) & _wgslsmith_sub_vec2_i32(u_input.c.yw, ~u_input.c.xz)), u_input.a);
    var var_1 = u_input.e.x << (firstTrailingBit(_wgslsmith_div_u32(~u_input.b.x, u_input.e.x)) % 32u);
    var var_2 = true;
    let x = u_input.a;
    s_output = StorageBuffer(~47130u, select(~u_input.e.yxw, vec3<u32>(reverseBits(30218u), u_input.b.x, reverseBits(max(1u, 0u))), true), u_input.d.wxy);
}

