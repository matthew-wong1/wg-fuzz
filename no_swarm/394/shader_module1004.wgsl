struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: vec4<f32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(53605u, 1u);

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_3) -> u32 {
    return 87053u;
}

fn func_2() -> Struct_3 {
    global0 = vec2<u32>(~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a.x, global0.x), vec2<u32>(20203u, global0.x)) | u_input.a, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a, vec2<u32>(1u, global0.x)), abs(vec2<u32>(82926u, global0.x)))), global0.x);
    var var_0 = Struct_1(true, u_input.a.x, any(!vec2<bool>(u_input.b.x < u_input.b.x, false)), 0u);
    var_0 = Struct_1(_wgslsmith_f_op_f32(-1594f + _wgslsmith_div_f32(-897f, _wgslsmith_f_op_f32(step(-1349f, -1976f)))) >= _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-928f, 882f))), _wgslsmith_add_u32(_wgslsmith_sub_u32(abs(func_3(Struct_1(var_0.a, 31433u, var_0.a, 0u), Struct_3(-13179i, u_input.b, vec4<u32>(0u, u_input.a.x, global0.x, 4294967295u), Struct_2(-165f, Struct_1(false, global0.x, false, global0.x), vec4<f32>(412f, -945f, -1396f, -1286f))))), var_0.d), ~0u), true, ~max(7270u, 73433u));
    var var_1 = select(select(!(!vec4<bool>(true, var_0.a, var_0.a, var_0.c)), !vec4<bool>(any(vec2<bool>(var_0.a, true)), var_0.c, !var_0.a, all(vec2<bool>(true, var_0.c))), true), select(select(vec4<bool>(any(vec2<bool>(var_0.c, var_0.a)), false && var_0.a, true | var_0.c, all(vec4<bool>(true, true, var_0.c, var_0.c))), !(!vec4<bool>(false, false, var_0.a, var_0.a)), select(true, true, var_0.c)), !select(!vec4<bool>(false, false, true, var_0.c), !vec4<bool>(var_0.a, var_0.c, var_0.c, false), select(vec4<bool>(var_0.a, var_0.c, true, false), vec4<bool>(var_0.a, true, var_0.c, false), true)), select(!(!vec4<bool>(var_0.c, false, var_0.a, var_0.a)), select(!vec4<bool>(var_0.c, true, false, var_0.a), select(vec4<bool>(var_0.a, true, true, true), vec4<bool>(var_0.c, false, var_0.a, var_0.c), true), !vec4<bool>(true, true, var_0.c, false)), select(select(vec4<bool>(var_0.c, false, true, var_0.c), vec4<bool>(false, true, var_0.a, var_0.c), vec4<bool>(var_0.c, var_0.a, var_0.c, var_0.a)), vec4<bool>(var_0.a, true, true, var_0.a), 8677i < u_input.b.x))), !(!(881f > _wgslsmith_f_op_f32(sign(1312f)))));
    let var_2 = -firstTrailingBit(vec2<i32>(107834i, u_input.b.x));
    return Struct_3(14799i, ~u_input.b, ~vec4<u32>(abs(max(426u, var_0.b)), firstTrailingBit(0u), ~(~95710u), _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u) >> (vec3<u32>(95797u, 37896u, 13823u) % vec3<u32>(32u)), vec3<u32>(global0.x, var_0.d, global0.x) << (vec3<u32>(var_0.d, 4294967295u, u_input.a.x) % vec3<u32>(32u)))), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -728f) - _wgslsmith_f_op_f32(round(454f))))), Struct_1(true, firstTrailingBit(4294967295u & global0.x), true, ~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 14653u), u_input.a)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-713f, 740f, 833f, -1155f) - vec4<f32>(223f, -466f, 1126f, -991f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-692f, -1547f, -1183f, -972f) - vec4<f32>(-2131f, -702f, 2229f, 2087f)), vec4<bool>(var_1.x, var_0.a, var_1.x, var_1.x)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: Struct_2, arg_3: Struct_1) -> vec4<u32> {
    let var_0 = func_2();
    let var_1 = vec3<i32>(0i, _wgslsmith_mod_i32(-45351i, 2147483647i), -2147483647i);
    global0 = _wgslsmith_sub_vec2_u32(_wgslsmith_mult_vec2_u32(var_0.c.wz, var_0.c.yy), abs(u_input.a));
    global0 = ~_wgslsmith_div_vec2_u32(~(vec2<u32>(1u, arg_3.d) ^ vec2<u32>(36490u, 20271u)), var_0.c.yz << (~u_input.a % vec2<u32>(32u))) << (firstTrailingBit(countOneBits(vec2<u32>(u_input.a.x, 1u) >> (vec2<u32>(global0.x, global0.x) % vec2<u32>(32u))) << (((u_input.a << (u_input.a % vec2<u32>(32u))) ^ ~u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_1.x)) - 327f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(arg_1.x, -1147f)), _wgslsmith_f_op_f32(step(-338f, 1207f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + _wgslsmith_f_op_f32(min(var_0.d.c.x, -1265f))), arg_2.c.x), _wgslsmith_f_op_vec4_f32(exp2(func_2().d.c)))));
    return vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_clamp_u32(41868u, ~_wgslsmith_mult_u32(29634u, u_input.a.x), u_input.a.x >> ((4294967295u | arg_2.b.d) % 32u)), 40755u), min(arg_2.b.d, select(45892u, _wgslsmith_div_u32(u_input.a.x, 42839u), true)) ^ 20778u, 12933u, ~(~u_input.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(vec4<i32>(_wgslsmith_mult_i32(-1i, u_input.b.x), select(49742i, u_input.b.x, true), ~(-u_input.b.x), _wgslsmith_mult_i32(u_input.b.x, i32(-1i) * -37627i)) << (func_1(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false), false), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(603f, 732f, 390f, 1512f) - vec4<f32>(-1000f, -795f, -818f, -1000f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(2684f, -1250f, 1609f, 561f) - vec4<f32>(-705f, -1135f, 134f, -651f)), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, false), false))), Struct_2(_wgslsmith_div_f32(134f, 351f), Struct_1(true, global0.x, false, u_input.a.x), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-983f, 1264f, 1335f, -106f)))), Struct_1(false, ~global0.x, true, _wgslsmith_div_u32(u_input.a.x, global0.x))) % vec4<u32>(32u)));
    global0 = vec2<u32>(global0.x, u_input.a.x);
    var_0 = -vec4<i32>(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, var_0.x, 31310i, -1756i), u_input.b), ~(var_0.x >> (4294967295u % 32u)) << (1u % 32u), _wgslsmith_clamp_i32(~5290i, u_input.b.x, _wgslsmith_add_i32(var_0.x, u_input.b.x)), _wgslsmith_mult_i32(countOneBits(-32869i), u_input.b.x));
    var var_1 = all(vec4<bool>(true, any(select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, false)))), true, true));
    var_0 = vec4<i32>(1i, select(~(~(u_input.b.x | u_input.b.x)), _wgslsmith_dot_vec3_i32(var_0.zwz, func_2().b.wwy), any(vec4<bool>(true, true, true, true))), _wgslsmith_add_i32(select(~var_0.x << (select(global0.x, u_input.a.x, true) % 32u), _wgslsmith_mod_i32(u_input.b.x, var_0.x << (global0.x % 32u)), true), var_0.x), 35636i);
    let x = u_input.a;
    s_output = StorageBuffer(i32(-1i) * -48290i, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-568f, 922f))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -663f), _wgslsmith_f_op_f32(min(1903f, -555f))))))), ~max(vec3<i32>(u_input.b.x, u_input.b.x, -1i) ^ select(vec3<i32>(0i, -54120i, u_input.b.x), vec3<i32>(-15710i, 1i, var_0.x), true), _wgslsmith_add_vec3_i32(var_0.xwy, vec3<i32>(u_input.b.x, u_input.b.x, 38529i)) << (~vec3<u32>(global0.x, 38116u, u_input.a.x) % vec3<u32>(32u))));
}

