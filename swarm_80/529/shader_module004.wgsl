struct Struct_1 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: vec2<i32>,
    d: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<f32>(-426f, 1850f), vec4<i32>(-1i, -9801i, 26999i, 2147483647i), vec2<i32>(2810i, 27977i), vec3<i32>(2147483647i, -2696i, i32(-2147483648)));

var<private> global1: Struct_1;

var<private> global2: array<f32, 16> = array<f32, 16>(1197f, 814f, -1020f, -1507f, -997f, 1506f, 1118f, 142f, 1487f, -204f, -714f, 1591f, -2264f, -253f, -443f, -1791f);

var<private> global3: array<Struct_1, 21> = array<Struct_1, 21>(Struct_1(vec2<f32>(1009f, -549f), vec4<i32>(2147483647i, 33058i, -1i, i32(-2147483648)), vec2<i32>(-1i, 7787i), vec3<i32>(0i, -785i, i32(-2147483648))), Struct_1(vec2<f32>(710f, 171f), vec4<i32>(2147483647i, 2147483647i, 16551i, 0i), vec2<i32>(35449i, i32(-2147483648)), vec3<i32>(-1i, i32(-2147483648), 0i)), Struct_1(vec2<f32>(270f, 1000f), vec4<i32>(-29233i, 2147483647i, -1i, -1i), vec2<i32>(38326i, -1i), vec3<i32>(-1i, -1i, -1i)), Struct_1(vec2<f32>(-1727f, -101f), vec4<i32>(i32(-2147483648), 1559i, -2919i, -56207i), vec2<i32>(12942i, -2597i), vec3<i32>(7986i, 0i, -21797i)), Struct_1(vec2<f32>(-915f, -1112f), vec4<i32>(1i, -19263i, i32(-2147483648), 0i), vec2<i32>(-1i, 24730i), vec3<i32>(-21164i, 7961i, 26644i)), Struct_1(vec2<f32>(1295f, 577f), vec4<i32>(-21571i, -1i, i32(-2147483648), 16364i), vec2<i32>(4636i, -1i), vec3<i32>(0i, 12822i, 2147483647i)), Struct_1(vec2<f32>(-829f, 351f), vec4<i32>(0i, 0i, -465i, 1i), vec2<i32>(-1i, 1i), vec3<i32>(-9266i, 20398i, 94371i)), Struct_1(vec2<f32>(-558f, 2259f), vec4<i32>(0i, 2147483647i, i32(-2147483648), 4373i), vec2<i32>(-31688i, 0i), vec3<i32>(1i, -18265i, -10282i)), Struct_1(vec2<f32>(-1145f, -630f), vec4<i32>(-80204i, 14314i, 12537i, 0i), vec2<i32>(28389i, i32(-2147483648)), vec3<i32>(0i, 1i, 0i)), Struct_1(vec2<f32>(602f, -877f), vec4<i32>(-70528i, 27440i, 1i, -46874i), vec2<i32>(1i, -7782i), vec3<i32>(0i, 4659i, 1i)), Struct_1(vec2<f32>(1137f, 1000f), vec4<i32>(-37571i, 0i, -58850i, 1i), vec2<i32>(-29682i, -3356i), vec3<i32>(-42235i, -27606i, -13308i)), Struct_1(vec2<f32>(-485f, 649f), vec4<i32>(2147483647i, 9788i, -705i, -69244i), vec2<i32>(0i, 1i), vec3<i32>(11469i, 1i, -6212i)), Struct_1(vec2<f32>(217f, -284f), vec4<i32>(1i, 26699i, 80277i, 2147483647i), vec2<i32>(36094i, 47101i), vec3<i32>(-1i, 2147483647i, 1i)), Struct_1(vec2<f32>(-642f, -182f), vec4<i32>(56055i, i32(-2147483648), i32(-2147483648), 1i), vec2<i32>(-1i, 1i), vec3<i32>(-1i, -1i, -19407i)), Struct_1(vec2<f32>(606f, 1259f), vec4<i32>(-66783i, -1i, 53292i, 2147483647i), vec2<i32>(0i, -1i), vec3<i32>(-21573i, -24963i, 43715i)), Struct_1(vec2<f32>(309f, -336f), vec4<i32>(2147483647i, 15514i, i32(-2147483648), -5316i), vec2<i32>(-1i, i32(-2147483648)), vec3<i32>(-1779i, 2147483647i, 1i)), Struct_1(vec2<f32>(-420f, -806f), vec4<i32>(24514i, 1i, 0i, 8850i), vec2<i32>(1i, 6193i), vec3<i32>(25549i, 2147483647i, 0i)), Struct_1(vec2<f32>(-710f, -401f), vec4<i32>(14649i, -1i, -12331i, 0i), vec2<i32>(-37733i, 0i), vec3<i32>(40945i, 0i, i32(-2147483648))), Struct_1(vec2<f32>(-149f, -507f), vec4<i32>(-10589i, 23817i, -13332i, -34159i), vec2<i32>(37083i, 12473i), vec3<i32>(2147483647i, 1i, -10557i)), Struct_1(vec2<f32>(-510f, -2357f), vec4<i32>(0i, 22479i, -1i, 5351i), vec2<i32>(1i, 8765i), vec3<i32>(-1i, 14795i, -1i)), Struct_1(vec2<f32>(314f, -1392f), vec4<i32>(-15476i, 1i, 1i, -731i), vec2<i32>(48418i, -1i), vec3<i32>(1i, -52284i, 856i)));

var<private> global4: vec2<i32> = vec2<i32>(2147483647i, 0i);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: f32, arg_1: f32) -> f32 {
    global2 = array<f32, 16>();
    global4 = _wgslsmith_add_vec2_i32(min(-global1.b.xx, global1.b.zy), global0.c);
    return _wgslsmith_f_op_f32(f32(-1f) * -212f);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec3<f32>, arg_3: Struct_1) -> u32 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 16u)] - 665f), _wgslsmith_f_op_f32(func_2(680f, 426f)), -307f, 1836f)) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-262f, -264f, global2[_wgslsmith_index_u32(1u, 16u)], global0.a.x))))))));
    let var_1 = arg_3;
    let var_2 = arg_1;
    global4 = vec2<i32>(0i, 11300i);
    global3 = array<Struct_1, 21>();
    return countOneBits(~1u);
}

fn func_3() -> vec2<f32> {
    let var_0 = global3[_wgslsmith_index_u32(~(1u >> (1u % 32u)), 21u)];
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(625f, global1.a.x), vec2<f32>(global0.a.x, global1.a.x)))))), select(var_0.b, -_wgslsmith_add_vec4_i32(var_0.b, vec4<i32>(1i, global0.b.x, global0.b.x, u_input.a)) << (vec4<u32>(firstTrailingBit(4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(71207u, 1u), vec2<u32>(46973u, 1u)), ~43946u, 78366u) % vec4<u32>(32u)), vec4<bool>(false, !all(vec2<bool>(true, false)), _wgslsmith_f_op_f32(trunc(-1482f)) > _wgslsmith_f_op_f32(2026f + global0.a.x), true)), -_wgslsmith_sub_vec2_i32(var_0.c, _wgslsmith_add_vec2_i32(global1.c, vec2<i32>(1i, u_input.a)) << (min(vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 8336u)) % vec2<u32>(32u))), min(vec3<i32>(global1.b.x, abs(global4.x & 73124i), _wgslsmith_div_i32(u_input.a, global4.x) ^ _wgslsmith_div_i32(var_0.b.x, -1i)), _wgslsmith_clamp_vec3_i32(-select(global0.b.wyx, var_0.b.yxz, vec3<bool>(false, true, true)), firstTrailingBit(-vec3<i32>(var_0.c.x, -1i, -70467i)), countOneBits(vec3<i32>(-53455i, -20487i, -2147483647i)))));
    var var_1 = global4.x;
    return vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-161f * var_0.a.x) * global0.a.x)))), _wgslsmith_f_op_f32(1683f + 607f));
}

fn func_4(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec3<i32>) -> u32 {
    global3 = array<Struct_1, 21>();
    var var_0 = any(vec3<bool>(all(vec2<bool>(false, false)), any(vec2<bool>(true, true)) || all(vec2<bool>(true, true)), false));
    var var_1 = ~(~firstLeadingBit(firstTrailingBit(_wgslsmith_add_vec3_u32(vec3<u32>(1u, arg_0, 4294967295u), vec3<u32>(4294967295u, arg_0, 4294967295u)))));
    global4 = ~abs(-vec2<i32>(_wgslsmith_sub_i32(arg_3.x, -1i), u_input.a));
    var var_2 = -30955i;
    return ~(~(~(~1u))) ^ ~(~_wgslsmith_dot_vec3_u32(~vec3<u32>(89561u, arg_0, arg_0), select(vec3<u32>(63581u, var_1.x, var_1.x), vec3<u32>(4294967295u, 37220u, 0u), vec3<bool>(false, false, false))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(200f, _wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(max(-463f, global0.a.x))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(1000f, -792f)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(5151u, 16u)], global0.a.x), _wgslsmith_f_op_f32(floor(-1000f))))))));
    var var_1 = func_4(~_wgslsmith_mod_u32(func_1(32959u, global3[_wgslsmith_index_u32(19379u, 21u)], var_0.xxz, global3[_wgslsmith_index_u32(35088u, 21u)]), 0u), Struct_1(_wgslsmith_f_op_vec2_f32(func_3()), global1.b << (max(vec4<u32>(30134u, 21692u, 1u, 77u), vec4<u32>(0u, 0u, 32518u, 30310u)) % vec4<u32>(32u)), vec2<i32>(u_input.a, 125221i), ~global0.b.wzy), global3[_wgslsmith_index_u32(select(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 29364u, 1u, 17315u), vec4<u32>(0u, 7835u, 28730u, 2835u)), any(vec4<bool>(true, true, false, false))) ^ ~select(1u, 32853u, true), 21u)], vec3<i32>(u_input.a, global0.c.x, ~(~0i))) & 1u;
    global2 = array<f32, 16>();
    global3 = array<Struct_1, 21>();
    let var_2 = global1.a.x;
    var var_3 = global3[_wgslsmith_index_u32(reverseBits(abs(45652u)), 21u)];
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.a.x)), var_3.b, _wgslsmith_div_vec2_i32(global1.b.xx, vec2<i32>(global4.x, firstLeadingBit(-15176i))), global1.b.wyx);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_vec2_f32(func_3()).x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(_wgslsmith_div_f32(-472f, global1.a.x), -370f)) * _wgslsmith_f_op_f32(-233f - _wgslsmith_f_op_f32(744f * global1.a.x))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(843f)))), vec4<i32>(global1.b.x, 39944i, 59217i, -u_input.a));
}

