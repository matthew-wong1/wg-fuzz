struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
    d: bool,
    e: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: Struct_1 = Struct_1(false, -1000f, 1i, true, -1i);

var<private> global2: i32;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn func_3(arg_0: vec4<bool>, arg_1: u32, arg_2: i32) -> vec2<bool> {
    global2 = _wgslsmith_mod_i32(u_input.a.x, _wgslsmith_mod_i32(min(-global1.c, global1.c ^ -9156i) ^ firstTrailingBit(u_input.a.x), u_input.a.x));
    var var_0 = Struct_1(any(vec2<bool>(true, any(!arg_0))), global1.b, 33636i, 0i != _wgslsmith_dot_vec4_i32(~(vec4<i32>(1238i, 1i, u_input.a.x, arg_2) << (vec4<u32>(16151u, arg_1, u_input.b, arg_1) % vec4<u32>(32u))), _wgslsmith_div_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(0i, u_input.a.x, u_input.a.x, u_input.a.x), vec4<i32>(-15036i, arg_2, 12050i, 55726i)), vec4<i32>(-2147483647i, -5011i, -2147483647i, 0i) | vec4<i32>(u_input.a.x, 42312i, u_input.a.x, 31554i))), select(~(_wgslsmith_sub_i32(arg_2, arg_2) >> ((u_input.b & 0u) % 32u)), global1.c >> (u_input.b % 32u), global0.x));
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0.b));
    let var_2 = _wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, ~arg_1, firstTrailingBit(~u_input.b), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(86340u, u_input.b), ~vec2<u32>(u_input.b, 0u)))), ~_wgslsmith_clamp_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 1u, 1u) | vec4<u32>(1u, 52861u, 4294967295u, arg_1), min(vec4<u32>(4515u, 4294967295u, u_input.b, 49795u), vec4<u32>(arg_1, 56346u, 56339u, u_input.b))), ~vec4<u32>(u_input.b, 1u, u_input.b, arg_1), ~max(vec4<u32>(u_input.b, 4294967295u, u_input.b, arg_1), vec4<u32>(u_input.b, 0u, arg_1, arg_1))));
    var var_3 = any(!arg_0.zw);
    return vec2<bool>(~_wgslsmith_clamp_i32(firstTrailingBit(u_input.a.x), -arg_2, -u_input.a.x) < min(~1i, 0i), true);
}

fn func_2() -> i32 {
    let var_0 = Struct_1(all(!vec3<bool>(true, global0.x, global1.d)), -1072f, u_input.a.x, global0.x | false, u_input.a.x);
    global1 = var_0;
    global0 = !(!select(select(vec2<bool>(true, global0.x), vec2<bool>(true, true), any(vec2<bool>(false, global1.d))), func_3(select(vec4<bool>(true, global1.a, true, global1.d), vec4<bool>(false, global0.x, var_0.d, false), vec4<bool>(false, var_0.d, true, global0.x)), u_input.b, global1.c), true));
    global2 = -1i & -u_input.a.x;
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -449f);
    return _wgslsmith_dot_vec2_i32(abs(vec2<i32>(16658i, -2147483647i)), u_input.a);
}

fn func_1(arg_0: Struct_1) -> vec2<bool> {
    global2 = _wgslsmith_clamp_i32(_wgslsmith_mult_i32(max(~func_2(), (arg_0.c >> (4294967295u % 32u)) & -arg_0.c), u_input.a.x), reverseBits(global1.e), ~(-2147483647i));
    var var_0 = arg_0;
    global1 = arg_0;
    global0 = !select(vec2<bool>(var_0.d, all(!vec2<bool>(global1.d, global1.d))), select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(arg_0.d, arg_0.a)), !(!vec2<bool>(arg_0.a, false)), !select(vec2<bool>(var_0.d, var_0.a), vec2<bool>(true, false), global0.x)), select(!(!vec2<bool>(var_0.a, arg_0.a)), vec2<bool>(-2147483647i > u_input.a.x, global1.a), !vec2<bool>(var_0.a, true)));
    global0 = select(select(vec2<bool>(!(global1.e < 2147483647i), true && any(vec4<bool>(var_0.a, false, global0.x, var_0.a))), !func_3(vec4<bool>(var_0.d, var_0.a, true, arg_0.d), 0u, -30221i), global1.d), func_3(vec4<bool>(true, true, true, true), 2818u, ~0i), !(!select(select(vec2<bool>(var_0.a, true), vec2<bool>(var_0.a, global1.d), true), !vec2<bool>(false, global0.x), true)));
    return vec2<bool>(select(all(vec2<bool>(global1.a & true, var_0.a)), 1u <= u_input.b, false), true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(true, _wgslsmith_f_op_f32(-global1.b), -u_input.a.x, any(vec3<bool>(any(vec3<bool>(global1.d, global1.a, true)), any(func_1(Struct_1(global1.a, 880f, global1.c, true, -2147483647i))), select(false, true, u_input.b >= u_input.b))), -751i);
    global1 = Struct_1(!global1.d, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global1.b)))) - global1.b), u_input.a.x, false, 9472i ^ abs(var_0.c));
    var var_1 = Struct_1(var_0.d, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global1.b)))))), 15466i, true, countOneBits(global1.e));
    global1 = Struct_1(true, _wgslsmith_f_op_f32(step(1010f, _wgslsmith_f_op_f32(-global1.b))), ~(~_wgslsmith_add_i32(u_input.a.x, u_input.a.x)), true, -1151i);
    let var_2 = Struct_1(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b * var_0.b)), select(abs(firstLeadingBit(global1.e)), -16143i, any(select(!vec4<bool>(global1.a, false, var_0.d, false), !vec4<bool>(var_1.a, var_0.a, false, global0.x), global1.a | true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(step(var_1.b, 233f)))) + _wgslsmith_f_op_f32(ceil(var_0.b))) != _wgslsmith_f_op_f32(select(1994f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b - 307f) + _wgslsmith_f_op_f32(max(var_0.b, global1.b))), all(!vec3<bool>(var_0.a, var_0.d, global1.a)))), _wgslsmith_mod_i32(global1.e, _wgslsmith_dot_vec3_i32(~_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a.x, var_1.e, var_0.c), vec3<i32>(1i, -17679i, -2147483647i)), ~max(vec3<i32>(19455i, -2147483647i, 11904i), vec3<i32>(u_input.a.x, global1.c, global1.c)))));
    var var_3 = _wgslsmith_sub_vec2_u32(((vec2<u32>(u_input.b, u_input.b) ^ vec2<u32>(u_input.b, 0u)) ^ ~vec2<u32>(u_input.b, 70417u)) ^ ~(~vec2<u32>(u_input.b, u_input.b)), ~vec2<u32>(49822u, 0u) | ~(~vec2<u32>(65130u, u_input.b))) ^ ~vec2<u32>(_wgslsmith_dot_vec3_u32(min(vec3<u32>(u_input.b, 6590u, u_input.b), vec3<u32>(u_input.b, 15469u, u_input.b)), firstLeadingBit(vec3<u32>(u_input.b, u_input.b, 0u))), ~u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(5847i);
}

