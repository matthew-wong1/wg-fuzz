struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
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

var<private> global0: array<vec2<u32>, 27> = array<vec2<u32>, 27>(vec2<u32>(10649u, 0u), vec2<u32>(40722u, 4294967295u), vec2<u32>(1u, 96224u), vec2<u32>(0u, 30682u), vec2<u32>(27238u, 1u), vec2<u32>(32483u, 1u), vec2<u32>(1u, 1u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 29879u), vec2<u32>(0u, 8904u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(27276u, 66619u), vec2<u32>(4294967295u, 1u), vec2<u32>(1u, 90472u), vec2<u32>(53671u, 4294967295u), vec2<u32>(12892u, 49766u), vec2<u32>(99418u, 1u), vec2<u32>(4294967295u, 18859u), vec2<u32>(24334u, 0u), vec2<u32>(97349u, 27717u), vec2<u32>(0u, 0u), vec2<u32>(4294967295u, 0u), vec2<u32>(4294967295u, 13270u), vec2<u32>(97949u, 45507u), vec2<u32>(4294967295u, 3392u), vec2<u32>(41233u, 74284u), vec2<u32>(1564u, 79760u));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32) -> i32 {
    var var_0 = ~(~(~max(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b.x, 1u, u_input.c.x, u_input.c.x), vec4<u32>(63312u, u_input.c.x, 11985u, u_input.c.x)), vec4<u32>(34721u, u_input.c.x, 0u, u_input.c.x))));
    var_0 = vec4<u32>(~(abs(var_0.x ^ 0u) >> (0u % 32u)), var_0.x, _wgslsmith_mult_u32(~(~_wgslsmith_mult_u32(u_input.b.x, var_0.x)), ~u_input.b.x), ~17850u);
    var_0 = vec4<u32>(46733u, var_0.x, 4294967295u, 1u);
    let var_1 = true;
    var_0 = vec4<u32>(u_input.c.x, 16470u, u_input.b.x, firstLeadingBit(~(~abs(75837u))));
    return u_input.a;
}

fn func_2(arg_0: Struct_1) -> vec3<u32> {
    global0 = array<vec2<u32>, 27>();
    let var_0 = _wgslsmith_add_i32(~(~_wgslsmith_dot_vec2_i32(abs(vec2<i32>(-49942i, -1i)), -vec2<i32>(-13983i, u_input.a))), -u_input.a);
    let var_1 = select(firstTrailingBit(vec2<i32>(-16414i, _wgslsmith_mod_i32(i32(-1i) * -1i, -11010i))), vec2<i32>(abs(2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(12909i, -34866i, -1i), -vec3<i32>(-15439i, 21821i, -2147483647i))), !select(!select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(arg_0.c, arg_0.c)), !(!vec2<bool>(true, arg_0.a)), select(vec2<bool>(true, true), vec2<bool>(arg_0.a, arg_0.c), u_input.a != u_input.a)));
    let var_2 = arg_0;
    var var_3 = vec4<i32>(func_3(-2147483647i), ~_wgslsmith_mod_i32(~u_input.a, reverseBits(var_1.x | var_0)), countOneBits(33164i), -firstLeadingBit(countOneBits(25471i ^ var_0)));
    return countOneBits(_wgslsmith_add_vec3_u32(min(vec3<u32>(1u, 34923u, _wgslsmith_sub_u32(4294967295u, u_input.c.x)), vec3<u32>(_wgslsmith_clamp_u32(28720u, 60441u, 17893u), arg_0.b, firstTrailingBit(1u))), vec3<u32>(arg_0.b, ~4294967295u, u_input.c.x)));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32) -> bool {
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    var var_0 = Struct_1(!arg_0.c, 0u, any(vec4<bool>(true, select(false, arg_0.a, arg_0.a), arg_2 >= u_input.a, arg_1.a)) | (arg_1.c | (u_input.b.x > 86764u)));
    let var_1 = arg_1;
    let var_2 = ~abs(_wgslsmith_clamp_vec3_u32(~func_2(Struct_1(true, 0u, var_0.c)), vec3<u32>(arg_1.b, _wgslsmith_add_u32(var_1.b, u_input.c.x), ~20256u), vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.b, u_input.b.x, arg_1.b, 0u), vec4<u32>(var_1.b, u_input.b.x, 2850u, arg_0.b)), _wgslsmith_clamp_u32(14108u, arg_0.b, u_input.b.x), ~148328u)));
    return arg_0.c;
}

fn func_4(arg_0: i32, arg_1: vec4<bool>, arg_2: u32) -> Struct_1 {
    var var_0 = Struct_1(any(!vec2<bool>(true, arg_1.x)), ~1u, any(arg_1));
    let var_1 = Struct_1(all(!(!arg_1)), ~u_input.b.x, var_0.c);
    let var_2 = var_1;
    let var_3 = min(vec4<u32>(u_input.c.x & ~1u, _wgslsmith_div_u32(_wgslsmith_mod_u32(30893u, 1u), _wgslsmith_dot_vec2_u32(u_input.c, vec2<u32>(var_1.b, var_0.b))), 47297u, select(_wgslsmith_clamp_u32(66609u, var_0.b, 71763u), 0u, false)) & vec4<u32>(22695u, 52001u, 58868u, 56007u), countOneBits(abs(~(vec4<u32>(1u, arg_2, 38016u, var_1.b) >> (vec4<u32>(var_2.b, var_2.b, var_1.b, 23547u) % vec4<u32>(32u))))));
    let var_4 = vec2<bool>(true, _wgslsmith_clamp_i32(-1i, ~(1i >> (1u % 32u)), u_input.a) > _wgslsmith_add_i32(_wgslsmith_clamp_i32(_wgslsmith_add_i32(33871i, u_input.a), 15526i >> (1u % 32u), u_input.a), ~u_input.a));
    return var_2;
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_1) -> bool {
    global0 = array<vec2<u32>, 27>();
    var var_0 = func_4(-select(_wgslsmith_dot_vec2_i32(~vec2<i32>(1i, -19599i), min(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.a, u_input.a))), 2147483647i, !(!arg_0.x)), vec4<bool>(func_4(_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, -2147483647i, 28694i, u_input.a), vec4<i32>(u_input.a, -9830i, u_input.a, -5283i)), ~41064i), select(select(vec4<bool>(true, arg_1.a, false, false), vec4<bool>(false, true, arg_1.c, false), false), vec4<bool>(arg_1.c, false, arg_1.c, true), true), arg_1.b).a, false, arg_0.x, true), abs(1u));
    var_0 = arg_1;
    global0 = array<vec2<u32>, 27>();
    var var_1 = Struct_1(arg_0.x, max(_wgslsmith_clamp_u32(12105u, 15359u, 1u), arg_1.b), (arg_1.c & true) || var_0.c);
    return all(!select(!vec3<bool>(arg_0.x, true, false), vec3<bool>(!arg_1.c, arg_1.b < 0u, all(vec3<bool>(var_1.a, arg_0.x, arg_1.c))), vec3<bool>(true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(func_5(vec2<bool>(true, select(4294967295u != u_input.b.x, true, any(vec2<bool>(false, false)))), func_4(u_input.a, vec4<bool>(true, true, func_1(Struct_1(true, u_input.b.x, false), Struct_1(true, 32373u, false), u_input.a), any(vec2<bool>(false, true))), ~4294967295u)), 44824u, 234f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(-709f)), _wgslsmith_f_op_f32(f32(-1f) * -1045f))));
    let var_1 = ~var_0.b;
    let var_2 = func_4(u_input.a, !select(vec4<bool>(var_0.a || var_0.c, true, !var_0.c, any(vec3<bool>(var_0.c, true, var_0.a))), select(!vec4<bool>(var_0.c, false, var_0.c, true), select(vec4<bool>(false, var_0.a, var_0.c, true), vec4<bool>(var_0.c, var_0.a, var_0.c, var_0.c), vec4<bool>(true, var_0.a, false, true)), select(vec4<bool>(var_0.c, var_0.a, false, true), vec4<bool>(true, var_0.c, false, false), vec4<bool>(var_0.c, var_0.c, true, false))), !select(vec4<bool>(var_0.a, false, var_0.c, false), vec4<bool>(false, var_0.a, false, var_0.c), vec4<bool>(false, false, var_0.a, var_0.c))), var_1);
    global0 = array<vec2<u32>, 27>();
    global0 = array<vec2<u32>, 27>();
    var var_3 = ~10907u;
    var_0 = func_4(_wgslsmith_dot_vec4_i32(-select(abs(vec4<i32>(1i, -17398i, u_input.a, -2147483647i)), _wgslsmith_div_vec4_i32(vec4<i32>(-1i, -23002i, u_input.a, u_input.a), vec4<i32>(-1i, -2147483647i, 1i, 16281i)), select(vec4<bool>(true, true, var_2.c, true), vec4<bool>(true, false, var_2.c, true), vec4<bool>(false, var_0.a, var_2.a, var_2.a))), firstTrailingBit(vec4<i32>(-22544i, u_input.a, reverseBits(u_input.a), u_input.a))), vec4<bool>(true, true, true, !any(vec4<bool>(true, true, true, true))), min(~var_1, ~(~0u)));
    global0 = array<vec2<u32>, 27>();
    var var_4 = vec3<bool>(_wgslsmith_add_u32(~abs(103756u), ~u_input.c.x) > u_input.b.x, true, u_input.a != _wgslsmith_mult_i32(-12386i, -44990i));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(countOneBits(u_input.a), 14826i));
}

