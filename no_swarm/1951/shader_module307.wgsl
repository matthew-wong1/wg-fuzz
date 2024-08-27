struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: bool,
    d: vec2<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
    c: u32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
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

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> u32 {
    var var_0 = true | any(select(vec4<bool>(true, true, true, true), vec4<bool>(all(vec3<bool>(false, true, false)), any(vec2<bool>(true, true)), false, true), !any(vec2<bool>(false, false))));
    let var_1 = Struct_2(~vec3<u32>(global0.a, abs(u_input.b.x), global0.a), Struct_1(max(15005u, ~84385u)), !all(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false))) && false, vec2<bool>(all(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -635f))) <= _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(-468f))))));
    let var_2 = 4294967295u;
    let var_3 = abs(-(~(-1390i >> (1u % 32u))));
    let var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-391f - 484f)))))));
    return 93986u;
}

fn func_2(arg_0: u32) -> Struct_3 {
    let var_0 = Struct_2(vec3<u32>(~max(u_input.b.x, ~9415u), ~(~_wgslsmith_div_u32(global0.a, 0u)), _wgslsmith_div_u32(u_input.a, ~func_3())), Struct_1(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, ~u_input.b), arg_0 & 1u)), true, vec2<bool>(true, true));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(256f, 774f) * _wgslsmith_f_op_f32(f32(-1f) * -249f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(1000f, -1358f))))));
    var var_2 = ~(~(~var_0.a.x | ~58940u));
    let var_3 = Struct_4(abs(u_input.e), var_0, 57458u);
    let var_4 = _wgslsmith_dot_vec3_i32(~_wgslsmith_sub_vec3_i32(vec3<i32>(-47495i, var_3.a, u_input.c.x) >> (var_0.a % vec3<u32>(32u)), vec3<i32>(-6929i, max(var_3.a, var_3.a), var_3.a)), vec3<i32>(-_wgslsmith_add_i32(0i, -u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(-65942i, var_3.a) | u_input.c.xw, vec2<i32>(u_input.c.x, -var_3.a)), abs(u_input.e)));
    return Struct_3(var_0.a, Struct_2(vec3<u32>(~_wgslsmith_mod_u32(0u, 71129u), ~(~26278u), ~func_3()), Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 78043u, var_3.c), firstTrailingBit(vec3<u32>(1u, 42812u, 31356u)))), all(select(!var_3.b.d, vec2<bool>(true, true), true)), vec2<bool>(var_0.c, false)));
}

fn func_4(arg_0: bool, arg_1: Struct_3) -> Struct_1 {
    let var_0 = Struct_3(vec3<u32>(_wgslsmith_mult_u32(40097u, ~_wgslsmith_sub_u32(arg_1.a.x, u_input.b.x)), 63346u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, arg_1.a.x, arg_1.b.b.a, global0.a), u_input.b)), Struct_2(~abs(firstLeadingBit(vec3<u32>(4294967295u, 0u, global0.a))), Struct_1(~_wgslsmith_mod_u32(global0.a, 56233u)), true, func_2(0u).b.d));
    var var_1 = Struct_2(vec3<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(~vec4<u32>(arg_1.b.a.x, global0.a, u_input.a, 1u), _wgslsmith_add_vec4_u32(u_input.b, u_input.b), u_input.b), vec4<u32>(~7913u, 1u, 37800u, 27117u)), u_input.a), arg_1.b.b, false, !select(var_0.b.d, select(!arg_1.b.d, select(var_0.b.d, vec2<bool>(arg_0, var_0.b.d.x), false), !arg_1.b.c), vec2<bool>(all(vec3<bool>(true, arg_0, arg_1.b.d.x)), false)));
    let var_2 = var_0.b.d;
    let var_3 = var_0;
    var_1 = Struct_2(var_1.a, var_1.b, ~(~u_input.c.x) == _wgslsmith_div_i32(-2147483647i, ~1i), vec2<bool>(var_2.x, (u_input.b.x == 1u) & var_1.d.x));
    return func_2(4294967295u).b.b;
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~0u);
    global0 = Struct_1(~_wgslsmith_mod_u32(~global0.a, _wgslsmith_div_u32(firstTrailingBit(u_input.b.x), ~u_input.b.x)));
    global0 = Struct_1(0u);
    var var_0 = any(!vec4<bool>(!all(vec3<bool>(false, false, true)), true, true, any(vec3<bool>(true, true, true))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1251f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -465f)))));
    return func_4(all(vec2<bool>(~u_input.d <= ~u_input.b.x, true)), func_2(firstLeadingBit(_wgslsmith_mult_u32(u_input.d, 1u)) >> (u_input.d % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    global0 = func_1();
    var var_0 = u_input.e >= (i32(-1i) * -627i);
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -351f)));
    global0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_sub_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global0.a, u_input.b.x, 0u, global0.a), vec4<u32>(14358u, u_input.d, global0.a, 29816u)), u_input.b << (vec4<u32>(1u, 983u, 13501u, 1u) % vec4<u32>(32u))), _wgslsmith_mult_vec4_u32(~u_input.b, ~vec4<u32>(u_input.b.x, u_input.b.x, global0.a, 4294967295u))), var_1, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1)) + 472f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(var_1)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1 - -656f))))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(1631f, 426f, var_1))) - _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(var_1, -358f, _wgslsmith_div_f32(var_1, var_1))))));
}

