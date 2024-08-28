struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_1) -> vec2<u32> {
    let var_0 = arg_2;
    let var_1 = vec4<bool>(!(true & (true || !arg_2.a)), arg_0.a, countOneBits(2147483647i) == arg_2.b, false);
    var var_2 = true;
    let var_3 = Struct_1(any(vec2<bool>(false, true)), -18853i);
    var_2 = true;
    return ~vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 31129u, u_input.a.x), ~u_input.a), 1u);
}

fn func_2() -> f32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(1f, 1f, 1f, 1f))));
    let var_1 = firstTrailingBit(min(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 76153u), func_3(Struct_1(false, -21432i), Struct_1(false, -13267i), Struct_1(false, -31254i))), u_input.c.zw));
    let var_2 = _wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(min(min(min(u_input.b, vec4<i32>(u_input.b.x, -1i, u_input.b.x, -2147483647i)), u_input.b), u_input.b << (u_input.c % vec4<u32>(32u))), vec4<i32>(1i, max(u_input.b.x & 2147483647i, u_input.b.x), -41488i, u_input.b.x)), _wgslsmith_div_i32(-2147483647i, _wgslsmith_dot_vec3_i32(~max(u_input.b.xwy, vec3<i32>(u_input.b.x, 0i, 39287i)), -(~u_input.b.wwx))));
    let var_3 = Struct_1((u_input.b.x > firstLeadingBit(_wgslsmith_mod_i32(var_2, 2147483647i))) & all(vec2<bool>(true, select(true, false, false))), firstTrailingBit(var_2));
    let var_4 = ~abs(var_3.b);
    return -1982f;
}

fn func_4(arg_0: vec3<u32>, arg_1: i32, arg_2: vec3<f32>, arg_3: f32) -> Struct_1 {
    var var_0 = _wgslsmith_sub_u32(11570u, _wgslsmith_mult_u32(arg_0.x, 68596u));
    var_0 = 20552u ^ abs(_wgslsmith_mult_u32(select(firstTrailingBit(arg_0.x), 4294967295u, all(vec4<bool>(false, true, true, true))), _wgslsmith_mod_u32(arg_0.x, 16527u)));
    var_0 = max(0u | ~(~(0u | arg_0.x)), _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(reverseBits(u_input.a), firstLeadingBit(~vec3<u32>(4294967295u, 4294967295u, 86546u))), 4294967295u));
    let var_1 = Struct_1(all(select(select(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(true, true), vec2<bool>(true, true)), vec2<bool>(true, true), any(vec4<bool>(true, false, true, false)))), ~(_wgslsmith_mod_i32(arg_1, firstTrailingBit(47235i)) & countOneBits(i32(-1i) * -17487i)));
    var var_2 = Struct_1(true, firstTrailingBit(_wgslsmith_mult_i32(-1i, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(arg_1, -1i), u_input.b.xw, u_input.b.wx), u_input.b.xz))));
    return Struct_1(any(select(select(vec2<bool>(var_2.a, var_1.a), select(vec2<bool>(var_1.a, var_2.a), vec2<bool>(false, var_2.a), vec2<bool>(false, true)), select(vec2<bool>(var_1.a, false), vec2<bool>(false, var_2.a), vec2<bool>(true, var_1.a))), select(vec2<bool>(true, true), select(vec2<bool>(var_2.a, false), vec2<bool>(var_2.a, var_1.a), vec2<bool>(var_1.a, var_2.a)), true), vec2<bool>(var_2.a, arg_3 == arg_2.x))), _wgslsmith_add_i32(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(min(vec2<i32>(u_input.b.x, 24701i), u_input.b.ww), firstTrailingBit(u_input.b.xw)), arg_1), max(u_input.b.x, 1i)));
}

fn func_1(arg_0: f32, arg_1: f32, arg_2: u32) -> f32 {
    var var_0 = func_4(vec3<u32>(~arg_2 << ((_wgslsmith_mod_u32(u_input.c.x, arg_2) >> (arg_2 % 32u)) % 32u), ~_wgslsmith_div_u32(44044u, _wgslsmith_dot_vec3_u32(vec3<u32>(15298u, 4294967295u, arg_2), u_input.a)), ~(~u_input.c.x & 58972u)), u_input.b.x, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_1, _wgslsmith_f_op_f32(308f - arg_1))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(func_2()), 648f, 1000f))), 355f);
    let var_1 = func_4(~abs(u_input.c.xww), 7541i, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1, arg_1, arg_0) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0, arg_0, 1337f))))))), arg_0);
    var var_2 = u_input.c.yyw;
    let var_3 = var_1;
    let var_4 = func_4(~(~vec3<u32>(0u, arg_2, var_2.x) << (u_input.c.xzz % vec3<u32>(32u))) >> ((_wgslsmith_div_vec3_u32(~u_input.c.yzw, abs(vec3<u32>(78569u, var_2.x, 4294967295u))) & u_input.a) % vec3<u32>(32u)), max(~var_3.b, var_1.b), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(1673f, arg_0, -1685f))), _wgslsmith_div_vec3_f32(vec3<f32>(-1756f, 159f, -2213f), vec3<f32>(-1044f, arg_0, arg_1)))))), arg_1);
    return _wgslsmith_f_op_f32(abs(arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-683f, -981f, -2176f, -454f) + vec4<f32>(-441f, -349f, -567f, -109f))))));
    var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-2151f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2134f), var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(316f))))));
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)), -112f, 1u)), var_0.x), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1000f, var_0.x, _wgslsmith_f_op_f32(f32(-1f) * -1334f), _wgslsmith_f_op_f32(step(1677f, 1306f)))))));
    let var_2 = 40700i;
    let var_3 = Struct_1(true, var_2);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1411f), vec4<u32>(_wgslsmith_div_u32(0u & u_input.a.x, _wgslsmith_add_u32(u_input.a.x, u_input.c.x)) ^ u_input.c.x, ~1u, _wgslsmith_div_u32(_wgslsmith_add_u32(0u, u_input.a.x ^ 4294967295u), _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(29554u, u_input.a.x, u_input.a.x, u_input.c.x)), ~u_input.a.x)), 2031u), firstTrailingBit(u_input.b.wxz));
}

