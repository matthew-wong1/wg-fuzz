struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: vec4<f32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
    c: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 2147483647i;

var<private> global1: vec3<bool> = vec3<bool>(false, false, false);

var<private> global2: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<i32>(0i, 1i), vec4<i32>(33859i, 0i, 38309i, 0i), vec4<f32>(1000f, -954f, 877f, -1459f)), Struct_2(vec2<i32>(-2469i, 7284i), vec4<i32>(-1i, 0i, 1i, i32(-2147483648)), vec4<f32>(283f, -1402f, -1654f, 526f)), Struct_2(vec2<i32>(11030i, 20708i), vec4<i32>(-39868i, 0i, 61979i, 2147483647i), vec4<f32>(980f, 1833f, 657f, 724f)), Struct_2(vec2<i32>(-1i, 29527i), vec4<i32>(15031i, -9474i, -28397i, i32(-2147483648)), vec4<f32>(-1000f, -1823f, -678f, -1179f)), Struct_2(vec2<i32>(1i, -43391i), vec4<i32>(-1i, 6463i, 2147483647i, 60237i), vec4<f32>(1144f, 833f, -1253f, -661f)), Struct_2(vec2<i32>(49958i, 1i), vec4<i32>(-1i, 2147483647i, 0i, 37789i), vec4<f32>(622f, 1150f, 415f, -1565f)), Struct_2(vec2<i32>(6280i, -1525i), vec4<i32>(i32(-2147483648), 5722i, 23334i, 46838i), vec4<f32>(1000f, 225f, 1000f, 219f)), Struct_2(vec2<i32>(40463i, 10664i), vec4<i32>(47680i, 19067i, 2319i, -3907i), vec4<f32>(-1578f, 133f, 384f, 886f)), Struct_2(vec2<i32>(57191i, 2147483647i), vec4<i32>(-23076i, i32(-2147483648), -14824i, 2147483647i), vec4<f32>(-336f, -784f, 246f, -207f)), Struct_2(vec2<i32>(i32(-2147483648), i32(-2147483648)), vec4<i32>(21378i, -6565i, 70869i, 1i), vec4<f32>(-410f, -619f, 618f, 1477f)), Struct_2(vec2<i32>(11887i, 2147483647i), vec4<i32>(2147483647i, -9977i, -36238i, 0i), vec4<f32>(-426f, 657f, 652f, 1055f)), Struct_2(vec2<i32>(i32(-2147483648), 55350i), vec4<i32>(1i, -6085i, -1i, 2147483647i), vec4<f32>(-445f, -335f, -1993f, -1548f)), Struct_2(vec2<i32>(-1i, 1i), vec4<i32>(56991i, i32(-2147483648), i32(-2147483648), 9858i), vec4<f32>(-1000f, -269f, -1000f, 1000f)), Struct_2(vec2<i32>(i32(-2147483648), -6936i), vec4<i32>(-1i, -19761i, i32(-2147483648), 2147483647i), vec4<f32>(498f, -1000f, -621f, 751f)), Struct_2(vec2<i32>(i32(-2147483648), -61663i), vec4<i32>(-1i, -8750i, 0i, 2147483647i), vec4<f32>(-1000f, -1160f, 510f, -630f)), Struct_2(vec2<i32>(-87749i, -4314i), vec4<i32>(i32(-2147483648), -1i, 49943i, 1i), vec4<f32>(-428f, -1392f, -123f, -1376f)), Struct_2(vec2<i32>(-10960i, 8074i), vec4<i32>(-3593i, -18623i, 29785i, -6219i), vec4<f32>(-111f, -1898f, 158f, 348f)), Struct_2(vec2<i32>(2147483647i, -30836i), vec4<i32>(i32(-2147483648), -37275i, -10895i, -28450i), vec4<f32>(-1220f, 2459f, -1000f, 607f)), Struct_2(vec2<i32>(-15101i, -69521i), vec4<i32>(1i, -1i, -20039i, -1i), vec4<f32>(177f, 2470f, -2217f, -1888f)), Struct_2(vec2<i32>(1i, -2287i), vec4<i32>(-35181i, -1i, -28957i, i32(-2147483648)), vec4<f32>(-1485f, -934f, 1277f, 1099f)), Struct_2(vec2<i32>(-1i, 56175i), vec4<i32>(-1i, 33040i, 16236i, -34332i), vec4<f32>(418f, 708f, 258f, -1607f)), Struct_2(vec2<i32>(i32(-2147483648), -3273i), vec4<i32>(i32(-2147483648), -9832i, 2147483647i, -1i), vec4<f32>(1188f, 1000f, 550f, -383f)), Struct_2(vec2<i32>(2147483647i, 0i), vec4<i32>(i32(-2147483648), -1i, 2147483647i, i32(-2147483648)), vec4<f32>(456f, -422f, -164f, 576f)), Struct_2(vec2<i32>(-11036i, 1i), vec4<i32>(41675i, 1i, -1i, 23743i), vec4<f32>(-653f, 491f, 1000f, -943f)), Struct_2(vec2<i32>(0i, -57131i), vec4<i32>(1i, 0i, 12200i, 36554i), vec4<f32>(-1220f, 620f, 560f, 1608f)), Struct_2(vec2<i32>(2147483647i, i32(-2147483648)), vec4<i32>(7263i, -39505i, 22956i, -1i), vec4<f32>(161f, -523f, -1532f, 1000f)), Struct_2(vec2<i32>(-25665i, -3167i), vec4<i32>(-33959i, -57134i, 1i, 41185i), vec4<f32>(957f, -460f, 2391f, -629f)));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_1) -> f32 {
    let var_0 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, arg_0.d.x, 4294967295u, arg_0.d.x) | arg_0.b, arg_0.b, vec4<bool>(true, true, false, false)), ~min(arg_0.b, vec4<u32>(arg_0.b.x, 4294967295u, arg_0.d.x, 4294967295u))), select(_wgslsmith_div_u32(select(arg_0.c.x, 17951u, arg_0.a.x), ~arg_0.d.x), _wgslsmith_sub_u32(firstLeadingBit(arg_0.b.x), arg_0.b.x), !arg_0.a.x)), min(_wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(arg_0.b.x, 0u, 77705u)), ~(~arg_0.b.zxx)), arg_0.b.x)), 27u)];
    let var_1 = arg_0;
    global0 = -1i;
    var var_2 = Struct_3(~var_1.c, global2[_wgslsmith_index_u32(6433u, 27u)], _wgslsmith_f_op_f32(round(var_0.c.x)));
    var var_3 = Struct_1(var_1.a, ~_wgslsmith_mod_vec4_u32(max(~vec4<u32>(arg_0.d.x, 18193u, 11537u, var_2.a.x), arg_0.b), vec4<u32>(32372u, 5063u, ~39642u, 13651u)), reverseBits(vec3<u32>(_wgslsmith_mod_u32(0u, var_2.a.x), var_2.a.x, var_2.a.x) & vec3<u32>(var_2.a.x, arg_0.b.x | 4294967295u, 4294967295u)), var_2.a.zy);
    return _wgslsmith_f_op_f32(select(-379f, var_0.c.x, var_1.a.x));
}

fn func_2(arg_0: vec3<bool>, arg_1: i32) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(Struct_1(global1.yx, vec4<u32>(17289u, 18524u, 1u, 4294967295u), vec3<u32>(4294967295u, 54859u, 0u), vec2<u32>(0u, 1u)))), _wgslsmith_f_op_f32(-276f - _wgslsmith_div_f32(1000f, 1182f)))) - _wgslsmith_f_op_f32(abs(1f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - 1360f)), _wgslsmith_f_op_f32(-1f))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-971f, 232f) - 1f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-734f - 1000f), _wgslsmith_f_op_f32(min(-207f, 403f))))))));
    var var_1 = global2[_wgslsmith_index_u32(75740u, 27u)];
    var var_2 = _wgslsmith_sub_vec4_u32(~firstLeadingBit(~max(vec4<u32>(4294967295u, 38777u, 14812u, 4294967295u), vec4<u32>(9990u, 4294967295u, 62409u, 86128u))), _wgslsmith_mult_vec4_u32(select(countOneBits(vec4<u32>(0u, 52506u, 0u, 5791u)), vec4<u32>(24334u, 1u, 33571u, 9817u), vec4<bool>(global1.x, false, false, true)), _wgslsmith_clamp_vec4_u32(vec4<u32>(34626u, 61756u, 5681u, 18956u), max(vec4<u32>(0u, 47216u, 64437u, 1u), vec4<u32>(4294967295u, 4294967295u, 3724u, 4294967295u)), ~vec4<u32>(11560u, 1958u, 0u, 37077u))) ^ ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, 56825u, 0u, 21957u), vec4<u32>(1u, 1u, 1u, 1u)));
    var var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.yx * var_0.xy)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.c.x), _wgslsmith_f_op_f32(-var_1.c.x)))));
    let var_4 = ~min(vec4<u32>(47u, _wgslsmith_dot_vec3_u32(var_2.yyw, vec3<u32>(31705u, var_2.x, var_2.x)), _wgslsmith_dot_vec4_u32(vec4<u32>(var_2.x, 1683u, 0u, 65974u), vec4<u32>(var_2.x, 18519u, 1u, var_2.x) & vec4<u32>(var_2.x, 0u, var_2.x, 4294967295u)), max(var_2.x, var_2.x)), vec4<u32>(4294967295u, _wgslsmith_add_u32(var_2.x, ~122785u), ~abs(var_2.x), ~var_2.x));
    return Struct_2(_wgslsmith_add_vec2_i32(~(~(~vec2<i32>(-21684i, 14123i))), ~(-var_1.b.zy) | ((vec2<i32>(1i, u_input.c.x) << (var_2.yx % vec2<u32>(32u))) | (u_input.c ^ u_input.c))), vec4<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(_wgslsmith_div_vec2_i32(var_1.a, vec2<i32>(3538i, 18960i)), _wgslsmith_mult_vec2_i32(u_input.c, var_1.b.zx)), var_1.b.yz), var_1.b.x, u_input.c.x, arg_1), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1369f, -197f, _wgslsmith_f_op_f32(f32(-1f) * -622f), -1255f)), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(var_3.x, var_0.x, var_0.x, var_0.x)))))))));
}

fn func_4(arg_0: vec4<i32>, arg_1: Struct_2, arg_2: Struct_2) -> vec3<bool> {
    let var_0 = Struct_1(vec2<bool>(!global1.x && global1.x, !any(!vec3<bool>(global1.x, true, true))), vec4<u32>(~1u, 1u, ~1u, 4294967295u), ~vec3<u32>(_wgslsmith_clamp_u32(~12283u, _wgslsmith_clamp_u32(60400u, 1u, 1u), select(6419u, 13835u, true)), ~(~4294967295u), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 4294967295u, 1196u, 1u), vec4<u32>(74498u, 4813u, 4294967295u, 88983u)), 14560u, ~4294967295u)), ~(~reverseBits(~vec2<u32>(1u, 0u))));
    var var_1 = arg_1.a.x << (89467u % 32u);
    let var_2 = func_2(select(vec3<bool>(true, all(!vec2<bool>(var_0.a.x, false)), all(vec4<bool>(global1.x, var_0.a.x, global1.x, global1.x))), vec3<bool>(false, any(select(vec4<bool>(var_0.a.x, false, var_0.a.x, global1.x), vec4<bool>(true, true, var_0.a.x, true), global1.x)), !var_0.a.x && false), var_0.b.x >= var_0.b.x), -_wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 17243i), ~vec2<i32>(18315i, 35339i)), 1i));
    var_1 = func_2(vec3<bool>(true, true, var_0.a.x), -(~(-1i))).a.x ^ firstTrailingBit(77684i);
    global0 = arg_1.a.x;
    return !select(!(!select(vec3<bool>(global1.x, false, global1.x), vec3<bool>(var_0.a.x, true, var_0.a.x), global1.x)), !vec3<bool>(false, all(vec4<bool>(true, var_0.a.x, true, var_0.a.x)), !var_0.a.x), global1.x);
}

fn func_1(arg_0: Struct_3, arg_1: Struct_2) -> vec3<u32> {
    var var_0 = select(select(select(func_4(-vec4<i32>(u_input.c.x, -32190i, arg_1.a.x, u_input.a.x), Struct_2(vec2<i32>(-42193i, 15760i), vec4<i32>(arg_0.b.b.x, -1i, 0i, -29410i), vec4<f32>(-675f, arg_1.c.x, arg_1.c.x, -450f)), func_2(vec3<bool>(global1.x, false, true), u_input.b)), !select(vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(true, false, false), vec3<bool>(global1.x, global1.x, global1.x)), !(!vec3<bool>(true, global1.x, global1.x))), !(!(!vec3<bool>(global1.x, global1.x, true))), select(!(-364f <= arg_0.b.c.x), global1.x, arg_0.a.x < 14046u)), func_4(vec4<i32>(-1i) * -arg_1.b, func_2(select(select(vec3<bool>(global1.x, false, false), vec3<bool>(global1.x, false, true), vec3<bool>(global1.x, true, false)), select(vec3<bool>(global1.x, false, true), vec3<bool>(true, global1.x, global1.x), true), any(vec4<bool>(global1.x, false, false, global1.x))), arg_0.b.b.x), func_2(select(func_4(vec4<i32>(-2147483647i, arg_1.b.x, arg_1.b.x, 1i), Struct_2(u_input.a.zw, vec4<i32>(arg_1.a.x, 0i, arg_0.b.b.x, -1i), arg_0.b.c), Struct_2(arg_0.b.b.ww, arg_0.b.b, vec4<f32>(-2406f, -1152f, 1181f, 737f))), vec3<bool>(false, false, true), !vec3<bool>(false, global1.x, global1.x)), arg_1.a.x >> (~arg_0.a.x % 32u))), all(select(vec4<bool>(global1.x, -2147483647i >= arg_1.a.x, false, false), vec4<bool>(true, true, true, true), !vec4<bool>(global1.x, true, true, true))));
    global1 = select(vec3<bool>(var_0.x, true, _wgslsmith_f_op_f32(1267f + -258f) != _wgslsmith_f_op_f32(arg_1.c.x - _wgslsmith_f_op_f32(max(176f, arg_0.b.c.x)))), select(!func_4(u_input.a, arg_1, func_2(vec3<bool>(false, false, false), -1i)), !select(select(vec3<bool>(false, true, global1.x), vec3<bool>(false, true, true), var_0.x), !vec3<bool>(global1.x, true, false), false), true == any(func_4(vec4<i32>(19686i, arg_0.b.b.x, 2147483647i, u_input.c.x), arg_0.b, Struct_2(arg_1.a, vec4<i32>(2343i, arg_0.b.a.x, arg_0.b.a.x, -2147483647i), arg_0.b.c)))), false);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1.c.wyz + arg_0.b.c.yyw) + _wgslsmith_f_op_vec3_f32(select(arg_0.b.c.ywy, arg_1.c.ywz, var_0.x))) + _wgslsmith_f_op_vec3_f32(-arg_1.c.zyx)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.c, arg_0.b.c.x, arg_1.c.x) * vec3<f32>(418f, arg_0.c, 1000f)))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2243f, -1542f, arg_1.c.x)), vec3<f32>(-539f, -164f, arg_1.c.x)))));
    global0 = -2147483647i;
    let var_2 = ~(~(select(vec4<u32>(1u, arg_0.a.x, arg_0.a.x, 36626u), vec4<u32>(arg_0.a.x, 1u, 4294967295u, arg_0.a.x), false) << (_wgslsmith_clamp_vec4_u32(max(vec4<u32>(113555u, 8473u, arg_0.a.x, arg_0.a.x), vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, arg_0.a.x)), _wgslsmith_mod_vec4_u32(vec4<u32>(31405u, arg_0.a.x, 4294967295u, 25865u), vec4<u32>(0u, 52745u, 108393u, arg_0.a.x)), vec4<u32>(arg_0.a.x, 23247u, arg_0.a.x, 0u)) % vec4<u32>(32u))));
    return ~abs(arg_0.a) & select(arg_0.a, vec3<u32>(~16800u & ~arg_0.a.x, arg_0.a.x, ~countOneBits(59481u)), any(!select(vec3<bool>(true, global1.x, false), vec3<bool>(var_0.x, global1.x, global1.x), false)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec3<bool>(global1.x, global1.x, !global1.x);
    let var_0 = Struct_1(global1.zx, vec4<u32>(37764u, abs(~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 30868u, 3665u, 4294967295u), vec4<u32>(24233u, 32932u, 4294967295u, 0u))), 1u, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 1718u), vec2<u32>(4294967295u, 39222u))), 0u)), vec3<u32>(1252u, ~firstTrailingBit(4294967295u), ~(~63285u)) & _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(4294967295u, 1u, 4294967295u)), ~func_1(Struct_3(vec3<u32>(49798u, 0u, 0u), Struct_2(vec2<i32>(-2147483647i, u_input.c.x), u_input.a, vec4<f32>(753f, 528f, -1419f, 2290f)), -1000f), Struct_2(u_input.a.zy, vec4<i32>(-55741i, u_input.a.x, u_input.c.x, u_input.a.x), vec4<f32>(306f, -896f, 1314f, -2156f)))), _wgslsmith_sub_vec2_u32(~vec2<u32>(~0u, min(19526u, 14384u)), ~select(firstLeadingBit(vec2<u32>(48331u, 49723u)), vec2<u32>(4294967295u, 4294967295u), select(vec2<bool>(global1.x, false), vec2<bool>(global1.x, false), global1.zz))));
    global0 = -47941i;
    var var_1 = global1.xy;
    var var_2 = Struct_3(firstTrailingBit(_wgslsmith_clamp_vec3_u32(func_1(Struct_3(vec3<u32>(var_0.b.x, var_0.b.x, 0u), global2[_wgslsmith_index_u32(var_0.c.x, 27u)], 892f), func_2(vec3<bool>(var_0.a.x, false, false), u_input.b)), vec3<u32>(var_0.b.x, 1u, ~var_0.b.x), reverseBits(func_1(Struct_3(var_0.b.wyz, global2[_wgslsmith_index_u32(var_0.d.x, 27u)], 1123f), Struct_2(vec2<i32>(u_input.a.x, u_input.b), u_input.a, vec4<f32>(-302f, -1624f, -256f, 400f)))))), func_2(!func_4(u_input.a, global2[_wgslsmith_index_u32(var_0.d.x << (var_0.c.x % 32u), 27u)], global2[_wgslsmith_index_u32(~4294967295u, 27u)]), 2147483647i), _wgslsmith_f_op_f32(1011f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-796f + -482f), _wgslsmith_f_op_f32(295f - -1000f))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(Struct_1(var_0.a, var_0.b, var_0.b.yxx, vec2<u32>(30957u, 1u)))))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.d.x, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.b.c.x, 1973f, 1011f, 1624f)))), _wgslsmith_f_op_vec4_f32(exp2(var_2.b.c)), vec4<bool>(!var_0.a.x, var_1.x || false, false, !global1.x))))));
}

