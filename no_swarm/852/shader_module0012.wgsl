struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec3<bool>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32;

var<private> global1: array<Struct_3, 26>;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec4<f32>, arg_2: f32) -> i32 {
    var var_0 = !(abs(min(firstLeadingBit(44053u), 1u)) <= u_input.d.x);
    var var_1 = global1[_wgslsmith_index_u32(23523u, 26u)];
    global1 = array<Struct_3, 26>();
    let var_2 = u_input.c;
    global1 = array<Struct_3, 26>();
    return -2147483647i;
}

fn func_2() -> Struct_3 {
    global0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(171f - 1000f)))), _wgslsmith_f_op_f32(-1f)));
    let var_0 = u_input.d.x;
    var var_1 = vec3<i32>(-min(min(_wgslsmith_sub_i32(36201i, 2147483647i), countOneBits(-2147483647i)), -func_3(vec2<bool>(false, false), vec4<f32>(-459f, -1098f, 706f, 275f), -584f)), -22536i, 30348i);
    var var_2 = Struct_1(max(vec2<u32>(_wgslsmith_mult_u32(4294967295u, u_input.c.x) << (~u_input.b.x % 32u), _wgslsmith_dot_vec4_u32(min(vec4<u32>(12243u, u_input.b.x, 1u, 4294967295u), u_input.c), ~u_input.c)), u_input.b), _wgslsmith_add_u32(~_wgslsmith_div_u32(firstLeadingBit(var_0), u_input.b.x), reverseBits(1u) >> (u_input.a % 32u)), var_1.x, select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(false, true, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true))), 179f);
    let var_3 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2.e, 2140f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1332f, 137f))) * vec2<f32>(var_2.e, var_2.e)))));
    return Struct_3(Struct_1(~(~countOneBits(u_input.b)), (u_input.a ^ 0u) ^ var_2.b, ~(-(~var_1.x)), vec3<bool>(var_2.d.x, (75628u >> (1u % 32u)) > var_2.a.x, any(var_2.d.yz)), _wgslsmith_f_op_f32(abs(705f))), Struct_1(var_2.a, _wgslsmith_add_u32(var_0, abs(var_0)), max(func_3(!var_2.d.xz, vec4<f32>(var_3.x, var_3.x, -1422f, var_3.x), _wgslsmith_div_f32(427f, 1000f)), var_2.c), vec3<bool>(all(vec4<bool>(false, var_2.d.x, var_2.d.x, false)), var_2.d.x, true), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-602f)))))), _wgslsmith_sub_i32(var_2.c, -2147483647i), any(!select(!var_2.d, select(vec3<bool>(var_2.d.x, true, false), var_2.d, var_2.d), select(var_2.d, vec3<bool>(var_2.d.x, false, var_2.d.x), vec3<bool>(true, var_2.d.x, true)))));
}

fn func_4(arg_0: bool, arg_1: Struct_3, arg_2: Struct_3) -> Struct_1 {
    var var_0 = ~_wgslsmith_div_u32(arg_2.b.b << (arg_1.a.b % 32u), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c.x, 0u), ~arg_2.a.b, ~1u)) & u_input.d.x;
    let var_1 = _wgslsmith_f_op_f32(arg_1.a.e + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(min(-821f, func_2().b.e))))));
    let var_2 = arg_2.b.a.x;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1, -1000f, 134f), vec3<f32>(345f, var_1, 487f)) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(967f, var_1, arg_2.a.e), vec3<f32>(263f, 381f, arg_2.a.e)))))), vec3<f32>(_wgslsmith_f_op_f32(trunc(1879f)), _wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.a.e))), arg_2.d)));
    var_0 = 4294967295u;
    return func_2().a;
}

fn func_1(arg_0: vec2<u32>, arg_1: vec4<bool>) -> Struct_2 {
    global0 = -1177f;
    let var_0 = func_4(true, global1[_wgslsmith_index_u32(4294967295u, 26u)], func_2());
    var var_1 = Struct_2(var_0, Struct_1(u_input.b, u_input.a, -var_0.c ^ var_0.c, !arg_1.xxy, _wgslsmith_f_op_f32(min(909f, _wgslsmith_f_op_f32(-var_0.e)))), func_4((_wgslsmith_f_op_f32(-var_0.e) >= _wgslsmith_f_op_f32(-458f + -1069f)) & !var_0.d.x, Struct_3(Struct_1(vec2<u32>(arg_0.x, var_0.a.x) ^ vec2<u32>(var_0.b, u_input.a), ~u_input.c.x, _wgslsmith_add_i32(var_0.c, var_0.c), !vec3<bool>(arg_1.x, var_0.d.x, arg_1.x), 1612f), var_0, -max(var_0.c, var_0.c), true), global1[_wgslsmith_index_u32(49103u, 26u)]).c, Struct_1(vec2<u32>(u_input.a, ~u_input.a), u_input.d.x, -var_0.c, !arg_1.wxy, var_0.e), _wgslsmith_mod_u32(_wgslsmith_clamp_u32(abs(arg_0.x), var_0.b, ~var_0.b), _wgslsmith_sub_u32(~arg_0.x, _wgslsmith_clamp_u32(var_0.a.x, 11075u, arg_0.x))) & _wgslsmith_mod_u32(~(1u << (var_0.a.x % 32u)), arg_0.x >> (_wgslsmith_sub_u32(1u, u_input.b.x) % 32u)));
    let var_2 = var_1.d;
    global0 = var_2.e;
    return Struct_2(func_4(false, func_2(), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~(~var_0.b), ~var_2.b), 26u)]), func_2().b, var_2.c, var_0, ~max(28346u, _wgslsmith_dot_vec3_u32(~vec3<u32>(var_0.a.x, var_2.a.x, 31039u), ~u_input.c.xyz)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    let var_1 = global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(110006u, u_input.b.x), 26u)];
    global0 = -1000f;
    let var_2 = func_1(~_wgslsmith_mult_vec2_u32(var_1.b.a, ~vec2<u32>(u_input.d.x, 4294967295u)), !vec4<bool>(all(var_1.b.d.xx), !(var_1.a.e <= var_1.b.e), true, var_1.a.d.x));
    let var_3 = select(firstTrailingBit(~vec3<i32>(var_2.a.c, -1i, 16744i) << (_wgslsmith_sub_vec3_u32(vec3<u32>(0u, u_input.b.x, u_input.c.x), vec3<u32>(35747u, 4294967295u, 0u)) % vec3<u32>(32u))), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_1.b.c, var_1.a.c, 3607i), vec3<i32>(21681i, var_2.d.c, var_1.a.c)), firstLeadingBit(vec3<i32>(-1i, -44042i, -1i)), ~vec3<i32>(var_2.c, -2147483647i, var_2.b.c)) ^ vec3<i32>(func_3(vec2<bool>(var_2.d.d.x, false), vec4<f32>(340f, 429f, var_1.b.e, var_2.b.e), var_2.a.e), var_2.b.c, max(var_1.b.c, 13425i)), select(vec3<bool>(u_input.d.x >= u_input.d.x, any(var_2.a.d.zx), true == var_1.a.d.x), !select(vec3<bool>(var_1.b.d.x, var_2.a.d.x, false), var_2.d.d, vec3<bool>(true, true, false)), func_1(~u_input.c.xx, !vec4<bool>(false, true, var_1.a.d.x, false)).b.d)) << (vec3<u32>(var_1.a.a.x, ~var_2.d.a.x, ~_wgslsmith_sub_u32(var_1.a.b, 4294967295u)) % vec3<u32>(32u));
    let var_4 = var_2.a.a.x;
    let var_5 = var_1.b.d.x;
    let x = u_input.a;
    s_output = StorageBuffer(~(~vec2<u32>(reverseBits(1u), var_1.a.a.x)), -countOneBits(-27596i), _wgslsmith_add_vec2_i32(vec2<i32>(1i, ~(~(-2147483647i))), -var_3.yz), abs(-54081i));
}

