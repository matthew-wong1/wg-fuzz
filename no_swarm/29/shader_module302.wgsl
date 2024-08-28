struct Struct_1 {
    a: i32,
    b: bool,
    c: bool,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_2,
    c: bool,
    d: u32,
}

struct Struct_5 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32> = vec2<u32>(13424u, 1u);

var<private> global1: array<vec2<f32>, 7>;

var<private> global2: bool = false;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_3) -> u32 {
    let var_0 = arg_0.c.a;
    var var_1 = vec4<i32>(var_0 >> (54794u % 32u), -firstLeadingBit(-(~2147483647i)), -_wgslsmith_sub_i32(-1i >> (arg_0.d % 32u), 1i), i32(-1i) * -2150i);
    var var_2 = _wgslsmith_div_vec3_i32(vec3<i32>(-1i) * -var_1.xyz, -(~(vec3<i32>(1i, -33367i, 0i) & countOneBits(var_1.zzw))));
    var_1 = vec4<i32>(abs(var_2.x), ~(-55857i), ~firstTrailingBit(u_input.b.x), (~(-1i) << (select(u_input.a.x, 4161u, arg_0.c.b) % 32u)) ^ var_0);
    global2 = false;
    return 13059u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec2<u32>, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_div_u32(firstLeadingBit(abs(u_input.a.x)), arg_1.x), 4294967295u | ~arg_1.x, countOneBits(arg_1.x));
    let var_1 = Struct_3(Struct_2(vec3<u32>(func_3(Struct_3(Struct_2(u_input.a.zwy), 6470u, Struct_1(17068i, arg_2.c, false), 4294967295u)), _wgslsmith_div_u32(~var_0.x, arg_1.x), ~u_input.a.x)), abs(select(~var_0.x << (~var_0.x % 32u), _wgslsmith_div_u32(global0.x, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global0.x, var_0.x), vec3<u32>(75877u, 0u, 14434u))), true)), arg_2, _wgslsmith_dot_vec4_u32(~vec4<u32>(0u, ~0u, 33090u, firstTrailingBit(arg_1.x)), vec4<u32>(~(~4294967295u), 11120u, ~0u, 0u)));
    var var_2 = ~(~countOneBits(0u));
    global1 = array<vec2<f32>, 7>();
    var var_3 = false;
    return u_input.a.x;
}

fn func_4(arg_0: Struct_5, arg_1: vec4<u32>, arg_2: f32, arg_3: vec4<i32>) -> Struct_2 {
    global1 = array<vec2<f32>, 7>();
    let var_0 = _wgslsmith_dot_vec3_u32(vec3<u32>(1u >> (func_2(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, false)), vec2<u32>(global0.x, 1u), Struct_1(-2147483647i, true, false)) % 32u), ~(global0.x ^ firstTrailingBit(arg_1.x)), u_input.a.x), arg_1.ywy);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(select(arg_0.a, arg_0.b.x, false)), _wgslsmith_f_op_f32(min(-857f, 349f)), select(true, true, false))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_2 - 1561f), arg_0.a)))) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(-114f * arg_2), arg_0.a, 837f))));
    global1 = array<vec2<f32>, 7>();
    return Struct_2(arg_1.wzw);
}

fn func_1(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: vec4<bool>) -> bool {
    global1 = array<vec2<f32>, 7>();
    global0 = u_input.a.xz;
    let var_0 = Struct_3(func_4(Struct_5(_wgslsmith_f_op_f32(-576f - _wgslsmith_div_f32(675f, -225f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1[_wgslsmith_index_u32(global0.x, 7u)]))), vec4<u32>(_wgslsmith_add_u32(50175u, 0u), ~_wgslsmith_add_u32(10345u, u_input.a.x), global0.x, _wgslsmith_clamp_u32(func_2(arg_3.wx, vec2<u32>(4294967295u, u_input.a.x), Struct_1(1i, arg_0, arg_0)), 1u, ~8177u)), _wgslsmith_f_op_f32(1610f - _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(-1000f, 458f)), _wgslsmith_f_op_f32(f32(-1f) * -184f), !arg_0))), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(-2147483647i, 3268i, u_input.b.x, arg_2)), vec4<i32>(-43703i, 0i, 0i, 1i))), _wgslsmith_sub_u32(20954u, 2122u), Struct_1(~(1i & select(arg_2, -46039i, arg_0)), (1u > global0.x) | all(select(vec3<bool>(false, arg_0, false), arg_3.wzz, true)), false), ~firstLeadingBit(1u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -477f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-236f, -625f)))))));
    var var_2 = _wgslsmith_add_u32(1u, _wgslsmith_sub_u32(65381u, ~(var_0.a.a.x ^ 7869u) ^ (0u >> ((global0.x | 42704u) % 32u))));
    return !(!(_wgslsmith_div_u32(68808u, global0.x) < ~1u)) && any(!vec2<bool>(true, all(vec3<bool>(false, arg_0, arg_3.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec2<f32>, 7>();
    global1 = array<vec2<f32>, 7>();
    global1 = array<vec2<f32>, 7>();
    global2 = func_1(any(select(vec3<bool>(true, true, true), vec3<bool>(u_input.b.x == u_input.b.x, u_input.b.x >= u_input.b.x, true), vec3<bool>(true, true, true))), -59285i, ~(~u_input.b.x), !vec4<bool>(false, false, ~u_input.a.x > global0.x, all(select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, false)))));
    let var_0 = Struct_2(_wgslsmith_div_vec3_u32(u_input.a.wxw, vec3<u32>(abs(~global0.x), u_input.a.x, func_3(Struct_3(Struct_2(vec3<u32>(101424u, u_input.a.x, u_input.a.x)), u_input.a.x, Struct_1(u_input.b.x, true, false), 31450u)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u | firstTrailingBit(4294967295u), _wgslsmith_clamp_i32(~u_input.b.x, u_input.b.x, 12553i));
}

