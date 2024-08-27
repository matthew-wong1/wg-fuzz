struct Struct_1 {
    a: u32,
    b: bool,
    c: f32,
    d: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
    d: vec4<u32>,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 32> = array<vec4<f32>, 32>(vec4<f32>(-827f, 666f, -527f, 955f), vec4<f32>(370f, 1000f, -1427f, -958f), vec4<f32>(-1000f, 126f, 1000f, -1000f), vec4<f32>(1281f, 1031f, -1016f, 403f), vec4<f32>(825f, 1310f, 176f, -1000f), vec4<f32>(-384f, -1140f, 301f, -845f), vec4<f32>(-1234f, 917f, 1225f, -1508f), vec4<f32>(-190f, -498f, 1000f, 1519f), vec4<f32>(884f, -211f, 1000f, 1349f), vec4<f32>(489f, -218f, 691f, 219f), vec4<f32>(-1000f, 1731f, 1491f, -1340f), vec4<f32>(-294f, -670f, 834f, -218f), vec4<f32>(291f, -1436f, 169f, -1118f), vec4<f32>(-1000f, -516f, -1819f, 279f), vec4<f32>(258f, -1000f, 402f, 836f), vec4<f32>(564f, -1000f, 146f, 1185f), vec4<f32>(698f, -1000f, -1678f, -1608f), vec4<f32>(-1000f, -369f, 2444f, -2242f), vec4<f32>(-904f, 1616f, 454f, 336f), vec4<f32>(952f, 565f, 1446f, 1975f), vec4<f32>(306f, -1000f, -972f, -629f), vec4<f32>(-473f, -1864f, -324f, 1127f), vec4<f32>(242f, -1000f, 653f, -1000f), vec4<f32>(-1000f, -2041f, -278f, -261f), vec4<f32>(808f, 620f, -980f, 763f), vec4<f32>(306f, -417f, 733f, 530f), vec4<f32>(-821f, 423f, -1000f, -388f), vec4<f32>(-1948f, -1000f, -1000f, 163f), vec4<f32>(-359f, -126f, -1000f, 1000f), vec4<f32>(-870f, -309f, -1067f, 1000f), vec4<f32>(-114f, -982f, -1000f, -263f), vec4<f32>(-157f, -1260f, -1374f, -728f));

var<private> global1: array<Struct_1, 1> = array<Struct_1, 1>(Struct_1(4294967295u, false, -714f, vec2<i32>(-42228i, 11482i)));

var<private> global2: array<vec2<f32>, 6> = array<vec2<f32>, 6>(vec2<f32>(-1698f, -526f), vec2<f32>(837f, 2755f), vec2<f32>(-1000f, -515f), vec2<f32>(-178f, -753f), vec2<f32>(890f, 1050f), vec2<f32>(-351f, -708f));

var<private> global3: vec2<bool>;

var<private> global4: array<bool, 8>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: vec3<f32>) -> u32 {
    global1 = array<Struct_1, 1>();
    var var_0 = Struct_2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -397f))) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(784f)), -459f), global1[_wgslsmith_index_u32(~u_input.b.x, 1u)], -((vec3<i32>(0i, u_input.a, -12605i) << (vec3<u32>(52736u, u_input.b.x, u_input.b.x) % vec3<u32>(32u))) | select(vec3<i32>(u_input.a, 30474i, arg_2.d.x), vec3<i32>(2147483647i, -2147483647i, u_input.a), arg_1)) ^ vec3<i32>(min(arg_2.d.x, 55049i), arg_2.d.x, -arg_2.d.x), 2006f, _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(3048u, 32u)]));
    var var_1 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.d, var_0.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1017f))));
    var_0 = Struct_2(all(select(!select(vec2<bool>(var_0.a, arg_2.b), vec2<bool>(global4[_wgslsmith_index_u32(41685u, 8u)], false), false), vec2<bool>(true, any(vec4<bool>(arg_2.b, var_0.b.b, false, global4[_wgslsmith_index_u32(var_0.b.a, 8u)]))), false)), arg_2, abs(select(vec3<i32>(-var_0.b.d.x, ~arg_2.d.x, _wgslsmith_mod_i32(-1i, 2147483647i)), abs(vec3<i32>(-2503i, u_input.a, 1i)), select(!vec3<bool>(var_0.a, false, var_0.b.b), !vec3<bool>(global4[_wgslsmith_index_u32(var_0.b.a, 8u)], true, var_0.b.b), vec3<bool>(arg_1, var_0.a, arg_2.b)))), arg_3.x, vec4<f32>(_wgslsmith_f_op_f32(max(-137f, arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, arg_2.c))), _wgslsmith_f_op_f32(ceil(-344f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(arg_2.c - var_0.d))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.c), -563f)))));
    var var_2 = !vec2<bool>(all(select(vec3<bool>(var_0.b.b, global4[_wgslsmith_index_u32(26606u, 8u)], false), vec3<bool>(global4[_wgslsmith_index_u32(arg_2.a, 8u)], false, var_0.b.b), vec3<bool>(arg_1, global3.x, true))) && all(select(vec3<bool>(arg_2.b, global4[_wgslsmith_index_u32(arg_2.a, 8u)], true), vec3<bool>(false, false, false), vec3<bool>(global3.x, false, global4[_wgslsmith_index_u32(arg_2.a, 8u)]))), all(vec2<bool>(global4[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_2.a, 0u), 8u)], global3.x)));
    return _wgslsmith_add_u32(_wgslsmith_sub_u32(var_0.b.a, ~var_0.b.a), 1u);
}

fn func_2() -> u32 {
    var var_0 = vec3<u32>(0u, _wgslsmith_div_u32(u_input.b.x, func_3(_wgslsmith_mod_u32(73459u >> (u_input.b.x % 32u), u_input.b.x), global4[_wgslsmith_index_u32(~_wgslsmith_mult_u32(49095u, 13065u), 8u)], global1[_wgslsmith_index_u32(~_wgslsmith_mod_u32(4294967295u, 1u), 1u)], _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-601f, 1643f, 284f)))))), max(~u_input.b.x, ~reverseBits(1u)));
    var var_1 = reverseBits(_wgslsmith_mult_vec3_i32(~vec3<i32>(u_input.a, u_input.a | u_input.a, _wgslsmith_div_i32(-2147483647i, -17450i)), -vec3<i32>(0i, u_input.a, firstTrailingBit(1i))));
    var var_2 = vec4<bool>(global3.x, all(select(select(vec4<bool>(true, global3.x, global3.x, global4[_wgslsmith_index_u32(0u, 8u)]), !vec4<bool>(false, global4[_wgslsmith_index_u32(4294967295u, 8u)], false, true), vec4<bool>(true, global3.x, global3.x, global3.x)), select(!vec4<bool>(false, false, global4[_wgslsmith_index_u32(u_input.b.x, 8u)], true), vec4<bool>(global3.x, global4[_wgslsmith_index_u32(var_0.x, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], global3.x), any(vec2<bool>(global3.x, true))), select(vec4<bool>(global4[_wgslsmith_index_u32(var_0.x, 8u)], true, false, true), select(vec4<bool>(false, global3.x, global3.x, global4[_wgslsmith_index_u32(0u, 8u)]), vec4<bool>(global3.x, global3.x, false, false), vec4<bool>(true, global3.x, false, global4[_wgslsmith_index_u32(124113u, 8u)])), vec4<bool>(false, global3.x, global4[_wgslsmith_index_u32(var_0.x, 8u)], global4[_wgslsmith_index_u32(1u, 8u)])))), true, global4[_wgslsmith_index_u32(~_wgslsmith_add_u32(_wgslsmith_clamp_u32(4294967295u, 1u, ~4294967295u), ~_wgslsmith_add_u32(var_0.x, 73990u)), 8u)]);
    var var_3 = select(vec3<bool>(!global3.x, !global4[_wgslsmith_index_u32(~u_input.b.x, 8u)], var_2.x), select(var_2.wzz, vec3<bool>(any(select(vec2<bool>(true, global3.x), var_2.xz, var_2.xy)), false, true), vec3<bool>(any(var_2.wyy), true, false)), !vec3<bool>(var_2.x, true, false));
    let var_4 = true;
    return 1u;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: i32, arg_3: vec3<u32>) -> Struct_2 {
    var var_0 = ~u_input.b.yzx;
    var var_1 = _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(_wgslsmith_add_u32(u_input.b.x, _wgslsmith_add_u32(arg_3.x, 4294967295u)), ~u_input.b.x, var_0.x, u_input.b.x));
    let var_2 = vec2<bool>(!(!global4[_wgslsmith_index_u32(_wgslsmith_add_u32(func_2(), _wgslsmith_mod_u32(82581u, var_0.x)), 8u)]), _wgslsmith_clamp_i32(reverseBits(u_input.a), ~(~(-2147483647i)), 2147483647i) < min(~u_input.a, 65372i));
    let var_3 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-123f, arg_1.c, arg_0.x) + vec3<f32>(arg_1.c, -338f, -1000f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-391f, 646f, 207f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c, 1000f, 1666f))))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-645f, arg_0.x), -2285f, true)), _wgslsmith_f_op_f32(abs(-1270f)), -507f)));
    global4 = array<bool, 8>();
    return Struct_2(global3.x, Struct_1(_wgslsmith_sub_u32(109200u, select(arg_3.x, ~4294967295u, true & global4[_wgslsmith_index_u32(arg_3.x, 8u)])), true, var_3.x, arg_1.d << ((vec2<u32>(u_input.b.x, 29912u) & vec2<u32>(1u, arg_3.x)) % vec2<u32>(32u))), ~firstTrailingBit(-vec3<i32>(u_input.a, 43003i, u_input.a) << (arg_3 % vec3<u32>(32u))), -1424f, global0[_wgslsmith_index_u32(func_3(4294967295u, global3.x, Struct_1(~_wgslsmith_sub_u32(var_0.x, 0u), false, arg_1.c, arg_1.d), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(var_3 - vec3<f32>(var_3.x, -1464f, var_3.x)))))), 32u)]);
}

fn func_4(arg_0: bool, arg_1: Struct_2, arg_2: vec3<bool>, arg_3: Struct_2) -> u32 {
    var var_0 = arg_1;
    var var_1 = var_0.b.b;
    global1 = array<Struct_1, 1>();
    var_0 = func_1(vec2<f32>(_wgslsmith_div_f32(-1646f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-372f)), _wgslsmith_f_op_f32(-arg_1.b.c)))), 1f), arg_1.b, _wgslsmith_dot_vec2_i32(~vec2<i32>(0i, _wgslsmith_add_i32(-1i, 3093i)), var_0.b.d), vec3<u32>(func_1(_wgslsmith_f_op_vec2_f32(-arg_3.e.wz), func_1(_wgslsmith_f_op_vec2_f32(-arg_3.e.yz), Struct_1(arg_1.b.a, arg_0, var_0.d, vec2<i32>(arg_3.c.x, var_0.b.d.x)), arg_3.b.d.x, vec3<u32>(arg_1.b.a, arg_3.b.a, var_0.b.a)).b, _wgslsmith_mult_i32(0i, ~arg_3.b.d.x), max(~u_input.b.zzx, _wgslsmith_div_vec3_u32(u_input.b.wyw, u_input.b.zwy))).b.a, ~74510u ^ abs(u_input.b.x), abs(_wgslsmith_clamp_u32(0u, arg_3.b.a, func_3(4294967295u, global4[_wgslsmith_index_u32(arg_1.b.a, 8u)], arg_3.b, arg_1.e.zzx)))));
    var var_2 = func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_3.e.zz * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_3.e.x, arg_1.d) + var_0.e.zw)))), func_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.e.x, _wgslsmith_f_op_f32(max(-415f, arg_1.e.x))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1586f, arg_3.e.x)))), global1[_wgslsmith_index_u32(0u, 1u)], ~(-1i), u_input.b.wyx).b, min(17947i, 0i) << (countOneBits(max(1u, ~arg_1.b.a)) % 32u), reverseBits(firstTrailingBit(u_input.b.yxz)));
    return 8743u;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 8>();
    var var_0 = Struct_2(global4[_wgslsmith_index_u32(20381u, 8u)], Struct_1(func_4(true, func_1(global2[_wgslsmith_index_u32(u_input.b.x, 6u)], Struct_1(u_input.b.x, global4[_wgslsmith_index_u32(9514u, 8u)], 395f, vec2<i32>(24922i, u_input.a)), 1i, vec3<u32>(0u, u_input.b.x, u_input.b.x)), select(vec3<bool>(global4[_wgslsmith_index_u32(16583u, 8u)], true, true), vec3<bool>(false, global3.x, true), vec3<bool>(false, false, true)), Struct_2(global3.x, Struct_1(22692u, global3.x, -2166f, vec2<i32>(1i, 2147483647i)), vec3<i32>(u_input.a, 64872i, u_input.a), 685f, global0[_wgslsmith_index_u32(u_input.b.x, 32u)])) >> (u_input.b.x % 32u), global3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(493f * -1000f) + _wgslsmith_f_op_f32(sign(229f))) * -682f), -func_1(global2[_wgslsmith_index_u32(15928u, 6u)], global1[_wgslsmith_index_u32(u_input.b.x, 1u)], u_input.a, u_input.b.zyx).b.d << (_wgslsmith_div_vec2_u32(max(u_input.b.yw, vec2<u32>(u_input.b.x, 4294967295u)), select(u_input.b.yx, u_input.b.wx, global4[_wgslsmith_index_u32(4294967295u, 8u)])) % vec2<u32>(32u))), -abs(vec3<i32>(50196i, -u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(1240i, -2147483647i), vec2<i32>(u_input.a, 28116i)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(207f)), -1467f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-237f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1094f)) - _wgslsmith_f_op_f32(select(591f, -1763f, true))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(u_input.b.x, 32u)], vec4<bool>(false, global4[_wgslsmith_index_u32(14012u, 8u)], true, false))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-316f, -521f, -553f, -1000f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(global0[_wgslsmith_index_u32(u_input.b.x, 32u)]))))));
    let var_1 = select(vec3<bool>(any(select(vec4<bool>(global3.x, var_0.a, var_0.a, var_0.b.b), !vec4<bool>(true, var_0.b.b, global4[_wgslsmith_index_u32(var_0.b.a, 8u)], false), var_0.a)), false, global3.x & all(!vec4<bool>(global4[_wgslsmith_index_u32(var_0.b.a, 8u)], global4[_wgslsmith_index_u32(u_input.b.x, 8u)], global4[_wgslsmith_index_u32(0u, 8u)], global4[_wgslsmith_index_u32(u_input.b.x, 8u)]))), !vec3<bool>(true, any(select(vec4<bool>(global4[_wgslsmith_index_u32(var_0.b.a, 8u)], global3.x, var_0.a, true), vec4<bool>(false, global3.x, global4[_wgslsmith_index_u32(3021u, 8u)], global4[_wgslsmith_index_u32(var_0.b.a, 8u)]), false)), true & (-1241f == var_0.e.x)), !vec3<bool>(true, global3.x, true));
    var_0 = Struct_2(any(vec4<bool>(_wgslsmith_f_op_f32(537f * var_0.b.c) < 375f, !var_0.b.b, global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(0u, var_0.b.a) << (~u_input.b.x % 32u), 8u)], select(true, all(var_1.zz), var_0.b.c < 146f))), func_1(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.e.x, -1000f), _wgslsmith_div_vec2_f32(vec2<f32>(-1000f, var_0.b.c), vec2<f32>(var_0.e.x, var_0.e.x)), var_1.yx)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1525f, 1609f) + var_0.e.xw) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(905f, var_0.b.c)))))), Struct_1(~38083u, all(vec2<bool>(true, false)), 119f, abs(vec2<i32>(var_0.b.d.x, var_0.b.d.x))), ~u_input.a, _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.b.x, u_input.b.x >> (4294967295u % 32u), 106135u), vec3<u32>(_wgslsmith_dot_vec3_u32(u_input.b.wwz, u_input.b.yww), ~u_input.b.x, var_0.b.a & 1u))).b, var_0.c, _wgslsmith_f_op_f32(var_0.e.x * var_0.e.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_0.e)));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(firstTrailingBit(abs(u_input.b.x)), 32u)] + _wgslsmith_f_op_vec4_f32(floor(global0[_wgslsmith_index_u32(4294967295u, 32u)]))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.e.x, 1482f, var_0.b.c, var_0.e.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.c, 532f, -479f, -252f))) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.b.c, var_0.b.c, -1526f, 334f), vec4<f32>(756f, var_0.d, 1308f, 1321f), var_0.b.b)))))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.b.c), _wgslsmith_f_op_f32(-var_2.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(206f + 253f) * -1180f), -371f), _wgslsmith_f_op_vec3_f32(-var_2.wwz)));
    var_0 = func_1(var_0.e.xx, Struct_1(4294967295u & ~var_0.b.a, var_1.x, _wgslsmith_f_op_f32(f32(-1f) * -1028f), vec2<i32>(countOneBits(var_0.b.d.x >> (0u % 32u)), var_0.c.x | (var_0.c.x & var_0.b.d.x))), u_input.a, reverseBits(vec3<u32>(~1u, var_0.b.a, _wgslsmith_mod_u32(func_1(var_2.zy, Struct_1(var_0.b.a, true, var_0.b.c, var_0.b.d), u_input.a, vec3<u32>(0u, var_0.b.a, 0u)).b.a, var_0.b.a | 1u))));
    let x = u_input.a;
    s_output = StorageBuffer(select(_wgslsmith_div_i32(-_wgslsmith_div_i32(2276i, 16380i), ~var_0.b.d.x), firstTrailingBit(~(-1i)), ((var_0.b.d.x >> (0u % 32u)) < ~u_input.a) || true), -1000f, 446f, ~u_input.b, _wgslsmith_clamp_vec2_u32(~vec2<u32>(countOneBits(51787u), firstTrailingBit(1u)), vec2<u32>(~35764u, ~25658u), u_input.b.wx));
}

