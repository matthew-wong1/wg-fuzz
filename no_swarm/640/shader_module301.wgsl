struct Struct_1 {
    a: vec4<f32>,
    b: u32,
    c: vec2<u32>,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: u32,
    d: i32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-1139f, 623f, 396f, -412f), 1u, vec2<u32>(4294967295u, 13149u), true);

var<private> global1: vec2<u32> = vec2<u32>(22698u, 38792u);

var<private> global2: Struct_1;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: u32) -> u32 {
    global1 = global0.c;
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), global2.b, firstLeadingBit(~vec2<u32>(firstTrailingBit(arg_0), 48634u)), select(true, global2.d, select(min(u_input.c.x, u_input.c.x) == max(u_input.c.x, 11111i), global0.d, true)));
    let var_0 = firstTrailingBit(vec4<i32>(u_input.c.x, 21582i, u_input.c.x, u_input.c.x));
    let var_1 = any(!select(select(!vec3<bool>(true, global0.d, true), !vec3<bool>(global0.d, true, true), !vec3<bool>(false, true, global0.d)), vec3<bool>(true, true, true), (global0.c.x == u_input.a.x) || (global2.b < 1u)));
    let var_2 = Struct_1(vec4<f32>(1000f, 138f, 1000f, _wgslsmith_f_op_f32(f32(-1f) * -773f)), _wgslsmith_clamp_u32(20673u, firstTrailingBit(arg_0 | (global0.b >> (global2.c.x % 32u))), 15792u), global0.c ^ global2.c, true);
    return _wgslsmith_add_u32(1u, ~global2.b);
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> Struct_1 {
    global0 = arg_1;
    global2 = Struct_1(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -574f))), global0.a.x, _wgslsmith_f_op_f32(-938f + _wgslsmith_f_op_f32(trunc(arg_1.a.x)))), 15277u ^ _wgslsmith_dot_vec3_u32(vec3<u32>(~global1.x, 1u, func_3(1u)), ~(~vec3<u32>(39169u, global2.b, 33602u))), ~(firstLeadingBit(vec2<u32>(0u, 0u)) & abs(~vec2<u32>(55498u, global2.b))), all(select(select(vec3<bool>(global0.d, false, false), vec3<bool>(false, false, false), any(vec4<bool>(global2.d, arg_1.d, true, false))), select(!vec3<bool>(false, global0.d, global2.d), !vec3<bool>(global0.d, true, true), select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_1.d, arg_1.d, true), vec3<bool>(arg_1.d, false, global2.d))), any(select(vec3<bool>(true, true, true), vec3<bool>(false, true, global0.d), true)))));
    let var_0 = !select(true, global0.d, arg_1.d);
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(step(global0.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.x, global0.a.x, global2.a.x, global2.a.x))), arg_1.a))))), ~(~global0.c.x), firstTrailingBit(abs(vec2<u32>(~4294967295u, ~4383u))), true);
    let var_1 = countOneBits(vec3<i32>(_wgslsmith_mult_i32(u_input.c.x << (abs(48885u) % 32u), ~1i), _wgslsmith_clamp_i32(1i, reverseBits(_wgslsmith_mod_i32(u_input.c.x, 1i)), _wgslsmith_mult_i32(u_input.c.x, abs(u_input.c.x))), _wgslsmith_mod_i32(0i | u_input.c.x, 0i) ^ 4340i));
    return Struct_1(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(arg_1.a.x, 191f, -761f, arg_1.a.x)))))))), firstTrailingBit(max(0u, global1.x)), global0.c, ~_wgslsmith_mult_u32(global2.b << (global0.b % 32u), u_input.b) == ~global1.x);
}

fn func_1(arg_0: i32) -> vec2<u32> {
    global1 = countOneBits(min(vec2<u32>(~1u, ~0u >> (1u % 32u)), global0.c));
    global2 = Struct_1(vec4<f32>(global2.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1591f) + global0.a.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-551f - 893f)), _wgslsmith_f_op_f32(global0.a.x - global2.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global2.a.x, _wgslsmith_f_op_f32(max(global2.a.x, global0.a.x)))))), global2.b, u_input.a, global2.d);
    var var_0 = Struct_2(func_2(global2.d, Struct_1(vec4<f32>(-1201f, 1408f, global2.a.x, _wgslsmith_f_op_f32(202f * 2357f)), global1.x, global0.c, true)), (true | select(global2.a.x >= global0.a.x, false, global2.d)) & all(vec2<bool>(false, true)), func_2(all(!(!vec2<bool>(global2.d, false))), func_2(!(global0.d & false), func_2(true, Struct_1(vec4<f32>(908f, global0.a.x, global0.a.x, 172f), 4294967295u, u_input.a, global0.d)))).b, 3635i, Struct_1(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(1437f, -529f, global0.a.x, -1005f))))), firstLeadingBit(func_2(true, Struct_1(vec4<f32>(global0.a.x, 1006f, -642f, global0.a.x), 70622u, vec2<u32>(global1.x, global1.x), true)).c.x & global1.x), firstLeadingBit(global0.c), global1.x < ~36575u));
    let var_1 = func_3(_wgslsmith_sub_u32(~countOneBits(global1.x), _wgslsmith_add_u32(~global2.c.x, 0u)));
    let var_2 = -2147483647i;
    return func_2(var_0.d > _wgslsmith_sub_i32(_wgslsmith_add_i32(_wgslsmith_add_i32(var_2, arg_0), -2147483647i), var_2), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -632f))), global2.a.x, 1660f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1274f + global0.a.x))), global2.c.x, min(global2.c, abs(select(u_input.a, u_input.a, global2.d))), all(select(vec4<bool>(false, true, false, var_0.a.d), vec4<bool>(var_0.b, true, true, global0.d), vec4<bool>(var_0.b, false, false, global0.d))) | !any(vec4<bool>(global2.d, var_0.a.d, true, false)))).c;
}

@compute
@workgroup_size(1)
fn main() {
    global2 = Struct_1(global2.a, 5876u, reverseBits(vec2<u32>(4294967295u, global1.x)), !any(select(vec2<bool>(global2.d, false), !vec2<bool>(global2.d, global2.d), global0.d)));
    let var_0 = Struct_1(global0.a, ~(~global0.c.x), func_1(u_input.c.x), any(!vec2<bool>(global2.b <= 4294967295u, false)));
    global2 = func_2(any(vec2<bool>(any(!vec4<bool>(global2.d, false, global0.d, true)), !(!global2.d))), var_0);
    let var_1 = u_input.c.x;
    let var_2 = vec2<bool>(all(vec4<bool>(global2.d, 27641u <= _wgslsmith_clamp_u32(36398u, var_0.b, 0u), global2.d, true)), !(firstLeadingBit(~u_input.c.x) == _wgslsmith_mult_i32(var_1, 2147483647i)));
    let x = u_input.a;
    s_output = StorageBuffer(-1000f, _wgslsmith_f_op_f32(floor(global2.a.x)), reverseBits(_wgslsmith_mult_u32(countOneBits(_wgslsmith_div_u32(global0.b, 26797u)), reverseBits(global1.x))), _wgslsmith_f_op_f32(global2.a.x * 1062f));
}

