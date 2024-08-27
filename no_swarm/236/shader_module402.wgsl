struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<u32> = vec4<u32>(1u, 17394u, 4294967295u, 10192u);

var<private> global1: array<vec4<bool>, 31> = array<vec4<bool>, 31>(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, false, false), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(false, true, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, true));

var<private> global2: array<vec3<f32>, 24> = array<vec3<f32>, 24>(vec3<f32>(882f, -277f, -639f), vec3<f32>(882f, -740f, 126f), vec3<f32>(1085f, -292f, -1106f), vec3<f32>(-350f, 992f, -173f), vec3<f32>(-453f, 1416f, -1515f), vec3<f32>(-399f, -1293f, 545f), vec3<f32>(419f, -1331f, 1194f), vec3<f32>(194f, -530f, 752f), vec3<f32>(-1421f, -218f, 1270f), vec3<f32>(198f, -661f, 300f), vec3<f32>(-2146f, 2317f, -276f), vec3<f32>(-845f, -2190f, -849f), vec3<f32>(-1000f, 1763f, -1048f), vec3<f32>(1088f, 1000f, -691f), vec3<f32>(-350f, 609f, 405f), vec3<f32>(-413f, 1293f, -2019f), vec3<f32>(786f, 719f, 1000f), vec3<f32>(-1538f, -205f, -1589f), vec3<f32>(728f, 1000f, -138f), vec3<f32>(3049f, 1000f, 916f), vec3<f32>(-1000f, -807f, 887f), vec3<f32>(-1396f, 217f, -1289f), vec3<f32>(-473f, -447f, 1370f), vec3<f32>(682f, 279f, -1098f));

var<private> global3: bool;

var<private> global4: array<bool, 18> = array<bool, 18>(false, false, false, true, false, false, true, true, false, false, true, false, true, true, false, false, false, true);

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<u32> {
    let var_0 = max(vec4<u32>(1316u, ~(15402u << (0u % 32u)), _wgslsmith_div_u32(reverseBits(global0.x), 111962u), u_input.d.x) << ((u_input.d >> (firstLeadingBit(min(vec4<u32>(35779u, global0.x, 0u, 0u), vec4<u32>(u_input.d.x, u_input.a.x, global0.x, 4294967295u))) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(u_input.d, vec4<u32>(_wgslsmith_clamp_u32(0u, ~55375u, firstTrailingBit(u_input.a.x)), global0.x << (~31710u % 32u), global0.x | _wgslsmith_mult_u32(13963u, global0.x), abs(u_input.d.x)), select(u_input.d, reverseBits(u_input.d), arg_1.b >= -609f) ^ select(vec4<u32>(4294967295u, u_input.d.x, 26426u, 22072u), u_input.d | vec4<u32>(90368u, 18412u, 47473u, 67841u), true)));
    let var_1 = select(!vec4<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], !(global4[_wgslsmith_index_u32(3848u, 18u)] | global4[_wgslsmith_index_u32(9194u, 18u)]), any(global1[_wgslsmith_index_u32(~4294967295u, 31u)]), global4[_wgslsmith_index_u32(0u & u_input.a.x, 18u)] || any(vec3<bool>(true, global4[_wgslsmith_index_u32(95989u, 18u)], global4[_wgslsmith_index_u32(4294967295u, 18u)]))), global1[_wgslsmith_index_u32(var_0.x, 31u)], arg_1.b <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(-arg_0.b)));
    global0 = reverseBits(var_0);
    return vec3<u32>(~_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.d.x, var_0.x, 0u, 1u), var_0), abs(abs(u_input.d.x))), ~_wgslsmith_dot_vec2_u32(max(vec2<u32>(4294967295u, var_0.x), vec2<u32>(var_0.x, var_0.x)), select(var_0.xx, global0.zx, var_1.x)) << (global0.x % 32u), var_0.x);
}

fn func_2(arg_0: bool, arg_1: bool, arg_2: vec3<u32>) -> vec2<u32> {
    global0 = min(vec4<u32>(global0.x, global0.x, _wgslsmith_mult_u32(arg_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(3328u, global0.x, 17628u), func_3(Struct_1(u_input.c, -657f, -2147483647i), Struct_1(u_input.c, -1462f, 1i)))), u_input.d.x), vec4<u32>(min(countOneBits(_wgslsmith_div_u32(7155u, arg_2.x)), ~_wgslsmith_sub_u32(arg_2.x, global0.x)), 80u, u_input.a.x, _wgslsmith_dot_vec2_u32(global0.yz, ~(~arg_2.yx))));
    global3 = true;
    global4 = array<bool, 18>();
    let var_0 = !vec2<bool>(all(select(vec2<bool>(false, true), !vec2<bool>(false, arg_1), all(vec2<bool>(true, arg_0)))), all(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(abs(25607u), arg_2.x), 31u)]));
    let var_1 = Struct_1(reverseBits(u_input.b), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(598f, -485f))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(1000f)), -1258f))))), firstLeadingBit(1i));
    return _wgslsmith_add_vec2_u32(~_wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(~vec2<u32>(global0.x, arg_2.x), ~arg_2.yx), _wgslsmith_sub_vec2_u32(firstTrailingBit(vec2<u32>(arg_2.x, 1u)), ~vec2<u32>(72884u, u_input.a.x)), func_3(var_1, Struct_1(vec4<i32>(-45455i, u_input.c.x, 12673i, 21350i), -1806f, -21572i)).zx), countOneBits(select(func_3(Struct_1(vec4<i32>(var_1.c, -24624i, -2147483647i, u_input.b.x), -842f, u_input.c.x), var_1).yz, arg_2.yz, all(select(vec3<bool>(false, true, false), vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(arg_0, arg_1, arg_0))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>) -> f32 {
    let var_0 = true && global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(func_2(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.d.x), u_input.a.xz), 18u)], false, min(global0.xxz, u_input.a))), global0.xy), 18u)];
    global2 = array<vec3<f32>, 24>();
    var var_1 = u_input.a.x;
    global2 = array<vec3<f32>, 24>();
    let var_2 = Struct_1(-countOneBits(u_input.c << (firstTrailingBit(vec4<u32>(1u, 10133u, 24974u, u_input.d.x)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(f32(-1f) * -2210f), -1i);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-330f * -607f), var_2.b, all(global1[_wgslsmith_index_u32(1u, 31u)])))))));
}

fn func_4(arg_0: vec2<i32>, arg_1: f32) -> i32 {
    var var_0 = any(select(select(select(select(vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 18u)], false), vec2<bool>(global4[_wgslsmith_index_u32(44256u, 18u)], false), vec2<bool>(true, false)), !vec2<bool>(global4[_wgslsmith_index_u32(35165u, 18u)], true), !vec2<bool>(global4[_wgslsmith_index_u32(u_input.a.x, 18u)], global4[_wgslsmith_index_u32(u_input.a.x, 18u)])), select(vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 18u)], true), vec2<bool>(true, false), any(vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 18u)], false, false))), all(vec2<bool>(global4[_wgslsmith_index_u32(9983u, 18u)], global4[_wgslsmith_index_u32(global0.x, 18u)]))), !select(select(vec2<bool>(global4[_wgslsmith_index_u32(global0.x, 18u)], global4[_wgslsmith_index_u32(u_input.a.x, 18u)]), vec2<bool>(global4[_wgslsmith_index_u32(0u, 18u)], false), false), !vec2<bool>(global4[_wgslsmith_index_u32(1u, 18u)], true), all(vec4<bool>(true, true, global4[_wgslsmith_index_u32(u_input.a.x, 18u)], false))), select(select(select(vec2<bool>(false, global4[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(false, global4[_wgslsmith_index_u32(8239u, 18u)]), vec2<bool>(false, false)), !vec2<bool>(global4[_wgslsmith_index_u32(4294967295u, 18u)], global4[_wgslsmith_index_u32(5751u, 18u)]), select(vec2<bool>(global4[_wgslsmith_index_u32(15191u, 18u)], false), vec2<bool>(true, global4[_wgslsmith_index_u32(4294967295u, 18u)]), true)), vec2<bool>(global4[_wgslsmith_index_u32(22559u, 18u)], !global4[_wgslsmith_index_u32(1u, 18u)]), false)));
    let var_1 = 0u;
    var_0 = !select(global4[_wgslsmith_index_u32(~var_1, 18u)], true, true);
    var var_2 = var_1;
    global2 = array<vec3<f32>, 24>();
    return -(~select(abs(u_input.c.x), select(~(-10531i), ~2147483647i, any(vec2<bool>(true, global4[_wgslsmith_index_u32(global0.x, 18u)]))), any(select(vec4<bool>(true, global4[_wgslsmith_index_u32(31948u, 18u)], global4[_wgslsmith_index_u32(u_input.d.x, 18u)], global4[_wgslsmith_index_u32(19852u, 18u)]), global1[_wgslsmith_index_u32(u_input.d.x, 31u)], global4[_wgslsmith_index_u32(68764u, 18u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<i32>(0i, u_input.c.x, 2147483647i, u_input.b.x & -13891i);
    global4 = array<bool, 18>();
    global3 = global4[_wgslsmith_index_u32(global0.x, 18u)];
    let var_1 = Struct_1(var_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -671f) - _wgslsmith_f_op_f32(step(923f, _wgslsmith_div_f32(-1381f, -616f))))), func_4(-u_input.c.xx, _wgslsmith_div_f32(_wgslsmith_f_op_f32(func_1(u_input.d.x, Struct_1(u_input.c, -128f, 12636i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1579f, 1000f, 916f)))), -1878f)));
    var var_2 = !(!vec2<bool>(global4[_wgslsmith_index_u32(~(~global0.x), 18u)], any(!global1[_wgslsmith_index_u32(1u, 31u)])));
    var_2 = !select(vec2<bool>(false, !global4[_wgslsmith_index_u32(1u, 18u)]), vec2<bool>(!select(true, global4[_wgslsmith_index_u32(25872u, 18u)], false), var_2.x), select(vec2<bool>(true, true), !(!vec2<bool>(false, global4[_wgslsmith_index_u32(58868u, 18u)])), select(vec2<bool>(true, true), select(vec2<bool>(var_2.x, true), vec2<bool>(false, var_2.x), vec2<bool>(var_2.x, global4[_wgslsmith_index_u32(11947u, 18u)])), vec2<bool>(true, false))));
    global1 = array<vec4<bool>, 31>();
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.a, global0.x, -(~_wgslsmith_sub_vec4_i32(var_0, vec4<i32>(3816i, 0i, var_1.a.x, var_1.a.x))));
}

