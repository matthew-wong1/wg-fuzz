struct Struct_1 {
    a: f32,
    b: vec3<u32>,
    c: u32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(108f, vec3<u32>(4294967295u, 1u, 26283u), 4294967295u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_1(arg_0: f32, arg_1: Struct_1) -> Struct_1 {
    var var_0 = arg_1;
    var var_1 = vec4<bool>(true, true, true, true);
    var_1 = !(!vec4<bool>(arg_0 <= var_0.a, !(var_1.x & var_1.x), var_1.x, !select(false, false, false)));
    var_0 = arg_1;
    let var_2 = arg_1.b.x;
    return Struct_1(-118f, vec3<u32>(~(~var_2 ^ 42540u), ~global0.c, var_0.c), firstTrailingBit(11460u));
}

fn func_2() -> Struct_1 {
    var var_0 = global0.b.yz;
    var var_1 = func_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global0.a, -647f)) - global0.a), func_1(global0.a, func_1(_wgslsmith_f_op_f32(-global0.a), Struct_1(func_1(global0.a, Struct_1(1000f, vec3<u32>(1u, 4294967295u, 14470u), u_input.a)).a, global0.b << (global0.b % vec3<u32>(32u)), u_input.a))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -839f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.a)) * _wgslsmith_f_op_f32(f32(-1f) * -924f)), true))), var_1.b, func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.a)), func_1(_wgslsmith_f_op_f32(global0.a - var_1.a), Struct_1(-953f, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 1u, var_1.b.x), global0.b), u_input.a))).c);
    var var_3 = ~var_0.x;
    return var_2;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> u32 {
    global0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f * _wgslsmith_f_op_f32(arg_0.a * _wgslsmith_f_op_f32(global0.a - arg_1.a)))), vec3<u32>(~(_wgslsmith_dot_vec2_u32(arg_0.b.zx, global0.b.zx) >> (15913u % 32u)), arg_3.b.x, _wgslsmith_clamp_u32(90370u, 93499u, ~arg_2.c)), 4294967295u);
    global0 = Struct_1(699f, abs(vec3<u32>(func_1(_wgslsmith_f_op_f32(1000f - 627f), arg_2).c, 1u, ~(~arg_2.b.x))), _wgslsmith_add_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 39041u), vec2<u32>(u_input.a, 31077u)) & min(0u, arg_0.c), 9836u));
    global0 = func_2();
    var var_0 = ~(-27679i);
    let var_1 = Struct_1(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-arg_3.a), 1124f)), _wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_2.c, 4294967295u, 11840u), arg_1.b ^ vec3<u32>(1u, 4294967295u, arg_2.c)), vec3<u32>(func_1(arg_3.a, arg_2).b.x, 1u, 1u | _wgslsmith_sub_u32(arg_2.b.x, u_input.a)), vec3<u32>(_wgslsmith_dot_vec2_u32(max(vec2<u32>(global0.b.x, u_input.a), global0.b.zx), vec2<u32>(global0.b.x, 15025u) << (vec2<u32>(18139u, 40611u) % vec2<u32>(32u))), arg_1.c, func_2().c ^ 31241u)), _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(_wgslsmith_div_u32(global0.c, 41695u), 4294967295u), arg_3.b.x, _wgslsmith_mod_u32(~4294967295u, 46996u), ~_wgslsmith_dot_vec3_u32(arg_3.b, global0.b)), vec4<u32>(~global0.c, func_1(_wgslsmith_f_op_f32(step(-2105f, arg_2.a)), Struct_1(1769f, vec3<u32>(arg_1.c, 10541u, 1u), arg_1.b.x)).c, select(u_input.a | 4294967295u, _wgslsmith_div_u32(arg_1.c, arg_3.c), all(vec3<bool>(false, true, true))), 1u)));
    return ~(35357u << (func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.a + -2748f)), Struct_1(-1415f, vec3<u32>(var_1.b.x, 1u, arg_3.c), arg_3.b.x << (0u % 32u))).c % 32u));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: Struct_1) -> u32 {
    return 17645u;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1627f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(272f)) + _wgslsmith_f_op_f32(exp2(global0.a))))), Struct_1(_wgslsmith_f_op_f32(sign(global0.a)), _wgslsmith_add_vec3_u32(~abs(vec3<u32>(32392u, 104879u, 1u)), global0.b), abs(13001u)));
    let var_0 = func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.a)) * 1881f)), func_2());
    global0 = var_0;
    let var_1 = vec3<i32>(-(23597i | ((-15662i >> (var_0.c % 32u)) & _wgslsmith_sub_i32(0i, 39053i))), -1i, _wgslsmith_mod_i32(-2147483647i, -9938i));
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-153f)) - _wgslsmith_div_f32(-543f, 1942f))), max(~_wgslsmith_div_vec3_u32(vec3<u32>(33452u, var_0.b.x, 59728u) | var_0.b, var_0.b << (vec3<u32>(var_0.c, global0.b.x, 1u) % vec3<u32>(32u))), var_0.b), func_4(~var_1.x, Struct_1(_wgslsmith_f_op_f32(var_0.a * var_0.a), min(~var_0.b, vec3<u32>(64563u, 0u, global0.c)), func_3(var_0, func_1(var_0.a, Struct_1(-366f, global0.b, global0.b.x)), var_0, func_2())), var_0));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(var_2.a, -1000f), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_2.a))), global0.a, global0.a));
}

