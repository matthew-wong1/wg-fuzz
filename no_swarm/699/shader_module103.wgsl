struct Struct_1 {
    a: vec4<i32>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(vec4<i32>(-4589i, 1i, 2147483647i, 1366i), vec4<f32>(-134f, 1157f, 1090f, -345f)), Struct_1(vec4<i32>(2147483647i, 0i, 0i, -13283i), vec4<f32>(-1211f, -1874f, -1000f, -446f)), Struct_1(vec4<i32>(-1i, 437i, 2147483647i, 42571i), vec4<f32>(-1315f, 759f, -622f, -2704f)), Struct_1(vec4<i32>(2147483647i, -17063i, -15944i, 5093i), vec4<f32>(-636f, -826f, -836f, 483f)), Struct_1(vec4<i32>(49631i, i32(-2147483648), -54735i, -38867i), vec4<f32>(-390f, -831f, -1603f, -166f)), Struct_1(vec4<i32>(-15633i, 2147483647i, 1i, -5256i), vec4<f32>(-1156f, -2002f, -314f, 1033f)), Struct_1(vec4<i32>(-2906i, -1i, i32(-2147483648), 1585i), vec4<f32>(-922f, -1000f, 2166f, 927f)), Struct_1(vec4<i32>(0i, i32(-2147483648), 0i, -1i), vec4<f32>(2110f, -960f, -1408f, -1322f)), Struct_1(vec4<i32>(2147483647i, -11058i, 39832i, 23698i), vec4<f32>(-842f, 790f, 357f, 832f)), Struct_1(vec4<i32>(6640i, 0i, 1i, 0i), vec4<f32>(-261f, -1663f, 947f, 716f)), Struct_1(vec4<i32>(-1i, 29146i, 2147483647i, 2147483647i), vec4<f32>(510f, -1579f, 1000f, 1494f)), Struct_1(vec4<i32>(-16816i, i32(-2147483648), -23881i, -37968i), vec4<f32>(-1148f, 858f, 848f, -1000f)), Struct_1(vec4<i32>(1i, 689i, 28959i, 0i), vec4<f32>(-1106f, -260f, -1800f, 180f)), Struct_1(vec4<i32>(-1i, -26378i, 33146i, 35074i), vec4<f32>(768f, -1000f, 617f, -347f)), Struct_1(vec4<i32>(-4113i, 1i, 1668i, -1i), vec4<f32>(-1735f, 207f, -1284f, -1000f)), Struct_1(vec4<i32>(0i, 6942i, 0i, -1i), vec4<f32>(-574f, 1000f, -1235f, -525f)), Struct_1(vec4<i32>(40521i, -1i, 1i, -9744i), vec4<f32>(-1000f, 587f, 537f, 1228f)), Struct_1(vec4<i32>(2147483647i, i32(-2147483648), -20426i, 28036i), vec4<f32>(290f, -1000f, 276f, -853f)), Struct_1(vec4<i32>(-25527i, -24156i, 45132i, -787i), vec4<f32>(-327f, 1188f, -255f, 293f)));

var<private> global1: array<bool, 19> = array<bool, 19>(true, true, true, true, true, false, false, false, true, true, false, true, true, false, false, true, true, false, true);

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: u32) -> f32 {
    var var_0 = vec2<i32>(u_input.a ^ firstTrailingBit(firstLeadingBit(7839i)), _wgslsmith_add_i32(1i, u_input.b)) & vec2<i32>(-1i, u_input.b);
    global1 = array<bool, 19>();
    var var_1 = -2147483647i;
    let var_2 = Struct_1(select(vec4<i32>(_wgslsmith_add_i32(u_input.a, 0i), var_0.x, var_0.x, 1i), firstLeadingBit(min(vec4<i32>(u_input.b, 1i, u_input.b, u_input.b), vec4<i32>(var_0.x, u_input.b, 2147483647i, 2147483647i) ^ vec4<i32>(9642i, 1i, var_0.x, u_input.b))), !vec4<bool>(global1[_wgslsmith_index_u32(arg_0, 19u)], true, true, all(vec2<bool>(global1[_wgslsmith_index_u32(arg_0, 19u)], true)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(996f, _wgslsmith_f_op_f32(-333f + 1712f), 885f, _wgslsmith_f_op_f32(f32(-1f) * -1037f))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1318f - 1287f) + _wgslsmith_f_op_f32(f32(-1f) * -1258f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-926f)), _wgslsmith_f_op_f32(200f - -774f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1001f) + -367f), -851f)));
    global0 = array<Struct_1, 19>();
    return 740f;
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(_wgslsmith_div_vec4_i32(select(vec4<i32>(56217i, ~(-1i), 1i, _wgslsmith_dot_vec3_i32(arg_0.a.xyy, vec3<i32>(arg_0.a.x, u_input.a, 2147483647i))), vec4<i32>(firstTrailingBit(arg_0.a.x), -u_input.a, ~u_input.a, _wgslsmith_mod_i32(arg_0.a.x, u_input.b)), select(vec4<bool>(true, true, true, true), vec4<bool>(global1[_wgslsmith_index_u32(27043u, 19u)], global1[_wgslsmith_index_u32(72333u, 19u)], global1[_wgslsmith_index_u32(1u, 19u)], true), true)), _wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(u_input.b, u_input.a, -12898i), _wgslsmith_mod_i32(4382i, -2147483647i), firstLeadingBit(-23297i), u_input.a), arg_0.a, vec4<i32>(arg_0.a.x | -11006i, ~(-10027i), arg_0.a.x, 0i))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(971f - _wgslsmith_f_op_f32(ceil(284f))), _wgslsmith_f_op_f32(f32(-1f) * -200f), _wgslsmith_f_op_f32(func_3(~4294967295u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x) + 1178f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-731f)) + -1654f), arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x - arg_0.b.x), 580f))));
    var var_1 = -149f;
    var var_2 = ~var_0.a.xzx;
    global0 = array<Struct_1, 19>();
    var_2 = var_0.a.xwy;
    return Struct_1(abs(var_0.a), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b.x, _wgslsmith_f_op_f32(select(1083f, -367f, false)), _wgslsmith_f_op_f32(step(arg_0.b.x, 1000f)), arg_0.b.x)))));
}

fn func_1() -> StorageBuffer {
    global1 = array<bool, 19>();
    var var_0 = (firstTrailingBit(1i) >> (max(~(~1u), ~(~4294967295u)) % 32u)) > u_input.a;
    let var_1 = func_2(global0[_wgslsmith_index_u32(100454u, 19u)]);
    let var_2 = Struct_1(_wgslsmith_sub_vec4_i32(var_1.a & var_1.a, vec4<i32>(-31396i, ~(~u_input.b), 29841i, var_1.a.x)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(vec4<f32>(var_1.b.x, _wgslsmith_f_op_f32(-var_1.b.x), _wgslsmith_f_op_f32(select(573f, var_1.b.x, true)), var_1.b.x), vec4<f32>(_wgslsmith_f_op_f32(func_3(1611u)), 553f, _wgslsmith_f_op_f32(select(981f, var_1.b.x, global1[_wgslsmith_index_u32(0u, 19u)])), _wgslsmith_f_op_f32(round(-1408f)))))));
    let var_3 = Struct_1(_wgslsmith_mult_vec4_i32(var_1.a << (select(vec4<u32>(1u, 1u, 1u, 1u), firstLeadingBit(vec4<u32>(94650u, 13648u, 0u, 88558u)), false) % vec4<u32>(32u)), vec4<i32>(u_input.b, _wgslsmith_mod_i32(func_2(global0[_wgslsmith_index_u32(4294967295u, 19u)]).a.x, abs(1i)), _wgslsmith_dot_vec2_i32(abs(var_2.a.yy), var_1.a.xy >> (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u))), i32(-1i) * -11076i)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_2.b))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, 426f, var_1.b.x, var_2.b.x))))));
    return StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(select(-745f, _wgslsmith_f_op_f32(sign(var_1.b.x)), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1202f * var_1.b.x), 809f))), -124f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.x))), 1u, var_1.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    global0 = array<Struct_1, 19>();
    var var_0 = _wgslsmith_mult_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(~41245i, u_input.a ^ _wgslsmith_add_i32(u_input.b, 2147483647i), -15748i, _wgslsmith_add_i32(~u_input.b, u_input.a)), max(vec4<i32>(-2147483647i, u_input.a, -8742i, 16908i), firstTrailingBit(vec4<i32>(u_input.b, 1724i, 2147483647i, u_input.b))) >> (_wgslsmith_add_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), ~vec4<u32>(35367u, 49808u, 39806u, 11231u)) % vec4<u32>(32u))), ~(-vec4<i32>(24240i, u_input.b, -18117i, u_input.b) | select(vec4<i32>(-6422i, 2147483647i, u_input.a, u_input.b), vec4<i32>(u_input.b, -23326i, u_input.a, -2147483647i), global1[_wgslsmith_index_u32(59708u, 19u)])) & ((_wgslsmith_mod_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, 2147483647i), vec4<i32>(u_input.b, 1i, u_input.b, u_input.a)) ^ vec4<i32>(33995i, 0i, -9220i, u_input.a)) | min(vec4<i32>(-21615i, u_input.b, u_input.b, 0i) | vec4<i32>(u_input.b, u_input.b, -15220i, -1i), ~vec4<i32>(u_input.b, -20467i, u_input.a, u_input.b))));
    let x = u_input.a;
    s_output = func_1();
}

