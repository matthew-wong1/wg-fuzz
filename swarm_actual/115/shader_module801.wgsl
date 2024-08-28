struct Struct_1 {
    a: vec3<bool>,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec2<u32>,
    b: Struct_1,
    c: u32,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
    d: vec2<i32>,
    e: u32,
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

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(0u, Struct_2(vec2<u32>(0u, 77421u), Struct_1(vec3<bool>(false, true, true), -1798f, -1i), 31653u)), Struct_3(33104u, Struct_2(vec2<u32>(29660u, 64135u), Struct_1(vec3<bool>(true, true, true), 1646f, 0i), 4294967295u)), Struct_3(41176u, Struct_2(vec2<u32>(46835u, 4294967295u), Struct_1(vec3<bool>(false, false, false), 975f, -60972i), 28105u)), Struct_3(4294967295u, Struct_2(vec2<u32>(8825u, 1u), Struct_1(vec3<bool>(true, true, false), 1023f, -2952i), 0u)), Struct_3(68959u, Struct_2(vec2<u32>(0u, 1u), Struct_1(vec3<bool>(true, true, false), -465f, 2147483647i), 17722u)), Struct_3(1017u, Struct_2(vec2<u32>(4294967295u, 39677u), Struct_1(vec3<bool>(true, false, false), -1000f, 7810i), 120296u)), Struct_3(13000u, Struct_2(vec2<u32>(18306u, 4294967295u), Struct_1(vec3<bool>(true, false, false), 386f, i32(-2147483648)), 0u)), Struct_3(4294967295u, Struct_2(vec2<u32>(1u, 7925u), Struct_1(vec3<bool>(false, true, false), -1493f, 1i), 65401u)), Struct_3(4294967295u, Struct_2(vec2<u32>(20025u, 82065u), Struct_1(vec3<bool>(false, true, false), -107f, 1i), 5714u)), Struct_3(4010u, Struct_2(vec2<u32>(48508u, 67003u), Struct_1(vec3<bool>(true, true, false), -849f, 2147483647i), 60614u)), Struct_3(4294967295u, Struct_2(vec2<u32>(40245u, 95387u), Struct_1(vec3<bool>(true, true, false), 1087f, 2147483647i), 6537u)), Struct_3(50755u, Struct_2(vec2<u32>(1u, 45823u), Struct_1(vec3<bool>(true, true, false), 122f, 0i), 1u)), Struct_3(30859u, Struct_2(vec2<u32>(0u, 89778u), Struct_1(vec3<bool>(true, true, true), -1984f, 2147483647i), 0u)), Struct_3(0u, Struct_2(vec2<u32>(67194u, 59798u), Struct_1(vec3<bool>(true, true, true), 105f, -1i), 4294967295u)), Struct_3(33700u, Struct_2(vec2<u32>(1u, 25561u), Struct_1(vec3<bool>(true, false, false), 126f, -33759i), 4294967295u)), Struct_3(0u, Struct_2(vec2<u32>(63064u, 5318u), Struct_1(vec3<bool>(false, false, true), -969f, 2147483647i), 4294967295u)), Struct_3(0u, Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<bool>(false, true, false), 312f, -12520i), 7211u)), Struct_3(42717u, Struct_2(vec2<u32>(38049u, 52166u), Struct_1(vec3<bool>(true, true, true), 823f, -1i), 37429u)), Struct_3(100890u, Struct_2(vec2<u32>(0u, 1u), Struct_1(vec3<bool>(false, true, true), -1022f, -1i), 42871u)), Struct_3(9781u, Struct_2(vec2<u32>(56156u, 67898u), Struct_1(vec3<bool>(true, false, true), -1000f, 37960i), 24442u)), Struct_3(45200u, Struct_2(vec2<u32>(1u, 1u), Struct_1(vec3<bool>(true, false, true), 1486f, 0i), 18516u)), Struct_3(4294967295u, Struct_2(vec2<u32>(4294967295u, 1u), Struct_1(vec3<bool>(true, true, false), 665f, 4170i), 35342u)), Struct_3(20269u, Struct_2(vec2<u32>(61500u, 86549u), Struct_1(vec3<bool>(false, false, true), 721f, -40573i), 59114u)), Struct_3(1u, Struct_2(vec2<u32>(6552u, 4294967295u), Struct_1(vec3<bool>(true, true, false), 1504f, 0i), 4294967295u)), Struct_3(26762u, Struct_2(vec2<u32>(53406u, 1u), Struct_1(vec3<bool>(false, false, false), -836f, 40222i), 4294967295u)), Struct_3(39991u, Struct_2(vec2<u32>(0u, 4294967295u), Struct_1(vec3<bool>(true, false, false), 1695f, -30489i), 8169u)), Struct_3(15127u, Struct_2(vec2<u32>(44730u, 5985u), Struct_1(vec3<bool>(false, true, true), 394f, 0i), 4294967295u)), Struct_3(1u, Struct_2(vec2<u32>(1u, 4294967295u), Struct_1(vec3<bool>(true, false, true), -112f, 40504i), 30868u)));

var<private> global1: Struct_1 = Struct_1(vec3<bool>(true, true, true), -1082f, 16403i);

var<private> global2: array<u32, 22> = array<u32, 22>(7449u, 3152u, 30393u, 29553u, 34216u, 4294967295u, 0u, 62100u, 1u, 22642u, 4294967295u, 98918u, 0u, 0u, 4227u, 4294967295u, 33196u, 20737u, 1u, 70847u, 25976u, 66379u);

var<private> global3: array<Struct_1, 17>;

var<private> global4: array<vec4<bool>, 6> = array<vec4<bool>, 6>(vec4<bool>(true, true, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, false), vec4<bool>(true, false, false, false));

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3(arg_0: vec4<u32>) -> vec3<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(112f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) * global1.b) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global1.b)) + _wgslsmith_f_op_f32(max(global1.b, global1.b)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(160f - global1.b)))), global1.b);
    var var_1 = Struct_5(_wgslsmith_add_vec2_u32(max(arg_0.wz, ~arg_0.wx ^ ~vec2<u32>(143321u, u_input.e)), _wgslsmith_add_vec2_u32(_wgslsmith_mult_vec2_u32(max(vec2<u32>(u_input.e, 89852u), vec2<u32>(u_input.e, global2[_wgslsmith_index_u32(50780u, 22u)])), _wgslsmith_add_vec2_u32(vec2<u32>(arg_0.x, global2[_wgslsmith_index_u32(7896u, 22u)]), arg_0.zw)), ~vec2<u32>(10303u, 60935u))), global3[_wgslsmith_index_u32(u_input.e, 17u)]);
    return _wgslsmith_sub_vec3_u32(_wgslsmith_div_vec3_u32(countOneBits(abs(arg_0.ywx)) << ((abs(arg_0.zyy) << (vec3<u32>(arg_0.x, global2[_wgslsmith_index_u32(1u, 22u)], 1u) % vec3<u32>(32u))) % vec3<u32>(32u)), vec3<u32>(_wgslsmith_mod_u32(_wgslsmith_clamp_u32(5859u, arg_0.x, arg_0.x), arg_0.x), global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 22u)], 22u)], _wgslsmith_dot_vec4_u32(~arg_0, ~vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 22u)], 22u)], global2[_wgslsmith_index_u32(u_input.a, 22u)], 1u)))), vec3<u32>(1u, _wgslsmith_dot_vec4_u32(~countOneBits(arg_0), ~vec4<u32>(var_1.a.x, global2[_wgslsmith_index_u32(48414u, 22u)], global2[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a)), _wgslsmith_div_u32(var_1.a.x & global2[_wgslsmith_index_u32(abs(40145u), 22u)], ~firstTrailingBit(1u))));
}

fn func_2(arg_0: Struct_3, arg_1: Struct_1) -> Struct_1 {
    let var_0 = arg_1.b;
    let var_1 = Struct_3(~max(371u, u_input.e) | (select(abs(arg_0.b.a.x), reverseBits(4294967295u), all(vec3<bool>(global1.a.x, false, arg_1.a.x))) << (arg_0.b.c % 32u)), Struct_2(vec2<u32>(32247u, u_input.e), Struct_1(!(!global1.a), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.b.b, -790f)), arg_1.c), firstLeadingBit(~(~1u))));
    let var_2 = min(select(max(_wgslsmith_mult_vec3_u32(~vec3<u32>(9313u, 0u, 4294967295u), _wgslsmith_div_vec3_u32(vec3<u32>(global2[_wgslsmith_index_u32(0u, 22u)], u_input.a, 9945u), vec3<u32>(96311u, global2[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a))), (vec3<u32>(0u, 0u, global2[_wgslsmith_index_u32(arg_0.a, 22u)]) << (vec3<u32>(56204u, arg_0.b.c, global2[_wgslsmith_index_u32(var_1.b.a.x, 22u)]) % vec3<u32>(32u))) << (~vec3<u32>(arg_0.b.c, 1u, 0u) % vec3<u32>(32u))), ~(~func_3(vec4<u32>(1u, 26360u, 0u, 21290u))), true), ~vec3<u32>(~(~4294967295u), ~firstLeadingBit(u_input.e), global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(reverseBits(global2[_wgslsmith_index_u32(26290u, 22u)]), global2[_wgslsmith_index_u32(58719u, 22u)] & global2[_wgslsmith_index_u32(var_1.a, 22u)]), 22u)]));
    global3 = array<Struct_1, 17>();
    let var_3 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0, 146f), vec2<f32>(global1.b, var_0), false)) + vec2<f32>(global1.b, 1862f)) - vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -922f), 1152f))), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1046f, -546f))))), global1.a.xz))));
    return Struct_1(!global1.a, _wgslsmith_f_op_f32(floor(-721f)), countOneBits(arg_1.c));
}

fn func_4(arg_0: Struct_1) -> u32 {
    global1 = func_2(global0[_wgslsmith_index_u32(~(~(~(global2[_wgslsmith_index_u32(u_input.a, 22u)] | global2[_wgslsmith_index_u32(u_input.e, 22u)]))), 28u)], global3[_wgslsmith_index_u32(~(~firstTrailingBit(abs(3735u))), 17u)]);
    global3 = array<Struct_1, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-282f, _wgslsmith_div_f32(-1253f, global1.b), _wgslsmith_f_op_f32(step(-783f, global1.b)), _wgslsmith_f_op_f32(round(global1.b))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.b, -396f, arg_0.b, -1359f) + vec4<f32>(228f, global1.b, global1.b, 1759f))))), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(780f, global1.b, -3327f, -758f))), vec4<f32>(global1.b, _wgslsmith_div_f32(arg_0.b, 969f), -937f, _wgslsmith_f_op_f32(-arg_0.b))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1062f, arg_0.b, -697f, 116f))))))))));
    let var_1 = Struct_2(vec2<u32>(global2[_wgslsmith_index_u32(30271u, 22u)], ~_wgslsmith_div_u32(_wgslsmith_div_u32(28347u, 11874u), global2[_wgslsmith_index_u32(~35524u, 22u)])), arg_0, _wgslsmith_mult_u32(u_input.e >> (~max(0u, u_input.a) % 32u), global2[_wgslsmith_index_u32(abs(abs(54157u)), 22u)]));
    global2 = array<u32, 22>();
    return _wgslsmith_dot_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(1u >> (global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(~1u, 22u)], 22u)] % 32u), 1u | _wgslsmith_dot_vec2_u32(var_1.a, vec2<u32>(u_input.e, global2[_wgslsmith_index_u32(u_input.e, 22u)])), u_input.e), _wgslsmith_sub_vec3_u32(vec3<u32>(1u & global2[_wgslsmith_index_u32(95055u, 22u)], abs(var_1.c), ~var_1.a.x), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 39761u, 6560u), ~vec3<u32>(u_input.a, 2454u, 14165u)))), vec3<u32>(u_input.a, var_1.c, ~4294967295u));
}

fn func_1() -> vec4<u32> {
    global1 = global3[_wgslsmith_index_u32(~((max(global2[_wgslsmith_index_u32(67781u, 22u)] << (u_input.a % 32u), u_input.a << (u_input.e % 32u)) >> (_wgslsmith_dot_vec3_u32(max(vec3<u32>(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(23797u, 22u)], 22u)], 1067u, global2[_wgslsmith_index_u32(u_input.a, 22u)]), vec3<u32>(global2[_wgslsmith_index_u32(4294967295u, 22u)], u_input.a, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.a, 22u)], 22u)])), vec3<u32>(u_input.a, 11867u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(u_input.e, 22u)], 22u)]) >> (vec3<u32>(u_input.a, u_input.a, 1u) % vec3<u32>(32u))) % 32u)) | ~(1u ^ ~global2[_wgslsmith_index_u32(u_input.e, 22u)])), 17u)];
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1187f));
    global3 = array<Struct_1, 17>();
    let var_1 = _wgslsmith_f_op_f32(-499f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global1.b + 1420f))) + -808f)));
    var var_2 = firstLeadingBit(vec4<i32>(0i, _wgslsmith_mult_i32(u_input.d.x, -23947i), 9221i, ~0i)) >> (~vec4<u32>(~_wgslsmith_mod_u32(4294967295u, 2616u), abs(u_input.e), 1u, u_input.a ^ 4294967295u) % vec4<u32>(32u));
    return vec4<u32>(func_4(func_2(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(107737u, u_input.e, 1u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 22u)], 23648u, 80769u)), 28u)], Struct_1(!global1.a, _wgslsmith_f_op_f32(-var_1), i32(-1i) * -63264i))), 52046u, u_input.a, u_input.a);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~global2[_wgslsmith_index_u32(_wgslsmith_div_u32(_wgslsmith_sub_u32(94654u, ~(global2[_wgslsmith_index_u32(4294967295u, 22u)] & global2[_wgslsmith_index_u32(u_input.a, 22u)])), 40649u), 22u)];
    let var_1 = global0[_wgslsmith_index_u32(u_input.a, 28u)];
    global0 = array<Struct_3, 28>();
    var var_2 = func_1() << (~_wgslsmith_div_vec4_u32(abs(vec4<u32>(4967u, 4294967295u, var_1.b.c, var_1.a)), select(~vec4<u32>(u_input.e, 1u, 152844u, 42880u), countOneBits(vec4<u32>(2126u, 84181u, u_input.e, u_input.a)), any(vec3<bool>(false, var_1.b.b.a.x, true)))) % vec4<u32>(32u));
    let var_3 = !global4[_wgslsmith_index_u32(72707u << (~func_1().x % 32u), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_2.zxy);
}

