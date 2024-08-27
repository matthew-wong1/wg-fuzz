struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1612f, 908f, 501f);

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<i32>, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_1) -> Struct_2 {
    let var_0 = Struct_1(0u);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-133f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(372f + -671f) * 793f)), global0.x) + vec3<f32>(-668f, -1043f, global0.x));
    var var_2 = _wgslsmith_clamp_i32(0i, arg_1.x ^ (i32(-1i) * -14848i), ~(-1i));
    var var_3 = Struct_1(_wgslsmith_dot_vec2_u32(~vec2<u32>(arg_2.a, 22473u) >> (vec2<u32>(arg_2.a, u_input.a) % vec2<u32>(32u)), _wgslsmith_div_vec2_u32(~vec2<u32>(arg_2.a, arg_3.a), ~vec2<u32>(4294967295u, arg_2.a))) ^ ~_wgslsmith_mult_u32(arg_2.a << (4294967295u % 32u), _wgslsmith_mult_u32(arg_2.a, u_input.a)));
    var_3 = Struct_1(~1u);
    return Struct_2(arg_3.a, ~vec2<u32>(var_0.a, ~(6695u | var_3.a)));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: vec2<i32>) -> Struct_2 {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x - global0.x)), _wgslsmith_f_op_f32(f32(-1f) * -992f))) * global0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2378f)) + -1621f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-494f)))));
    var var_0 = global0.yx;
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1147f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global0.x, -1928f) + _wgslsmith_f_op_f32(ceil(global0.x)))), global0.yx)));
    var_0 = vec2<f32>(var_0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(1713f * global0.x))), true && any(vec4<bool>(arg_1.x, arg_1.x, arg_1.x, false)))) * _wgslsmith_f_op_f32(ceil(global0.x))));
    let var_1 = func_2(vec4<i32>(max(arg_3.x, ~1556i >> (_wgslsmith_add_u32(u_input.a, 4294967295u) % 32u)), arg_3.x, -(-arg_3.x << (~0u % 32u)), -2147483647i), vec4<i32>(-1i) * -select(vec4<i32>(-1i, arg_3.x, arg_3.x, -6410i), ~vec4<i32>(arg_3.x, -3256i, arg_3.x, arg_3.x), select(vec4<bool>(false, arg_1.x, arg_1.x, true), vec4<bool>(arg_1.x, true, false, false), arg_1.x)), Struct_1(40641u), Struct_1(arg_0.b.x));
    return arg_0;
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: vec4<u32>) -> u32 {
    var var_0 = Struct_1(u_input.a >> (_wgslsmith_clamp_u32(reverseBits(max(arg_2.a, 38970u)), _wgslsmith_add_u32(func_2(vec4<i32>(arg_0, 10481i, -1i, 66351i), vec4<i32>(30655i, arg_0, arg_0, -68101i), Struct_1(24693u), Struct_1(1u)).b.x, ~arg_3.x), select(func_2(vec4<i32>(arg_0, -2147483647i, arg_0, arg_0), vec4<i32>(arg_0, arg_0, 2147483647i, -210i), Struct_1(4294967295u), Struct_1(u_input.a)).a, 1u, any(vec4<bool>(true, false, false, false)))) % 32u));
    var var_1 = Struct_1(_wgslsmith_mod_u32(38607u, max(_wgslsmith_clamp_u32(_wgslsmith_dot_vec3_u32(arg_3.yyy, vec3<u32>(arg_2.a, arg_2.a, u_input.a)), arg_3.x << (arg_2.b.x % 32u), ~1u), 44860u)));
    let var_2 = Struct_1(reverseBits(1u));
    let var_3 = vec4<u32>(_wgslsmith_dot_vec4_u32(arg_3, arg_3) ^ abs(u_input.a), 4294967295u, var_2.a, var_1.a);
    let var_4 = func_3(func_3(func_3(Struct_2(1u, _wgslsmith_mod_vec2_u32(vec2<u32>(6923u, 41949u), vec2<u32>(43976u, var_1.a))), select(select(vec2<bool>(true, false), vec2<bool>(true, false), true), vec2<bool>(false, false), vec2<bool>(true, true)), func_2(abs(vec4<i32>(arg_0, -2147483647i, -2147483647i, 0i)), ~vec4<i32>(12243i, arg_0, arg_0, arg_0), var_2, Struct_1(1u)), vec2<i32>(17585i, arg_0)), !(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false))), Struct_2(~_wgslsmith_mod_u32(var_0.a, var_3.x), ~vec2<u32>(u_input.a, 1u)), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -vec2<i32>(1i, arg_0), vec2<i32>(_wgslsmith_sub_i32(1i, 2605i), 2147483647i & arg_0))), vec2<bool>(true, false), Struct_2(~30797u, arg_2.b), vec2<i32>(-1i) * -vec2<i32>(arg_0, arg_0));
    return max(21584u, var_4.b.x);
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: Struct_1, arg_3: vec2<f32>) -> bool {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x + _wgslsmith_f_op_f32(floor(arg_3.x))) - arg_3.x))));
    let var_1 = Struct_1(~func_4(arg_0.x, _wgslsmith_f_op_f32(max(-895f, global0.x)), func_3(func_2(arg_0, vec4<i32>(arg_0.x, arg_0.x, -46685i, -2147483647i), Struct_1(16012u), arg_2), vec2<bool>(true, true), func_2(vec4<i32>(-4084i, arg_0.x, 2199i, arg_0.x), arg_0, Struct_1(u_input.a), arg_2), ~vec2<i32>(arg_0.x, arg_0.x)), _wgslsmith_mod_vec4_u32(~vec4<u32>(arg_2.a, arg_2.a, u_input.a, u_input.a), firstLeadingBit(vec4<u32>(arg_2.a, u_input.a, 75155u, 0u)))));
    var var_2 = ~_wgslsmith_add_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1.a, u_input.a) & vec2<u32>(arg_2.a, 4294967295u), select(vec2<u32>(30168u, var_1.a), vec2<u32>(80720u, 4605u), arg_1)), var_1.a) | u_input.a;
    let var_3 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2557f), _wgslsmith_f_op_f32(sign(-394f)), min(23126i, arg_0.x) <= 15275i))), _wgslsmith_f_op_f32(f32(-1f) * -489f));
    let var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(_wgslsmith_sub_u32(~var_1.a, 36094u), _wgslsmith_dot_vec4_u32(~vec4<u32>(arg_2.a, var_1.a, u_input.a, 1u), ~vec4<u32>(81978u, 0u, 104337u, 44220u)), func_4(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1020f), Struct_2(arg_2.a, vec2<u32>(28731u, var_1.a)), _wgslsmith_add_vec4_u32(vec4<u32>(arg_2.a, arg_2.a, arg_2.a, arg_2.a), vec4<u32>(4294967295u, 13039u, arg_2.a, var_1.a)))) << (max(firstTrailingBit(~vec3<u32>(62125u, var_1.a, var_1.a)), select(select(vec3<u32>(u_input.a, 0u, arg_2.a), vec3<u32>(arg_2.a, arg_2.a, arg_2.a), vec3<bool>(true, true, arg_1)), _wgslsmith_div_vec3_u32(vec3<u32>(40916u, 40907u, 13343u), vec3<u32>(0u, 0u, var_1.a)), select(vec3<bool>(arg_1, arg_1, arg_1), vec3<bool>(true, arg_1, true), vec3<bool>(arg_1, arg_1, false)))) % vec3<u32>(32u)), vec3<u32>(56100u, arg_2.a, 18798u));
    return arg_1;
}

fn func_5(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    let var_0 = Struct_1(~4294967295u);
    global0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(global0.x * global0.x))), global0.x, -1000f)));
    var var_1 = func_2(min(firstLeadingBit(_wgslsmith_add_vec4_i32(~vec4<i32>(1i, 2147483647i, 25119i, -30793i), max(vec4<i32>(0i, -85588i, 61928i, 20460i), vec4<i32>(0i, 5799i, -41189i, -2147483647i)))), (abs(vec4<i32>(-2147483647i, -91i, 2147483647i, -1i)) >> (~vec4<u32>(1u, 1857u, u_input.a, arg_2) % vec4<u32>(32u))) >> (~vec4<u32>(1u, 21466u, 1u, u_input.a) % vec4<u32>(32u))), ~vec4<i32>(-countOneBits(-1i), -2147483647i << ((var_0.a ^ u_input.a) % 32u), -1i, -_wgslsmith_mult_i32(-1375i, -20289i)), Struct_1(_wgslsmith_mult_u32(_wgslsmith_add_u32(var_0.a << (102802u % 32u), ~arg_2), _wgslsmith_div_u32(1u, _wgslsmith_mod_u32(var_0.a, u_input.a)))), var_0);
    global0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1066f))), 382f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.x))));
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    return Struct_1(~1u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(!(!select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(vec4<bool>(true, !func_1(vec4<i32>(10445i, -72104i, 0i, 1i), false, Struct_1(55728u), vec2<f32>(global0.x, -119f)), !any(vec2<bool>(true, false)), true), vec4<bool>(all(vec2<bool>(true, false)) && true, true, all(vec3<bool>(true, true, true)), select(true, true, false)), vec4<bool>(any(select(vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false))), true && (4294967295u >= u_input.a), any(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true))), any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), vec3<bool>(false, false, true))))), 13363u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(step(global0.x, global0.x)), _wgslsmith_f_op_f32(1000f * global0.x), global0.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(566f, global0.x, global0.x)))))));
}

