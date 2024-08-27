struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: i32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 20> = array<bool, 20>(false, true, false, false, true, true, false, false, false, true, true, false, true, false, true, false, false, true, false, false);

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<f32>, arg_2: Struct_3) -> vec2<bool> {
    let var_0 = (u_input.b.yww | vec3<i32>(_wgslsmith_dot_vec2_i32(u_input.b.xw, ~u_input.b.xw), ~abs(arg_0.b), arg_0.b)) & vec3<i32>(1i, abs(arg_2.b), -arg_0.b);
    global0 = array<bool, 20>();
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1f - 1682f)))), _wgslsmith_f_op_f32(max(arg_2.a.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-110f - arg_2.a.x))))), arg_1.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(arg_1.x)))));
    global0 = array<bool, 20>();
    let var_2 = min(~(_wgslsmith_add_vec2_u32(u_input.e, u_input.c) ^ u_input.e), ~(u_input.e & vec2<u32>(u_input.e.x, 66896u))) >> (select(u_input.e, ~(~firstLeadingBit(vec2<u32>(u_input.c.x, 1370u))), _wgslsmith_sub_i32(-81487i, -2147483647i) > _wgslsmith_mult_i32(arg_2.b ^ arg_0.b, arg_2.b)) % vec2<u32>(32u));
    return vec2<bool>(global0[_wgslsmith_index_u32(firstTrailingBit(countOneBits(var_2.x)), 20u)], all(select(select(vec2<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], true), !vec2<bool>(global0[_wgslsmith_index_u32(4294967295u, 20u)], false), global0[_wgslsmith_index_u32(1u, 20u)]), vec2<bool>(true, true), !(!vec2<bool>(false, global0[_wgslsmith_index_u32(0u, 20u)])))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: bool) -> vec3<bool> {
    let var_0 = vec3<u32>(u_input.c.x, ~min(firstLeadingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, u_input.e.x), vec3<u32>(55589u, 60785u, u_input.c.x))), u_input.e.x), u_input.e.x ^ 43782u);
    global0 = array<bool, 20>();
    global0 = array<bool, 20>();
    let var_1 = _wgslsmith_dot_vec2_u32(vec2<u32>(min(79843u, 1u), ~u_input.e.x | 0u) | vec2<u32>(43012u, 13897u), _wgslsmith_div_vec2_u32(u_input.e, var_0.zy));
    global0 = array<bool, 20>();
    return select(!vec3<bool>(!arg_3, all(select(vec3<bool>(arg_2.c.x, false, arg_1.x), vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 20u)], global0[_wgslsmith_index_u32(4294967295u, 20u)], global0[_wgslsmith_index_u32(27611u, 20u)]), vec3<bool>(arg_3, arg_1.x, global0[_wgslsmith_index_u32(u_input.e.x, 20u)]))), false), vec3<bool>(false, false | !(u_input.d <= u_input.b.x), arg_2.b.x > _wgslsmith_f_op_f32(exp2(arg_0.a.x))), vec3<bool>(!(all(arg_1) & true), true, arg_2.c.x));
}

fn func_2(arg_0: Struct_3) -> vec4<bool> {
    let var_0 = Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-arg_0.a), vec3<f32>(arg_0.a.x, arg_0.a.x, -1417f)))), arg_0.a), -23586i);
    var var_1 = vec2<u32>(u_input.c.x, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, firstTrailingBit(u_input.e.x)), u_input.c));
    var_1 = u_input.c;
    let var_2 = !func_4(var_0, !(!(!vec2<bool>(false, global0[_wgslsmith_index_u32(var_1.x, 20u)]))), Struct_2(Struct_1(global0[_wgslsmith_index_u32(var_1.x, 20u)] || false, arg_0.b <= 30976i, vec3<i32>(-2147483647i, var_0.b, -1i)), arg_0.a, select(vec2<bool>(true, true), func_3(Struct_3(arg_0.a, 5287i), vec3<f32>(arg_0.a.x, 1000f, var_0.a.x), Struct_3(vec3<f32>(831f, -204f, -1674f), 35566i)), vec2<bool>(global0[_wgslsmith_index_u32(0u, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(exp2(arg_0.a.x)))) <= arg_0.a.x);
    var var_3 = (all(!vec4<bool>(global0[_wgslsmith_index_u32(1u, 20u)], true, false, false)) || !((1i <= var_0.b) && !var_2.x)) && (var_1.x <= u_input.a);
    return vec4<bool>(global0[_wgslsmith_index_u32(var_1.x, 20u)], (u_input.b.x ^ (i32(-1i) * -u_input.d)) > -2147483647i, global0[_wgslsmith_index_u32(abs(55414u), 20u)], true);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool) -> vec4<bool> {
    return !select(select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 20u)], arg_1, global0[_wgslsmith_index_u32(u_input.e.x, 20u)], global0[_wgslsmith_index_u32(u_input.a, 20u)]), select(vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, global0[_wgslsmith_index_u32(13739u, 20u)]), vec4<bool>(arg_1, true, true, true)), vec4<bool>(global0[_wgslsmith_index_u32(90343u, 20u)], global0[_wgslsmith_index_u32(u_input.e.x, 20u)], false, arg_1)), select(func_2(Struct_3(vec3<f32>(501f, 588f, -662f), -1i)), vec4<bool>(arg_1, false, true, false), true), !func_3(Struct_3(vec3<f32>(922f, -1586f, 586f), 1i), vec3<f32>(305f, -1442f, -175f), Struct_3(vec3<f32>(-1733f, -1000f, 123f), -1i)).x), vec4<bool>(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], false, any(func_2(Struct_3(vec3<f32>(-931f, -1220f, 1435f), arg_0.x))), any(vec3<bool>(arg_1, arg_1, true)) && global0[_wgslsmith_index_u32(u_input.e.x, 20u)]), !global0[_wgslsmith_index_u32(firstLeadingBit(u_input.e.x) & 40305u, 20u)]);
}

fn func_5(arg_0: vec4<bool>, arg_1: f32) -> u32 {
    global0 = array<bool, 20>();
    var var_0 = u_input.b.x;
    let var_1 = func_1(min(u_input.b, abs(reverseBits(u_input.b))), _wgslsmith_f_op_f32(-1f) <= arg_1).wy;
    var_0 = 0i;
    let var_2 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-arg_1))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_1)))), -947f));
    return select(~(~abs(max(u_input.e.x, u_input.a))), ~(~firstTrailingBit(82917u)), arg_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 20>();
    let var_0 = global0[_wgslsmith_index_u32(~(~(1u >> (u_input.a % 32u))), 20u)];
    let var_1 = vec2<f32>(_wgslsmith_div_f32(-605f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(1000f)))))), 2535f);
    let var_2 = _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.e.x, 1u, func_5(func_1(u_input.b << (vec4<u32>(4294967295u, u_input.a, 1u, 36966u) % vec4<u32>(32u)), all(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 20u)], global0[_wgslsmith_index_u32(u_input.c.x, 20u)], global0[_wgslsmith_index_u32(1u, 20u)]))), var_1.x), abs(0u)), ~(select(vec4<u32>(30069u, 4294967295u, 0u, u_input.e.x), vec4<u32>(u_input.c.x, 1u, 0u, u_input.c.x), global0[_wgslsmith_index_u32(abs(u_input.e.x), 20u)]) << (vec4<u32>(select(21289u, u_input.e.x, global0[_wgslsmith_index_u32(u_input.a, 20u)]), 4294967295u, ~33637u, 4294967295u) % vec4<u32>(32u))));
    var var_3 = Struct_1(global0[_wgslsmith_index_u32(u_input.c.x, 20u)], true, u_input.b.zyw);
    var var_4 = !vec4<bool>(global0[_wgslsmith_index_u32(u_input.e.x, 20u)], false, func_4(Struct_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_1.x, 597f, var_1.x))), _wgslsmith_mod_i32(-54626i, -2147483647i)), vec2<bool>(any(vec3<bool>(true, false, var_3.b)), all(vec2<bool>(global0[_wgslsmith_index_u32(var_2.x, 20u)], false))), Struct_2(Struct_1(var_3.a, true, vec3<i32>(2147483647i, u_input.b.x, 1i)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_1.x, var_1.x, -682f), vec3<f32>(-945f, 247f, -803f))), vec2<bool>(true, true)), select(global0[_wgslsmith_index_u32(var_2.x, 20u)] != var_3.a, true, global0[_wgslsmith_index_u32(1u, 20u)] | false)).x, any(vec3<bool>(true, false, false)));
    var_4 = !(!func_1(vec4<i32>(-1i, i32(-1i) * -1i, -2147483647i, u_input.d), all(var_4.zww)));
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(var_2.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(vec2<u32>(7559u, var_2.x), vec2<u32>(u_input.e.x, 1u), u_input.e), var_2.wx & vec2<u32>(9555u, 23620u)), select(var_2.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.e.x, var_2.x, 41839u), var_2.yyy), var_4.x || true), 16315u), vec3<i32>(u_input.d, u_input.b.x, u_input.d), vec3<i32>(-7735i, 60058i, -61605i & (_wgslsmith_add_i32(var_3.c.x, 27087i) >> (_wgslsmith_sub_u32(u_input.a, 34624u) % 32u))));
}

