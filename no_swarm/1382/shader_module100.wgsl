struct Struct_1 {
    a: bool,
    b: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_1, arg_1: u32) -> f32 {
    let var_0 = !(96793u > ~(~arg_0.b.x));
    var var_1 = u_input.b;
    let var_2 = -1i;
    global0 = false;
    let var_3 = _wgslsmith_f_op_f32(trunc(-1763f));
    return 1000f;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_1 {
    global0 = !select(!arg_3.a, false, !arg_3.a);
    var var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -332f))) + _wgslsmith_f_op_f32(f32(-1f) * -679f)), _wgslsmith_f_op_f32(func_3(arg_3, ~arg_2.b.x)) <= -200f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-243f)), _wgslsmith_f_op_f32(sign(-1000f)))))), true));
    var var_1 = ~reverseBits(_wgslsmith_div_vec4_u32(abs(arg_3.b), _wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.b.x, arg_3.b.x, 43778u, 2434u), vec4<u32>(18304u, u_input.c.x, arg_3.b.x, arg_2.b.x))) >> (select(vec4<u32>(1u, 31120u, arg_3.b.x, 4294967295u), ~arg_3.b, all(vec2<bool>(arg_2.a, arg_2.a))) % vec4<u32>(32u)));
    var_1 = vec4<u32>(~(~arg_0.b.x), firstLeadingBit(u_input.c.x) ^ countOneBits(_wgslsmith_add_u32(_wgslsmith_mult_u32(arg_3.b.x, 77840u), _wgslsmith_dot_vec2_u32(vec2<u32>(60406u, 14565u), arg_0.b.yy))), u_input.c.x, (arg_3.b.x << (1u % 32u)) | ~(~71646u));
    var_1 = abs(firstLeadingBit(abs(_wgslsmith_mult_vec4_u32(select(arg_2.b, vec4<u32>(u_input.c.x, arg_1.x, 1u, 1u), false), _wgslsmith_sub_vec4_u32(vec4<u32>(var_1.x, arg_1.x, 77993u, 36567u), vec4<u32>(15618u, 0u, arg_0.b.x, 58785u))))));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> vec3<bool> {
    var var_0 = arg_1;
    let var_1 = select(vec3<bool>(true || !(!arg_1.a), false, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(243f)) + _wgslsmith_f_op_f32(325f + -878f)) <= 1853f), vec3<bool>(all(vec3<bool>(true, arg_1.a, true)), var_0.a, func_2(arg_1, vec3<u32>(_wgslsmith_div_u32(4294967295u, u_input.c.x), var_0.b.x, 1u), Struct_1(var_0.b.x != 36581u, arg_1.b), arg_1).a), true);
    var var_2 = Struct_1(false, max(arg_1.b, ~vec4<u32>(1u, _wgslsmith_clamp_u32(15831u, 83288u, 5555u), _wgslsmith_mult_u32(6766u, u_input.c.x), ~u_input.c.x)));
    var var_3 = ~u_input.c.x;
    let var_4 = abs(_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-min(vec3<i32>(0i, 17584i, arg_0), vec3<i32>(31325i, u_input.b, -1i)), max(vec3<i32>(u_input.b, u_input.a, -22288i), ~vec3<i32>(0i, arg_0, -1i))), ~vec3<i32>(arg_0, 16200i, 1i) & vec3<i32>(abs(-2147483647i), arg_0, u_input.a)));
    return var_1;
}

fn func_5(arg_0: vec3<bool>, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    global0 = arg_1.a;
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-157f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1997f * -1000f) - -237f)), 521f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-340f)) * 1f))));
    var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-463f * _wgslsmith_f_op_f32(min(327f, -523f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-728f * _wgslsmith_f_op_f32(ceil(var_0.x)))), var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(sign(var_0.x)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(var_0.x)))), -1094f))));
    var var_1 = func_2(arg_2, ~_wgslsmith_clamp_vec3_u32(arg_2.b.wzz, ~countOneBits(u_input.c), ~vec3<u32>(0u, 26482u, 26067u)), Struct_1(!all(select(arg_0, vec3<bool>(arg_1.a, false, arg_0.x), arg_0)), vec4<u32>(12399u, _wgslsmith_clamp_u32(1u, arg_2.b.x, 3209u), ~arg_2.b.x, 1u) & ~(~arg_1.b)), func_2(arg_2, ~firstTrailingBit(vec3<u32>(74134u, 0u, u_input.c.x)) << (vec3<u32>(reverseBits(32050u), u_input.c.x, u_input.c.x >> (53895u % 32u)) % vec3<u32>(32u)), arg_2, func_2(func_2(arg_2, _wgslsmith_mult_vec3_u32(vec3<u32>(1u, arg_2.b.x, arg_2.b.x), u_input.c), arg_1, func_2(Struct_1(arg_2.a, arg_1.b), vec3<u32>(4294967295u, 0u, 1u), arg_2, arg_1)), ~vec3<u32>(arg_1.b.x, 0u, 0u), Struct_1(true, ~arg_1.b), Struct_1(arg_2.a, vec4<u32>(40640u, 4294967295u, arg_2.b.x, 0u)))));
    let var_2 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -347f) + var_0.yxz)));
    return Struct_1(arg_1.a, arg_2.b);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: f32) -> Struct_1 {
    var var_0 = func_5(func_4(-2339i, func_2(Struct_1(true, arg_0.b), arg_0.b.wyy, arg_0, Struct_1(arg_0.a, arg_0.b))), func_2(arg_0, _wgslsmith_div_vec3_u32(~abs(u_input.c), ~_wgslsmith_mod_vec3_u32(vec3<u32>(arg_0.b.x, 62986u, 4294967295u), vec3<u32>(1u, u_input.c.x, 17103u))), Struct_1(true, select(vec4<u32>(arg_0.b.x, 580u, 1u, 1u) & vec4<u32>(u_input.c.x, 17447u, 5287u, 4294967295u), vec4<u32>(0u, 1u, 19558u, u_input.c.x) | vec4<u32>(u_input.c.x, 4294967295u, arg_0.b.x, u_input.c.x), !vec4<bool>(true, arg_0.a, true, arg_0.a))), func_2(func_2(arg_0, u_input.c, func_2(arg_0, arg_0.b.yxx, arg_0, Struct_1(true, vec4<u32>(arg_0.b.x, arg_0.b.x, 9852u, u_input.c.x))), Struct_1(arg_0.a, arg_0.b)), select(firstLeadingBit(arg_0.b.zxz), vec3<u32>(arg_0.b.x, arg_0.b.x, 123924u), select(vec3<bool>(arg_0.a, true, arg_0.a), vec3<bool>(false, arg_0.a, true), arg_0.a)), func_2(Struct_1(true, arg_0.b), arg_0.b.xwy, func_2(arg_0, arg_0.b.xwz, arg_0, Struct_1(false, vec4<u32>(8683u, arg_0.b.x, u_input.c.x, arg_0.b.x))), arg_0), func_2(arg_0, ~vec3<u32>(75668u, arg_0.b.x, arg_0.b.x), arg_0, func_2(Struct_1(arg_0.a, arg_0.b), vec3<u32>(0u, u_input.c.x, 1u), arg_0, Struct_1(arg_0.a, vec4<u32>(u_input.c.x, arg_0.b.x, 84839u, 63233u)))))), Struct_1(select(arg_0.a, true, all(!vec2<bool>(arg_0.a, arg_0.a))), vec4<u32>(0u, 1u, _wgslsmith_sub_u32(~65609u, arg_0.b.x), u_input.c.x >> (0u % 32u))));
    var var_1 = -u_input.a;
    let var_2 = max(u_input.c.x, _wgslsmith_mod_u32(1u, 3700u));
    let var_3 = ~firstLeadingBit(arg_0.b);
    let var_4 = func_5(!vec3<bool>(!(var_0.a | var_0.a), var_0.a, var_0.a), arg_0, func_5(select(!(!vec3<bool>(arg_0.a, var_0.a, var_0.a)), select(select(vec3<bool>(var_0.a, false, false), vec3<bool>(var_0.a, var_0.a, var_0.a), var_0.a), vec3<bool>(false, false, false), all(vec2<bool>(true, true))), vec3<bool>(var_0.a, arg_0.a, true)), arg_0, func_2(func_5(!vec3<bool>(arg_0.a, var_0.a, arg_0.a), func_5(vec3<bool>(true, arg_0.a, var_0.a), arg_0, arg_0), arg_0), arg_0.b.xzx, func_2(Struct_1(false, vec4<u32>(64220u, 0u, var_2, 402u)), _wgslsmith_mult_vec3_u32(u_input.c, var_3.ywz), func_5(vec3<bool>(var_0.a, arg_0.a, true), arg_0, arg_0), Struct_1(false, vec4<u32>(53109u, var_3.x, arg_0.b.x, 52056u))), arg_0)));
    return var_4;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(1112f, -736f)))) <= -1858f, ~_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, u_input.c.x, 21389u), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.c.x, 53027u, 0u, u_input.c.x), vec4<u32>(u_input.c.x, 51634u, u_input.c.x, u_input.c.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-1316f, 1000f)))))), -794f);
    let var_1 = func_5(vec3<bool>(true, _wgslsmith_add_u32(func_2(Struct_1(var_0.a, vec4<u32>(4294967295u, var_0.b.x, 4294967295u, 1u)), var_0.b.wxx, Struct_1(true, var_0.b), Struct_1(var_0.a, var_0.b)).b.x, ~u_input.c.x) <= u_input.c.x, false), Struct_1(true, firstTrailingBit(vec4<u32>(1u, u_input.c.x, var_0.b.x, _wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(37303u, var_0.b.x, u_input.c.x))))), Struct_1(true, ~_wgslsmith_mult_vec4_u32(vec4<u32>(60507u, 21116u, 43869u, 4294967295u), ~var_0.b)));
    let var_2 = _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(526f * _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1409f)), -518f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -206f))));
    var var_3 = var_2;
    let var_4 = func_1(Struct_1(~(-1i) <= reverseBits(~u_input.b), ~var_1.b & vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.c.xx, vec2<u32>(0u, 0u)), 1u, 31337u, ~20635u)), _wgslsmith_f_op_f32(min(-1168f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(ceil(var_2)), _wgslsmith_f_op_f32(-var_2), !var_0.a)) * _wgslsmith_div_f32(-541f, -1748f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))).a;
    var var_5 = func_2(Struct_1(var_0.a, ~vec4<u32>(_wgslsmith_div_u32(var_1.b.x, var_1.b.x), reverseBits(0u), 0u, var_1.b.x | 35916u)), max(select(var_0.b.xzy, vec3<u32>(~44990u, var_0.b.x | var_0.b.x, var_0.b.x), select(select(vec3<bool>(var_0.a, var_1.a, false), vec3<bool>(var_1.a, var_0.a, true), false), vec3<bool>(true, false, var_1.a), vec3<bool>(var_4, var_1.a, var_4))), ~(func_5(vec3<bool>(true, var_0.a, true), var_1, Struct_1(false, var_0.b)).b.xxw >> (_wgslsmith_mod_vec3_u32(vec3<u32>(var_1.b.x, var_0.b.x, 6814u), var_1.b.xxy) % vec3<u32>(32u)))), Struct_1(true, vec4<u32>(_wgslsmith_dot_vec4_u32(var_1.b, vec4<u32>(var_1.b.x, var_1.b.x, var_0.b.x, u_input.c.x) & var_1.b), var_1.b.x, var_0.b.x, 4294967295u)), var_1).a;
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(abs(var_2)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_2), var_2)), _wgslsmith_f_op_f32(step(2099f, _wgslsmith_f_op_f32(-1f))), 975f), _wgslsmith_mod_u32(u_input.c.x, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(63365u, 34976u)), ~(vec2<u32>(u_input.c.x, 20085u) | vec2<u32>(var_0.b.x, var_0.b.x)))), ~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(43301u, 1u, 1u) & vec3<u32>(1u, u_input.c.x, var_0.b.x), vec3<u32>(u_input.c.x, 0u, 4294967295u) | vec3<u32>(var_1.b.x, var_1.b.x, var_0.b.x)), firstTrailingBit(~var_1.b.xwy)));
}

