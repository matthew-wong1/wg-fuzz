struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_1,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_2,
    d: vec3<i32>,
}

struct Struct_4 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: array<vec4<i32>, 19>;

var<private> global1: i32 = -1i;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<bool>, arg_2: Struct_3, arg_3: Struct_4) -> u32 {
    global1 = 26689i | firstTrailingBit(18095i);
    global0 = array<vec4<i32>, 19>();
    global0 = array<vec4<i32>, 19>();
    let var_0 = vec2<bool>(!any(select(vec2<bool>(true, arg_1.x), arg_1.zz, vec2<bool>(false, arg_1.x))), arg_2.a.b.x);
    var var_1 = Struct_4(arg_2.a.e, select(0u >= (71237u << ((68293u | u_input.a) % 32u)), !all(select(arg_2.c.b, arg_1.wxx, vec3<bool>(arg_1.x, var_0.x, false))), _wgslsmith_sub_u32(12844u ^ u_input.a, u_input.a) == u_input.a));
    return ~select(u_input.a, ~(~u_input.d) | (u_input.d >> (~4294967295u % 32u)), all(!(!arg_2.a.b.zz)));
}

fn func_3() -> i32 {
    let var_0 = Struct_1(-177f, firstLeadingBit(u_input.b), -vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(32006i, u_input.b.x), -66637i), u_input.b.x, i32(-1i) * -2147483647i));
    var var_1 = Struct_1(var_0.a, u_input.b & var_0.c.zz, abs(~(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.b.x, 0i, var_0.c.x), var_0.c))));
    let var_2 = ~vec3<u32>(~(~0u), func_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1103f, 498f, 846f) * vec3<f32>(var_0.a, 1495f, 258f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a, var_1.a, 611f))), !select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true)), Struct_3(Struct_2(vec2<f32>(var_1.a, 2688f), vec3<bool>(false, false, false), var_0, vec3<f32>(-383f, var_0.a, var_1.a), Struct_1(670f, var_0.c.zz, var_1.c)), firstLeadingBit(36525i), Struct_2(vec2<f32>(-407f, 2019f), vec3<bool>(false, true, false), Struct_1(var_0.a, vec2<i32>(var_0.c.x, var_1.b.x), var_0.c), vec3<f32>(var_1.a, var_0.a, -1000f), var_0), vec3<i32>(1i, 4588i, u_input.b.x)), Struct_4(Struct_1(var_0.a, vec2<i32>(var_1.c.x, 29676i), vec3<i32>(var_1.b.x, var_0.b.x, u_input.b.x)), true)), _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(824u, 0u, 0u, u_input.a), ~u_input.c), select(u_input.c, vec4<u32>(u_input.c.x, 23558u, u_input.a, 84345u), vec4<bool>(true, false, false, true)) ^ u_input.c));
    let var_3 = ~(-2147483647i & min(-var_0.b.x & (var_1.b.x & u_input.b.x), select(_wgslsmith_mod_i32(var_0.b.x, var_0.b.x), -18233i, false)));
    return 0i;
}

fn func_1() -> Struct_1 {
    var var_0 = any(!select(vec3<bool>(true, all(vec3<bool>(true, false, false)), false), select(vec3<bool>(true, false, false), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true)));
    var var_1 = ~(min(4294967295u, _wgslsmith_mult_u32(~56140u, func_2(vec3<f32>(341f, -1102f, 163f), vec4<bool>(false, true, false, true), Struct_3(Struct_2(vec2<f32>(-889f, -330f), vec3<bool>(false, true, true), Struct_1(1331f, u_input.b, vec3<i32>(u_input.b.x, -1i, u_input.b.x)), vec3<f32>(-1000f, -327f, -479f), Struct_1(1050f, u_input.b, vec3<i32>(61969i, u_input.b.x, 1i))), u_input.b.x, Struct_2(vec2<f32>(-176f, -2243f), vec3<bool>(false, false, false), Struct_1(-763f, u_input.b, vec3<i32>(19073i, u_input.b.x, u_input.b.x)), vec3<f32>(1072f, 270f, 903f), Struct_1(339f, vec2<i32>(-38338i, -9505i), vec3<i32>(u_input.b.x, u_input.b.x, -1i))), vec3<i32>(-2534i, u_input.b.x, 5964i)), Struct_4(Struct_1(-138f, u_input.b, vec3<i32>(u_input.b.x, 0i, -8998i)), false)))) << (u_input.c.x % 32u));
    let var_2 = !(!vec2<bool>(!all(vec3<bool>(false, false, false)), true));
    var var_3 = Struct_1(-304f, -u_input.b, vec3<i32>(firstTrailingBit(abs(_wgslsmith_mult_i32(u_input.b.x, u_input.b.x))), func_3(), _wgslsmith_mult_i32(~1i, _wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(global0[_wgslsmith_index_u32(u_input.c.x, 19u)], global0[_wgslsmith_index_u32(u_input.d, 19u)]), -global0[_wgslsmith_index_u32(0u, 19u)]))));
    var var_4 = Struct_3(Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_3.a, var_3.a) - vec2<f32>(var_3.a, 1663f))) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(var_3.a, 623f)))), !(!(!vec3<bool>(var_2.x, var_2.x, false))), Struct_1(_wgslsmith_f_op_f32(var_3.a * _wgslsmith_f_op_f32(-var_3.a)), vec2<i32>(-1i) * -u_input.b, ~vec3<i32>(-1i, 2147483647i, 1i) << (vec3<u32>(u_input.a, u_input.d, 25525u) % vec3<u32>(32u))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, var_3.a, var_3.a) + vec3<f32>(var_3.a, var_3.a, var_3.a)) + vec3<f32>(-170f, var_3.a, var_3.a)), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-487f, -3499f, var_3.a), vec3<f32>(-630f, 2016f, var_3.a)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(var_3.a, -1962f, var_3.a) * vec3<f32>(var_3.a, var_3.a, var_3.a))), true)), Struct_1(940f, vec2<i32>(select(u_input.b.x, 0i, var_2.x), ~var_3.b.x), var_3.c)), 344i, Struct_2(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(var_3.a, -1000f), vec2<f32>(-212f, var_3.a)) + vec2<f32>(var_3.a, 112f)))), !(!vec3<bool>(var_2.x, false, var_2.x)), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.a + 626f)), abs(vec2<i32>(u_input.b.x, 19968i)), vec3<i32>(~var_3.c.x, -1i, -58007i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_3.a, -275f, var_3.a)))), Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.a) * var_3.a), vec2<i32>(-15292i, _wgslsmith_div_i32(var_3.b.x, 33970i)), var_3.c >> (u_input.c.xxy % vec3<u32>(32u)))), firstTrailingBit(firstTrailingBit(max(var_3.c, _wgslsmith_mult_vec3_i32(var_3.c, vec3<i32>(-13992i, var_3.b.x, -2147483647i))))));
    return var_4.a.e;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec4<i32>, 19>();
    global1 = u_input.b.x;
    var var_0 = Struct_2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(379f + -903f), _wgslsmith_f_op_f32(sign(-538f))))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(619f, -1000f)), _wgslsmith_f_op_f32(round(-2399f))))), !select(!select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, true)), select(select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), false), vec3<bool>(true, true, true), any(vec2<bool>(true, false))), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), func_1(), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, 2937f, 535f)))) * _wgslsmith_f_op_vec3_f32(vec3<f32>(535f, 395f, -234f) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1301f, -1271f, -1000f)))))), func_1());
    let var_1 = ~(abs(-vec4<i32>(4416i, var_0.e.c.x, var_0.e.b.x, 18961i)) << ((u_input.c >> (_wgslsmith_clamp_vec4_u32(u_input.c, u_input.c >> (u_input.c % vec4<u32>(32u)), ~vec4<u32>(u_input.d, 4294967295u, 18511u, u_input.c.x)) % vec4<u32>(32u))) % vec4<u32>(32u)));
    var var_2 = !select(select(!var_0.b, !(!vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x)), var_0.b.x), select(vec3<bool>(true, !var_0.b.x, var_0.b.x), select(select(var_0.b, var_0.b, var_0.b), var_0.b, vec3<bool>(true, false, false)), vec3<bool>(true, true, true)), vec3<bool>(any(select(var_0.b, var_0.b, var_0.b)), true, true));
    var var_3 = Struct_3(Struct_2(vec2<f32>(_wgslsmith_f_op_f32(exp2(var_0.a.x)), var_0.a.x), vec3<bool>(!var_2.x, true, true), func_1(), var_0.d, var_0.e), -var_0.e.b.x, Struct_2(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.d.xy)), _wgslsmith_f_op_vec2_f32(-var_0.a))), !select(vec3<bool>(var_0.b.x, var_0.b.x, var_0.b.x), !var_0.b, vec3<bool>(var_0.b.x, var_2.x, var_0.b.x)), Struct_1(var_0.d.x, ~vec2<i32>(var_0.e.b.x, -43396i), var_1.xzx), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(-1000f, 1686f, var_0.b.x)), var_0.c.a, -2770f)), func_1()), (var_0.e.c >> (select(vec3<u32>(4294967295u, u_input.d, 1u), vec3<u32>(u_input.d, u_input.a, u_input.a), !vec3<bool>(var_0.b.x, true, false)) % vec3<u32>(32u))) | countOneBits(-(~vec3<i32>(var_0.e.b.x, 87568i, 46504i))));
    let var_4 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.e.a, var_4.x);
}

