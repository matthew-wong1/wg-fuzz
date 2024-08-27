struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<i32>,
    c: Struct_1,
    d: Struct_1,
    e: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: vec3<u32>,
    d: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<u32>,
    b: bool,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec3<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(1330f, 236f, -566f);

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<i32>) -> vec3<bool> {
    var var_0 = Struct_3(Struct_1(-300f, vec4<f32>(_wgslsmith_f_op_f32(trunc(-1161f)), global0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global0.x))), _wgslsmith_f_op_f32(ceil(-1000f)))), 1i & _wgslsmith_mult_i32(-2147483647i, arg_0.x), ~u_input.a.zxy, Struct_2(_wgslsmith_div_f32(global0.x, -352f), vec3<i32>(_wgslsmith_div_i32(-1i, reverseBits(arg_0.x)), -(~arg_0.x), ~arg_0.x), Struct_1(-311f, vec4<f32>(-175f, _wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(-global0.x), -1777f)), Struct_1(_wgslsmith_div_f32(-795f, global0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-537f, global0.x, 156f, global0.x)))), vec3<i32>(arg_0.x, 2147483647i, 55684i)));
    var var_1 = ~(~firstLeadingBit(var_0.c.xz));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - -1470f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(min(global0.x, -1525f)), global0.x, -459f))), arg_0.x, ~(_wgslsmith_sub_vec3_u32(u_input.a.zyy, vec3<u32>(var_0.c.x, u_input.a.x, 75597u)) & (vec3<u32>(u_input.a.x, u_input.a.x, var_0.c.x) & vec3<u32>(4269u, u_input.a.x, var_0.c.x))) & vec3<u32>(reverseBits(u_input.a.x), ~var_0.c.x, 0u), var_0.d);
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + 1041f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.d.c.b * var_0.d.d.b)))), ~abs(arg_0.x), countOneBits(~vec3<u32>(~52222u, var_0.c.x | 1u, ~var_0.c.x)), Struct_2(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-2292f - _wgslsmith_f_op_f32(floor(594f)))), _wgslsmith_mod_vec3_i32(var_0.d.b, vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.b.x, 60722i, -2147483647i, -33613i), vec4<i32>(16755i, var_0.d.e.x, var_0.b, 21471i)), reverseBits(2147483647i), arg_0.x)), var_0.a, Struct_1(global0.x, vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -423f), -599f, _wgslsmith_f_op_f32(-var_0.d.d.b.x), -1363f)), -var_0.d.e));
    var_0 = Struct_3(Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-391f, global0.x)) * _wgslsmith_div_f32(var_0.a.a, 361f)), 967f), vec4<f32>(697f, _wgslsmith_f_op_f32(select(390f, -685f, false)), -1000f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.a.b.x))))), firstLeadingBit(arg_0.x), min(vec3<u32>(4294967295u, 55580u, 1u), firstLeadingBit(vec3<u32>(var_1.x, var_0.c.x, 11799u)) << (countOneBits(~vec3<u32>(var_0.c.x, 1u, 4294967295u)) % vec3<u32>(32u))), var_0.d);
    return vec3<bool>(!any(vec2<bool>(true, true)), true, true);
}

fn func_4(arg_0: vec2<bool>) -> vec3<f32> {
    global0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -979f))), -554f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(-731f, global0.x), global0.x, 521f) * vec3<f32>(1340f, -993f, -710f)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(global0.x)), global0.x, _wgslsmith_f_op_f32(min(396f, global0.x))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 471f, global0.x))))))));
    let var_0 = vec2<bool>(true, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x * -937f) - global0.x))) <= _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(105f, 814f)) * _wgslsmith_f_op_f32(f32(-1f) * -946f)), 1090f)));
    var var_1 = min(abs(4294967295u), _wgslsmith_div_u32(3079u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x)));
    var var_2 = u_input.a.x & (_wgslsmith_clamp_u32(u_input.a.x, ~20193u, _wgslsmith_mod_u32(~4294967295u, 4294967295u)) << (firstTrailingBit(1u) % 32u));
    var var_3 = u_input.a.zz;
    return _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global0.x, 142f, global0.x)))), vec3<f32>(-1129f, global0.x, global0.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(global0.x, -1895f, global0.x))) * _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, 883f, 165f), vec3<f32>(-131f, global0.x, global0.x))))))));
}

fn func_2(arg_0: i32, arg_1: Struct_3, arg_2: vec3<i32>, arg_3: vec4<u32>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, all(func_3(vec2<i32>(arg_2.x, arg_0)))))));
    let var_0 = true;
    let var_1 = countOneBits(~min(select(~vec2<u32>(49892u, 0u), ~vec2<u32>(arg_1.c.x, arg_1.c.x), var_0), u_input.a.xz));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(1409f, global0.x), arg_1.a.b.wy)) + global0.yz))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.a.b.x, -1124f))));
    global0 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f - global0.x), var_2.x), 1801f, global0.x) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-228f, var_2.x, 115f), arg_1.d.c.b.yzw))) + _wgslsmith_f_op_vec3_f32(select(arg_1.a.b.yxz, _wgslsmith_f_op_vec3_f32(vec3<f32>(950f, arg_1.d.d.a, global0.x) * arg_1.a.b.wxz), all(vec4<bool>(var_0, var_0, var_0, var_0)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(step(748f, var_2.x)), -400f, _wgslsmith_div_f32(-1193f, var_2.x)))), arg_1.d.c.b.yww)));
    return 263f;
}

fn func_5(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec3<f32>) -> Struct_5 {
    var var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + 970f), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(arg_1)).x), global0.x, 216f)), select(countOneBits(1i), abs(_wgslsmith_mult_i32(~1i, 0i)), !(_wgslsmith_div_f32(-534f, arg_3.x) >= global0.x)), ~select(_wgslsmith_mult_vec3_u32(~u_input.a.yzz, ~vec3<u32>(22595u, u_input.a.x, 1u)), u_input.a.zyw, vec3<bool>(global0.x > 1268f, arg_2, any(vec3<bool>(false, false, false)))), Struct_2(_wgslsmith_div_f32(global0.x, _wgslsmith_f_op_f32(-arg_0)), vec3<i32>(~_wgslsmith_div_i32(1i, 22205i), -31012i, 1i), Struct_1(-593f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 529f, arg_0, -329f)) - vec4<f32>(-832f, 1000f, global0.x, arg_0))), Struct_1(_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(arg_1.x, false))).x, vec4<f32>(arg_3.x, _wgslsmith_f_op_f32(f32(-1f) * -1045f), _wgslsmith_f_op_f32(trunc(945f)), global0.x)), max(-vec3<i32>(3121i, 3384i, 2147483647i), vec3<i32>(1i, -1i, -2147483647i) << (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))) << ((~u_input.a.zzx << (u_input.a.yww % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_1 = vec2<i32>(var_0.d.e.x, -1i & _wgslsmith_mult_i32(~(-2147483647i), firstTrailingBit(var_0.b))) ^ -var_0.d.e.zx;
    global0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0 - var_0.d.c.a))) * _wgslsmith_f_op_vec3_f32(func_4(arg_1)).x), -776f, var_0.a.b.x));
    let var_2 = select(vec4<u32>(var_0.c.x, ~4294967295u, var_0.c.x, _wgslsmith_sub_u32(u_input.a.x, var_0.c.x)), vec4<u32>(_wgslsmith_mult_u32(1u, reverseBits(~var_0.c.x)), _wgslsmith_dot_vec2_u32(max(vec2<u32>(1u, 0u), var_0.c.xy), vec2<u32>(var_0.c.x, u_input.a.x)) >> ((0u >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.c.x, var_0.c.x, 0u, 1u), u_input.a) % 32u)) % 32u), ~(~(1u >> (var_0.c.x % 32u))), _wgslsmith_sub_u32(~_wgslsmith_div_u32(var_0.c.x, var_0.c.x), ~(1u << (u_input.a.x % 32u)))), !vec4<bool>(any(!vec3<bool>(arg_2, arg_2, false)), all(vec4<bool>(true, arg_2, true, false)), false, any(select(vec2<bool>(true, arg_2), arg_1, vec2<bool>(true, arg_1.x)))));
    var_0 = Struct_3(Struct_1(_wgslsmith_f_op_f32(func_2(var_1.x, Struct_3(Struct_1(-2789f, vec4<f32>(-809f, var_0.d.c.b.x, global0.x, global0.x)), _wgslsmith_clamp_i32(var_1.x, 33540i, 23996i), _wgslsmith_clamp_vec3_u32(u_input.a.yzy, vec3<u32>(0u, var_2.x, var_0.c.x), var_2.wwy), Struct_2(arg_0, vec3<i32>(-2147483647i, -50246i, 27344i), Struct_1(var_0.a.b.x, var_0.d.c.b), var_0.d.d, vec3<i32>(var_1.x, var_1.x, 2147483647i))), vec3<i32>(var_0.d.e.x, 0i, var_0.b) << (vec3<u32>(0u, 4185u, 83051u) % vec3<u32>(32u)), ~vec4<u32>(var_2.x, 1u, 1u, u_input.a.x) | var_2)), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.a)), 146f, _wgslsmith_f_op_f32(-1369f * -674f))), countOneBits(22399i), ~var_0.c, Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.x + var_0.d.c.b.x)), var_0.d.b, var_0.a, var_0.d.d, vec3<i32>(-2147483647i, var_0.d.e.x, var_1.x | var_0.d.b.x) >> (u_input.a.xwx % vec3<u32>(32u))));
    return Struct_5(u_input.a.ww, !select(all(func_3(var_1).yx), _wgslsmith_dot_vec4_u32(var_2, var_2) > _wgslsmith_mod_u32(var_0.c.x, u_input.a.x), arg_2), 91238u, var_0.b);
}

fn func_1(arg_0: vec2<f32>, arg_1: i32, arg_2: vec2<i32>) -> f32 {
    global0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_div_vec3_f32(vec3<f32>(-826f, 1000f, arg_0.x), vec3<f32>(global0.x, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-1774f, arg_0.x, global0.x)))))), vec3<f32>(arg_0.x, -1244f, -156f), true)), vec3<f32>(arg_0.x, arg_0.x, _wgslsmith_f_op_f32(global0.x - -381f)), all(vec2<bool>(any(vec2<bool>(false, true)) & true, true))));
    var var_0 = func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(i32(-1i) * -2147483647i, Struct_3(Struct_1(arg_0.x, vec4<f32>(-1000f, global0.x, arg_0.x, 1819f)), arg_2.x, vec3<u32>(u_input.a.x, 1u, u_input.a.x), Struct_2(global0.x, vec3<i32>(arg_2.x, arg_1, -2147483647i), Struct_1(arg_0.x, vec4<f32>(global0.x, -1000f, -957f, -1884f)), Struct_1(arg_0.x, vec4<f32>(323f, 235f, 273f, arg_0.x)), vec3<i32>(1i, arg_1, 1i))), ~vec3<i32>(-13814i, -12863i, arg_2.x), countOneBits(vec4<u32>(1u, 1u, u_input.a.x, u_input.a.x))))) * _wgslsmith_f_op_f32(abs(-540f))), vec2<bool>(true, false), !(!(any(vec4<bool>(false, false, false, true)) && false)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, global0.x, global0.x)))))));
    var_0 = func_5(_wgslsmith_f_op_f32(-global0.x), vec2<bool>(all(func_3(arg_2 ^ arg_2)), _wgslsmith_f_op_f32(global0.x + -675f) > _wgslsmith_f_op_f32(trunc(arg_0.x))), !var_0.b, _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(arg_0.x, 413f, arg_0.x))))))), vec3<f32>(-795f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(491f))), _wgslsmith_f_op_f32(f32(-1f) * -1052f)))));
    let var_1 = Struct_3(Struct_1(-779f, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, -1101f, -188f, arg_0.x) * vec4<f32>(global0.x, arg_0.x, -1165f, global0.x))))), -var_0.d, u_input.a.xyx, Struct_2(global0.x, vec3<i32>(_wgslsmith_clamp_i32(~(-2147483647i), firstTrailingBit(-61074i), 1i), _wgslsmith_add_i32(_wgslsmith_mult_i32(var_0.d, arg_2.x), abs(arg_1)), -_wgslsmith_mod_i32(arg_1, 42553i)), Struct_1(arg_0.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.x, arg_0.x, 1172f, -623f)))), Struct_1(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(ceil(-475f)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1470f, arg_0.x, global0.x, 1057f), vec4<f32>(-639f, arg_0.x, 1594f, arg_0.x), true)))), vec3<i32>(arg_2.x, min(countOneBits(19322i), ~(-58179i)), ~1i)));
    let var_2 = var_1.d.d;
    return -1151f;
}

fn func_6(arg_0: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_mod_vec4_i32(~vec4<i32>(firstLeadingBit(0i), abs(arg_0.e.x), arg_0.b.x | (arg_0.e.x << (62303u % 32u)), min(-2147483647i, _wgslsmith_mod_i32(arg_0.e.x, -1i))), abs(_wgslsmith_mult_vec4_i32(vec4<i32>(2147483647i, arg_0.e.x, -7790i, arg_0.e.x) & ~vec4<i32>(arg_0.e.x, arg_0.e.x, arg_0.b.x, 1538i), _wgslsmith_add_vec4_i32(-vec4<i32>(-1i, arg_0.b.x, 34659i, arg_0.e.x), vec4<i32>(arg_0.b.x, arg_0.e.x, -13489i, 2147483647i)))));
    return arg_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_6(Struct_2(_wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_vec2_f32(ceil(global0.zy)), 8773i, vec2<i32>(-2147483647i, 643i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u)))), ~(-vec3<i32>(39393i, 2147483647i, 10447i)), Struct_1(_wgslsmith_f_op_f32(global0.x * global0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, global0.x, -347f, 164f))), Struct_1(_wgslsmith_f_op_f32(ceil(992f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(788f, 336f, 1021f, 319f))), -max(vec3<i32>(1172i, 1641i, 2147483647i), vec3<i32>(-17769i, -40551i, 75702i)))), min(max(reverseBits(1i), -(~0i)), 13563i), ~u_input.a.xyz, Struct_2(-1515f, -(~(~vec3<i32>(2147483647i, 30536i, 2147483647i))), Struct_1(-1000f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-2221f, 2091f, -336f, global0.x))) - _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global0.x, global0.x, 645f, global0.x))))), func_6(Struct_2(_wgslsmith_f_op_f32(-global0.x), ~vec3<i32>(-1i, -1i, 21127i), func_6(Struct_2(1057f, vec3<i32>(-50894i, 42803i, 0i), Struct_1(global0.x, vec4<f32>(global0.x, global0.x, global0.x, global0.x)), Struct_1(global0.x, vec4<f32>(-383f, global0.x, 1010f, global0.x)), vec3<i32>(-2147483647i, 66054i, 16823i))), Struct_1(-1912f, vec4<f32>(global0.x, 1555f, global0.x, global0.x)), vec3<i32>(1i, 1i, 1i))), ~min(vec3<i32>(1i, 1i, 1i), ~vec3<i32>(1i, 55385i, 89918i))));
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -365f, _wgslsmith_f_op_f32(var_0.a.b.x - -732f)), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a.b.yyz)))))));
    global0 = _wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(false, any(vec3<bool>(true, global0.x > 1057f, true)))));
    let var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.d.d.b.x, global0.x));
    let var_2 = Struct_5(select(vec2<u32>(1u, u_input.a.x & u_input.a.x), ~vec2<u32>(_wgslsmith_div_u32(0u, 19601u), ~4294967295u), true), false, ~(~abs(_wgslsmith_dot_vec4_u32(u_input.a, vec4<u32>(4294967295u, var_0.c.x, 10194u, 95675u)))), -11249i);
    var var_3 = _wgslsmith_add_vec2_i32(-_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), min(var_0.d.e.zz, vec2<i32>(1i, -3761i)), var_0.d.e.zx) << (~vec2<u32>(0u << (var_2.c % 32u), u_input.a.x) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(-(vec2<i32>(var_0.d.b.x, var_0.b) << (vec2<u32>(var_0.c.x, var_0.c.x) % vec2<u32>(32u))), _wgslsmith_add_vec2_i32(vec2<i32>(var_2.d, var_0.d.b.x), _wgslsmith_div_vec2_i32(var_0.d.b.zx, var_0.d.e.zz))) & ((vec2<i32>(18691i, var_0.d.e.x) | reverseBits(vec2<i32>(var_2.d, -2147483647i))) & vec2<i32>(-4078i, -var_0.d.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-1777f, _wgslsmith_f_op_f32(min(func_6(Struct_2(_wgslsmith_f_op_f32(func_1(var_0.a.b.wx, var_2.d, var_0.d.b.xx)), vec3<i32>(var_3.x, -1i, 59597i), var_0.a, Struct_1(var_1.x, vec4<f32>(-412f, 1664f, var_0.a.b.x, var_0.a.b.x)), max(vec3<i32>(-4609i, var_3.x, -20355i), vec3<i32>(-1i, -2147483647i, 2147483647i)))).a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_vec3_f32(func_4(vec2<bool>(true, true))).x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(var_0.a.b.x + _wgslsmith_f_op_f32(-var_0.d.a)), var_0.d.a) * vec3<f32>(-961f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_1.x, var_1.x)), 102f)), var_0.c.xy);
}

