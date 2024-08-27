struct Struct_1 {
    a: i32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
    c: f32,
    d: vec2<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec4<i32>(-68992i, 18722i, 1i, -31627i));

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3() -> i32 {
    let var_0 = vec4<i32>(~global0.a, _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b.x, u_input.a.x, ~u_input.b.x), vec3<i32>(u_input.a.x >> (62589u % 32u), u_input.b.x, 1i)), u_input.b.x, reverseBits(max(57066i, 1i)));
    global0 = Struct_1(-select(-2147483647i, 1i, true), ((_wgslsmith_mod_vec4_i32(u_input.b, vec4<i32>(-5371i, var_0.x, global0.b.x, 27314i)) << (~vec4<u32>(0u, 0u, 25083u, 1556u) % vec4<u32>(32u))) << (max(vec4<u32>(4294967295u, 1u, 34002u, 27347u), vec4<u32>(1u, 1u, 1u, 1u)) % vec4<u32>(32u))) | ~(-u_input.b));
    global0 = Struct_1(_wgslsmith_div_i32(global0.b.x, (_wgslsmith_clamp_i32(-51048i, 2147483647i, u_input.b.x) << (select(4294967295u, 4294967295u, true) % 32u)) | 1i), abs(-select(global0.b, global0.b, select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, false, false), false))));
    return 1i | _wgslsmith_dot_vec4_i32(-var_0, -(vec4<i32>(24195i, 0i, 2147483647i, var_0.x) << (vec4<u32>(1u, 23702u, 2698u, 49393u) % vec4<u32>(32u))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<i32>) -> Struct_1 {
    let var_0 = Struct_4(_wgslsmith_clamp_vec4_i32(firstTrailingBit(global0.b), countOneBits(u_input.b), ~_wgslsmith_mod_vec4_i32(global0.b, vec4<i32>(arg_0, 2147483647i, 2147483647i, -2147483647i))), vec2<i32>(func_3(), -1i));
    var var_1 = all(vec2<bool>(true, true));
    let var_2 = abs(-(~(-25696i)));
    var_1 = any(!select(vec2<bool>(any(vec3<bool>(false, true, true)), true), vec2<bool>(true, arg_1.x <= arg_1.x), true));
    global0 = Struct_1(i32(-1i) * -var_2, select(global0.b, abs(vec4<i32>(50380i, 0i, ~arg_2.x, _wgslsmith_add_i32(2147483647i, 0i))), !select(vec4<bool>(true, true, false, false), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false))));
    return Struct_1(_wgslsmith_sub_i32(_wgslsmith_add_i32(-8364i, -14262i), ~(-global0.a ^ ~arg_0)), max(var_0.a, vec4<i32>(-(global0.a >> (52787u % 32u)), 1i, arg_2.x, _wgslsmith_add_i32(arg_0, arg_2.x) >> (_wgslsmith_div_u32(4294967295u, 4294967295u) % 32u))));
}

fn func_1(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_mod_u32(~_wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 0u), vec2<u32>(1u, 0u)) << (~20476u % 32u), _wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 0u, 13444u), 1u)), ~(~84708u));
    global0 = func_2(u_input.a.x, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(-320f)), _wgslsmith_f_op_f32(-891f - _wgslsmith_f_op_f32(-407f - -590f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1169f + -575f) - _wgslsmith_div_f32(-1366f, -1356f))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-628f, -1066f, -150f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(-378f, -414f, 1510f))))), -countOneBits(select(-global0.b.yz, _wgslsmith_mod_vec2_i32(vec2<i32>(2147483647i, global0.b.x), arg_1.b.xy), vec2<bool>(false, false))));
    global0 = func_2(-max(func_2(_wgslsmith_mod_i32(global0.b.x, arg_1.b.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(603f, 1971f, 1819f)), -u_input.b.yw).b.x, -(arg_1.a >> (11762u % 32u))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(384f, -600f, 1000f) * vec3<f32>(1000f, -1398f, 553f)), vec3<f32>(-181f, _wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(round(-580f))))))), u_input.a.zy);
    let var_1 = Struct_2(Struct_1(-_wgslsmith_add_i32(func_3(), -40846i), ~(firstTrailingBit(arg_1.b) << (~vec4<u32>(7108u, 9001u, var_0, var_0) % vec4<u32>(32u)))));
    let var_2 = ~(-vec2<i32>(-max(global0.b.x, 22375i), func_2(-arg_0, _wgslsmith_f_op_vec3_f32(vec3<f32>(396f, -1527f, -622f) * vec3<f32>(846f, 1743f, -736f)), vec2<i32>(-29168i, 2147483647i)).a));
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(10133i, Struct_1(select(2147483647i, 0i, !all(vec2<bool>(true, false))), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, global0.a, -1i, global0.b.x), ~vec4<i32>(u_input.b.x, global0.b.x, global0.a, -2147483647i)), ~_wgslsmith_mod_vec4_i32(vec4<i32>(global0.a, global0.a, -2147483647i, u_input.a.x), vec4<i32>(u_input.a.x, -17262i, global0.b.x, 0i)))));
    var var_0 = select(!vec4<bool>(true, -30397i >= ~u_input.a.x, true, true), select(select(!select(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, true)), !select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), false), vec4<bool>(false, true, true, true)), vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), true))), select(firstTrailingBit(reverseBits(10688u)), 1u, abs(69300u) > _wgslsmith_dot_vec3_u32(vec3<u32>(41722u, 49704u, 28815u), vec3<u32>(32880u, 22544u, 41486u))) > select(1u, 1u, true));
    let var_1 = ~vec4<u32>(45006u, ~4294967295u, ~abs(1u), 7954u);
    let var_2 = Struct_2(func_1(_wgslsmith_dot_vec3_i32(-vec3<i32>(-17577i, 2147483647i, global0.a), select(vec3<i32>(2450i, 0i, -44142i) ^ vec3<i32>(u_input.b.x, global0.a, 0i), -vec3<i32>(global0.b.x, 0i, -2147483647i), vec3<bool>(var_0.x, false, true))), func_1(global0.a, Struct_1(-12041i, global0.b))));
    var_0 = select(!vec4<bool>(true, true, any(!vec4<bool>(var_0.x, true, false, true)), true), select(!select(!vec4<bool>(var_0.x, var_0.x, var_0.x, false), vec4<bool>(var_0.x, true, var_0.x, false), false & var_0.x), vec4<bool>(true, _wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, var_1.x, 1u, var_1.x), vec4<u32>(25483u, var_1.x, var_1.x, 23219u)) <= _wgslsmith_clamp_u32(var_1.x, 20251u, 4294967295u), true, var_0.x), var_0.x), true);
    var_0 = select(vec4<bool>(!var_0.x, reverseBits(_wgslsmith_dot_vec3_u32(var_1.zzz, vec3<u32>(35242u, 68906u, 4294967295u))) > ~min(var_1.x, var_1.x), 2376u == ~reverseBits(var_1.x), true), !(!vec4<bool>(any(vec3<bool>(false, false, var_0.x)), all(var_0.xzx), true, true)), select(false, (_wgslsmith_sub_u32(var_1.x, var_1.x) & var_1.x) <= 1u, select(true, all(vec3<bool>(true, var_0.x, true)), all(var_0.wzz))));
    var_0 = select(vec4<bool>(select(var_0.x, any(!vec2<bool>(var_0.x, false)), var_0.x), true, true, true), vec4<bool>(false, 75015u < _wgslsmith_add_u32(abs(var_1.x), var_1.x), var_0.x, 108811u == _wgslsmith_dot_vec3_u32(firstLeadingBit(var_1.yxx), vec3<u32>(0u, 55582u, 6902u))), vec4<bool>(-2147483647i > _wgslsmith_mod_i32(16754i, global0.a), !(var_1.x < 4294967295u) && any(var_0.www), false, var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.x, _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(trunc(2135f)), _wgslsmith_f_op_f32(trunc(-1197f)), 1086f, _wgslsmith_div_f32(-1485f, 1000f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -118f), _wgslsmith_f_op_f32(2173f - -266f), -383f, _wgslsmith_f_op_f32(abs(-446f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-357f, 1438f, 1399f, 919f) * vec4<f32>(-207f, 568f, 253f, 1012f))))))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-238f, 974f)))), _wgslsmith_f_op_f32(f32(-1f) * -1175f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(570f, -912f) * -427f)) + vec2<f32>(253f, _wgslsmith_f_op_f32(trunc(1402f)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -843f) * -481f), 1000f)));
}

