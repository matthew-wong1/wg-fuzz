struct Struct_1 {
    a: vec4<i32>,
    b: vec3<i32>,
    c: bool,
}

struct Struct_2 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<bool>,
}

struct Struct_4 {
    a: vec4<bool>,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<f32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: u32) -> vec3<i32> {
    let var_0 = ~(~(~vec3<u32>(u_input.b, 1u, min(u_input.b, u_input.b))));
    var var_1 = false;
    let var_2 = Struct_1(-vec4<i32>(-_wgslsmith_mod_i32(u_input.d.x, u_input.a), u_input.a, ~(u_input.c >> (u_input.b % 32u)), -36816i), ~vec3<i32>(u_input.a, u_input.a, u_input.a), true);
    var var_3 = var_2.c;
    let var_4 = Struct_1(var_2.a, ~(_wgslsmith_clamp_vec3_i32(abs(var_2.b), vec3<i32>(-21967i, 0i, u_input.c), -vec3<i32>(u_input.c, 1i, -2147483647i)) | vec3<i32>(firstTrailingBit(u_input.d.x), u_input.d.x, u_input.a)), all(select(!vec4<bool>(var_2.c, true, var_2.c, var_2.c), select(vec4<bool>(var_2.c, false, var_2.c, var_2.c), select(vec4<bool>(var_2.c, true, var_2.c, false), vec4<bool>(var_2.c, var_2.c, var_2.c, var_2.c), vec4<bool>(var_2.c, false, var_2.c, var_2.c)), true), var_2.c)));
    return vec3<i32>(var_4.a.x, -var_2.b.x << (~(~(~4294967295u)) % 32u), var_2.b.x);
}

fn func_2() -> u32 {
    var var_0 = true;
    let var_1 = Struct_2(select(true, true, any(vec2<bool>(true, true))), _wgslsmith_mod_vec3_i32(vec3<i32>(i32(-1i) * -15201i, -u_input.d.x, 2147483647i) ^ _wgslsmith_add_vec3_i32(firstLeadingBit(u_input.d), -u_input.d), u_input.d));
    var_0 = var_1.a;
    let var_2 = Struct_1(vec4<i32>(~(~countOneBits(21339i)), var_1.b.x, ~_wgslsmith_add_i32(firstLeadingBit(1i), -var_1.b.x), 1i), firstTrailingBit(select(vec3<i32>(-var_1.b.x, _wgslsmith_mult_i32(var_1.b.x, u_input.d.x), _wgslsmith_dot_vec3_i32(u_input.d, vec3<i32>(-22124i, 1i, u_input.a))), func_3(_wgslsmith_mult_u32(u_input.b, global0.x)), vec3<bool>(!var_1.a, var_1.a, var_1.a))), any(vec2<bool>(false, any(vec4<bool>(var_1.a, var_1.a, var_1.a, var_1.a)))));
    var var_3 = var_1;
    return ~_wgslsmith_add_u32(firstLeadingBit(~34941u), 4294967295u);
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: f32) -> Struct_1 {
    global0 = reverseBits(countOneBits(vec3<u32>(firstTrailingBit(4160u), _wgslsmith_mod_u32(arg_0, u_input.b), arg_0)));
    var var_0 = _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.c, u_input.c), _wgslsmith_mod_i32(_wgslsmith_mult_i32(abs(u_input.c), 1i >> (~u_input.b % 32u)), ~(-u_input.c)));
    let var_1 = -1994f;
    var var_2 = ~_wgslsmith_sub_u32(u_input.b, ~(1252u & func_2()));
    let var_3 = u_input.b;
    return Struct_1(_wgslsmith_div_vec4_i32(vec4<i32>(-arg_1.b.x, firstTrailingBit(u_input.c), _wgslsmith_dot_vec2_i32(vec2<i32>(39281i, -1i), u_input.d.yz), u_input.d.x), vec4<i32>(arg_1.b.x, 1i, i32(-1i) * -2147483647i, 2147483647i)) | (vec4<i32>(-1i) * -(vec4<i32>(-2147483647i, u_input.c, arg_1.b.x, -52417i) >> (vec4<u32>(u_input.b, var_3, arg_0, arg_0) % vec4<u32>(32u)))), _wgslsmith_mod_vec3_i32((-vec3<i32>(arg_1.b.x, -47123i, u_input.a) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0, 0u, 85795u), vec3<u32>(var_3, u_input.b, 0u)) % vec3<u32>(32u))) | u_input.d, vec3<i32>(_wgslsmith_mod_i32(1i, u_input.c), ~32272i, firstTrailingBit(u_input.d.x)) ^ -u_input.d), arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = ~_wgslsmith_mult_vec3_u32(~(~vec3<u32>(4294967295u, 1u, global0.x) ^ vec3<u32>(global0.x, u_input.b, u_input.b)), _wgslsmith_sub_vec3_u32(select(~vec3<u32>(global0.x, 84128u, u_input.b), vec3<u32>(0u, global0.x, 78419u), true), countOneBits(vec3<u32>(1u, 1u, 1u))));
    global0 = _wgslsmith_mod_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(1u, global0.x), 52034u, ~min(u_input.b, ~100911u)), vec3<u32>(_wgslsmith_sub_u32(u_input.b, abs(global0.x) >> ((global0.x | u_input.b) % 32u)), ~(~reverseBits(global0.x)), max(global0.x, u_input.b)));
    var var_0 = func_1(0u, Struct_2(!(!(u_input.a < -44220i)), vec3<i32>(u_input.d.x, u_input.d.x, _wgslsmith_sub_i32(firstTrailingBit(53052i), i32(-1i) * -21673i))), _wgslsmith_f_op_f32(floor(1137f)));
    var var_1 = 33169i;
    global0 = ~vec3<u32>(~(~_wgslsmith_mod_u32(global0.x, global0.x)), ~(~abs(4294967295u)), min(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(global0.x, u_input.b, u_input.b, 4294967295u), vec4<u32>(global0.x, global0.x, u_input.b, global0.x)), vec4<u32>(1u, global0.x, 48645u, 1u) >> (vec4<u32>(75363u, 0u, 1u, 92545u) % vec4<u32>(32u))), countOneBits(44181u)));
    let var_2 = ~(~0u);
    global0 = ~(~(~_wgslsmith_clamp_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(global0.x, u_input.b, u_input.b), vec3<u32>(0u, 36016u, 23305u)), vec3<u32>(12661u, 16165u, 66988u), vec3<u32>(72839u, var_2, 69685u))));
    global0 = vec3<u32>(11571u, 40002u, reverseBits(~_wgslsmith_div_u32(var_2, u_input.b) | (select(39242u, 4294967295u, var_0.c) & (0u & global0.x))));
    let var_3 = select(vec2<i32>(2147483647i, min(abs(abs(-1i)), 39757i)), var_0.a.zw, true && !(!var_0.c));
    let x = u_input.a;
    s_output = StorageBuffer(var_2, 2147483647i, _wgslsmith_clamp_u32(~4294967295u, 4294967295u << (countOneBits(~global0.x) % 32u), global0.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-650f, 869f, 848f)) + vec3<f32>(-493f, 1000f, 177f)), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(376f, 199f, 496f))))))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(1065f)) * _wgslsmith_f_op_f32(max(561f, -1641f))) + 1320f))));
}

