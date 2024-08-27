struct Struct_1 {
    a: vec2<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
    c: vec4<u32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 25>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: u32, arg_3: Struct_2) -> vec3<f32> {
    let var_0 = 107f;
    let var_1 = 0u;
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    let var_2 = firstLeadingBit(0u);
    return vec3<f32>(1851f, _wgslsmith_f_op_f32(f32(-1f) * -604f), _wgslsmith_f_op_f32(round(-1173f)));
}

fn func_4(arg_0: vec3<f32>) -> vec3<bool> {
    let var_0 = ~max(u_input.b >> (~(~u_input.a) % 32u), abs(~u_input.a << ((u_input.a >> (u_input.a % 32u)) % 32u)));
    var var_1 = ~(~vec2<i32>(~abs(-21972i), u_input.d));
    global0 = array<vec4<f32>, 25>();
    let var_2 = vec4<i32>(-1i, _wgslsmith_sub_i32(min(~u_input.d, -2147483647i), 34391i), _wgslsmith_dot_vec2_i32(-abs(vec2<i32>(6727i, u_input.d)) | vec2<i32>(-39299i, 1i), _wgslsmith_sub_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(1i, 1i), vec2<i32>(u_input.d, var_1.x), max(vec2<i32>(var_1.x, var_1.x), vec2<i32>(36256i, -1i))), firstTrailingBit(~vec2<i32>(u_input.d, 26409i)))), var_1.x);
    let var_3 = Struct_4(~(~(~select(vec2<u32>(0u, 4294967295u), vec2<u32>(u_input.b, 0u), true))));
    return select(vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x - arg_0.x) - arg_0.x) == arg_0.x, true, true), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec3<bool>(false, true, false))), select(select(select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, true)), vec3<bool>(false, true, false), 1106u < var_3.a.x), select(vec3<bool>(true, true, true), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), all(!select(vec2<bool>(true, false), vec2<bool>(false, false), true))), vec3<bool>(all(vec4<bool>(true, true, true, true)), true, all(vec4<bool>(true, true, true, true))));
}

fn func_5(arg_0: u32, arg_1: bool, arg_2: Struct_1, arg_3: Struct_2) -> vec2<f32> {
    let var_0 = _wgslsmith_mod_i32(~reverseBits(arg_3.c) ^ arg_3.d, -2147483647i);
    global0 = array<vec4<f32>, 25>();
    var var_1 = Struct_2(Struct_1(arg_3.b.a, true & arg_3.a.b), arg_3.b, 1i, ~_wgslsmith_mult_i32(-(i32(-1i) * -19560i), max(37079i | u_input.d, _wgslsmith_sub_i32(var_0, var_0))));
    let var_2 = vec3<u32>(_wgslsmith_dot_vec3_u32(select(vec3<u32>(1u, arg_3.b.a.x, var_1.a.a.x), ~vec3<u32>(4294967295u, 0u, 46508u), false) >> (_wgslsmith_mod_vec3_u32(countOneBits(vec3<u32>(1u, arg_3.b.a.x, 21803u)), ~vec3<u32>(arg_2.a.x, arg_2.a.x, 117136u)) % vec3<u32>(32u)), ~(~(vec3<u32>(arg_3.a.a.x, 60116u, var_1.a.a.x) | vec3<u32>(90982u, 0u, 0u)))), var_1.a.a.x, 32793u);
    var_1 = Struct_2(arg_3.a, arg_3.b, -1i, ~((~(-72171i) & (75375i | var_0)) ^ -45i));
    return vec2<f32>(830f, 1043f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_4(~(~(~select(vec2<u32>(u_input.a, u_input.c), vec2<u32>(u_input.a, 4294967295u), vec2<bool>(false, true)))));
    var var_1 = ~min(~_wgslsmith_sub_i32(u_input.d, select(-34162i, -17906i, true)), -28138i);
    var_1 = 51882i;
    let var_2 = Struct_1(~(~vec2<u32>(1u, abs(u_input.c))), false);
    let var_3 = _wgslsmith_f_op_vec2_f32(func_5(u_input.b, any(func_4(_wgslsmith_f_op_vec3_f32(func_3(Struct_2(Struct_1(vec2<u32>(var_2.a.x, u_input.b), var_2.b), Struct_1(var_0.a, true), 0i, u_input.d), var_2.b, var_0.a.x << (u_input.a % 32u), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u), var_2.b), var_2, -18307i, 21408i))))), Struct_1(vec2<u32>(_wgslsmith_sub_u32(firstTrailingBit(u_input.b), ~u_input.c), ~u_input.b), !(!var_2.b)), Struct_2(Struct_1(var_2.a, !var_2.b && true), Struct_1(~vec2<u32>(4294967295u, 1u) & ~var_0.a, var_2.b), u_input.d, _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 0i), _wgslsmith_sub_vec2_i32(vec2<i32>(u_input.d, 1i), vec2<i32>(u_input.d, u_input.d))))));
    return var_2;
}

fn func_6(arg_0: Struct_1, arg_1: u32, arg_2: Struct_4, arg_3: i32) -> Struct_4 {
    var var_0 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(arg_1, 25u)], _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1508f, 1584f, -436f, -1000f)), true)))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-1000f * -890f), _wgslsmith_f_op_f32(min(461f, -201f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1101f * 401f) - _wgslsmith_f_op_f32(f32(-1f) * -385f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(392f, -224f, arg_0.b))), -1829f) - _wgslsmith_f_op_vec4_f32(vec4<f32>(182f, -558f, -105f, -1221f) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-1104f, -1473f, 322f, -175f))) + vec4<f32>(1f, 1f, 1f, 1f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-global0[_wgslsmith_index_u32(25432u, 25u)]);
    let var_1 = Struct_2(Struct_1(vec2<u32>(1u, u_input.c), arg_0.b), Struct_1(vec2<u32>(abs(u_input.b) & arg_2.a.x, abs(~u_input.c)), false), reverseBits(~(_wgslsmith_add_i32(u_input.d, arg_3) | max(-55133i, arg_3))), u_input.d);
    let var_2 = vec3<bool>(true, true, arg_0.b);
    return Struct_4(select(vec2<u32>(func_2().a.x, _wgslsmith_sub_u32(13206u, 4286u) | ~arg_0.a.x), vec2<u32>(4294967295u, _wgslsmith_clamp_u32(22387u, min(arg_1, 0u), min(u_input.a, 0u))), vec2<bool>(var_1.b.b, true)));
}

fn func_7(arg_0: Struct_4, arg_1: Struct_3) -> vec2<u32> {
    global0 = array<vec4<f32>, 25>();
    let var_0 = 1u;
    global0 = array<vec4<f32>, 25>();
    let var_1 = select(!(!select(vec4<bool>(true, true, true, false), select(vec4<bool>(false, false, arg_1.a, arg_1.a), vec4<bool>(false, true, true, arg_1.a), vec4<bool>(arg_1.a, false, arg_1.a, true)), u_input.c <= 67975u)), vec4<bool>(arg_1.a, false, !any(vec4<bool>(arg_1.a, true, false, arg_1.a)) & !all(vec3<bool>(false, arg_1.a, arg_1.a)), arg_1.a), select(!select(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, arg_1.a), vec4<bool>(false, arg_1.a, false, arg_1.a), false), !vec4<bool>(false, false, arg_1.a, arg_1.a), select(vec4<bool>(false, true, arg_1.a, true), vec4<bool>(arg_1.a, arg_1.a, false, true), vec4<bool>(arg_1.a, arg_1.a, true, false))), select(vec4<bool>(all(vec2<bool>(arg_1.a, false)), arg_1.a, true, any(vec4<bool>(true, true, true, false))), vec4<bool>(true, arg_1.a, arg_1.a, arg_1.a), select(select(vec4<bool>(arg_1.a, arg_1.a, arg_1.a, false), vec4<bool>(arg_1.a, arg_1.a, true, false), vec4<bool>(false, arg_1.a, arg_1.a, arg_1.a)), select(vec4<bool>(false, false, false, false), vec4<bool>(arg_1.a, arg_1.a, arg_1.a, true), vec4<bool>(arg_1.a, false, false, arg_1.a)), vec4<bool>(false, arg_1.a, true, false))), vec4<bool>(func_4(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-509f, 193f, 1069f), vec3<f32>(-1490f, -1000f, 594f), vec3<bool>(arg_1.a, arg_1.a, arg_1.a)))).x, !arg_1.a, false, true)));
    let var_2 = 63284i;
    return select(vec2<u32>(max(~_wgslsmith_dot_vec2_u32(arg_0.a, arg_0.a), 35009u), arg_0.a.x), vec2<u32>(u_input.c, _wgslsmith_sub_u32(4294967295u, 4294967295u)), !vec2<bool>(true, true == any(var_1.ww)));
}

fn func_1(arg_0: bool) -> Struct_1 {
    var var_0 = vec2<i32>(u_input.d, -15571i);
    let var_1 = Struct_4(func_7(func_6(func_2(), 1u, Struct_4(vec2<u32>(u_input.c, u_input.b)), ~0i), Struct_3(any(vec3<bool>(arg_0, arg_0, true)))) | ~vec2<u32>(_wgslsmith_mod_u32(37615u, u_input.c), u_input.c));
    let var_2 = firstTrailingBit(-max(~(-u_input.d), _wgslsmith_mult_i32(1i, i32(-1i) * -1i)));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<f32>, 25>();
    global0 = array<vec4<f32>, 25>();
    let var_0 = false;
    global0 = array<vec4<f32>, 25>();
    let var_1 = Struct_2(func_1(true), func_1(func_4(vec3<f32>(-813f, 637f, _wgslsmith_div_f32(1819f, -1087f))).x), (2147483647i ^ select(u_input.d, ~u_input.d, false || var_0)) << (u_input.b % 32u), -(~u_input.d));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1f, _wgslsmith_f_op_f32(f32(-1f) * -763f)))), max(vec3<u32>(var_1.a.a.x, _wgslsmith_add_u32(u_input.c, var_1.b.a.x | u_input.b), u_input.b), ~vec3<u32>(~var_1.b.a.x, var_1.a.a.x, _wgslsmith_add_u32(90667u, var_1.a.a.x))), ~vec4<u32>(90207u, 102886u, ~func_7(Struct_4(vec2<u32>(0u, 0u)), Struct_3(false)).x, ~1u), 0i, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -551f))) * 320f));
}

