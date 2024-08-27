struct Struct_1 {
    a: bool,
    b: vec2<i32>,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: vec4<f32>,
}

struct Struct_5 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(i32(-2147483648), i32(-2147483648), 0i, 1i);

var<private> global1: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3() -> u32 {
    global0 = abs(vec4<i32>(countOneBits(70057i ^ (global0.x >> (1u % 32u))), global0.x, -1i, -5817i));
    let var_0 = Struct_2(_wgslsmith_clamp_vec2_u32(~firstLeadingBit(vec2<u32>(1u, 1u)), ~reverseBits(countOneBits(vec2<u32>(1u, 4294967295u))), max(reverseBits(reverseBits(vec2<u32>(0u, 41474u))), ~vec2<u32>(0u, 38502u))), vec2<i32>(20004i, global0.x));
    global1 = 700f;
    let var_1 = ~select(0u, ~32580u, true) & 34999u;
    global0 = max(vec4<i32>(~firstTrailingBit(~11133i), u_input.b, var_0.b.x, select(_wgslsmith_mult_i32(_wgslsmith_div_i32(19561i, var_0.b.x), abs(24239i)), _wgslsmith_div_i32(global0.x, _wgslsmith_dot_vec3_i32(vec3<i32>(-24088i, global0.x, u_input.a.x), vec3<i32>(17070i, global0.x, 25361i))), true)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_add_i32(-14022i, firstTrailingBit(14473i)), select(-2147483647i, ~0i, true)), var_0.b.x, countOneBits(-global0.x | -78375i), _wgslsmith_dot_vec4_i32((vec4<i32>(2147483647i, u_input.a.x, var_0.b.x, u_input.b) ^ vec4<i32>(var_0.b.x, u_input.b, 2147483647i, 2147483647i)) & min(vec4<i32>(-61951i, global0.x, var_0.b.x, global0.x), vec4<i32>(global0.x, u_input.a.x, global0.x, 1i)), vec4<i32>(~(-1i), 1i, _wgslsmith_dot_vec2_i32(global0.zy, var_0.b), ~global0.x))));
    return 47639u;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: vec3<i32>, arg_3: vec4<f32>) -> u32 {
    let var_0 = Struct_2(arg_0.a, ~vec2<i32>(-19075i, _wgslsmith_mult_i32(u_input.b >> (arg_1 % 32u), arg_2.x ^ -1i)));
    let var_1 = -min(_wgslsmith_dot_vec3_i32(~global0.zyz, abs(~arg_2)), global0.x);
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-111f, 1273f, arg_3.x, -1000f))) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(arg_3, vec4<f32>(-996f, -746f, arg_3.x, arg_3.x), vec4<bool>(true, true, true, true)))))));
    var var_3 = Struct_2(_wgslsmith_mod_vec2_u32(var_0.a, abs(max(min(arg_0.a, arg_0.a), var_0.a))), select(vec2<i32>(41510i, var_0.b.x), -(~global0.wz), true && any(vec3<bool>(true, true, true))));
    global0 = _wgslsmith_add_vec4_i32(-vec4<i32>(abs(-60560i), -64926i, max(0i, _wgslsmith_add_i32(u_input.b, 0i)), 2147483647i), _wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(countOneBits(18578i), 23350i, 0i, -2147483647i), -vec4<i32>(42103i, 24353i, arg_0.b.x, arg_2.x), select(vec4<i32>(1i, -56558i, u_input.b, var_1), vec4<i32>(u_input.b, arg_0.b.x, arg_2.x, arg_0.b.x), vec4<bool>(true, false, true, false)) >> (~vec4<u32>(var_0.a.x, 57909u, 5697u, 92067u) % vec4<u32>(32u))), vec4<i32>(select(_wgslsmith_mod_i32(var_0.b.x, u_input.a.x), u_input.b, true), _wgslsmith_mod_i32(u_input.b, -arg_2.x), _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-32377i, 2147483647i, 9507i, -1i), vec4<i32>(38762i, -14955i, arg_2.x, -2147483647i)), abs(54516i)), global0.x ^ ~var_1)));
    return func_3();
}

fn func_2(arg_0: vec3<i32>) -> f32 {
    var var_0 = Struct_2(firstTrailingBit(vec2<u32>(func_4(Struct_2(vec2<u32>(0u, 83512u), vec2<i32>(u_input.b, 0i)), func_3(), select(vec3<i32>(u_input.b, global0.x, -10320i), vec3<i32>(1i, u_input.b, -41254i), vec3<bool>(true, true, false)), vec4<f32>(-1465f, 674f, -271f, 331f)), reverseBits(~73236u))), _wgslsmith_sub_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(-37454i, -29270i) & vec2<i32>(u_input.a.x, global0.x), vec2<i32>(global0.x, 19566i)), abs(select(u_input.a, global0.wz, vec2<bool>(false, false)))), vec2<i32>(max(_wgslsmith_dot_vec3_i32(arg_0, vec3<i32>(global0.x, 2147483647i, -11763i)), firstLeadingBit(-1i)), ~abs(-1i))));
    global0 = -_wgslsmith_mult_vec4_i32(-(~vec4<i32>(var_0.b.x, global0.x, 2147483647i, 0i) >> (~vec4<u32>(10392u, var_0.a.x, var_0.a.x, var_0.a.x) % vec4<u32>(32u))), vec4<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(max(u_input.a, u_input.a), ~u_input.a), reverseBits(_wgslsmith_div_i32(var_0.b.x, u_input.b)), ~firstTrailingBit(var_0.b.x)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(round(-102f)), _wgslsmith_f_op_f32(-262f + _wgslsmith_f_op_f32(min(148f, -597f))), _wgslsmith_f_op_f32(f32(-1f) * -1000f), -433f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1690f, 102f, 462f, 356f) + vec4<f32>(-974f, -980f, -403f, -400f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(547f, -1449f, 519f, 774f) + vec4<f32>(639f, -160f, 710f, -1387f)))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(-790f, 2128f, -1231f, 431f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1213f, -1000f, 107f, 1000f)))))));
    var var_2 = Struct_3(_wgslsmith_f_op_f32(exp2(var_1.x)));
    var_1 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(vec4<f32>(775f, -622f, var_2.a, var_2.a) * vec4<f32>(773f, var_1.x, 298f, var_2.a))))))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.a));
}

fn func_5(arg_0: vec2<f32>) -> Struct_1 {
    global1 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(409f * _wgslsmith_div_f32(arg_0.x, 143f))))));
    global0 = abs(vec4<i32>(1i, i32(-1i) * -2147483647i, -25433i, u_input.a.x));
    var var_0 = ~select(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(_wgslsmith_clamp_vec2_u32(~vec2<u32>(14718u, 0u), firstLeadingBit(vec2<u32>(4294967295u, 0u)), vec2<u32>(1u, 1u)), _wgslsmith_mod_vec2_u32(~vec2<u32>(42429u, 78785u), ~vec2<u32>(45739u, 9089u))), false);
    var var_1 = Struct_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(max(-1173f, -241f)), _wgslsmith_f_op_f32(floor(arg_0.x)), 1431f) + vec4<f32>(_wgslsmith_div_f32(994f, -454f), -826f, _wgslsmith_div_f32(1955f, arg_0.x), _wgslsmith_f_op_f32(round(-1000f)))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2507f, 1000f, -1323f, arg_0.x), vec4<f32>(320f, arg_0.x, 294f, -183f))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, -893f, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, arg_0.x, 796f, -1079f))))));
    let var_2 = 5637u;
    return Struct_1(false, firstTrailingBit(countOneBits(vec2<i32>(global0.x, _wgslsmith_add_i32(u_input.b, global0.x)))));
}

fn func_6(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_4) -> Struct_3 {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(-arg_3.a.x));
    let var_1 = Struct_1(!any(select(select(vec2<bool>(false, arg_0.a), vec2<bool>(false, false), true), !vec2<bool>(arg_0.a, false), !arg_1.a)), abs(vec2<i32>(41187i, _wgslsmith_add_i32(global0.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-1994i, 1i), vec2<i32>(global0.x, 2147483647i))))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(379f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_3.a.x)))))));
    var var_2 = ~var_1.b.x;
    return Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-805f, 1454f)))));
}

fn func_1() -> vec2<i32> {
    let var_0 = Struct_2(vec2<u32>(39073u, 1u ^ firstTrailingBit(1u)), reverseBits(~u_input.a));
    var var_1 = min(-global0.x, global0.x);
    var var_2 = 355f;
    var var_3 = func_6(func_5(vec2<f32>(-565f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_2(vec3<i32>(-6815i, global0.x, var_0.b.x))))))), Struct_1(true, ~vec2<i32>(~var_0.b.x, u_input.b)), vec2<u32>(select(38478u, ~4527u, any(vec4<bool>(true, false, false, true))), reverseBits(~var_0.a.x)) | countOneBits(var_0.a), Struct_4(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(300f, -736f, -676f, -1031f)))))));
    var var_4 = var_3.a;
    return vec2<i32>(_wgslsmith_div_i32(~(-67520i), max(u_input.b, _wgslsmith_div_i32(2147483647i, var_0.b.x))), firstLeadingBit(_wgslsmith_clamp_i32(min(-1i, 3536i), 2147483647i, 2147483647i)));
}

fn func_7(arg_0: bool, arg_1: vec2<i32>, arg_2: vec2<i32>) -> vec3<f32> {
    let var_0 = u_input.a;
    let var_1 = func_6(Struct_1(func_5(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-709f, 1166f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(1298f, 850f) - vec2<f32>(1215f, 1424f)))).a, min(_wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, -7733i), vec2<i32>(0i, u_input.b)), global0.yy) & _wgslsmith_div_vec2_i32(~vec2<i32>(-11039i, -2147483647i), var_0)), Struct_1(any(!(!vec4<bool>(arg_0, arg_0, arg_0, true))), -select(vec2<i32>(arg_1.x, u_input.a.x) ^ vec2<i32>(-38179i, arg_2.x), ~vec2<i32>(-46011i, arg_1.x), vec2<bool>(true, true))), ~(vec2<u32>(1u, _wgslsmith_mod_u32(4294967295u, 1u)) & _wgslsmith_div_vec2_u32(firstTrailingBit(vec2<u32>(0u, 48966u)), abs(vec2<u32>(1u, 35343u)))), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(852f, _wgslsmith_f_op_f32(abs(1063f)), _wgslsmith_f_op_f32(floor(1152f)), -2493f))));
    let var_2 = !vec2<bool>(!(_wgslsmith_f_op_f32(var_1.a * var_1.a) <= var_1.a), false | (global0.x < countOneBits(arg_2.x)));
    let var_3 = vec3<u32>(1u, 1u, 1u);
    let var_4 = false;
    return vec3<f32>(279f, -1309f, -477f);
}

fn func_8(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: vec4<bool>, arg_3: Struct_2) -> Struct_5 {
    var var_0 = arg_3;
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_div_f32(-578f, 322f), 355f, arg_0.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(-1000f)), -1000f)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, 1000f) * vec4<f32>(arg_0.x, -1463f, arg_0.x, arg_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, arg_0.x, arg_0.x, arg_0.x) - vec4<f32>(-532f, -1000f, 1913f, arg_0.x))))))));
    global1 = _wgslsmith_div_f32(851f, arg_0.x);
    return Struct_5(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_0.x, arg_0.x, arg_0.x, -1182f)))) + _wgslsmith_div_vec4_f32(var_1.a, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-106f, -1781f, -426f, -680f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 1000f;
    var var_1 = true;
    var var_2 = func_8(_wgslsmith_f_op_vec3_f32(func_7(!all(vec3<bool>(true, true, true)), firstTrailingBit(u_input.a), _wgslsmith_add_vec2_i32(vec2<i32>(-79843i, ~global0.x), func_1()))), vec3<bool>(_wgslsmith_f_op_f32(f32(-1f) * -910f) < func_6(Struct_1(false, vec2<i32>(u_input.a.x, global0.x)), func_5(vec2<f32>(1000f, -2061f)), firstTrailingBit(vec2<u32>(1u, 92096u)), Struct_4(vec4<f32>(var_0, var_0, 218f, var_0))).a, true, false), !select(vec4<bool>(true, all(vec4<bool>(true, false, true, false)), all(vec2<bool>(true, true)), any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true), true), Struct_2(vec2<u32>(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(20330u, 4294967295u, 10630u), vec3<u32>(2172u, 43985u, 1u)), 0u, 1u), 9806u), min(global0.ww ^ vec2<i32>(global0.x, global0.x), reverseBits(u_input.a)) >> (vec2<u32>(1u, 1u) % vec2<u32>(32u))));
    var_1 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1742f - _wgslsmith_div_f32(775f, _wgslsmith_f_op_f32(sign(542f)))))) <= -697f;
    var var_3 = func_8(vec3<f32>(var_0, _wgslsmith_f_op_f32(_wgslsmith_div_f32(779f, func_6(Struct_1(true, u_input.a), Struct_1(false, u_input.a), vec2<u32>(72368u, 4294967295u), Struct_4(vec4<f32>(1023f, 3369f, 533f, 153f))).a) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.a.x) - _wgslsmith_f_op_f32(trunc(-254f)))), _wgslsmith_f_op_f32(-var_2.a.x)), !select(vec3<bool>(select(true, true, false), true, true), vec3<bool>(true, true, all(vec3<bool>(true, false, false))), vec3<bool>(true, false, false)), vec4<bool>(!all(vec3<bool>(true, false, true)), true, all(!select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false))), global0.x > countOneBits(-2147483647i)), Struct_2(firstTrailingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), vec2<u32>(1u, 1u))), vec2<i32>(_wgslsmith_dot_vec2_i32(global0.yx, -vec2<i32>(-61426i, global0.x)), max(-global0.x, global0.x ^ global0.x))));
    var var_4 = select(select(!vec4<bool>(any(vec4<bool>(false, true, true, true)), true, false, all(vec2<bool>(false, true))), vec4<bool>((-1000f < var_2.a.x) | false, _wgslsmith_f_op_f32(-var_3.a.x) != _wgslsmith_f_op_f32(-2414f + -1792f), all(vec2<bool>(true, false)), true), vec4<bool>(any(vec2<bool>(false, false)) || true, all(select(vec2<bool>(true, true), vec2<bool>(true, false), true)), -784f < _wgslsmith_f_op_f32(-var_0), _wgslsmith_f_op_f32(func_2(global0.zxw)) > func_8(var_3.a.zzz, vec3<bool>(false, false, true), vec4<bool>(true, true, false, true), Struct_2(vec2<u32>(0u, 4294967295u), vec2<i32>(-1i, -1i))).a.x)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), func_5(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(var_2.a.x, -1967f)))).a), !(!vec4<bool>(true, true, true, any(vec4<bool>(true, false, false, false)))));
    let var_5 = select(4294967295u, ~select(~0u, _wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(4294967295u, 42321u, 128674u, 7737u)), vec4<u32>(0u, 4294967295u, 0u, 4294967295u)), var_4.x), false);
    var_2 = func_8(vec3<f32>(-884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-845f))), 427f), !var_4.xyz, select(!select(vec4<bool>(var_4.x, var_4.x, var_4.x, var_4.x), select(vec4<bool>(true, var_4.x, var_4.x, var_4.x), vec4<bool>(false, var_4.x, false, false), vec4<bool>(false, true, var_4.x, true)), true), vec4<bool>(false, _wgslsmith_sub_u32(4294967295u, var_5) != 1u, var_4.x, all(select(vec2<bool>(var_4.x, var_4.x), vec2<bool>(false, false), true))), vec4<bool>(false, var_4.x, false, false)), Struct_2(~vec2<u32>(min(var_5, 4294967295u), var_5), -func_5(var_2.a.zx).b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-var_2.a.x), var_5);
}

