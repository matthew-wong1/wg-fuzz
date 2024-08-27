struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: f32,
    d: u32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(vec4<i32>(36460i, 1i, 2147483647i, 0i), vec3<i32>(-1i, 40311i, 7875i), 68383i), Struct_1(vec4<i32>(-25112i, 0i, -1621i, 5891i), vec3<i32>(2147483647i, 0i, -7591i), -65144i), Struct_1(vec4<i32>(30879i, -1i, 0i, 2147483647i), vec3<i32>(1i, 0i, -3713i), -74867i), Struct_1(vec4<i32>(28506i, -29276i, -19334i, 38940i), vec3<i32>(2147483647i, 1i, 2147483647i), 2147483647i), Struct_1(vec4<i32>(2147483647i, -27332i, 0i, -17460i), vec3<i32>(11391i, 2147483647i, 2147483647i), i32(-2147483648)), Struct_1(vec4<i32>(i32(-2147483648), 62039i, 2147483647i, -30464i), vec3<i32>(i32(-2147483648), 2147483647i, -1i), 1i), Struct_1(vec4<i32>(-1i, -28501i, i32(-2147483648), 0i), vec3<i32>(0i, -1i, -30797i), 8792i), Struct_1(vec4<i32>(-19247i, 5163i, 1217i, -1i), vec3<i32>(i32(-2147483648), 0i, 37293i), 2147483647i), Struct_1(vec4<i32>(31420i, 0i, 18723i, i32(-2147483648)), vec3<i32>(0i, 2147483647i, 1i), 60725i), Struct_1(vec4<i32>(i32(-2147483648), i32(-2147483648), 19010i, 94965i), vec3<i32>(32162i, 2147483647i, -7736i), 0i), Struct_1(vec4<i32>(0i, 1916i, -25981i, 0i), vec3<i32>(-1i, 13149i, -1i), 0i), Struct_1(vec4<i32>(913i, 29587i, -1i, 2147483647i), vec3<i32>(i32(-2147483648), -1i, 60642i), 1i), Struct_1(vec4<i32>(-42460i, -18687i, 0i, 48967i), vec3<i32>(6841i, 39692i, -11758i), i32(-2147483648)), Struct_1(vec4<i32>(23012i, -1i, 2147483647i, 9941i), vec3<i32>(-1i, 0i, 5451i), 21548i), Struct_1(vec4<i32>(2147483647i, 2147483647i, 2147483647i, 1i), vec3<i32>(1404i, 10133i, -4603i), i32(-2147483648)), Struct_1(vec4<i32>(-24342i, 2147483647i, 48947i, i32(-2147483648)), vec3<i32>(56364i, i32(-2147483648), 2147483647i), -1i), Struct_1(vec4<i32>(-12757i, -7731i, -1i, -40251i), vec3<i32>(-1i, 1i, 36927i), i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), 12804i, 0i), vec3<i32>(-14038i, i32(-2147483648), 10644i), 13050i), Struct_1(vec4<i32>(-3503i, -15462i, -64871i, 1i), vec3<i32>(37247i, -32654i, -1i), i32(-2147483648)), Struct_1(vec4<i32>(2147483647i, 46015i, -2667i, 1i), vec3<i32>(1i, 26151i, 32286i), -1i), Struct_1(vec4<i32>(-63028i, 40224i, 1i, 0i), vec3<i32>(i32(-2147483648), 2147483647i, 42184i), -54848i), Struct_1(vec4<i32>(i32(-2147483648), 2147483647i, 35061i, 18516i), vec3<i32>(37114i, 0i, -5339i), -1i), Struct_1(vec4<i32>(-11339i, -39716i, 0i, -1i), vec3<i32>(-24301i, 41051i, -1i), 14820i), Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, -28579i), vec3<i32>(-51845i, 0i, 2147483647i), 2147483647i), Struct_1(vec4<i32>(1i, 48092i, -1i, 70227i), vec3<i32>(0i, 35529i, 0i), 28218i), Struct_1(vec4<i32>(-9555i, -5269i, 26614i, -1i), vec3<i32>(12177i, 2147483647i, 0i), -57277i), Struct_1(vec4<i32>(-25347i, -40712i, 2147483647i, 2147483647i), vec3<i32>(-63948i, 2147483647i, 18795i), 0i), Struct_1(vec4<i32>(-1i, -35592i, -48781i, 46722i), vec3<i32>(7493i, 28756i, i32(-2147483648)), 22749i), Struct_1(vec4<i32>(2147483647i, -1i, -34041i, -1i), vec3<i32>(-56845i, 11014i, -8548i), 4405i), Struct_1(vec4<i32>(-17386i, -1i, 2147483647i, 11537i), vec3<i32>(-17264i, 1i, i32(-2147483648)), i32(-2147483648)), Struct_1(vec4<i32>(0i, 76785i, 25258i, -48421i), vec3<i32>(-1i, 20374i, i32(-2147483648)), 0i), Struct_1(vec4<i32>(-1i, i32(-2147483648), 2674i, i32(-2147483648)), vec3<i32>(571i, -1557i, 1i), 2147483647i));

var<private> global1: Struct_1;

var<private> global2: Struct_1;

var<private> global3: array<f32, 25> = array<f32, 25>(1560f, 701f, 857f, 1000f, -966f, 337f, -2050f, -614f, -263f, -1216f, -2112f, 560f, 224f, -146f, -1977f, 1000f, 1608f, -396f, 528f, 137f, -1148f, 367f, -424f, 719f, -508f);

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<f32>, arg_1: u32, arg_2: vec2<u32>) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(63664u, 32u)];
    global1 = Struct_1(-(~vec4<i32>(var_0.c, -1i, global1.a.x, -21819i)) | var_0.a, global2.a.zyx, 0i & _wgslsmith_dot_vec4_i32(-_wgslsmith_clamp_vec4_i32(var_0.a, vec4<i32>(var_0.b.x, 2147483647i, u_input.b.x, u_input.c), vec4<i32>(-17630i, global2.c, 56397i, u_input.b.x)), global2.a));
    let var_1 = Struct_1(global2.a, abs(-_wgslsmith_mult_vec3_i32(vec3<i32>(0i, var_0.b.x, global2.c), vec3<i32>(var_0.a.x, 19158i, global1.b.x) ^ var_0.b)), ~(~var_0.c));
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(-1053f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 25u)]))))), 1572f, _wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x + -204f) + arg_0.x) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(39502u, 25u)]), 1274f)))), global3[_wgslsmith_index_u32(1u, 25u)]);
    var var_3 = Struct_1(var_1.a, var_1.a.yzx, firstTrailingBit(_wgslsmith_dot_vec3_i32(~u_input.b, abs(vec3<i32>(29103i, -23278i, -2147483647i)))));
    return arg_1;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    let var_1 = countOneBits(_wgslsmith_clamp_vec3_u32(max(vec3<u32>(min(4294967295u, 75808u), ~65772u, func_3(vec2<f32>(global3[_wgslsmith_index_u32(77718u, 25u)], global3[_wgslsmith_index_u32(0u, 25u)]), 37683u, vec2<u32>(65191u, 1u))), ~vec3<u32>(1u, 1u, 1u)), ~firstLeadingBit(vec3<u32>(1899u, 1u, 9953u)), firstLeadingBit(vec3<u32>(~0u, _wgslsmith_add_u32(1015u, 1u), ~50192u))));
    global0 = array<Struct_1, 32>();
    var var_2 = select(!vec2<bool>(var_0, false), vec2<bool>(!(!var_0), var_1.x != 63541u), select(vec2<bool>((false || var_0) | var_0, !(var_0 != var_0)), !vec2<bool>(any(vec4<bool>(var_0, true, true, false)), false), !(!var_0)));
    var_2 = vec2<bool>(any(vec3<bool>(true, true, true & all(vec2<bool>(true, true)))), var_0);
    return global0[_wgslsmith_index_u32(abs(var_1.x), 32u)];
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: u32) -> StorageBuffer {
    global2 = func_2();
    global1 = global0[_wgslsmith_index_u32(arg_2, 32u)];
    global1 = func_2();
    let var_0 = arg_2;
    var var_1 = arg_1;
    return StorageBuffer(abs(_wgslsmith_div_vec4_u32(reverseBits(abs(vec4<u32>(arg_2, 23522u, var_0, arg_2))), max(~vec4<u32>(1u, var_0, arg_2, 3701u), abs(vec4<u32>(var_0, 1u, arg_2, 85628u))))), _wgslsmith_mod_vec4_u32(abs(~vec4<u32>(0u, arg_2, 18291u, var_0) ^ (vec4<u32>(1u, 405u, 1u, 3358u) >> (vec4<u32>(var_0, arg_2, 1u, var_0) % vec4<u32>(32u)))), vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, 7287u), vec2<u32>(var_0, 12332u)), 1u, _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(73841u, 0u, 0u, arg_2), vec4<u32>(arg_2, 96917u, 4034u, 1u)), _wgslsmith_mult_u32(var_0, 0u)), 0u)), _wgslsmith_div_f32(1674f, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), 13261u, vec2<f32>(global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(var_0, 0u << (var_0 % 32u)), 25u)], 237f));
}

fn func_1(arg_0: i32) -> StorageBuffer {
    let var_0 = _wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(_wgslsmith_add_u32(19106u, 1u), 25u)]);
    global1 = global0[_wgslsmith_index_u32(1u, 32u)];
    global3 = array<f32, 25>();
    let var_1 = _wgslsmith_f_op_f32(sign(362f)) != _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(219f + _wgslsmith_f_op_f32(-692f + 1000f))))));
    global3 = array<f32, 25>();
    return func_4(func_2(), false & (((12974i ^ global1.b.x) <= -2147483647i) | true), ~_wgslsmith_dot_vec4_u32(abs(~vec4<u32>(4294967295u, 15380u, 4294967295u, 35355u)), abs(vec4<u32>(4294967295u, 0u, 1u, 40811u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1438f, -1051f, 2206f, 701f)) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(549f, -227f, global3[_wgslsmith_index_u32(42217u, 25u)], -216f))))) - vec4<f32>(global3[_wgslsmith_index_u32(21254u, 25u)], -1378f, _wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 25u)] + 435f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(0u, 25u)]) * global3[_wgslsmith_index_u32(~1u, 25u)]))));
    global3 = array<f32, 25>();
    global2 = global0[_wgslsmith_index_u32(~4294967295u, 32u)];
    global2 = Struct_1(_wgslsmith_sub_vec4_i32(~vec4<i32>(global2.a.x, 2147483647i, global2.c, 19403i) >> (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_i32(-(~vec4<i32>(global2.b.x, 2147483647i, 15949i, 2147483647i)), vec4<i32>(60038i, u_input.a, abs(global2.b.x), global1.b.x))), -global1.b, 66052i);
    var var_1 = false;
    let x = u_input.a;
    s_output = func_1(-(~u_input.a) << (12654u % 32u));
}

