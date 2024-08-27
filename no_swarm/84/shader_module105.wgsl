struct Struct_1 {
    a: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec2<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 12>;

var<private> global1: vec3<f32>;

var<private> global2: vec2<i32>;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    let var_0 = _wgslsmith_dot_vec2_i32(-(~vec2<i32>(global0[_wgslsmith_index_u32(4294967295u, 12u)], u_input.a)) & vec2<i32>(firstLeadingBit(1i), global0[_wgslsmith_index_u32(arg_1.a.x, 12u)]), select(vec2<i32>(-1i) * -abs(vec2<i32>(global0[_wgslsmith_index_u32(arg_3.a.a.x, 12u)], -8788i)), _wgslsmith_mult_vec2_i32(~max(vec2<i32>(1i, global2.x), vec2<i32>(-24336i, u_input.a)), -firstTrailingBit(vec2<i32>(u_input.a, global0[_wgslsmith_index_u32(arg_3.b.a.x, 12u)]))), vec2<bool>(_wgslsmith_f_op_f32(max(global1.x, arg_0.x)) != _wgslsmith_f_op_f32(f32(-1f) * -2680f), true)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, 1679f, arg_0.x, arg_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) * arg_0)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(-724f, global1.x, -917f, global1.x)))))), !(!select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, false, false, false), vec4<bool>(true, true, false, false), false), u_input.a > var_0))));
    var_1 = arg_0;
    var var_2 = ~vec4<i32>(~firstTrailingBit(-1i), -firstTrailingBit(-2147483647i), u_input.a, -2147483647i);
    let var_3 = arg_1.a.x;
    return 49381u;
}

fn func_2() -> Struct_1 {
    global0 = array<i32, 12>();
    global1 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x, global1.x) - _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global1.x, -1000f, 427f)))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, 191f) * vec3<f32>(global1.x, 1247f, global1.x))) - vec3<f32>(-574f, global1.x, 1000f)))));
    var var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~18346u, func_3(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.x, -1000f, global1.x, global1.x))), Struct_1(vec3<u32>(4294967295u, 1u, 1u)), Struct_2(Struct_1(vec3<u32>(18302u, 4294967295u, 1u)), Struct_1(vec3<u32>(51704u, 4294967295u, 1u)), Struct_1(vec3<u32>(49427u, 1u, 1u)), Struct_1(vec3<u32>(4294967295u, 1u, 4294967295u))), Struct_2(Struct_1(vec3<u32>(69290u, 0u, 1u)), Struct_1(vec3<u32>(2414u, 1u, 0u)), Struct_1(vec3<u32>(1u, 69766u, 1u)), Struct_1(vec3<u32>(0u, 4294967295u, 1u)))) << (1u % 32u), 975u, 4294967295u), ~abs(_wgslsmith_mult_vec4_u32(vec4<u32>(1u, 1u, 1u, 1u), vec4<u32>(20352u, 36174u, 19599u, 89273u))));
    global0 = array<i32, 12>();
    global0 = array<i32, 12>();
    return Struct_1(~countOneBits(vec3<u32>(0u, 0u, 33197u)) | vec3<u32>(1u, 1u, _wgslsmith_clamp_u32(max(4294967295u, 39275u), _wgslsmith_mult_u32(79956u, 3644u), _wgslsmith_div_u32(28954u, 4294967295u))));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>) -> Struct_2 {
    global0 = array<i32, 12>();
    var var_0 = Struct_2(Struct_1(arg_0.a), func_2(), arg_0, Struct_1(min(max(~arg_0.a, vec3<u32>(4294967295u, arg_0.a.x, arg_0.a.x)), vec3<u32>(49660u, 71983u, ~arg_0.a.x))));
    var var_1 = _wgslsmith_f_op_f32(-global1.x);
    var var_2 = vec2<bool>(0u == _wgslsmith_mod_u32(arg_0.a.x, ~0u >> (~arg_0.a.x % 32u)), true == all(vec4<bool>(false, true, true, true)));
    var_2 = !(!vec2<bool>(all(!vec3<bool>(false, var_2.x, var_2.x)), any(vec4<bool>(var_2.x, true, true, true))));
    return Struct_2(arg_0, Struct_1(~(~arg_0.a & firstTrailingBit(vec3<u32>(var_0.a.a.x, arg_0.a.x, var_0.b.a.x)))), func_2(), func_2());
}

fn func_5(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_1 {
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(250f, global1.x, global1.x))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1264f, global1.x, 371f), vec3<f32>(-2284f, -390f, global1.x)))), select(vec3<bool>(arg_1.x, arg_1.x, arg_1.x), !arg_1.yyw, arg_1.x))))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-974f, 1424f, -1103f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global1.x, global1.x, 1725f), vec3<f32>(global1.x, global1.x, global1.x), vec3<bool>(false, arg_1.x, arg_1.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global1.x, global1.x) - vec3<f32>(769f, -164f, global1.x)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global1.x, global1.x, -1261f))))), any(select(vec2<bool>(false, false), select(vec2<bool>(arg_1.x, true), arg_1.xx, vec2<bool>(arg_1.x, arg_1.x)), select(vec2<bool>(false, arg_1.x), vec2<bool>(false, true), arg_1.yw))))));
    global1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(global1.x * global1.x), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(1673f)))))), _wgslsmith_f_op_f32(max(global1.x, _wgslsmith_f_op_f32(-1f))))));
    var var_0 = func_2();
    let var_1 = Struct_1(~(~vec3<u32>(4294967295u, 1u, ~75534u)));
    let var_2 = _wgslsmith_div_i32(-30699i, select(-_wgslsmith_dot_vec4_i32(~vec4<i32>(-5054i, -2147483647i, 1i, u_input.a), _wgslsmith_clamp_vec4_i32(vec4<i32>(-36232i, global0[_wgslsmith_index_u32(var_0.a.x, 12u)], u_input.a, u_input.a), vec4<i32>(-2147483647i, -2147483647i, -8328i, global0[_wgslsmith_index_u32(60598u, 12u)]), vec4<i32>(-11319i, 1i, global0[_wgslsmith_index_u32(var_0.a.x, 12u)], 2921i))), reverseBits(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 43908i), vec2<i32>(1212i, 2147483647i)))), 1u >= _wgslsmith_add_u32(reverseBits(4294967295u), ~arg_0.a.a.x)));
    return arg_0.b;
}

fn func_1(arg_0: vec4<bool>, arg_1: u32, arg_2: vec2<i32>) -> vec3<bool> {
    global0 = array<i32, 12>();
    var var_0 = func_5(func_4(func_2(), ~reverseBits(vec4<i32>(u_input.a, global2.x, 0i, arg_2.x))), select(select(arg_0, vec4<bool>(true, select(false, true, true), true, false), select(!arg_0, arg_0, arg_0)), arg_0, arg_0.x));
    global2 = reverseBits(_wgslsmith_mult_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(countOneBits(0i), -25107i), vec2<i32>(1i, -18256i & arg_2.x)), arg_2));
    var var_1 = func_4(func_5(func_4(func_4(func_2(), ~vec4<i32>(arg_2.x, global2.x, global2.x, -441i)).b, ~(-vec4<i32>(u_input.a, -2147483647i, -1i, global2.x))), arg_0), abs(select(vec4<i32>(abs(15092i), global0[_wgslsmith_index_u32(23598u, 12u)], global2.x, countOneBits(-19534i)), vec4<i32>(26689i, 1i, _wgslsmith_sub_i32(2147483647i, 2147483647i), global0[_wgslsmith_index_u32(var_0.a.x, 12u)] | global2.x), !select(arg_0, vec4<bool>(true, true, arg_0.x, true), arg_0))));
    global0 = array<i32, 12>();
    return select(arg_0.zwz, !select(arg_0.ywy, arg_0.yzx, true), all(!(!(!vec3<bool>(false, true, arg_0.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !select(vec3<bool>(true, true, true), vec3<bool>(true, true, any(vec4<bool>(true, true, true, true))), select(vec3<bool>(true, any(vec3<bool>(true, false, false)), false), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, false, true)), select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), true), func_1(vec4<bool>(true, true, true, false), 4294967295u, vec2<i32>(-4034i, global2.x))), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true))));
    let var_1 = !var_0.x;
    var var_2 = vec3<f32>(global1.x, global1.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global1.x))))));
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(1251f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.x)) + _wgslsmith_f_op_f32(abs(-589f)))), -426f))));
    var var_4 = ~_wgslsmith_sub_u32(4294967295u, 0u);
    let var_5 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(280f + var_2.x))), -850f)) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-168f, var_2.x))))) * _wgslsmith_f_op_f32(select(global1.x, var_2.x, all(!vec4<bool>(false, true, true, var_1)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_u32(firstTrailingBit(_wgslsmith_clamp_u32(25618u, 4294967295u, 0u)) >> (_wgslsmith_clamp_u32(func_3(vec4<f32>(-175f, var_2.x, -1058f, -528f), Struct_1(vec3<u32>(1u, 0u, 19050u)), Struct_2(Struct_1(vec3<u32>(4294967295u, 59552u, 21495u)), Struct_1(vec3<u32>(12899u, 4294967295u, 4294967295u)), Struct_1(vec3<u32>(36468u, 0u, 0u)), Struct_1(vec3<u32>(1u, 4294967295u, 47031u))), Struct_2(Struct_1(vec3<u32>(4294967295u, 22765u, 18426u)), Struct_1(vec3<u32>(13507u, 0u, 25235u)), Struct_1(vec3<u32>(10051u, 4485u, 17815u)), Struct_1(vec3<u32>(1u, 84270u, 43689u)))), 1u, select(4294967295u, 67128u, var_0.x)) % 32u), _wgslsmith_dot_vec2_u32(reverseBits(abs(vec2<u32>(4712u, 4294967295u))), vec2<u32>(abs(47437u), 17292u))), u_input.a, ~_wgslsmith_clamp_u32(min(2570u >> (1u % 32u), func_4(Struct_1(vec3<u32>(37956u, 8147u, 53442u)), vec4<i32>(2147483647i, 40497i, -50491i, 41969i)).b.a.x), 1u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), vec2<i32>(_wgslsmith_mod_i32(global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(reverseBits(vec2<u32>(33083u, 0u)), firstLeadingBit(vec2<u32>(94013u, 0u))), 12u)], _wgslsmith_sub_i32(-1i, global2.x) ^ 1i), global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~(~4294967295u), 88545u), 12u)]), -46585i);
}

