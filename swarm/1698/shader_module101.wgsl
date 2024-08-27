struct Struct_1 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: vec3<f32>,
    e: vec3<i32>,
}

struct Struct_4 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 18>;

var<private> global1: Struct_4;

var<private> global2: array<vec2<f32>, 4>;

var<private> global3: array<Struct_3, 22> = array<Struct_3, 22>(Struct_3(Struct_1(-971f, vec4<bool>(true, true, false, false)), 4294967295u, 1763f, vec3<f32>(-174f, 1000f, 1000f), vec3<i32>(-47552i, -1i, 28573i)), Struct_3(Struct_1(-248f, vec4<bool>(false, true, true, false)), 1u, -2502f, vec3<f32>(1362f, -964f, 110f), vec3<i32>(19533i, 0i, 4101i)), Struct_3(Struct_1(-1323f, vec4<bool>(true, false, true, false)), 4294967295u, -601f, vec3<f32>(468f, -1507f, 2468f), vec3<i32>(0i, 0i, 0i)), Struct_3(Struct_1(110f, vec4<bool>(true, true, false, true)), 34867u, 1000f, vec3<f32>(1000f, 377f, 1184f), vec3<i32>(0i, 10312i, -12930i)), Struct_3(Struct_1(-1078f, vec4<bool>(false, true, true, false)), 1u, -284f, vec3<f32>(1324f, -858f, 902f), vec3<i32>(-1i, -1i, 0i)), Struct_3(Struct_1(-1824f, vec4<bool>(true, false, true, false)), 1u, 829f, vec3<f32>(-421f, 366f, 1900f), vec3<i32>(1i, -41856i, -12292i)), Struct_3(Struct_1(549f, vec4<bool>(true, true, true, true)), 4294967295u, -1017f, vec3<f32>(-2872f, 106f, 1000f), vec3<i32>(37196i, 0i, -20284i)), Struct_3(Struct_1(1000f, vec4<bool>(true, false, true, false)), 78206u, -1129f, vec3<f32>(-402f, 773f, 995f), vec3<i32>(1i, 0i, 51107i)), Struct_3(Struct_1(-220f, vec4<bool>(false, true, false, true)), 0u, 454f, vec3<f32>(-504f, 1509f, 1261f), vec3<i32>(0i, 0i, -79664i)), Struct_3(Struct_1(1079f, vec4<bool>(false, true, true, false)), 5586u, -218f, vec3<f32>(1228f, 1866f, 892f), vec3<i32>(1i, -1i, -3498i)), Struct_3(Struct_1(-2376f, vec4<bool>(true, true, true, true)), 47035u, -1331f, vec3<f32>(145f, 139f, -783f), vec3<i32>(83835i, 2147483647i, -1i)), Struct_3(Struct_1(-1195f, vec4<bool>(false, true, false, false)), 4294967295u, -953f, vec3<f32>(732f, 653f, -159f), vec3<i32>(-28523i, -54917i, 36047i)), Struct_3(Struct_1(254f, vec4<bool>(false, false, false, false)), 16438u, -2315f, vec3<f32>(-868f, 964f, -1806f), vec3<i32>(2147483647i, -13375i, 2147483647i)), Struct_3(Struct_1(326f, vec4<bool>(false, true, true, true)), 0u, -1000f, vec3<f32>(1333f, 868f, -603f), vec3<i32>(29524i, -36412i, -1i)), Struct_3(Struct_1(-900f, vec4<bool>(true, false, false, false)), 13059u, 1006f, vec3<f32>(2272f, -1362f, 573f), vec3<i32>(10216i, 1232i, i32(-2147483648))), Struct_3(Struct_1(-297f, vec4<bool>(true, true, true, false)), 8448u, 486f, vec3<f32>(606f, -294f, 346f), vec3<i32>(i32(-2147483648), 9005i, -22829i)), Struct_3(Struct_1(1241f, vec4<bool>(false, true, false, false)), 0u, 708f, vec3<f32>(1071f, 1246f, 101f), vec3<i32>(19540i, -1i, -26164i)), Struct_3(Struct_1(697f, vec4<bool>(true, false, false, false)), 42137u, 1583f, vec3<f32>(-265f, 475f, 2093f), vec3<i32>(-61046i, -29206i, -13940i)), Struct_3(Struct_1(231f, vec4<bool>(false, false, true, true)), 75169u, 1000f, vec3<f32>(-628f, 606f, 397f), vec3<i32>(-55089i, 1i, -55719i)), Struct_3(Struct_1(-1009f, vec4<bool>(false, true, true, true)), 1u, -1885f, vec3<f32>(471f, -1000f, -961f), vec3<i32>(-1i, i32(-2147483648), -11228i)), Struct_3(Struct_1(1415f, vec4<bool>(false, false, false, true)), 0u, 685f, vec3<f32>(-651f, 182f, 1026f), vec3<i32>(2147483647i, 27937i, 16883i)), Struct_3(Struct_1(-1186f, vec4<bool>(true, true, true, true)), 1u, 190f, vec3<f32>(912f, 351f, -1975f), vec3<i32>(1i, 1i, 23818i)));

var<private> global4: vec3<f32> = vec3<f32>(656f, -656f, -2020f);

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_3) -> vec3<bool> {
    let var_0 = -u_input.b;
    return arg_2.a.b.yzz;
}

fn func_2(arg_0: vec4<f32>, arg_1: i32, arg_2: vec3<u32>) -> Struct_4 {
    global3 = array<Struct_3, 22>();
    let var_0 = false;
    let var_1 = func_3(min(~(~(~arg_2.zy)), ~select(vec2<u32>(1u, 19229u), vec2<u32>(arg_2.x, global1.a) ^ vec2<u32>(global1.a, arg_2.x), !vec2<bool>(var_0, true))), _wgslsmith_dot_vec4_u32(~vec4<u32>(global1.a, global1.a, 73197u, global1.a), reverseBits(vec4<u32>(arg_2.x, arg_2.x, 42116u, 1u))) >> (global1.a % 32u), global0[_wgslsmith_index_u32(select(arg_2.x, arg_2.x, false), 18u)]);
    global2 = array<vec2<f32>, 4>();
    var var_2 = Struct_2(_wgslsmith_clamp_vec2_u32(arg_2.yx, _wgslsmith_add_vec2_u32(arg_2.xy, vec2<u32>(global1.a, 2132u)) ^ vec2<u32>(~global1.a, ~95403u), countOneBits(abs(select(vec2<u32>(4294967295u, global1.a), arg_2.xy, var_0)))), vec2<f32>(arg_0.x, -763f), vec4<u32>(~1u, abs(_wgslsmith_mult_u32(0u, ~4294967295u)), firstLeadingBit(global1.a), ~(~arg_2.x)));
    return Struct_4(max(var_2.c.x, 28138u));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_4, arg_2: u32, arg_3: f32) -> Struct_4 {
    global4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1297f, -743f, arg_3), vec3<f32>(arg_3, global4.x, -774f))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(283f, -183f, 1673f))))) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1535f, 832f, arg_0.b.x) - vec3<f32>(536f, arg_0.b.x, arg_3))))) * vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(-1000f * 857f), _wgslsmith_f_op_f32(-1157f * -771f)));
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(291f, _wgslsmith_f_op_f32(-arg_0.b.x))), arg_0.b.x)), _wgslsmith_f_op_f32(select(1055f, arg_3, !func_3(~arg_0.c.yx, ~arg_1.a, global3[_wgslsmith_index_u32(select(arg_0.c.x, 4294967295u, false), 22u)]).x))));
    let var_1 = abs(_wgslsmith_mod_i32(firstLeadingBit(-75736i), _wgslsmith_dot_vec3_i32(vec3<i32>(-1i, 2147483647i, 0i), vec3<i32>(u_input.b, u_input.a, 19049i)) ^ u_input.b) << (47544u % 32u));
    global3 = array<Struct_3, 22>();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1960f))))) * _wgslsmith_f_op_f32(global4.x - _wgslsmith_f_op_f32(118f - -851f))), -954f, 2184f);
    return arg_1;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: u32) -> vec4<u32> {
    let var_0 = func_4(Struct_2(~(~vec2<u32>(arg_1.b, 3374u)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(1177f, 484f)))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, global4.x) - vec2<f32>(409f, arg_0.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.d.x, arg_0.x))))), vec4<u32>(~0u, 48256u, _wgslsmith_clamp_u32(_wgslsmith_add_u32(0u, arg_2), ~arg_1.b, 33552u), 26582u)), func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, 794f, -1268f, global4.x) - vec4<f32>(829f, -981f, -563f, arg_0.x)))) - _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(242f, arg_0.x, -2078f, arg_0.x))))), abs(~(i32(-1i) * -1i)), vec3<u32>(arg_1.b | (global1.a >> (85485u % 32u)), ~66844u, arg_2)), ~(global1.a << (16418u % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_0.x, arg_0.x))));
    let var_1 = true;
    global3 = array<Struct_3, 22>();
    global0 = array<Struct_3, 18>();
    global1 = func_4(Struct_2(~(~(~vec2<u32>(4294967295u, arg_2))), _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(8306u, 4u)], _wgslsmith_div_vec2_f32(global2[_wgslsmith_index_u32(arg_2 & global1.a, 4u)], _wgslsmith_f_op_vec2_f32(vec2<f32>(global4.x, -1000f) + vec2<f32>(arg_1.c, -1253f)))), _wgslsmith_clamp_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(0u, arg_2, 60378u, 0u), _wgslsmith_sub_vec4_u32(vec4<u32>(0u, var_0.a, var_0.a, 1u), vec4<u32>(arg_2, 0u, arg_2, 0u)), vec4<u32>(0u, global1.a, arg_1.b, arg_1.b)), ~vec4<u32>(1u, var_0.a, global1.a, arg_1.b), ~(~vec4<u32>(72924u, 4294967295u, arg_1.b, global1.a)))), func_4(Struct_2(~max(vec2<u32>(arg_1.b, 0u), vec2<u32>(global1.a, 4294967295u)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global4.x, arg_1.a.a))), ~abs(vec4<u32>(0u, 0u, 1u, global1.a))), Struct_4(reverseBits(_wgslsmith_add_u32(1u, 0u))), ~(~(arg_2 & 42145u)), global4.x), 4294967295u, arg_1.d.x);
    return vec4<u32>(~_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_1.b, 4294967295u) ^ (vec2<u32>(arg_1.b, arg_1.b) << (vec2<u32>(9207u, arg_2) % vec2<u32>(32u))), _wgslsmith_div_vec2_u32(abs(vec2<u32>(arg_1.b, 0u)), vec2<u32>(0u, 16550u) | vec2<u32>(35571u, global1.a))), _wgslsmith_dot_vec4_u32(~(~firstLeadingBit(vec4<u32>(6955u, arg_2, 52264u, 22865u))), select(vec4<u32>(~arg_2, firstLeadingBit(1u), max(global1.a, global1.a), _wgslsmith_mult_u32(arg_1.b, 4294967295u)), firstLeadingBit(min(vec4<u32>(1u, 45421u, var_0.a, arg_2), vec4<u32>(4294967295u, arg_1.b, 0u, 0u))), !arg_1.a.b)), _wgslsmith_mod_u32(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(566f, -1133f, global4.x, 115f))), 0i, vec3<u32>(var_0.a ^ arg_1.b, 28911u & arg_2, firstLeadingBit(19982u))).a, countOneBits(arg_1.b)), _wgslsmith_clamp_u32(4392u, ~(~_wgslsmith_div_u32(124114u, arg_2)), countOneBits(4294967295u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(_wgslsmith_mult_vec4_u32(func_1(_wgslsmith_f_op_vec2_f32(exp2(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(16829u, 1u, global1.a), 4u)])), global3[_wgslsmith_index_u32(_wgslsmith_sub_u32(~global1.a, 89323u), 22u)], ~10341u), ~(~vec4<u32>(global1.a, 1u, global1.a, 4294967295u))));
    let var_1 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(global4.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4.x - global4.x))))), vec4<bool>(true, all(vec3<bool>(true, false, false)), !(!(global4.x == -729f)), true || (u_input.a > 7411i)));
    global2 = array<vec2<f32>, 4>();
    let var_2 = _wgslsmith_mod_vec3_u32(var_0.zwz, var_0.zxy);
    global4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-223f, var_1.a, var_1.a)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a, var_1.a, -302f)) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1113f, -1447f, 2961f), vec3<f32>(584f, 785f, var_1.a), var_1.b.wxz))), true)), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, -975f, -977f)) * _wgslsmith_div_vec3_f32(vec3<f32>(var_1.a, var_1.a, var_1.a), vec3<f32>(var_1.a, var_1.a, global4.x))))))));
    let x = u_input.a;
    s_output = StorageBuffer((vec2<u32>(func_4(Struct_2(vec2<u32>(4294967295u, 10711u), vec2<f32>(global4.x, -214f), vec4<u32>(4294967295u, global1.a, var_0.x, 1u)), Struct_4(1u), var_0.x, 1000f).a, 4294967295u | global1.a) ^ vec2<u32>(51272u, abs(var_0.x))) << (_wgslsmith_add_vec2_u32(var_2.xy, ~(vec2<u32>(110318u, var_2.x) & vec2<u32>(var_2.x, 64921u))) % vec2<u32>(32u)), max(u_input.a & -49502i, _wgslsmith_dot_vec2_i32(~vec2<i32>(-2147483647i, -17173i), (vec2<i32>(u_input.b, 2147483647i) ^ vec2<i32>(u_input.b, -18297i)) << (vec2<u32>(global1.a, 48316u) % vec2<u32>(32u)))), vec4<i32>(_wgslsmith_dot_vec4_i32(abs(select(vec4<i32>(u_input.a, u_input.b, 22097i, u_input.a), vec4<i32>(537i, -1i, -12542i, 2147483647i), false)), abs(vec4<i32>(u_input.b, u_input.a, u_input.b, 0i))), _wgslsmith_clamp_i32(u_input.a << ((0u << (var_0.x % 32u)) % 32u), _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a, 1i), vec2<i32>(-52216i, -1i)), _wgslsmith_mod_vec2_i32(vec2<i32>(56592i, 28357i), vec2<i32>(u_input.a, 33257i))), -27117i), ~u_input.b, -u_input.a), _wgslsmith_div_i32(-select(9374i, 696i, true) & -u_input.b, _wgslsmith_dot_vec4_i32(~min(vec4<i32>(27391i, u_input.a, -2147483647i, u_input.a), vec4<i32>(u_input.a, u_input.b, 0i, u_input.b)), -max(vec4<i32>(u_input.a, u_input.a, u_input.a, -1i), vec4<i32>(23318i, 23044i, u_input.b, 38771i)))), max(_wgslsmith_mult_u32(~min(4597u, global1.a), var_2.x), 0u));
}

