struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: Struct_1,
    d: bool,
    e: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: f32,
    c: Struct_2,
    d: u32,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<f32>,
    c: u32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: array<vec2<bool>, 11> = array<vec2<bool>, 11>(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1, arg_3: vec3<bool>) -> u32 {
    let var_0 = select(arg_0.c.yx, firstLeadingBit(arg_0.c.zz), true);
    let var_1 = _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(925f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -102f)))), -421f)));
    var var_2 = Struct_3(u_input.b.x, var_0, arg_0.b, true, arg_0.b);
    global1 = array<vec2<bool>, 11>();
    let var_3 = Struct_2(arg_1, Struct_1(vec4<bool>(all(vec3<bool>(arg_3.x, false, arg_0.a)), true, !arg_2.a.x, true)), max(-vec3<i32>(var_0.x, arg_0.c.x, var_0.x) << (~vec3<u32>(global0.x, 4294967295u, 0u) % vec3<u32>(32u)), min(arg_0.c, vec3<i32>(arg_0.c.x, ~var_0.x, var_0.x))));
    return _wgslsmith_dot_vec2_u32(u_input.b, _wgslsmith_mult_vec2_u32(~vec2<u32>(var_2.a, 0u), global0.zz));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_2, arg_2: Struct_3) -> bool {
    global0 = _wgslsmith_mult_vec3_u32(~vec3<u32>(firstTrailingBit(~arg_2.a), _wgslsmith_mod_u32(39773u, global0.x), ~(~4294967295u)), ~_wgslsmith_add_vec3_u32(~(~vec3<u32>(27133u, 76570u, 99403u)), vec3<u32>(_wgslsmith_clamp_u32(4294967295u, 9375u, 4294967295u), global0.x, ~global0.x)));
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    let var_0 = ~global0.x;
    global0 = _wgslsmith_clamp_vec3_u32(~vec3<u32>(24511u, 0u >> ((var_0 & 0u) % 32u), _wgslsmith_dot_vec2_u32(u_input.b, ~vec2<u32>(u_input.b.x, 1u))), ~(~select(vec3<u32>(4294967295u, 42661u, u_input.b.x), vec3<u32>(u_input.b.x, arg_2.a, u_input.b.x), false)) << (~vec3<u32>(0u, 1u, ~global0.x) % vec3<u32>(32u)), ~(~vec3<u32>(func_3(Struct_2(arg_1.a, arg_1.b, vec3<i32>(arg_2.b.x, arg_1.c.x, arg_2.b.x)), true, arg_1.b, arg_2.e.a.zwy), ~var_0, 1u)));
    return arg_1.a;
}

fn func_4(arg_0: Struct_2, arg_1: u32, arg_2: bool) -> u32 {
    var var_0 = 142403u;
    global1 = array<vec2<bool>, 11>();
    let var_1 = abs(_wgslsmith_clamp_vec3_i32(abs(arg_0.c), arg_0.c, ~vec3<i32>(arg_0.c.x, -43418i, arg_0.c.x) ^ (vec3<i32>(-1i) * -vec3<i32>(-1i, arg_0.c.x, -345i))));
    var var_2 = ~(~select(vec4<u32>(u_input.b.x, 90693u, arg_1, 1u) ^ vec4<u32>(19819u, 0u, arg_1, 44295u), ~vec4<u32>(u_input.b.x, 1u, global0.x, global0.x), select(vec4<bool>(arg_0.a, false, true, false), vec4<bool>(false, arg_0.a, arg_2, true), true))) >> (vec4<u32>(~(global0.x >> (~global0.x % 32u)), 15878u, abs(30906u), ~u_input.a) % vec4<u32>(32u));
    global0 = reverseBits(var_2.wzw);
    return _wgslsmith_add_u32(1u, arg_1 | ~global0.x);
}

fn func_1() -> vec4<bool> {
    var var_0 = -66084i;
    let var_1 = Struct_1(vec4<bool>(true, false, !any(vec2<bool>(true, true)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, 4294967295u, global0.x, 4294967295u), vec4<u32>(global0.x, u_input.a, 11724u, 1u)) > global0.x));
    let var_2 = var_1.a;
    var var_3 = _wgslsmith_sub_u32(func_4(Struct_2(func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-399f, -136f, 1049f, 1990f)), Struct_2(false, var_1, vec3<i32>(2147483647i, 40318i, 33722i)), Struct_3(u_input.a, vec2<i32>(2147483647i, -2147483647i), var_1, var_2.x, Struct_1(vec4<bool>(false, true, var_1.a.x, true)))), var_1, ~vec3<i32>(4221i, 2147483647i, 0i)), ~(0u ^ abs(global0.x)), var_2.x | false), firstTrailingBit((firstTrailingBit(3242u) & _wgslsmith_add_u32(1u, global0.x)) << (~u_input.a % 32u)));
    global1 = array<vec2<bool>, 11>();
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<bool>, 11>();
    let var_0 = Struct_1(vec4<bool>(true, any(func_1()), true, !func_2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(883f, -2500f, 490f, 1978f))), Struct_2(true, Struct_1(vec4<bool>(false, true, false, true)), vec3<i32>(-33504i, 8007i, -1i)), Struct_3(1u, vec2<i32>(1i, 16633i), Struct_1(vec4<bool>(true, true, true, true)), false, Struct_1(vec4<bool>(true, true, false, false))))));
    global0 = reverseBits(vec3<u32>(4294967295u, global0.x, (~u_input.b.x ^ ~u_input.a) ^ ((23151u >> (u_input.a % 32u)) >> (_wgslsmith_mult_u32(global0.x, 4294967295u) % 32u))));
    let var_1 = Struct_3(abs(~(~(~global0.x))), _wgslsmith_clamp_vec2_i32(vec2<i32>(1i, ~abs(1874i)), _wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(2147483647i, 1i), vec2<i32>(0i, -8166i)), select(vec2<i32>(-10642i, 2147483647i), vec2<i32>(-9996i, 2147483647i), false)), ~max(vec2<i32>(9115i, 0i), vec2<i32>(27848i, 11809i)), vec2<i32>(~(-1i), -42935i)), ~vec2<i32>(1i, -1i)), var_0, true, var_0);
    var var_2 = Struct_2(true, var_1.e, vec3<i32>(var_1.b.x, 2147483647i, max(-var_1.b.x, -2147483647i)) >> (vec3<u32>(abs(global0.x), select(55863u, var_1.a, true), ~_wgslsmith_clamp_u32(14832u, var_1.a, 119951u)) % vec3<u32>(32u)));
    var var_3 = vec3<f32>(1f, _wgslsmith_f_op_f32(ceil(292f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-174f - -181f)))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec4_u32(abs(vec4<u32>(~global0.x, _wgslsmith_mod_u32(24523u, 47954u), var_1.a, global0.x ^ global0.x)), ~min(~vec4<u32>(var_1.a, 60419u, var_1.a, var_1.a), ~vec4<u32>(u_input.a, u_input.a, u_input.a, u_input.a))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(var_3.x, var_3.x, var_3.x, var_3.x))))) * vec4<f32>(_wgslsmith_f_op_f32(898f * _wgslsmith_f_op_f32(round(-1147f))), _wgslsmith_f_op_f32(var_3.x + _wgslsmith_f_op_f32(select(var_3.x, -496f, true))), _wgslsmith_f_op_f32(round(1731f)), 116f)), global0.x, 15353i);
}

