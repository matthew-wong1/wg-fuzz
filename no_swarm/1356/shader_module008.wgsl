struct Struct_1 {
    a: vec3<u32>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: f32,
    c: vec4<bool>,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<u32>,
    c: Struct_2,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_2(arg_0: vec2<u32>) -> f32 {
    return 228f;
}

fn func_3(arg_0: bool, arg_1: u32, arg_2: vec4<bool>, arg_3: bool) -> vec4<u32> {
    var var_0 = Struct_3(Struct_1(select(u_input.b.zyw, u_input.a.wwx, all(vec2<bool>(true, arg_3))), vec2<bool>(arg_2.x, arg_3)));
    var_0 = Struct_3(Struct_1(abs(vec3<u32>(82005u, abs(var_0.a.a.x), ~u_input.a.x)), !vec2<bool>(any(arg_2.yy), false)));
    let var_1 = Struct_1(min(~(vec3<u32>(4294967295u, arg_1, 84031u) & u_input.a.www), vec3<u32>(~u_input.a.x, _wgslsmith_dot_vec4_u32(u_input.a, abs(vec4<u32>(arg_1, 3431u, 34062u, 4294967295u))), u_input.b.x)), !select(select(select(vec2<bool>(arg_2.x, false), vec2<bool>(false, false), var_0.a.b), select(vec2<bool>(arg_3, true), arg_2.xz, var_0.a.b), arg_0 || var_0.a.b.x), !arg_2.zz, arg_2.x));
    let var_2 = _wgslsmith_div_vec3_u32(var_1.a, firstLeadingBit(_wgslsmith_add_vec3_u32(~reverseBits(vec3<u32>(u_input.b.x, var_1.a.x, var_0.a.a.x)), ~(~vec3<u32>(var_0.a.a.x, 4294967295u, var_0.a.a.x)))));
    var var_3 = _wgslsmith_sub_u32(_wgslsmith_sub_u32(min(_wgslsmith_mult_u32(66918u, var_0.a.a.x), 60129u), 23355u), select(u_input.a.x, var_1.a.x, true)) | _wgslsmith_div_u32(arg_1, _wgslsmith_add_u32(abs(var_2.x), 0u));
    return ~_wgslsmith_mult_vec4_u32(~(~_wgslsmith_div_vec4_u32(vec4<u32>(32869u, 7062u, arg_1, u_input.b.x), u_input.b)), ~min(abs(u_input.a), firstTrailingBit(vec4<u32>(var_0.a.a.x, 0u, 1u, 28547u))));
}

fn func_4(arg_0: vec2<f32>, arg_1: f32, arg_2: f32, arg_3: Struct_5) -> Struct_1 {
    var var_0 = arg_3.a;
    var var_1 = arg_3.c.b;
    var_1 = u_input.c;
    var var_2 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_0.x), 703f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(911f * -548f) + arg_1) * 810f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-928f, arg_2, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(841f - arg_0.x))) + arg_0.x)));
    var_0 = arg_3.a;
    return Struct_1(~arg_3.a.a.a, !var_0.a.b);
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: Struct_4) -> Struct_2 {
    var var_0 = Struct_5(Struct_3(arg_0), ~(~vec4<u32>(~arg_0.a.x, ~4294967295u, 0u & u_input.a.x, u_input.b.x)), Struct_2(~(_wgslsmith_add_u32(u_input.b.x, arg_0.a.x) ^ 4294967295u), 2147483647i));
    let var_1 = Struct_2(var_0.b.x, 10434i >> (max(firstTrailingBit(u_input.a.x) ^ func_3(var_0.a.a.b.x, arg_0.a.x, vec4<bool>(arg_2.c.x, true, arg_2.c.x, false), true).x, ~select(arg_0.a.x, u_input.b.x, arg_1)) % 32u));
    let var_2 = _wgslsmith_clamp_i32(~abs(~u_input.d), 1i, abs(reverseBits(-6282i & arg_2.a))) <= -6858i;
    let var_3 = -51034i;
    let var_4 = Struct_3(Struct_1(select(select(abs(u_input.a.www), arg_0.a | arg_0.a, vec3<bool>(true, true, false)), vec3<u32>(var_1.a, var_0.b.x, u_input.a.x) ^ _wgslsmith_sub_vec3_u32(arg_0.a, u_input.a.wyz), arg_2.c.wxy), arg_2.c.yx));
    return var_1;
}

fn func_1(arg_0: vec3<f32>, arg_1: u32, arg_2: vec2<bool>) -> vec2<f32> {
    let var_0 = u_input.a.xz;
    let var_1 = _wgslsmith_add_u32(19721u, 22177u);
    var var_2 = 18567i;
    var var_3 = func_5(func_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(arg_0.x * arg_0.x), 614f)), -182f, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(var_0)) * arg_0.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(641f * arg_0.x) - 1338f))), Struct_5(Struct_3(Struct_1(u_input.a.wwz, arg_2)), func_3(all(vec3<bool>(arg_2.x, arg_2.x, arg_2.x)), ~14476u, !vec4<bool>(true, true, false, arg_2.x), all(vec4<bool>(false, arg_2.x, arg_2.x, arg_2.x))), Struct_2(~var_1, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, 28304i), vec2<i32>(u_input.d, 35324i))))), arg_2.x, Struct_4(36131i, arg_0.x, vec4<bool>(!(arg_2.x && false), arg_2.x, false, true)));
    var var_4 = Struct_1(firstTrailingBit(func_3(!arg_2.x, arg_1, select(!vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(false, arg_2.x, arg_2.x, false), vec4<bool>(true, arg_2.x, false, true)), arg_2.x).wzw), !func_4(arg_0.xz, _wgslsmith_div_f32(409f, -1555f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(-719f, arg_0.x, false)))), Struct_5(Struct_3(Struct_1(vec3<u32>(1u, 1u, 1u), arg_2)), vec4<u32>(27995u, var_0.x, arg_1, 16822u), func_5(Struct_1(u_input.a.yww, arg_2), arg_2.x, Struct_4(u_input.c, -364f, vec4<bool>(arg_2.x, arg_2.x, true, false))))).b);
    return vec2<f32>(1000f, -165f);
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -235f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(-194f, -2343f, -330f), u_input.b.x, vec2<bool>(true, true)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-246f, -1389f)))))), _wgslsmith_clamp_vec4_i32(countOneBits(~vec4<i32>(50600i, u_input.d, -1i, u_input.d)) ^ vec4<i32>(6753i, _wgslsmith_add_i32(-2147483647i, 2147483647i), _wgslsmith_add_i32(-2147483647i, u_input.c), 1i), ~vec4<i32>(u_input.c, ~u_input.c, ~u_input.d, _wgslsmith_mod_i32(u_input.c, 80248i)), vec4<i32>(-1i) * -select(vec4<i32>(-14334i, 8504i, -29771i, u_input.d), vec4<i32>(u_input.d, u_input.d, u_input.c, 34657i), vec4<bool>(true, false, true, true))), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(850f, 449f, -1656f, -1257f), vec4<f32>(-491f, -1481f, 280f, 860f)) - vec4<f32>(-648f, -552f, 669f, 1640f)) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-718f, -862f, 1731f, 805f)), vec4<f32>(3282f, 1000f, 657f, -301f), vec4<bool>(true, true, true, true)))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(181f, 197f, -244f))), vec3<f32>(_wgslsmith_f_op_f32(603f + 450f), _wgslsmith_f_op_f32(-570f * -630f), _wgslsmith_f_op_f32(round(309f))))) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(min(1037f, -1000f)), -585f, _wgslsmith_f_op_f32(-636f * -1123f))))));
}

