struct Struct_1 {
    a: u32,
    b: vec4<f32>,
    c: i32,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: vec4<i32>,
    c: u32,
    d: Struct_1,
    e: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: i32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_1(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: Struct_4) -> f32 {
    var var_0 = arg_2.e;
    var var_1 = 559f;
    let var_2 = ~(-((_wgslsmith_dot_vec3_i32(vec3<i32>(arg_2.d.c, arg_2.d.c, var_0.a.x), arg_2.e.a.yxx) ^ arg_2.b.x) << (1u % 32u)));
    var_0 = arg_2.e;
    var var_3 = abs(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, u_input.b), ~(~vec2<u32>(57900u, 4294967295u))));
    return 316f;
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: Struct_5, arg_3: vec3<u32>) -> f32 {
    var var_0 = Struct_2(vec4<i32>(~(-2147483647i), abs(arg_2.a.a.x) | _wgslsmith_add_i32(-arg_2.a.a.x, 5654i), _wgslsmith_mult_i32(32125i, (-49932i | arg_2.a.a.x) >> (u_input.b % 32u)), ~select(_wgslsmith_sub_i32(-1i, arg_2.a.a.x), 2147483647i, true)));
    let var_1 = !all(vec2<bool>(!all(vec2<bool>(true, false)), any(vec3<bool>(true, true, true))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -2205f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, -1251f)))));
}

fn func_2(arg_0: i32, arg_1: i32, arg_2: Struct_5) -> f32 {
    let var_0 = select(select(vec3<bool>(true, select(true, true, select(false, false, false)), u_input.b >= 1u), select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), true), true), vec3<bool>(true, true, true)), !vec3<bool>(true, true, arg_1 != arg_2.a.a.x)), select(vec3<bool>(true, _wgslsmith_f_op_f32(-2338f * -530f) >= _wgslsmith_f_op_f32(func_3(Struct_5(arg_2.a), 4294967295u, arg_2, vec3<u32>(u_input.b, u_input.a, 4294967295u))), !all(vec3<bool>(true, true, true))), vec3<bool>(false, -581f == _wgslsmith_f_op_f32(floor(-521f)), arg_1 >= -arg_1), vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-533f)))) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(2215f, -129f)))) - 500f));
    let var_1 = Struct_4((1385f > _wgslsmith_f_op_f32(round(-489f))) | (-27779i == select(_wgslsmith_add_i32(arg_1, 28762i), abs(arg_2.a.a.x), any(vec2<bool>(true, true)))), vec4<i32>(i32(-1i) * -countOneBits(arg_1), 2147483647i, -27977i, ~(~1293i)), u_input.b, Struct_1(34811u, _wgslsmith_f_op_vec4_f32(vec4<f32>(625f, _wgslsmith_f_op_f32(1593f + -1251f), _wgslsmith_f_op_f32(1003f - -1843f), _wgslsmith_f_op_f32(round(112f))) * vec4<f32>(_wgslsmith_f_op_f32(623f + -102f), _wgslsmith_f_op_f32(round(-537f)), _wgslsmith_f_op_f32(sign(875f)), _wgslsmith_div_f32(914f, -828f))), reverseBits(~(-1i)) >> (u_input.b % 32u)), Struct_2(vec4<i32>(arg_0 & arg_2.a.a.x, ~arg_1 >> ((u_input.a ^ 30689u) % 32u), _wgslsmith_mult_i32(_wgslsmith_add_i32(arg_0, arg_1), 0i), arg_2.a.a.x)));
    var var_2 = _wgslsmith_div_vec2_i32(-arg_2.a.a.wy, _wgslsmith_mod_vec2_i32(vec2<i32>(var_1.b.x, arg_0), ~abs(arg_2.a.a.zz)));
    var_2 = vec2<i32>(0i, var_2.x);
    var_2 = arg_2.a.a.yx;
    return _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.d.b.x + _wgslsmith_div_f32(var_1.d.b.x, _wgslsmith_f_op_f32(var_1.d.b.x + -254f))) + 1000f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<f32>(361f, _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(vec2<f32>(2039f, 691f), vec2<i32>(-2267i, 1i), Struct_4(true, vec4<i32>(-2147483647i, -1i, -1i, -2147483647i), 19544u, Struct_1(4294967295u, vec4<f32>(-1000f, -574f, -480f, 285f), 0i), Struct_2(vec4<i32>(-1i, 71722i, -2147483647i, 0i)))))), -614f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(810f * _wgslsmith_f_op_f32(f32(-1f) * -822f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -235f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(~2147483647i, _wgslsmith_add_i32(-1i, 30315i), Struct_5(Struct_2(vec4<i32>(-13480i, 30103i, -11371i, -2147483647i))))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1234f))))));
    let var_1 = Struct_4(select(all(vec4<bool>(any(vec2<bool>(false, true)), any(vec3<bool>(false, false, true)), any(vec3<bool>(false, true, true)), true)), all(select(select(vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(false, false, true, false), select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, false), false))), true), -vec4<i32>(~(-25557i), 1i << (abs(u_input.a) % 32u), _wgslsmith_mod_i32(-34866i << (1u % 32u), -15881i), _wgslsmith_dot_vec2_i32(reverseBits(vec2<i32>(21421i, 44939i)), ~vec2<i32>(9603i, 22146i))), min(u_input.a, _wgslsmith_mult_u32(0u, u_input.b)), Struct_1(_wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, 4294967295u, u_input.a), vec3<u32>(0u, u_input.b, 1u) ^ vec3<u32>(12962u, u_input.b, u_input.b), vec3<u32>(u_input.a, u_input.a, 1u) ^ vec3<u32>(u_input.a, 33985u, 100571u)), _wgslsmith_clamp_vec3_u32(abs(vec3<u32>(4294967295u, 4294967295u, 19078u)), _wgslsmith_div_vec3_u32(vec3<u32>(4294967295u, 7031u, 38441u), vec3<u32>(u_input.b, u_input.a, 1u)), ~vec3<u32>(27807u, 95102u, 0u))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -710f, -323f, _wgslsmith_f_op_f32(exp2(var_0.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, -585f, -1410f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, 111f))))), _wgslsmith_dot_vec2_i32(reverseBits(firstLeadingBit(vec2<i32>(-2147483647i, 2147483647i))), ~vec2<i32>(0i, -19748i))), Struct_2(firstTrailingBit(abs(~vec4<i32>(7567i, -18159i, 42500i, -2147483647i)))));
    var var_2 = ~_wgslsmith_mult_vec3_u32(select(~vec3<u32>(u_input.a, u_input.b, var_1.d.a), ~vec3<u32>(var_1.c, 14956u, 0u), false) | vec3<u32>(1u, ~var_1.c, ~u_input.b), countOneBits(~vec3<u32>(0u, var_1.d.a, 8776u)));
    let var_3 = Struct_3(var_1.d);
    var_2 = _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, var_1.d.a, var_1.c), vec3<u32>(var_1.c, var_1.d.a, 10720u)) ^ min(vec3<u32>(var_1.c, var_3.a.a, 7547u), vec3<u32>(var_3.a.a, var_3.a.a, 1u))), firstTrailingBit(~(vec3<u32>(3260u, var_2.x, var_3.a.a) << (vec3<u32>(var_1.c, var_1.c, var_3.a.a) % vec3<u32>(32u))))), select(vec3<u32>(firstTrailingBit(var_2.x), countOneBits(var_1.c), 5596u), vec3<u32>(1u, 1u, 1u), all(select(vec3<bool>(var_1.a, var_1.a, var_1.a), vec3<bool>(true, true, false), false))) & min(vec3<u32>(~0u, abs(50156u), min(var_1.c, 12613u)), vec3<u32>(1u, u_input.b, var_3.a.a)));
    var var_4 = var_2.yy;
    let var_5 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-var_1.d.b.yxx)));
    var var_6 = var_1;
    var_4 = ~vec2<u32>(4294967295u, _wgslsmith_div_u32(17857u, var_2.x));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.yz, var_2.yz, ~(vec4<u32>(var_2.x, 39769u, var_6.d.a, ~var_2.x) ^ select(vec4<u32>(var_3.a.a, 28048u, var_2.x, var_4.x), ~vec4<u32>(var_2.x, 0u, var_4.x, 72548u), true)), var_3.a.c, _wgslsmith_f_op_vec2_f32(var_6.d.b.yz + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_5.x)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-872f + 1276f), var_0.x))));
}

