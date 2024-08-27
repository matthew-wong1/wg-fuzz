struct Struct_1 {
    a: vec3<i32>,
    b: f32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: i32,
    c: f32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: i32,
    d: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 1> = array<Struct_2, 1>(Struct_2(vec3<f32>(1211f, 1055f, -990f), 8423i, 1252f, vec3<u32>(28077u, 158754u, 16658u), vec4<i32>(-16890i, 2147483647i, -12113i, 28192i)));

var<private> global1: array<i32, 15> = array<i32, 15>(0i, i32(-2147483648), -67502i, 4695i, -9955i, 0i, -24452i, 1589i, -6065i, 12608i, -20352i, 2147483647i, -15044i, 62038i, 55606i);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_1() -> i32 {
    var var_0 = _wgslsmith_dot_vec4_u32(~reverseBits(vec4<u32>(u_input.c, 21178u, u_input.a, 0u) & vec4<u32>(u_input.a, u_input.a, u_input.b.x, 1u)), _wgslsmith_mod_vec4_u32(~vec4<u32>(1u, u_input.c ^ u_input.c, u_input.a, u_input.b.x), ~(vec4<u32>(68898u, 0u, 7082u, 35621u) ^ vec4<u32>(u_input.b.x, u_input.a, u_input.a, u_input.a))));
    return -10374i;
}

fn func_2(arg_0: vec3<i32>) -> i32 {
    return select(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(4294967295u, 15u)], u_input.d), firstLeadingBit(-1i) & -(0i & _wgslsmith_div_i32(arg_0.x, global1[_wgslsmith_index_u32(u_input.c, 15u)])), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1130f)) - _wgslsmith_f_op_f32(max(-215f, 881f))) + _wgslsmith_f_op_f32(1113f - _wgslsmith_f_op_f32(step(-1000f, 503f)))) < _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1885f))));
}

fn func_3(arg_0: u32, arg_1: bool, arg_2: vec2<u32>) -> Struct_1 {
    global0 = array<Struct_2, 1>();
    global0 = array<Struct_2, 1>();
    let var_0 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(-893f)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-994f, _wgslsmith_f_op_f32(-1000f - -1879f))), _wgslsmith_f_op_f32(floor(351f))), _wgslsmith_div_i32(max(_wgslsmith_add_i32(-global1[_wgslsmith_index_u32(19918u, 15u)], _wgslsmith_sub_i32(u_input.d, u_input.d)), global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(~u_input.a, 0u), 15u)]), -2147483647i | _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(34803u, 15u)]), firstTrailingBit(vec2<i32>(u_input.d, global1[_wgslsmith_index_u32(u_input.c, 15u)])))), 481f, vec3<u32>(0u, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_0, arg_0, arg_0, 47690u) & vec4<u32>(1u, u_input.c, arg_2.x, u_input.a), vec4<u32>(22116u, arg_2.x, 0u, 38752u) | vec4<u32>(arg_0, 28074u, arg_2.x, 1u)) << (1u % 32u)), vec4<i32>(-13399i, abs(-49600i & u_input.d), ~(~2147483647i), -1i));
    return Struct_1(var_0.e.yyx, -599f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(4294967295u, 15u)];
    var_0 = _wgslsmith_dot_vec3_i32(~vec3<i32>(func_1(), select(u_input.d, ~global1[_wgslsmith_index_u32(u_input.c, 15u)], all(vec4<bool>(false, false, true, false))), _wgslsmith_div_i32(-global1[_wgslsmith_index_u32(5720u, 15u)], 1i << (u_input.b.x % 32u))), vec3<i32>(-1i) * -countOneBits(firstLeadingBit(vec3<i32>(77495i, -2147483647i, global1[_wgslsmith_index_u32(1u, 15u)]))));
    let var_1 = func_3(firstTrailingBit(u_input.b.x), (_wgslsmith_mult_i32(1i, global1[_wgslsmith_index_u32(~4294967295u, 15u)]) & func_2(vec3<i32>(-2147483647i, -1i, 1i))) < -7489i, u_input.b);
    let var_2 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_1.b)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_1.b * var_1.b)))), 441f), 2147483647i, var_1.b, min(reverseBits(select(~vec3<u32>(1816u, 8811u, u_input.c), ~vec3<u32>(u_input.b.x, 1u, u_input.a), true)), vec3<u32>(0u, max(u_input.c, 14977u), u_input.a)), ~(~abs(vec4<i32>(var_1.a.x, -2147483647i, 1i, global1[_wgslsmith_index_u32(u_input.a, 15u)]))) ^ vec4<i32>(var_1.a.x, _wgslsmith_mult_i32(~global1[_wgslsmith_index_u32(4802u, 15u)], ~var_1.a.x), u_input.d, -2147483647i));
    let var_3 = global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(0u, var_2.d.x), vec2<u32>(var_2.d.x, var_2.d.x ^ var_2.d.x)), var_2.d.xx & ~min(u_input.b, vec2<u32>(1u, u_input.b.x))), 15u)];
    let var_4 = vec3<bool>(true, (all(vec4<bool>(false, true, true, true)) | (~global1[_wgslsmith_index_u32(var_2.d.x, 15u)] > (-33786i << (u_input.b.x % 32u)))) || any(vec2<bool>(true, true)), false);
    global0 = array<Struct_2, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(~var_2.d.x ^ 98422u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1045f, var_2.c)) * var_2.c) + var_1.b) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))))), global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, var_2.d.x), abs(vec2<u32>(2100u, 38044u))), 15u)], _wgslsmith_clamp_vec4_u32(_wgslsmith_add_vec4_u32(max(~vec4<u32>(var_2.d.x, 0u, 32871u, u_input.b.x), vec4<u32>(4294967295u, 1u, var_2.d.x, var_2.d.x) ^ vec4<u32>(35137u, var_2.d.x, 0u, 4294967295u)), max(vec4<u32>(var_2.d.x, var_2.d.x, 21348u, 4294967295u) | vec4<u32>(25470u, 0u, var_2.d.x, 0u), vec4<u32>(var_2.d.x, 1u, 4294967295u, 4294967295u))), vec4<u32>(firstLeadingBit(_wgslsmith_div_u32(var_2.d.x, 4294967295u)), ~(u_input.b.x ^ 4294967295u), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 7048u) << (vec2<u32>(1u, 4294967295u) % vec2<u32>(32u)), vec2<u32>(1u, var_2.d.x)), _wgslsmith_clamp_u32(u_input.c, _wgslsmith_div_u32(u_input.b.x, u_input.a), 1u)), abs(vec4<u32>(u_input.c, ~u_input.a, 1u, _wgslsmith_mult_u32(77728u, 18056u)))));
}

