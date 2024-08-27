struct Struct_1 {
    a: vec3<u32>,
    b: vec3<bool>,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: i32,
    c: Struct_1,
    d: vec3<f32>,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3() -> i32 {
    var var_0 = vec3<bool>(!(u_input.b.x >= -1i), true, !(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 26028u), _wgslsmith_mod_vec2_u32(vec2<u32>(global0.a, 7289u), vec2<u32>(35609u, global0.a))) == global0.a));
    let var_1 = ~(vec2<i32>(-1i) * -u_input.b);
    var_0 = !select(vec3<bool>(!var_0.x, var_0.x, (false != var_0.x) || var_0.x), !vec3<bool>(false && var_0.x, true, true && var_0.x), !(!(!vec3<bool>(var_0.x, var_0.x, true))));
    var var_2 = ~(~(~29818u));
    let var_3 = min(reverseBits(firstLeadingBit(select(vec3<i32>(-1i, u_input.b.x, u_input.a), vec3<i32>(u_input.b.x, -68331i, 2147483647i), var_0.x))), _wgslsmith_mod_vec3_i32(_wgslsmith_div_vec3_i32(~vec3<i32>(var_1.x, -9243i, -1i), vec3<i32>(-2147483647i, var_1.x, 2147483647i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(48022i, var_1.x, 1i), vec3<i32>(u_input.a, var_1.x, 1i)), vec3<i32>(u_input.a, var_1.x, 64653i)))) << (vec3<u32>(global0.a << (global0.a % 32u), ~reverseBits(4294967295u), global0.a) % vec3<u32>(32u));
    return ~u_input.a;
}

fn func_2() -> Struct_3 {
    var var_0 = _wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(func_3(), u_input.b.x, _wgslsmith_sub_i32(-27761i, u_input.b.x)), select(vec3<i32>(-55771i, 0i, 32299i), vec3<i32>(u_input.b.x, u_input.b.x, u_input.a), true) | -vec3<i32>(u_input.a, 0i, u_input.b.x)), _wgslsmith_mult_vec3_i32(reverseBits(vec3<i32>(u_input.a, 1i, 0i)), vec3<i32>(~(-2147483647i), _wgslsmith_dot_vec3_i32(vec3<i32>(21705i, -2147483647i, -2117i), vec3<i32>(-1i, -4388i, -1i)), u_input.b.x))), -firstTrailingBit(-2147483647i));
    let var_1 = Struct_1(select(_wgslsmith_mult_vec3_u32(vec3<u32>(~global0.a, _wgslsmith_mult_u32(0u, 9633u), firstTrailingBit(global0.a)), ~vec3<u32>(global0.a, global0.a, global0.a)), firstTrailingBit(~(~vec3<u32>(global0.a, global0.a, global0.a))), vec3<bool>(!any(vec3<bool>(true, true, false)), true, true)), select(!select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), true), select(!select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), false), vec3<bool>(true, global0.a <= ~4294967295u, any(vec4<bool>(false, true, true, true)))), ~(~(_wgslsmith_mult_i32(u_input.b.x, u_input.a) << (~global0.a % 32u))), !(u_input.b.x < (firstLeadingBit(55672i) >> (1u % 32u))));
    var var_2 = var_1.a.x;
    var var_3 = Struct_4(43595i, Struct_2(~vec2<u32>(max(var_1.a.x, 33349u), global0.a), u_input.a, var_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-795f, -536f, 1285f)))));
    let var_4 = var_3.b.d.x < _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_3.b.d.x))))));
    return Struct_3(~11339u);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2, arg_2: vec2<bool>) -> u32 {
    var var_0 = func_2();
    var_0 = func_2();
    var var_1 = 2147483647i;
    let var_2 = Struct_3(_wgslsmith_dot_vec3_u32(select(arg_1.c.a, arg_1.c.a, !arg_0), _wgslsmith_add_vec3_u32(~vec3<u32>(0u, global0.a, var_0.a), arg_1.c.a << (_wgslsmith_div_vec3_u32(arg_1.c.a, arg_1.c.a) % vec3<u32>(32u)))));
    var var_3 = func_2();
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a;
    global0 = Struct_3(4294967295u);
    let var_1 = vec4<u32>(~reverseBits(_wgslsmith_mod_u32(_wgslsmith_add_u32(63630u, 9766u), func_1(vec3<bool>(false, true, false), Struct_2(vec2<u32>(global0.a, global0.a), u_input.b.x, Struct_1(vec3<u32>(0u, 1u, global0.a), vec3<bool>(true, false, false), var_0, true), vec3<f32>(1556f, 1262f, 414f)), vec2<bool>(false, false)))), ~_wgslsmith_clamp_u32(1u, global0.a, countOneBits(_wgslsmith_sub_u32(global0.a, 115343u))), _wgslsmith_dot_vec4_u32(max(abs(vec4<u32>(0u, 4294967295u, global0.a, global0.a)), ~(vec4<u32>(global0.a, global0.a, global0.a, 1u) << (vec4<u32>(global0.a, global0.a, 0u, 4294967295u) % vec4<u32>(32u)))), max(vec4<u32>(global0.a, ~1u, abs(global0.a), 66604u), _wgslsmith_clamp_vec4_u32(~vec4<u32>(global0.a, global0.a, 1u, 0u), vec4<u32>(7507u, 18039u, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global0.a, global0.a, 11700u, global0.a), vec4<u32>(33566u, global0.a, 50967u, global0.a))))), 1u);
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-217f + -551f)) - _wgslsmith_f_op_f32(round(232f))), 515f)) - -1392f);
    var_2 = 157f;
    let var_3 = true & all(!select(vec2<bool>(true, true), select(vec2<bool>(false, false), vec2<bool>(true, false), false), false));
    global0 = Struct_3(var_1.x ^ _wgslsmith_add_u32(~1u, _wgslsmith_dot_vec4_u32(var_1, vec4<u32>(global0.a, 31941u, var_1.x, 4294967295u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, 1u, 1u), var_1.zxz) % 32u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1038f, -1019f))))), countOneBits(u_input.a), reverseBits(vec4<u32>(~countOneBits(var_1.x), abs(20253u), ~var_1.x, _wgslsmith_clamp_u32(reverseBits(var_1.x), ~global0.a, 47387u))), ~(-13735i), u_input.a);
}

