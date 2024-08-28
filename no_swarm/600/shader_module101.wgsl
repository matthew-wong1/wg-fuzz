struct Struct_1 {
    a: vec2<f32>,
    b: vec4<f32>,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: u32, arg_3: i32) -> f32 {
    global0 = vec3<f32>(arg_1.c.d, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.c.e.x))))), -1000f);
    let var_0 = select(false, !all(vec2<bool>(true, true)), all(vec2<bool>(true, any(vec4<bool>(true, true, true, true)))));
    global0 = arg_1.c.b.xwz;
    let var_1 = Struct_2((~_wgslsmith_div_vec3_u32(vec3<u32>(0u, 95240u, arg_1.a), vec3<u32>(arg_1.a, arg_1.a, arg_1.a)) | select(vec3<u32>(arg_1.a, arg_2, arg_1.a), _wgslsmith_div_vec3_u32(vec3<u32>(31026u, 130971u, 1u), vec3<u32>(0u, arg_1.a, 14848u)), var_0)) | select(_wgslsmith_clamp_vec3_u32(vec3<u32>(arg_1.a, arg_2, arg_1.a), min(vec3<u32>(arg_1.a, 7559u, arg_2), vec3<u32>(1u, arg_1.a, 4294967295u)), ~vec3<u32>(arg_2, arg_2, 4294967295u)), ~vec3<u32>(23744u, 0u, 60531u), !vec3<bool>(var_0, false, var_0)), ~(~(arg_1.a & arg_1.a)));
    var var_2 = 58209i;
    return -243f;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: Struct_1) -> vec3<u32> {
    global0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-arg_1.b.wxw), vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-1229f)))), _wgslsmith_f_op_f32(step(-974f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -1615f), _wgslsmith_f_op_f32(func_3(20047i, Struct_3(arg_0.a.x, -1i, Struct_1(arg_2.e, vec4<f32>(-629f, global0.x, arg_2.e.x, arg_2.b.x), arg_2.c, -930f, vec2<f32>(1601f, 708f))), arg_0.a.x, 1i)))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -140f), _wgslsmith_f_op_f32(-arg_1.b.x))))));
    global0 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-394f + 1073f), _wgslsmith_f_op_f32(-arg_2.a.x), arg_2.b.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_1.b.yxy) + _wgslsmith_f_op_vec3_f32(trunc(arg_1.b.wxx)))))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.e.x, -813f, arg_2.e.x)))))));
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global0.x)) - global0.x) - _wgslsmith_f_op_f32(f32(-1f) * -105f));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_2.d, global0.x, global0.x)) + _wgslsmith_f_op_vec3_f32(-arg_2.b.yzx)) + arg_1.b.zzx)));
    return firstLeadingBit(vec3<u32>(_wgslsmith_mult_u32(~arg_0.a.x, _wgslsmith_dot_vec3_u32(~arg_0.a, vec3<u32>(arg_0.a.x, 0u, 27960u))), _wgslsmith_mult_u32(1u, _wgslsmith_add_u32(_wgslsmith_mod_u32(arg_0.a.x, 87199u), _wgslsmith_add_u32(arg_0.a.x, 19394u))), ~arg_0.a.x));
}

fn func_1() -> Struct_2 {
    let var_0 = select(-select(-vec3<i32>(1i, 35016i, u_input.c), countOneBits(vec3<i32>(33775i, u_input.b.x, u_input.c)), select(vec3<bool>(true, false, true), vec3<bool>(false, false, false), false)) << ((_wgslsmith_clamp_vec3_u32(~vec3<u32>(1u, 0u, 1u), func_2(Struct_2(vec3<u32>(32882u, 1u, 1u), 17698u), Struct_1(global0.yz, vec4<f32>(global0.x, global0.x, global0.x, -874f), vec4<i32>(u_input.c, -9231i, u_input.b.x, 3824i), global0.x, global0.zz), Struct_1(vec2<f32>(global0.x, -391f), vec4<f32>(-274f, 1128f, -1273f, 520f), vec4<i32>(25180i, -19223i, -2147483647i, 1i), global0.x, global0.xz)), vec3<u32>(39815u, 0u, 0u)) << (reverseBits(vec3<u32>(1u, 1u, 1u)) % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_div_vec3_i32(u_input.a, vec3<i32>(max(-2147483647i, u_input.b.x), _wgslsmith_mult_i32(u_input.a.x << (4294967295u % 32u), ~u_input.c), 5544i)), !vec3<bool>(global0.x >= 293f, true, all(vec2<bool>(true, true))));
    let var_1 = _wgslsmith_f_op_f32(func_3(-_wgslsmith_div_i32(_wgslsmith_mod_i32(var_0.x, var_0.x), countOneBits(u_input.a.x) | 0i), Struct_3(~4294967295u, _wgslsmith_dot_vec4_i32(~_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, u_input.c, 9011i, var_0.x), vec4<i32>(u_input.a.x, u_input.a.x, var_0.x, 2147483647i)), _wgslsmith_mod_vec4_i32(reverseBits(vec4<i32>(49039i, u_input.a.x, var_0.x, var_0.x)), vec4<i32>(2147483647i, u_input.a.x, -2147483647i, 1536i) << (vec4<u32>(58491u, 16596u, 4294967295u, 0u) % vec4<u32>(32u)))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.yz, global0.xz))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(567f, global0.x, global0.x, -1718f), vec4<f32>(global0.x, global0.x, global0.x, -897f))), abs(-vec4<i32>(11443i, var_0.x, 2147483647i, var_0.x)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, global0.x) + _wgslsmith_f_op_f32(f32(-1f) * -874f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global0.yy * global0.yz), _wgslsmith_f_op_vec2_f32(vec2<f32>(-367f, 462f) * global0.xy), all(vec3<bool>(true, true, false)))))), ~func_2(Struct_2(func_2(Struct_2(vec3<u32>(10746u, 13026u, 4294967295u), 4294967295u), Struct_1(vec2<f32>(-464f, global0.x), vec4<f32>(1230f, global0.x, 140f, global0.x), vec4<i32>(51370i, u_input.a.x, u_input.a.x, var_0.x), global0.x, vec2<f32>(global0.x, 928f)), Struct_1(vec2<f32>(-1377f, global0.x), vec4<f32>(-998f, global0.x, global0.x, 819f), vec4<i32>(-7386i, var_0.x, u_input.b.x, -3996i), 408f, global0.yz)), 1u), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.xy), vec4<f32>(-1093f, -814f, -683f, global0.x), -vec4<i32>(u_input.c, -12996i, u_input.b.x, u_input.c), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_vec2_f32(global0.yz + global0.yx)), Struct_1(_wgslsmith_f_op_vec2_f32(-global0.xz), _wgslsmith_div_vec4_f32(vec4<f32>(1090f, 2010f, global0.x, 1379f), vec4<f32>(global0.x, global0.x, global0.x, global0.x)), vec4<i32>(u_input.a.x, var_0.x, -1i, -60870i), _wgslsmith_f_op_f32(579f * 1163f), _wgslsmith_f_op_vec2_f32(-global0.xz))).x, 1i));
    global0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1369f, global0.x, _wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(2197f + var_1)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x * global0.x)))));
    let var_2 = Struct_2(_wgslsmith_add_vec3_u32(firstTrailingBit(vec3<u32>(5503u, 1u, 1u)), vec3<u32>(abs(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 3898u, 0u, 0u), vec4<u32>(83024u, 1u, 16642u, 1u))), select(_wgslsmith_mod_u32(46919u, 33990u), 1u, true), ~1u)), ~(~1u) >> (1u % 32u));
    let var_3 = select(select(vec4<bool>(true, true, true, true), vec4<bool>(_wgslsmith_add_i32(-2147483647i, 18238i) > -var_0.x, false, false, any(vec2<bool>(false, false))), vec4<bool>(true, (1u & var_2.a.x) > firstTrailingBit(27672u), true, any(vec4<bool>(true, true, true, true)))), !vec4<bool>(any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, true, true, false), false)), true, var_0.x > -45415i, any(vec2<bool>(true, true))), vec4<bool>(!(_wgslsmith_f_op_f32(select(global0.x, var_1, true)) > _wgslsmith_f_op_f32(var_1 + -1222f)), true, true != (_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, u_input.a.x, var_0.x), vec4<i32>(u_input.b.x, var_0.x, var_0.x, -1i)) > var_0.x), all(vec2<bool>(true, all(vec4<bool>(false, true, false, true))))));
    return Struct_2(var_2.a, 60596u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec3<bool>(false, false, true);
    let var_2 = _wgslsmith_div_i32(u_input.c, -2147483647i);
    var var_3 = Struct_1(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)))), -372f), vec4<f32>(-623f, _wgslsmith_f_op_f32(select(-376f, _wgslsmith_f_op_f32(func_3(reverseBits(var_2), Struct_3(var_0.a.x, u_input.a.x, Struct_1(global0.xz, vec4<f32>(1000f, 2697f, global0.x, 1046f), vec4<i32>(var_2, -2147483647i, 54517i, u_input.b.x), global0.x, global0.zy)), ~var_0.b, ~(-19136i))), all(select(var_1.yx, var_1.yz, var_1.yz)))), _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(-1091f, global0.x))), max(-vec4<i32>(countOneBits(-28646i), -var_2, -var_2, _wgslsmith_add_i32(var_2, 3134i)), ~vec4<i32>(2147483647i, u_input.a.x, var_2, ~var_2)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(global0.x)), _wgslsmith_f_op_f32(797f - _wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-global0.x))))), vec2<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(global0.x))))));
    var var_4 = true;
    var var_5 = -1410f;
    var var_6 = _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(var_3.c, var_3.c ^ select(reverseBits(vec4<i32>(var_3.c.x, -71368i, -32838i, -1i)), -var_3.c, !vec4<bool>(var_1.x, var_1.x, true, false))), _wgslsmith_mod_i32(firstLeadingBit(2147483647i), -50718i), abs(abs(_wgslsmith_clamp_i32(u_input.a.x, min(0i, var_2), 1i))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.xyy, 0u, _wgslsmith_dot_vec2_u32(max(vec2<u32>(func_2(Struct_2(vec3<u32>(4294967295u, var_0.b, 4294967295u), var_0.a.x), Struct_1(vec2<f32>(global0.x, var_3.b.x), var_3.b, vec4<i32>(1i, var_3.c.x, 1i, -1i), global0.x, vec2<f32>(921f, 1091f)), Struct_1(vec2<f32>(global0.x, var_3.d), var_3.b, var_3.c, -1446f, vec2<f32>(var_3.e.x, 1557f))).x, _wgslsmith_mult_u32(var_0.a.x, var_0.b)), firstTrailingBit(vec2<u32>(0u, 0u))), vec2<u32>(abs(2013u), var_0.a.x)));
}

