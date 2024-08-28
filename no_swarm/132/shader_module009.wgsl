struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: vec3<u32>,
    d: f32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
}

struct Struct_4 {
    a: f32,
    b: vec2<i32>,
    c: Struct_3,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = i32(-2147483648);

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec4<u32>, arg_1: i32) -> vec3<bool> {
    global0 = 1i;
    let var_0 = Struct_1(true, _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-729f, -485f) + 692f)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-675f, 890f))), _wgslsmith_div_vec2_f32(vec2<f32>(-651f, 979f), vec2<f32>(1000f, -615f))))), false)), arg_0.xwz, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-401f + -507f) + _wgslsmith_f_op_f32(f32(-1f) * -155f)))), _wgslsmith_f_op_f32(max(-440f, 167f)))), ~min(vec4<i32>(0i, ~arg_1, -1i, arg_1 | arg_1), select(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 45494i, arg_1, 27063i), vec4<i32>(arg_1, -2147483647i, arg_1, -1i)), reverseBits(vec4<i32>(1i, -1i, 0i, -11696i)), select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false), false))));
    return vec3<bool>(var_0.b.x <= 2813f, all(!select(select(vec3<bool>(false, var_0.a, false), vec3<bool>(true, false, true), var_0.a), select(vec3<bool>(true, true, true), vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(false, var_0.a, true)), false)), var_0.a);
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: Struct_2) -> bool {
    global0 = _wgslsmith_dot_vec4_i32(arg_2.a.e, -(vec4<i32>(-1i) * -vec4<i32>(arg_0.e.x, 0i, arg_2.a.e.x, arg_0.e.x)));
    let var_0 = !select(select(select(!vec3<bool>(arg_2.a.a, arg_2.a.a, arg_2.a.a), select(vec3<bool>(false, arg_2.a.a, true), vec3<bool>(arg_2.a.a, false, false), arg_2.a.a), !vec3<bool>(arg_2.a.a, true, false)), vec3<bool>(true, arg_2.a.a, false), !func_3(vec4<u32>(1u, arg_1, arg_2.a.c.x, arg_1), arg_2.a.e.x)), vec3<bool>(arg_0.a, arg_0.a, arg_0.a), func_3(vec4<u32>(_wgslsmith_sub_u32(arg_2.a.c.x, arg_0.c.x), 4593u, max(35335u, arg_2.a.c.x), ~0u), i32(-1i) * -41518i));
    var var_1 = select(vec4<bool>(arg_2.a.a, any(vec2<bool>(select(var_0.x, true, arg_2.a.a), arg_2.a.a)), _wgslsmith_add_u32(u_input.b, min(4294967295u, u_input.c.x)) >= 1u, arg_2.a.a | any(select(vec4<bool>(false, true, arg_2.a.a, var_0.x), vec4<bool>(false, arg_0.a, true, true), vec4<bool>(arg_0.a, var_0.x, arg_2.a.a, arg_2.a.a)))), !(!vec4<bool>(func_3(vec4<u32>(81482u, u_input.c.x, 105428u, arg_2.a.c.x), -2147483647i).x, true, arg_0.d < -1729f, var_0.x)), vec4<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a.b.x - arg_0.d)) < arg_0.b.x, !any(func_3(vec4<u32>(4294967295u, u_input.a, arg_0.c.x, 67568u), -1i)), false, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.c.x, u_input.b), firstLeadingBit(arg_2.a.c.zx)) < 0u));
    global0 = arg_2.a.e.x;
    global0 = firstTrailingBit(_wgslsmith_div_i32(~arg_2.a.e.x, 1i));
    return var_0.x;
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> vec3<u32> {
    global0 = _wgslsmith_dot_vec4_i32(abs(vec4<i32>(~arg_1.a.e.x, 1i, ~arg_1.a.e.x, _wgslsmith_mult_i32(39814i, arg_1.a.e.x)) | abs(_wgslsmith_mod_vec4_i32(arg_1.a.e, arg_1.a.e))), vec4<i32>(-1i) * -arg_1.a.e);
    var var_0 = Struct_2(arg_1.a);
    var_0 = Struct_2(Struct_1(!(!(arg_1.a.d < -1084f)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(arg_1.a.d, arg_1.a.b.x))), vec2<f32>(_wgslsmith_f_op_f32(-265f + var_0.a.b.x), _wgslsmith_f_op_f32(max(-565f, -1086f))), !select(vec2<bool>(false, var_0.a.a), vec2<bool>(arg_0, true), var_0.a.a))), vec3<u32>(u_input.b, 61337u, abs(~var_0.a.c.x)), arg_1.a.b.x, reverseBits(max(_wgslsmith_clamp_vec4_i32(vec4<i32>(arg_1.a.e.x, arg_1.a.e.x, arg_1.a.e.x, 2147483647i), vec4<i32>(-18929i, -2147483647i, var_0.a.e.x, 20904i), arg_1.a.e), var_0.a.e << (vec4<u32>(1u, 4294967295u, u_input.a, u_input.a) % vec4<u32>(32u))))));
    return var_0.a.c;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> Struct_1 {
    return arg_1;
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_3(func_5(func_4(func_2(Struct_1(false, vec2<f32>(1335f, 1776f), vec3<u32>(1u, u_input.b, u_input.a), -1203f, vec4<i32>(-2147483647i, 2147483647i, 2147483647i, 28535i)), 4294967295u, Struct_2(Struct_1(false, vec2<f32>(1663f, 421f), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x), -438f, vec4<i32>(-2147483647i, -12936i, 2147483647i, -1i)))), Struct_3(Struct_1(false, vec2<f32>(-818f, 1000f), u_input.c, 1128f, vec4<i32>(1i, 25010i, -1i, -22422i)), ~u_input.b)), Struct_1(true, vec2<f32>(-839f, _wgslsmith_f_op_f32(select(286f, -196f, false))), max(~u_input.c, ~vec3<u32>(u_input.b, u_input.b, 1u)), _wgslsmith_f_op_f32(-359f * 118f), vec4<i32>(_wgslsmith_mult_i32(-66157i, 0i), -1i, 1i, abs(2147483647i))), _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, 30372u, u_input.a & u_input.c.x, 1u), ~max(vec4<u32>(0u, 0u, 4294967295u, u_input.a), vec4<u32>(89024u, 1u, 18893u, 4294967295u))), Struct_1(true, _wgslsmith_f_op_vec2_f32(select(_wgslsmith_div_vec2_f32(vec2<f32>(-1223f, 885f), vec2<f32>(142f, 1249f)), vec2<f32>(-571f, 2202f), vec2<bool>(false, false))), select(~vec3<u32>(u_input.a, u_input.a, u_input.b), vec3<u32>(1u, 46195u, 937u) | u_input.c, any(vec3<bool>(true, false, false))), -317f, vec4<i32>(-32534i, 1i, _wgslsmith_dot_vec3_i32(vec3<i32>(22821i, 2147483647i, 14534i), vec3<i32>(-41774i, -2147483647i, 1i)), -1i))), countOneBits(_wgslsmith_clamp_u32(1u, 0u, 4294967295u)) & u_input.a);
    var var_1 = 179f;
    var var_2 = min(vec3<i32>(_wgslsmith_mult_i32(abs(var_0.a.e.x), var_0.a.e.x) ^ _wgslsmith_mult_i32(-2147483647i, ~var_0.a.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.e.x << (var_0.b % 32u), -2147483647i, -var_0.a.e.x), var_0.a.e.yxx), var_0.a.e.x), func_5(~firstTrailingBit(~var_0.a.c), var_0.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(49173u, u_input.a, u_input.a, 39567u), _wgslsmith_add_vec4_u32(vec4<u32>(var_0.b, u_input.c.x, 0u, var_0.a.c.x), vec4<u32>(var_0.a.c.x, 14481u, u_input.a, 26871u))) & var_0.b, var_0.a).e.zzx);
    global0 = 0i;
    global0 = -2147483647i;
    return Struct_1(!(!(!var_0.a.a & var_0.a.a)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(step(var_0.a.b, var_0.a.b)))), ~(_wgslsmith_sub_vec3_u32(u_input.c ^ var_0.a.c, u_input.c) >> (_wgslsmith_mult_vec3_u32(var_0.a.c, vec3<u32>(0u, u_input.c.x, 1u)) % vec3<u32>(32u))), 733f, _wgslsmith_div_vec4_i32(-var_0.a.e, _wgslsmith_mult_vec4_i32(var_0.a.e, -abs(var_0.a.e))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = countOneBits((var_0.c.x << (_wgslsmith_sub_u32(17187u, u_input.c.x) % 32u)) | u_input.c.x);
    let var_2 = reverseBits(vec2<i32>(~(-2147483647i), _wgslsmith_div_i32(var_0.e.x ^ var_0.e.x, ~var_0.e.x))) << (func_4(all(select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, true), false)) || func_2(Struct_1(false, var_0.b, var_0.c, var_0.d, var_0.e), _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 14300u, var_1, 1u), vec4<u32>(2683u, 68861u, var_0.c.x, 0u)), Struct_2(Struct_1(true, vec2<f32>(var_0.d, var_0.d), vec3<u32>(1u, 74469u, 57765u), var_0.d, vec4<i32>(0i, 1i, var_0.e.x, -20076i)))), Struct_3(func_1(), ~var_1)).zz % vec2<u32>(32u));
    global0 = var_2.x;
    var var_3 = -1004f;
    let var_4 = _wgslsmith_mult_vec2_u32(~u_input.c.yz, ~_wgslsmith_mult_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(0u, 69336u), vec2<u32>(12638u, 2383u)) >> (var_0.c.xx % vec2<u32>(32u)), ~var_0.c.xy));
    let var_5 = _wgslsmith_f_op_f32(var_0.b.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.b.x)) * _wgslsmith_f_op_f32(-var_0.d))) >= var_0.d;
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x, var_0.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x)));
}

