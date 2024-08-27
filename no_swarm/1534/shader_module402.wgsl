struct Struct_1 {
    a: bool,
    b: f32,
    c: vec2<i32>,
    d: f32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_2,
    d: f32,
}

struct Struct_4 {
    a: bool,
    b: Struct_2,
    c: f32,
    d: bool,
    e: Struct_3,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 10> = array<vec2<u32>, 10>(vec2<u32>(41681u, 56883u), vec2<u32>(72732u, 33202u), vec2<u32>(0u, 11975u), vec2<u32>(28341u, 13316u), vec2<u32>(6557u, 90263u), vec2<u32>(83499u, 10411u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(8160u, 41448u), vec2<u32>(1u, 1u));

var<private> global1: array<i32, 2> = array<i32, 2>(1i, -52184i);

var<private> global2: array<i32, 2>;

var<private> global3: Struct_1;

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_5, arg_2: vec4<f32>) -> bool {
    var var_0 = vec2<u32>(firstTrailingBit(1u), arg_1.b);
    global0 = array<vec2<u32>, 10>();
    var var_1 = arg_1;
    return firstLeadingBit(_wgslsmith_clamp_u32(~abs(32869u), ~4294967295u, 18494u)) == _wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(var_1.b & var_0.x, 8914u), ~u_input.b.x, 4294967295u), min(~(vec3<u32>(u_input.c.x, var_0.x, 80758u) << (vec3<u32>(72729u, 0u, var_1.b) % vec3<u32>(32u))), _wgslsmith_sub_vec3_u32(~vec3<u32>(66982u, var_1.b, 35056u), ~vec3<u32>(var_0.x, 1u, var_0.x))));
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_5(Struct_1(!(true | global3.a), global3.b, global3.c, _wgslsmith_div_f32(global3.d, global3.b), vec3<f32>(_wgslsmith_f_op_f32(-global3.d), 922f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-394f * 158f)))), countOneBits(abs(_wgslsmith_clamp_u32(14290u, u_input.b.x, ~16172u))));
    global1 = array<i32, 2>();
    global1 = array<i32, 2>();
    var var_1 = vec2<bool>(false, !global3.a);
    global0 = array<vec2<u32>, 10>();
    return Struct_3(vec3<bool>(func_3(vec2<bool>(false, true), Struct_5(var_0.a, var_0.b), vec4<f32>(global3.b, -1000f, var_0.a.d, 138f)) && var_1.x, var_1.x, false), Struct_2(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(select(u_input.b, vec3<u32>(29788u, 0u, 59298u), vec3<bool>(var_0.a.a, global3.a, global3.a)), u_input.b), var_0.b)), Struct_2(_wgslsmith_div_u32(var_0.b, var_0.b)), _wgslsmith_f_op_f32(abs(-407f)));
}

fn func_4(arg_0: Struct_3, arg_1: u32, arg_2: Struct_4, arg_3: bool) -> Struct_1 {
    global3 = Struct_1(any(vec2<bool>(arg_0.a.x, arg_3)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.e.d))), firstTrailingBit(reverseBits(abs(vec2<i32>(6173i, global3.c.x)))), func_2().d, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1407f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c - 1066f)), global3.e.x) * vec3<f32>(891f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(global3.d)), func_2().d), 1501f)));
    var var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(arg_2.e.d)), _wgslsmith_f_op_f32(-global3.d)))))));
    global3 = Struct_1(-1i > global1[_wgslsmith_index_u32(~select(~1u, 1u, any(vec4<bool>(arg_3, false, arg_2.e.a.x, arg_3))), 2u)], _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(323f * 1437f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-191f)) * arg_2.c))), -global3.c, global3.e.x, global3.e);
    var var_1 = _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(_wgslsmith_add_u32(arg_2.b.a, arg_1) & (4294967295u >> (arg_0.b.a % 32u)), _wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c.a, 106u, u_input.b.x), u_input.b) >> ((86257u << (arg_2.b.a % 32u)) % 32u)), abs(arg_0.c.a), _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x, 98552u, 4294967295u, arg_0.c.a), vec4<u32>(arg_0.b.a, arg_2.b.a, arg_2.e.c.a, arg_1)), ~vec4<u32>(4294967295u, arg_1, 4294967295u, u_input.b.x)), ~firstTrailingBit(4294967295u), arg_1)), firstTrailingBit(reverseBits(u_input.b)));
    var var_2 = Struct_1(all(vec4<bool>(true, true, true, any(arg_2.e.a))) | (func_3(arg_2.e.a.xz, Struct_5(Struct_1(arg_3, -581f, global3.c, arg_2.c, vec3<f32>(arg_2.e.d, 914f, global3.e.x)), 0u), vec4<f32>(global3.e.x, 104f, -135f, -1000f)) | arg_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-295f, arg_2.c)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(949f, global3.d)), 1180f), true))), firstLeadingBit(-select(abs(vec2<i32>(41308i, 18498i)), -global3.c, true)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -134f))), global3.e);
    return Struct_1(any(!(!vec3<bool>(arg_0.a.x, false, arg_3))), arg_0.d, vec2<i32>(global1[_wgslsmith_index_u32(11417u, 2u)], u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(min(-229f, arg_0.d))))), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.b))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)), _wgslsmith_f_op_f32(floor(232f))), var_2.e)));
}

fn func_1(arg_0: vec2<i32>) -> Struct_1 {
    var var_0 = !(!vec3<bool>(select(global3.a, global3.a, true), true, true));
    var var_1 = ~_wgslsmith_add_vec2_u32(~min(u_input.c, vec2<u32>(u_input.c.x, u_input.c.x) << (global0[_wgslsmith_index_u32(u_input.b.x, 10u)] % vec2<u32>(32u))), ~(~(~vec2<u32>(u_input.b.x, 8626u))));
    global0 = array<vec2<u32>, 10>();
    let var_2 = reverseBits(arg_0.x);
    global1 = array<i32, 2>();
    return func_4(func_2(), 14482u, Struct_4(true, func_2().c, global3.b, !(!func_3(var_0.zz, Struct_5(Struct_1(true, -107f, arg_0, global3.b, vec3<f32>(global3.e.x, global3.d, global3.e.x)), u_input.c.x), vec4<f32>(global3.d, 876f, global3.b, 1225f))), Struct_3(select(select(vec3<bool>(true, global3.a, true), vec3<bool>(false, true, var_0.x), var_0.x), func_2().a, !vec3<bool>(true, true, global3.a)), func_2().c, func_2().c, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global3.d * -1000f), _wgslsmith_f_op_f32(sign(725f))))), min(_wgslsmith_clamp_i32(arg_0.x ^ global1[_wgslsmith_index_u32(u_input.b.x, 2u)], global3.c.x, ~2147483647i), 2147483647i) == 2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(~select(global3.c, vec2<i32>(global2[_wgslsmith_index_u32(~u_input.c.x, 2u)], -85271i), vec2<bool>(!global3.a, false)));
    let var_1 = Struct_4(all(!vec4<bool>(true, true, true, global3.a)), func_2().c, -600f, (true == !(!var_0.a)) && var_0.a, func_2());
    global0 = array<vec2<u32>, 10>();
    var var_2 = abs(-abs(-44665i));
    let var_3 = func_2().c.a;
    global3 = func_4(var_1.e, _wgslsmith_sub_u32(~abs(func_2().c.a), var_3), var_1, true);
    var var_4 = func_2().a;
    var_4 = vec3<bool>(-15220i > var_0.c.x, func_1(var_0.c).a & var_4.x, !((var_1.a & var_1.e.a.x) || true));
    global0 = array<vec2<u32>, 10>();
    let x = u_input.a;
    s_output = StorageBuffer(0u, -2147483647i, -(~vec3<i32>(~(-32643i), 37854i, i32(-1i) * -2147483647i)), u_input.c.x);
}

