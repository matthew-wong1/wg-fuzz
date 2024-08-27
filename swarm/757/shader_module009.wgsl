struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: i32,
    d: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: u32,
    d: u32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 49739u;

var<private> global1: array<Struct_1, 9> = array<Struct_1, 9>(Struct_1(vec4<f32>(940f, 1217f, 761f, 503f), vec2<i32>(-57021i, 73444i), i32(-2147483648), vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(809f, -1803f, -482f, -887f), vec2<i32>(i32(-2147483648), 35197i), -52182i, vec4<bool>(true, false, true, false)), Struct_1(vec4<f32>(-345f, 191f, 1074f, 1049f), vec2<i32>(0i, i32(-2147483648)), 1i, vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(-392f, -645f, 871f, -872f), vec2<i32>(-1i, -3171i), 7587i, vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(-1050f, -2362f, 478f, 1415f), vec2<i32>(2147483647i, 7989i), -7249i, vec4<bool>(false, false, false, false)), Struct_1(vec4<f32>(-722f, 389f, 761f, 1000f), vec2<i32>(2147483647i, i32(-2147483648)), 1i, vec4<bool>(true, false, true, true)), Struct_1(vec4<f32>(-143f, -1000f, 2346f, 1163f), vec2<i32>(i32(-2147483648), 0i), 23464i, vec4<bool>(false, true, false, true)), Struct_1(vec4<f32>(-1255f, 1601f, 1020f, 1699f), vec2<i32>(i32(-2147483648), i32(-2147483648)), 52330i, vec4<bool>(true, false, false, true)), Struct_1(vec4<f32>(410f, 1461f, -474f, -158f), vec2<i32>(1i, -1i), i32(-2147483648), vec4<bool>(true, true, true, true)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(arg_2.x, 9u)];
    var var_1 = ~_wgslsmith_div_vec3_u32(~_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, arg_2.x, u_input.b), vec3<u32>(50003u, arg_2.x, u_input.c.x)), arg_2.yxw) | vec3<u32>(~(~783u), _wgslsmith_mod_u32(arg_2.x, ~(1u >> (arg_2.x % 32u))), 31455u);
    var var_2 = arg_3.a;
    var var_3 = true || !var_0.d.x;
    return ~arg_2.x;
}

fn func_3(arg_0: f32, arg_1: u32, arg_2: Struct_1) -> Struct_1 {
    var var_0 = arg_2.a.zz;
    var var_1 = arg_2.a;
    let var_2 = ~(~_wgslsmith_div_vec4_u32(~vec4<u32>(12480u, 1u, arg_1, 21589u), vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, u_input.b))) << (firstTrailingBit(_wgslsmith_clamp_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(vec4<u32>(u_input.c.x, arg_1, u_input.c.x, 26017u)), max(vec4<u32>(arg_1, 1u, 41316u, u_input.c.x), vec4<u32>(u_input.c.x, u_input.b, 71957u, 0u))), vec4<u32>(~arg_1, reverseBits(4294967295u), 41830u ^ u_input.c.x, u_input.b), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, arg_1, 43758u, arg_1), vec4<u32>(arg_1, 22715u, 119197u, 0u)) | min(vec4<u32>(arg_1, 0u, 1u, u_input.c.x), vec4<u32>(arg_1, 0u, 5529u, arg_1)))) % vec4<u32>(32u));
    let var_3 = ~countOneBits(vec3<u32>(_wgslsmith_add_u32(u_input.b, u_input.c.x), 32611u, ~4294967295u) << (~vec3<u32>(arg_1, var_2.x, var_2.x) % vec3<u32>(32u)));
    var var_4 = Struct_1(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1265f, _wgslsmith_f_op_f32(arg_2.a.x - arg_0), -574f, 1196f) * vec4<f32>(var_0.x, var_1.x, _wgslsmith_f_op_f32(-var_1.x), 1210f)))), arg_2.b, reverseBits(u_input.a.x) << (52292u % 32u), !(!vec4<bool>(true, !arg_2.d.x, any(vec2<bool>(false, false)), true)));
    return global1[_wgslsmith_index_u32(~(~u_input.c.x), 9u)];
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: u32) -> f32 {
    global1 = array<Struct_1, 9>();
    let var_0 = countOneBits(abs(i32(-1i) * -arg_0.b.x) << (0u % 32u));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x + arg_0.a.x) * 507f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1438f), _wgslsmith_div_f32(-1162f, arg_0.a.x)) - _wgslsmith_f_op_f32(abs(1117f))))));
    var var_2 = func_3(var_1.x, _wgslsmith_div_u32(func_2(arg_0, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(var_1)), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_1.x, arg_0.a.x, var_1.x), vec3<f32>(var_1.x, 437f, var_1.x))))), firstLeadingBit(_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2, 3227u, u_input.b, arg_2), vec4<u32>(111788u, 0u, 37618u, arg_2))), arg_0), _wgslsmith_mult_u32(u_input.c.x, arg_2)), arg_0);
    var var_3 = func_3(var_2.a.x, u_input.c.x, global1[_wgslsmith_index_u32(~reverseBits(select(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_2, 34206u, arg_2, arg_2), vec4<u32>(41013u, u_input.b, arg_2, 32424u)), _wgslsmith_add_u32(79483u, 17405u), arg_1.x)), 9u)]);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x - -407f) + _wgslsmith_f_op_f32(1275f + 138f)) + _wgslsmith_f_op_f32(step(func_3(var_1.x, 65495u, Struct_1(arg_0.a, var_3.b, u_input.a.x, arg_0.d)).a.x, _wgslsmith_f_op_f32(var_2.a.x * var_3.a.x)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-335f - 899f), _wgslsmith_f_op_f32(-var_2.a.x), arg_0.d.x)))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_div_u32(8233u, ~(~_wgslsmith_div_u32(u_input.c.x, u_input.c.x)) ^ ~(~u_input.b | u_input.c.x));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1[_wgslsmith_index_u32(1u, 9u)], vec2<bool>(true, true), 0u)))), func_3(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(874f, 1874f), 581f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(459f + 108f) + 288f))), countOneBits(9253u), Struct_1(func_3(-231f, _wgslsmith_mod_u32(36945u, u_input.c.x), func_3(410f, u_input.c.x, global1[_wgslsmith_index_u32(4294967295u, 9u)])).a, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), vec2<i32>(0i, 6415i)), u_input.a.yz), select(max(8223i, 0i), _wgslsmith_mod_i32(u_input.a.x, 2147483647i), 53359i < u_input.a.x), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1112f), 1u, global1[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(29421u, u_input.b, u_input.b, 1u), vec4<u32>(1u, 4294967295u, 49319u, 0u)), 9u)]).d)).a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1050f))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(1111f, 700f)), 1f))));
    var var_1 = global1[_wgslsmith_index_u32(u_input.c.x, 9u)];
    var var_2 = ~_wgslsmith_sub_i32(1i, ~var_1.b.x);
    let var_3 = Struct_1(func_3(1037f, _wgslsmith_add_u32(u_input.c.x, ~u_input.b), func_3(1412f, ~min(24405u, u_input.c.x), Struct_1(var_1.a, vec2<i32>(var_1.b.x, var_1.c), firstLeadingBit(5455i), !vec4<bool>(true, true, var_1.d.x, var_1.d.x)))).a, vec2<i32>(44610i, -(~(~9425i))), var_1.c, func_3(_wgslsmith_div_f32(1099f, var_1.a.x), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, u_input.c.x, u_input.b, 4294967295u) & vec4<u32>(u_input.c.x, 4294967295u, u_input.b, 65587u), select(vec4<u32>(u_input.b, 4294967295u, 37688u, u_input.c.x), vec4<u32>(u_input.b, u_input.b, 21123u, 36024u), var_1.d)), global1[_wgslsmith_index_u32(u_input.c.x, 9u)]).d);
    let var_4 = Struct_1(func_3(-324f, ~abs(~4294967295u), Struct_1(var_3.a, vec2<i32>(-1i) * -var_1.b, 2147483647i, !select(vec4<bool>(var_1.d.x, true, false, var_1.d.x), var_1.d, true))).a, var_3.b, ~2147483647i, var_3.d);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(~_wgslsmith_sub_u32(9355u, _wgslsmith_sub_u32(u_input.c.x, u_input.c.x)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(~vec4<u32>(u_input.b, 5347u, u_input.b, 5198u), vec4<u32>(4294967295u, 62012u, 37289u, u_input.b)), vec4<u32>(1u, 1u, u_input.c.x, ~u_input.b))), var_4.a.x, u_input.c.x, func_2(Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1230f, var_4.a.x, -359f, 260f)), var_1.b, var_1.c, vec4<bool>(var_3.c > -2297i, true, var_1.d.x, true & var_1.d.x)), vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1419f))), 432f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1266f)))), firstLeadingBit(select(vec4<u32>(4294967295u, u_input.c.x, 18036u, 9341u), ~vec4<u32>(4294967295u, 963u, u_input.b, u_input.b), !vec4<bool>(var_3.d.x, false, var_4.d.x, true))), var_3), var_3.b);
}

