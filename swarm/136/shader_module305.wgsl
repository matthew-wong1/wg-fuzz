struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: f32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(18895i, vec3<u32>(4294967295u, 1u, 34310u)), Struct_1(31772i, vec3<u32>(0u, 39287u, 1u)), vec3<i32>(-1i, 0i, -44631i));

var<private> global1: vec4<u32> = vec4<u32>(4294967295u, 4294967295u, 62644u, 4294967295u);

var<private> global2: array<Struct_3, 28>;

var<private> global3: bool;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1() -> Struct_2 {
    let var_0 = ~_wgslsmith_add_vec4_u32(vec4<u32>(~global1.x, countOneBits(abs(4294967295u)), global0.a.b.x, global1.x), vec4<u32>(global1.x, _wgslsmith_sub_u32(_wgslsmith_mult_u32(0u, u_input.b), ~global1.x), ~_wgslsmith_add_u32(u_input.b, 51585u), 1u));
    return Struct_2(global0.a, global0.a, firstLeadingBit(~global0.c));
}

fn func_2(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: i32) -> vec3<u32> {
    let var_0 = arg_0.a;
    let var_1 = func_1();
    global3 = !arg_1.x;
    let var_2 = Struct_3(func_1().a, u_input.a.x, Struct_1(_wgslsmith_mult_i32(~(2147483647i << (var_1.b.b.x % 32u)), -_wgslsmith_mult_i32(arg_0.a.a, -2147483647i)), var_1.a.b));
    global3 = true;
    return global0.a.b;
}

fn func_3() -> vec4<u32> {
    let var_0 = !(!(!select(select(vec4<bool>(true, false, true, false), vec4<bool>(true, false, false, true), true), vec4<bool>(false, true, false, false), true)));
    var var_1 = func_1().b;
    let var_2 = vec2<f32>(507f, _wgslsmith_div_f32(1006f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1710f)))));
    var var_3 = min(vec4<u32>(1u, 0u, countOneBits(~var_1.b.x), _wgslsmith_mod_u32(countOneBits(56477u), 79863u)), ~reverseBits(max(vec4<u32>(4294967295u, 0u, global1.x, 2783u) | vec4<u32>(9393u, 0u, var_1.b.x, u_input.b), ~vec4<u32>(8379u, 34860u, var_1.b.x, 79821u))));
    let var_4 = var_1.b.x;
    return vec4<u32>(reverseBits(26730u), ~max(var_3.x, 1u ^ ~var_3.x), func_2(Struct_2(func_1().b, func_1().a, firstLeadingBit(vec3<i32>(48046i, 64594i, global0.c.x))), vec2<bool>(var_0.x, var_0.x), _wgslsmith_div_i32(~(~var_1.a), firstTrailingBit(u_input.a.x))).x, ~global0.a.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -70485i > global0.b.a;
    let var_1 = func_1();
    var var_2 = global0.b.b.x;
    let var_3 = _wgslsmith_sub_u32(_wgslsmith_div_u32(~_wgslsmith_clamp_u32(global0.b.b.x, global0.b.b.x, global0.b.b.x) << (global0.a.b.x % 32u), 65333u), _wgslsmith_dot_vec3_u32(~_wgslsmith_div_vec3_u32(global1.wyz & vec3<u32>(var_1.b.b.x, global0.b.b.x, u_input.c), vec3<u32>(0u, 70801u, 9181u)), _wgslsmith_mod_vec3_u32(var_1.a.b & func_2(var_1, vec2<bool>(false, var_0), var_1.c.x), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(global1.x, global1.x, 4294967295u), global0.b.b, global1.yzx), ~vec3<u32>(global0.a.b.x, 23642u, 1u)))));
    global1 = abs(_wgslsmith_mod_vec4_u32(func_3(), select(vec4<u32>(u_input.b, u_input.b, u_input.b, global1.x), ~vec4<u32>(var_3, 0u, var_1.b.b.x, global0.a.b.x), vec4<bool>(true, true, true, true)))) >> (~(~(vec4<u32>(var_1.b.b.x, u_input.c, 55001u, 4294967295u) >> (firstTrailingBit(vec4<u32>(u_input.c, u_input.c, 4294967295u, 19339u)) % vec4<u32>(32u)))) % vec4<u32>(32u));
    var var_4 = countOneBits(_wgslsmith_sub_vec4_i32(vec4<i32>(-53024i, -(-1i >> (global1.x % 32u)), 3131i, 51835i), u_input.a));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(1000f, -144f)) + _wgslsmith_f_op_f32(abs(-441f)))))), func_2(var_1, !vec2<bool>(any(vec4<bool>(var_0, var_0, false, true)), true), reverseBits(1i) & -global0.a.a).x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)))) * -517f), select(~global1.yx, ~(~abs(var_1.b.b.yy)), select(true, false, any(!vec4<bool>(false, var_0, var_0, false)))));
}

