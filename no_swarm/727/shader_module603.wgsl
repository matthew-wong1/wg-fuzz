struct Struct_1 {
    a: vec3<u32>,
    b: f32,
    c: vec2<f32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: vec3<bool>,
    c: u32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<f32>,
    c: i32,
    d: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 4> = array<f32, 4>(-291f, -277f, 1000f, 440f);

var<private> global1: array<vec2<bool>, 11>;

var<private> global2: Struct_3 = Struct_3(vec4<i32>(33612i, 0i, 14593i, 2147483647i), vec3<bool>(false, true, true), 80895u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec3<u32>, arg_1: Struct_4) -> u32 {
    let var_0 = !(!arg_1.d.yy);
    global1 = array<vec2<bool>, 11>();
    global2 = Struct_3(vec4<i32>(_wgslsmith_sub_i32(0i, ~(arg_1.c >> (43321u % 32u))), min(select(arg_1.c, i32(-1i) * -2147483647i, arg_1.c >= arg_1.c), -2147483647i), -_wgslsmith_mult_i32(min(global2.a.x, -11038i), global2.a.x), -2147483647i), !select(select(select(global2.b, arg_1.d, arg_1.d.x), vec3<bool>(global2.b.x, arg_1.d.x, true), arg_1.d), !global2.b, global2.b), 1u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.c.x) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b.x)), _wgslsmith_div_f32(-377f, global0[_wgslsmith_index_u32((4294967295u << (global2.c % 32u)) & (6290u << (1u % 32u)), 4u)])));
    global1 = array<vec2<bool>, 11>();
    return 44665u;
}

fn func_2(arg_0: f32, arg_1: u32) -> Struct_1 {
    global1 = array<vec2<bool>, 11>();
    let var_0 = Struct_4(Struct_1(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.c, global2.c, u_input.a, 1u), vec4<u32>(u_input.a, global2.c, arg_1, 0u)), u_input.a, max(1u, u_input.a)) | vec3<u32>(func_3(vec3<u32>(1u, 9802u, u_input.a), Struct_4(Struct_1(vec3<u32>(u_input.a, global2.c, u_input.a), 650f, vec2<f32>(global0[_wgslsmith_index_u32(0u, 4u)], arg_0), true), vec2<f32>(global0[_wgslsmith_index_u32(u_input.a, 4u)], global0[_wgslsmith_index_u32(global2.c, 4u)]), global2.a.x, vec3<bool>(global2.b.x, true, global2.b.x))), ~global2.c, ~global2.c), _wgslsmith_f_op_f32(ceil(arg_0)), _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(226f, global0[_wgslsmith_index_u32(4294967295u, 4u)]), vec2<f32>(arg_0, global0[_wgslsmith_index_u32(17157u, 4u)])) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(4294967295u, 4u)], -260f))))), false), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0[_wgslsmith_index_u32(arg_1, 4u)], global0[_wgslsmith_index_u32(arg_1, 4u)]))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(493f, global0[_wgslsmith_index_u32(0u, 4u)]))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1081f) * vec2<f32>(-749f, 186f))))), global2.a.x >> (arg_1 % 32u), select(!(!vec3<bool>(global2.b.x, true, global2.b.x)), global2.b, true));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_u32(~(abs(var_0.a.a) ^ ~vec3<u32>(37607u, global2.c, 19764u)), var_0.a.a), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -743f), 688f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(var_0.a.c, vec2<f32>(647f, 1580f), vec2<bool>(global2.b.x, false)))), all(vec4<bool>(!all(var_0.d), !(var_0.c == -2147483647i), var_0.a.d, var_0.d.x)));
    let var_2 = ~_wgslsmith_mod_i32(~(i32(-1i) * -6505i), global2.a.x) & ~(-1i);
    let var_3 = Struct_1(_wgslsmith_add_vec3_u32(~(reverseBits(vec3<u32>(166u, u_input.a, u_input.a)) >> (var_0.a.a % vec3<u32>(32u))), vec3<u32>(abs(_wgslsmith_mod_u32(global2.c, 27715u)), firstTrailingBit(~0u), ~global2.c >> (24273u % 32u))), global0[_wgslsmith_index_u32(~_wgslsmith_mult_u32(~global2.c, _wgslsmith_dot_vec4_u32(~vec4<u32>(global2.c, arg_1, arg_1, global2.c), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.c, var_1.a.x, 10704u, 1u), vec4<u32>(u_input.a, 35546u, 21878u, var_0.a.a.x), vec4<u32>(32229u, 99724u, arg_1, 3180u)))), 4u)], vec2<f32>(global0[_wgslsmith_index_u32(~1u, 4u)], _wgslsmith_f_op_f32(934f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - var_1.c.x) * _wgslsmith_f_op_f32(floor(1023f))))), true);
    return Struct_1(~_wgslsmith_add_vec3_u32(~vec3<u32>(4294967295u, u_input.a, var_0.a.a.x), countOneBits(~var_3.a)), var_0.b.x, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_1.c.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1503f * _wgslsmith_f_op_f32(var_3.b + var_1.c.x)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global2.c, 37602u), var_0.a.a), 4u)]))), false);
}

fn func_4(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: f32, arg_3: vec3<bool>) -> Struct_2 {
    global1 = array<vec2<bool>, 11>();
    let var_0 = arg_0.d;
    global2 = Struct_3(-global2.a, vec3<bool>(func_2(_wgslsmith_f_op_f32(max(_wgslsmith_div_f32(var_0.c.x, arg_2), _wgslsmith_f_op_f32(-var_0.c.x))), var_0.a.x).d, _wgslsmith_f_op_f32(sign(305f)) <= -1020f, !(_wgslsmith_f_op_f32(floor(-203f)) == _wgslsmith_f_op_f32(abs(arg_2)))), arg_1.x);
    var var_1 = Struct_2(func_2(1458f, _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 84450u), vec2<u32>(var_0.a.x, 44481u)), arg_0.b.a.zx | vec2<u32>(18847u, 4294967295u)), u_input.a)), Struct_1(_wgslsmith_div_vec3_u32(func_2(global0[_wgslsmith_index_u32(0u, 4u)], 0u).a >> (arg_0.a.a % vec3<u32>(32u)), arg_0.a.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(982f, 0u).b - _wgslsmith_f_op_f32(round(-1000f))), 925f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_0.c), _wgslsmith_div_vec2_f32(vec2<f32>(-876f, global0[_wgslsmith_index_u32(arg_1.x, 4u)]), arg_0.d.c))), arg_0.d.d), arg_0.c, var_0, 1u);
    let var_2 = -_wgslsmith_mult_i32(firstLeadingBit(global2.a.x) & _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(6448i, -2198i), global2.a.xz), firstLeadingBit(2210i)), -2147483647i);
    return arg_0;
}

fn func_1(arg_0: f32) -> Struct_2 {
    var var_0 = !(!global2.b.x);
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    var var_1 = -global2.a.x;
    global0 = array<f32, 4>();
    return func_4(Struct_2(func_2(_wgslsmith_f_op_f32(sign(457f)), ~16662u), func_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(round(arg_0)), _wgslsmith_f_op_f32(sign(arg_0)))), 15367u), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0, global0[_wgslsmith_index_u32(1u, 4u)], -1410f) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(global2.c, 4u)], global0[_wgslsmith_index_u32(global2.c, 4u)], 1987f), vec3<f32>(global0[_wgslsmith_index_u32(global2.c, 4u)], global0[_wgslsmith_index_u32(1u, 4u)], global0[_wgslsmith_index_u32(u_input.a, 4u)]), vec3<bool>(global2.b.x, global2.b.x, global2.b.x)))), vec3<f32>(_wgslsmith_f_op_f32(-1000f - global0[_wgslsmith_index_u32(global2.c, 4u)]), _wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-242f, arg_0)))), func_2(445f, global2.c), u_input.a), ~(~(~(~vec2<u32>(global2.c, 735u)))), arg_0, !select(!(!vec3<bool>(global2.b.x, false, false)), global2.b, global2.b));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 4>();
    global1 = array<vec2<bool>, 11>();
    global1 = array<vec2<bool>, 11>();
    let var_0 = true;
    let var_1 = func_1(_wgslsmith_f_op_f32(810f + global0[_wgslsmith_index_u32(_wgslsmith_add_u32(~global2.c, 48646u), 4u)]));
    var var_2 = -firstTrailingBit(i32(-1i) * -global2.a.x);
    let var_3 = Struct_3(reverseBits(-(vec4<i32>(global2.a.x, global2.a.x, global2.a.x, global2.a.x) >> (firstTrailingBit(vec4<u32>(var_1.a.a.x, var_1.e, var_1.b.a.x, 53412u)) % vec4<u32>(32u)))), !global2.b, 5322u);
    let var_4 = func_1(_wgslsmith_f_op_f32(var_1.d.b - global0[_wgslsmith_index_u32(func_2(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-2303f, global0[_wgslsmith_index_u32(var_1.d.a.x, 4u)]))), abs(~var_3.c)).a.x, 4u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(517f + 276f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a.c) - vec2<f32>(1023f, _wgslsmith_f_op_f32(1241f - var_4.a.c.x))), vec2<f32>(var_1.b.c.x, _wgslsmith_f_op_f32(256f - 507f))));
}

