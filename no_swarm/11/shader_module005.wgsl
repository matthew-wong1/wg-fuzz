struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec3<f32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<u32>(12763u, 3114u, 3909u, 90655u), -2569i, vec3<f32>(124f, 1650f, -1164f)), Struct_1(vec4<u32>(7753u, 4294967295u, 85256u, 0u), -17255i, vec3<f32>(-774f, 1156f, 732f)), Struct_1(vec4<u32>(30165u, 107523u, 51053u, 16165u), 0i, vec3<f32>(-140f, 653f, -1353f)), Struct_1(vec4<u32>(0u, 21243u, 4294967295u, 4294967295u), 2147483647i, vec3<f32>(1730f, 1132f, 1599f)), Struct_1(vec4<u32>(80386u, 4274u, 39077u, 30271u), -23654i, vec3<f32>(519f, 219f, 1926f)), Struct_1(vec4<u32>(20900u, 67826u, 4155u, 4294967295u), 1i, vec3<f32>(701f, -2086f, 2462f)), Struct_1(vec4<u32>(48646u, 4294967295u, 0u, 46039u), -45495i, vec3<f32>(1646f, 310f, 961f)), Struct_1(vec4<u32>(48718u, 1u, 62850u, 4294967295u), 4494i, vec3<f32>(1124f, -1862f, -954f)), Struct_1(vec4<u32>(0u, 4294967295u, 0u, 0u), -36091i, vec3<f32>(-582f, 159f, -1828f)), Struct_1(vec4<u32>(5683u, 4294967295u, 7959u, 4294967295u), -55049i, vec3<f32>(849f, 638f, -1075f)), Struct_1(vec4<u32>(0u, 4294967295u, 23637u, 4294967295u), i32(-2147483648), vec3<f32>(-958f, 763f, 345f)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 1u), 0i, vec3<f32>(103f, 123f, 258f)), Struct_1(vec4<u32>(9923u, 11313u, 76676u, 4294967295u), -19697i, vec3<f32>(1126f, 1023f, 972f)), Struct_1(vec4<u32>(112058u, 1u, 69310u, 4294967295u), i32(-2147483648), vec3<f32>(1000f, 1379f, 512f)), Struct_1(vec4<u32>(1u, 4294967295u, 19987u, 1u), -26549i, vec3<f32>(295f, -603f, -1195f)), Struct_1(vec4<u32>(11536u, 0u, 56513u, 1u), -48327i, vec3<f32>(310f, -118f, 1393f)), Struct_1(vec4<u32>(39575u, 0u, 57035u, 1u), 41592i, vec3<f32>(-1608f, 1543f, 873f)), Struct_1(vec4<u32>(1u, 78918u, 58154u, 4145u), 2147483647i, vec3<f32>(821f, -390f, -1000f)), Struct_1(vec4<u32>(3648u, 4294967295u, 4294967295u, 1u), -21729i, vec3<f32>(-2956f, -585f, 321f)), Struct_1(vec4<u32>(4294967295u, 76947u, 0u, 36u), 1i, vec3<f32>(-163f, 1000f, -662f)), Struct_1(vec4<u32>(13380u, 78560u, 1u, 9379u), 9904i, vec3<f32>(683f, -1057f, 1543f)), Struct_1(vec4<u32>(41415u, 57118u, 78850u, 55701u), 23249i, vec3<f32>(-651f, -1071f, -1107f)), Struct_1(vec4<u32>(0u, 1u, 1u, 11929u), -7137i, vec3<f32>(605f, 1051f, -973f)), Struct_1(vec4<u32>(22524u, 4294967295u, 10442u, 0u), -1i, vec3<f32>(1967f, -385f, -186f)), Struct_1(vec4<u32>(10567u, 7034u, 32996u, 4294967295u), -1i, vec3<f32>(2426f, -113f, -948f)), Struct_1(vec4<u32>(29365u, 4294967295u, 1u, 4294967295u), 51939i, vec3<f32>(-609f, 230f, -1265f)), Struct_1(vec4<u32>(4294967295u, 1u, 1u, 75496u), -1i, vec3<f32>(595f, -518f, -230f)), Struct_1(vec4<u32>(4294967295u, 84644u, 0u, 22906u), i32(-2147483648), vec3<f32>(-631f, -800f, 170f)), Struct_1(vec4<u32>(4294967295u, 16904u, 11804u, 31736u), i32(-2147483648), vec3<f32>(455f, 676f, -2286f)));

var<private> global1: f32 = -797f;

var<private> global2: u32 = 4294967295u;

var<private> global3: f32;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: i32, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    var var_0 = arg_2;
    var var_1 = ~(~(arg_2.a << (_wgslsmith_sub_u32(~21382u, var_0.a) % 32u)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1979f))) - arg_2.b));
    let var_3 = true;
    var var_4 = global0[_wgslsmith_index_u32(arg_2.a, 29u)];
    return countOneBits(abs(_wgslsmith_dot_vec4_u32(var_4.a, var_4.a)));
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_1(_wgslsmith_mod_vec4_u32(~select(vec4<u32>(41152u, 458u, 45610u, 25322u), vec4<u32>(1u, 1u, 1u, 1u), vec4<bool>(true, true, true, true)), vec4<u32>(0u, func_3(vec4<bool>(true, false, false, false), -26148i, Struct_2(1u, -1534f), Struct_2(4294967295u, -943f)) << (select(1u, 4294967295u, false) % 32u), ~(~93445u), _wgslsmith_add_u32(22517u >> (1u % 32u), abs(113813u)))), reverseBits(abs(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, arg_0, -1i, -12125i), vec4<i32>(-1i, -2147483647i, u_input.b, -11050i))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(round(1626f)), _wgslsmith_f_op_f32(floor(2274f)), _wgslsmith_div_f32(-433f, 437f)))));
    var var_1 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(firstTrailingBit(~(-1i)), 1i, 87690i, ~(~arg_0))), min(_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.b, arg_0, 11317i, var_0.b) >> (var_0.a % vec4<u32>(32u)), vec4<i32>(var_0.b, -1i, 39481i, -1i)) ^ countOneBits(vec4<i32>(var_0.b, arg_0, arg_0, var_0.b)), -countOneBits(vec4<i32>(u_input.b, 32562i, arg_0, var_0.b)) & select(-vec4<i32>(-42357i, -1i, var_0.b, 26962i), vec4<i32>(0i, var_0.b, var_0.b, var_0.b) | vec4<i32>(u_input.b, arg_0, var_0.b, u_input.b), vec4<bool>(false, false, true, true))));
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x - var_0.c.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(364f, var_0.c.x) - var_0.c.x))) * -1028f), var_0.c.x);
    let var_2 = Struct_1(select(var_0.a, var_0.a, vec4<bool>(true, true, true, true)), arg_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-var_0.c), var_0.c)));
    let var_3 = all(!vec4<bool>(true, true, all(vec2<bool>(false, true)), false));
    return Struct_1(firstTrailingBit(var_0.a), ~var_2.b, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(var_2.c.x, var_0.c.x))))), 835f, _wgslsmith_f_op_f32(-var_2.c.x)));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> f32 {
    global1 = _wgslsmith_f_op_f32(select(-1784f, _wgslsmith_f_op_f32(f32(-1f) * -756f), any(vec3<bool>(all(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, false))), false, (0u != arg_1.a.x) & (arg_1.a.x < 75895u)))));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.c.x));
    global0 = array<Struct_1, 29>();
    let var_0 = i32(-1i) * -2147483647i;
    let var_1 = select(vec4<bool>(any(select(vec2<bool>(false, false), vec2<bool>(true, true), false)), all(vec4<bool>(true, true, true, true)) && false, 26590i <= reverseBits(var_0), all(select(vec2<bool>(true, true), vec2<bool>(false, true), all(vec3<bool>(true, false, true))))), !vec4<bool>(all(vec3<bool>(true, true, true)), true, all(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false))), !select(true, false, false)), vec4<bool>(-var_0 <= _wgslsmith_sub_i32(~u_input.a, ~arg_0.b), false, any(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), true), all(vec2<bool>(false, false)))), !any(select(vec2<bool>(false, true), vec2<bool>(true, true), false))));
    return -246f;
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: vec4<f32>) -> vec3<u32> {
    global3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_1(_wgslsmith_mult_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(arg_1.a.x, arg_1.a.x, arg_1.a.x, arg_1.a.x), vec4<u32>(0u, 19964u, 69264u, 79056u)), arg_1.a), arg_1.b & 1i, vec3<f32>(_wgslsmith_f_op_f32(trunc(263f)), _wgslsmith_f_op_f32(f32(-1f) * -2003f), _wgslsmith_f_op_f32(-arg_1.c.x))), Struct_1(~_wgslsmith_clamp_vec4_u32(arg_1.a, vec4<u32>(1u, 1u, 4294967295u, 4873u), vec4<u32>(4294967295u, 5900u, 4294967295u, arg_1.a.x)), u_input.a, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.x, 263f, -1744f))))))));
    var var_0 = true;
    global2 = ~(~(~1u));
    global0 = array<Struct_1, 29>();
    var var_1 = _wgslsmith_f_op_f32(f32(-1f) * -1028f);
    return ~(~vec3<u32>(max(1u, ~3759u), 4294967295u, _wgslsmith_add_u32(arg_1.a.x, 0u) | (arg_1.a.x << (arg_1.a.x % 32u))));
}

fn func_1() -> vec3<u32> {
    global0 = array<Struct_1, 29>();
    global1 = -548f;
    var var_0 = 1i;
    let var_1 = _wgslsmith_mult_i32(u_input.a, u_input.b);
    var var_2 = ~u_input.b;
    return func_5(false, Struct_1(_wgslsmith_clamp_vec4_u32(vec4<u32>(~3941u, 1u, ~1u, 0u), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_clamp_vec4_u32(firstTrailingBit(vec4<u32>(4294967295u, 32329u, 29726u, 6280u)), vec4<u32>(4294967295u, 1u, 1u, 4294967295u), vec4<u32>(1u, 1u, 1u, 1u))), 8973i, vec3<f32>(_wgslsmith_f_op_f32(select(-1559f, -292f, true)), 1000f, -781f)), vec4<f32>(-2035f, 559f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1798f, -716f, true))) * _wgslsmith_f_op_f32(func_4(global0[_wgslsmith_index_u32(1u, 29u)], func_2(1i)))), 104f));
}

fn func_6(arg_0: vec3<u32>, arg_1: u32, arg_2: vec2<f32>) -> u32 {
    var var_0 = Struct_2(~func_2(_wgslsmith_div_i32(u_input.a, -803i)).a.x ^ _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(arg_0, _wgslsmith_add_vec3_u32(vec3<u32>(53754u, arg_1, arg_0.x), vec3<u32>(arg_0.x, arg_0.x, 26173u)), ~arg_0), abs(vec3<u32>(7537u, arg_1, arg_0.x))), _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(1425f, arg_2.x, any(vec3<bool>(false, false, true))))))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = ~select(_wgslsmith_mod_u32(1u, func_6(func_1(), ~37990u, vec2<f32>(-148f, -1620f))), ~1u, true);
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) - _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(-1882f))))))));
    var var_0 = vec3<f32>(-651f, _wgslsmith_f_op_f32(round(643f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(sign(426f))))));
    var var_1 = var_0.x;
    global2 = _wgslsmith_add_u32(1u, _wgslsmith_div_u32(~_wgslsmith_mult_u32(_wgslsmith_add_u32(37547u, 35929u), func_2(u_input.b).a.x), 1u | func_6(vec3<u32>(1u, 1u, 1u), 64180u, var_0.xx)));
    global2 = ~(~21742u);
    let x = u_input.a;
    s_output = StorageBuffer(min(~_wgslsmith_mod_vec4_i32(-vec4<i32>(u_input.a, -3234i, 2147483647i, -9779i), vec4<i32>(u_input.a, u_input.a, 2295i, u_input.b)), firstLeadingBit(firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a, u_input.a, -755i, -6614i), vec4<i32>(u_input.b, -44096i, 0i, u_input.a))))), u_input.a, select(vec2<u32>(1u, min(91557u, 31403u)), vec2<u32>(countOneBits(4294967295u), 22884u), vec2<bool>(true, true)) | func_1().yy, vec3<i32>(36429i, -2147483647i, 21821i), _wgslsmith_dot_vec2_u32(firstTrailingBit(~func_1().zx), vec2<u32>(0u, abs(32470u))));
}

