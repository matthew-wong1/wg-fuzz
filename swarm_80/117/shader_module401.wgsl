struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec4<i32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2) -> f32 {
    global0 = Struct_3(arg_1, global0.a.b && !(true && !arg_1.e.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(-1f)) * global0.c));
    global0 = Struct_3(global0.a, false, _wgslsmith_f_op_f32(-1f));
    global0 = Struct_3(global0.a, global0.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(702f * 381f)))));
    global0 = Struct_3(arg_1, arg_0, 778f);
    global0 = Struct_3(arg_1, !any(select(!global0.a.e, !vec3<bool>(true, arg_1.b, true), !arg_0)), global0.c);
    return global0.c;
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1283f, -171f, global0.c, -1191f) - vec4<f32>(global0.c, global0.c, global0.c, global0.c)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.c, -301f, global0.c, global0.c), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global0.c, global0.c, global0.c, -691f))))))) * _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-356f - global0.c), -1010f, _wgslsmith_f_op_f32(f32(-1f) * -1279f), -1098f) + vec4<f32>(425f, 1137f, _wgslsmith_f_op_f32(func_3(global0.b, global0.a, Struct_2(u_input.e.x))), _wgslsmith_f_op_f32(step(global0.c, global0.c)))))));
    let var_1 = !(!(!select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, global0.b, global0.b), global0.b), vec4<bool>(false, global0.a.e.x, global0.a.b, false), any(global0.a.e))));
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(countOneBits(u_input.b), max(_wgslsmith_dot_vec2_u32(u_input.e.yy, u_input.e.yx), 4294967295u)), u_input.e.x);
    global0 = Struct_3(Struct_1(_wgslsmith_clamp_i32(_wgslsmith_mod_i32(~global0.a.d, -u_input.d), global0.a.c.x, ~1i), true, global0.a.c & vec4<i32>(0i, u_input.a.x, -u_input.a.x, u_input.a.x), global0.a.c.x, vec3<bool>(true, true, false)), false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-881f))));
    var var_3 = !all(select(select(vec3<bool>(global0.a.b, global0.a.b, true), vec3<bool>(true, true, false), select(vec3<bool>(false, true, global0.b), var_1.zxz, false)), vec3<bool>(u_input.b < var_2.x, 74120u >= u_input.e.x, true), global0.a.e));
    return Struct_2(abs(70213u));
}

fn func_4(arg_0: vec2<u32>, arg_1: Struct_2, arg_2: u32) -> i32 {
    var var_0 = true;
    let var_1 = !(false & global0.a.b);
    let var_2 = all(vec4<bool>(!(!(-306f != global0.c)), !(global0.a.a < _wgslsmith_div_i32(u_input.a.x, u_input.a.x)), global0.a.e.x, _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_add_i32(global0.a.d, u_input.d)) >= ~1i));
    var var_3 = !select(select(vec4<bool>(true, var_1, arg_0.x > 4294967295u, any(vec4<bool>(true, false, true, false))), vec4<bool>(!var_1, var_2 || true, u_input.d < global0.a.d, var_1), vec4<bool>(global0.a.c.x != global0.a.d, var_1, true, false)), vec4<bool>(any(select(global0.a.e.zz, global0.a.e.yz, global0.a.e.yx)), false, global0.b, any(vec2<bool>(true, true))), select(select(vec4<bool>(var_1, global0.b, var_2, var_2), !vec4<bool>(var_2, var_2, false, var_2), select(vec4<bool>(true, false, true, var_2), vec4<bool>(var_2, false, global0.b, true), vec4<bool>(var_2, var_1, var_1, var_2))), select(vec4<bool>(var_2, global0.b, true, true), vec4<bool>(false, false, var_1, var_1), vec4<bool>(global0.a.e.x, var_1, var_2, var_1)), !any(global0.a.e.yz)));
    var_0 = any(!select(var_3.zy, global0.a.e.xx, !select(vec2<bool>(var_1, global0.b), global0.a.e.yy, global0.a.e.xz)));
    return 33458i;
}

fn func_5(arg_0: Struct_2, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_1) -> vec2<bool> {
    var var_0 = func_2();
    var var_1 = Struct_1(_wgslsmith_mod_i32(reverseBits(~(-26596i)), -1i), true, arg_3.c, func_4(_wgslsmith_mod_vec2_u32(select(max(u_input.e.yz, u_input.e.zz), reverseBits(u_input.e.yx), global0.b || arg_3.e.x), vec2<u32>(21910u, u_input.b) ^ min(vec2<u32>(u_input.e.x, 16333u), vec2<u32>(arg_0.a, var_0.a))), func_2(), _wgslsmith_dot_vec3_u32(~vec3<u32>(4294967295u, var_0.a, 1u), min(vec3<u32>(22211u, 7552u, u_input.e.x), select(vec3<u32>(0u, 4294967295u, 29u), u_input.e, global0.a.e)))), vec3<bool>(_wgslsmith_dot_vec3_i32(vec3<i32>(-8837i, -2147483647i, arg_3.c.x), firstLeadingBit(vec3<i32>(arg_3.d, 2147483647i, -1i))) < ~(arg_3.a | global0.a.a), global0.b | select(!global0.a.b, var_0.a == u_input.e.x, arg_3.e.x), (~63419u & _wgslsmith_mult_u32(u_input.c, 4294967295u)) == ~(var_0.a & 9862u)));
    var var_2 = arg_3.c.x >= ~(-36284i);
    var_2 = any(vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(var_1.b, var_1.b))), (var_1.e.x != false) & arg_3.b, false));
    var var_3 = true;
    return vec2<bool>(var_1.b, any(select(select(vec4<bool>(true, arg_3.e.x, true, false), vec4<bool>(arg_3.b, true, false, false), true || arg_3.b), !(!vec4<bool>(var_1.b, false, global0.b, false)), select(select(vec4<bool>(arg_3.e.x, false, var_1.e.x, false), vec4<bool>(false, var_1.e.x, false, true), true), select(vec4<bool>(arg_3.b, arg_3.e.x, true, false), vec4<bool>(true, true, var_1.b, false), vec4<bool>(arg_3.e.x, arg_3.e.x, global0.a.b, arg_3.e.x)), select(vec4<bool>(false, global0.a.e.x, true, global0.b), vec4<bool>(global0.b, global0.a.e.x, false, false), vec4<bool>(var_1.e.x, false, arg_3.b, global0.b))))));
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> vec3<bool> {
    var var_0 = select(vec2<bool>(!any(select(vec4<bool>(false, global0.b, global0.b, false), vec4<bool>(global0.b, false, false, global0.b), false)), global0.b), !vec2<bool>(true || global0.b, false), func_5(Struct_2(~arg_1), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-997f, 214f, -745f)))), ~func_4(u_input.e.xz, func_2(), ~0u), global0.a));
    var_0 = !global0.a.e.zx;
    let var_1 = func_2();
    global0 = Struct_3(global0.a, select(all(vec2<bool>(false, false)), true, _wgslsmith_dot_vec4_i32(vec4<i32>(-7920i, 2147483647i, u_input.d, u_input.d), vec4<i32>(u_input.d, global0.a.c.x, u_input.d, arg_0)) > arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1669f))) * -725f));
    var_0 = func_5(var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(global0.c, 877f, global0.c))))))), 1i, Struct_1(~_wgslsmith_mult_i32(global0.a.c.x, global0.a.a), 19398u <= var_1.a, global0.a.c, _wgslsmith_dot_vec2_i32(u_input.a, ~(~global0.a.c.yz)), global0.a.e));
    return vec3<bool>(!var_0.x, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-187f))), global0.c, _wgslsmith_div_f32(1899f, _wgslsmith_f_op_f32(-global0.c)))), vec3<f32>(_wgslsmith_f_op_f32(global0.c * _wgslsmith_f_op_f32(select(940f, _wgslsmith_div_f32(-197f, -381f), false))), _wgslsmith_f_op_f32(sign(-1106f)), global0.c), func_1(abs(-(global0.a.c.x >> (u_input.e.x % 32u))), _wgslsmith_clamp_u32(_wgslsmith_mod_u32(58429u, 77278u), ~u_input.e.x << (u_input.c % 32u), u_input.b), global0.c)));
    var var_1 = Struct_1(~(~(-1i)), _wgslsmith_div_u32(~_wgslsmith_mod_u32(11335u, u_input.e.x), ~(~8805u)) < ~7796u, abs(max(vec4<i32>(_wgslsmith_dot_vec3_i32(global0.a.c.xzw, global0.a.c.zzx), u_input.a.x, u_input.d, reverseBits(2147483647i)), firstTrailingBit(_wgslsmith_mult_vec4_i32(vec4<i32>(-2147483647i, global0.a.d, global0.a.a, -1i), vec4<i32>(u_input.d, -2147483647i, 1i, global0.a.a))))), 1i, vec3<bool>(true, true & global0.b, -2147483647i > global0.a.a));
    let var_2 = ~vec3<u32>(78916u, 4294967295u, ~_wgslsmith_mult_u32(53712u, _wgslsmith_add_u32(u_input.b, 30407u)));
    global0 = Struct_3(global0.a, var_1.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.c, var_0.x, true)) + -186f)));
    var var_3 = _wgslsmith_f_op_f32(f32(-1f) * -1071f);
    var var_4 = Struct_2(61214u);
    let x = u_input.a;
    s_output = StorageBuffer(~abs(u_input.d), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1393f, var_0.x, var_0.x, 391f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 548f, 430f))) * _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-781f, global0.c, global0.c, 942f), vec4<f32>(global0.c, 935f, -1385f, 584f))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1181f, global0.c, var_0.x, var_0.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, -908f, var_0.x, -552f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.c, -489f, 1075f, 1059f) + vec4<f32>(var_0.x, global0.c, var_0.x, global0.c))))), vec4<i32>(var_1.a, reverseBits(_wgslsmith_mod_i32(1i, _wgslsmith_clamp_i32(var_1.c.x, -25103i, 23729i))), (~1i | _wgslsmith_mod_i32(0i, var_1.a)) << (~var_4.a % 32u), firstTrailingBit(i32(-1i) * -25459i)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.a.x, 20737i, var_1.d), var_1.c.yzw ^ vec3<i32>(-34008i, global0.a.c.x, var_1.a)), global0.a.c.x), global0.a.d, 18480i, _wgslsmith_mod_i32(u_input.a.x, firstTrailingBit(41462i))));
}

