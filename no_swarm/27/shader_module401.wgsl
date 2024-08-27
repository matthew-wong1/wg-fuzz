struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: u32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<i32>,
    c: vec4<f32>,
    d: f32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(-956f, vec4<f32>(1618f, -2945f, -751f, 171f), vec4<u32>(0u, 6777u, 4294967295u, 12336u), 4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_1) -> i32 {
    var var_0 = arg_1;
    global0 = Struct_1(_wgslsmith_div_f32(1018f, -1000f), arg_1.b, arg_1.c, global0.c.x);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(select(-1000f, _wgslsmith_f_op_f32(select(1401f, arg_1.a, false)), false)), _wgslsmith_f_op_vec4_f32(global0.b + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -101f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -835f))), _wgslsmith_div_f32(265f, _wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1062f))), vec4<u32>(_wgslsmith_clamp_u32((arg_1.d >> (arg_1.d % 32u)) & 0u, _wgslsmith_mult_u32(53333u, arg_1.c.x), ~u_input.a.x), _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.c.x, 49493u, 4294967295u, 13061u) << (~global0.c % vec4<u32>(32u)), firstTrailingBit(vec4<u32>(var_0.d, global0.d, arg_1.c.x, u_input.a.x))), ~max(~0u, firstTrailingBit(4294967295u)), _wgslsmith_div_u32(~global0.c.x, 0u)), u_input.a.x);
    var var_2 = -u_input.b & -20126i;
    var var_3 = abs(~(~50008u));
    return _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(_wgslsmith_mult_i32(~0i, -arg_0.x), u_input.b ^ (arg_0.x & u_input.b), -69160i, -1i)), vec4<i32>(~9475i | -arg_0.x, ~_wgslsmith_mod_i32(-1i, ~0i), abs(arg_0.x), u_input.b));
}

fn func_2(arg_0: bool) -> vec4<u32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(661f - 210f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1080f + _wgslsmith_div_f32(global0.b.x, 199f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a + 128f), 720f), _wgslsmith_f_op_f32(-1243f * _wgslsmith_f_op_f32(max(514f, -1812f))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global0.a, 922f), _wgslsmith_f_op_f32(f32(-1f) * -1177f))))), _wgslsmith_sub_vec4_u32(~firstLeadingBit(u_input.a), vec4<u32>(~1u, 1u, 0u, u_input.a.x | ~51937u)), u_input.a.x);
    let var_0 = vec3<bool>(true, select(_wgslsmith_sub_i32(-66615i, -2147483647i) != func_3(vec3<i32>(-15435i, -1i, u_input.b), Struct_1(global0.b.x, vec4<f32>(global0.a, global0.a, global0.a, global0.a), global0.c, u_input.a.x)), !any(!vec2<bool>(true, arg_0)), !all(select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(arg_0, arg_0, true), arg_0))), true);
    var var_1 = _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(198f + _wgslsmith_f_op_f32(round(250f)))), global0.b.x), 1051f));
    var var_2 = !(!vec4<bool>(var_0.x, arg_0, false, (u_input.b ^ u_input.b) != -u_input.b));
    global0 = Struct_1(_wgslsmith_f_op_f32(floor(global0.a)), global0.b, u_input.a >> (vec4<u32>(select(35976u, _wgslsmith_mult_u32(11273u, 95811u), arg_0 & var_0.x), u_input.a.x, select(select(82893u, 4828u, false), max(17925u, global0.c.x), !var_0.x), ~(global0.c.x << (global0.d % 32u))) % vec4<u32>(32u)), global0.d);
    return vec4<u32>(2014u, ~select(4294967295u, u_input.a.x, true), _wgslsmith_mult_u32((global0.c.x ^ u_input.a.x) | (0u ^ u_input.a.x), _wgslsmith_div_u32(reverseBits(0u), u_input.a.x)), ~4294967295u) << ((_wgslsmith_sub_vec4_u32(~(~vec4<u32>(9717u, 38159u, 0u, u_input.a.x)), u_input.a) << (vec4<u32>(_wgslsmith_mult_u32(~u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, global0.c.x)), firstLeadingBit(1u), select(u_input.a.x, 1u, global0.b.x > global0.a), 18022u) % vec4<u32>(32u))) % vec4<u32>(32u));
}

fn func_4(arg_0: Struct_1) -> vec4<f32> {
    global0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -877f), global0.b.x) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.a)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-380f)), global0.b.x)), global0.a)), vec4<f32>(694f, _wgslsmith_f_op_f32(select(global0.a, 1000f, !any(vec2<bool>(false, true)))), global0.b.x, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.b.x), 1000f)), _wgslsmith_div_f32(-1146f, _wgslsmith_div_f32(global0.a, 564f))))), vec4<u32>(_wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 15804u, u_input.a.x, 1u), u_input.a), 70581u >> (arg_0.c.x % 32u)), _wgslsmith_clamp_u32(abs(23907u), 0u >> (u_input.a.x % 32u), 1u)), ~_wgslsmith_add_u32(arg_0.d, global0.d), global0.c.x, ~(1u & min(arg_0.c.x, 4294967295u))), 10751u);
    global0 = arg_0;
    var var_0 = arg_0;
    var_0 = arg_0;
    global0 = Struct_1(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(787f - -317f)), _wgslsmith_f_op_f32(select(-712f, _wgslsmith_f_op_f32(-1148f + 1070f), all(vec4<bool>(false, false, true, true)))), var_0.a)), vec4<u32>(_wgslsmith_dot_vec4_u32(arg_0.c, reverseBits(vec4<u32>(var_0.c.x, 57825u, 1325u, arg_0.d))) >> (arg_0.c.x % 32u), ~min(~4294967295u, ~4294967295u), 4294967295u, arg_0.c.x), u_input.a.x);
    return global0.b;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(-996f, _wgslsmith_f_op_vec4_f32(func_4(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -1000f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global0.b) * global0.b), _wgslsmith_add_vec4_u32(func_2(true), u_input.a << (u_input.a % vec4<u32>(32u))), _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a.x) & vec2<u32>(u_input.a.x, u_input.a.x), ~global0.c.wy)))), ~(~(~vec4<u32>(u_input.a.x, 5428u, u_input.a.x, global0.d) << (~vec4<u32>(4294967295u, u_input.a.x, u_input.a.x, 0u) % vec4<u32>(32u)))), ~1u);
    global0 = Struct_1(global0.b.x, global0.b, _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_add_u32(1u, 35788u), min(min(64987u, u_input.a.x), _wgslsmith_mult_u32(u_input.a.x, 0u)), u_input.a.x, select(~global0.c.x, global0.d, true)), ~global0.c), 1u);
    let var_0 = false;
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.a, -460f, global0.a, global0.a))), _wgslsmith_f_op_vec4_f32(-global0.b), !(!vec4<bool>(var_0, true, var_0, true)))) - _wgslsmith_f_op_vec4_f32(-global0.b)), ~abs(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, global0.d, u_input.a.x, 2901u), u_input.a)), 0u);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -388f), _wgslsmith_f_op_f32(round(1073f)), all(vec3<bool>(var_0, var_0, var_0)))) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1096f - global0.b.x)), global0.b.x))), global0.b, vec4<u32>(_wgslsmith_dot_vec2_u32(~firstLeadingBit(global0.c.yy), ~u_input.a.xx & vec2<u32>(global0.d, 26211u)), global0.c.x, _wgslsmith_dot_vec3_u32(global0.c.zzx, func_2(var_0 & var_0).zzw), max(firstLeadingBit(u_input.a.x), ~1u)), select(global0.c.x, 4294967295u, var_0) | _wgslsmith_mult_u32(abs(54975u), 1u));
    return var_1;
}

fn func_5(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec3<f32>, arg_3: bool) -> f32 {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), arg_0.b, abs(vec4<u32>(4294967295u, u_input.a.x | ~global0.d, ~33667u, 33169u)), 63978u);
    let var_1 = all(vec2<bool>(true, all(select(select(vec4<bool>(true, false, arg_3, false), vec4<bool>(arg_3, true, true, false), true), !vec4<bool>(arg_3, arg_3, arg_3, arg_3), vec4<bool>(arg_3, arg_3, arg_3, true)))));
    let var_2 = arg_0;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec4_f32(func_4(arg_0)).x);
    var var_4 = firstTrailingBit(35461u);
    return -664f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global0.b.zx;
    var var_1 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-783f - _wgslsmith_f_op_f32(func_5(func_1(), vec3<f32>(var_0.x, var_0.x, global0.a), global0.b.zzy, false))))), global0.b, vec4<u32>(27389u, func_1().d, _wgslsmith_div_u32(~1u, 96511u), max(u_input.a.x, 1u)), ~global0.d);
    var var_2 = global0.c.yz;
    let var_3 = func_1();
    var var_4 = var_3;
    let var_5 = _wgslsmith_add_vec4_i32(_wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, -5014i, 0i, u_input.b), vec4<i32>(u_input.b, u_input.b, 42001i, u_input.b), false) ^ vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.b), ~vec4<i32>(29151i, u_input.b, 2147483647i, u_input.b)), ~abs(select(vec4<i32>(u_input.b, -2147483647i, 13078i, u_input.b), vec4<i32>(u_input.b, u_input.b, 289i, 45176i), vec4<bool>(false, false, true, true)))), max(-min(vec4<i32>(-19643i, u_input.b, 12580i, -1i), -vec4<i32>(u_input.b, u_input.b, 58186i, u_input.b)), ~abs(countOneBits(vec4<i32>(0i, u_input.b, -9651i, u_input.b)))));
    var var_6 = vec4<i32>(u_input.b & -2147483647i, var_5.x, -_wgslsmith_sub_i32(_wgslsmith_add_i32(u_input.b, 12108i), abs(-56005i)), i32(-1i) * -43900i) & vec4<i32>(2147483647i, select(select(_wgslsmith_dot_vec2_i32(var_5.zy, vec2<i32>(1i, var_5.x)), _wgslsmith_sub_i32(-56548i, var_5.x), true), firstTrailingBit(u_input.b), false), var_5.x, -var_5.x);
    let var_7 = _wgslsmith_f_op_vec4_f32(-global0.b);
    var_2 = var_4.c.wz ^ var_3.c.xw;
    let x = u_input.a;
    s_output = StorageBuffer(func_1().a, _wgslsmith_div_vec4_i32(var_5 << (global0.c % vec4<u32>(32u)), vec4<i32>(1i, u_input.b, _wgslsmith_mult_i32(9071i, var_5.x), -43374i)), _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(var_1.b, vec4<f32>(-1305f, var_7.x, var_3.b.x, 1395f))), _wgslsmith_f_op_vec4_f32(sign(var_4.b)), vec4<bool>(true, true, false, true))) + _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(221f, var_3.a, var_7.x, -1000f))))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_3.a), var_7.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-401f))))), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(var_7.x, var_1.a), _wgslsmith_f_op_f32(f32(-1f) * -1223f))))), ~var_1.c.x);
}

