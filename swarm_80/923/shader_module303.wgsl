struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: i32,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 4294967295u;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: f32, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: Struct_3) -> vec3<u32> {
    global0 = 1u;
    global0 = 36755u;
    var var_0 = select(select(select(!(!vec4<bool>(arg_3.c.x, arg_3.b.x, false, false)), !(!vec4<bool>(false, arg_3.c.x, true, false)), !arg_3.c.x), select(vec4<bool>(u_input.a.x <= u_input.a.x, true, !arg_3.b.x, true), select(select(vec4<bool>(arg_3.b.x, false, true, true), vec4<bool>(true, false, arg_3.c.x, arg_3.b.x), vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.b.x, arg_3.b.x)), vec4<bool>(arg_3.b.x, true, arg_3.b.x, true), true), all(select(vec2<bool>(arg_3.c.x, false), vec2<bool>(true, arg_3.c.x), arg_3.b.x))), vec4<bool>(true, !any(vec4<bool>(arg_3.c.x, false, false, false)), !arg_3.b.x | false, arg_3.b.x)), vec4<bool>(!(!(false && arg_3.b.x)), !arg_3.c.x, !(!(!arg_3.b.x)), all(select(!vec3<bool>(arg_3.c.x, arg_3.b.x, arg_3.c.x), vec3<bool>(arg_3.c.x, arg_3.b.x, false), true))), select(!vec4<bool>(arg_3.b.x, true, !arg_3.b.x, arg_3.c.x), vec4<bool>(arg_3.b.x, true, false, arg_3.c.x), select(select(select(vec4<bool>(arg_3.c.x, arg_3.b.x, arg_3.b.x, true), vec4<bool>(false, arg_3.b.x, false, false), vec4<bool>(false, arg_3.c.x, arg_3.b.x, arg_3.b.x)), select(vec4<bool>(true, true, arg_3.c.x, arg_3.b.x), vec4<bool>(true, arg_3.b.x, false, arg_3.c.x), arg_3.c.x), vec4<bool>(false, arg_3.b.x, arg_3.c.x, false)), select(vec4<bool>(true, true, true, true), select(vec4<bool>(arg_3.b.x, arg_3.c.x, true, arg_3.b.x), vec4<bool>(arg_3.b.x, arg_3.c.x, false, arg_3.b.x), false), select(vec4<bool>(arg_3.c.x, arg_3.c.x, arg_3.b.x, false), vec4<bool>(arg_3.c.x, arg_3.b.x, arg_3.b.x, false), vec4<bool>(arg_3.c.x, arg_3.b.x, true, arg_3.c.x))), vec4<bool>(false, false, any(vec3<bool>(true, arg_3.c.x, false)), true & arg_3.c.x))));
    let var_1 = max(u_input.a.x, ~_wgslsmith_mod_i32(~_wgslsmith_clamp_i32(u_input.c, arg_1.x, arg_1.x), _wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.c, u_input.c), ~(-2147483647i))));
    let var_2 = _wgslsmith_f_op_f32(trunc(-1291f));
    return _wgslsmith_clamp_vec3_u32(~(countOneBits(arg_2.a.wzy << (vec3<u32>(11523u, 19366u, 51430u) % vec3<u32>(32u))) ^ vec3<u32>(62089u, u_input.b, ~4294967295u)), vec3<u32>(arg_2.a.x, abs(~arg_2.a.x) >> (u_input.b % 32u), abs(34211u)), reverseBits(arg_3.a));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_2 {
    global0 = max(_wgslsmith_sub_u32(min(~arg_1, ~(~arg_1)), _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(func_3(1000f, u_input.a.wxw, Struct_1(vec4<u32>(arg_1, 31996u, 996u, arg_1)), Struct_3(vec3<u32>(52765u, 4294967295u, 0u), vec2<bool>(true, false), vec2<bool>(true, true))), _wgslsmith_add_vec3_u32(vec3<u32>(arg_1, 0u, 24060u), vec3<u32>(arg_1, 21202u, arg_1))), 71256u)), u_input.b);
    global0 = ~select(16404u >> (~(~arg_1) % 32u), arg_1, true | any(select(vec2<bool>(true, true), vec2<bool>(true, false), true)));
    global0 = 20990u;
    global0 = arg_1;
    var var_0 = -1000f;
    return Struct_2(Struct_1(_wgslsmith_mod_vec4_u32(max(~vec4<u32>(4298u, arg_1, 17995u, arg_1), vec4<u32>(arg_1, arg_1, 1u, 1u)), ~(~vec4<u32>(u_input.b, arg_1, 0u, arg_1)))), Struct_1(abs(vec4<u32>(1u, 0u, arg_1 | u_input.b, 20096u))), abs(vec3<i32>(~arg_0.x, _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(2147483647i, 1i, u_input.c), vec3<i32>(arg_0.x, u_input.c, arg_0.x), vec3<i32>(u_input.a.x, arg_0.x, u_input.c)), -vec3<i32>(4777i, 1i, 0i)), arg_0.x)));
}

fn func_1(arg_0: f32, arg_1: vec2<bool>, arg_2: bool, arg_3: vec2<i32>) -> Struct_3 {
    let var_0 = func_2(arg_3, ~(~abs(u_input.b ^ u_input.b)));
    let var_1 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-165f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0 + -857f)))));
    let var_2 = arg_1.x;
    let var_3 = u_input.a.zx;
    let var_4 = var_0.b;
    return Struct_3(vec3<u32>(1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(18785u, var_0.b.a.x), ~77154u), ~_wgslsmith_sub_u32(abs(var_4.a.x), _wgslsmith_mod_u32(49604u, 100502u))), !select(vec2<bool>(arg_2, all(vec4<bool>(false, false, arg_2, false))), arg_1, vec2<bool>(false, arg_2)), select(vec2<bool>(any(!vec4<bool>(var_2, var_2, true, arg_1.x)), var_2), arg_1, select(select(select(arg_1, vec2<bool>(arg_1.x, false), arg_1), vec2<bool>(true, true), arg_1), vec2<bool>(any(vec3<bool>(true, false, false)), arg_2), true)));
}

fn func_4(arg_0: Struct_3) -> u32 {
    global0 = ~4294967295u;
    global0 = _wgslsmith_mod_u32(1u, u_input.b);
    global0 = 32360u;
    let var_0 = 213f;
    let var_1 = func_2(vec2<i32>(u_input.c, ~u_input.a.x), u_input.b).a.a.x;
    return ~25603u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_dot_vec3_u32(~(~_wgslsmith_mod_vec3_u32(vec3<u32>(20383u, 2324u, u_input.b), ~vec3<u32>(u_input.b, u_input.b, u_input.b))), vec3<u32>(~(~1u), _wgslsmith_mult_u32(~u_input.b, ~20082u), abs(~u_input.b)));
    global0 = _wgslsmith_clamp_u32(_wgslsmith_mult_u32(max(u_input.b, _wgslsmith_add_u32(var_0, _wgslsmith_mult_u32(var_0, var_0))), 0u), firstTrailingBit(func_4(func_1(_wgslsmith_f_op_f32(f32(-1f) * -452f), select(vec2<bool>(true, true), vec2<bool>(false, true), false), true, u_input.a.zw & vec2<i32>(33428i, -3230i)))), ~0u);
    let var_1 = u_input.a.x;
    global0 = ~(~u_input.b);
    global0 = 4294967295u;
    global0 = u_input.b;
    var var_2 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1000f, -1417f)), vec2<bool>(true, true), true, abs(vec2<i32>(u_input.a.x, max(var_1, 26960i))) << (~(~func_2(vec2<i32>(var_1, 2147483647i), u_input.b).b.a.zw) % vec2<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(687f, -1000f) - _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(1825f, 788f)))))), -62519i, ~(1u << (var_0 % 32u)), -2147483647i, u_input.a.xyy);
}

