struct Struct_1 {
    a: bool,
    b: f32,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: i32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<i32, 17> = array<i32, 17>(-4990i, 33842i, 11619i, -9170i, 1i, 19326i, 35510i, 2147483647i, i32(-2147483648), -1i, 0i, 1i, 33025i, -40393i, 26189i, -49343i, 0i);

var<private> global2: vec4<u32> = vec4<u32>(0u, 4294967295u, 21820u, 0u);

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32) -> u32 {
    let var_0 = max(max(u_input.d, vec2<u32>(global0.x, 23936u)), _wgslsmith_mult_vec2_u32(~select(global0.yz, ~u_input.d, select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true))), abs(_wgslsmith_add_vec2_u32(vec2<u32>(0u, arg_0.x) | global2.yw, vec2<u32>(global2.x, global2.x)))));
    let var_1 = ~_wgslsmith_mult_u32(1u, countOneBits(var_0.x)) >> (~1u % 32u);
    var var_2 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1358f - -208f))), _wgslsmith_f_op_f32(min(1f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-649f)), 328f))), _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -745f), -1805f, _wgslsmith_f_op_f32(f32(-1f) * -792f)) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(1206f, -604f, -298f), vec3<f32>(716f, -1796f, 791f)))))) - _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(2290f, -1115f, 2443f))))), !(!vec3<bool>(true, select(true, true, false), true))));
    var_2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-510f, -298f, 313f))))), vec3<f32>(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x, _wgslsmith_f_op_f32(select(434f, var_2.x, true)))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-389f, var_2.x))), -1389f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(max(-1043f, var_2.x))))))) + _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-722f, 174f, 1084f)))))));
    global2 = _wgslsmith_mult_vec4_u32(~vec4<u32>(abs(global0.x), _wgslsmith_clamp_u32(~4294967295u, global2.x, firstTrailingBit(var_1)), reverseBits(var_0.x), arg_0.x), vec4<u32>(var_0.x >> (min(arg_0.x & 13844u, var_1) % 32u), 1u, _wgslsmith_dot_vec2_u32(~vec2<u32>(20130u, global2.x), ~vec2<u32>(0u, var_1)), global2.x));
    return _wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.d.x, ~var_1), select(_wgslsmith_div_u32(arg_0.x, _wgslsmith_dot_vec2_u32(global0.yx, vec2<u32>(global0.x, 4294967295u))), global2.x, any(vec3<bool>(true, false, true))));
}

fn func_2() -> Struct_1 {
    global1 = array<i32, 17>();
    global2 = _wgslsmith_mod_vec4_u32(select(~vec4<u32>(~global2.x, func_3(u_input.d, global1[_wgslsmith_index_u32(u_input.d.x, 17u)]), _wgslsmith_div_u32(54850u, 9967u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b, global0.x, 22254u), global2.xyz)), abs(max(vec4<u32>(global2.x, 12u, global0.x, global0.x), vec4<u32>(global0.x, u_input.b, global2.x, global2.x))) ^ min(~vec4<u32>(0u, 0u, u_input.d.x, 4294967295u), vec4<u32>(11657u, global2.x, 0u, global0.x) ^ vec4<u32>(1u, 17934u, 48946u, 21078u)), vec4<bool>(true, false, true, true)), _wgslsmith_mult_vec4_u32(~(~vec4<u32>(global0.x, 36363u, 4294967295u, 0u)) & vec4<u32>(min(20591u, 0u), ~global0.x, global0.x << (global0.x % 32u), 1u), _wgslsmith_add_vec4_u32(min(vec4<u32>(global2.x, global2.x, global2.x, 1898u), ~vec4<u32>(u_input.d.x, global2.x, 4294967295u, u_input.d.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.b, global0.x, 0u, 1u), vec4<u32>(3377u, global2.x, global2.x, global2.x) & vec4<u32>(9581u, 1u, 78232u, global2.x)))));
    let var_0 = Struct_1(any(!select(select(vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, false), vec4<bool>(true, true, false, false)), vec4<bool>(false, true, false, false), vec4<bool>(true, true, true, true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-211f - _wgslsmith_f_op_f32(max(-382f, 1000f))))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), false)) & !select(all(vec4<bool>(false, false, true, false)), true, true), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-349f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-695f, -368f, false))))) - 1151f));
    global2 = vec4<u32>(_wgslsmith_dot_vec3_u32(~(~vec3<u32>(113299u, 63737u, 7583u) ^ _wgslsmith_add_vec3_u32(global2.ywy, vec3<u32>(39256u, 14191u, 61458u))), global2.yxx), ~(~(~(~4294967295u))), 4294967295u, global0.x);
    let var_1 = Struct_2(abs(~0i ^ _wgslsmith_mod_i32(select(global1[_wgslsmith_index_u32(u_input.d.x, 17u)], u_input.a.x, var_0.c), u_input.c.x)), ~_wgslsmith_clamp_vec2_u32(~(~vec2<u32>(153299u, global2.x)), u_input.d, vec2<u32>(max(u_input.d.x, global2.x), ~50004u)));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(true, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(arg_1.d, 629f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), arg_0.c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(arg_1.d)), _wgslsmith_f_op_f32(abs(arg_1.d))), _wgslsmith_f_op_f32(557f * 1956f))), _wgslsmith_f_op_f32(round(-555f))));
    let var_1 = func_2();
    global0 = ~countOneBits(abs(_wgslsmith_div_vec3_u32(global2.zyy, _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 22708u, 27686u), vec3<u32>(50760u, global0.x, global2.x)))));
    let var_2 = func_3(_wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~global2.ww, countOneBits(vec2<u32>(u_input.b, global2.x)), _wgslsmith_sub_vec2_u32(u_input.d, vec2<u32>(u_input.d.x, u_input.b))), select(_wgslsmith_add_vec2_u32(global0.xx, vec2<u32>(10837u, 44740u)), select(u_input.d, global0.zz, vec2<bool>(false, false)), var_1.a)) | vec2<u32>(12979u, global2.x), global1[_wgslsmith_index_u32(29977u, 17u)]);
    global1 = array<i32, 17>();
    return Struct_2(-select(2147483647i, u_input.a.x, true) & global1[_wgslsmith_index_u32(abs(40448u), 17u)], global0.yy);
}

fn func_5(arg_0: bool, arg_1: Struct_2, arg_2: Struct_1, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = arg_3.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_3.x, var_0), arg_3, arg_2.c))))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1487f, arg_2.b)), _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(arg_2.b, -313f))), vec2<bool>(false, arg_2.c))))), vec2<bool>(true, !(arg_2.a & false)))));
    let var_2 = -vec4<i32>(_wgslsmith_mod_i32(arg_1.a, arg_1.a), global1[_wgslsmith_index_u32(25818u | max(arg_1.b.x ^ 0u, 63116u), 17u)], 2147483647i, -1i);
    global0 = vec3<u32>(firstLeadingBit(_wgslsmith_dot_vec2_u32(max(arg_1.b ^ vec2<u32>(global2.x, global2.x), ~vec2<u32>(4294967295u, 4294967295u)), u_input.d)), _wgslsmith_mod_u32(arg_1.b.x, u_input.d.x << (~(~global0.x) % 32u)), ~40940u);
    let var_3 = abs(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.x, u_input.b, 4294967295u), global2.zzx), min(arg_1.b.x, global2.x)) >> (_wgslsmith_mod_u32(_wgslsmith_mod_u32(arg_1.b.x, global0.x), 22000u) % 32u)) | 72343u;
    return func_4(Struct_1(!any(!vec2<bool>(arg_2.a, false)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -902f))), var_1.x > 194f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), Struct_1(arg_2.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -122f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1374f + arg_3.x), var_0))), !arg_0, _wgslsmith_f_op_f32(-arg_2.d)));
}

fn func_1() -> Struct_2 {
    let var_0 = vec2<bool>(((~u_input.a.x ^ u_input.c.x) == 41377i) | (global0.x >= ~(~108067u)), any(vec4<bool>(false, true, true, true)));
    global2 = ~abs(~(~_wgslsmith_add_vec4_u32(vec4<u32>(4294967295u, global2.x, u_input.b, u_input.b), vec4<u32>(global0.x, u_input.b, 1u, 71014u))));
    return func_5(false, func_4(func_2(), Struct_1(!(!var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -903f)), var_0.x, 463f)), func_2(), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -864f), -873f)) - _wgslsmith_f_op_f32(exp2(func_2().b))), -622f));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: Struct_1, arg_3: Struct_1) -> StorageBuffer {
    let var_0 = false;
    let var_1 = func_2();
    let var_2 = -global1[_wgslsmith_index_u32(arg_0.b.x, 17u)];
    var var_3 = var_1.c;
    var_3 = all(vec3<bool>(func_2().a, true, true));
    return StorageBuffer(~u_input.a, _wgslsmith_mult_vec3_u32(global2.yxy, firstTrailingBit(vec3<u32>(min(global0.x, 0u), _wgslsmith_mod_u32(global2.x, 86068u), ~1u))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_sub_vec3_u32(vec3<u32>(global2.x, ~_wgslsmith_clamp_u32(max(4294967295u, global0.x), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, 4294967295u, global2.x), vec3<u32>(0u, u_input.d.x, u_input.b)), max(global2.x, 7153u)), u_input.d.x), ((vec3<u32>(4294967295u, global2.x, global2.x) << (_wgslsmith_mult_vec3_u32(vec3<u32>(79412u, 74467u, 4294967295u), global2.xyw) % vec3<u32>(32u))) | global2.xzy) | ~(~_wgslsmith_div_vec3_u32(vec3<u32>(49903u, 7793u, 547u), global2.wyw)));
    let x = u_input.a;
    s_output = func_6(func_1(), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-196f * 570f)))))), Struct_1(!(true == func_2().c), -1109f, any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1215f)))))), Struct_1(true, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1798f)) * _wgslsmith_f_op_f32(1000f - 1319f)), -763f), !(~(-22172i) < (global1[_wgslsmith_index_u32(global2.x, 17u)] << (global2.x % 32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(1040f, 499f), _wgslsmith_f_op_f32(sign(-1414f)))))));
}

