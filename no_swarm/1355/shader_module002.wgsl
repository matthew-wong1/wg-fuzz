struct Struct_1 {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec2<bool>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: u32,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 6> = array<vec2<u32>, 6>(vec2<u32>(49553u, 4294967295u), vec2<u32>(108491u, 0u), vec2<u32>(0u, 59058u), vec2<u32>(8588u, 98949u), vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 1u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_2) -> vec2<f32> {
    let var_0 = 0u;
    let var_1 = _wgslsmith_mod_vec2_i32(vec2<i32>(arg_1.b.a.x, select(u_input.e.x, _wgslsmith_mult_i32(u_input.e.x, 2147483647i), !arg_1.b.c.x)), vec2<i32>(arg_1.b.a.x, 1i)) << (~firstLeadingBit(_wgslsmith_mod_vec2_u32(global0[_wgslsmith_index_u32(~var_0, 6u)], global0[_wgslsmith_index_u32(_wgslsmith_add_u32(u_input.a.x, 1u), 6u)])) % vec2<u32>(32u));
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    global0 = array<vec2<u32>, 6>();
    return vec2<f32>(arg_1.b.b.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(853f - _wgslsmith_div_f32(455f, arg_0.x)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(387f, arg_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1153f))))));
}

fn func_2() -> Struct_2 {
    global0 = array<vec2<u32>, 6>();
    let var_0 = true;
    global0 = array<vec2<u32>, 6>();
    var var_1 = Struct_2(vec3<bool>(var_0 && var_0, (any(vec4<bool>(true, true, var_0, true)) & true) && (var_0 & (u_input.b.x == 4294967295u)), true), Struct_1(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.e.x, 2147483647i, 1i, 1i) >> (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c.x, 13680u, 4294967295u, 49069u), vec4<u32>(u_input.b.x, u_input.d, u_input.a.x, u_input.c.x)) % vec4<u32>(32u)), vec4<i32>(u_input.e.x, u_input.e.x << (u_input.d % 32u), u_input.e.x, 1i)), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(round(342f)), _wgslsmith_f_op_f32(round(1015f))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1088f, -865f)) - _wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(-846f, -129f), Struct_2(vec3<bool>(false, var_0, var_0), Struct_1(vec4<i32>(-1i, -2147483647i, -1904i, -2147483647i), vec2<f32>(1286f, 761f), vec2<bool>(false, false)))))))), select(vec2<bool>(true, true), vec2<bool>(all(vec4<bool>(var_0, var_0, var_0, false)), var_0), !any(vec3<bool>(false, false, false)))));
    var var_2 = var_1.b;
    return Struct_2(vec3<bool>(-1324f == _wgslsmith_f_op_f32(ceil(var_2.b.x)), false, false), var_1.b);
}

fn func_4(arg_0: Struct_2) -> bool {
    let var_0 = arg_0;
    global0 = array<vec2<u32>, 6>();
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x, arg_0.b.b.x) + _wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_0.b.b.x, 911f, var_0.b.b.x, -1058f), vec4<f32>(-2511f, 292f, -361f, 340f))))))));
    var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(floor(var_0.b.b.x)), 1000f, arg_0.b.b.x) * _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-314f, -1000f, -875f, var_1.x))))) - vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-455f - -525f)), _wgslsmith_f_op_f32(min(911f, arg_0.b.b.x)), var_1.x, arg_0.b.b.x));
    let var_2 = var_0.b.b.x;
    return var_0.b.c.x | (var_0.a.x & true);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = vec3<bool>(true, true, func_4(func_2()));
    var var_1 = Struct_2(func_2().a, func_2().b);
    let var_2 = _wgslsmith_add_u32(_wgslsmith_sub_u32(~u_input.b.x << (countOneBits(u_input.d) % 32u), 16603u) >> (arg_0 % 32u), ~arg_0);
    var var_3 = ~(~u_input.d);
    var var_4 = Struct_1(-vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, 2147483647i, 29478i, u_input.e.x), vec4<i32>(0i, u_input.e.x, var_1.b.a.x, -1i)), 0i, _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, -50295i, 0i, var_1.b.a.x), var_1.b.a), countOneBits(12205i)), ~var_1.b.a.x), vec2<f32>(_wgslsmith_f_op_f32(select(var_1.b.b.x, _wgslsmith_f_op_f32(trunc(1495f)), false)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.b.x))))), var_1.b.c);
    return -815f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(-2077f)))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_1(u_input.d))))), -670f)), 764f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-998f - 473f), 1f)), 273f);
    let var_1 = ~_wgslsmith_mod_i32(u_input.e.x, u_input.e.x);
    let var_2 = select(vec3<bool>(!(-723f < var_0.x), any(select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), true), select(vec4<bool>(false, true, true, false), vec4<bool>(false, true, true, false), false), true)), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_vec2_f32(func_3(vec2<f32>(var_0.x, 375f), Struct_2(vec3<bool>(false, false, false), Struct_1(vec4<i32>(var_1, var_1, -1i, -24997i), var_0.wy, vec2<bool>(true, false))))).x) <= -352f), !select(!select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), true), vec3<bool>(true, true, true), select(func_2().a, vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, false)))), vec3<bool>(true, ((39936i >= var_1) && true) || true, func_2().b.c.x));
    let var_3 = false;
    global0 = array<vec2<u32>, 6>();
    let var_4 = vec2<f32>(-1904f, -456f);
    let var_5 = true;
    let x = u_input.a;
    s_output = StorageBuffer(var_0.xyz, vec4<f32>(_wgslsmith_f_op_f32(-1413f - 599f), _wgslsmith_f_op_f32(ceil(-110f)), func_2().b.b.x, _wgslsmith_f_op_f32(var_4.x * var_4.x)), ~_wgslsmith_add_u32(u_input.b.x, ~_wgslsmith_add_u32(u_input.a.x, u_input.a.x)), -(~u_input.e));
}

