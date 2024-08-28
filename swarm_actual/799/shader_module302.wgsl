struct Struct_1 {
    a: i32,
    b: bool,
    c: vec3<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec3<u32>,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec3<u32>,
    c: vec2<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
    d: vec3<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 0u;

var<private> global1: Struct_3 = Struct_3(vec4<f32>(-332f, -1614f, 1560f, -1000f), vec3<u32>(0u, 81593u, 4294967295u), vec2<bool>(false, false));

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> i32 {
    var var_0 = _wgslsmith_f_op_f32(global1.a.x * 779f);
    var var_1 = !select(vec2<bool>(!arg_0.a, arg_1), select(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_0.c.b, arg_0.c.b), false), select(global1.c, vec2<bool>(true, true), vec2<bool>(global1.c.x, true)), vec2<bool>(true, arg_0.e.b)), true & all(vec3<bool>(false, global1.c.x, arg_0.c.b)));
    var var_2 = vec4<bool>(!all(vec2<bool>(global1.c.x, true)), any(!(!vec4<bool>(arg_0.c.b, false, global1.c.x, global1.c.x))), arg_0.a, true);
    var var_3 = select(var_2.zzx, vec3<bool>(false, true, all(select(select(vec2<bool>(arg_0.e.b, global1.c.x), var_2.zy, false), vec2<bool>(true, true), !var_2.xw))), var_2.xzy);
    var var_4 = arg_0.b;
    return _wgslsmith_sub_i32(min(abs(1i), countOneBits(u_input.a.x) << (~(60257u | u_input.c.x) % 32u)), u_input.a.x);
}

fn func_2(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.a.x))))));
    let var_1 = arg_0;
    let var_2 = countOneBits(global1.b.x);
    let var_3 = Struct_2(all(!(!global1.c)), _wgslsmith_div_vec3_u32(~firstTrailingBit(vec3<u32>(u_input.b, 18216u, 0u)), ~(~vec3<u32>(u_input.c.x, 1u, 4294967295u))), arg_0, ~var_2, Struct_1((_wgslsmith_mod_i32(-25241i, 33488i) >> (0u % 32u)) & func_3(Struct_2(true, vec3<u32>(global1.b.x, 30386u, 17740u), Struct_1(4810i, true, vec3<i32>(2147483647i, 1i, u_input.d.x)), var_2, arg_0), !var_1.b), any(select(select(vec3<bool>(true, arg_0.b, var_1.b), vec3<bool>(false, arg_0.b, global1.c.x), arg_0.b), vec3<bool>(global1.c.x, arg_0.b, false), vec3<bool>(false, true, false))), ~_wgslsmith_mod_vec3_i32(vec3<i32>(2147483647i, u_input.a.x, 2147483647i), var_1.c)));
    let var_4 = select(-_wgslsmith_add_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(var_1.c.x, u_input.d.x, 8173i, u_input.d.x), vec4<i32>(-29149i, arg_0.c.x, 11518i, -24115i)) & _wgslsmith_div_vec4_i32(vec4<i32>(0i, u_input.d.x, -2147483647i, var_3.c.c.x), vec4<i32>(var_1.a, u_input.d.x, -2147483647i, -19651i)), abs(vec4<i32>(arg_0.a, var_1.c.x, arg_0.c.x, u_input.e))), _wgslsmith_mult_vec4_i32(abs(vec4<i32>(_wgslsmith_sub_i32(u_input.e, -25968i), -2147483647i, ~46138i, ~(-19505i))), ~firstTrailingBit(~vec4<i32>(u_input.d.x, arg_0.c.x, u_input.a.x, 2147483647i))), var_3.a);
    return Struct_1(var_3.c.c.x, !select(all(vec2<bool>(true, var_3.a)), countOneBits(var_2) <= ~36758u, false), select(min(vec3<i32>(-63079i, -71861i, arg_0.c.x), vec3<i32>(1i, arg_0.a, var_1.c.x)) << (global1.b % vec3<u32>(32u)), _wgslsmith_sub_vec3_i32(u_input.d, -vec3<i32>(var_3.c.a, 48699i, var_4.x)), true));
}

fn func_1(arg_0: u32, arg_1: u32, arg_2: vec4<f32>, arg_3: vec2<i32>) -> f32 {
    global0 = abs(1u);
    let var_0 = true;
    global0 = _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(reverseBits(abs(u_input.c)), ~vec4<u32>(global1.b.x, arg_1, 4294967295u, arg_1) | u_input.c), abs(max(u_input.c, vec4<u32>(arg_1, 24796u, 0u, arg_1)))) | 1u;
    var var_1 = Struct_2(global1.c.x, min(u_input.c.ywz, max(vec3<u32>(~global1.b.x, firstLeadingBit(arg_1), 8211u << (1u % 32u)), vec3<u32>(_wgslsmith_mult_u32(1u, 1u), arg_0, _wgslsmith_dot_vec2_u32(vec2<u32>(global1.b.x, 96306u), vec2<u32>(68632u, 64912u))))), func_2(Struct_1(~(u_input.d.x ^ arg_3.x), true, vec3<i32>(~0i, 2147483647i, -2147483647i))), 58873u, Struct_1(i32(-1i) * -1i, !global1.c.x, _wgslsmith_add_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(arg_3.x, u_input.a.x), arg_3.x ^ u_input.d.x, _wgslsmith_mult_i32(arg_3.x, -12908i)), -_wgslsmith_clamp_vec3_i32(u_input.d, u_input.d, vec3<i32>(2147483647i, u_input.e, -1i)))));
    let var_2 = firstLeadingBit(countOneBits(0u));
    return 1730f;
}

fn func_4(arg_0: vec3<f32>, arg_1: i32, arg_2: u32, arg_3: vec4<bool>) -> u32 {
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(global1.a, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global1.a.x, arg_0.x, global1.a.x, global1.a.x)))), arg_3))), global1.b, vec2<bool>(false, -431f >= _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1573f))));
    let var_0 = Struct_2(all(!vec4<bool>(true, all(arg_3.xwy), global1.c.x && true, any(arg_3))), _wgslsmith_add_vec3_u32(~firstLeadingBit(u_input.c.wzx), ~vec3<u32>(u_input.c.x, 12383u, 0u) & ~abs(vec3<u32>(arg_2, 27594u, global1.b.x))), func_2(Struct_1(-41268i, true || arg_3.x, _wgslsmith_add_vec3_i32(vec3<i32>(arg_1, 2692i, arg_1), firstLeadingBit(u_input.d)))), 0u | global1.b.x, func_2(Struct_1(-19516i, arg_3.x, ~(vec3<i32>(arg_1, 18018i, -2147483647i) >> (global1.b % vec3<u32>(32u))))));
    global0 = global1.b.x | arg_2;
    global1 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(vec4<f32>(-1000f, _wgslsmith_f_op_f32(exp2(global1.a.x)), _wgslsmith_f_op_f32(round(-1207f)), _wgslsmith_f_op_f32(max(-1290f, arg_0.x))), global1.a))), global1.b, vec2<bool>(!all(vec2<bool>(false, false)), var_0.e.b));
    let var_1 = global1.c.x;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = !(!(!(!vec3<bool>(global1.c.x, global1.c.x, global1.c.x))));
    let var_1 = func_4(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global1.b.x, 0u, vec4<f32>(global1.a.x, 2696f, global1.a.x, global1.a.x), vec2<i32>(u_input.e, u_input.a.x))))), _wgslsmith_f_op_f32(ceil(global1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(sign(global1.a.x))))), func_3(Struct_2(var_0.x, firstLeadingBit(~global1.b), func_2(Struct_1(5892i, var_0.x, u_input.d)), reverseBits(global1.b.x) & u_input.c.x, Struct_1(2147483647i & u_input.d.x, true, vec3<i32>(-3440i, u_input.e, u_input.e))), false), (_wgslsmith_div_u32(1u, _wgslsmith_sub_u32(29371u, u_input.b)) << (global1.b.x % 32u)) ^ u_input.b, !(!vec4<bool>(any(var_0), false, false, true)));
    global0 = _wgslsmith_dot_vec3_u32(~u_input.c.xwy, ~abs(min(u_input.c.wwy << (vec3<u32>(global1.b.x, 1u, global1.b.x) % vec3<u32>(32u)), _wgslsmith_mod_vec3_u32(vec3<u32>(1u, 2588u, 23049u), vec3<u32>(var_1, 1u, u_input.b)))));
    let var_2 = max(~select(_wgslsmith_mod_vec4_i32(~vec4<i32>(u_input.e, 0i, u_input.d.x, u_input.d.x), vec4<i32>(6675i, -5186i, -2147483647i, u_input.e) >> (vec4<u32>(0u, 0u, u_input.b, var_1) % vec4<u32>(32u))), vec4<i32>(1i, u_input.e, -23786i & u_input.e, u_input.a.x >> (u_input.c.x % 32u)), any(select(vec2<bool>(true, global1.c.x), vec2<bool>(var_0.x, false), var_0.x))), _wgslsmith_add_vec4_i32(vec4<i32>(1i, 41019i, (u_input.a.x ^ u_input.e) ^ ~2147483647i, u_input.e), _wgslsmith_div_vec4_i32(select(vec4<i32>(u_input.e, -2147483647i, -1i, u_input.a.x), -vec4<i32>(u_input.a.x, u_input.a.x, 2147483647i, 37437i), vec4<bool>(true, true, var_0.x, false)), firstTrailingBit(select(vec4<i32>(u_input.d.x, 0i, u_input.a.x, u_input.d.x), vec4<i32>(0i, u_input.e, u_input.d.x, u_input.d.x), vec4<bool>(true, global1.c.x, var_0.x, false))))));
    let var_3 = _wgslsmith_mult_u32(~global1.b.x, 38809u) & _wgslsmith_clamp_u32(~((var_1 | 91091u) << (_wgslsmith_mult_u32(u_input.c.x, var_1) % 32u)), countOneBits(0u), var_1 | _wgslsmith_mult_u32(firstTrailingBit(u_input.b), _wgslsmith_clamp_u32(0u, 77121u, 0u)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.a.x, _wgslsmith_f_op_f32(global1.a.x * 655f)) * vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(global1.a.x - 732f))), vec2<f32>(_wgslsmith_f_op_f32(-global1.a.x), _wgslsmith_f_op_f32(-475f * -1000f)), func_2(Struct_1(u_input.e, var_0.x | false, vec3<i32>(var_2.x, 1i, var_2.x))).b)));
}

