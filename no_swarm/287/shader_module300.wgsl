struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec3<u32>,
    c: bool,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: u32,
    d: u32,
    e: Struct_1,
}

struct Struct_5 {
    a: f32,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
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

var<private> global0: Struct_2 = Struct_2(Struct_1(false, vec2<bool>(false, false), -1105f));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1) -> vec4<f32> {
    let var_0 = Struct_2(arg_0);
    return vec4<f32>(var_0.a.c, var_0.a.c, global0.a.c, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.a.c, 1000f) - -1458f));
}

fn func_2(arg_0: i32, arg_1: vec4<i32>, arg_2: f32) -> Struct_2 {
    global0 = Struct_2(Struct_1(global0.a.a, !global0.a.b, global0.a.c));
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_3(Struct_1(global0.a.b.x, global0.a.b, -109f))))));
    global0 = Struct_2(Struct_1(false, !select(select(vec2<bool>(global0.a.a, true), global0.a.b, global0.a.b), vec2<bool>(global0.a.b.x, global0.a.b.x), !global0.a.a), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-1239f)), -272f))));
    let var_1 = Struct_2(Struct_1((0i < max(-14583i, arg_1.x)) & !global0.a.b.x, select(global0.a.b, global0.a.b, 1u <= u_input.b), _wgslsmith_f_op_f32(exp2(arg_2))));
    let var_2 = 2821f;
    return var_1;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = func_2(_wgslsmith_mod_i32(1i, -2147483647i), ~(max(vec4<i32>(-1i, 0i, -5419i, u_input.a), _wgslsmith_add_vec4_i32(vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(-10263i, -5429i, 0i, u_input.a))) << (vec4<u32>(0u, 61006u, ~40851u, 3425u) % vec4<u32>(32u))), global0.a.c);
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -190f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1334f * global0.a.c) + _wgslsmith_f_op_f32(-global0.a.c))), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec4_f32(func_3(global0.a)).wz, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.c, 346f))))))) * vec2<f32>(_wgslsmith_f_op_vec4_f32(func_3(Struct_1(false, vec2<bool>(false, arg_0), global0.a.c))).x, _wgslsmith_div_f32(-1213f, _wgslsmith_f_op_f32(-515f + 1000f))));
    var_0 = vec2<f32>(791f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global0.a.c) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0.x)) - 1000f)));
    global0 = func_2(u_input.a, min(~(-vec4<i32>(u_input.a, u_input.a, 49143i, 15555i) | ~vec4<i32>(26929i, u_input.a, 2147483647i, 2147483647i)), min(-min(vec4<i32>(2147483647i, u_input.a, u_input.a, u_input.a), vec4<i32>(-54480i, u_input.a, -2147483647i, u_input.a)), ~vec4<i32>(u_input.a, -1i, u_input.a, -20673i) ^ ~vec4<i32>(u_input.a, -13283i, 1i, u_input.a))), var_0.x);
    var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1131f, global0.a.c))) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(1010f, 259f), vec2<f32>(var_0.x, global0.a.c))))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(2621f, _wgslsmith_f_op_f32(floor(1000f))))));
    return global0.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_2(func_1(select(true, true, true)));
    var var_0 = Struct_4(func_2(1i, firstLeadingBit(~vec4<i32>(u_input.a, u_input.a, u_input.a, -288i)) ^ vec4<i32>(u_input.a, _wgslsmith_add_i32(u_input.a, u_input.a), 2147483647i, -u_input.a), global0.a.c).a, _wgslsmith_mod_i32(-4429i, firstLeadingBit(-(~34161i))), ~_wgslsmith_dot_vec4_u32(abs(countOneBits(vec4<u32>(u_input.b, 6585u, 117656u, 1u))), ~(~vec4<u32>(123297u, 25649u, 49748u, u_input.b))), ~(abs(u_input.b) ^ ~54220u) >> (129343u % 32u), global0.a);
    var_0 = Struct_4(func_2(var_0.b, _wgslsmith_clamp_vec4_i32(~(-vec4<i32>(var_0.b, u_input.a, 0i, var_0.b)), vec4<i32>(abs(u_input.a), var_0.b, ~(-27282i), _wgslsmith_add_i32(var_0.b, -16278i)), ~abs(vec4<i32>(var_0.b, u_input.a, 0i, 0i))), _wgslsmith_f_op_f32(var_0.e.c + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(global0.a.c + var_0.a.c), 875f)))).a, var_0.b, _wgslsmith_mod_u32(u_input.b, abs(1u)), var_0.c, var_0.e);
    global0 = func_2(select(firstLeadingBit(1i), 23331i, false), max(reverseBits(vec4<i32>(0i, var_0.b, u_input.a, u_input.a) << (vec4<u32>(35960u, 22206u, var_0.c, 33222u) % vec4<u32>(32u))), vec4<i32>(u_input.a, 1i, u_input.a, var_0.b ^ u_input.a)) ^ select(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(var_0.b, -2147483647i, -3336i, u_input.a)), vec4<i32>(-2147483647i, -2147483647i, -43486i, 25578i) | vec4<i32>(u_input.a, u_input.a, -1i, var_0.b), firstLeadingBit(vec4<i32>(u_input.a, 1i, -19447i, var_0.b))), vec4<i32>(9253i, -35970i, 2147483647i, ~u_input.a), vec4<bool>(true, true, global0.a.a, false)), _wgslsmith_f_op_f32(min(-2422f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.e.c)))))));
    let var_1 = _wgslsmith_sub_i32(max(1i, ~(1i & ~u_input.a)), 7273i);
    let var_2 = u_input.a;
    global0 = Struct_2(func_2(firstTrailingBit(34383i), vec4<i32>(-(-1i | var_0.b), u_input.a, ~u_input.a, 1i), 420f).a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(1814f, 822f), 6319u);
}

