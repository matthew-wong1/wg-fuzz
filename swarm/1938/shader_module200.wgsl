struct Struct_1 {
    a: vec3<u32>,
    b: vec2<i32>,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: i32 = i32(-2147483648);

var<private> global2: f32;

var<private> global3: array<Struct_1, 8> = array<Struct_1, 8>(Struct_1(vec3<u32>(61018u, 0u, 22923u), vec2<i32>(0i, -48910i), true, vec2<u32>(6488u, 0u)), Struct_1(vec3<u32>(1u, 1u, 4294967295u), vec2<i32>(1i, 50120i), true, vec2<u32>(34316u, 55683u)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u), vec2<i32>(11705i, 46925i), false, vec2<u32>(4294967295u, 0u)), Struct_1(vec3<u32>(38061u, 1u, 4294967295u), vec2<i32>(2147483647i, 26605i), false, vec2<u32>(15026u, 0u)), Struct_1(vec3<u32>(10272u, 87711u, 1u), vec2<i32>(2147483647i, i32(-2147483648)), true, vec2<u32>(35402u, 38263u)), Struct_1(vec3<u32>(4294967295u, 0u, 0u), vec2<i32>(-1i, i32(-2147483648)), true, vec2<u32>(7726u, 0u)), Struct_1(vec3<u32>(46797u, 10761u, 22501u), vec2<i32>(i32(-2147483648), i32(-2147483648)), true, vec2<u32>(0u, 0u)), Struct_1(vec3<u32>(1u, 1u, 23895u), vec2<i32>(1i, -38298i), false, vec2<u32>(1u, 35026u)));

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> u32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -775f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(1535f))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(1000f, 413f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-183f, -1000f, -1086f), vec3<f32>(1000f, -493f, -1160f)) + vec3<f32>(703f, 1580f, -754f)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1475f, 498f, 1000f))) * vec3<f32>(1f, 1f, 1f)))) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-931f, 1264f, 1692f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1463f, 127f, 1461f))) - vec3<f32>(-1442f, _wgslsmith_f_op_f32(f32(-1f) * -1104f), -982f))));
    global1 = i32(-1i) * -(abs(_wgslsmith_mod_i32(global0.b.b.x, u_input.a)) ^ arg_0.b.x);
    var var_1 = _wgslsmith_div_vec4_i32(abs(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.a, arg_1, -902i, 28011i), vec4<i32>(arg_0.b.x, arg_1, arg_1, 20640i))), firstLeadingBit(-vec4<i32>(-44927i, global0.b.b.x, 2147483647i, -2147483647i)) | vec4<i32>(3257i, global0.b.b.x << (global0.b.d.x % 32u), 49481i, 32967i)) >> (_wgslsmith_div_vec4_u32(_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(firstLeadingBit(vec4<u32>(11586u, 4294967295u, arg_0.d.x, 32131u)), vec4<u32>(arg_0.d.x, arg_0.a.x, 4294967295u, 48693u) | vec4<u32>(global0.a, 2266u, 4294967295u, global0.b.a.x)), vec4<u32>(~arg_0.a.x, arg_0.a.x, global0.a, arg_0.a.x)), reverseBits(vec4<u32>(arg_0.a.x, ~36429u, ~global0.c, arg_0.a.x))) % vec4<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_div_f32(320f, -573f))))))));
    var var_3 = Struct_2(select(global0.b.d.x, 0u >> ((_wgslsmith_add_u32(8413u, arg_0.a.x) >> (27461u % 32u)) % 32u), !all(select(vec4<bool>(global0.b.c, global0.b.c, true, arg_0.c), vec4<bool>(global0.b.c, global0.b.c, arg_0.c, true), global0.b.c))), arg_0, ~(countOneBits(arg_0.d.x) << (arg_0.a.x % 32u)));
    return 127u | global0.b.d.x;
}

fn func_2(arg_0: i32) -> vec2<f32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-503f * -235f)), 1522f));
    global3 = array<Struct_1, 8>();
    let var_1 = global0.b;
    let var_2 = _wgslsmith_mod_vec4_i32(reverseBits(abs(_wgslsmith_mult_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, -2147483647i, arg_0, arg_0)), vec4<i32>(u_input.a, 19834i, arg_0, arg_0)))), vec4<i32>(11605i, global0.b.b.x, var_1.b.x, _wgslsmith_add_i32(-1i, _wgslsmith_add_i32(0i, global0.b.b.x))));
    var var_3 = Struct_2(1u, Struct_1(vec3<u32>(func_3(Struct_1(global0.b.a, var_1.b, global0.b.c, vec2<u32>(62964u, 4294967295u)), var_2.x), ~43239u, 17598u) >> (~var_1.a % vec3<u32>(32u)), ~var_1.b, global0.b.c, ~var_1.d), firstTrailingBit(0u) >> (0u % 32u));
    return _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(157f + var_0.x) * _wgslsmith_f_op_f32(select(361f, var_0.x, var_3.b.c)))), vec2<f32>(var_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(var_0.x, -733f)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), !vec2<bool>(false, var_1.c)), !select(vec2<bool>(true, false), vec2<bool>(true, var_3.b.c), vec2<bool>(false, var_3.b.c)), vec2<bool>(true, true)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(select(-512f, 1000f, -83941i <= var_1.b.x))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(193f, var_0.x), vec2<f32>(-1000f, -518f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1319f, -382f) + vec2<f32>(var_0.x, -488f)))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1681f, var_0.x) - vec2<f32>(var_0.x, 1175f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.x, -2146f), vec2<f32>(1000f, -933f), global0.b.c))), global0.b.c)))));
}

fn func_1(arg_0: f32) -> Struct_1 {
    global1 = _wgslsmith_add_i32(u_input.a, u_input.a);
    var var_0 = ~(-2147483647i);
    var var_1 = _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) * vec2<f32>(arg_0, arg_0)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(882f, 1271f)))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(global0.b.b.x)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-935f, arg_0))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-679f, -543f))))), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(2162f)), arg_0), _wgslsmith_f_op_f32(arg_0 * 587f))))));
    var_0 = global0.b.b.x;
    return Struct_1(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, 1u, 1u), global0.b.a)), global0.b.a), ~global0.b.a, ~vec3<u32>(_wgslsmith_sub_u32(global0.b.d.x, 0u), ~global0.a, global0.a)), vec2<i32>(-5315i, u_input.a), true, ~(~vec2<u32>(1u, ~global0.c)));
}

fn func_4(arg_0: Struct_1, arg_1: i32, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = Struct_2(0u, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(575f)))), 57014u);
    let var_0 = _wgslsmith_mod_vec2_i32((global0.b.b ^ arg_2.b) | abs(~min(global0.b.b, vec2<i32>(arg_3.b.x, arg_0.b.x))), vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(arg_3.b.x, 14707i, arg_2.b.x), ~15349i, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, arg_3.b.x, u_input.a, -2147483647i), vec4<i32>(arg_2.b.x, 42664i, -1i, u_input.a)), abs(u_input.a)), vec4<i32>(global0.b.b.x, global0.b.b.x, 41100i, 1i) >> (max(vec4<u32>(arg_2.d.x, 51254u, 21777u, 4294967295u), vec4<u32>(89691u, arg_3.d.x, 0u, 82098u)) % vec4<u32>(32u))), -53796i));
    let var_1 = _wgslsmith_dot_vec4_i32(~(-(~vec4<i32>(21222i, arg_3.b.x, -944i, 1i))), vec4<i32>(-(arg_1 >> ((global0.a >> (23799u % 32u)) % 32u)), arg_2.b.x, _wgslsmith_div_i32(global0.b.b.x, _wgslsmith_mod_i32(arg_2.b.x, arg_1)) >> (~(~arg_3.a.x) % 32u), select(-arg_1, -_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, 17101i, arg_2.b.x, -10571i), vec4<i32>(arg_0.b.x, 2147483647i, -9512i, global0.b.b.x)), any(vec3<bool>(arg_2.c, true, global0.b.c)))));
    global0 = Struct_2(~(4294967295u ^ (firstLeadingBit(global0.a) ^ select(arg_2.d.x, 659u, false))), Struct_1(global0.b.a, arg_0.b, (i32(-1i) * -1i) == _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, -15011i, arg_2.b.x), global0.b.b.x), countOneBits(~arg_3.a.yz >> (arg_3.a.yy % vec2<u32>(32u)))), ~abs(47702u & global0.b.a.x));
    let var_2 = func_1(-1743f);
    return var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ((14537u < func_4(global0.b, u_input.a | global0.b.b.x, global0.b, func_1(2426f))) | (true == (true & global0.b.c))) & (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1390f)) > _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -338f)), _wgslsmith_f_op_vec2_f32(func_2(1i)).x)));
    global1 = ~global0.b.b.x;
    var var_1 = Struct_2(~(~abs(func_1(900f).d.x)), func_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -402f) - 401f)))), firstLeadingBit(reverseBits(~global0.a >> (global0.a % 32u))));
    var var_2 = Struct_2(func_3(func_1(_wgslsmith_f_op_f32(-656f + -1114f)), _wgslsmith_sub_i32(max(var_1.b.b.x, 133i), 2147483647i)) >> (0u % 32u), Struct_1(_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, ~global0.a, 4294967295u), ~(~vec3<u32>(global0.b.a.x, 1u, 1u))), _wgslsmith_mult_vec2_i32(~vec2<i32>(var_1.b.b.x, global0.b.b.x) >> (~vec2<u32>(var_1.c, global0.b.a.x) % vec2<u32>(32u)), vec2<i32>(41857i, 1401i) >> (vec2<u32>(var_1.b.a.x, global0.b.d.x) % vec2<u32>(32u))), true, vec2<u32>(17921u, var_1.a)), var_1.b.d.x);
    let var_3 = Struct_2(0u, Struct_1(vec3<u32>(~1u, 11674u, var_1.c ^ 81293u) >> (min(~var_1.b.a, var_1.b.a) % vec3<u32>(32u)), vec2<i32>(-2147483647i, i32(-1i) * -global0.b.b.x), true, reverseBits(vec2<u32>(var_1.a, global0.a << (4294967295u % 32u)))), 90236u);
    global1 = 1i;
    let var_4 = select(select(!select(select(vec2<bool>(var_1.b.c, true), vec2<bool>(global0.b.c, false), var_2.b.c), vec2<bool>(false, var_0), false), select(!vec2<bool>(var_2.b.c, true), select(select(vec2<bool>(var_2.b.c, var_2.b.c), vec2<bool>(true, false), vec2<bool>(var_0, false)), select(vec2<bool>(var_0, true), vec2<bool>(var_1.b.c, var_2.b.c), vec2<bool>(global0.b.c, var_2.b.c)), false), vec2<bool>(true, true)), true != global0.b.c), vec2<bool>(all(vec4<bool>(var_1.b.c, true, false, -31865i >= global0.b.b.x)), !(!var_1.b.c)), vec2<bool>(~_wgslsmith_mod_u32(var_1.c, global0.a) >= ~51022u, true));
    var var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-596f, -125f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f + -1389f)))) * _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(249f + _wgslsmith_f_op_f32(f32(-1f) * -485f)))));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(func_1(1f).b.x, countOneBits(abs(7925i)), _wgslsmith_mod_i32(u_input.a, min(i32(-1i) * -2147483647i, reverseBits(var_3.b.b.x)))), -var_3.b.b.x, 1299f, 27561u, countOneBits(var_1.b.a));
}

