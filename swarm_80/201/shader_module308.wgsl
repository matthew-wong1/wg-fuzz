struct Struct_1 {
    a: bool,
    b: i32,
    c: vec3<i32>,
    d: bool,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec4<f32>,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: f32,
    c: vec2<bool>,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 11>;

var<private> global1: Struct_3 = Struct_3(29889i, -20052i, vec2<u32>(1u, 62977u), Struct_2(vec4<u32>(6932u, 0u, 0u, 4294967295u), vec4<f32>(-140f, 937f, 377f, 213f), true, Struct_1(false, 62030i, vec3<i32>(-14412i, i32(-2147483648), -60924i), false), Struct_1(false, 57431i, vec3<i32>(2147483647i, 22532i, 2147483647i), true)), Struct_2(vec4<u32>(0u, 4294967295u, 1u, 4294967295u), vec4<f32>(356f, 1721f, -769f, -1048f), false, Struct_1(false, 1i, vec3<i32>(0i, 1i, 26625i), false), Struct_1(false, 2147483647i, vec3<i32>(1i, -30602i, -53417i), true)));

var<private> global2: array<f32, 8> = array<f32, 8>(780f, -928f, 559f, -410f, -798f, 102f, -717f, 1425f);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1) -> vec4<bool> {
    let var_0 = vec3<u32>(global1.d.a.x, abs(countOneBits(global1.e.a.x)), ~_wgslsmith_sub_u32(~41626u, _wgslsmith_div_u32(global1.c.x, 16239u | global1.e.a.x)));
    var var_1 = Struct_3(u_input.a.x, ~(~0i), ~_wgslsmith_sub_vec2_u32(~vec2<u32>(9640u, global1.d.a.x), vec2<u32>(global1.c.x, 0u)) ^ (firstLeadingBit(var_0.xy) | vec2<u32>(global1.e.a.x, 22730u)), global1.e, global1.e);
    var_1 = Struct_3(_wgslsmith_dot_vec2_i32(global1.d.d.c.xx, _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, 41063i) ^ var_1.e.d.c.yz, u_input.a.yz, u_input.a.yz), min(arg_0.c.xx, _wgslsmith_div_vec2_i32(vec2<i32>(u_input.a.x, 2147483647i), arg_0.c.zx)))), min(-1i, min(~_wgslsmith_clamp_i32(global1.a, 19895i, arg_0.c.x), u_input.a.x)), ~(~_wgslsmith_add_vec2_u32(~var_1.d.a.xz, vec2<u32>(16890u, var_0.x))), var_1.d, var_1.e);
    let var_2 = ~abs(global1.e.a.x);
    var var_3 = Struct_4(~vec3<u32>(var_0.x, _wgslsmith_div_u32(~32360u, 43724u), _wgslsmith_sub_u32(0u, _wgslsmith_div_u32(var_1.d.a.x, var_1.e.a.x))), var_1.e.b.x, vec2<bool>(true, _wgslsmith_f_op_f32(min(var_1.d.b.x, _wgslsmith_f_op_f32(global1.e.b.x - global1.e.b.x))) != _wgslsmith_f_op_f32(-1991f - _wgslsmith_f_op_f32(round(global1.e.b.x)))), true);
    return !vec4<bool>(false & arg_0.d, true, !global1.e.e.d, any(vec2<bool>(true, all(vec3<bool>(var_1.d.d.a, true, global1.d.d.a)))));
}

fn func_2(arg_0: u32, arg_1: bool, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    let var_0 = !select(!select(vec4<bool>(true, true, arg_3, false), func_3(Struct_1(false, 16730i, vec3<i32>(global1.e.e.b, -2147483647i, -1i), arg_1)), vec4<bool>(true, false, global1.e.d.a, true)), select(!vec4<bool>(true, arg_1, true, global1.e.d.a), vec4<bool>(true, arg_1, true, false), !func_3(global0[_wgslsmith_index_u32(arg_0, 11u)]).x), select(vec4<bool>(all(vec4<bool>(true, false, false, arg_3)), arg_3, arg_0 < 62815u, false), !vec4<bool>(arg_1, global1.d.c, true, global1.e.c), true));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_mult_u32(~(~14700u), global1.e.a.x), 11u)];
    global1 = Struct_3(~41781i, -2147483647i << (~arg_0 % 32u), _wgslsmith_mult_vec2_u32(global1.c, vec2<u32>(1u, _wgslsmith_mult_u32(~45748u, global1.c.x))), Struct_2(~(~max(vec4<u32>(37901u, global1.c.x, arg_0, 98200u), vec4<u32>(arg_0, global1.c.x, global1.d.a.x, global1.c.x))), vec4<f32>(1501f, 1000f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(-790f)))), global2[_wgslsmith_index_u32(min(0u, 13009u), 8u)]), any(vec2<bool>(false, global1.e.d.a)), global0[_wgslsmith_index_u32(arg_0, 11u)], global1.e.d), global1.d);
    var var_2 = Struct_3(-2147483647i, global1.b, max(firstLeadingBit(~vec2<u32>(arg_0, arg_0)), ~vec2<u32>(global1.d.a.x, abs(global1.c.x))), global1.d, Struct_2(countOneBits(~(~global1.d.a)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1208f, arg_2.x, 1000f, arg_2.x) * global1.d.b) - _wgslsmith_f_op_vec4_f32(vec4<f32>(589f, global1.e.b.x, 887f, arg_2.x) * vec4<f32>(1949f, -292f, global1.d.b.x, arg_2.x))), _wgslsmith_f_op_vec4_f32(-global1.e.b), var_0)), arg_3, global0[_wgslsmith_index_u32(88066u, 11u)], global0[_wgslsmith_index_u32(30960u, 11u)]));
    global1 = Struct_3(var_1.b, abs(var_2.e.d.b), reverseBits(var_2.e.a.zz) | countOneBits((vec2<u32>(global1.e.a.x, 1u) ^ vec2<u32>(var_2.d.a.x, 1u)) ^ vec2<u32>(15693u, 0u)), var_2.d, Struct_2(vec4<u32>(~4294967295u, _wgslsmith_mod_u32(arg_0 >> (global1.e.a.x % 32u), _wgslsmith_dot_vec2_u32(global1.e.a.ww, global1.c)), 28888u, ~arg_0), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-2069f, global2[_wgslsmith_index_u32(1u, 8u)], 1653f, 2124f) + vec4<f32>(-709f, -601f, global1.e.b.x, var_2.e.b.x)), vec4<f32>(-320f, -964f, var_2.e.b.x, 392f)) * _wgslsmith_f_op_vec4_f32(sign(var_2.e.b))), false, Struct_1(var_0.x, -global1.b, ~u_input.a.zzz, arg_3), Struct_1(true, u_input.a.x, vec3<i32>(_wgslsmith_sub_i32(global1.a, u_input.a.x), 22536i, var_1.b), var_0.x)));
    return arg_2.x;
}

fn func_1() -> Struct_3 {
    var var_0 = global1.d;
    global2 = array<f32, 8>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(682f, 1025f, -380f, _wgslsmith_f_op_f32(func_2(~_wgslsmith_mod_u32(13255u, var_0.a.x), all(vec3<bool>(global1.e.e.d, false, true)) && false, vec3<f32>(_wgslsmith_f_op_f32(min(var_0.b.x, 662f)), -1000f, global1.e.b.x), true))));
    var var_2 = Struct_3(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(-u_input.a.yxz, reverseBits(global1.d.e.c), ~global1.d.e.c), ~(-vec3<i32>(2147483647i, global1.d.d.c.x, u_input.a.x)))), _wgslsmith_sub_i32(~_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 55790i), var_0.e.c.xz), _wgslsmith_add_i32(var_0.d.b, -1i)) ^ ~global1.a, countOneBits(~select(_wgslsmith_add_vec2_u32(global1.e.a.wz, global1.c), firstTrailingBit(vec2<u32>(24182u, 0u)), select(vec2<bool>(global1.e.e.a, global1.d.c), vec2<bool>(true, global1.d.e.a), true))), Struct_2(select(global1.d.a, ~_wgslsmith_add_vec4_u32(global1.e.a, vec4<u32>(8127u, var_0.a.x, 15912u, global1.e.a.x)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.e.d, true, true, true), vec4<bool>(false, global1.e.d.a, true, var_0.d.d), true), true)), vec4<f32>(var_1.x, _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_1.x, var_1.x), _wgslsmith_f_op_f32(-var_1.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -492f), _wgslsmith_f_op_f32(-530f * -1179f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(var_1.x)) - global1.d.b.x)), all(!vec2<bool>(var_0.d.d, false)), global1.e.e, var_0.d), Struct_2(vec4<u32>(abs(countOneBits(1u)), _wgslsmith_mod_u32(~48197u, ~global1.d.a.x), global1.e.a.x, var_0.a.x), vec4<f32>(-1583f, _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(1u, 8u)]), _wgslsmith_f_op_f32(482f + _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(21502u, 8u)])), _wgslsmith_f_op_f32(f32(-1f) * -845f)), any(!select(vec4<bool>(true, true, var_0.e.a, false), vec4<bool>(global1.e.d.d, var_0.c, var_0.e.d, global1.e.e.d), vec4<bool>(var_0.c, global1.e.d.d, global1.d.e.a, true))), var_0.d, Struct_1(true, reverseBits(~global1.b), abs(vec3<i32>(global1.d.d.c.x, var_0.d.b, var_0.d.c.x)) | ~vec3<i32>(var_0.e.c.x, global1.b, global1.d.d.c.x), global1.d.e.a)));
    var var_3 = vec4<f32>(var_2.e.b.x, -666f, global1.e.b.x, var_0.b.x);
    return Struct_3(_wgslsmith_dot_vec2_i32(vec2<i32>(global1.b, 36850i), vec2<i32>(_wgslsmith_sub_i32(global1.b, -29851i), _wgslsmith_mod_i32(u_input.a.x, -16254i))) & global1.e.e.b, _wgslsmith_mult_i32(58077i, reverseBits(-var_2.a)), ~var_2.c ^ (min(var_2.e.a.ww, vec2<u32>(33081u, 69413u)) | ~min(vec2<u32>(4294967295u, var_2.c.x), var_2.e.a.xx)), Struct_2(vec4<u32>(abs(1u), var_0.a.x ^ ~global1.c.x, (18117u << (var_2.c.x % 32u)) ^ _wgslsmith_mod_u32(var_2.c.x, var_2.c.x), var_2.c.x ^ 40761u), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -195f), _wgslsmith_div_f32(-797f, -994f), 1000f, _wgslsmith_f_op_f32(1373f + global1.e.b.x)))), any(!func_3(global0[_wgslsmith_index_u32(global1.c.x, 11u)])), Struct_1(var_0.d.a, u_input.a.x & _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, -1765i, var_2.d.e.c.x), vec4<i32>(global1.a, var_0.e.b, -9225i, 25679i)), ~vec3<i32>(var_0.e.c.x, var_0.e.c.x, u_input.a.x), false), Struct_1(!var_2.e.c, u_input.a.x, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(9907i, 67230i, var_0.e.b, -1i), u_input.a), _wgslsmith_div_i32(2147483647i, var_2.d.d.c.x), abs(1i)), var_2.d.e.a || (global1.d.b.x == var_3.x))), Struct_2(~vec4<u32>(~global1.d.a.x, global1.c.x, var_2.c.x, abs(1u)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_2.e.b)) + _wgslsmith_f_op_vec4_f32(var_2.e.b - vec4<f32>(796f, -1840f, 557f, var_1.x))) * _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_3.x, 761f, var_3.x, 826f)))), 916f < _wgslsmith_f_op_f32(floor(-982f)), var_2.e.d, var_0.e));
}

fn func_4(arg_0: Struct_3, arg_1: bool, arg_2: i32, arg_3: vec4<u32>) -> Struct_3 {
    let var_0 = abs(~(-2147483647i));
    var var_1 = Struct_3(global1.d.e.b << (0u % 32u), firstLeadingBit(0i), firstLeadingBit(~countOneBits(_wgslsmith_div_vec2_u32(arg_3.zz, arg_3.zx))), global1.d, Struct_2(abs(arg_0.e.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-512f, arg_0.d.b.x, 342f, global2[_wgslsmith_index_u32(0u, 8u)]) * vec4<f32>(2385f, -1574f, -1216f, 1587f)) - vec4<f32>(arg_0.e.b.x, global1.d.b.x, 568f, _wgslsmith_f_op_f32(-1219f - 1056f))), func_3(func_1().e.d).x, func_1().e.d, arg_0.e.e));
    global0 = array<Struct_1, 11>();
    var var_2 = arg_0;
    let var_3 = firstLeadingBit(-1i);
    return func_1();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<f32>(539f, global1.d.b.x);
    global1 = func_4(func_1(), all(!vec3<bool>(true, false || global1.e.d.a, !global1.d.d.d)), 34065i, ~(~(~vec4<u32>(0u, global1.c.x, 4294967295u, global1.c.x))));
    var_0 = global1.d.b.xy;
    let var_1 = global1.d.c;
    let var_2 = min(u_input.a.wy, u_input.a.ww);
    var var_3 = _wgslsmith_div_vec2_i32(abs(vec2<i32>(_wgslsmith_div_i32(u_input.a.x, 34969i) << (reverseBits(global1.d.a.x) % 32u), ~(-15033i))), ~vec2<i32>(_wgslsmith_sub_i32(1i, 1i), -12599i));
    var var_4 = _wgslsmith_f_op_vec2_f32(-global1.d.b.wy);
    var var_5 = Struct_4(select(~(~global1.d.a.wxx ^ ~global1.d.a.ywz), vec3<u32>(0u, 8762u, ~global1.d.a.x), !vec3<bool>(any(vec2<bool>(global1.e.d.a, true)), var_4.x >= global2[_wgslsmith_index_u32(global1.e.a.x, 8u)], false)), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_mult_u32(global1.c.x, ~global1.c.x), 8u)] * -2202f), !vec2<bool>(global1.e.c, global1.d.d.d), _wgslsmith_add_i32(global1.e.d.c.x, -2147483647i) < ~(-1i));
    var var_6 = var_5.c;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(_wgslsmith_sub_vec2_u32(global1.d.a.xy, vec2<u32>(global1.c.x, var_5.a.x) >> (vec2<u32>(4294967295u, var_5.a.x) % vec2<u32>(32u)))), _wgslsmith_sub_u32(var_5.a.x ^ global1.d.a.x, var_5.a.x), min(_wgslsmith_mod_vec4_i32(max(vec4<i32>(global1.e.d.b, 2147483647i, -30625i, 36408i) << (vec4<u32>(var_5.a.x, 29169u, global1.e.a.x, 1u) % vec4<u32>(32u)), u_input.a), vec4<i32>(firstTrailingBit(global1.e.d.b), 0i, 1i, -u_input.a.x)), abs(u_input.a)));
}

