struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
    d: vec3<u32>,
}

struct Struct_4 {
    a: vec2<u32>,
    b: f32,
    c: vec4<f32>,
    d: bool,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<f32>,
    d: vec4<f32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool> = vec3<bool>(false, true, false);

var<private> global1: array<Struct_4, 10> = array<Struct_4, 10>(Struct_4(vec2<u32>(1u, 53716u), -691f, vec4<f32>(-1000f, -533f, -1000f, 1497f), true, vec3<bool>(true, true, false)), Struct_4(vec2<u32>(1u, 1u), -420f, vec4<f32>(1028f, -1484f, -1228f, 419f), false, vec3<bool>(false, true, true)), Struct_4(vec2<u32>(61500u, 4294967295u), -465f, vec4<f32>(1162f, 1227f, -1000f, -1411f), true, vec3<bool>(false, true, true)), Struct_4(vec2<u32>(8326u, 64864u), -955f, vec4<f32>(-1423f, -881f, -148f, -803f), true, vec3<bool>(true, true, true)), Struct_4(vec2<u32>(20303u, 104706u), -804f, vec4<f32>(-1017f, -1040f, -976f, 1900f), false, vec3<bool>(true, true, true)), Struct_4(vec2<u32>(857u, 1u), -1506f, vec4<f32>(964f, 1000f, -1386f, 447f), true, vec3<bool>(true, false, false)), Struct_4(vec2<u32>(5588u, 1u), 513f, vec4<f32>(-1337f, -1050f, -608f, -1598f), false, vec3<bool>(true, true, true)), Struct_4(vec2<u32>(0u, 21792u), -2243f, vec4<f32>(-2632f, -738f, 283f, 901f), true, vec3<bool>(true, true, true)), Struct_4(vec2<u32>(58830u, 86368u), 983f, vec4<f32>(917f, -660f, -1568f, 1000f), true, vec3<bool>(false, true, true)), Struct_4(vec2<u32>(0u, 1u), -463f, vec4<f32>(1085f, 202f, -999f, 172f), false, vec3<bool>(true, false, true)));

var<private> global2: array<Struct_2, 19> = array<Struct_2, 19>(Struct_2(Struct_1(true, vec3<bool>(false, false, false), false, vec2<u32>(1u, 0u), -791f), -1080f, Struct_1(true, vec3<bool>(false, false, true), true, vec2<u32>(63579u, 96080u), -1901f), 770f, true), Struct_2(Struct_1(false, vec3<bool>(true, true, true), false, vec2<u32>(103130u, 28320u), 260f), -138f, Struct_1(true, vec3<bool>(true, true, false), true, vec2<u32>(53991u, 51062u), 379f), 1000f, false), Struct_2(Struct_1(false, vec3<bool>(true, false, true), false, vec2<u32>(127614u, 60719u), -1923f), 2101f, Struct_1(true, vec3<bool>(true, false, true), false, vec2<u32>(37363u, 4294967295u), -243f), -1122f, false), Struct_2(Struct_1(true, vec3<bool>(false, false, false), false, vec2<u32>(15733u, 76697u), 1419f), 890f, Struct_1(false, vec3<bool>(true, true, true), false, vec2<u32>(0u, 4294967295u), -1107f), -2408f, true), Struct_2(Struct_1(false, vec3<bool>(true, false, false), true, vec2<u32>(36527u, 56141u), 569f), 1267f, Struct_1(false, vec3<bool>(false, false, true), true, vec2<u32>(4294967295u, 1u), -1000f), -1503f, true), Struct_2(Struct_1(false, vec3<bool>(false, false, false), false, vec2<u32>(16927u, 0u), -2005f), 446f, Struct_1(true, vec3<bool>(false, true, false), true, vec2<u32>(5678u, 1u), 572f), 152f, true), Struct_2(Struct_1(true, vec3<bool>(false, false, false), false, vec2<u32>(1u, 4294967295u), -366f), -1242f, Struct_1(false, vec3<bool>(true, true, false), false, vec2<u32>(27385u, 34219u), 819f), -1000f, false), Struct_2(Struct_1(true, vec3<bool>(false, false, false), true, vec2<u32>(70292u, 0u), -225f), 482f, Struct_1(true, vec3<bool>(false, false, true), false, vec2<u32>(0u, 0u), 740f), -821f, false), Struct_2(Struct_1(true, vec3<bool>(true, true, false), false, vec2<u32>(0u, 63843u), -1336f), 242f, Struct_1(false, vec3<bool>(false, true, true), false, vec2<u32>(62776u, 1u), -117f), -1000f, false), Struct_2(Struct_1(true, vec3<bool>(false, true, true), true, vec2<u32>(0u, 0u), 190f), 1305f, Struct_1(true, vec3<bool>(true, false, true), true, vec2<u32>(24750u, 46356u), -806f), -755f, true), Struct_2(Struct_1(true, vec3<bool>(false, false, true), false, vec2<u32>(5028u, 30704u), 879f), 2061f, Struct_1(true, vec3<bool>(false, true, true), false, vec2<u32>(1u, 1960u), 290f), -472f, false), Struct_2(Struct_1(false, vec3<bool>(true, true, true), true, vec2<u32>(0u, 281u), -1480f), 359f, Struct_1(true, vec3<bool>(true, false, true), true, vec2<u32>(0u, 59103u), -787f), -1216f, true), Struct_2(Struct_1(true, vec3<bool>(true, true, true), true, vec2<u32>(0u, 1u), 130f), 197f, Struct_1(false, vec3<bool>(false, true, false), true, vec2<u32>(19790u, 54187u), -438f), 1000f, true), Struct_2(Struct_1(false, vec3<bool>(false, true, true), false, vec2<u32>(50508u, 0u), -202f), -1425f, Struct_1(false, vec3<bool>(false, false, false), true, vec2<u32>(4294967295u, 619u), 1712f), 323f, false), Struct_2(Struct_1(true, vec3<bool>(true, false, false), true, vec2<u32>(1750u, 4294967295u), -1000f), 916f, Struct_1(false, vec3<bool>(false, true, false), false, vec2<u32>(18302u, 4294967295u), -744f), 1000f, false), Struct_2(Struct_1(false, vec3<bool>(true, true, true), false, vec2<u32>(0u, 8007u), -216f), 1503f, Struct_1(false, vec3<bool>(true, false, true), false, vec2<u32>(4294967295u, 0u), -1000f), -440f, true), Struct_2(Struct_1(true, vec3<bool>(false, false, false), false, vec2<u32>(11564u, 0u), 755f), -752f, Struct_1(false, vec3<bool>(true, false, true), false, vec2<u32>(7345u, 98745u), -552f), 278f, false), Struct_2(Struct_1(false, vec3<bool>(false, true, true), true, vec2<u32>(0u, 20064u), -655f), 875f, Struct_1(false, vec3<bool>(false, false, false), false, vec2<u32>(4294967295u, 26188u), 1944f), 399f, true), Struct_2(Struct_1(true, vec3<bool>(true, true, false), false, vec2<u32>(44580u, 0u), 194f), 1197f, Struct_1(true, vec3<bool>(true, true, true), true, vec2<u32>(4294967295u, 4294967295u), 1000f), -2409f, true));

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> vec4<bool> {
    var var_0 = abs(vec4<i32>(30510i, u_input.a.x, _wgslsmith_dot_vec2_i32(u_input.a, ~vec2<i32>(u_input.a.x, u_input.a.x) | u_input.a), 67217i));
    let var_1 = !(!vec3<bool>(global0.x, !global0.x & (true == global0.x), -2147483647i != abs(u_input.a.x)));
    var var_2 = _wgslsmith_div_f32(-797f, -1132f);
    var_0 = select(select(firstTrailingBit(abs(vec4<i32>(2147483647i, u_input.a.x, 1i, var_0.x))), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.a.x, 39793i, 1i, -10676i), min(vec4<i32>(31685i, u_input.a.x, u_input.a.x, 54179i), vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, u_input.a.x))), true) ^ vec4<i32>(1i, u_input.a.x, _wgslsmith_mod_i32(-var_0.x, -1i | var_0.x), ~1i), select(vec4<i32>(firstTrailingBit(u_input.a.x), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, u_input.a.x)), -var_0.x, var_0.x), vec4<i32>(_wgslsmith_add_i32(u_input.a.x, 9882i), -(i32(-1i) * -1i), -var_0.x, -18513i), select(!(!vec4<bool>(global0.x, true, true, var_1.x)), vec4<bool>(true, true, !global0.x, all(var_1)), all(select(var_1, vec3<bool>(global0.x, true, global0.x), false)))), select(select(!(!vec4<bool>(false, var_1.x, global0.x, var_1.x)), !vec4<bool>(global0.x, false, var_1.x, global0.x), !all(var_1)), vec4<bool>(var_1.x != var_1.x, (u_input.a.x > 6393i) | (true || global0.x), true, !(-4886i < var_0.x)), var_1.x || true));
    var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)) - 856f))));
    return select(vec4<bool>(false, all(vec4<bool>(var_1.x, true, !global0.x, all(var_1))), false, any(!(!vec3<bool>(global0.x, false, true)))), select(vec4<bool>(!select(global0.x, global0.x, false), any(vec4<bool>(false, var_1.x, var_1.x, var_1.x)), u_input.a.x >= u_input.a.x, global0.x == global0.x), vec4<bool>(true, global0.x, true, global0.x), select(!select(vec4<bool>(global0.x, false, true, global0.x), vec4<bool>(var_1.x, true, false, false), global0.x), vec4<bool>(false, var_1.x, true, global0.x), select(select(vec4<bool>(false, true, true, global0.x), vec4<bool>(global0.x, false, global0.x, true), global0.x), vec4<bool>(true, global0.x, global0.x, true), false))), vec4<bool>(false, 2254f < _wgslsmith_f_op_f32(ceil(-994f)), select(any(!vec3<bool>(var_1.x, global0.x, global0.x)), _wgslsmith_dot_vec3_i32(var_0.zyx, var_0.zxz) == var_0.x, select(false, var_1.x, global0.x)), false));
}

fn func_4(arg_0: f32, arg_1: Struct_3, arg_2: Struct_2, arg_3: bool) -> f32 {
    global2 = array<Struct_2, 19>();
    var var_0 = u_input.b | ~min(vec2<u32>(1u, u_input.b.x | u_input.b.x), u_input.b);
    let var_1 = vec4<bool>(any(!select(!arg_1.a.wwy, vec3<bool>(true, true, true), all(arg_1.a))), true, true, all(select(vec3<bool>(any(arg_1.a), arg_3, !arg_1.b.c), vec3<bool>(global0.x, all(arg_1.a), arg_3), !(!arg_2.a.b))));
    global1 = array<Struct_4, 10>();
    var var_2 = _wgslsmith_dot_vec2_i32(u_input.a >> (countOneBits(_wgslsmith_sub_vec2_u32(~u_input.b, vec2<u32>(u_input.b.x, 1u) & vec2<u32>(var_0.x, 12874u))) % vec2<u32>(32u)), vec2<i32>(22875i, _wgslsmith_mult_i32(u_input.a.x, ~(~u_input.a.x))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(arg_0 + _wgslsmith_f_op_f32(arg_2.c.e * _wgslsmith_f_op_f32(1000f + arg_2.b))))) + _wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

fn func_2(arg_0: bool, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> vec3<bool> {
    var var_0 = arg_3.e;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.e, _wgslsmith_f_op_f32(abs(arg_1.x))));
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(arg_1))));
    let var_3 = vec4<bool>(arg_0, u_input.a.x > -_wgslsmith_div_i32(-u_input.a.x, abs(arg_2)), _wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - 242f)), Struct_3(func_3(), Struct_1(arg_0, arg_3.b, false, u_input.b, -338f), 74676u, reverseBits(vec3<u32>(arg_3.d.x, 52368u, u_input.b.x))), Struct_2(arg_3, 365f, Struct_1(global0.x, vec3<bool>(arg_3.c, true, true), true, u_input.b, var_2.x), -1188f, true), arg_0)) <= -102f, !any(func_3()));
    let var_4 = u_input.a.x;
    return select(vec3<bool>(!global0.x, var_3.x, arg_0), !(!(!select(vec3<bool>(false, true, arg_3.c), vec3<bool>(arg_0, false, false), global0.x))), vec3<bool>(false, !any(vec2<bool>(var_3.x, true)), global0.x));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: bool) -> i32 {
    var var_0 = vec4<bool>(arg_1, false, all(global0.xx), true || global0.x);
    let var_1 = _wgslsmith_add_vec2_i32(firstTrailingBit(u_input.a), vec2<i32>(u_input.a.x, min(_wgslsmith_sub_i32(countOneBits(u_input.a.x), _wgslsmith_div_i32(2147483647i, u_input.a.x)), 1i)));
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(u_input.b.x, _wgslsmith_add_u32(select(0u, arg_0.d.x, true), arg_0.d.x), (u_input.b.x >> (4294967295u % 32u)) & ~41406u) ^ _wgslsmith_mod_u32(~_wgslsmith_div_u32(41704u, u_input.b.x), ~arg_0.d.x), ~1u >> (arg_0.d.x % 32u)), 19u)];
    global2 = array<Struct_2, 19>();
    var var_3 = countOneBits(~(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.d.x, u_input.b.x, arg_0.d.x), vec3<u32>(var_2.a.d.x, 4294967295u, arg_0.d.x))) | ~(~vec3<u32>(54895u, var_2.a.d.x, var_2.c.d.x))));
    return _wgslsmith_mult_i32(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.a.x ^ u_input.a.x, -var_1.x) << ((var_2.a.d.x >> (~var_3.x % 32u)) % 32u), ~var_1.x), -(~min(_wgslsmith_add_i32(var_1.x, u_input.a.x), u_input.a.x)));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_4, arg_3: bool) -> vec4<i32> {
    global0 = select(!select(vec3<bool>(!global0.x, arg_2.b != arg_1.b.e, u_input.a.x == u_input.a.x), !arg_2.e, !select(vec3<bool>(false, false, arg_3), arg_1.a.zxw, vec3<bool>(arg_3, true, arg_0.x))), arg_2.e, arg_0.xxz);
    var var_0 = firstLeadingBit(7287u & u_input.b.x);
    global0 = arg_1.a.zyy;
    var var_1 = _wgslsmith_div_vec3_f32(arg_2.c.wzy, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1068f, arg_1.b.e, 1368f), vec3<f32>(arg_1.b.e, 459f, -775f), false))) - vec3<f32>(_wgslsmith_f_op_f32(arg_1.b.e - 430f), _wgslsmith_f_op_f32(abs(-304f)), arg_1.b.e)))));
    let var_2 = ~_wgslsmith_add_u32(arg_1.c, select(u_input.b.x, _wgslsmith_mod_u32(_wgslsmith_mult_u32(0u, arg_1.d.x), u_input.b.x ^ arg_2.a.x), !(!arg_3)));
    return vec4<i32>(func_5(Struct_1(true, func_2(global0.x, arg_2.c.wzx, 0i, Struct_1(arg_2.e.x, vec3<bool>(false, arg_2.d, arg_0.x), true, vec2<u32>(var_2, var_2), arg_1.b.e)), !arg_0.x, ~u_input.b, _wgslsmith_f_op_f32(-873f - -690f)), arg_1.a.x, false) | firstTrailingBit(u_input.a.x), _wgslsmith_dot_vec3_i32(vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(u_input.a.x, u_input.a.x)), -u_input.a.x) ^ ~_wgslsmith_mult_vec3_i32(vec3<i32>(-1i, u_input.a.x, -2147483647i), vec3<i32>(u_input.a.x, 0i, -1i)), -(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, 25225i, u_input.a.x), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x)))), u_input.a.x, -21946i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~0u);
    var var_1 = ~func_1(vec4<bool>(false || !global0.x, false, true, ~u_input.b.x < u_input.b.x), Struct_3(vec4<bool>(u_input.a.x > u_input.a.x, true, true, global0.x | false), Struct_1(all(vec3<bool>(false, true, false)), vec3<bool>(true, false, global0.x), global0.x, ~u_input.b, 204f), u_input.b.x, ~(~vec3<u32>(u_input.b.x, u_input.b.x, 4294967295u))), global1[_wgslsmith_index_u32(u_input.b.x, 10u)], false);
    let var_2 = Struct_1(!func_3().x, !vec3<bool>(true, any(vec4<bool>(global0.x, global0.x, true, global0.x)), global0.x), global0.x, ~u_input.b, _wgslsmith_f_op_f32(-535f + _wgslsmith_f_op_f32(f32(-1f) * -1248f)));
    var var_3 = global2[_wgslsmith_index_u32(abs(u_input.b.x | 1u), 19u)];
    var var_4 = func_2(all(vec3<bool>(false, !var_2.c, any(var_3.c.b))) | all(select(!vec4<bool>(true, global0.x, true, false), select(vec4<bool>(var_3.a.b.x, false, true, true), vec4<bool>(var_3.e, global0.x, var_2.b.x, true), var_3.e), true)), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.b, -581f, 406f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e, var_3.d, var_2.e) + vec3<f32>(-700f, 861f, var_3.d)) * vec3<f32>(var_3.a.e, var_3.d, var_3.c.e)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.e, _wgslsmith_f_op_f32(step(109f, 419f)), _wgslsmith_f_op_f32(floor(var_2.e)))), vec3<bool>(all(vec3<bool>(var_2.a, true, var_3.e)), true, var_2.b.x))), func_5(Struct_1(var_3.a.a, var_2.b, global0.x, reverseBits(~vec2<u32>(var_3.c.d.x, var_3.a.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.d) - _wgslsmith_f_op_f32(step(var_3.b, -419f)))), var_3.c.b.x, true), Struct_1(global0.x, !select(func_3().wyy, var_3.a.b, !var_2.b), all(!(!vec3<bool>(var_2.c, true, true))), _wgslsmith_div_vec2_u32(firstLeadingBit(~vec2<u32>(u_input.b.x, var_2.d.x)), reverseBits(u_input.b)), 1218f)).xx;
    let x = u_input.a;
    s_output = StorageBuffer(var_3.c.d, vec2<i32>(-5249i, u_input.a.x << (_wgslsmith_sub_u32(25177u, var_2.d.x) % 32u)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1210f, _wgslsmith_f_op_f32(sign(1297f)), -1286f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(306f, var_3.b, var_2.e))))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-888f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_3.d))), 453f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e + var_2.e))))), vec4<u32>(~75324u, _wgslsmith_div_u32(u_input.b.x, ~58805u) << (_wgslsmith_add_u32(var_2.d.x, 449u) % 32u), reverseBits(~select(1u, 79727u, var_4.x)), _wgslsmith_mult_u32(u_input.b.x, var_2.d.x)));
}

