struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: f32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec4<i32>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec2<f32>,
    d: vec3<i32>,
    e: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 1u, 46724u, 11423u), vec4<u32>(67139u, 71085u, 9520u, 89511u), vec4<u32>(0u, 7151u, 27738u, 33521u), vec4<u32>(5548u, 45136u, 57593u, 13453u), vec4<u32>(18322u, 30889u, 80u, 4294967295u), vec4<u32>(0u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(24556u, 0u, 36285u, 61200u), vec4<u32>(43260u, 4294967295u, 53800u, 1u), vec4<u32>(9247u, 4294967295u, 29313u, 4294967295u), vec4<u32>(0u, 0u, 4294967295u, 7267u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(32553u, 28228u, 10495u, 1u), vec4<u32>(77060u, 12819u, 20717u, 1u), vec4<u32>(67957u, 1u, 0u, 13862u), vec4<u32>(69185u, 66629u, 4294967295u, 4294967295u), vec4<u32>(8089u, 0u, 1u, 0u), vec4<u32>(0u, 17130u, 0u, 1u), vec4<u32>(4143u, 16640u, 34557u, 34532u), vec4<u32>(0u, 4294967295u, 1u, 1u), vec4<u32>(79141u, 15011u, 14194u, 40183u), vec4<u32>(1u, 29619u, 28621u, 1u), vec4<u32>(29505u, 12891u, 4294967295u, 0u), vec4<u32>(130018u, 1u, 27732u, 1u), vec4<u32>(15122u, 65603u, 1u, 4294967295u), vec4<u32>(14519u, 0u, 10373u, 22833u), vec4<u32>(4294967295u, 24600u, 1u, 63712u), vec4<u32>(1u, 3419u, 31492u, 4294967295u), vec4<u32>(1u, 0u, 1975u, 4294967295u));

var<private> global1: vec4<f32> = vec4<f32>(320f, -1533f, -1086f, 1937f);

var<private> global2: vec3<u32> = vec3<u32>(36300u, 4294967295u, 27399u);

var<private> global3: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(Struct_1(22970i, vec2<i32>(2147483647i, 1i), vec4<u32>(1u, 1u, 4294967295u, 4317u), 920f, -1i), vec4<i32>(0i, i32(-2147483648), 27231i, 1i), vec4<i32>(i32(-2147483648), 50268i, -7072i, 87363i)), Struct_2(Struct_1(2147483647i, vec2<i32>(-77648i, 1i), vec4<u32>(1u, 4294967295u, 18455u, 53767u), 788f, 2147483647i), vec4<i32>(1i, -16313i, -16998i, -23962i), vec4<i32>(39838i, i32(-2147483648), 46772i, 95572i)));

var<private> global4: array<vec4<f32>, 17>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: u32) -> vec4<bool> {
    let var_0 = true;
    global3 = array<Struct_2, 2>();
    var var_1 = _wgslsmith_f_op_vec3_f32(-arg_0.a.ywz);
    var var_2 = Struct_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(min(arg_0.d.a.d, -134f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -156f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * -2361f) + _wgslsmith_f_op_f32(ceil(arg_0.b)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x * -1000f) + var_1.x))) + -128f), global3[_wgslsmith_index_u32(0u, 2u)], arg_0.c);
    var var_3 = Struct_1(-4883i, var_2.d.b.wz, _wgslsmith_mod_vec4_u32(vec4<u32>(1u, firstLeadingBit(1u), abs(~1u), _wgslsmith_sub_u32(1u, global2.x)), abs(~arg_0.d.a.c << (~arg_0.c.a.c % vec4<u32>(32u)))), _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_div_i32(2510i, arg_0.d.a.b.x));
    return vec4<bool>(true, select(!all(vec4<bool>(var_0, false, false, var_0)), _wgslsmith_f_op_f32(-arg_0.a.x) != _wgslsmith_f_op_f32(max(var_3.d, global1.x)), var_0) | true, !(!var_0), true);
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_1) -> vec3<i32> {
    let var_0 = global3[_wgslsmith_index_u32(max(global2.x, 34794u), 2u)];
    let var_1 = global3[_wgslsmith_index_u32(var_0.a.c.x, 2u)];
    var var_2 = !arg_0;
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -808f) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -482f))) - _wgslsmith_f_op_f32(global1.x - _wgslsmith_f_op_f32(min(arg_1.d, -1402f))));
    global0 = array<vec4<u32>, 28>();
    return _wgslsmith_sub_vec3_i32(var_1.c.wyz, firstLeadingBit(~select(var_1.c.wyx, _wgslsmith_sub_vec3_i32(var_1.c.zyy, var_0.b.zyz), select(vec3<bool>(true, true, var_2.x), vec3<bool>(var_2.x, var_2.x, false), arg_0.xww))));
}

fn func_2() -> Struct_1 {
    var var_0 = func_4(select(select(vec4<bool>(global1.x > global1.x, true, false, all(vec4<bool>(true, true, true, true))), !select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, false, false)), true), select(vec4<bool>(all(vec4<bool>(true, true, true, false)), true, any(vec2<bool>(false, true)), any(vec2<bool>(true, true))), select(func_3(Struct_3(global4[_wgslsmith_index_u32(u_input.a, 17u)], 1967f, global3[_wgslsmith_index_u32(u_input.a, 2u)], Struct_2(Struct_1(-2147483647i, vec2<i32>(27451i, 3372i), vec4<u32>(4294967295u, 4294967295u, 4294967295u, global2.x), -606f, 38265i), vec4<i32>(2147483647i, -3942i, -19980i, 36344i), vec4<i32>(17193i, 30191i, -68485i, -16525i))), 4294967295u), vec4<bool>(false, true, true, false), true), vec4<bool>(true, all(vec4<bool>(false, true, true, false)), all(vec3<bool>(false, true, false)), true)), !select(vec4<bool>(false, false, false, true), func_3(Struct_3(global4[_wgslsmith_index_u32(global2.x, 17u)], 588f, global3[_wgslsmith_index_u32(27212u, 2u)], global3[_wgslsmith_index_u32(28311u, 2u)]), global2.x), vec4<bool>(false, false, false, false))), Struct_1(reverseBits(7423i), vec2<i32>(_wgslsmith_sub_i32(1i, ~52327i), 1i), vec4<u32>(u_input.a, 4294967295u, 13475u, 103916u), global1.x, 32543i));
    global4 = array<vec4<f32>, 17>();
    let var_1 = Struct_2(Struct_1(var_0.x, vec2<i32>(-11375i, _wgslsmith_mult_i32(2147483647i, var_0.x)), global0[_wgslsmith_index_u32(39996u, 28u)], _wgslsmith_f_op_f32(782f * global1.x), -_wgslsmith_div_i32(reverseBits(-10479i), var_0.x)), vec4<i32>(abs(_wgslsmith_mod_i32(var_0.x << (5335u % 32u), -var_0.x)), 25105i << (max(firstTrailingBit(26264u), _wgslsmith_add_u32(74448u, u_input.a)) % 32u), var_0.x, _wgslsmith_div_i32(_wgslsmith_clamp_i32(var_0.x, var_0.x, -9622i), 0i) & -23525i), ~select(min(max(vec4<i32>(-1i, var_0.x, var_0.x, var_0.x), vec4<i32>(var_0.x, 46214i, var_0.x, -3996i)), -vec4<i32>(0i, -2147483647i, 42568i, 2147483647i)), vec4<i32>(10836i, var_0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, 10675i, -40361i), vec3<i32>(-20152i, var_0.x, var_0.x)), -44054i), true));
    var var_2 = abs(func_4(select(func_3(Struct_3(vec4<f32>(var_1.a.d, 437f, 997f, -1000f), global1.x, global3[_wgslsmith_index_u32(1u, 2u)], Struct_2(Struct_1(1i, vec2<i32>(var_1.a.b.x, 27757i), global0[_wgslsmith_index_u32(49672u, 28u)], global1.x, var_0.x), vec4<i32>(2147483647i, var_1.c.x, 59876i, var_1.c.x), vec4<i32>(var_0.x, var_1.a.b.x, var_1.b.x, -46259i))), var_1.a.c.x), func_3(Struct_3(vec4<f32>(global1.x, global1.x, -885f, 276f), -934f, var_1, Struct_2(var_1.a, vec4<i32>(-2147483647i, 17414i, var_1.b.x, var_0.x), vec4<i32>(2147483647i, var_1.a.e, 1734i, var_0.x))), ~7610u), vec4<bool>(true, true, true, true)), var_1.a).x);
    global3 = array<Struct_2, 2>();
    return var_1.a;
}

fn func_5(arg_0: Struct_1) -> u32 {
    let var_0 = ~_wgslsmith_dot_vec3_u32(max(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_0.c.x, 0u, 8164u), vec3<u32>(global2.x, 74542u, arg_0.c.x)), _wgslsmith_div_vec3_u32(vec3<u32>(26583u, u_input.a, 0u), vec3<u32>(0u, arg_0.c.x, arg_0.c.x))) ^ ~(~arg_0.c.xwz), vec3<u32>(select(u_input.a, ~arg_0.c.x, true), countOneBits(_wgslsmith_div_u32(0u, 4294967295u)), arg_0.c.x));
    global3 = array<Struct_2, 2>();
    let var_1 = arg_0;
    global3 = array<Struct_2, 2>();
    return select(~1u, _wgslsmith_add_u32(0u, ~u_input.a), false);
}

fn func_1(arg_0: f32, arg_1: u32, arg_2: vec4<f32>, arg_3: f32) -> StorageBuffer {
    var var_0 = !vec3<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(1289f + 722f), _wgslsmith_f_op_f32(max(2046f, arg_2.x))) > global1.x, true, true);
    global2 = _wgslsmith_mod_vec3_u32(firstLeadingBit(~vec3<u32>(u_input.a, reverseBits(arg_1), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, u_input.a, 17252u, 1u), vec4<u32>(u_input.a, arg_1, 0u, arg_1)))), ~(vec3<u32>(4294967295u, ~global2.x, countOneBits(global2.x)) >> (min(select(vec3<u32>(1u, 4294967295u, u_input.a), vec3<u32>(global2.x, global2.x, 60543u), vec3<bool>(var_0.x, var_0.x, var_0.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(global2.x, 26730u, 4294967295u), vec3<u32>(global2.x, arg_1, u_input.a))) % vec3<u32>(32u))));
    var var_1 = vec2<u32>(func_5(func_2()), _wgslsmith_dot_vec4_u32(vec4<u32>(31556u, min(arg_1, 1u) | 40930u, 0u ^ global2.x, _wgslsmith_mult_u32(1u, _wgslsmith_mult_u32(u_input.a, 0u))), (vec4<u32>(global2.x, global2.x, 7832u, global2.x) ^ (vec4<u32>(arg_1, arg_1, global2.x, 0u) | global0[_wgslsmith_index_u32(u_input.a, 28u)])) & vec4<u32>(global2.x, 4294967295u & arg_1, u_input.a, 4294967295u)));
    global3 = array<Struct_2, 2>();
    return StorageBuffer(~(-8776i), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(139f, global1.x, 215f, arg_0) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(837f, arg_3, -314f, arg_3))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(global4[_wgslsmith_index_u32(u_input.a, 17u)], arg_2))) - _wgslsmith_f_op_vec4_f32(trunc(global4[_wgslsmith_index_u32(countOneBits(0u), 17u)]))))), _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.wz), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_3, 814f), vec2<f32>(-1143f, arg_0))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.x, global1.x))))), -(~vec3<i32>(1i, -9436i, min(0i, -11228i))), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(716f, 984f, arg_3, -1583f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1736f, _wgslsmith_f_op_f32(floor(-398f)), arg_3, _wgslsmith_f_op_f32(floor(1449f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 16871u;
    let x = u_input.a;
    s_output = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global1.x), _wgslsmith_div_f32(global1.x, global1.x))) - 1000f)), 46648u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(global1.x * 705f), global1.x, global1.x, _wgslsmith_f_op_f32(-305f - -1951f)) * global4[_wgslsmith_index_u32(global2.x, 17u)])), _wgslsmith_div_f32(global1.x, global1.x));
}

