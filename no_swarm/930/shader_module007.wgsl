struct Struct_1 {
    a: vec4<u32>,
    b: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_2() -> Struct_1 {
    return Struct_1(select(~global0.a, global0.a, min(4102u, countOneBits(0u)) <= (~0u & reverseBits(u_input.b.x))), global0.b);
}

fn func_3(arg_0: vec2<f32>, arg_1: vec2<i32>, arg_2: u32, arg_3: vec2<u32>) -> bool {
    var var_0 = !any(select(select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false)), vec2<bool>(true, true), all(select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, true, true)))));
    global0 = Struct_1(global0.a, vec3<u32>(firstLeadingBit(_wgslsmith_add_u32(arg_3.x, global0.b.x) & ~31105u), arg_2, ~33205u));
    let var_1 = abs(~_wgslsmith_dot_vec3_u32(func_2().b, vec3<u32>(arg_2, _wgslsmith_div_u32(47375u, 48854u), ~arg_2)));
    var var_2 = vec3<i32>(u_input.a, 1166i, _wgslsmith_sub_i32(arg_1.x, select(u_input.a, ~arg_1.x, select(false, all(vec3<bool>(false, true, false)), true))));
    global0 = Struct_1(global0.a, _wgslsmith_mult_vec3_u32(vec3<u32>(countOneBits(~global0.a.x), ~global0.b.x, ~1u), _wgslsmith_mult_vec3_u32(select(countOneBits(u_input.c), u_input.b, true), vec3<u32>(~var_1, ~1u, arg_2 >> (arg_2 % 32u)))));
    return true;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: Struct_2, arg_3: i32) -> bool {
    var var_0 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_2.b.x * 1f)));
    global0 = func_2();
    let var_1 = select(!select(select(select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, false), select(false, true, false)), vec2<bool>(false, true), !select(vec2<bool>(false, true), vec2<bool>(false, false), true)), vec2<bool>(true, true), vec2<bool>(true, !all(vec4<bool>(true, true, true, false))));
    var var_2 = !func_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_2.b.yy))), _wgslsmith_add_vec2_i32(abs(abs(vec2<i32>(arg_2.a.x, -1i))), vec2<i32>(-1i) * -vec2<i32>(arg_2.a.x, -22753i)), 4294967295u, arg_0.yz);
    var var_3 = firstLeadingBit(2147483647i ^ _wgslsmith_dot_vec3_i32(~(-vec3<i32>(arg_2.a.x, arg_3, 37867i)), abs(_wgslsmith_mod_vec3_i32(vec3<i32>(-19502i, arg_3, 24177i), vec3<i32>(12713i, arg_3, u_input.a)))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec4<u32>(1u, _wgslsmith_div_u32(79514u, 1u), ~(~global0.a.x), global0.b.x), vec3<u32>(0u, ~4294967295u, _wgslsmith_clamp_u32(_wgslsmith_mult_u32(~global0.a.x, ~u_input.b.x), 66211u, ~_wgslsmith_clamp_u32(u_input.b.x, 0u, 0u))));
    var var_1 = vec3<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(298f + 196f))))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(-274f, -1000f)))))))));
    var var_2 = select(!(!vec4<bool>(all(vec2<bool>(false, false)), select(false, false, true), false, any(vec3<bool>(false, false, false)))), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, func_1(vec3<u32>(0u, 1u, var_0.b.x), vec2<i32>(u_input.a, 0i), Struct_2(vec2<i32>(-47942i, u_input.a), vec3<f32>(-1000f, var_1.x, 222f)), 29980i), true, false)), select(vec4<bool>(true, true, true, true), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), true), any(vec2<bool>(true, true))), func_1(_wgslsmith_mod_vec3_u32(vec3<u32>(0u, var_0.a.x, 50632u), vec3<u32>(91124u, u_input.c.x, 44879u)), ~(vec2<i32>(u_input.a, u_input.a) << (u_input.c.xy % vec2<u32>(32u))), Struct_2(-vec2<i32>(-5968i, -67832i), vec3<f32>(705f, var_1.x, -1356f)), -10242i)), select(!select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true)), !(!select(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true))), true));
    let var_3 = func_2();
    var var_4 = any(vec3<bool>(!(u_input.a > (-39118i << (var_0.b.x % 32u))), any(vec3<bool>(select(var_2.x, var_2.x, true), global0.b.x > var_0.b.x, var_2.x)), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_1.x, 767f) - var_1.x));
}

