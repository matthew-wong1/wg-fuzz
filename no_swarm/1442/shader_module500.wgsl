struct Struct_1 {
    a: u32,
    b: f32,
}

struct Struct_2 {
    a: vec4<f32>,
    b: f32,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 10>;

var<private> global1: vec4<i32>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: u32) -> bool {
    global1 = min(select(_wgslsmith_add_vec4_i32(~abs(vec4<i32>(global1.x, 4795i, u_input.c, u_input.c)), firstTrailingBit(-vec4<i32>(global1.x, -2147483647i, global1.x, 2147483647i))), firstTrailingBit(-vec4<i32>(-2147483647i, u_input.b, 19942i, -20122i)) & vec4<i32>(-68361i, global1.x << (arg_2 % 32u), 2147483647i, 2147483647i), !(!select(vec4<bool>(true, true, false, false), vec4<bool>(false, false, false, false), false))), vec4<i32>(_wgslsmith_mult_i32(-5137i, countOneBits(global1.x)), ~0i, -10076i, -2147483647i));
    var var_0 = Struct_3(Struct_1(max(0u, ~1u), arg_1.x), ~u_input.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -292f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + arg_1.x)))) - _wgslsmith_f_op_f32(f32(-1f) * -506f)), _wgslsmith_clamp_i32(0i, _wgslsmith_add_i32(global1.x, _wgslsmith_clamp_i32(~43953i, 45523i, global1.x ^ 1i)), ~_wgslsmith_mult_i32(abs(-2147483647i), _wgslsmith_div_i32(25322i, u_input.b))));
    global0 = array<vec3<bool>, 10>();
    let var_1 = global1.wxy;
    var_0 = Struct_3(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-856f)))), var_0.a.a, _wgslsmith_f_op_f32(ceil(779f)), _wgslsmith_mult_i32(~(-(~0i)), _wgslsmith_clamp_i32(2147483647i, u_input.b, ~_wgslsmith_add_i32(var_0.d, u_input.c))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_div_f32(arg_0.x, var_0.c)), _wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(var_0.a.b + var_0.c)))) + _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-416f, -1195f))))) > 531f;
}

fn func_4(arg_0: Struct_2, arg_1: vec4<bool>, arg_2: f32, arg_3: f32) -> i32 {
    var var_0 = Struct_3(Struct_1(u_input.a.x, _wgslsmith_f_op_f32(-129f + _wgslsmith_f_op_f32(-211f * _wgslsmith_div_f32(arg_2, arg_0.a.x)))), arg_0.c.a, arg_3, -42255i);
    var var_1 = Struct_3(Struct_1(firstTrailingBit(u_input.a.x) | select(~84406u, 63226u, false), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(234f, _wgslsmith_f_op_f32(min(1000f, -2016f)))), var_0.a.b)), firstLeadingBit(arg_0.c.a) >> (~0u % 32u), _wgslsmith_f_op_f32(sign(var_0.c)), reverseBits(_wgslsmith_dot_vec4_i32(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(global1.x, u_input.b, u_input.b, global1.x), vec4<i32>(global1.x, -1i, -20320i, var_0.d)), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, u_input.c, global1.x, -2147483647i), vec4<i32>(5127i, 2147483647i, -1i, global1.x))), ~vec4<i32>(u_input.c, global1.x, 1i, 1i) >> (u_input.a % vec4<u32>(32u)))));
    global1 = _wgslsmith_mult_vec4_i32(firstLeadingBit(select((vec4<i32>(-2147483647i, u_input.b, var_1.d, 1i) & vec4<i32>(var_0.d, global1.x, 2147483647i, u_input.b)) << (_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a.x, 1u, 4294967295u, 4294967295u), u_input.a) % vec4<u32>(32u)), ~(~vec4<i32>(-1i, var_0.d, var_1.d, -20839i)), arg_1)), min(_wgslsmith_mod_vec4_i32(reverseBits(-vec4<i32>(var_1.d, var_1.d, global1.x, 21989i)), vec4<i32>(_wgslsmith_mult_i32(u_input.b, 1i), _wgslsmith_div_i32(5592i, -9742i), 16136i, _wgslsmith_mult_i32(var_0.d, 2147483647i))), _wgslsmith_clamp_vec4_i32(abs(select(vec4<i32>(var_1.d, u_input.b, -1i, global1.x), vec4<i32>(2147483647i, global1.x, global1.x, u_input.c), arg_1)), -abs(vec4<i32>(var_1.d, -22024i, -1i, -2147483647i)), (vec4<i32>(var_0.d, 2147483647i, global1.x, 75224i) & vec4<i32>(-4564i, var_0.d, var_0.d, u_input.c)) >> (vec4<u32>(arg_0.c.a, var_0.a.a, 4294967295u, 0u) % vec4<u32>(32u)))));
    var_1 = Struct_3(Struct_1(var_1.a.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_f_op_f32(trunc(2364f)))))), 32728u, 594f, reverseBits(~abs(var_0.d) >> (var_1.b % 32u)));
    global1 = -vec4<i32>(_wgslsmith_clamp_i32(firstTrailingBit(~var_1.d), reverseBits(global1.x) >> (select(81505u, 0u, false) % 32u), _wgslsmith_clamp_i32(~1i, var_1.d, firstTrailingBit(global1.x))), ~_wgslsmith_dot_vec3_i32(min(global1.www, vec3<i32>(-1i, 0i, 1i)), vec3<i32>(var_1.d, var_0.d, var_0.d)), _wgslsmith_add_i32(-2147483647i, global1.x) >> (~countOneBits(31959u) % 32u), select(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(40834i, u_input.b, var_0.d, -24041i)), select(vec4<i32>(var_0.d, var_0.d, u_input.c, -2147483647i), vec4<i32>(u_input.c, var_0.d, var_0.d, -107763i), arg_1.x)), _wgslsmith_clamp_i32(-u_input.c, ~var_0.d, _wgslsmith_sub_i32(var_0.d, 1i)), arg_1.x));
    return max(_wgslsmith_div_i32(-u_input.c, 95792i), 0i);
}

fn func_2() -> Struct_1 {
    global1 = vec4<i32>(~(-14988i), global1.x, _wgslsmith_sub_i32(min(-(~u_input.b), -2147483647i), global1.x), abs(abs(~1i)));
    let var_0 = Struct_3(Struct_1(u_input.a.x, 1700f), 0u & _wgslsmith_mult_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1f, 1267f))), func_4(Struct_2(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(445f, -250f, -1093f, 635f)))), -346f, Struct_1(u_input.a.x, _wgslsmith_f_op_f32(206f * 1745f))), vec4<bool>(true, true, true, func_3(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(1232f, -963f, 1457f, -1652f))), vec4<f32>(-143f, -1122f, 1902f, 293f), 61747u << (u_input.a.x % 32u))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1266f - _wgslsmith_f_op_f32(ceil(-1000f))) - 1f), -743f));
    global1 = vec4<i32>(~global1.x, abs(max(var_0.d, 1i)), _wgslsmith_sub_i32(abs(29857i), max(~_wgslsmith_div_i32(var_0.d, -1i), i32(-1i) * -2894i)), 1i);
    global0 = array<vec3<bool>, 10>();
    let var_1 = _wgslsmith_f_op_f32(-var_0.a.b);
    return var_0.a;
}

fn func_1(arg_0: vec2<i32>) -> Struct_3 {
    global0 = array<vec3<bool>, 10>();
    var var_0 = ~(~u_input.a.xx);
    var_0 = _wgslsmith_mult_vec2_u32(u_input.a.wz, u_input.a.wy);
    let var_1 = func_2();
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1094f - _wgslsmith_f_op_f32(-var_1.b)) + _wgslsmith_f_op_f32(-var_1.b)), all(!select(vec2<bool>(false, true), vec2<bool>(true, false), false)))), 1745f, _wgslsmith_f_op_f32(f32(-1f) * -1823f));
    return Struct_3(Struct_1(125795u, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1452f)))), _wgslsmith_add_u32(_wgslsmith_sub_u32(u_input.a.x, ~var_1.a), 1u) << (4294967295u % 32u), 1264f, i32(-1i) * -13311i);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(firstTrailingBit(_wgslsmith_mult_vec2_i32(vec2<i32>(i32(-1i) * -46982i, -11892i), -_wgslsmith_clamp_vec2_i32(global1.xz, vec2<i32>(-1i, -15479i), vec2<i32>(1i, global1.x)))));
    global1 = max(-vec4<i32>(min(global1.x, 1i), var_0.d, global1.x | u_input.b, -22300i) ^ vec4<i32>(var_0.d, var_0.d, ~(-35808i), ~1i), vec4<i32>(u_input.b, func_4(Struct_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, var_0.c, 606f, var_0.a.b)), var_0.c, var_0.a), vec4<bool>(true, false, any(global0[_wgslsmith_index_u32(u_input.a.x, 10u)]), select(false, true, false)), var_0.c, _wgslsmith_f_op_f32(f32(-1f) * -966f)), _wgslsmith_div_i32(~u_input.c << (~4294967295u % 32u), u_input.c), ~_wgslsmith_mod_i32(1i >> (0u % 32u), -u_input.c)));
    let var_1 = var_0.a.b;
    var var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(func_2().b, _wgslsmith_f_op_f32(func_1(_wgslsmith_mod_vec2_i32(vec2<i32>(global1.x, u_input.b), global1.xz)).a.b - 230f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1027f + _wgslsmith_f_op_f32(-var_0.c)) - -1050f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_0.a.b)))))), true));
    var_2 = 1000f;
    global1 = min(-vec4<i32>(_wgslsmith_sub_i32(var_0.d, -72341i) & _wgslsmith_dot_vec2_i32(global1.yx, global1.zw), 2147483647i, var_0.d | global1.x, -(~var_0.d)), firstLeadingBit(countOneBits((vec4<i32>(2147483647i, -1i, 11110i, 9160i) << (vec4<u32>(4294967295u, 34627u, 20333u, var_0.a.a) % vec4<u32>(32u))) ^ -vec4<i32>(-2147483647i, u_input.b, 0i, -57189i))));
    let var_3 = ~14931i;
    let x = u_input.a;
    s_output = StorageBuffer(global1.xzy, global1.xz);
}

