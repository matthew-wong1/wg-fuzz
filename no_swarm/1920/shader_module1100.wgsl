struct Struct_1 {
    a: vec4<i32>,
    b: f32,
    c: vec2<f32>,
    d: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec4<bool>) -> vec4<i32> {
    let var_0 = _wgslsmith_f_op_f32(f32(-1f) * -623f);
    global0 = _wgslsmith_mult_vec3_i32(vec3<i32>(_wgslsmith_mult_i32(global0.x, ~(-17837i)), global0.x, countOneBits(-2147483647i)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(-abs(vec3<i32>(global0.x, u_input.c, global0.x)), vec3<i32>(global0.x, 1i, -u_input.c)), ~(-_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, 1i, global0.x), vec3<i32>(-1i, -34335i, -1i)))));
    global0 = vec3<i32>(-_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, global0.x, 49730i, global0.x), -vec4<i32>(u_input.c, global0.x, global0.x, u_input.c), min(vec4<i32>(-3708i, -1i, u_input.c, -2518i), vec4<i32>(u_input.c, u_input.c, u_input.c, 1i))), select(vec4<i32>(0i, u_input.c, -65967i, 1i), vec4<i32>(-53302i, -67139i, 0i, u_input.c), arg_0)), -(~abs(_wgslsmith_sub_i32(u_input.c, u_input.c))), -reverseBits(_wgslsmith_mult_i32(_wgslsmith_sub_i32(u_input.c, global0.x), 0i)));
    global0 = ~max(_wgslsmith_add_vec3_i32(~vec3<i32>(global0.x, global0.x, 1i), -vec3<i32>(global0.x, 66554i, 68602i)), vec3<i32>(1i, 3251i, global0.x)) >> (~(~_wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a.x, u_input.b, u_input.a.x), _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.b, 68554u), vec3<u32>(u_input.d, u_input.d, 1u)))) % vec3<u32>(32u));
    global0 = min(~(-(vec3<i32>(1i, global0.x, global0.x) ^ vec3<i32>(42047i, -3317i, global0.x))), vec3<i32>(-1i) * -vec3<i32>(1i, ~1900i, -global0.x));
    return vec4<i32>(~global0.x, _wgslsmith_sub_i32(u_input.c, ~_wgslsmith_dot_vec4_i32(vec4<i32>(1i, global0.x, 0i, 0i), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, -1i), vec4<i32>(1i, u_input.c, 2147483647i, u_input.c)))), _wgslsmith_clamp_i32(min(-u_input.c ^ 0i, 50039i), ~0i, -(_wgslsmith_sub_i32(u_input.c, u_input.c) | u_input.c)), -(i32(-1i) * -u_input.c));
}

fn func_4(arg_0: u32, arg_1: u32, arg_2: Struct_1) -> vec2<f32> {
    var var_0 = arg_2;
    var var_1 = u_input.b;
    var var_2 = ~arg_2.d.xzw;
    var var_3 = arg_2;
    var var_4 = _wgslsmith_f_op_f32(min(246f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(688f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1762f * 607f))))));
    return vec2<f32>(_wgslsmith_div_f32(2066f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1497f * arg_2.b)))), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-arg_2.b)), var_3.c.x, true))));
}

fn func_2() -> u32 {
    var var_0 = Struct_1(~abs(_wgslsmith_add_vec4_i32(vec4<i32>(-1i, 1i, u_input.c, 0i), vec4<i32>(global0.x, global0.x, -5503i, global0.x))) << (abs(~_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a.x, u_input.b, u_input.b, 4294967295u), vec4<u32>(u_input.b, 45789u, 1u, u_input.b))) % vec4<u32>(32u)), -1249f, _wgslsmith_f_op_vec2_f32(func_4(_wgslsmith_add_u32(u_input.d, _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.d, 22328u), vec2<u32>(1u, u_input.b)), abs(u_input.a))), _wgslsmith_div_u32(34810u, ~u_input.d << ((40909u << (u_input.d % 32u)) % 32u)), Struct_1(_wgslsmith_add_vec4_i32(func_3(vec4<bool>(true, true, true, false)), -vec4<i32>(u_input.c, 2147483647i, -21952i, global0.x)), -1158f, vec2<f32>(-330f, 1000f), vec4<u32>(u_input.a.x, _wgslsmith_mod_u32(u_input.a.x, u_input.b), 1u, _wgslsmith_sub_u32(u_input.a.x, u_input.a.x))))), select(_wgslsmith_mult_vec4_u32(~_wgslsmith_mult_vec4_u32(vec4<u32>(20072u, u_input.d, u_input.a.x, u_input.a.x), vec4<u32>(u_input.a.x, 0u, u_input.a.x, 1u)), firstLeadingBit(abs(vec4<u32>(19173u, 4294967295u, 15664u, 4294967295u)))), _wgslsmith_sub_vec4_u32(vec4<u32>(_wgslsmith_add_u32(u_input.b, 47307u), max(40587u, 20551u), u_input.b, 86326u), ~vec4<u32>(u_input.a.x, 24475u, 42499u, u_input.a.x)), vec4<bool>(true, true, any(vec3<bool>(true, true, true)), true)));
    var var_1 = select(vec2<bool>(var_0.d.x != 43767u, any(vec4<bool>(any(vec3<bool>(false, false, true)), true, true, all(vec2<bool>(false, true))))), vec2<bool>(!all(select(vec2<bool>(true, false), vec2<bool>(false, false), true)), _wgslsmith_f_op_f32(min(1295f, var_0.b)) < _wgslsmith_f_op_f32(step(var_0.c.x, _wgslsmith_div_f32(var_0.c.x, var_0.c.x)))), vec2<bool>(true, true));
    let var_2 = true;
    var var_3 = select(vec3<bool>(var_1.x, all(!vec4<bool>(true, var_1.x, var_1.x, var_1.x)), true), !(!(!vec3<bool>(true, true, var_2))), !(!select(!vec3<bool>(true, true, var_1.x), !vec3<bool>(var_2, false, true), !var_1.x)));
    var var_4 = max(u_input.d, _wgslsmith_dot_vec2_u32(firstTrailingBit(var_0.d.yw), ~firstTrailingBit(vec2<u32>(0u, u_input.d))));
    return 36584u;
}

fn func_5(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: f32, arg_3: u32) -> vec4<f32> {
    let var_0 = vec3<bool>(arg_1.x, arg_1.x, !(!arg_1.x));
    let var_1 = firstLeadingBit(vec3<u32>(4294967295u, abs(reverseBits(arg_0.x)), _wgslsmith_mod_u32(arg_0.x >> (0u % 32u), _wgslsmith_dot_vec3_u32(arg_0.yyw, arg_0.xyx)))) ^ _wgslsmith_div_vec3_u32(~vec3<u32>(20753u, 0u, u_input.d) >> (vec3<u32>(arg_3, ~1u, _wgslsmith_mod_u32(arg_3, arg_3)) % vec3<u32>(32u)), ~arg_0.wwz);
    global0 = _wgslsmith_mult_vec3_i32(-_wgslsmith_add_vec3_i32(~vec3<i32>(global0.x, 9727i, u_input.c) >> (select(var_1, vec3<u32>(4294967295u, u_input.d, u_input.d), var_0.x) % vec3<u32>(32u)), vec3<i32>(1i, global0.x, ~global0.x)), select(_wgslsmith_clamp_vec3_i32(select(_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.c, global0.x, global0.x), vec3<i32>(u_input.c, 2147483647i, u_input.c), vec3<i32>(11529i, 2147483647i, global0.x)), vec3<i32>(u_input.c, u_input.c, global0.x) ^ vec3<i32>(-39251i, u_input.c, u_input.c), arg_1.x), select(_wgslsmith_mult_vec3_i32(vec3<i32>(global0.x, global0.x, -15001i), vec3<i32>(17096i, -14613i, u_input.c)), vec3<i32>(0i, 87577i, 27368i), false && arg_1.x), -vec3<i32>(17678i, 28099i, global0.x)), vec3<i32>(func_3(!vec4<bool>(var_0.x, false, var_0.x, arg_1.x)).x, abs(firstTrailingBit(global0.x)), u_input.c), !((-2147483647i <= u_input.c) | all(arg_1.zx))));
    var var_2 = ~(-abs(-reverseBits(vec3<i32>(u_input.c, -25671i, 2147483647i))));
    var var_3 = 4294967295u >> (~4294967295u % 32u);
    return vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_2))))), 140f, arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -709f))));
}

fn func_1(arg_0: vec2<bool>, arg_1: bool) -> i32 {
    global0 = ~vec3<i32>(-u_input.c, -20544i, abs(14615i));
    var var_0 = _wgslsmith_f_op_vec4_f32(func_5(vec4<u32>(func_2(), u_input.d, 46943u, 4294967295u) >> ((min(vec4<u32>(26474u, u_input.a.x, 30631u, 1u), ~vec4<u32>(0u, 54912u, u_input.b, u_input.a.x)) | ~(~vec4<u32>(10031u, u_input.d, u_input.d, u_input.a.x))) % vec4<u32>(32u)), vec3<bool>(!(!all(arg_0)), !arg_1, true && arg_1), 140f, ~(reverseBits(u_input.a.x << (0u % 32u)) & countOneBits(u_input.b))));
    global0 = vec3<i32>(u_input.c, _wgslsmith_mod_i32(u_input.c, 0i), -1i) << (vec3<u32>(u_input.b, _wgslsmith_sub_u32(max(firstLeadingBit(u_input.b), _wgslsmith_mod_u32(1u, u_input.b)), _wgslsmith_add_u32(u_input.b, u_input.b)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.d, 7009u, 3067u), vec3<u32>(16950u, 24530u, 0u)), select(vec3<u32>(u_input.a.x, u_input.a.x, 85762u), vec3<u32>(u_input.d, 42962u, 68241u), vec3<bool>(arg_1, false, arg_0.x))), vec3<u32>(0u, 14650u, firstTrailingBit(u_input.a.x)))) % vec3<u32>(32u));
    var var_1 = u_input.a.x;
    return -_wgslsmith_dot_vec4_i32(func_3(select(!vec4<bool>(true, arg_1, false, arg_0.x), !vec4<bool>(arg_1, arg_1, arg_1, arg_1), true)), vec4<i32>(~(~global0.x), ~(~u_input.c), u_input.c, _wgslsmith_dot_vec4_i32(~vec4<i32>(global0.x, -2147483647i, global0.x, u_input.c), vec4<i32>(26187i, 0i, u_input.c, u_input.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<i32>(-((max(global0.x, u_input.c) ^ ~(-2147483647i)) ^ global0.x), _wgslsmith_sub_i32(-16007i, u_input.c), -1i & (firstTrailingBit(-49951i) | func_1(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec4<bool>(true, false, true, false)))));
    var var_1 = Struct_1(-(-_wgslsmith_sub_vec4_i32(vec4<i32>(var_0.x, -8452i, -1i, global0.x), vec4<i32>(-2147483647i, -1i, 2147483647i, 0i)) << (select(~vec4<u32>(u_input.d, u_input.a.x, 23626u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(4087u, 0u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.b, 29340u, 6309u)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, false), true)) % vec4<u32>(32u))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(936f, 735f)) + -390f)))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-865f, 2565f) + _wgslsmith_div_f32(1178f, 964f)))), firstTrailingBit(_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, _wgslsmith_mult_u32(493u, 1u), ~u_input.d, ~4294967295u), (vec4<u32>(1u, 27626u, u_input.d, u_input.a.x) >> (vec4<u32>(u_input.d, u_input.b, 0u, 45444u) % vec4<u32>(32u))) ^ vec4<u32>(27720u, u_input.a.x, u_input.b, 8408u), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, 4784u, 34595u, 35048u), _wgslsmith_div_vec4_u32(vec4<u32>(0u, 0u, u_input.b, u_input.b), vec4<u32>(73536u, u_input.a.x, u_input.a.x, u_input.d)), vec4<u32>(1u, u_input.d, u_input.d, u_input.a.x)))));
    var var_2 = !vec3<bool>(var_1.a.x <= (1i >> (select(4294967295u, 0u, true) % 32u)), all(vec4<bool>(true, true, true, true)), true);
    let var_3 = ~var_0.x;
    let var_4 = ~_wgslsmith_dot_vec2_u32(countOneBits(vec2<u32>(var_1.d.x, 4294967295u) & ~var_1.d.yz), ~u_input.a);
    let x = u_input.a;
    s_output = StorageBuffer(-2147483647i ^ ~_wgslsmith_div_i32(~var_3, u_input.c), abs(var_1.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(~(~5117u), max(u_input.d, _wgslsmith_mod_u32(var_1.d.x, 35385u)), reverseBits(~u_input.d), abs(var_1.d.x)), var_1.d));
}

