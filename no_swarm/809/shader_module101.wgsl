struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: vec2<i32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: Struct_1,
    e: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 7> = array<f32, 7>(444f, 2250f, -382f, 121f, -596f, -157f, 2791f);

var<private> global1: Struct_2 = Struct_2(vec3<f32>(-232f, 107f, -2251f), vec3<bool>(true, false, false), -515f);

var<private> global2: array<bool, 11> = array<bool, 11>(true, false, false, true, true, false, false, true, false, false, false);

var<private> global3: array<Struct_2, 21> = array<Struct_2, 21>(Struct_2(vec3<f32>(-407f, -1000f, 329f), vec3<bool>(true, true, false), 770f), Struct_2(vec3<f32>(-1000f, 614f, -765f), vec3<bool>(false, false, false), 712f), Struct_2(vec3<f32>(-1884f, -1501f, -1842f), vec3<bool>(false, true, false), -1685f), Struct_2(vec3<f32>(-362f, 1252f, -1424f), vec3<bool>(false, false, false), -338f), Struct_2(vec3<f32>(-1021f, -224f, -204f), vec3<bool>(false, true, false), 1013f), Struct_2(vec3<f32>(1084f, 1000f, -874f), vec3<bool>(false, false, false), -803f), Struct_2(vec3<f32>(-106f, 347f, -200f), vec3<bool>(true, false, true), -1278f), Struct_2(vec3<f32>(497f, -1208f, -175f), vec3<bool>(false, true, false), 1570f), Struct_2(vec3<f32>(-2629f, -219f, -1714f), vec3<bool>(true, true, false), -858f), Struct_2(vec3<f32>(1579f, -878f, 1201f), vec3<bool>(false, false, false), -1000f), Struct_2(vec3<f32>(-1207f, 1791f, -649f), vec3<bool>(false, false, true), -675f), Struct_2(vec3<f32>(663f, -358f, -1000f), vec3<bool>(false, true, false), 1218f), Struct_2(vec3<f32>(-942f, -669f, 108f), vec3<bool>(true, false, true), -542f), Struct_2(vec3<f32>(576f, 1481f, -1518f), vec3<bool>(true, false, false), -1000f), Struct_2(vec3<f32>(-1107f, 954f, 352f), vec3<bool>(false, false, true), 559f), Struct_2(vec3<f32>(1109f, -1515f, 1667f), vec3<bool>(false, true, false), -355f), Struct_2(vec3<f32>(-862f, -338f, 1254f), vec3<bool>(true, false, false), -488f), Struct_2(vec3<f32>(323f, -1743f, 135f), vec3<bool>(false, true, true), 1270f), Struct_2(vec3<f32>(-592f, -129f, -1961f), vec3<bool>(false, false, false), -243f), Struct_2(vec3<f32>(1000f, -1000f, 358f), vec3<bool>(true, false, true), -324f), Struct_2(vec3<f32>(133f, 237f, 514f), vec3<bool>(true, true, true), -719f));

var<private> global4: i32;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: u32, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = global3[_wgslsmith_index_u32(~(_wgslsmith_sub_u32(reverseBits(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), select(_wgslsmith_add_u32(1u, u_input.b.x), countOneBits(arg_0), true)) << (_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, arg_0, 33661u, 70163u), reverseBits(vec4<u32>(u_input.b.x, arg_1.e.x, 30632u, 21178u))), ~arg_1.e.x) % 32u)), 21u)];
    global2 = array<bool, 11>();
    global2 = array<bool, 11>();
    var var_1 = ~(~(~u_input.b));
    let var_2 = arg_1.d;
    return vec2<i32>(u_input.a, -reverseBits(1i) << (var_1.x % 32u));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = global1.b.xz;
    global4 = max(~(-firstTrailingBit(1i)), ~arg_2 | -2147483647i);
    let var_1 = u_input.b.yww;
    let var_2 = Struct_3(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -357f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(-1855f, 999f))))), global1.a.yx, false)), u_input.a, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.x, 7u)], global1.c), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0[_wgslsmith_index_u32(var_1.x, 7u)], 641f, 1856f, global1.c)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1592f, -515f, 130f, global0[_wgslsmith_index_u32(var_1.x, 7u)]) * vec4<f32>(963f, global0[_wgslsmith_index_u32(var_1.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)], -1636f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-561f, 982f, -2220f, global1.a.x), vec4<f32>(-738f, global1.a.x, 1552f, -1218f)))), u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(176f, _wgslsmith_div_f32(global0[_wgslsmith_index_u32(var_1.x, 7u)], 715f)))), func_3(1u, Struct_3(vec2<f32>(-244f, 226f), 0i, -1751f, Struct_1(vec4<f32>(global1.c, -194f, -1272f, global1.c), var_1.x, -730f, vec2<i32>(u_input.a, 2147483647i), -627f), var_1)) & (-vec2<i32>(arg_2, 0i) >> (u_input.b.yz % vec2<u32>(32u))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1399f - -204f))))), vec3<u32>(4294967295u, 1u, 1u));
    return -113f;
}

fn func_1() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(global1.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-global1.a), vec3<f32>(_wgslsmith_f_op_f32(func_2(0i, 1i, 0i)), global0[_wgslsmith_index_u32(u_input.b.x >> (u_input.b.x % 32u), 7u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 7u)]))))), !vec3<bool>(true, all(vec3<bool>(true, false, global2[_wgslsmith_index_u32(u_input.b.x, 11u)])), true)));
    global0 = array<f32, 7>();
    var var_1 = vec2<f32>(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1364f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_0.x, -865f)) * global0[_wgslsmith_index_u32(u_input.b.x, 7u)]))));
    let var_2 = global1.b;
    let var_3 = Struct_3(var_0.xy, 2147483647i, 1000f, Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(861f, -1000f, _wgslsmith_f_op_f32(step(global0[_wgslsmith_index_u32(u_input.b.x, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)])), _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 7u)]))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_1.x, global1.a.x, 899f, -779f) - vec4<f32>(-1140f, global0[_wgslsmith_index_u32(12617u, 7u)], global0[_wgslsmith_index_u32(5896u, 7u)], global0[_wgslsmith_index_u32(u_input.b.x, 7u)])) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 1190f, global1.c, 751f)))), reverseBits(~u_input.b.x), _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(-global1.a.x)), vec2<i32>(~min(63229i, u_input.a), _wgslsmith_add_i32(firstTrailingBit(-1i), 2147483647i)), _wgslsmith_f_op_f32(f32(-1f) * -1552f)), vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, ~0u), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(12874u, 1u)), reverseBits(vec2<u32>(u_input.b.x, 11017u)), countOneBits(u_input.b.zw))), abs(u_input.b.x), 1u));
    return Struct_1(vec4<f32>(var_1.x, -954f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(-771f, 660f), _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(22865u, 7u)] * -556f)) + _wgslsmith_div_f32(var_0.x, _wgslsmith_f_op_f32(abs(1576f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -279f)) + -504f)), var_3.e.x, 1f, vec2<i32>(func_3(var_3.e.x, var_3).x, ~(-u_input.a)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(1u, 7u)] * _wgslsmith_f_op_f32(step(233f, var_3.c)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_3) -> StorageBuffer {
    let var_0 = func_1();
    var var_1 = !(!select(!select(vec4<bool>(true, false, global2[_wgslsmith_index_u32(arg_1.e.x, 11u)], global1.b.x), vec4<bool>(global1.b.x, true, false, true), true), select(select(vec4<bool>(false, false, true, true), vec4<bool>(global1.b.x, global2[_wgslsmith_index_u32(1u, 11u)], global1.b.x, global1.b.x), vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], false, false, global2[_wgslsmith_index_u32(arg_1.e.x, 11u)])), !vec4<bool>(global2[_wgslsmith_index_u32(u_input.b.x, 11u)], false, false, global1.b.x), vec4<bool>(global1.b.x, false, false, true)), select(global1.b.x, any(vec4<bool>(global2[_wgslsmith_index_u32(arg_1.e.x, 11u)], false, global1.b.x, global1.b.x)), global1.b.x && global2[_wgslsmith_index_u32(14009u, 11u)])));
    var var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-141f * _wgslsmith_f_op_f32(sign(-1146f))), arg_1.c, _wgslsmith_f_op_f32(round(-516f))), !(!(!select(vec3<bool>(true, true, global1.b.x), var_1.wzy, vec3<bool>(true, false, true)))), _wgslsmith_f_op_f32(var_0.a.x + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.c))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(50064u, 7u)] + -483f)))));
    global1 = Struct_2(_wgslsmith_f_op_vec3_f32(round(var_0.a.yxz)), vec3<bool>(var_2.b.x, true, !(_wgslsmith_sub_i32(0i, -1i) != arg_1.d.d.x)), 512f);
    var var_3 = ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(select(vec3<u32>(u_input.b.x, u_input.b.x, var_0.b), arg_1.e, var_2.b), select(u_input.b.www, vec3<u32>(34005u, var_0.b, arg_1.d.b), vec3<bool>(true, true, var_2.b.x))), arg_1.e), abs(vec3<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yw, arg_1.e.yz), 4294967295u, u_input.b.x)));
    return StorageBuffer(~_wgslsmith_mult_vec3_u32(arg_1.e, vec3<u32>(~0u, arg_1.d.b, var_0.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 4294967295u;
    global4 = _wgslsmith_div_i32(u_input.a, -2147483647i);
    let x = u_input.a;
    s_output = func_4(-(~_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 1i, u_input.a, u_input.a) & vec4<i32>(-1i, 1i, u_input.a, -44336i), select(vec4<i32>(u_input.a, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, 0i, u_input.a, u_input.a), vec4<bool>(global2[_wgslsmith_index_u32(4294967295u, 11u)], true, true, false)))), Struct_3(_wgslsmith_f_op_vec2_f32(sign(global1.a.yx)), firstTrailingBit(2147483647i), global1.c, func_1(), u_input.b.xww));
}

