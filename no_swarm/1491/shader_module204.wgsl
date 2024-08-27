struct Struct_1 {
    a: vec2<f32>,
    b: vec2<bool>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: f32,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: array<i32, 16> = array<i32, 16>(6687i, -15658i, -5640i, 2147483647i, 27494i, 14429i, i32(-2147483648), -1i, -1i, -15795i, -11781i, 0i, -4412i, 18773i, 2147483647i, 0i);

var<private> global2: array<Struct_1, 2> = array<Struct_1, 2>(Struct_1(vec2<f32>(1604f, -1100f), vec2<bool>(false, true), vec3<i32>(1i, i32(-2147483648), 1022i)), Struct_1(vec2<f32>(505f, 1000f), vec2<bool>(true, true), vec3<i32>(2147483647i, -1i, 35531i)));

var<private> global3: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(2184f, vec3<i32>(1i, i32(-2147483648), -1i)), Struct_3(714f, vec3<i32>(i32(-2147483648), -8084i, 12322i)), Struct_3(-487f, vec3<i32>(-53842i, 33171i, 0i)), Struct_3(-1000f, vec3<i32>(0i, 23955i, 2147483647i)), Struct_3(1330f, vec3<i32>(12030i, 0i, i32(-2147483648))), Struct_3(1000f, vec3<i32>(-4384i, 2862i, -46052i)));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: i32) -> i32 {
    let var_0 = firstLeadingBit(vec4<u32>(1u, ~_wgslsmith_clamp_u32(global0.d, global0.d, 50102u), ~u_input.a, 56496u));
    let var_1 = Struct_2(global2[_wgslsmith_index_u32(u_input.a, 2u)], max(select(~vec4<i32>(11919i, global0.e.c.x, global1[_wgslsmith_index_u32(4294967295u, 16u)], global1[_wgslsmith_index_u32(1495u, 16u)]), vec4<i32>(firstTrailingBit(-1i), arg_0, arg_0, global0.e.c.x), global0.a.x), vec4<i32>(countOneBits(arg_0), -(~(-16422i)), global0.e.c.x, 18475i)), global0.c.a.x);
    var var_2 = vec3<bool>(true, false, global0.c.b.x);
    global2 = array<Struct_1, 2>();
    global1 = array<i32, 16>();
    return -1i;
}

fn func_2() -> Struct_4 {
    return Struct_4(vec4<bool>(true, global0.e.c.x <= -func_3(-11943i), false, global0.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.c.a.x), global0.c.a.x), _wgslsmith_f_op_f32(215f * _wgslsmith_f_op_f32(max(-504f, global0.b)))) - _wgslsmith_f_op_f32(-global0.c.a.x)), global0.e, ~u_input.a, global2[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(45687u, 34176u, u_input.a, 4294967295u)), select(firstLeadingBit(vec4<u32>(u_input.a, global0.d, 1u, global0.d)), ~vec4<u32>(17694u, global0.d, u_input.a, global0.d), global0.e.b.x)), 2u)]);
}

fn func_1() -> Struct_4 {
    let var_0 = global0.e.a.x;
    var var_1 = global3[_wgslsmith_index_u32(global0.d, 6u)];
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(var_1.a * global0.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-1726f)), _wgslsmith_f_op_f32(f32(-1f) * -183f)), -376f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -527f), global0.b));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1();
    let var_0 = _wgslsmith_mod_i32(func_3(~func_2().c.c.x) << (~1u % 32u), global0.c.c.x);
    global1 = array<i32, 16>();
    var var_1 = global0.e.a.x;
    global0 = Struct_4(select(vec4<bool>(false, false, global0.c.b.x, global0.c.a.x >= _wgslsmith_f_op_f32(-global0.b)), global0.a, func_2().a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1361f, _wgslsmith_f_op_f32(349f - 877f))) - _wgslsmith_f_op_f32(sign(global0.e.a.x))), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(846f, global0.b) * _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-635f, -401f), global0.e.a, false))) + vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1640f), _wgslsmith_div_f32(global0.b, -391f))), func_2().a.xw, ~global0.e.c), ~(~_wgslsmith_mod_u32(global0.d, 23398u)), func_2().e);
    let var_2 = 14007i;
    global3 = array<Struct_3, 6>();
    global1 = array<i32, 16>();
    let var_3 = global3[_wgslsmith_index_u32(~(~4294967295u), 6u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1706f, 186f))))), abs(~select(~vec3<u32>(u_input.a, u_input.a, 4294967295u), firstTrailingBit(vec3<u32>(u_input.a, global0.d, u_input.a)), select(global0.a.wxw, vec3<bool>(global0.a.x, global0.c.b.x, true), global0.e.b.x))), countOneBits(func_2().e.c.x), firstLeadingBit(global0.e.c));
}

