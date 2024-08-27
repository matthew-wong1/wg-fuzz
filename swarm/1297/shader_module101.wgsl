struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: bool,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<u32>,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 10>;

var<private> global1: bool = false;

var<private> global2: array<f32, 20>;

var<private> global3: array<Struct_1, 27> = array<Struct_1, 27>(Struct_1(vec4<u32>(6765u, 0u, 0u, 21289u)), Struct_1(vec4<u32>(1u, 1u, 1u, 63090u)), Struct_1(vec4<u32>(1u, 4294967295u, 1u, 8730u)), Struct_1(vec4<u32>(19733u, 4294967295u, 25930u, 72536u)), Struct_1(vec4<u32>(25980u, 1u, 0u, 4294967295u)), Struct_1(vec4<u32>(11511u, 1u, 49407u, 7787u)), Struct_1(vec4<u32>(10335u, 17620u, 18794u, 28275u)), Struct_1(vec4<u32>(4294967295u, 25640u, 4294967295u, 840u)), Struct_1(vec4<u32>(32800u, 0u, 4294967295u, 12507u)), Struct_1(vec4<u32>(0u, 13161u, 1u, 8277u)), Struct_1(vec4<u32>(71228u, 29368u, 47329u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 37542u, 4294967295u)), Struct_1(vec4<u32>(1u, 12555u, 1u, 0u)), Struct_1(vec4<u32>(32529u, 39527u, 57501u, 0u)), Struct_1(vec4<u32>(0u, 76073u, 4294967295u, 0u)), Struct_1(vec4<u32>(12808u, 0u, 43904u, 4294967295u)), Struct_1(vec4<u32>(0u, 0u, 1u, 4294967295u)), Struct_1(vec4<u32>(21230u, 27401u, 4294967295u, 29296u)), Struct_1(vec4<u32>(4294967295u, 41309u, 45351u, 1137u)), Struct_1(vec4<u32>(1u, 64582u, 0u, 20723u)), Struct_1(vec4<u32>(38272u, 0u, 1u, 23729u)), Struct_1(vec4<u32>(1u, 50508u, 1u, 4294967295u)), Struct_1(vec4<u32>(1u, 25293u, 0u, 0u)), Struct_1(vec4<u32>(1u, 9801u, 0u, 4294967295u)), Struct_1(vec4<u32>(4294967295u, 4294967295u, 24473u, 3628u)), Struct_1(vec4<u32>(1082u, 1u, 13185u, 0u)), Struct_1(vec4<u32>(98151u, 16124u, 6473u, 0u)));

var<private> global4: u32;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3) -> bool {
    global4 = arg_0.d.a.a.x;
    let var_0 = vec4<f32>(-880f, global2[_wgslsmith_index_u32(1u, 20u)], global2[_wgslsmith_index_u32(_wgslsmith_sub_u32(~max(max(0u, arg_0.e.a.a.x), firstLeadingBit(arg_0.d.d.a.x)), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(_wgslsmith_mult_vec3_u32(arg_0.a.a.xzy, vec3<u32>(arg_0.a.a.x, arg_0.d.d.a.x, 17953u)), ~arg_0.e.a.a.wxw), ~(~arg_0.d.d.a.wzw))), 20u)], _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~(arg_0.d.d.a.x | arg_0.a.a.x), 10u)]));
    var var_1 = -u_input.a.x;
    let var_2 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -817f), _wgslsmith_f_op_f32(sign(1000f))));
    var var_3 = Struct_4(-487f, vec4<u32>(4294967295u, ~max(_wgslsmith_dot_vec4_u32(arg_0.d.a.a, arg_0.e.a.a), ~arg_0.e.b.a.x), countOneBits(~4294967295u & _wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_0.a.a.x), vec2<u32>(4294967295u, arg_0.a.a.x))), 1u), global3[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 63151u, _wgslsmith_div_u32(_wgslsmith_clamp_u32(8761u, 11764u, arg_0.e.a.a.x), arg_0.d.d.a.x)), _wgslsmith_add_u32(1u, 4294967295u << ((arg_0.e.a.a.x & 1873u) % 32u))), 27u)], all(vec3<bool>(true, true, true)));
    return all(select(vec3<bool>(true, false, true), !(!vec3<bool>(var_3.d, true, true)), select(!select(vec3<bool>(var_3.d, false, arg_0.c), vec3<bool>(false, var_3.d, false), vec3<bool>(false, arg_0.c, var_3.d)), !select(vec3<bool>(var_3.d, false, var_3.d), vec3<bool>(false, true, arg_0.c), vec3<bool>(false, arg_0.c, var_3.d)), select(select(vec3<bool>(false, true, var_3.d), vec3<bool>(arg_0.c, var_3.d, arg_0.c), vec3<bool>(arg_0.c, true, true)), !vec3<bool>(false, arg_0.c, true), !var_3.d))));
}

fn func_2() -> vec3<bool> {
    let var_0 = u_input.a.x;
    let var_1 = vec2<f32>(global2[_wgslsmith_index_u32(~(~firstLeadingBit(_wgslsmith_sub_u32(4294967295u, 1313u))), 20u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -421f)) + _wgslsmith_f_op_f32(f32(-1f) * -143f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
    let var_2 = max(u_input.a.xy, ~firstTrailingBit(u_input.a.yx));
    var var_3 = vec3<bool>(true, 2094f == global0[_wgslsmith_index_u32(~(~154883u ^ firstTrailingBit(0u)), 10u)], !((~(-2147483647i) >> (1u % 32u)) >= var_0));
    let var_4 = -1i;
    return vec3<bool>(false, var_3.x, all(vec3<bool>(func_3(Struct_3(Struct_1(vec4<u32>(1u, 35867u, 110250u, 61296u)), 0i, var_3.x, Struct_2(Struct_1(vec4<u32>(34988u, 1u, 2292u, 48872u)), global3[_wgslsmith_index_u32(4294967295u, 27u)], var_0, global3[_wgslsmith_index_u32(1u, 27u)]), Struct_2(Struct_1(vec4<u32>(1u, 18031u, 44187u, 53262u)), Struct_1(vec4<u32>(33875u, 27524u, 4294967295u, 1u)), var_2.x, Struct_1(vec4<u32>(22504u, 4294967295u, 1u, 0u))))), all(select(vec2<bool>(true, false), vec2<bool>(var_3.x, false), var_3.yz)), var_3.x)));
}

fn func_4(arg_0: vec3<bool>, arg_1: vec2<bool>, arg_2: f32, arg_3: bool) -> f32 {
    global2 = array<f32, 20>();
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(4294967295u, 10u)])), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 10u)]), global2[_wgslsmith_index_u32(abs(~90346u), 20u)]), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(arg_2, 1734f, global0[_wgslsmith_index_u32(12830u, 10u)]), vec3<f32>(-1255f, arg_2, 332f), vec3<bool>(true, arg_0.x, arg_3))))))));
    let var_1 = Struct_2(Struct_1(abs(reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 2758u, 0u, 61850u), vec4<u32>(26050u, 40264u, 12910u, 3161u))))), Struct_1(~vec4<u32>(1u, 1u, 1u, 1u)), _wgslsmith_sub_i32(~(-2147483647i), countOneBits(40856i)), global3[_wgslsmith_index_u32(~reverseBits(52843u), 27u)]);
    global0 = array<f32, 10>();
    let var_2 = reverseBits(_wgslsmith_mod_vec4_i32(firstTrailingBit(~vec4<i32>(48110i, var_1.c, var_1.c, var_1.c) ^ -vec4<i32>(-2147483647i, u_input.a.x, var_1.c, u_input.a.x)), -max(vec4<i32>(var_1.c, var_1.c, 2147483647i, -1i), vec4<i32>(1i, var_1.c, var_1.c, -4387i)) & -_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, u_input.a.x, var_1.c, var_1.c), vec4<i32>(u_input.a.x, u_input.a.x, 26843i, u_input.a.x), vec4<i32>(29110i, -2147483647i, var_1.c, -1i))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(var_1.a.a.x, 20u)])) - 923f);
}

fn func_1(arg_0: bool, arg_1: vec3<f32>) -> Struct_1 {
    let var_0 = ~1u;
    global1 = 863f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(select(vec3<bool>(true, false, false), func_2(), select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(true, false, true))), vec2<bool>(true, u_input.a.x >= u_input.a.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1326f * 869f))), true)));
    global0 = array<f32, 10>();
    global4 = ~(~(~_wgslsmith_div_u32(60274u, 1u))) | var_0;
    let var_1 = vec4<bool>(arg_0, func_2().x, arg_0 == arg_0, any(vec3<bool>(true, !arg_0, -195f != _wgslsmith_f_op_f32(1449f - arg_1.x))));
    return global3[_wgslsmith_index_u32(min(~(~(~_wgslsmith_sub_u32(56315u, 15337u))), _wgslsmith_dot_vec3_u32(abs(~(vec3<u32>(58441u, 4294967295u, 52842u) | vec3<u32>(0u, var_0, var_0))), _wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(~vec3<u32>(var_0, var_0, 1u), vec3<u32>(1u, var_0, var_0) & vec3<u32>(27330u, var_0, var_0)), firstTrailingBit(~vec3<u32>(0u, var_0, var_0)), abs(countOneBits(vec3<u32>(var_0, 51537u, 1u)))))), 27u)];
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_1(u_input.a.x < u_input.a.x, _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], global2[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(0u, 10u)]) - vec3<f32>(1091f, -1811f, -1000f))))))), global3[_wgslsmith_index_u32(abs(min(1u >> (_wgslsmith_div_u32(0u, 44746u) % 32u), ~(66421u << (1u % 32u)))), 27u)], u_input.a.x, global3[_wgslsmith_index_u32(_wgslsmith_add_u32(1u, ~firstTrailingBit(_wgslsmith_sub_u32(4294967295u, 32580u))), 27u)]);
    var var_1 = Struct_2(var_0.d, global3[_wgslsmith_index_u32(abs(4294967295u), 27u)], min(~(~u_input.a.x), 1i), func_1(true, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1000f, -1000f, -1107f), vec3<f32>(global2[_wgslsmith_index_u32(78660u, 20u)], global0[_wgslsmith_index_u32(var_0.a.a.x, 10u)], 1872f), vec3<bool>(true, true, true))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(29948u, 20u)], -1187f, 325f))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global2[_wgslsmith_index_u32(var_0.a.a.x, 20u)], 786f, global2[_wgslsmith_index_u32(34041u, 20u)]) + vec3<f32>(global2[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(var_0.a.a.x, 10u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0[_wgslsmith_index_u32(4294967295u, 10u)], 1770f, global2[_wgslsmith_index_u32(var_0.a.a.x, 20u)]))))));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(sign(-237f)), vec4<u32>(abs(_wgslsmith_dot_vec3_u32(var_0.b.a.wxx, vec3<u32>(var_0.b.a.x, 48170u, 13452u))) & func_1(select(false, false, true), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(var_1.b.a.x, 10u)], global0[_wgslsmith_index_u32(1u, 10u)], global0[_wgslsmith_index_u32(var_0.d.a.x, 10u)]) * vec3<f32>(global0[_wgslsmith_index_u32(var_0.a.a.x, 10u)], global0[_wgslsmith_index_u32(var_0.b.a.x, 10u)], global2[_wgslsmith_index_u32(var_1.d.a.x, 20u)]))).a.x, var_0.b.a.x, var_0.d.a.x, 33u), Struct_1(vec4<u32>(min(~20685u, select(4294967295u, 1u, true)), _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a.a.x, var_1.b.a.x) & vec2<u32>(var_0.d.a.x, var_0.a.a.x), ~var_1.d.a.yy), 22276u, var_1.a.a.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_0.d.a, vec4<u32>(var_1.b.a.x, 72591u, var_0.b.a.x, 32952u)), 10u)]), 1393f)) < _wgslsmith_f_op_f32(f32(-1f) * -325f));
    var var_3 = var_1.b.a.x ^ (((_wgslsmith_clamp_u32(26639u, 4294967295u, 8393u) << (var_0.a.a.x % 32u)) ^ (abs(var_2.b.x) >> (firstLeadingBit(62582u) % 32u))) >> (var_1.a.a.x % 32u));
    global1 = any(vec3<bool>(0i >= -(var_0.c << (var_0.a.a.x % 32u)), ~_wgslsmith_dot_vec4_u32(var_0.d.a, var_1.b.a) < var_0.a.a.x, true));
    global2 = array<f32, 20>();
    let var_4 = func_1(var_2.d, _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1600f, -179f), _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(194f, global0[_wgslsmith_index_u32(0u, 10u)], -1000f)))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(72029u, 20u)], global0[_wgslsmith_index_u32(var_2.b.x, 10u)], 1179f)))), vec3<bool>(!var_2.d, true, true))));
    let var_5 = Struct_2(global3[_wgslsmith_index_u32((_wgslsmith_dot_vec2_u32(var_2.c.a.yx, vec2<u32>(1u, 1u)) ^ ~(var_1.d.a.x << (24063u % 32u))) & ~(~(var_2.b.x & 47907u)), 27u)], func_1(var_1.c <= min(1i, firstLeadingBit(u_input.a.x)), vec3<f32>(-665f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(366f, 1000f, false))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_4(vec3<bool>(var_2.d, var_2.d, var_2.d), vec2<bool>(false, true), -830f, var_2.d)), global0[_wgslsmith_index_u32(var_1.b.a.x, 10u)])))), reverseBits(u_input.a.x), Struct_1(~(~(~var_2.b))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.a, global2[_wgslsmith_index_u32(4294967295u, 20u)], -222f, global0[_wgslsmith_index_u32(var_2.c.a.x, 10u)])) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(1625f, var_2.a, global2[_wgslsmith_index_u32(4294967295u, 20u)], global2[_wgslsmith_index_u32(22631u, 20u)]), vec4<f32>(340f, global2[_wgslsmith_index_u32(17887u, 20u)], -1659f, 400f), var_2.d)))))), reverseBits(vec2<i32>(1863i, 18589i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -629f)));
}

