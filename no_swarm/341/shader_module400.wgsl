struct Struct_1 {
    a: u32,
    b: vec3<bool>,
    c: i32,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: bool,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: u32,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(690f, Struct_1(26483u, vec3<bool>(false, false, false), 1i, vec2<i32>(0i, 2147483647i), vec3<u32>(55563u, 0u, 2453u)), Struct_1(54665u, vec3<bool>(false, true, false), 17096i, vec2<i32>(i32(-2147483648), 1i), vec3<u32>(119314u, 0u, 59358u)), Struct_1(0u, vec3<bool>(false, true, false), 0i, vec2<i32>(10274i, -1i), vec3<u32>(24928u, 0u, 4294967295u)), Struct_1(20678u, vec3<bool>(true, true, false), i32(-2147483648), vec2<i32>(2147483647i, -1i), vec3<u32>(1u, 4294967295u, 57305u)));

var<private> global1: array<Struct_2, 4>;

var<private> global2: array<vec4<i32>, 3> = array<vec4<i32>, 3>(vec4<i32>(97128i, 2147483647i, 6897i, 1i), vec4<i32>(0i, i32(-2147483648), 2147483647i, 10436i), vec4<i32>(-17434i, 1i, 60575i, 43385i));

var<private> global3: array<vec4<f32>, 28>;

var<private> global4: array<bool, 32> = array<bool, 32>(true, false, true, false, true, true, true, true, false, true, false, false, false, true, true, false, false, true, false, true, false, false, true, true, true, false, false, true, false, false, false, true);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> u32 {
    var var_0 = Struct_4(!(!(!(!vec4<bool>(false, global4[_wgslsmith_index_u32(global0.e.e.x, 32u)], arg_1.x, true)))), firstTrailingBit(global0.c.c) <= ~(-2147483647i), vec4<f32>(arg_0, -2464f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(733f * -363f) - _wgslsmith_f_op_f32(global0.a + -333f)), _wgslsmith_f_op_f32(-global0.a))), _wgslsmith_f_op_f32(min(120f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global0.a * 380f)))))));
    let var_1 = Struct_4(!vec4<bool>(any(!global0.e.b), true, false, arg_1.x), global0.a <= _wgslsmith_f_op_f32(var_0.c.x * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0))), var_0.c);
    global0 = global1[_wgslsmith_index_u32(u_input.a, 4u)];
    global3 = array<vec4<f32>, 28>();
    var var_2 = select(~1198i, 1i, var_1.a.x);
    return ~global0.e.e.x;
}

fn func_2() -> Struct_2 {
    global4 = array<bool, 32>();
    global3 = array<vec4<f32>, 28>();
    let var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a, global0.a, global0.a))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.a * global0.a), 314f, 400f))), vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.a, 169f, global0.c.b.x))))), 1000f, 642f)));
    let var_1 = any(!vec2<bool>(global0.e.b.x, !(global0.b.d.x != u_input.b)));
    var var_2 = global1[_wgslsmith_index_u32((~(u_input.a >> (_wgslsmith_div_u32(0u, u_input.a) % 32u)) << (19907u % 32u)) << (global0.c.a % 32u), 4u)];
    return Struct_2(-1528f, Struct_1(44267u, var_2.e.b, firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(var_2.e.c, 14327i, global0.e.c), vec3<i32>(var_2.e.d.x, 0i, var_2.e.d.x))) ^ max(u_input.b, _wgslsmith_mod_i32(49143i, -15166i)), vec2<i32>(countOneBits(6706i), _wgslsmith_div_i32(~global0.d.d.x, i32(-1i) * -5245i)), firstLeadingBit(vec3<u32>(~var_2.d.e.x, u_input.a | 28858u, var_2.e.e.x))), Struct_1(var_2.b.e.x, vec3<bool>(all(!vec4<bool>(var_1, true, false, false)), any(vec3<bool>(var_2.e.b.x, true, global0.b.b.x)), 46233i <= -u_input.b), global0.e.c, global0.b.d, vec3<u32>(~_wgslsmith_add_u32(var_2.b.e.x, 1u), func_3(_wgslsmith_f_op_f32(global0.a - 962f), !var_2.d.b.yz), 25431u)), var_2.d, var_2.c);
}

fn func_1(arg_0: vec3<bool>, arg_1: bool) -> u32 {
    let var_0 = Struct_4(!vec4<bool>(false, !global4[_wgslsmith_index_u32(1u, 32u)], all(vec3<bool>(true, true, false)), true), !arg_1, _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-634f, global0.a, -1432f, -541f)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1146f, _wgslsmith_f_op_f32(1039f + global0.a), 1000f, 1f)))));
    var var_1 = global1[_wgslsmith_index_u32(global0.e.a, 4u)];
    global4 = array<bool, 32>();
    var var_2 = func_2();
    var var_3 = Struct_2(_wgslsmith_f_op_f32(f32(-1f) * -484f), Struct_1(u_input.a & u_input.a, arg_0, func_2().c.d.x, vec2<i32>(~global0.d.c, max(u_input.b, -2147483647i)) | ~var_1.c.d, ~(~countOneBits(var_2.e.e))), func_2().d, func_2().d, var_2.c);
    return ~(~abs(1u));
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec4<i32>, 3>();
    let var_0 = global1[_wgslsmith_index_u32(0u, 4u)];
    global4 = array<bool, 32>();
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-655f, -1066f, 1121f, global0.a)))) - _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a, _wgslsmith_f_op_f32(-var_0.a), var_0.a, _wgslsmith_f_op_f32(182f * -1062f)))))));
    global2 = array<vec4<i32>, 3>();
    global2 = array<vec4<i32>, 3>();
    global2 = array<vec4<i32>, 3>();
    var var_2 = _wgslsmith_add_vec2_u32(vec2<u32>(func_1(!select(var_0.b.b, vec3<bool>(global4[_wgslsmith_index_u32(var_0.b.a, 32u)], global0.e.b.x, true), false), var_0.d.b.x || true), 11034u), countOneBits(vec2<u32>(func_3(_wgslsmith_f_op_f32(-var_1.x), global0.e.b.xz), firstLeadingBit(~1u))));
    global1 = array<Struct_2, 4>();
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(global0.d.d.x, _wgslsmith_div_i32(-21153i, 2147483647i)), firstLeadingBit(1i << (0u % 32u))), -37595i, min(_wgslsmith_add_i32(17073i, -36368i) << (var_0.e.a % 32u), u_input.b ^ (u_input.b | global0.d.d.x)), var_0.b.c), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1000f)) * 116f)), global0.a), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)) - _wgslsmith_f_op_vec4_f32(var_1 * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-var_1)))), ~var_0.e.e.x, global0.d.e);
}

