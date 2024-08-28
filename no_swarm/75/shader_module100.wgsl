struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<u32>,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec4<f32>(1453f, -498f, -420f, -676f), vec2<f32>(-357f, 1601f), Struct_1(vec3<u32>(80406u, 50946u, 1u), 0u), 60923i, vec4<bool>(true, true, false, false));

var<private> global1: array<Struct_2, 23> = array<Struct_2, 23>(Struct_2(vec4<f32>(280f, 879f, -212f, 1145f), vec2<f32>(1317f, 1130f), Struct_1(vec3<u32>(4294967295u, 0u, 15344u), 1u), -1i, vec4<bool>(true, true, false, false)), Struct_2(vec4<f32>(890f, -567f, -414f, 123f), vec2<f32>(259f, -2565f), Struct_1(vec3<u32>(20806u, 15409u, 1u), 4294967295u), -1i, vec4<bool>(true, true, true, true)), Struct_2(vec4<f32>(-1164f, -793f, -1160f, 978f), vec2<f32>(1037f, -308f), Struct_1(vec3<u32>(29982u, 1u, 0u), 4294967295u), 0i, vec4<bool>(false, true, true, false)), Struct_2(vec4<f32>(462f, -487f, 266f, -661f), vec2<f32>(-1035f, 1498f), Struct_1(vec3<u32>(4294967295u, 4280u, 12356u), 0u), 2147483647i, vec4<bool>(true, true, true, true)), Struct_2(vec4<f32>(-240f, -746f, 1117f, 374f), vec2<f32>(-160f, 1000f), Struct_1(vec3<u32>(1u, 23062u, 1u), 0u), 27585i, vec4<bool>(true, true, true, false)), Struct_2(vec4<f32>(1265f, 575f, -308f, 560f), vec2<f32>(-296f, -1841f), Struct_1(vec3<u32>(0u, 4294967295u, 11367u), 0u), -29361i, vec4<bool>(true, true, false, true)), Struct_2(vec4<f32>(-684f, 1046f, 1000f, -939f), vec2<f32>(-1000f, 688f), Struct_1(vec3<u32>(42173u, 17501u, 1u), 4294967295u), -9277i, vec4<bool>(false, true, true, true)), Struct_2(vec4<f32>(-108f, 814f, 1000f, -1255f), vec2<f32>(194f, -691f), Struct_1(vec3<u32>(25301u, 4294967295u, 55964u), 13496u), 2147483647i, vec4<bool>(true, true, true, false)), Struct_2(vec4<f32>(1000f, 893f, -550f, -1070f), vec2<f32>(-527f, -1008f), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), 1u), 1i, vec4<bool>(false, true, true, false)), Struct_2(vec4<f32>(418f, -822f, 804f, 443f), vec2<f32>(-694f, 725f), Struct_1(vec3<u32>(0u, 4294967295u, 54019u), 1u), 20281i, vec4<bool>(false, false, true, false)), Struct_2(vec4<f32>(442f, 172f, 1259f, -246f), vec2<f32>(2561f, 724f), Struct_1(vec3<u32>(1u, 0u, 21532u), 1u), -1i, vec4<bool>(true, false, false, true)), Struct_2(vec4<f32>(1023f, -122f, 1288f, 458f), vec2<f32>(-1114f, 1742f), Struct_1(vec3<u32>(91470u, 893u, 1u), 1u), 4868i, vec4<bool>(true, false, false, false)), Struct_2(vec4<f32>(-958f, 1088f, -1958f, -1049f), vec2<f32>(-1322f, -1711f), Struct_1(vec3<u32>(32657u, 6793u, 16834u), 4294967295u), 2147483647i, vec4<bool>(false, false, false, false)), Struct_2(vec4<f32>(-420f, -1181f, -465f, 410f), vec2<f32>(-1083f, 841f), Struct_1(vec3<u32>(0u, 29249u, 65920u), 4294967295u), -4921i, vec4<bool>(true, true, false, true)), Struct_2(vec4<f32>(-1078f, -1000f, -1756f, -142f), vec2<f32>(222f, 615f), Struct_1(vec3<u32>(1u, 1u, 46311u), 1u), -21643i, vec4<bool>(true, false, false, false)), Struct_2(vec4<f32>(1754f, 2195f, -1102f, -118f), vec2<f32>(-561f, 1000f), Struct_1(vec3<u32>(14766u, 0u, 16894u), 64521u), -1i, vec4<bool>(true, false, true, true)), Struct_2(vec4<f32>(173f, 474f, 1396f, 1288f), vec2<f32>(471f, -295f), Struct_1(vec3<u32>(4294967295u, 38996u, 13690u), 4294967295u), -31389i, vec4<bool>(false, false, true, true)), Struct_2(vec4<f32>(691f, -564f, 208f, 1034f), vec2<f32>(-1523f, 660f), Struct_1(vec3<u32>(53251u, 37036u, 1u), 79052u), 1i, vec4<bool>(true, false, true, false)), Struct_2(vec4<f32>(255f, -772f, -483f, 499f), vec2<f32>(2165f, 835f), Struct_1(vec3<u32>(0u, 66078u, 29840u), 0u), -1i, vec4<bool>(true, true, true, false)), Struct_2(vec4<f32>(-223f, -968f, 1000f, -318f), vec2<f32>(-2871f, -1000f), Struct_1(vec3<u32>(0u, 10942u, 4294967295u), 4294967295u), 28243i, vec4<bool>(false, true, true, false)), Struct_2(vec4<f32>(-2280f, -1000f, -1000f, 501f), vec2<f32>(-373f, -840f), Struct_1(vec3<u32>(4294967295u, 1u, 0u), 4294967295u), i32(-2147483648), vec4<bool>(true, false, true, false)), Struct_2(vec4<f32>(111f, -1010f, -621f, 692f), vec2<f32>(1000f, 155f), Struct_1(vec3<u32>(34321u, 4294967295u, 57002u), 14594u), -10824i, vec4<bool>(true, false, true, true)), Struct_2(vec4<f32>(-1332f, 1000f, -1016f, 988f), vec2<f32>(-1107f, 498f), Struct_1(vec3<u32>(31568u, 54335u, 14651u), 1u), 21612i, vec4<bool>(true, false, false, true)));

var<private> global2: Struct_1;

var<private> global3: array<Struct_1, 21>;

var<private> global4: vec3<f32>;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_1(arg_0: vec3<u32>) -> u32 {
    let var_0 = global0.e.ww;
    global1 = array<Struct_2, 23>();
    var var_1 = _wgslsmith_f_op_f32(round(-381f));
    let var_2 = global0.a;
    global3 = array<Struct_1, 21>();
    return 0u;
}

fn func_3(arg_0: f32) -> vec2<i32> {
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(627f, global4.x, arg_0, arg_0) + vec4<f32>(-679f, -1000f, arg_0, global0.b.x)) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1080f, global0.b.x, -114f, global0.a.x)))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(global0.a - global0.a))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global4.x * arg_0))) - 1716f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(-1252f, global0.b.x)))))), Struct_1(~(~select(vec3<u32>(4294967295u, u_input.a.x, 4294967295u), vec3<u32>(4294967295u, u_input.b, 1u), global0.e.x)), 50797u | global0.c.a.x), 1i, !global0.e);
    global0 = Struct_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0.a + global0.a))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(arg_0 + global0.b.x), 3212f), global4.zx)), global0.c, 1i, global0.e);
    var var_0 = global3[_wgslsmith_index_u32(global0.c.b, 21u)];
    var_0 = global0.c;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1000f)))));
    return reverseBits(-(~(~(~vec2<i32>(6586i, 40852i)))));
}

fn func_2(arg_0: Struct_1) -> u32 {
    let var_0 = select(func_3(global4.x), firstLeadingBit(func_3(_wgslsmith_div_f32(global4.x, global4.x))) ^ vec2<i32>(global0.d, firstTrailingBit(_wgslsmith_mult_i32(global0.d, global0.d))), !global0.e.zy);
    global1 = array<Struct_2, 23>();
    let var_1 = Struct_1(vec3<u32>(reverseBits(~43479u), u_input.a.x, _wgslsmith_div_u32(0u, ~1u)) & arg_0.a, func_1(~(~global0.c.a)));
    var var_2 = vec2<bool>(!global0.e.x, global0.e.x);
    global0 = global1[_wgslsmith_index_u32(u_input.a.x, 23u)];
    return ~arg_0.b;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<i32>, arg_2: Struct_2) -> Struct_1 {
    global4 = _wgslsmith_f_op_vec3_f32(select(global0.a.zzw, _wgslsmith_f_op_vec3_f32(arg_0.a.wxy + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-580f, 3155f, 561f) - arg_0.a.yxx))))), select(select(vec3<bool>(arg_2.e.x, true, arg_2.e.x), global0.e.wxx, arg_2.e.x), select(!(!vec3<bool>(true, arg_0.e.x, false)), !vec3<bool>(false, global0.e.x, false), !select(global0.e.xyy, arg_0.e.zwx, arg_2.e.ywz)), vec3<bool>(arg_0.e.x, true, false))));
    let var_0 = arg_2.c.a;
    let var_1 = arg_0;
    global0 = Struct_2(arg_2.a, global0.b, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(select(reverseBits(vec3<u32>(u_input.a.x, var_1.c.a.x, global2.a.x)), ~(~global2.a), any(arg_2.e)), vec3<u32>(var_0.x, _wgslsmith_clamp_u32(global2.b, _wgslsmith_add_u32(15308u, arg_2.c.a.x), ~global0.c.a.x), var_0.x)), 21u)], _wgslsmith_sub_i32((abs(arg_1.x) >> (_wgslsmith_div_u32(var_0.x, global2.a.x) % 32u)) >> (arg_0.c.b % 32u), _wgslsmith_dot_vec2_i32(-arg_1.yy, arg_1.yz)), select(select(select(vec4<bool>(false, arg_0.e.x, false, arg_0.e.x), select(var_1.e, vec4<bool>(var_1.e.x, true, true, arg_0.e.x), var_1.e), any(arg_0.e.yx)), !select(var_1.e, var_1.e, vec4<bool>(global0.e.x, arg_0.e.x, arg_0.e.x, false)), !(!vec4<bool>(true, arg_0.e.x, global0.e.x, false))), vec4<bool>(true, !any(arg_0.e.yzx), arg_0.e.x, true), select(arg_0.e, select(select(var_1.e, vec4<bool>(true, global0.e.x, false, true), false), var_1.e, vec4<bool>(true, arg_0.e.x, arg_0.e.x, global0.e.x)), vec4<bool>(true, var_1.e.x == arg_0.e.x, var_1.e.x, true))));
    var var_2 = Struct_1(var_1.c.a, u_input.b);
    return global3[_wgslsmith_index_u32(_wgslsmith_add_u32(var_1.c.b, _wgslsmith_div_u32(var_2.b, 0u)), 21u)];
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 23>();
    global0 = Struct_2(vec4<f32>(_wgslsmith_f_op_f32(trunc(global4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(-460f, global4.x)), _wgslsmith_f_op_f32(-global4.x)))), -498f, global0.a.x), global4.yy, func_4(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(44354u, func_1(vec3<u32>(0u, 0u, 84541u)), 1u, func_2(global3[_wgslsmith_index_u32(global0.c.b, 21u)])), vec4<u32>(global0.c.a.x, 36755u, global2.a.x, u_input.b) | (vec4<u32>(5507u, u_input.a.x, 0u, u_input.b) << (vec4<u32>(4294967295u, 1u, 84748u, 31169u) % vec4<u32>(32u)))), 23u)], max(~vec4<i32>(global0.d, -20840i, 2526i, -1i), abs(min(vec4<i32>(-2147483647i, global0.d, global0.d, global0.d), vec4<i32>(-9975i, global0.d, 0i, global0.d)))), global1[_wgslsmith_index_u32(func_1(~_wgslsmith_sub_vec3_u32(vec3<u32>(global2.a.x, global2.a.x, 4294967295u), global2.a)), 23u)]), -min(_wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(global0.d, 2147483647i)), vec2<i32>(2147483647i, -2147483647i)), 1i), global0.e);
    let var_0 = vec4<u32>(_wgslsmith_mod_u32(global2.a.x, ~_wgslsmith_sub_u32(~global2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a.x, global2.b, u_input.a.x), vec3<u32>(global2.b, global0.c.a.x, u_input.b)))), 15152u, u_input.b, 1u);
    global2 = Struct_1(var_0.wyz, 36512u);
    var var_1 = 5436u;
    let var_2 = Struct_2(global0.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(global0.a.x, 1188f), vec2<f32>(global4.x, -141f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global0.a.zy)), global0.e.x))), global3[_wgslsmith_index_u32(global0.c.a.x, 21u)], min(~_wgslsmith_add_i32(global0.d, 2089i) << (global0.c.a.x % 32u), reverseBits(i32(-1i) * -2147483647i)), select(!vec4<bool>(global0.e.x, any(vec3<bool>(global0.e.x, false, global0.e.x)), select(true, false, true), true), select(select(vec4<bool>(false, global0.e.x, false, global0.e.x), select(global0.e, vec4<bool>(true, global0.e.x, false, true), false), global0.e), select(global0.e, !global0.e, true), -global0.d < ~global0.d), global0.e));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -380f))), -873f), reverseBits(abs(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_2.c.a.x, 0u, var_0.x, 1u), var_0), ~30122u, ~var_0.x, u_input.b & 2485u))), var_0.x, vec3<u32>(_wgslsmith_mult_u32(global2.b, 21927u), ~global0.c.b, var_2.c.a.x));
}

