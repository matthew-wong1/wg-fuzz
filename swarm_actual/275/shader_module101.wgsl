struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_3 {
    a: vec3<bool>,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: vec4<i32>,
}

struct Struct_4 {
    a: bool,
    b: u32,
    c: bool,
}

struct Struct_5 {
    a: Struct_3,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32> = vec4<u32>(35988u, 0u, 4294967295u, 10516u);

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> u32 {
    let var_0 = -vec2<i32>(u_input.b, _wgslsmith_mult_i32(min(u_input.b, _wgslsmith_div_i32(u_input.b, u_input.b)), firstTrailingBit(u_input.b) >> (u_input.a.x % 32u)));
    let var_1 = Struct_3(select(vec3<bool>(arg_1.a, !all(vec4<bool>(true, arg_1.c, arg_1.c, arg_1.c)), !(arg_0.x <= arg_0.x)), vec3<bool>(true, !(true | arg_1.c), all(vec2<bool>(arg_1.a, arg_1.a))), true && (-26822i <= firstLeadingBit(var_0.x))), _wgslsmith_mult_i32(global0.a, global0.a), Struct_2(Struct_1(~u_input.b), Struct_1(max(i32(-1i) * -43779i, 1i)), !(!select(vec2<bool>(true, true), vec2<bool>(false, false), true))), Struct_2(Struct_1((u_input.b ^ u_input.b) & global0.a), Struct_1(var_0.x), select(select(select(vec2<bool>(arg_1.c, true), vec2<bool>(false, true), true), !vec2<bool>(false, arg_1.c), arg_1.a | false), vec2<bool>(true, true), true)), ~vec4<i32>(var_0.x, 1i, _wgslsmith_mod_i32(0i, global0.a), i32(-1i) * -18956i) & abs(vec4<i32>(_wgslsmith_mod_i32(0i, -1i), global0.a ^ 1i, 2147483647i, ~global0.a)));
    var var_2 = vec3<i32>(_wgslsmith_sub_i32(global0.a, _wgslsmith_dot_vec4_i32(max(var_1.e, vec4<i32>(u_input.b, 2147483647i, global0.a, -18854i)) << (vec4<u32>(4294967295u, 39764u, u_input.a.x, arg_1.b) % vec4<u32>(32u)), firstTrailingBit(min(vec4<i32>(var_1.b, var_0.x, global0.a, u_input.b), vec4<i32>(0i, u_input.b, -2147483647i, -2977i))))), _wgslsmith_dot_vec4_i32(select(var_1.e, reverseBits(vec4<i32>(1i, var_0.x, global0.a, u_input.b)), vec4<bool>(true, true, arg_1.c, true)), var_1.e), ~firstTrailingBit(global0.a));
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -809f))));
    global1 = vec4<u32>(global1.x, 13754u, ~_wgslsmith_clamp_u32(arg_1.b, _wgslsmith_dot_vec3_u32(u_input.a.zwx, _wgslsmith_clamp_vec3_u32(global1.wwy, arg_0.yyy, vec3<u32>(arg_0.x, 56276u, arg_1.b))), ~61642u), 0u);
    return 32290u;
}

fn func_2(arg_0: f32) -> vec2<u32> {
    let var_0 = global1.x;
    global1 = u_input.a;
    return _wgslsmith_sub_vec2_u32(max(~(~vec2<u32>(global1.x, 60162u) ^ vec2<u32>(global1.x, 1u)), vec2<u32>(_wgslsmith_clamp_u32(~u_input.a.x, global1.x, func_3(u_input.a, Struct_4(false, 0u, true))), 1u)), global1.xy);
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: u32) -> vec3<u32> {
    let var_0 = global1.ww >> (_wgslsmith_add_vec2_u32(_wgslsmith_sub_vec2_u32(u_input.a.yx, func_2(_wgslsmith_f_op_f32(1000f * -1192f))), global1.yx) % vec2<u32>(32u));
    let var_1 = Struct_2(arg_0.d.b, arg_0.c.a, vec2<bool>(_wgslsmith_add_i32(global0.a, firstTrailingBit(global0.a)) == ~arg_0.c.a.a, true));
    let var_2 = select(vec2<bool>(arg_0.c.c.x, true), !arg_0.c.c, arg_0.a.x);
    var var_3 = arg_0.e.zy;
    var var_4 = var_1.c;
    return firstTrailingBit(vec3<u32>(38977u, _wgslsmith_div_u32(6872u, ~u_input.a.x), 70476u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_u32(_wgslsmith_mult_vec3_u32(abs(_wgslsmith_div_vec3_u32(~vec3<u32>(global1.x, 4294967295u, u_input.a.x), func_1(Struct_3(vec3<bool>(false, false, true), 4221i, Struct_2(Struct_1(1442i), Struct_1(-2147483647i), vec2<bool>(false, false)), Struct_2(Struct_1(global0.a), Struct_1(global0.a), vec2<bool>(true, false)), vec4<i32>(-20849i, u_input.b, global0.a, global0.a)), 0i, global1.x))), global1.zxx), vec3<u32>(~4294967295u, 4294967295u, 19111u));
    var var_1 = true;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-708f - 1009f));
    var_2 = -818f;
    var var_3 = any(vec4<bool>(false || (~global1.x <= _wgslsmith_dot_vec2_u32(u_input.a.xy, vec2<u32>(var_0.x, 1u))), select(true, true, true), all(vec4<bool>(true, true, any(vec2<bool>(false, false)), true)), any(select(vec3<bool>(false, false, false), select(vec3<bool>(false, true, false), vec3<bool>(true, false, false), true), any(vec2<bool>(true, false))))));
    var var_4 = Struct_2(Struct_1(0i), Struct_1(u_input.b), select(vec2<bool>(any(vec3<bool>(true, false, true)) && (-45811i <= u_input.b), select(all(vec3<bool>(false, false, true)), true, any(vec3<bool>(false, true, true)))), select(vec2<bool>(true, true), vec2<bool>(true, any(vec2<bool>(false, false))), vec2<bool>(true, var_0.x <= u_input.a.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(244f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), 1f)), 281f);
}

