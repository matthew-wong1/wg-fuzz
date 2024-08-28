struct Struct_1 {
    a: f32,
    b: vec4<i32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: vec2<u32>,
    d: Struct_2,
    e: f32,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec3<i32>,
    d: u32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 17> = array<vec3<bool>, 17>(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    let var_0 = u_input.e.x;
    global0 = array<vec3<bool>, 17>();
    global0 = array<vec3<bool>, 17>();
    let var_1 = Struct_1(664f, ~select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0, u_input.a.x, var_0, 42881i), vec4<i32>(u_input.a.x, -2147483647i, -2147483647i, u_input.c.x)), vec4<i32>(u_input.a.x, u_input.a.x, u_input.e.x, u_input.a.x) | vec4<i32>(u_input.e.x, u_input.e.x, 0i, -1i), true) << (~(select(vec4<u32>(0u, u_input.d, u_input.d, u_input.d), vec4<u32>(u_input.d, 1u, u_input.b, u_input.d), vec4<bool>(true, true, true, false)) ^ firstLeadingBit(vec4<u32>(10858u, 26075u, 24769u, 0u))) % vec4<u32>(32u)));
    var var_2 = var_1.a;
    return vec3<u32>(~u_input.b | u_input.d, ~4294967295u, abs(u_input.d));
}

fn func_2(arg_0: vec2<bool>, arg_1: f32, arg_2: vec2<bool>) -> Struct_2 {
    global0 = array<vec3<bool>, 17>();
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_1 * 908f), _wgslsmith_f_op_f32(max(arg_1, _wgslsmith_f_op_f32(-arg_1))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(572f, _wgslsmith_f_op_f32(f32(-1f) * -2066f))), 1485f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1) * _wgslsmith_f_op_f32(-arg_1))));
    var var_1 = select(u_input.c.x, max(countOneBits(30935i), -24562i) & -(u_input.a.x << (1u % 32u)), any(vec2<bool>(all(vec4<bool>(arg_0.x, false, true, arg_2.x)), 821f > arg_1))) ^ ~1i;
    var var_2 = func_3();
    var_2 = vec3<u32>(u_input.b >> ((~u_input.b | 0u) % 32u), ~4305u, max(countOneBits(var_2.x), u_input.b));
    return Struct_2(_wgslsmith_sub_u32(~1u, u_input.d));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_add_u32(23559u, u_input.b << (arg_0.a % 32u)) ^ u_input.d, _wgslsmith_div_u32(_wgslsmith_mult_u32(u_input.d, func_2(vec2<bool>(true, true), -637f, vec2<bool>(false, true)).a), abs(1u)), (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(49600u, 0u)) << (~146153u % 32u)) << (arg_0.a % 32u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(abs(vec3<u32>(u_input.d, 0u, 17982u)), vec3<u32>(u_input.b, arg_0.a, 0u)), abs(~vec3<u32>(arg_0.a, arg_0.a, 4294967295u)))), vec4<u32>(_wgslsmith_div_u32(arg_0.a, u_input.d ^ u_input.b), ~(75370u ^ arg_0.a), 0u, _wgslsmith_mod_u32(arg_0.a, func_3().x)) << (_wgslsmith_add_vec4_u32(vec4<u32>(arg_0.a, func_3().x, ~1u, u_input.d >> (u_input.b % 32u)), _wgslsmith_mult_vec4_u32(vec4<u32>(21339u, 11057u, arg_0.a, arg_0.a) ^ vec4<u32>(9363u, arg_0.a, 50371u, u_input.d), countOneBits(vec4<u32>(43366u, 25591u, arg_0.a, arg_0.a)))) % vec4<u32>(32u)), ~(~vec4<u32>(arg_0.a, ~57357u, 0u, _wgslsmith_mult_u32(0u, u_input.b))));
    let var_1 = vec2<f32>(-798f, -607f);
    return Struct_2(~u_input.d);
}

fn func_5(arg_0: Struct_1, arg_1: Struct_2) -> i32 {
    let var_0 = !(!global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(69423u, u_input.b), 17u)]);
    var var_1 = arg_0;
    var_1 = arg_0;
    var var_2 = false;
    var_2 = var_0.x && !var_0.x;
    return -21412i;
}

fn func_1(arg_0: Struct_3, arg_1: vec4<f32>) -> u32 {
    var var_0 = ~arg_0.a.b.wy;
    var var_1 = _wgslsmith_mod_u32(~(~u_input.b), _wgslsmith_dot_vec2_u32(~arg_0.c, arg_0.c << ((vec2<u32>(u_input.b, 1u) ^ reverseBits(vec2<u32>(14210u, u_input.d))) % vec2<u32>(32u))));
    var var_2 = vec2<i32>(~func_5(Struct_1(_wgslsmith_f_op_f32(-785f - 211f), countOneBits(vec4<i32>(-46839i, arg_0.a.b.x, -41480i, arg_0.a.b.x))), func_4(func_2(vec2<bool>(true, arg_0.b), -2107f, vec2<bool>(false, false)))), 2147483647i);
    let var_3 = Struct_4(func_4(func_2(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, arg_0.b)), vec2<bool>(true, true), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(true, arg_0.b), vec2<bool>(false, arg_0.b))), _wgslsmith_f_op_f32(ceil(arg_1.x)), select(vec2<bool>(arg_0.b, arg_0.b), vec2<bool>(false, arg_0.b), true))));
    var var_4 = Struct_4(func_2(select(vec2<bool>(arg_0.b, arg_0.c.x > 37271u), vec2<bool>(any(vec2<bool>(false, arg_0.b)), false), vec2<bool>(true, all(vec3<bool>(arg_0.b, true, true)))), _wgslsmith_f_op_f32(floor(arg_0.a.a)), vec2<bool>(arg_0.b, any(select(vec4<bool>(arg_0.b, false, true, arg_0.b), vec4<bool>(arg_0.b, arg_0.b, arg_0.b, true), arg_0.b)))));
    return _wgslsmith_sub_u32(~var_4.a.a, _wgslsmith_dot_vec2_u32(select(abs(~vec2<u32>(0u, var_4.a.a)), ~vec2<u32>(1u, var_3.a.a), select(vec2<bool>(arg_0.b, false), select(vec2<bool>(arg_0.b, true), vec2<bool>(false, arg_0.b), vec2<bool>(true, false)), vec2<bool>(true, true))), vec2<u32>(~var_3.a.a, u_input.d)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<bool>, 17>();
    var var_0 = vec3<u32>(min(_wgslsmith_add_u32(func_1(Struct_3(Struct_1(1059f, vec4<i32>(-2147483647i, u_input.a.x, 1i, 6130i)), true, vec2<u32>(u_input.d, u_input.b), Struct_2(1259u), -1441f), vec4<f32>(-1062f, -1351f, 408f, 658f)), 4294967295u) | 29016u, ~func_4(Struct_2(u_input.d)).a), (_wgslsmith_div_u32(39651u, 9608u << (u_input.d % 32u)) & u_input.b) >> (~_wgslsmith_add_u32(func_4(Struct_2(u_input.b)).a, u_input.b & u_input.d) % 32u), (~u_input.d | u_input.b) << (reverseBits(firstTrailingBit(35589u)) % 32u));
    global0 = array<vec3<bool>, 17>();
    global0 = array<vec3<bool>, 17>();
    let var_1 = _wgslsmith_f_op_f32(-1289f * -1490f);
    global0 = array<vec3<bool>, 17>();
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

