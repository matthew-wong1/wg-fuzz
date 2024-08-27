struct Struct_1 {
    a: vec3<bool>,
    b: u32,
    c: vec3<u32>,
}

struct Struct_2 {
    a: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_4,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_4;

var<private> global2: array<u32, 23> = array<u32, 23>(9161u, 1u, 101787u, 58631u, 4294967295u, 78672u, 1u, 4294967295u, 0u, 88603u, 28125u, 2202u, 0u, 30628u, 0u, 0u, 1u, 0u, 28869u, 4294967295u, 67674u, 34906u, 0u);

var<private> global3: array<Struct_2, 29> = array<Struct_2, 29>(Struct_2(-1i), Struct_2(10234i), Struct_2(-5839i), Struct_2(13781i), Struct_2(-60640i), Struct_2(2147483647i), Struct_2(15683i), Struct_2(39912i), Struct_2(28799i), Struct_2(i32(-2147483648)), Struct_2(0i), Struct_2(6752i), Struct_2(374i), Struct_2(-20769i), Struct_2(-38535i), Struct_2(2147483647i), Struct_2(25912i), Struct_2(-24747i), Struct_2(-11491i), Struct_2(-4290i), Struct_2(2147483647i), Struct_2(-22557i), Struct_2(4545i), Struct_2(1i), Struct_2(24489i), Struct_2(-38571i), Struct_2(-9999i), Struct_2(2147483647i), Struct_2(-2156i));

var<private> global4: array<f32, 2> = array<f32, 2>(511f, -415f);

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> vec3<i32> {
    var var_0 = -min(vec4<i32>(_wgslsmith_add_i32(u_input.a.x, abs(u_input.a.x)), -1510i, _wgslsmith_mult_i32(-u_input.b, select(u_input.b, u_input.b, true)), -u_input.a.x ^ u_input.a.x), vec4<i32>(-1i) * -(~vec4<i32>(-1i, 1i, -49644i, -16451i)));
    return u_input.a;
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_3, arg_2: f32) -> u32 {
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(1580f - -415f), _wgslsmith_f_op_f32(-806f + arg_1.d), _wgslsmith_f_op_f32(-arg_1.d)) * _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1035f, 967f, -1143f) + vec3<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 2u)], arg_2, arg_1.d))))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(334f, -1624f, arg_2))))), Struct_4(vec4<bool>(true, true, !global1.a.x, global1.a.x)), Struct_1(select(select(vec3<bool>(false, global1.a.x, true), arg_1.e.a, !vec3<bool>(true, global1.a.x, false)), vec3<bool>(any(vec2<bool>(false, global1.a.x)), true, false && global1.a.x), select(vec3<bool>(false, true, global1.a.x), !global1.a.ywz, all(vec3<bool>(global1.a.x, global1.a.x, true)))), ~reverseBits(67631u), _wgslsmith_add_vec3_u32(_wgslsmith_mod_vec3_u32(~arg_1.e.c, vec3<u32>(arg_1.c, 83605u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)])), _wgslsmith_mod_vec3_u32(vec3<u32>(23825u, 4294967295u, arg_1.e.c.x) << (arg_1.e.c % vec3<u32>(32u)), arg_1.e.c & vec3<u32>(112011u, global2[_wgslsmith_index_u32(57661u, 23u)], 103174u)))));
    var var_1 = _wgslsmith_div_vec3_i32(~_wgslsmith_sub_vec3_i32(~(~vec3<i32>(-1i, arg_1.b, 23878i)), -u_input.a), _wgslsmith_clamp_vec3_i32(func_3(), func_3(), vec3<i32>(reverseBits(8991i) >> (~arg_1.c % 32u), 1i, select(-27715i, 1i, !var_0.b.a.x))));
    var_1 = _wgslsmith_sub_vec3_i32(u_input.a, vec3<i32>(firstTrailingBit(-2147483647i), 26670i, var_1.x));
    return var_0.c.c.x;
}

fn func_4(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_4, arg_3: bool) -> Struct_4 {
    global3 = array<Struct_2, 29>();
    global0 = abs(57882u >> (~global2[_wgslsmith_index_u32(countOneBits(2027u), 23u)] % 32u));
    global0 = global2[_wgslsmith_index_u32(min(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(arg_0, global2[_wgslsmith_index_u32(60888u, 23u)], 49247u, global2[_wgslsmith_index_u32(arg_0, 23u)]) ^ vec4<u32>(4294967295u, 17804u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(arg_0, 23u)], 23u)], arg_0), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, 1u, global2[_wgslsmith_index_u32(arg_0, 23u)], 67714u), vec4<u32>(2663u, 4294967295u, arg_0, arg_0))), ~firstTrailingBit(vec4<u32>(23507u, global2[_wgslsmith_index_u32(4294967295u, 23u)], arg_0, arg_0))), 1u), 23u)] & 1u;
    var var_0 = arg_2;
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(arg_0), global2[_wgslsmith_index_u32(1u << (arg_0 % 32u), 23u)]), 2u)]), _wgslsmith_f_op_f32(493f + _wgslsmith_f_op_f32(round(2142f))))) - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(~(~arg_0), 2u)])))));
    return Struct_4(vec4<bool>(any(arg_2.a), true, false, true));
}

fn func_1() -> u32 {
    global1 = func_4(1u, !vec3<bool>(_wgslsmith_f_op_f32(1207f + global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(47212u, 23u)], 2u)]) < global4[_wgslsmith_index_u32(func_2(u_input.a.yy, Struct_3(Struct_2(-53870i), u_input.a.x, 92666u, global4[_wgslsmith_index_u32(81541u, 2u)], Struct_1(vec3<bool>(global1.a.x, global1.a.x, global1.a.x), global2[_wgslsmith_index_u32(38563u, 23u)], vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(61879u, 23u)], 23u)], 14358u, 4294967295u))), -1001f), 2u)], u_input.b != _wgslsmith_mod_i32(u_input.a.x, -35988i), global1.a.x), Struct_4(!global1.a), !(false && ((global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(52165u, 23u)], 23u)], 2u)] <= 258f) || false)));
    let var_0 = 68589u;
    var var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global4[_wgslsmith_index_u32(var_0, 2u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(30669u, 2u)]))))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-172f - _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(var_0, 2u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2002f * global4[_wgslsmith_index_u32(var_0, 2u)]))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(1067f))) + _wgslsmith_f_op_f32(max(-1101f, _wgslsmith_f_op_f32(-662f + global4[_wgslsmith_index_u32(17568u, 2u)]))))), func_4(_wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(countOneBits(vec3<u32>(0u, 0u, var_0)), vec3<u32>(1u, var_0, 1u)), vec3<u32>(~global2[_wgslsmith_index_u32(2684u, 23u)], global2[_wgslsmith_index_u32(~1757u, 23u)], global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(var_0, 1u), 23u)])), select(global1.a.xxz, vec3<bool>(select(global1.a.x, global1.a.x, true), any(global1.a), global1.a.x || false), !global1.a.wyw), func_4(var_0, global1.a.xyy, func_4(var_0, select(global1.a.wyy, global1.a.xxx, false), Struct_4(vec4<bool>(false, global1.a.x, global1.a.x, true)), global1.a.x), true), all(func_4(global2[_wgslsmith_index_u32(69059u, 23u)], vec3<bool>(global1.a.x, false, global1.a.x), Struct_4(global1.a), true && global1.a.x).a)), Struct_1(!(!(!global1.a.xxy)), 79700u, firstLeadingBit(vec3<u32>(1u, ~12868u, var_0))));
    global0 = var_0;
    let var_2 = _wgslsmith_mod_i32(_wgslsmith_add_i32(u_input.a.x, -6244i), _wgslsmith_div_i32(2147483647i, _wgslsmith_add_i32(1i, _wgslsmith_add_i32(min(u_input.b, u_input.a.x), -76163i))));
    return func_2(abs(-(~vec2<i32>(u_input.a.x, var_2)) & (vec2<i32>(1i, 21058i) << (abs(var_1.c.c.zy) % vec2<u32>(32u)))), Struct_3(Struct_2(firstLeadingBit(u_input.b)), ~(-var_2), var_1.c.c.x, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(2161u, 2u)]), var_1.a.x), 511f), Struct_1(global1.a.wxz, _wgslsmith_sub_u32(var_0, 1u), var_1.c.c)), global4[_wgslsmith_index_u32(var_0, 2u)]);
}

fn func_5(arg_0: u32) -> Struct_1 {
    let var_0 = ~1u;
    global2 = array<u32, 23>();
    let var_1 = vec2<f32>(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(0u, 23u)], 2u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(global2[_wgslsmith_index_u32(abs(var_0), 23u)], 65662u, ~global2[_wgslsmith_index_u32(arg_0, 23u)], _wgslsmith_dot_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(arg_0, 23u)], 35664u, 4294967295u), vec3<u32>(var_0, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], global2[_wgslsmith_index_u32(arg_0, 23u)]))), vec4<u32>(5752u, 4294967295u, global2[_wgslsmith_index_u32(52030u, 23u)], arg_0) ^ ~vec4<u32>(global2[_wgslsmith_index_u32(12556u, 23u)], 43268u, 94233u, arg_0)), 2u)], 1694f));
    var var_2 = firstTrailingBit(reverseBits(abs(select(~vec2<u32>(global2[_wgslsmith_index_u32(0u, 23u)], 52300u), vec2<u32>(88736u, 14510u), global1.a.zx))));
    let var_3 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-1000f + var_1.x), _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(~1u, 2u)])), -2340f), func_4(_wgslsmith_dot_vec2_u32(abs(vec2<u32>(1u, 1u)), vec2<u32>(1u, ~58423u)), vec3<bool>(true, true, true), func_4(~(~1u), !vec3<bool>(true, global1.a.x, true), func_4(firstTrailingBit(0u), !vec3<bool>(true, global1.a.x, global1.a.x), func_4(var_0, vec3<bool>(global1.a.x, true, global1.a.x), Struct_4(global1.a), true), global1.a.x), ~var_0 < (global2[_wgslsmith_index_u32(var_0, 23u)] >> (4294967295u % 32u))), var_2.x <= global2[_wgslsmith_index_u32(~_wgslsmith_div_u32(1u, var_0), 23u)]), Struct_1(vec3<bool>(!global1.a.x, all(global1.a), global1.a.x), 4294967295u, vec3<u32>(_wgslsmith_div_u32(abs(var_0), ~61293u), 1u, _wgslsmith_div_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)] >> (var_0 % 32u), 80388u))));
    return var_3.c;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_dot_vec4_u32(~vec4<u32>(func_1(), global2[_wgslsmith_index_u32(0u, 23u)], ~50413u, ~global2[_wgslsmith_index_u32(1u, 23u)]), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 23u)], 23u)], 23u)], 23u)], 60910u), _wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 23u)], 23u)], 1u, global2[_wgslsmith_index_u32(6169u, 23u)]), vec4<u32>(4294967295u, 59294u, 0u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(30651u, 23u)], 23u)], 23u)], 23u)], 23u)])))));
    let var_1 = Struct_1(func_4(~_wgslsmith_mod_u32(var_0.c.x, 1u), vec3<bool>(any(vec2<bool>(global1.a.x, var_0.a.x)), true, !(!var_0.a.x)), func_4(11125u, vec3<bool>(true, true, true), Struct_4(global1.a), !(true & global1.a.x)), false).a.wxz, ~(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(1u, 27917u), 23u)] | ~4294967295u, 23u)] << (~1u % 32u)), var_0.c);
    var var_2 = Struct_1(select(!func_5(28210u).a, vec3<bool>(false, !var_0.a.x, !var_1.a.x), !var_1.a), 80270u, vec3<u32>(min(1u, ~(var_1.c.x >> (4294967295u % 32u))), 0u, global2[_wgslsmith_index_u32(reverseBits(_wgslsmith_div_u32(global2[_wgslsmith_index_u32(49112u, 23u)], global2[_wgslsmith_index_u32(~0u, 23u)])), 23u)]));
    var_2 = func_5(firstLeadingBit(43540u));
    let var_3 = ~(~(~var_0.b) | _wgslsmith_mod_u32(0u, select(~global2[_wgslsmith_index_u32(20016u, 23u)], 21343u, true)));
    global4 = array<f32, 2>();
    let var_4 = Struct_3(Struct_2(u_input.b & 15326i), i32(-1i) * -(~select(24928i, 1i, true)), var_2.b, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_3, 23u)], 2u)], global4[_wgslsmith_index_u32(var_0.b, 2u)])) * _wgslsmith_f_op_f32(round(740f)))))), Struct_1(var_1.a, global2[_wgslsmith_index_u32(var_0.c.x, 23u)], vec3<u32>((var_1.b << (var_2.b % 32u)) & func_1(), var_1.b, abs(_wgslsmith_div_u32(1u, 4294967295u)))));
    let var_5 = Struct_1(vec3<bool>(var_1.a.x, var_0.a.x, false), 82109u & (_wgslsmith_sub_u32(~4294967295u, ~var_2.b) >> (21771u % 32u)), var_1.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_4.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1682f + var_4.d) + -1165f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(var_4.d)), -472f))))), _wgslsmith_mult_vec3_u32(~var_2.c, func_5(~(~0u)).c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(184f, global4[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(var_0.c.x, 23u)], 2u)], global4[_wgslsmith_index_u32(1u, 2u)], global4[_wgslsmith_index_u32(34656u, 2u)]))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global4[_wgslsmith_index_u32(var_0.b, 2u)], var_4.d, -1294f, 1394f), vec4<f32>(1325f, -266f, var_4.d, 798f)))))), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global4[_wgslsmith_index_u32(var_4.e.b, 2u)])) - 1514f))), -1872f, global4[_wgslsmith_index_u32(max(countOneBits(_wgslsmith_mod_u32(0u, global2[_wgslsmith_index_u32(var_2.b, 23u)])), countOneBits(_wgslsmith_mult_u32(0u, 4294967295u))), 2u)]));
}

