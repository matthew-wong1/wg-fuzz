struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: i32,
}

struct Struct_3 {
    a: vec3<f32>,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec3<i32>,
    c: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = 140f;

var<private> global1: array<Struct_1, 13> = array<Struct_1, 13>(Struct_1(vec3<u32>(1u, 0u, 18601u)), Struct_1(vec3<u32>(33446u, 1u, 58528u)), Struct_1(vec3<u32>(4294967295u, 6380u, 1u)), Struct_1(vec3<u32>(0u, 80586u, 133469u)), Struct_1(vec3<u32>(4294967295u, 16968u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 16323u)), Struct_1(vec3<u32>(75104u, 1u, 0u)), Struct_1(vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(4294967295u, 4294967295u, 36345u)), Struct_1(vec3<u32>(56230u, 1u, 40745u)), Struct_1(vec3<u32>(4294967295u, 0u, 99553u)), Struct_1(vec3<u32>(114682u, 20078u, 1u)), Struct_1(vec3<u32>(63791u, 31339u, 4294967295u)));

var<private> global2: array<bool, 28> = array<bool, 28>(false, true, true, true, true, false, false, true, true, true, true, false, false, true, false, false, true, true, true, false, false, false, true, true, false, true, false, false);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> bool {
    global0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1333f + 191f) + _wgslsmith_f_op_f32(floor(1000f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2363f * -917f))) - 309f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(987f + 330f) - _wgslsmith_f_op_f32(f32(-1f) * -623f)) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -207f)))) + _wgslsmith_f_op_f32(-1000f + 1419f)));
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(574f, -1000f) * vec2<f32>(495f, -125f)))))) * _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(2968f - -162f), -1709f), vec2<f32>(_wgslsmith_f_op_f32(trunc(284f)), -169f), global2[_wgslsmith_index_u32(~4294967295u, 28u)])))));
    return any(select(select(vec2<bool>(true, true), select(vec2<bool>(global2[_wgslsmith_index_u32(28273u, 28u)], false), vec2<bool>(global2[_wgslsmith_index_u32(60499u, 28u)], true), global2[_wgslsmith_index_u32(15444u, 28u)]), global2[_wgslsmith_index_u32(countOneBits(1u), 28u)]), vec2<bool>(global2[_wgslsmith_index_u32(~1u, 28u)], all(vec2<bool>(global2[_wgslsmith_index_u32(40073u, 28u)], false))), true)) && global2[_wgslsmith_index_u32((_wgslsmith_mult_u32(~0u, ~4294967295u) & max(19254u, firstTrailingBit(0u))) >> (~1u % 32u), 28u)];
}

fn func_4(arg_0: Struct_2, arg_1: u32) -> u32 {
    var var_0 = Struct_5(!(!arg_0.b.x), vec3<i32>(arg_0.c, firstLeadingBit(u_input.a.x), _wgslsmith_clamp_i32(_wgslsmith_div_i32(_wgslsmith_add_i32(arg_0.c, 1i), _wgslsmith_clamp_i32(u_input.a.x, 2147483647i, 1i)), reverseBits(~arg_0.c), _wgslsmith_div_i32(-2147483647i, 21712i) >> ((arg_0.a.a.x << (arg_1 % 32u)) % 32u))), 37198i);
    return arg_1;
}

fn func_2() -> u32 {
    let var_0 = global2[_wgslsmith_index_u32(func_4(Struct_2(global1[_wgslsmith_index_u32(1u, 13u)], !vec3<bool>(func_3(), true, false), _wgslsmith_mult_i32(_wgslsmith_mult_i32(u_input.a.x, ~(-28934i)), -31572i)), _wgslsmith_mod_u32(select(0u, _wgslsmith_add_u32(24468u, _wgslsmith_mult_u32(35931u, 50197u)), true), 594u)), 28u)];
    return 4294967295u;
}

fn func_5(arg_0: vec3<bool>, arg_1: u32, arg_2: vec3<u32>, arg_3: Struct_1) -> Struct_5 {
    global2 = array<bool, 28>();
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(373f, 341f, -1095f, -1000f))) * _wgslsmith_div_vec4_f32(vec4<f32>(270f, 1378f, 461f, -211f), vec4<f32>(-626f, 1436f, -1000f, 718f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1984f, 199f, 1356f, 2015f)))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-731f, 984f, 557f, 227f))) * vec4<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -836f))), 1143f, _wgslsmith_f_op_f32(-1425f + _wgslsmith_f_op_f32(127f * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1000f))))));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-528f + 363f)), -718f, _wgslsmith_f_op_f32(sign(231f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.x) * _wgslsmith_div_f32(-760f, -1493f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, 836f, var_0.x, var_0.x) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(var_0.x * var_0.x), _wgslsmith_f_op_f32(ceil(285f)), -338f, -1162f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, var_0.x, 1147f, var_0.x) * vec4<f32>(var_0.x, 1179f, var_0.x, var_0.x)) + vec4<f32>(var_0.x, 676f, -1292f, 1110f)))));
    var var_2 = ~_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, _wgslsmith_mult_i32(u_input.a.x, -2147483647i), i32(-1i) * -11396i, _wgslsmith_mult_i32(u_input.a.x, -1i)), _wgslsmith_sub_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(-4646i, -2147483647i, u_input.a.x, u_input.a.x), vec4<i32>(10970i, u_input.a.x, u_input.a.x, 2147483647i), u_input.a), abs(vec4<i32>(2147483647i, -6140i, -1i, 1i)))), ~(~(-u_input.a)));
    var var_3 = Struct_5(any(vec4<bool>(max(var_2.x, 296i) <= var_2.x, true, global2[_wgslsmith_index_u32(arg_3.a.x, 28u)], true)), (abs(select(vec3<i32>(var_2.x, var_2.x, -11026i), u_input.a.yyw, vec3<bool>(true, arg_0.x, true))) << (_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, arg_3.a.x, arg_1) << (arg_2 % vec3<u32>(32u)), abs(vec3<u32>(0u, arg_3.a.x, arg_3.a.x))) % vec3<u32>(32u))) ^ _wgslsmith_mult_vec3_i32(vec3<i32>(14802i, 1i, 1i), vec3<i32>(1i, 1i, var_2.x) << (arg_2 % vec3<u32>(32u))), 2147483647i);
    return Struct_5(true, vec3<i32>(var_3.b.x, 1i, ~var_2.x), -2147483647i);
}

fn func_6(arg_0: Struct_5, arg_1: vec4<bool>, arg_2: vec2<u32>) -> Struct_2 {
    let var_0 = u_input.a.zwy;
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 1231f)), -996f)), -936f));
    var var_1 = Struct_4(140f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-219f + -219f)))), Struct_2(global1[_wgslsmith_index_u32(abs(arg_2.x), 13u)], arg_1.xzw, 3088i));
    let var_2 = u_input.a;
    global2 = array<bool, 28>();
    return var_1.b;
}

fn func_1(arg_0: vec3<i32>, arg_1: i32) -> u32 {
    var var_0 = Struct_4(true, func_6(func_5(vec3<bool>(false, global2[_wgslsmith_index_u32(select(0u, 4294967295u, global2[_wgslsmith_index_u32(2126u, 28u)]), 28u)], global2[_wgslsmith_index_u32(1u, 28u)]), ~1u, vec3<u32>(func_2(), reverseBits(9820u), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 77462u))), global1[_wgslsmith_index_u32(~(~1u), 13u)]), select(select(!vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(9877u, 28u)], true), vec4<bool>(true, false, global2[_wgslsmith_index_u32(1u, 28u)], false), true), !(!vec4<bool>(global2[_wgslsmith_index_u32(1u, 28u)], false, false, global2[_wgslsmith_index_u32(0u, 28u)])), func_5(!vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 28u)], global2[_wgslsmith_index_u32(36578u, 28u)]), countOneBits(4294967295u), ~vec3<u32>(1u, 0u, 60977u), global1[_wgslsmith_index_u32(firstTrailingBit(935u), 13u)]).a), vec2<u32>(~4294967295u, _wgslsmith_clamp_u32(27349u, func_2(), 34290u))));
    var var_1 = _wgslsmith_mult_u32(var_0.b.a.a.x, var_0.b.a.a.x);
    var var_2 = -min(_wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, -54426i, u_input.a.x, u_input.a.x), vec4<i32>(var_0.b.c, arg_0.x, arg_0.x, var_0.b.c)), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a)), max(vec4<i32>(-1i, u_input.a.x, arg_1, var_0.b.c), _wgslsmith_sub_vec4_i32(u_input.a, u_input.a))), _wgslsmith_mod_vec4_i32(abs(u_input.a), vec4<i32>(41373i, firstTrailingBit(-3562i), arg_0.x, -arg_1)));
    var_2 = u_input.a;
    var var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-895f - 1590f))));
    return ~reverseBits(firstLeadingBit(var_0.b.a.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(-reverseBits(u_input.a.yyw), u_input.a.x);
    var var_1 = Struct_4(global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(var_0, var_0, var_0), _wgslsmith_sub_u32(11329u, var_0)), ~(~var_0)), 28u)], func_6(Struct_5(global2[_wgslsmith_index_u32(~(var_0 >> (1u % 32u)), 28u)], _wgslsmith_sub_vec3_i32(-u_input.a.wxx, _wgslsmith_mod_vec3_i32(u_input.a.ywx, u_input.a.xyx)), 16769i), !select(!vec4<bool>(true, global2[_wgslsmith_index_u32(var_0, 28u)], global2[_wgslsmith_index_u32(var_0, 28u)], false), vec4<bool>(true, global2[_wgslsmith_index_u32(56273u, 28u)], true, global2[_wgslsmith_index_u32(4294967295u, 28u)]), func_3()), min(vec2<u32>(63496u << (var_0 % 32u), ~var_0), ~(~vec2<u32>(46472u, 49971u)))));
    var var_2 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-464f, _wgslsmith_f_op_f32(step(1014f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(-1000f, 641f)))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1729f - 227f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(-1746f, _wgslsmith_f_op_f32(trunc(683f)), func_3()))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-478f * -1038f)) + -671f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-190f, _wgslsmith_f_op_f32(139f + 926f), all(var_1.b.b.zy)))), 629f, -617f));
    global1 = array<Struct_1, 13>();
    global1 = array<Struct_1, 13>();
    global0 = 1617f;
    global1 = array<Struct_1, 13>();
    global2 = array<bool, 28>();
    var var_3 = func_5(vec3<bool>(u_input.a.x <= _wgslsmith_mod_i32(1i, u_input.a.x), any(var_1.b.b) || false, !((1u ^ var_1.b.a.a.x) <= 1u)), ~(~16185u), _wgslsmith_clamp_vec3_u32(vec3<u32>(firstTrailingBit(0u), 0u, var_0), ~var_1.b.a.a, reverseBits(vec3<u32>(var_1.b.a.a.x, abs(var_1.b.a.a.x), 4294967295u))), func_6(Struct_5(-396f <= var_2.x, ~countOneBits(u_input.a.xzy), ~abs(u_input.a.x)), vec4<bool>(!all(vec3<bool>(true, false, true)), var_1.a, true, all(!vec3<bool>(false, false, global2[_wgslsmith_index_u32(0u, 28u)]))), ~firstLeadingBit(var_1.b.a.a.yz)).a);
    let x = u_input.a;
    s_output = StorageBuffer(0u, 1u, var_1.b.c, _wgslsmith_mod_vec3_i32(~var_3.b, vec3<i32>(_wgslsmith_div_i32(u_input.a.x, u_input.a.x) | -2147483647i, u_input.a.x, 0i)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_2.x)) - _wgslsmith_f_op_f32(var_2.x - 847f)), _wgslsmith_f_op_f32(-346f * -200f), _wgslsmith_f_op_f32(var_2.x - _wgslsmith_f_op_f32(max(var_2.x, var_2.x))))));
}

