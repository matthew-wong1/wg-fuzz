struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: vec3<bool>,
    c: vec4<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: bool,
    c: vec4<i32>,
    d: i32,
    e: i32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
    c: Struct_2,
    d: vec2<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: i32, arg_1: u32, arg_2: bool) -> vec2<u32> {
    var var_0 = _wgslsmith_clamp_vec2_i32(countOneBits(-min(vec2<i32>(0i, arg_0) & vec2<i32>(u_input.c, -39416i), vec2<i32>(-24793i, 0i) >> (vec2<u32>(arg_1, 3514u) % vec2<u32>(32u)))), _wgslsmith_sub_vec2_i32(~abs(~vec2<i32>(arg_0, u_input.c)), min(-(~vec2<i32>(arg_0, -15138i)), vec2<i32>(0i, -1i))), ~(~vec2<i32>(reverseBits(-1i), -arg_0)));
    var var_1 = ~18579i;
    var_1 = -26926i;
    var var_2 = vec4<bool>(arg_2, true, all(select(!vec3<bool>(arg_2, false, arg_2), select(vec3<bool>(true, true, true), vec3<bool>(true, true, arg_2), select(vec3<bool>(true, arg_2, true), vec3<bool>(true, true, true), true)), true)), arg_2);
    let var_3 = Struct_3(vec2<i32>(-21653i, _wgslsmith_dot_vec3_i32(~vec3<i32>(2147483647i, var_0.x, u_input.c), vec3<i32>(-1i) * -vec3<i32>(-1i, u_input.c, -1i))), var_2.x, (vec4<i32>(-1i) * -vec4<i32>(-2147483647i, 37717i, -1i, 29141i)) >> (select(_wgslsmith_div_vec4_u32(~vec4<u32>(4294967295u, 6307u, u_input.b.x, 13497u), u_input.b), reverseBits(vec4<u32>(51965u, arg_1, u_input.e, 22286u)) | (u_input.b & vec4<u32>(u_input.d.x, arg_1, 4294967295u, 58480u)), var_2.x) % vec4<u32>(32u)), _wgslsmith_sub_i32(max(arg_0, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, var_0.x, u_input.c, u_input.c) >> (vec4<u32>(4294967295u, 1195u, u_input.b.x, 55478u) % vec4<u32>(32u)), abs(vec4<i32>(5794i, 40573i, 12478i, var_0.x)))), max(i32(-1i) * -2147483647i, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(18155i, arg_0), select(u_input.c, -12266i, var_2.x)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, var_0.x), vec2<i32>(8659i, arg_0))) | max(var_0.x, arg_0));
    return vec2<u32>(arg_1, countOneBits(arg_1));
}

fn func_2(arg_0: Struct_1, arg_1: u32, arg_2: vec3<bool>) -> u32 {
    let var_0 = _wgslsmith_sub_u32(~_wgslsmith_dot_vec2_u32(u_input.b.yw, func_3(_wgslsmith_clamp_i32(u_input.c, 10532i, 30659i), _wgslsmith_div_u32(u_input.e, 66129u), arg_2.x)), ~(~(~arg_0.a.x)));
    let var_1 = ~abs(vec3<i32>(firstLeadingBit(~u_input.c), -1i, abs(8037i & u_input.c)));
    var var_2 = Struct_2(select(!select(vec4<bool>(arg_2.x, arg_2.x, arg_2.x, arg_2.x), select(vec4<bool>(arg_2.x, arg_2.x, false, arg_2.x), vec4<bool>(arg_2.x, arg_2.x, arg_2.x, true), vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), vec4<bool>(arg_2.x, true, arg_2.x, false)), vec4<bool>(arg_2.x, !arg_2.x, true, arg_2.x), arg_2.x | arg_2.x), vec3<bool>(select(true, !arg_2.x == true, !arg_2.x), -28308i <= (-var_1.x & (37243i & u_input.c)), arg_2.x), !select(vec4<bool>(arg_2.x, arg_2.x & true, all(vec4<bool>(arg_2.x, false, arg_2.x, arg_2.x)), u_input.c <= -40883i), select(vec4<bool>(arg_2.x, arg_2.x, false, true), select(vec4<bool>(false, false, arg_2.x, arg_2.x), vec4<bool>(true, arg_2.x, arg_2.x, false), arg_2.x), arg_2.x), vec4<bool>(true, true, all(vec4<bool>(true, true, arg_2.x, true)), 11065i > u_input.c)));
    let var_3 = ~u_input.b.xxz;
    global0 = _wgslsmith_add_u32(~(~103757u), abs(~_wgslsmith_sub_u32(4294967295u, var_3.x))) != arg_1;
    return arg_0.a.x;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    global0 = -2147483647i >= _wgslsmith_mod_i32(_wgslsmith_mod_i32(1i, u_input.c ^ (i32(-1i) * -11846i)), -54235i);
    global0 = arg_3.c.c.x;
    var var_0 = u_input.b.xzw;
    var var_1 = arg_3.b.c.x;
    global0 = abs(u_input.b.x) == func_2(arg_3.b, 1u, vec3<bool>(arg_1.b.x, false, any(!arg_3.c.b)));
    return -541f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(_wgslsmith_mod_vec2_i32(-vec2<i32>(_wgslsmith_mod_i32(u_input.c, u_input.c), ~(-32704i)), vec2<i32>(1165i, _wgslsmith_dot_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 39487i), vec4<i32>(0i, u_input.c, -6442i, u_input.c)), -vec4<i32>(u_input.c, u_input.c, 2147483647i, u_input.c)))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-801f + 233f))) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-304f)) + _wgslsmith_f_op_f32(func_1(49966u, Struct_2(vec4<bool>(false, false, true, true), vec3<bool>(false, false, true), vec4<bool>(false, true, true, false)), Struct_3(vec2<i32>(2147483647i, 0i), false, vec4<i32>(u_input.c, -1i, u_input.c, u_input.c), u_input.c, 2147483647i), Struct_4(vec2<f32>(1439f, -1100f), Struct_1(vec4<u32>(u_input.e, u_input.d.x, u_input.a.x, u_input.d.x), vec2<i32>(-6798i, 14908i), vec2<u32>(u_input.e, 17009u)), Struct_2(vec4<bool>(true, false, false, true), vec3<bool>(true, false, true), vec4<bool>(false, false, false, false)), vec2<f32>(283f, -1314f)))))), vec4<i32>(abs(~u_input.c), _wgslsmith_mod_i32(~22342i, -25251i) & firstTrailingBit(-u_input.c), (_wgslsmith_div_i32(u_input.c, u_input.c) ^ abs(u_input.c)) & -2147483647i, _wgslsmith_clamp_i32(~u_input.c, -2147483647i, -1i)), -u_input.c, i32(-1i) * -firstTrailingBit(u_input.c));
    global0 = var_0.b;
    var var_1 = var_0.b;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1000f);
    global0 = !var_0.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-2695f, var_2)))))), vec2<i32>(40731i, _wgslsmith_mult_i32(var_0.d, 50123i) << (~(~1u) % 32u)));
}

