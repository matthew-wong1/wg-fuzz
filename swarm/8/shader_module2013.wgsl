struct Struct_1 {
    a: bool,
    b: vec4<u32>,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: f32,
    d: vec4<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(2017u, 4725u, 36385u);

var<private> global1: array<i32, 16>;

var<private> global2: array<f32, 12> = array<f32, 12>(-528f, 1432f, 862f, 391f, 758f, -630f, -1000f, -732f, -679f, -2312f, -1000f, -1443f);

var<private> global3: array<Struct_1, 31> = array<Struct_1, 31>(Struct_1(false, vec4<u32>(75224u, 1u, 0u, 32924u), vec2<f32>(-815f, 199f)), Struct_1(false, vec4<u32>(39234u, 0u, 1u, 1u), vec2<f32>(-513f, -254f)), Struct_1(true, vec4<u32>(1u, 6536u, 22799u, 15416u), vec2<f32>(326f, 1000f)), Struct_1(true, vec4<u32>(18708u, 0u, 61411u, 0u), vec2<f32>(-788f, -592f)), Struct_1(true, vec4<u32>(12954u, 3147u, 41347u, 4294967295u), vec2<f32>(-511f, 1157f)), Struct_1(true, vec4<u32>(4294967295u, 21619u, 9666u, 27762u), vec2<f32>(-1203f, -693f)), Struct_1(false, vec4<u32>(22109u, 14858u, 17372u, 43269u), vec2<f32>(442f, 348f)), Struct_1(true, vec4<u32>(70147u, 1u, 4294967295u, 12871u), vec2<f32>(713f, -1000f)), Struct_1(true, vec4<u32>(0u, 24081u, 1u, 21205u), vec2<f32>(-2333f, -726f)), Struct_1(true, vec4<u32>(4294967295u, 0u, 49895u, 1u), vec2<f32>(-448f, -1826f)), Struct_1(false, vec4<u32>(1u, 0u, 22994u, 4294967295u), vec2<f32>(-285f, -255f)), Struct_1(true, vec4<u32>(1u, 4294967295u, 1u, 14512u), vec2<f32>(-645f, -109f)), Struct_1(false, vec4<u32>(0u, 0u, 41531u, 32904u), vec2<f32>(1181f, -316f)), Struct_1(false, vec4<u32>(0u, 4294967295u, 4294967295u, 0u), vec2<f32>(107f, 626f)), Struct_1(false, vec4<u32>(0u, 0u, 83534u, 55246u), vec2<f32>(-522f, -850f)), Struct_1(true, vec4<u32>(12308u, 0u, 56922u, 1u), vec2<f32>(1446f, 223f)), Struct_1(true, vec4<u32>(18374u, 4294967295u, 58886u, 42657u), vec2<f32>(-308f, -299f)), Struct_1(true, vec4<u32>(0u, 4294967295u, 27227u, 7662u), vec2<f32>(-111f, 435f)), Struct_1(true, vec4<u32>(32540u, 42517u, 3132u, 20601u), vec2<f32>(1015f, -537f)), Struct_1(true, vec4<u32>(0u, 52956u, 1u, 0u), vec2<f32>(-839f, 537f)), Struct_1(false, vec4<u32>(14243u, 13247u, 1u, 81124u), vec2<f32>(1052f, -1508f)), Struct_1(false, vec4<u32>(1u, 1u, 64624u, 4294967295u), vec2<f32>(-1000f, -1364f)), Struct_1(false, vec4<u32>(0u, 1u, 13416u, 16848u), vec2<f32>(244f, -398f)), Struct_1(true, vec4<u32>(22276u, 95111u, 4294967295u, 45445u), vec2<f32>(663f, -987f)), Struct_1(true, vec4<u32>(1u, 1u, 1u, 1u), vec2<f32>(1534f, -1709f)), Struct_1(true, vec4<u32>(1u, 20269u, 61621u, 1u), vec2<f32>(-459f, -1889f)), Struct_1(true, vec4<u32>(1u, 0u, 0u, 32721u), vec2<f32>(-476f, 117f)), Struct_1(true, vec4<u32>(4294967295u, 4294967295u, 1u, 0u), vec2<f32>(-867f, 1462f)), Struct_1(false, vec4<u32>(0u, 31910u, 270u, 51118u), vec2<f32>(1489f, 177f)), Struct_1(true, vec4<u32>(1u, 19172u, 56763u, 32097u), vec2<f32>(-407f, 1159f)), Struct_1(false, vec4<u32>(2101u, 1u, 38208u, 76435u), vec2<f32>(283f, -298f)));

var<private> global4: array<bool, 27> = array<bool, 27>(true, true, true, false, false, true, false, true, false, true, true, false, false, false, true, false, true, true, true, true, false, true, false, false, true, true, true);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: vec3<u32>, arg_2: vec3<u32>, arg_3: vec4<bool>) -> u32 {
    var var_0 = false;
    var var_1 = Struct_1(false, ~vec4<u32>(_wgslsmith_add_u32(25532u, global0.x), 5213u, global0.x, ~global0.x) ^ vec4<u32>(arg_2.x, ~arg_1.x, 33080u, 9634u), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(0u, 12u)] - -262f), _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.a, 12u)] - global2[_wgslsmith_index_u32(arg_1.x, 12u)]))))));
    global0 = vec3<u32>(~4294967295u, (_wgslsmith_sub_u32(global0.x, var_1.b.x ^ var_1.b.x) << (~34588u % 32u)) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(20891u, global0.x), vec2<u32>(30524u, 4294967295u)), u_input.e.xx), select(19571u, 1u, var_1.a));
    let var_2 = vec2<bool>(global4[_wgslsmith_index_u32(~(~0u), 27u)], true);
    global0 = u_input.e;
    return 38726u;
}

fn func_2(arg_0: vec3<f32>) -> Struct_2 {
    return Struct_2(vec3<bool>(!(1868f == arg_0.x), !(!all(vec3<bool>(true, true, true))), (-42607i != _wgslsmith_div_i32(-1i, global1[_wgslsmith_index_u32(global0.x, 16u)])) & global4[_wgslsmith_index_u32(48111u, 27u)]), Struct_1(any(vec2<bool>(true, global4[_wgslsmith_index_u32(firstTrailingBit(u_input.a), 27u)])), ~vec4<u32>(507u, 14281u, global0.x | u_input.a, func_3(0i, vec3<u32>(global0.x, u_input.e.x, 61798u), u_input.e, vec4<bool>(global4[_wgslsmith_index_u32(4294967295u, 27u)], global4[_wgslsmith_index_u32(45481u, 27u)], global4[_wgslsmith_index_u32(u_input.e.x, 27u)], false))), _wgslsmith_f_op_vec2_f32(-arg_0.yx)));
}

fn func_1(arg_0: vec4<f32>, arg_1: Struct_2) -> vec4<i32> {
    var var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(u_input.a, 12u)], 1910f, 1000f))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(-243f, _wgslsmith_f_op_f32(abs(228f)), _wgslsmith_f_op_f32(arg_1.b.c.x - global2[_wgslsmith_index_u32(u_input.e.x, 12u)])) + arg_0.wzz)) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global2[_wgslsmith_index_u32(1u, 12u)], -101f, arg_1.b.c.x))))));
    var var_1 = func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(989f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.e.x, 12u)]) * _wgslsmith_f_op_f32(max(global2[_wgslsmith_index_u32(u_input.a, 12u)], 185f))), -559f), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-arg_0.wxz))) + vec3<f32>(-946f, _wgslsmith_f_op_f32(select(arg_0.x, -220f, false)), _wgslsmith_f_op_f32(717f * arg_1.b.c.x))), false)));
    var var_2 = func_2(arg_0.wyx).b.c.x;
    var_1 = arg_1;
    let var_3 = _wgslsmith_clamp_i32(_wgslsmith_sub_i32(u_input.d.x, reverseBits(-global1[_wgslsmith_index_u32(1u, 16u)])), u_input.d.x, _wgslsmith_mod_i32(-(u_input.d.x & global1[_wgslsmith_index_u32(1u, 16u)]), u_input.b.x) ^ max(global1[_wgslsmith_index_u32(u_input.a, 16u)], _wgslsmith_mod_i32(u_input.b.x, _wgslsmith_dot_vec3_i32(vec3<i32>(global1[_wgslsmith_index_u32(global0.x, 16u)], 28874i, -41786i), u_input.d))));
    return ~select(-vec4<i32>(abs(-22470i), ~0i, u_input.d.x, max(-15168i, 4895i)), -_wgslsmith_add_vec4_i32(-vec4<i32>(var_3, var_3, -102i, global1[_wgslsmith_index_u32(54850u, 16u)]), abs(vec4<i32>(0i, u_input.b.x, u_input.d.x, var_3))), vec4<bool>(true, 0i <= _wgslsmith_add_i32(var_3, var_3), select(func_2(arg_0.wzw).a.x, var_1.b.a, false), any(!vec4<bool>(arg_1.b.a, true, false, var_1.b.a))));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(~min(vec4<i32>(u_input.c, 19234i, _wgslsmith_mod_i32(-24140i, global1[_wgslsmith_index_u32(4294967295u, 16u)]), 1i), _wgslsmith_add_vec4_i32(func_1(vec4<f32>(global2[_wgslsmith_index_u32(1u, 12u)], 351f, -912f, global2[_wgslsmith_index_u32(117236u, 12u)]), Struct_2(vec3<bool>(global4[_wgslsmith_index_u32(global0.x, 27u)], global4[_wgslsmith_index_u32(22176u, 27u)], global4[_wgslsmith_index_u32(global0.x, 27u)]), global3[_wgslsmith_index_u32(22747u, 31u)])), _wgslsmith_mod_vec4_i32(vec4<i32>(-11016i, global1[_wgslsmith_index_u32(global0.x, 16u)], u_input.c, -1i), vec4<i32>(0i, global1[_wgslsmith_index_u32(u_input.a, 16u)], -20969i, global1[_wgslsmith_index_u32(u_input.a, 16u)])))), vec2<i32>(u_input.d.x, firstLeadingBit(-(u_input.c << (global0.x % 32u)))), -1172f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(374f, 1931f, global2[_wgslsmith_index_u32(12448u, 12u)], -905f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2112f, -215f, global2[_wgslsmith_index_u32(4294967295u, 12u)], -217f) + _wgslsmith_div_vec4_f32(vec4<f32>(global2[_wgslsmith_index_u32(80631u, 12u)], global2[_wgslsmith_index_u32(u_input.e.x, 12u)], -718f, 589f), vec4<f32>(global2[_wgslsmith_index_u32(global0.x, 12u)], global2[_wgslsmith_index_u32(u_input.a, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], -205f))))), vec3<i32>(reverseBits(global1[_wgslsmith_index_u32(~global0.x ^ ~4294967295u, 16u)]), 2147483647i << (global0.x % 32u), -_wgslsmith_sub_i32(_wgslsmith_add_i32(-715i, -5120i), u_input.c)));
}

