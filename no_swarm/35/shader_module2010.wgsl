struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
    c: bool,
    d: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> vec2<bool> {
    global0 = ~_wgslsmith_dot_vec4_i32(max(_wgslsmith_div_vec4_i32(vec4<i32>(-17949i, u_input.b, arg_0, 0i), vec4<i32>(u_input.b, 0i, 2147483647i, -1i)), -_wgslsmith_div_vec4_i32(vec4<i32>(1i, -1i, 19062i, arg_0), vec4<i32>(-6309i, 4917i, -1i, arg_0))), countOneBits(firstTrailingBit(-vec4<i32>(u_input.b, u_input.b, u_input.b, arg_0))));
    return !select(!vec2<bool>(select(false, false, false), u_input.a < u_input.a), !select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, true), true), vec2<bool>(true, true)), vec2<bool>(true, all(vec4<bool>(true, false, false, true)) | true));
}

fn func_2(arg_0: Struct_2, arg_1: vec4<bool>) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-166f, -2005f, 922f, 711f)))))) - vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-539f * 843f) - _wgslsmith_f_op_f32(f32(-1f) * -433f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -333f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-1231f + 384f))), -416f)));
    let var_1 = vec2<i32>(u_input.b, countOneBits(~(-18733i)));
    let var_2 = 33226i ^ _wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(var_1.x, 1i, u_input.b), vec3<i32>(0i, u_input.b, var_1.x), vec3<i32>(26425i, 4838i, u_input.b)) ^ (vec3<i32>(var_1.x, -2147483647i, -3536i) << (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u))), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, u_input.b, -2147483647i, 0i), vec4<i32>(-1i, 30655i, u_input.b, 1i)), ~(-47745i), var_1.x ^ -2147483647i)), 2147483647i);
    var var_3 = !select(func_3(0i), arg_1.zy, arg_1.x);
    var var_4 = Struct_3(Struct_2(var_3.x), true, true, Struct_2(true));
    return Struct_2(arg_0.a);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3) -> Struct_3 {
    let var_0 = abs(u_input.b);
    var var_1 = 1u;
    let var_2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(454f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(473f * 1652f), _wgslsmith_f_op_f32(max(-848f, 1416f)))) + -1574f)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-1000f, 902f)) - _wgslsmith_f_op_f32(ceil(-817f))), 1f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(141f)) - 949f))));
    var var_3 = var_2.x;
    var var_4 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(var_2.x)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_2.x, var_2.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1502f) + -825f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1415f - -500f) + 227f))))));
    return Struct_3(Struct_2(true), true || arg_1.d.a, arg_0.a.a | true, func_2(arg_1.d, !(!vec4<bool>(arg_1.b, arg_1.a.a, arg_0.d.a, true))));
}

fn func_5(arg_0: Struct_3, arg_1: bool, arg_2: Struct_3, arg_3: vec3<bool>) -> Struct_2 {
    let var_0 = ~abs(_wgslsmith_mult_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(u_input.a, 0u, u_input.a)) << ((vec3<u32>(0u, 4294967295u, 0u) << (vec3<u32>(17633u, u_input.a, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) | vec3<u32>(u_input.a, ~(~98031u), (1u & u_input.a) | 4294967295u);
    let var_1 = ~(abs(u_input.a) ^ (_wgslsmith_dot_vec2_u32(var_0.zy, _wgslsmith_sub_vec2_u32(var_0.xz, vec2<u32>(u_input.a, u_input.a))) & 16345u));
    global0 = u_input.b;
    let var_2 = var_1;
    let var_3 = u_input.a;
    return arg_2.d;
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: u32) -> i32 {
    global0 = ~_wgslsmith_dot_vec4_i32(vec4<i32>(max(0i, u_input.b), ~0i, _wgslsmith_add_i32(1i, u_input.b), select(u_input.b, -2147483647i, arg_0.a)), vec4<i32>(_wgslsmith_div_i32(7581i, u_input.b), ~u_input.b, 0i, u_input.b)) | u_input.b;
    let var_0 = !select(!select(vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), select(vec4<bool>(arg_0.a, arg_0.a, true, false), vec4<bool>(arg_0.a, arg_0.a, arg_0.a, arg_0.a), vec4<bool>(arg_0.a, arg_0.a, true, false)), arg_0.a | arg_0.a), vec4<bool>(true, true, true, true), !select(select(vec4<bool>(false, arg_0.a, false, false), vec4<bool>(false, false, arg_0.a, true), vec4<bool>(arg_0.a, arg_0.a, true, true)), !vec4<bool>(true, arg_0.a, arg_0.a, false), vec4<bool>(arg_0.a, true, false, arg_0.a)));
    global0 = ~(_wgslsmith_div_i32(u_input.b, -_wgslsmith_mod_i32(u_input.b, u_input.b)) << ((~(~arg_1) ^ _wgslsmith_mod_u32(~0u, ~arg_1)) % 32u));
    let var_1 = Struct_3(arg_0, true, true & all(select(!vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), select(var_0.xyx, vec3<bool>(var_0.x, false, var_0.x), var_0.x))), func_5(func_4(Struct_3(func_2(Struct_2(var_0.x), var_0), false, !var_0.x, arg_0), Struct_3(func_2(Struct_2(true), var_0), false | arg_0.a, true, Struct_2(true))), arg_0.a, Struct_3(arg_0, true, false, arg_0), var_0.wyw));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-840f, arg_2.x, arg_2.x) + arg_2.wyy)) - arg_2.zwz), vec3<f32>(arg_2.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(821f - arg_2.x) * _wgslsmith_f_op_f32(select(1845f, arg_2.x, arg_0.a))), arg_2.x))));
    return u_input.b;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = i32(-1i) * -1i;
    global0 = _wgslsmith_dot_vec3_i32(abs(_wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(~vec3<i32>(33972i, -2147483647i, u_input.b), firstTrailingBit(vec3<i32>(19289i, 38362i, u_input.b)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.b, -2147483647i), vec3<i32>(u_input.b, u_input.b, u_input.b))), -vec3<i32>(-2147483647i, 0i, 32319i))), _wgslsmith_add_vec3_i32(vec3<i32>(i32(-1i) * -2147483647i, func_1(Struct_2(true), u_input.a, vec4<f32>(1070f, 368f, -724f, -742f), 1u), u_input.b), vec3<i32>(u_input.b, u_input.b, u_input.b) | vec3<i32>(-8242i, u_input.b, -29881i)) | -firstTrailingBit(vec3<i32>(u_input.b, 61034i, 47031i)));
    global0 = u_input.b;
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1143f)), 823f) > _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(-859f))));
    var var_1 = _wgslsmith_div_vec3_i32(~_wgslsmith_mod_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(59919i, u_input.b, u_input.b) & vec3<i32>(u_input.b, 2147483647i, -1i), vec3<i32>(u_input.b, u_input.b, u_input.b)), -(vec3<i32>(-2147483647i, -7310i, u_input.b) >> (vec3<u32>(u_input.a, u_input.a, u_input.a) % vec3<u32>(32u)))), ~(~(vec3<i32>(0i, u_input.b, -2147483647i) >> (vec3<u32>(53223u, 44644u, u_input.a) % vec3<u32>(32u))) >> (select(vec3<u32>(1u, 25963u, u_input.a), vec3<u32>(u_input.a, 1957u, 20279u), select(vec3<bool>(var_0, var_0, var_0), vec3<bool>(true, false, var_0), vec3<bool>(false, false, true))) % vec3<u32>(32u))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -829f))) * 424f);
    var var_3 = func_4(func_4(func_4(func_4(func_4(Struct_3(Struct_2(true), var_0, false, Struct_2(false)), Struct_3(Struct_2(var_0), true, var_0, Struct_2(var_0))), func_4(Struct_3(Struct_2(var_0), var_0, true, Struct_2(true)), Struct_3(Struct_2(false), false, false, Struct_2(var_0)))), Struct_3(func_4(Struct_3(Struct_2(var_0), true, var_0, Struct_2(var_0)), Struct_3(Struct_2(true), var_0, var_0, Struct_2(true))).a, false, true, func_4(Struct_3(Struct_2(false), true, var_0, Struct_2(var_0)), Struct_3(Struct_2(true), true, var_0, Struct_2(var_0))).d)), func_4(func_4(Struct_3(Struct_2(var_0), false, true, Struct_2(var_0)), Struct_3(Struct_2(true), var_0, var_0, Struct_2(false))), func_4(Struct_3(Struct_2(false), false, true, Struct_2(var_0)), Struct_3(Struct_2(var_0), var_0, var_0, Struct_2(var_0))))), Struct_3(Struct_2(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 59879u, 2265u, 14199u), vec4<u32>(u_input.a, 5562u, 35522u, u_input.a)) >= ~u_input.a), all(select(vec4<bool>(var_0, false, true, true), !vec4<bool>(false, true, true, var_0), !vec4<bool>(var_0, false, true, var_0))), !((var_0 | true) && true), func_5(Struct_3(func_4(Struct_3(Struct_2(var_0), false, var_0, Struct_2(var_0)), Struct_3(Struct_2(var_0), var_0, var_0, Struct_2(var_0))).a, true, true, Struct_2(var_0)), true, Struct_3(func_2(Struct_2(var_0), vec4<bool>(false, false, true, false)), var_0, var_0, func_4(Struct_3(Struct_2(var_0), var_0, false, Struct_2(false)), Struct_3(Struct_2(var_0), var_0, true, Struct_2(var_0))).d), select(vec3<bool>(var_0, false, false), vec3<bool>(var_0, true, false), any(vec2<bool>(false, true))))));
    var var_4 = ~var_1.yz;
    var_3 = Struct_3(var_3.d, true, !all(!select(vec4<bool>(var_0, var_0, true, true), vec4<bool>(false, var_3.c, var_3.d.a, false), var_3.d.a)), var_3.a);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(274f + 788f));
}

