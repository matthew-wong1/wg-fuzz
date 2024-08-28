struct Struct_1 {
    a: bool,
    b: f32,
    c: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: i32,
    d: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: Struct_1,
    e: vec2<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<f32>,
    c: u32,
    d: vec4<i32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> u32 {
    var var_0 = Struct_2(vec4<u32>(reverseBits((1u | u_input.a) & reverseBits(4294967295u)), ~_wgslsmith_clamp_u32(0u, 4294967295u, 0u) << (countOneBits(arg_0) % 32u), ~((1u & u_input.b.x) & ~66802u), u_input.b.x), Struct_1(any(vec2<bool>(true, true)), _wgslsmith_f_op_f32(min(644f, 1f)), u_input.d), u_input.d, i32(-1i) * -7201i);
    var var_1 = !(!select(vec4<bool>(any(vec2<bool>(false, var_0.b.a)), true, any(vec2<bool>(false, false)), 4294967295u > arg_0), !(!vec4<bool>(var_0.b.a, true, false, false)), vec4<bool>(true, var_0.b.a, false, var_0.b.a)));
    var_0 = Struct_2(_wgslsmith_sub_vec4_u32(var_0.a, ~var_0.a), Struct_1(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -460f))) == -136f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.b + var_0.b.b)) - var_0.b.b), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c, var_0.d), -vec2<i32>(var_0.c, var_0.d)), _wgslsmith_div_i32(~var_0.c, select(1i, u_input.d, var_0.b.a)))), u_input.d, -countOneBits(max(~(-1i), firstLeadingBit(u_input.d))));
    let var_2 = firstLeadingBit(firstLeadingBit(~abs(min(vec4<i32>(var_0.b.c, 74513i, var_0.b.c, 105i), vec4<i32>(var_0.d, -40995i, -30081i, -34861i)))));
    var var_3 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(var_0.b.b, -1645f, var_0.b.b))), vec3<f32>(var_0.b.b, var_0.b.b, 526f)))))));
    return ~u_input.a;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec4<u32>, arg_3: u32) -> Struct_1 {
    let var_0 = ~_wgslsmith_sub_u32(arg_0.a.x, 52347u);
    let var_1 = arg_0.b.a;
    var var_2 = Struct_3(u_input.b, ~(~(~_wgslsmith_dot_vec2_u32(u_input.b, arg_0.a.xz))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b))), arg_1, !(!vec2<bool>(arg_0.b.a, var_1)));
    let var_3 = -2147483647i;
    var var_4 = ~vec2<u32>(1u, _wgslsmith_div_u32(func_3(u_input.b.x), var_0));
    return Struct_1(any(!select(!vec4<bool>(arg_0.b.a, true, true, var_2.d.a), select(vec4<bool>(var_2.d.a, true, arg_1.a, true), vec4<bool>(arg_1.a, true, true, var_2.e.x), var_2.e.x), var_2.d.b != -399f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.b + arg_0.b.b), -395f)), ~_wgslsmith_sub_i32(-var_3, reverseBits(arg_1.c)));
}

fn func_1(arg_0: Struct_1) -> Struct_3 {
    var var_0 = Struct_3(~(((u_input.b >> (vec2<u32>(u_input.b.x, 4294967295u) % vec2<u32>(32u))) >> (u_input.b % vec2<u32>(32u))) << (vec2<u32>(4294967295u, firstTrailingBit(0u)) % vec2<u32>(32u))), _wgslsmith_mod_u32(u_input.a, u_input.b.x) ^ ~1u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * _wgslsmith_f_op_f32(sign(-1206f))) * _wgslsmith_f_op_f32(select(977f, _wgslsmith_div_f32(481f, arg_0.b), true)))), arg_0, !vec2<bool>(true, any(!vec3<bool>(false, true, arg_0.a))));
    var_0 = Struct_3(var_0.a, select(u_input.b.x << (~min(var_0.b, 143364u) % 32u), 5372u, false), var_0.c, arg_0, var_0.e);
    var_0 = Struct_3(var_0.a, ~(_wgslsmith_div_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), var_0.b) & _wgslsmith_mult_u32(82505u, u_input.b.x ^ 31480u)), var_0.c, func_2(Struct_2(~(vec4<u32>(46758u, var_0.b, 30913u, var_0.b) & vec4<u32>(4294967295u, var_0.b, u_input.b.x, var_0.a.x)), var_0.d, reverseBits(_wgslsmith_div_i32(-13507i, u_input.c)), var_0.d.c), var_0.d, ~vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(37854u, u_input.b.x), u_input.b), ~0u, max(49553u, var_0.b), max(u_input.b.x, u_input.b.x)), u_input.a), vec2<bool>(true, false));
    let var_1 = var_0.b;
    var_0 = Struct_3(u_input.b, min(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(0u, var_0.b), min(vec2<u32>(u_input.b.x, 18388u), var_0.a)), ~u_input.b), var_0.b), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(arg_0.b, _wgslsmith_f_op_f32(-var_0.d.b))), arg_0.b, var_0.a.x < _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 4294967295u, 4294967295u), vec3<u32>(var_0.b, u_input.a, 4294967295u), vec3<u32>(34118u, 0u, 8084u)), vec3<u32>(u_input.a, 0u, 4294967295u) | vec3<u32>(var_0.a.x, 1u, var_0.b)))), Struct_1(arg_0.a, _wgslsmith_f_op_f32(ceil(var_0.d.b)), abs(_wgslsmith_sub_i32(arg_0.c, u_input.d)) ^ max(u_input.d, select(arg_0.c, -2147483647i, true))), vec2<bool>(select(any(vec3<bool>(false, true, arg_0.a)), !arg_0.a, arg_0.b <= _wgslsmith_f_op_f32(-1000f + -435f)), true));
    return Struct_3(var_0.a, 566u, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-func_2(Struct_2(vec4<u32>(u_input.a, 26612u, u_input.a, 26829u), Struct_1(arg_0.a, arg_0.b, var_0.d.c), -2147483647i, 6408i), arg_0, ~vec4<u32>(23761u, u_input.b.x, 4294967295u, var_0.b), ~95800u).b))), func_2(Struct_2(min(select(vec4<u32>(u_input.b.x, 4294967295u, 1u, 4294967295u), vec4<u32>(var_0.b, 35201u, 30544u, u_input.a), false), ~vec4<u32>(var_0.b, u_input.a, 20721u, 4294967295u)), Struct_1(select(false, var_0.e.x, var_0.d.a), -1265f, u_input.c >> (0u % 32u)), 0i, -reverseBits(2147483647i)), Struct_1(true, arg_0.b, 0i), vec4<u32>(1791u, ~4294967295u, ~u_input.a, _wgslsmith_mult_u32(u_input.b.x << (var_0.b % 32u), ~0u)), _wgslsmith_mod_u32(~_wgslsmith_sub_u32(55783u, 1u), u_input.a)), vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.d.b - 175f)) == _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(-313f, -2097f))), var_0.e.x));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: i32, arg_3: Struct_3) -> StorageBuffer {
    var var_0 = arg_3.d;
    var_0 = func_2(Struct_2(countOneBits(~(vec4<u32>(33941u, u_input.b.x, 4294967295u, u_input.a) ^ vec4<u32>(34585u, arg_0.b, arg_3.a.x, arg_3.b))), arg_3.d, ~_wgslsmith_mod_i32(~(-29862i), arg_1.c), -1i), Struct_1(arg_3.d.a, _wgslsmith_f_op_f32(arg_0.c * 805f), max(~arg_3.d.c >> ((u_input.b.x << (arg_0.b % 32u)) % 32u), arg_1.c)), vec4<u32>(~arg_0.a.x, func_1(func_2(Struct_2(vec4<u32>(0u, 0u, 54760u, 29336u), arg_1, var_0.c, -2147483647i), func_2(Struct_2(vec4<u32>(arg_0.a.x, u_input.b.x, u_input.a, arg_0.a.x), Struct_1(false, -532f, arg_1.c), -1i, u_input.d), Struct_1(false, arg_1.b, 9138i), vec4<u32>(39927u, 4294967295u, arg_0.a.x, arg_3.a.x), 4294967295u), countOneBits(vec4<u32>(arg_0.b, 0u, arg_0.a.x, u_input.a)), select(arg_3.a.x, 26994u, true))).b, ~(~(~4294967295u)), 1u), ~(10503u | ~_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, arg_0.a.x, 1u), vec4<u32>(arg_0.a.x, 31920u, arg_0.a.x, arg_0.b))));
    var var_1 = vec2<f32>(var_0.b, 1559f);
    let var_2 = Struct_1(any(!vec4<bool>(false, all(vec3<bool>(arg_0.e.x, true, true)), true, arg_0.e.x)), _wgslsmith_f_op_f32(trunc(arg_0.c)), _wgslsmith_mod_i32(~(2147483647i ^ ~arg_1.c), -arg_1.c));
    let var_3 = arg_0;
    return StorageBuffer(select(vec2<i32>(arg_1.c, ~_wgslsmith_sub_i32(0i, arg_1.c)), _wgslsmith_mod_vec2_i32(select(~vec2<i32>(15408i, -49689i), vec2<i32>(var_3.d.c, arg_0.d.c), var_2.a), vec2<i32>(-10814i, _wgslsmith_div_i32(var_2.c, arg_3.d.c))), true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-948f, var_3.c)), _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, var_2.b) * _wgslsmith_div_vec2_f32(vec2<f32>(-868f, arg_1.b), vec2<f32>(-606f, arg_1.b)))))), ~(arg_3.b & _wgslsmith_sub_u32(1u, _wgslsmith_add_u32(4294967295u, arg_0.b))), vec4<i32>(firstLeadingBit(arg_0.d.c), _wgslsmith_clamp_i32(_wgslsmith_div_i32(func_1(var_2).d.c, -var_2.c), 22349i, 2147483647i), ~(-1i), firstLeadingBit(func_2(Struct_2(vec4<u32>(arg_3.a.x, arg_0.b, 1u, var_3.b), arg_3.d, var_3.d.c, arg_0.d.c), arg_3.d, vec4<u32>(25731u, var_3.a.x, var_3.b, 4294967295u), 41653u).c >> (_wgslsmith_mult_u32(arg_0.a.x, 0u) % 32u))), _wgslsmith_mod_i32(7123i, -2147483647i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.d;
    let x = u_input.a;
    s_output = func_4(func_1(Struct_1(false, 607f, -1i)), func_1(Struct_1(true, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(round(419f)))), -1i)).d, max(-22157i, var_0), Struct_3(u_input.b << (min(vec2<u32>(u_input.a, u_input.b.x), u_input.b) % vec2<u32>(32u)), ~1u ^ (_wgslsmith_sub_u32(0u, u_input.b.x) | ~u_input.b.x), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(-772f)), 784f)), Struct_1(all(vec2<bool>(true, true)), 608f, 1i), !func_1(func_1(Struct_1(true, -783f, var_0)).d).e));
}

