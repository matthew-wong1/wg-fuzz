struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: vec3<i32>,
    d: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<Struct_3, 8>;

var<private> global2: array<vec3<u32>, 22>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3() -> i32 {
    var var_0 = ~vec4<u32>(4294967295u, 0u, _wgslsmith_add_u32(_wgslsmith_mod_u32(global0.d, 64579u) >> ((0u | global0.b.e.x) % 32u), _wgslsmith_mod_u32(_wgslsmith_div_u32(global0.b.e.x, global0.d), ~1u)), countOneBits(~(~37361u)));
    global0 = Struct_4(u_input.a.x, global0.b, firstTrailingBit(global0.c), ~global0.d);
    global2 = array<vec3<u32>, 22>();
    let var_1 = u_input.a.x;
    global2 = array<vec3<u32>, 22>();
    return abs(_wgslsmith_mult_i32(i32(-1i) * -_wgslsmith_mod_i32(22759i, u_input.a.x), min(1i, _wgslsmith_add_i32(u_input.a.x, abs(global0.c.x)))));
}

fn func_2() -> u32 {
    var var_0 = !global0.b.b.x;
    global0 = Struct_4(-41738i, global0.b, vec3<i32>(u_input.a.x, firstTrailingBit(1i), _wgslsmith_add_i32(func_3(), firstLeadingBit(u_input.a.x))), global0.d);
    return ~(abs(0u) | reverseBits(global0.d));
}

fn func_1(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = Struct_4(firstTrailingBit(abs(13849i)), Struct_1(~(_wgslsmith_dot_vec4_u32(vec4<u32>(91954u, 1354u, 42851u, 21356u), vec4<u32>(92923u, 19387u, 1u, global0.d)) << (abs(2575u) % 32u)), vec3<bool>(true, any(global0.b.b.xy), !arg_0.x), u_input.a.x, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(2085f, -225f), _wgslsmith_f_op_f32(global0.b.d.x + 486f))), global0.b.e & vec3<u32>(~58826u, ~4294967295u, 4294967295u)), vec3<i32>(-global0.b.c, max(-322i, ~global0.b.c), -2147483647i), 4294967295u >> (func_2() % 32u));
    let var_1 = Struct_4(_wgslsmith_dot_vec3_i32(var_0.c, global0.c) | var_0.a, global0.b, _wgslsmith_clamp_vec3_i32(-(var_0.c ^ var_0.c), -var_0.c, reverseBits(-global0.c)) << (~vec3<u32>(var_0.d, 0u, ~1u) % vec3<u32>(32u)), 10292u);
    var var_2 = Struct_4(1i, var_1.b, ~select(global0.c & vec3<i32>(-1i, var_1.b.c, var_1.a), var_1.c >> (var_0.b.e % vec3<u32>(32u)), select(vec3<bool>(global0.b.b.x, var_1.b.b.x, false), vec3<bool>(true, arg_0.x, var_0.b.b.x), true)) >> (var_1.b.e % vec3<u32>(32u)), ~(var_1.b.e.x | var_1.d));
    global1 = array<Struct_3, 8>();
    global0 = Struct_4(~(~576i), global0.b, vec3<i32>(countOneBits(-var_1.c.x >> (~0u % 32u)), min(-1i, u_input.a.x), -47126i), var_0.d);
    return global0.b;
}

fn func_4(arg_0: Struct_1, arg_1: vec4<bool>) -> i32 {
    global1 = array<Struct_3, 8>();
    global0 = Struct_4(-1i, func_1(arg_1), global0.c, arg_0.e.x);
    var var_0 = global0.b.d.x;
    global2 = array<vec3<u32>, 22>();
    var var_1 = _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(~(-31369i), -12178i, abs(~28210i)), ~vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a), _wgslsmith_mod_i32(-7550i, global0.c.x), u_input.a.x | 24558i)), ~func_3());
    return ~(~(-func_1(select(vec4<bool>(arg_0.b.x, false, true, arg_1.x), arg_1, false)).c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~reverseBits(abs(u_input.a.x | u_input.a.x));
    let var_1 = u_input.a.x | func_4(func_1(!vec4<bool>(true, false, false, global0.b.b.x)), select(vec4<bool>(true, !global0.b.b.x, global0.b.b.x, global0.b.b.x == false), select(!vec4<bool>(true, global0.b.b.x, global0.b.b.x, global0.b.b.x), vec4<bool>(global0.b.b.x, global0.b.b.x, true, false), any(vec2<bool>(global0.b.b.x, false))), true));
    let var_2 = Struct_2(global0.b, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.d.x) + _wgslsmith_f_op_f32(max(844f, 1838f))), func_1(!select(select(vec4<bool>(global0.b.b.x, true, true, global0.b.b.x), vec4<bool>(global0.b.b.x, global0.b.b.x, true, global0.b.b.x), vec4<bool>(global0.b.b.x, global0.b.b.x, false, false)), !vec4<bool>(global0.b.b.x, true, global0.b.b.x, true), global0.b.b.x & global0.b.b.x)), !(!vec4<bool>(true, !global0.b.b.x, false || global0.b.b.x, true)), vec2<u32>(global0.b.e.x, firstTrailingBit(global0.b.e.x)));
    var var_3 = global0.b;
    let var_4 = _wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(countOneBits(abs(max(vec4<u32>(42540u, 49501u, global0.d, var_3.a), vec4<u32>(4294967295u, var_2.a.a, 35242u, var_3.a)))), _wgslsmith_sub_vec4_u32(~(~vec4<u32>(var_3.e.x, 58661u, 1u, global0.d)), _wgslsmith_clamp_vec4_u32(vec4<u32>(93019u, 73416u, var_3.a, var_2.e.x), ~vec4<u32>(2931u, 32087u, var_2.e.x, var_3.a), ~vec4<u32>(var_2.e.x, 1u, 4294967295u, 0u)))), ~(~(firstTrailingBit(vec4<u32>(39884u, var_3.e.x, global0.d, 4294967295u)) >> (_wgslsmith_mult_vec4_u32(vec4<u32>(27968u, 14537u, global0.d, 4294967295u), vec4<u32>(var_2.a.e.x, 57114u, global0.d, 4294967295u)) % vec4<u32>(32u)))));
    global2 = array<vec3<u32>, 22>();
    global1 = array<Struct_3, 8>();
    global1 = array<Struct_3, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-(max(~vec3<i32>(2147483647i, 29348i, var_0), min(global0.c, global0.c)) | vec3<i32>(0i, 0i, -4773i)));
}

