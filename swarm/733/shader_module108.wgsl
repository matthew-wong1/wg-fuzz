struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<i32>,
    d: vec3<f32>,
    e: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: u32,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(30853u, 0u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = vec2<u32>(~0u, 11857u | ~(_wgslsmith_mod_u32(4294967295u, 42152u) & ~global0.x));
    let var_1 = Struct_1(reverseBits((~66864u >> (global0.x % 32u)) | _wgslsmith_div_u32(~global0.x, _wgslsmith_add_u32(10702u, 43356u))), any(vec3<bool>(true, false | (arg_0.d.x > -584f), select(false, arg_0.b, arg_0.b) || arg_0.b)), vec2<i32>(_wgslsmith_clamp_i32(firstLeadingBit(u_input.b.x << (19417u % 32u)), 0i, ~0i), u_input.b.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(241f, arg_0.d.x, 1083f))), arg_0.d), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.d * _wgslsmith_div_vec3_f32(vec3<f32>(arg_0.d.x, 320f, 104f), arg_0.d)) + _wgslsmith_f_op_vec3_f32(-arg_0.d)), arg_0.e == 2471i)), _wgslsmith_add_i32(arg_0.c.x, countOneBits(u_input.b.x)));
    let var_2 = Struct_1(~u_input.a.x, all(!select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.b, var_1.b, true), !vec3<bool>(var_1.b, true, false))), _wgslsmith_mult_vec2_i32(min(~countOneBits(vec2<i32>(0i, arg_0.e)), ~min(vec2<i32>(arg_0.c.x, -14623i), vec2<i32>(25549i, -30455i))), ~(~firstLeadingBit(u_input.b))), _wgslsmith_f_op_vec3_f32(var_1.d + arg_0.d), _wgslsmith_div_i32(_wgslsmith_sub_i32(u_input.b.x, (var_1.e | var_1.e) << (global0.x % 32u)), i32(-1i) * -71982i));
    let var_3 = ~(vec2<u32>(~max(7738u, 15450u), _wgslsmith_div_u32(firstTrailingBit(53211u), abs(u_input.a.x))) << (_wgslsmith_div_vec2_u32(~vec2<u32>(var_1.a, 55467u), vec2<u32>(17491u ^ var_1.a, reverseBits(arg_0.a))) % vec2<u32>(32u)));
    var_0 = firstTrailingBit(vec2<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(max(u_input.a, u_input.a), ~u_input.a), ~(~68856u)), var_1.a));
    return !var_1.b;
}

fn func_2() -> Struct_1 {
    let var_0 = true;
    global0 = u_input.a.xx;
    global0 = vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global0.x, countOneBits(0u), 22500u), firstLeadingBit(global0.x)), u_input.a.x);
    let var_1 = Struct_1(~global0.x, var_0, ~(~(~firstTrailingBit(vec2<i32>(23220i, 0i)))), vec3<f32>(_wgslsmith_f_op_f32(sign(1676f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-206f)) + _wgslsmith_f_op_f32(trunc(1133f)))), _wgslsmith_f_op_f32(step(1724f, _wgslsmith_f_op_f32(f32(-1f) * -184f)))), _wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(12534i, u_input.b.x, u_input.b.x, 12066i)), countOneBits(vec4<i32>(-31855i, u_input.b.x, -48279i, 30748i)) & vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, -1i)) << (~(~global0.x) % 32u));
    let var_2 = any(!vec4<bool>(true, !(var_1.a < 49387u), var_0, var_1.b));
    return Struct_1(var_1.a, !func_3(var_1), var_1.c, vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(var_1.d.x)), _wgslsmith_f_op_f32(floor(var_1.d.x)))) + var_1.d.x), _wgslsmith_div_f32(var_1.d.x, -1473f)), -u_input.b.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_1) -> Struct_1 {
    global0 = _wgslsmith_mult_vec2_u32(~u_input.a.zx, u_input.a.zz);
    global0 = vec2<u32>(abs(10490u), 37257u);
    var var_0 = 1i;
    let var_1 = vec4<f32>(-776f, arg_1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(690f - 1265f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_2.d.x) - -812f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(arg_2.d.x, arg_2.d.x)), _wgslsmith_f_op_f32(-arg_1.x), !arg_0.b)))));
    let var_2 = -9397i;
    return func_2();
}

fn func_5(arg_0: i32, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    var var_0 = Struct_1(u_input.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(346f, arg_2.d.x)), arg_2.d.x) <= -888f, _wgslsmith_sub_vec2_i32(arg_2.c, u_input.b), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-218f, arg_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2.d.x, 1067f)))), arg_2.d, true)), select(firstLeadingBit(-25058i), i32(-1i) * -_wgslsmith_mult_i32(-22343i, arg_0), all(!select(arg_1, vec3<bool>(arg_1.x, false, arg_1.x), vec3<bool>(true, true, arg_1.x)))));
    return arg_2;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> vec2<u32> {
    global0 = abs(~(~u_input.a.xx));
    global0 = _wgslsmith_add_vec2_u32(u_input.a.yx, select(vec2<u32>(_wgslsmith_dot_vec2_u32(~u_input.a.yz, vec2<u32>(global0.x, 7937u)), 1u), min(firstLeadingBit(~vec2<u32>(85639u, 0u)), ~min(vec2<u32>(55746u, arg_0.a), vec2<u32>(arg_0.a, 1u))), select(!select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, false)), select(select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(arg_0.b, false)), !vec2<bool>(arg_0.b, arg_0.b), !vec2<bool>(false, arg_0.b)), vec2<bool>(true, false))));
    var var_0 = 271f;
    let var_1 = arg_0.b;
    var var_2 = u_input.b.x;
    return _wgslsmith_div_vec2_u32(~_wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.a.x, 4294967295u)), vec2<u32>(~44895u, min(41934u, 39821u))), vec2<u32>(func_4(func_4(Struct_1(u_input.a.x, false, u_input.b, vec3<f32>(459f, -1072f, arg_1), -2147483647i), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, -469f, arg_2)), arg_0), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, arg_2, arg_0.d.x))), Struct_1(~9333u, arg_0.b, vec2<i32>(0i, u_input.b.x) << (u_input.a.zz % vec2<u32>(32u)), func_5(1i, vec3<bool>(false, var_1, false), arg_0).d, 1i | arg_0.e)).a, abs(global0.x)));
}

fn func_1() -> Struct_1 {
    global0 = func_6(func_5(_wgslsmith_dot_vec2_i32(select(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(1i, -3748i), any(vec3<bool>(false, false, false))), u_input.b), vec3<bool>(false, all(vec4<bool>(true, true, true, true)), false), func_4(func_2(), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1872f, 683f, 327f)) * _wgslsmith_div_vec3_f32(vec3<f32>(927f, -2230f, 916f), vec3<f32>(-520f, -1000f, 1112f))), func_2())), _wgslsmith_f_op_f32(f32(-1f) * -427f), -1777f);
    var var_0 = func_5(_wgslsmith_dot_vec2_i32(reverseBits(~max(vec2<i32>(22405i, 1i), vec2<i32>(0i, u_input.b.x))), vec2<i32>(~_wgslsmith_dot_vec3_i32(vec3<i32>(-64401i, u_input.b.x, u_input.b.x), vec3<i32>(u_input.b.x, 7380i, -33348i)), -2147483647i)), !vec3<bool>(false, true, _wgslsmith_f_op_f32(floor(1021f)) < 265f), func_2());
    var_0 = Struct_1(~_wgslsmith_dot_vec4_u32(~(~vec4<u32>(0u, u_input.a.x, var_0.a, global0.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 29357u, u_input.a.x, u_input.a.x), vec4<u32>(88796u, u_input.a.x, 4294967295u, 4294967295u))), var_0.b, vec2<i32>(abs(var_0.e | u_input.b.x), _wgslsmith_mult_i32(-1i & _wgslsmith_sub_i32(-13797i, u_input.b.x), _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), var_0.c)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(var_0.d - _wgslsmith_f_op_vec3_f32(-var_0.d)))))), var_0.c.x);
    let var_1 = func_2();
    var_0 = var_1;
    return Struct_1(func_2().a, !(!var_0.b), ~select(firstTrailingBit(var_1.c), ~vec2<i32>(var_1.c.x, -1i) | (vec2<i32>(var_0.c.x, -454i) | vec2<i32>(-66015i, var_0.e)), 2147483647i >= -u_input.b.x), var_1.d, 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = vec2<u32>(~u_input.a.x, var_0.a);
    var_0 = Struct_1(1u, var_0.b, countOneBits(vec2<i32>(-1i) * -var_0.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_0.d), vec3<f32>(var_0.d.x, -843f, var_0.d.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(abs(var_0.d.x)), _wgslsmith_f_op_f32(-var_0.d.x), _wgslsmith_f_op_f32(var_0.d.x - var_0.d.x)) * var_0.d)), -2147483647i | u_input.b.x);
    var_0 = func_5(_wgslsmith_sub_i32(var_0.e, func_4(Struct_1(u_input.a.x, var_0.b, vec2<i32>(var_0.e, 0i), var_0.d, 8228i), _wgslsmith_f_op_vec3_f32(var_0.d + var_0.d), func_4(Struct_1(global0.x, var_0.b, vec2<i32>(1i, var_0.e), var_0.d, u_input.b.x), vec3<f32>(-327f, var_0.d.x, var_0.d.x), Struct_1(7162u, true, vec2<i32>(u_input.b.x, -54045i), vec3<f32>(var_0.d.x, 478f, 833f), u_input.b.x))).c.x) ^ reverseBits(~0i), !(!select(select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, var_0.b, false), vec3<bool>(var_0.b, var_0.b, false)), vec3<bool>(false, false, var_0.b), select(vec3<bool>(var_0.b, true, var_0.b), vec3<bool>(var_0.b, false, true), var_0.b))), Struct_1(1u, true, var_0.c, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.d.x)), -706f, _wgslsmith_f_op_f32(f32(-1f) * -138f)), _wgslsmith_add_i32(u_input.b.x, var_0.c.x)));
    let x = u_input.a;
    s_output = StorageBuffer(func_2().d, 4294967295u, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f - var_0.d.x)), func_2().d.x)), u_input.a.x, var_0.a);
}

