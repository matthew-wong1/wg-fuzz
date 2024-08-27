struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: vec2<f32>,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 11> = array<vec3<u32>, 11>(vec3<u32>(34516u, 0u, 50555u), vec3<u32>(1u, 7703u, 1u), vec3<u32>(103551u, 11276u, 38275u), vec3<u32>(67110u, 93076u, 1u), vec3<u32>(1u, 24189u, 0u), vec3<u32>(1u, 0u, 0u), vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(4294967295u, 34940u, 91873u), vec3<u32>(28378u, 4294967295u, 66975u), vec3<u32>(0u, 1u, 84618u), vec3<u32>(9744u, 0u, 65278u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> Struct_1 {
    return Struct_1(!vec3<bool>(all(vec4<bool>(true, true, true, true)), all(vec2<bool>(true, true)), true), vec2<bool>(!((0u >= u_input.a.x) || true), true));
}

fn func_3(arg_0: bool) -> vec4<bool> {
    global0 = array<vec3<u32>, 11>();
    global0 = array<vec3<u32>, 11>();
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(400f))))) + _wgslsmith_f_op_f32(-349f + -1149f));
    let var_1 = Struct_2(Struct_1(!vec3<bool>(any(vec3<bool>(arg_0, true, false)), any(vec2<bool>(arg_0, arg_0)), arg_0 != true), vec2<bool>(!arg_0, true)), vec2<bool>(true, true));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1655f)), -742f);
    return vec4<bool>(var_1.b.x, false, !var_1.b.x, !(!arg_0));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_2, arg_3: f32) -> vec3<f32> {
    let var_0 = Struct_2(func_2(), !arg_1.a.zy);
    global0 = array<vec3<u32>, 11>();
    var var_1 = -vec2<i32>(-(firstLeadingBit(-57705i) << (_wgslsmith_add_u32(u_input.a.x, u_input.a.x) % 32u)), 1i);
    var var_2 = var_0.a;
    let var_3 = !(!func_3(-511f != _wgslsmith_f_op_f32(arg_3 - arg_3)));
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1198f, arg_3), _wgslsmith_f_op_f32(round(487f)))), 1484f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(func_1(Struct_1(vec3<bool>(all(vec2<bool>(true, true)), true, false), !select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true))), Struct_1(select(vec3<bool>(true, true, true), !select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), true), vec2<bool>(any(vec3<bool>(true, true, true)), select(false, true, true))), Struct_2(Struct_1(vec3<bool>(true, true, true), vec2<bool>(true, true)), vec2<bool>(true, true)), -606f));
    let var_1 = false;
    var var_2 = _wgslsmith_f_op_vec2_f32(-var_0.xz);
    var var_3 = vec4<f32>(_wgslsmith_f_op_f32(floor(857f)), var_2.x, _wgslsmith_f_op_f32(1549f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(var_2.x, 1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.x + var_0.x)))), var_0.x);
    var_3 = _wgslsmith_div_vec4_f32(vec4<f32>(-1000f, var_3.x, _wgslsmith_f_op_f32(406f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-418f, var_0.x)) - 1494f)), -1924f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(734f, 1595f, var_2.x, var_3.x))) - vec4<f32>(var_2.x, 965f, -306f, var_0.x)))));
    var var_4 = firstLeadingBit(-_wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(20787i, 1i), _wgslsmith_clamp_i32(21992i, 0i, 2147483647i), _wgslsmith_add_i32(12601i, -27641i)), -vec3<i32>(1i, 1i, 1i)));
    let var_5 = firstLeadingBit((0u << (select(u_input.a.x, ~4294967295u, 1971f >= var_2.x) % 32u)) ^ 1u);
    var var_6 = u_input.a.x | _wgslsmith_mod_u32(min(49604u, ~abs(u_input.a.x)), var_5);
    var_2 = _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec3_f32(func_1(Struct_1(select(select(vec3<bool>(false, var_1, true), vec3<bool>(var_1, var_1, false), true), vec3<bool>(true, false, false), vec3<bool>(var_1, true, true)), !(!vec2<bool>(var_1, var_1))), func_2(), Struct_2(func_2(), vec2<bool>(var_0.x <= 563f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1061f))).xy));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<i32>(-43211i, 2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(var_4.x, 2147483647i), vec2<i32>(0i, var_4.x)), ~(~var_4.x))), 0u, vec2<f32>(364f, var_0.x), ~(~(reverseBits(vec4<u32>(u_input.a.x, 42590u, 4294967295u, u_input.a.x)) << (~vec4<u32>(1u, var_5, u_input.a.x, var_5) % vec4<u32>(32u)))));
}

