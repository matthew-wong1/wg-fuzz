struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: vec4<f32>,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
}

struct Struct_3 {
    a: bool,
    b: vec3<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> vec4<bool> {
    let var_0 = _wgslsmith_f_op_f32(ceil(-494f));
    let var_1 = u_input.a.yx;
    var var_2 = Struct_2(Struct_1(u_input.a.x, var_1.x, false, vec4<f32>(_wgslsmith_f_op_f32(var_0 + -1367f), _wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 + -951f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - var_0), _wgslsmith_f_op_f32(-562f + var_0)), !select(select(vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true)), vec3<bool>(false, false, false), true)), var_1.x >> (~max(u_input.a.x, var_1.x) % 32u));
    var_2 = Struct_2(var_2.a, min(var_2.b, _wgslsmith_dot_vec2_u32(u_input.a.xz ^ ~u_input.a.zz, u_input.a.xz)));
    var var_3 = !var_2.a.e;
    return vec4<bool>(any(select(select(select(vec2<bool>(false, var_3.x), vec2<bool>(var_3.x, var_3.x), var_2.a.e.x), select(vec2<bool>(false, var_3.x), var_3.zz, var_2.a.e.xx), true), var_2.a.e.zy, true)), all(vec3<bool>(false, !(var_2.a.c || false), var_2.a.e.x)), select(!var_3.x, true, true) != var_3.x, true);
}

fn func_2(arg_0: vec4<f32>, arg_1: f32, arg_2: Struct_1) -> Struct_3 {
    var var_0 = true & !any(vec2<bool>(arg_2.c | true, true));
    var_0 = all(func_3());
    var var_1 = false;
    let var_2 = Struct_2(Struct_1(4294967295u, ~abs(u_input.a.x), false, vec4<f32>(852f, arg_0.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(arg_2.d.x)), arg_1)), -1542f), select(select(vec3<bool>(true, arg_2.c, arg_2.c), arg_2.e, select(arg_2.e, arg_2.e, arg_2.e)), !(!vec3<bool>(false, arg_2.e.x, true)), arg_2.e)), 645u);
    var_0 = true;
    return Struct_3((arg_2.e.x | !all(arg_2.e.xx)) | !arg_2.c, _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, _wgslsmith_add_i32(~(-26010i), -1i), -40025i), vec3<i32>(abs(2353i), _wgslsmith_sub_i32(1i, 1i), 1i), firstLeadingBit(vec3<i32>(1i, 1i, 1i))));
}

fn func_4(arg_0: Struct_3) -> vec3<bool> {
    var var_0 = Struct_1(20906u, ~select(~21082u, 11611u, !arg_0.a) | 1u, false, _wgslsmith_f_op_vec4_f32(-vec4<f32>(1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(2182f + -767f) + _wgslsmith_div_f32(978f, -1920f)), _wgslsmith_f_op_f32(f32(-1f) * -151f), _wgslsmith_f_op_f32(724f - 869f))), select(select(!(!vec3<bool>(true, arg_0.a, false)), !func_3().wyx, select(select(vec3<bool>(true, arg_0.a, false), vec3<bool>(false, true, false), vec3<bool>(false, arg_0.a, arg_0.a)), !vec3<bool>(arg_0.a, true, arg_0.a), arg_0.a)), vec3<bool>(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(712f, -147f, 1332f, 1146f)), -185f, Struct_1(86943u, 4294967295u, false, vec4<f32>(-152f, 448f, 1177f, -1147f), vec3<bool>(arg_0.a, true, true))).a, true, arg_0.a), vec3<bool>(false, true || arg_0.a, reverseBits(arg_0.b.x) != max(arg_0.b.x, arg_0.b.x))));
    var var_1 = arg_0;
    var_1 = func_2(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.d.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(var_0.d.x, 855f, false)) - _wgslsmith_f_op_f32(round(var_0.d.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-330f + var_0.d.x)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.d.x + 1000f) * _wgslsmith_f_op_f32(select(var_0.d.x, -1019f, arg_0.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -340f), _wgslsmith_f_op_f32(step(var_0.d.x, var_0.d.x))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-112f, var_0.d.x) + 1593f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(296f)), _wgslsmith_f_op_f32(round(-633f)))) - var_0.d.x) - 285f), Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.a.x, 12573u), vec2<u32>(var_0.b, _wgslsmith_div_u32(var_0.b, var_0.a))), u_input.a.x, all(vec2<bool>(!var_1.a, any(var_0.e))), _wgslsmith_f_op_vec4_f32(-var_0.d), vec3<bool>(var_0.e.x, any(!vec4<bool>(var_1.a, var_0.e.x, false, false)), var_1.a)));
    var_1 = Struct_3(var_1.a, _wgslsmith_div_vec3_i32(~(-firstLeadingBit(var_1.b)), _wgslsmith_add_vec3_i32(var_1.b & _wgslsmith_sub_vec3_i32(vec3<i32>(arg_0.b.x, var_1.b.x, arg_0.b.x), var_1.b), countOneBits(vec3<i32>(7489i, arg_0.b.x, var_1.b.x) >> (vec3<u32>(u_input.a.x, 52792u, var_0.a) % vec3<u32>(32u))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(round(var_0.d));
    return !vec3<bool>(all(vec3<bool>(var_0.c, all(vec4<bool>(false, false, var_1.a, false)), arg_0.b.x > -43535i)), true, any(select(vec4<bool>(true, var_0.e.x, var_0.e.x, true), vec4<bool>(false, var_1.a, true, true), false)));
}

fn func_1(arg_0: vec3<u32>) -> Struct_1 {
    var var_0 = Struct_3(true, abs(~vec3<i32>(1i, 1i, 1i) >> (arg_0 % vec3<u32>(32u))));
    var var_1 = Struct_1(~_wgslsmith_mod_u32(_wgslsmith_mod_u32(u_input.a.x, _wgslsmith_clamp_u32(1u, 3814u, 1u)), _wgslsmith_sub_u32(~1u, u_input.a.x >> (1u % 32u))), 6610u, true, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -502f), -344f, _wgslsmith_f_op_f32(round(-214f)), _wgslsmith_f_op_f32(floor(1286f))) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-254f, 597f, 1098f, 127f), vec4<f32>(-407f, -1511f, -441f, -372f))))))), select(select(select(!vec3<bool>(false, var_0.a, var_0.a), !vec3<bool>(false, true, var_0.a), true), select(vec3<bool>(var_0.a, false, true), !vec3<bool>(true, true, var_0.a), var_0.a), func_4(func_2(vec4<f32>(-446f, -783f, 278f, -207f), 310f, Struct_1(1u, 0u, var_0.a, vec4<f32>(214f, -1243f, 201f, -1834f), vec3<bool>(false, false, true))))), vec3<bool>(!(var_0.a != var_0.a), true, false), !var_0.a & var_0.a));
    let var_2 = func_2(vec4<f32>(_wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(404f))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(var_1.d.x, _wgslsmith_f_op_f32(var_1.d.x - 1286f))))), 542f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.d.x), _wgslsmith_div_f32(1099f, var_1.d.x)))))), _wgslsmith_f_op_f32(abs(var_1.d.x)), Struct_1(1u, firstTrailingBit(8461u), true, var_1.d, !(!var_1.e)));
    var var_3 = false;
    var var_4 = Struct_3(true, (vec3<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, 2147483647i), vec2<i32>(var_0.b.x, -1i)), var_2.b.x, 39586i) ^ var_2.b) >> (vec3<u32>(~_wgslsmith_mult_u32(0u, var_1.a), u_input.a.x, 16335u) % vec3<u32>(32u)));
    return Struct_1(abs(arg_0.x), ~41124u, all(vec4<bool>(false, var_4.a, false, true)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(var_1.d.x, -569f)), _wgslsmith_f_op_f32(var_1.d.x + -915f), _wgslsmith_f_op_f32(var_1.d.x + 1844f), var_1.d.x))), vec3<bool>(!(abs(var_1.b) > 6676u), !(false | !var_2.a), all(!var_1.e)));
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: u32) -> vec3<u32> {
    let var_0 = (1i | _wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(~vec2<i32>(2147483647i, -1i), abs(vec2<i32>(-58146i, -81057i))), _wgslsmith_mod_i32(reverseBits(6805i), reverseBits(-22532i)))) <= 75310i;
    var var_1 = min(func_1(max(~_wgslsmith_div_vec3_u32(u_input.a, u_input.a), vec3<u32>(~33178u, arg_3, u_input.a.x))).b, _wgslsmith_dot_vec3_u32(_wgslsmith_div_vec3_u32(min(vec3<u32>(u_input.a.x, 4294967295u, arg_2.x), vec3<u32>(arg_3, 0u, 0u) | vec3<u32>(u_input.a.x, u_input.a.x, arg_0.a)), u_input.a), abs(~firstLeadingBit(vec3<u32>(arg_0.a, u_input.a.x, u_input.a.x)))));
    var_1 = func_1(u_input.a & firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(38885u, arg_2.x, arg_2.x), 1u, firstTrailingBit(arg_0.b)))).b;
    var var_2 = 1u;
    let var_3 = Struct_2(Struct_1(48453u, 0u, true, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-arg_0.d.x), _wgslsmith_f_op_f32(-420f * -449f), arg_0.d.x, _wgslsmith_f_op_f32(min(arg_0.d.x, arg_0.d.x)))), !(!vec3<bool>(arg_0.e.x, arg_1.a.c, true))), u_input.a.x ^ arg_2.x);
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(true, vec3<i32>(1i, 1i, 1i));
    var var_1 = ~(-_wgslsmith_add_vec3_i32(~(-var_0.b), vec3<i32>(-61000i, 41719i, var_0.b.x) | _wgslsmith_mult_vec3_i32(vec3<i32>(-47368i, 23139i, var_0.b.x), vec3<i32>(var_0.b.x, -26234i, var_0.b.x))));
    let var_2 = !vec3<bool>(true, var_0.a || var_0.a, any(vec2<bool>(var_0.a, var_0.a)));
    var var_3 = func_5(func_1(vec3<u32>(_wgslsmith_clamp_u32(39u, ~u_input.a.x, u_input.a.x), abs(u_input.a.x), 4294967295u)), Struct_2(Struct_1(u_input.a.x, 4294967295u, all(var_2.xz), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-368f, 1760f, 1778f, -1000f)))), !select(var_2, vec3<bool>(var_2.x, var_0.a, true), var_2.x)), min(u_input.a.x, 1u << (abs(u_input.a.x) % 32u))), abs(u_input.a.zx), u_input.a.x);
    let var_4 = firstLeadingBit(_wgslsmith_div_vec4_u32(vec4<u32>(var_3.x, ~4294967295u, ~u_input.a.x, u_input.a.x), select(vec4<u32>(u_input.a.x, var_3.x, 27588u, 0u), vec4<u32>(var_3.x, var_3.x, 0u, 28102u), var_2.x) << (~vec4<u32>(var_3.x, 4294967295u, var_3.x, var_3.x) % vec4<u32>(32u))) | max(vec4<u32>(43737u, var_3.x >> (1u % 32u), ~u_input.a.x, var_3.x << (u_input.a.x % 32u)), ~(~vec4<u32>(1u, var_3.x, var_3.x, u_input.a.x))));
    var_0 = func_2(vec4<f32>(1638f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(106f - -287f))), 1f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-512f - _wgslsmith_f_op_f32(min(220f, 1093f)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(677f * func_1(_wgslsmith_mult_vec3_u32(u_input.a, u_input.a)).d.x)), Struct_1(~(~reverseBits(1u)), ~(~var_4.x), true, _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 442f, 1000f, 1693f)))))), func_3().yxx));
    let var_5 = select(vec2<bool>(false, func_1(vec3<u32>(0u, var_3.x, _wgslsmith_mult_u32(0u, var_4.x))).e.x), vec2<bool>(!var_2.x, any(!(!vec4<bool>(var_2.x, var_0.a, var_0.a, true)))), vec2<bool>(true, true));
    var var_6 = !vec2<bool>(_wgslsmith_mult_i32(~var_0.b.x, _wgslsmith_mod_i32(var_1.x, -7589i)) > countOneBits(-43576i), select(var_2.x, 1u <= u_input.a.x, func_2(vec4<f32>(345f, 1238f, 244f, -431f), 1331f, Struct_1(13201u, 0u, var_0.a, vec4<f32>(-116f, -674f, 1158f, -1460f), var_2)).a) && true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(abs(var_0.b.zx), _wgslsmith_mult_vec2_i32(var_0.b.xz, var_1.yy)), _wgslsmith_clamp_vec2_i32(vec2<i32>(var_1.x, 1i), _wgslsmith_sub_vec2_i32(var_1.xx, vec2<i32>(2147483647i, var_0.b.x)), -var_0.b.zx)), vec2<i32>(var_1.x, var_1.x)), select(var_0.b.zz & (~var_1.xx & ~vec2<i32>(var_0.b.x, var_1.x)), _wgslsmith_mod_vec2_i32(_wgslsmith_clamp_vec2_i32(-var_1.yz, var_0.b.zz, vec2<i32>(var_0.b.x, 0i)), _wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(var_0.b.zy, var_1.zx), var_1.zx << (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)))), var_5), u_input.a, countOneBits(~(37606i | _wgslsmith_div_i32(-2147483647i, var_1.x))));
}

