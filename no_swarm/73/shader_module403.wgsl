struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<u32>,
    b: Struct_2,
    c: bool,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
    c: vec4<i32>,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32> = vec3<u32>(0u, 10404u, 31833u);

var<private> global1: i32 = 2147483647i;

var<private> global2: vec2<u32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2() -> f32 {
    global1 = max(-u_input.a, -1i & (2147483647i ^ (abs(u_input.a) & (u_input.a | u_input.a))));
    var var_0 = Struct_1(abs(u_input.a));
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -974f)))));
}

fn func_3() -> i32 {
    global2 = global0.yx;
    global0 = ~(_wgslsmith_sub_vec3_u32((vec3<u32>(1u, 4727u, 86330u) >> (vec3<u32>(global2.x, global2.x, global2.x) % vec3<u32>(32u))) << (vec3<u32>(52608u, 1u, global2.x) % vec3<u32>(32u)), select(vec3<u32>(11848u, global2.x, 42142u), vec3<u32>(103527u, global2.x, 0u) | vec3<u32>(727u, 76076u, global2.x), all(vec4<bool>(true, true, true, true)))) & vec3<u32>(0u, global0.x, _wgslsmith_mult_u32(~global0.x, abs(global2.x))));
    var var_0 = vec4<u32>(30340u & _wgslsmith_mult_u32(global0.x, firstLeadingBit(1u)), 0u, select(~38386u, min(_wgslsmith_dot_vec2_u32(global0.xy, global0.yz), _wgslsmith_dot_vec4_u32(vec4<u32>(60121u, global2.x, global0.x, global2.x), vec4<u32>(global2.x, 0u, 13849u, global0.x))), true) >> (((global0.x & ~20418u) | firstLeadingBit(global0.x)) % 32u), 4294967295u);
    var var_1 = ~countOneBits(vec2<i32>(_wgslsmith_add_i32(-1i, -21297i), reverseBits(_wgslsmith_mult_i32(u_input.a, 30683i))));
    var var_2 = u_input.a;
    return abs(firstLeadingBit(1i));
}

fn func_1() -> vec3<i32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(-491f + 1414f), 680f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2()), _wgslsmith_f_op_f32(1000f * -122f), all(vec2<bool>(true, true)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2555f * -663f)))))));
    var var_1 = Struct_4(vec2<u32>(_wgslsmith_add_u32(8445u, ~_wgslsmith_dot_vec2_u32(global0.xz, vec2<u32>(61272u, global2.x))), _wgslsmith_dot_vec2_u32(~global0.yx, vec2<u32>(global2.x, global0.x) ^ _wgslsmith_add_vec2_u32(global0.xz, global0.zz))), Struct_2(Struct_1(_wgslsmith_mod_i32(2147483647i, func_3())), 511f, (vec4<i32>(-1i) * -vec4<i32>(1i, u_input.a, u_input.a, u_input.a)) >> (vec4<u32>(~global2.x, 1u, global2.x | 0u, reverseBits(global0.x)) % vec4<u32>(32u))), true == (!(397f < var_0.x) && true));
    global2 = ~vec2<u32>(select(~global0.x, global2.x, any(vec2<bool>(var_1.c, var_1.c))) & firstLeadingBit(35670u), select(_wgslsmith_mod_u32(_wgslsmith_mod_u32(0u, var_1.a.x), min(global2.x, global0.x)), max(_wgslsmith_add_u32(var_1.a.x, 43606u), firstLeadingBit(var_1.a.x)), true));
    let var_2 = _wgslsmith_sub_u32(_wgslsmith_mult_u32(18735u, 45350u), firstLeadingBit(~global2.x));
    let var_3 = var_1.b;
    return vec3<i32>(u_input.a, -14445i, countOneBits(1i)) >> (vec3<u32>(~firstLeadingBit(5977u), var_2, global0.x) % vec3<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + 1000f)) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(783f, -928f))));
    global1 = u_input.a >> (1u % 32u);
    let var_1 = -vec3<i32>(-(-u_input.a << (~global0.x % 32u)), _wgslsmith_dot_vec3_i32(select(max(vec3<i32>(u_input.a, u_input.a, u_input.a), vec3<i32>(-1i, -2147483647i, 2147483647i)), _wgslsmith_mult_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.a), vec3<i32>(u_input.a, u_input.a, -1i)), true), func_1()), u_input.a);
    let var_2 = _wgslsmith_add_i32(select(-abs(min(46279i, 0i)), _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(firstLeadingBit(vec4<i32>(u_input.a, u_input.a, var_1.x, 13521i)), select(vec4<i32>(17482i, var_1.x, u_input.a, var_1.x), vec4<i32>(var_1.x, -26593i, 35859i, u_input.a), vec4<bool>(false, false, false, true)), -vec4<i32>(u_input.a, -1i, 2147483647i, var_1.x)), vec4<i32>(1i, abs(u_input.a), ~u_input.a, _wgslsmith_mod_i32(var_1.x, -9179i))), true), _wgslsmith_sub_i32(var_1.x, _wgslsmith_mod_i32(u_input.a, u_input.a)));
    global1 = _wgslsmith_sub_i32(-(~abs(var_1.x)), _wgslsmith_sub_i32(countOneBits(-16210i), ~9945i));
    var var_3 = Struct_1(_wgslsmith_div_i32(-func_1().x, _wgslsmith_sub_i32(var_2, -1i)));
    global0 = select(_wgslsmith_clamp_vec3_u32(_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(~vec3<u32>(global0.x, 0u, 0u), ~vec3<u32>(87294u, 28927u, global2.x)), abs(vec3<u32>(1u, 1u, 1u) & vec3<u32>(global0.x, global2.x, 4294967295u))), (abs(vec3<u32>(0u, global0.x, 0u)) & ~vec3<u32>(global0.x, global2.x, 4294967295u)) ^ _wgslsmith_mult_vec3_u32(vec3<u32>(global0.x, 13881u, 6908u), ~vec3<u32>(1u, 4705u, 17257u)), vec3<u32>(_wgslsmith_clamp_u32(global2.x | 55504u, _wgslsmith_clamp_u32(global2.x, 17117u, 98786u), 1u), 9889u, global2.x)), ~(~(~vec3<u32>(global2.x, global0.x, 1u)) & vec3<u32>(1u, _wgslsmith_div_u32(18735u, global2.x), ~4294967295u)), ~global2.x <= global0.x);
    var var_4 = Struct_4(~(~vec2<u32>(_wgslsmith_mult_u32(global0.x, 39862u), _wgslsmith_dot_vec2_u32(vec2<u32>(27244u, global0.x), global0.zx))), Struct_2(Struct_1(u_input.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0) - -161f)), min(~vec4<i32>(u_input.a, -1i, var_3.a, 2840i), select(~vec4<i32>(-14811i, -1i, 0i, 3237i), vec4<i32>(-7195i, var_3.a, var_3.a, u_input.a), all(vec3<bool>(true, true, false))))), true);
    let x = u_input.a;
    s_output = StorageBuffer(2338f, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(round(var_0)), 2537f)) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-2270f, -495f))))), _wgslsmith_mod_vec4_i32(abs(_wgslsmith_add_vec4_i32(abs(vec4<i32>(0i, -8046i, 41414i, 1i)), var_4.b.c)), ~_wgslsmith_div_vec4_i32(~var_4.b.c, var_4.b.c)), global0.x, _wgslsmith_add_i32(reverseBits(var_2), abs(i32(-1i) * -20008i)));
}

