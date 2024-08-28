struct Struct_1 {
    a: f32,
    b: i32,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: vec3<i32>,
    b: Struct_1,
    c: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: bool,
    d: f32,
    e: bool,
}

struct Struct_5 {
    a: Struct_4,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: bool = true;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -185f) + _wgslsmith_f_op_f32(f32(-1f) * -1086f)) + _wgslsmith_f_op_f32(floor(689f))), 2147483647i, global0.zyy, 50274u);
    var var_1 = _wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(var_0.a + 533f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a * _wgslsmith_f_op_f32(select(var_0.a, var_0.a, var_0.c.x)))), _wgslsmith_f_op_f32(136f + var_0.a))));
    global0 = !vec4<bool>(global0.x, !any(!var_0.c.zz), global0.x, true);
    global1 = !var_0.c.x;
    global0 = select(!select(select(select(vec4<bool>(var_0.c.x, global0.x, true, global0.x), vec4<bool>(true, true, global0.x, var_0.c.x), true), vec4<bool>(var_0.c.x, true, false, var_0.c.x), select(vec4<bool>(global0.x, var_0.c.x, global0.x, var_0.c.x), vec4<bool>(false, true, global0.x, false), vec4<bool>(var_0.c.x, false, false, global0.x))), !select(vec4<bool>(false, var_0.c.x, false, true), vec4<bool>(true, true, var_0.c.x, global0.x), var_0.c.x), !select(vec4<bool>(var_0.c.x, false, var_0.c.x, var_0.c.x), vec4<bool>(false, false, true, true), var_0.c.x)), select(vec4<bool>(any(vec4<bool>(false, var_0.c.x, var_0.c.x, var_0.c.x)), true, any(vec4<bool>(var_0.c.x, global0.x, false, true)), true), select(!vec4<bool>(false, true, var_0.c.x, var_0.c.x), vec4<bool>(!global0.x, any(vec4<bool>(global0.x, global0.x, false, false)), global0.x, false), !select(vec4<bool>(false, global0.x, var_0.c.x, var_0.c.x), vec4<bool>(var_0.c.x, false, true, true), true)), select(select(!vec4<bool>(var_0.c.x, false, global0.x, false), vec4<bool>(var_0.c.x, true, var_0.c.x, true), false), !vec4<bool>(global0.x, false, true, var_0.c.x), select(vec4<bool>(false, global0.x, true, global0.x), !vec4<bool>(global0.x, var_0.c.x, var_0.c.x, false), !vec4<bool>(false, false, true, var_0.c.x)))), global0.x);
    return 748f;
}

fn func_2() -> bool {
    global0 = !(!select(!select(vec4<bool>(false, global0.x, global0.x, false), vec4<bool>(global0.x, false, global0.x, false), global0.x), vec4<bool>(!global0.x, true, !global0.x, true), 27400u > u_input.a));
    var var_0 = ~_wgslsmith_dot_vec3_u32(firstTrailingBit(vec3<u32>(7423u, 65556u, 45563u)), vec3<u32>(u_input.a, u_input.a, 4294967295u) | vec3<u32>(4294967295u, 110309u, 4294967295u)) | ~_wgslsmith_add_u32(~38768u, 0u & ~u_input.a);
    let var_1 = any(global0.yz);
    global0 = select(vec4<bool>(false, false, var_1, global0.x), !vec4<bool>(global0.x, false, false, true || !var_1), vec4<bool>(!(var_1 | all(vec4<bool>(var_1, global0.x, var_1, true))), true, any(!(!vec4<bool>(global0.x, true, true, global0.x))), global0.x));
    let var_2 = i32(-1i) * -41889i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3())) < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -325f))) - _wgslsmith_f_op_f32(-432f + -602f)));
}

fn func_1() -> i32 {
    global0 = vec4<bool>(func_2(), global0.x, !(!(!global0.x) || true), false);
    global0 = vec4<bool>(true, global0.x, any(global0.www), !global0.x);
    global1 = false;
    let var_0 = global0.x;
    let var_1 = Struct_5(Struct_4(vec2<u32>(~_wgslsmith_clamp_u32(u_input.a, 26326u, u_input.a), u_input.a), vec2<i32>(_wgslsmith_clamp_i32(1i, -62172i, ~1i), -17870i), select(!global0.x, any(vec4<bool>(true, true, global0.x, global0.x)), any(vec4<bool>(true, global0.x, true, global0.x))) | !global0.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-380f)))), !global0.x));
    return _wgslsmith_dot_vec2_i32(abs(firstTrailingBit(select(var_1.a.b, vec2<i32>(var_1.a.b.x, var_1.a.b.x), vec2<bool>(true, false)))) & -(var_1.a.b >> (~var_1.a.a % vec2<u32>(32u))), var_1.a.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.a;
    let var_1 = vec4<i32>(_wgslsmith_clamp_i32(_wgslsmith_add_i32(i32(-1i) * -2147483647i, func_1()), firstLeadingBit(-82379i) ^ firstTrailingBit(~(-1i)), _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(20199i, 2147483647i), vec2<i32>(-22925i, 35906i)), max(abs(vec2<i32>(-2147483647i, 23794i)), vec2<i32>(1i, 1i)))), _wgslsmith_mod_i32(_wgslsmith_sub_i32(~(-16699i), max(_wgslsmith_mod_i32(-6548i, -2147483647i), 2147483647i >> (u_input.a % 32u))), abs(reverseBits(-59168i))), -34683i, 4929i);
    var var_2 = Struct_4(_wgslsmith_sub_vec2_u32(~select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 33199u), global0.ww) << (max(vec2<u32>(u_input.a, u_input.a) << (vec2<u32>(u_input.a, 1u) % vec2<u32>(32u)), ~vec2<u32>(u_input.a, u_input.a)) % vec2<u32>(32u)), vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 41480u), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))), ~u_input.a)), countOneBits(var_1.wx), !func_2(), _wgslsmith_f_op_f32(func_3()), global0.x);
    let var_3 = 1151f;
    var var_4 = Struct_4(_wgslsmith_mod_vec2_u32(var_2.a, _wgslsmith_add_vec2_u32(vec2<u32>(var_2.a.x, 4294967295u), var_2.a ^ var_2.a)) | _wgslsmith_mod_vec2_u32(var_2.a, _wgslsmith_div_vec2_u32(~var_2.a, _wgslsmith_sub_vec2_u32(var_2.a, var_2.a))), var_2.b, false, var_2.d, global0.x);
    var var_5 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_4.d, -1602f)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, var_3) + vec2<f32>(-224f, 840f)))))));
    var_0 = 47024u;
    let var_6 = ~var_2.a.x;
    let x = u_input.a;
    s_output = StorageBuffer(~firstLeadingBit(firstTrailingBit(reverseBits(vec3<u32>(67385u, u_input.a, 32938u)))), abs(-(~vec2<i32>(var_2.b.x, -10425i))) | ~vec2<i32>(~var_1.x, _wgslsmith_mult_i32(var_4.b.x, var_4.b.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(649f, -1252f)), _wgslsmith_f_op_f32(max(var_4.d, var_3))), var_4.d)))));
}

