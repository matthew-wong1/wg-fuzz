struct Struct_1 {
    a: bool,
    b: vec3<f32>,
    c: vec2<bool>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: vec4<f32>,
    c: bool,
    d: vec3<f32>,
    e: vec2<i32>,
}

struct Struct_4 {
    a: Struct_2,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 21>;

var<private> global1: array<Struct_1, 32>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3(arg_0: u32) -> i32 {
    return -_wgslsmith_sub_i32(_wgslsmith_sub_i32(58574i, 1i), 2147483647i);
}

fn func_2() -> vec2<bool> {
    global0 = array<vec4<f32>, 21>();
    global1 = array<Struct_1, 32>();
    let var_0 = Struct_3(Struct_2(global1[_wgslsmith_index_u32(~1u, 32u)], 4294967295u, ~vec3<i32>(10884i, -45600i, func_3(u_input.b)), global1[_wgslsmith_index_u32(firstLeadingBit(u_input.a.x & ~u_input.a.x), 32u)]), global0[_wgslsmith_index_u32(~(_wgslsmith_dot_vec4_u32(~vec4<u32>(4294967295u, u_input.a.x, u_input.c.x, u_input.b), vec4<u32>(u_input.b, u_input.b, 31397u, u_input.a.x)) >> (~(~u_input.a.x) % 32u)), 21u)], true, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -1504f, 454f), vec3<f32>(1739f, -754f, 1177f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-575f, 148f, -269f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1907f, 771f, 269f) + vec3<f32>(1287f, 959f, -310f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(610f, 779f, -220f)))), true)), vec2<i32>(~(-2267i), firstTrailingBit(countOneBits(~1i))));
    global0 = array<vec4<f32>, 21>();
    var var_1 = Struct_4(var_0.a, vec4<bool>(var_0.a.a.c.x && true, (~u_input.c.x >> (u_input.c.x % 32u)) == u_input.c.x, true | var_0.a.d.a, true));
    return var_0.a.a.c;
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> Struct_2 {
    var var_0 = func_2();
    var var_1 = vec3<bool>(all(!(!vec3<bool>(arg_1, true, var_0.x))) & !arg_0.x, true, all(select(vec2<bool>(false, false), select(arg_0, vec2<bool>(false, arg_0.x), false), !arg_0)));
    var var_2 = all(vec4<bool>(all(arg_0), true, arg_1 && var_0.x, arg_0.x));
    var var_3 = Struct_4(Struct_2(global1[_wgslsmith_index_u32(u_input.c.x, 32u)], reverseBits(firstLeadingBit(~22707u)), max(-firstTrailingBit(vec3<i32>(-92762i, -1i, -13286i)), vec3<i32>(1i, 1i, 1i)), Struct_1(true, _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(-1000f, -198f, -1798f), vec3<f32>(1901f, 1354f, -914f)))), !arg_0, false)), select(!select(select(vec4<bool>(false, var_1.x, arg_0.x, false), vec4<bool>(arg_1, false, false, true), var_0.x), !vec4<bool>(true, true, true, arg_0.x), true), select(!(!vec4<bool>(var_0.x, false, true, true)), vec4<bool>(true, any(vec3<bool>(var_0.x, true, false)), true, true), vec4<bool>(func_2().x, true, true, false)), !vec4<bool>(true, !arg_0.x, var_0.x | var_0.x, any(vec2<bool>(true, true)))));
    global1 = array<Struct_1, 32>();
    return Struct_2(global1[_wgslsmith_index_u32(28696u, 32u)], 4294967295u & ~(u_input.a.x ^ ~1u), ~var_3.a.c, global1[_wgslsmith_index_u32(u_input.b, 32u)]);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~0i;
    let var_1 = vec4<bool>(!((~u_input.a.x == 9106u) & any(vec4<bool>(true, true, true, false))), true, true, any(select(vec2<bool>(true, true), vec2<bool>(true, true), select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(true, false), false), all(vec4<bool>(false, true, true, false))))));
    let var_2 = Struct_3(func_1(!var_1.xz, var_1.x), vec4<f32>(_wgslsmith_f_op_f32(946f * _wgslsmith_div_f32(-1081f, _wgslsmith_f_op_f32(min(270f, -432f)))), 1f, -1018f, 1198f), func_2().x, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -566f) - _wgslsmith_f_op_f32(1209f + _wgslsmith_f_op_f32(trunc(-1000f)))), _wgslsmith_f_op_f32(round(-212f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -374f))))), vec2<i32>(-2147483647i, _wgslsmith_mult_i32(0i >> (u_input.a.x % 32u), 13234i)) << (~(~(~u_input.a.zx)) % vec2<u32>(32u)));
    global1 = array<Struct_1, 32>();
    var var_3 = firstTrailingBit(~countOneBits(vec4<i32>(var_2.e.x, 0i, 2147483647i, 2147483647i) & -vec4<i32>(var_2.e.x, -10402i, var_2.a.c.x, 43642i)));
    var var_4 = func_1(!var_2.a.d.c, !(var_1.x != !select(false, false, var_1.x))).a;
    var var_5 = Struct_4(var_2.a, !select(vec4<bool>(all(var_4.c), var_2.a.a.a, !var_1.x, var_4.a), select(!var_1, select(vec4<bool>(var_2.a.d.c.x, var_1.x, var_1.x, var_4.c.x), vec4<bool>(var_2.c, true, var_1.x, var_1.x), true), vec4<bool>(false, true, false, false)), !vec4<bool>(var_1.x, true, var_2.c, false)));
    var_5 = Struct_4(func_1(func_2(), false), !select(var_5.b, var_5.b, (var_2.a.b <= var_5.a.b) && (var_5.b.x & var_5.b.x)));
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i, vec4<f32>(var_5.a.d.b.x, 506f, _wgslsmith_f_op_f32(-var_4.b.x), var_5.a.d.b.x), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(max(1u, var_2.a.b), var_5.a.b, ~1u)), vec3<u32>(var_2.a.b, select(_wgslsmith_dot_vec3_u32(vec3<u32>(58190u, var_5.a.b, 1u), u_input.a), 4294967295u ^ u_input.b, true), firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 0u, var_5.a.b), vec3<u32>(u_input.a.x, u_input.c.x, 24718u))))), var_2.a.c.x, var_5.a.c.x);
}

