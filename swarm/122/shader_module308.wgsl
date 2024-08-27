struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: f32,
    d: u32,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(4294967295u);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2(arg_0: vec2<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: bool) -> vec2<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.a, 149f)))) - arg_2.b)), _wgslsmith_f_op_f32(-arg_2.a), ~global0.a);
    let var_1 = _wgslsmith_div_f32(-559f, -981f);
    let var_2 = Struct_2(var_0.d);
    var var_3 = var_2;
    var var_4 = _wgslsmith_mult_vec3_u32(vec3<u32>(0u, ~arg_2.d, var_3.a), ~_wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(var_3.a, arg_2.d, var_3.a), vec3<u32>(arg_2.d, var_3.a, arg_2.d)), vec3<u32>(global0.a, var_0.d, var_0.d)), firstTrailingBit(vec3<u32>(4294967295u, 46056u, global0.a)) & select(vec3<u32>(var_3.a, var_2.a, var_3.a), vec3<u32>(4294967295u, 1u, 1u), arg_1.www)));
    return vec2<i32>(-24487i, ~(abs(-35069i) & u_input.a.x) ^ -1i);
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>) -> f32 {
    var var_0 = -u_input.a;
    var_0 = _wgslsmith_mod_vec3_i32(u_input.a, min(firstLeadingBit(u_input.a), -u_input.a)) & vec3<i32>(u_input.a.x, ~(u_input.a.x & (i32(-1i) * -2147483647i)), _wgslsmith_dot_vec2_i32(select(u_input.a.zz, vec2<i32>(2147483647i, -1i), true), _wgslsmith_clamp_vec2_i32(u_input.a.yy, vec2<i32>(2147483647i, var_0.x), vec2<i32>(19637i, 1i)) << (vec2<u32>(arg_0.d, 1u) % vec2<u32>(32u))));
    var var_1 = Struct_2(38265u | (arg_0.d | ~select(arg_0.d, 0u, false)));
    var_1 = Struct_2(_wgslsmith_div_u32(~(~4294967295u), 1u));
    global0 = Struct_2(~global0.a);
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-2077f - 1291f))), _wgslsmith_f_op_f32(-arg_0.b.x))), 1000f));
}

fn func_1(arg_0: Struct_2) -> Struct_1 {
    let var_0 = firstTrailingBit(vec4<i32>(_wgslsmith_dot_vec2_i32(~u_input.a.xz, func_2(vec2<bool>(false, true), vec4<bool>(false, false, false, true), Struct_1(859f, vec2<f32>(-725f, 751f), -834f, 1u), false)), -firstLeadingBit(u_input.a.x), min(~(-1i), u_input.a.x), _wgslsmith_add_i32(u_input.a.x, -u_input.a.x)) ^ _wgslsmith_mod_vec4_i32(firstTrailingBit(vec4<i32>(u_input.a.x, u_input.a.x, 1i, u_input.a.x)), _wgslsmith_mod_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-1i, -13676i, u_input.a.x, -4210i), vec4<i32>(u_input.a.x, -20668i, 21520i, u_input.a.x)), vec4<i32>(-1i, -2147483647i, -1i, u_input.a.x) ^ vec4<i32>(18819i, -16592i, u_input.a.x, u_input.a.x))));
    var var_1 = _wgslsmith_div_i32(var_0.x, -firstTrailingBit(0i));
    let var_2 = arg_0;
    var var_3 = var_2;
    var var_4 = false;
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(154f, vec2<f32>(1633f, -1024f), 2386f, var_2.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-504f, 308f, 382f), vec3<f32>(-1152f, -701f, -147f), true)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-823f)) - -201f)) + _wgslsmith_f_op_f32(func_3(Struct_1(_wgslsmith_f_op_f32(173f - 2018f), _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(145f, -384f))), -1262f, var_3.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-751f, -194f, -356f) - vec3<f32>(1732f, 1130f, 1000f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-107f, 102f)), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1458f, 804f), vec2<f32>(253f, 1409f))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1897f, -837f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(929f, 923f), vec2<f32>(1007f, -725f))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-863f, 593f)))))), 1002f, ~min(global0.a, abs(_wgslsmith_add_u32(45786u, 498u))));
}

fn func_4(arg_0: Struct_1) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_f32(select(arg_0.a, _wgslsmith_f_op_f32(-arg_0.c), ~(4294967295u << (global0.a % 32u)) != arg_0.d));
    global0 = Struct_2(global0.a);
    global0 = Struct_2(func_1(Struct_2(global0.a)).d);
    global0 = Struct_2(global0.a);
    global0 = Struct_2(~arg_0.d);
    return func_1(Struct_2(1u));
}

fn func_5(arg_0: Struct_1) -> bool {
    let var_0 = true;
    let var_1 = ~arg_0.d;
    var var_2 = func_1(Struct_2(var_1));
    global0 = Struct_2(1u);
    var var_3 = Struct_2(global0.a);
    return select(var_0 || true, true, true);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(-2147483647i, ~(-u_input.a.x), select(~(~22619i), 0i, func_5(func_4(func_1(Struct_2(130764u))))));
    var var_1 = func_1(Struct_2(0u));
    var_1 = Struct_1(1414f, _wgslsmith_f_op_vec2_f32(min(var_1.b, _wgslsmith_f_op_vec2_f32(round(vec2<f32>(-213f, _wgslsmith_f_op_f32(-var_1.b.x)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, func_1(Struct_2(var_1.d)).a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1818f)) + var_1.c) - 1284f)), var_1.d);
    var var_2 = 0u;
    global0 = Struct_2(_wgslsmith_sub_u32(32856u, max(abs(~29323u), _wgslsmith_div_u32(0u, var_1.d))));
    let var_3 = !(!vec3<bool>(any(vec2<bool>(true, true)), true, var_1.d < ~global0.a));
    var var_4 = 11922i;
    var_2 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(-1765f, global0.a, max(~vec4<i32>(1450i, 0i, var_0.x, -5559i), vec4<i32>(u_input.a.x, 2147483647i, -2147483647i, 4676i) >> (vec4<u32>(4294967295u, var_1.d, var_1.d, 4294967295u) % vec4<u32>(32u))) & _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-18544i, var_0.x, var_0.x, u_input.a.x), vec4<i32>(var_0.x, u_input.a.x, u_input.a.x, 1i)) << (reverseBits(vec4<u32>(8980u, 1u, 13527u, 60384u)) % vec4<u32>(32u)), -vec4<i32>(u_input.a.x, var_0.x, var_0.x, 0i)));
}

