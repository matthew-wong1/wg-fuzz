struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
    e: vec3<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec3<i32>, arg_2: Struct_1, arg_3: f32) -> bool {
    var var_0 = arg_1.x;
    let var_1 = u_input.c.x;
    var_0 = _wgslsmith_mod_i32((~u_input.a.x ^ arg_1.x) << (~arg_0.x % 32u), abs(~(-1i)) << (~_wgslsmith_dot_vec2_u32(~arg_0.zw, vec2<u32>(0u, 1u) | arg_0.zx) % 32u));
    let var_2 = any(vec3<bool>(true, !select(true, true, false), true));
    let var_3 = arg_2;
    return true;
}

fn func_2(arg_0: i32) -> Struct_1 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(round(-1000f)))))), Struct_1(~22123u, min(u_input.c.x, _wgslsmith_div_u32(min(u_input.c.x, 1u), ~34854u))), -1000f, Struct_1(4294967295u, ~min(u_input.c.x, u_input.c.x)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-227f, -129f, 981f)))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(trunc(-988f)), -530f, -761f))));
    var var_1 = var_0.b;
    var_1 = var_0.d;
    let var_2 = select(!(!(!select(vec4<bool>(false, false, true, true), vec4<bool>(false, false, true, true), false))), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true)), func_3(vec4<u32>(var_0.b.a, var_0.d.a, var_1.b, var_1.b), vec3<i32>(-2232i, u_input.b, arg_0), Struct_1(var_0.d.a, 4294967295u), var_0.a)), vec4<bool>(true, true, true, var_1.b >= u_input.c.x)), select(true, true, !all(vec3<bool>(true, false, false))));
    let var_3 = _wgslsmith_mod_i32(_wgslsmith_sub_i32(~_wgslsmith_add_i32(arg_0, _wgslsmith_dot_vec3_i32(u_input.a, vec3<i32>(arg_0, arg_0, arg_0))), 2545i), _wgslsmith_dot_vec2_i32(_wgslsmith_div_vec2_i32(u_input.a.yx, abs(vec2<i32>(7394i, 2147483647i))), _wgslsmith_mod_vec2_i32(vec2<i32>(firstLeadingBit(u_input.b), -u_input.a.x), countOneBits(vec2<i32>(-6678i, arg_0)) << ((vec2<u32>(0u, u_input.c.x) & u_input.c) % vec2<u32>(32u)))));
    return Struct_1(~var_0.b.a, _wgslsmith_add_u32(~_wgslsmith_div_u32(var_0.d.b, 19953u), _wgslsmith_div_u32(7933u >> (var_0.b.a % 32u), var_0.d.a)) & _wgslsmith_sub_u32(~var_0.b.a, var_0.b.a));
}

fn func_1() -> Struct_2 {
    var var_0 = Struct_1((~_wgslsmith_div_u32(4294967295u, u_input.c.x) ^ 15737u) ^ 1u, _wgslsmith_sub_u32(18374u, firstLeadingBit(0u)));
    var var_1 = ~1i;
    var var_2 = u_input.c.x;
    var var_3 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-680f - -294f) + -847f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1310f)))), func_2(u_input.b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-187f, -631f))))), func_2(1i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1839f, 1000f, -268f) + vec3<f32>(1696f, 986f, 1595f)) + _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(1404f, -1000f, -470f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-186f, -1165f, 2986f))) + _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1043f, -211f, 1170f))))));
    var_0 = Struct_1(38781u >> (var_3.d.a % 32u), reverseBits(_wgslsmith_div_u32(func_2(_wgslsmith_dot_vec2_i32(u_input.a.zy, u_input.a.yy)).b, ~var_0.a)));
    return Struct_2(_wgslsmith_f_op_f32(-var_3.e.x), var_3.b, 1f, Struct_1(u_input.c.x, ~(~(~var_0.a))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 557f) - _wgslsmith_f_op_f32(var_3.c + 1297f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_3.c, 880f)) - var_3.e.x), -1136f))));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> i32 {
    var var_0 = vec3<u32>(firstLeadingBit(u_input.c.x), firstLeadingBit(u_input.c.x), _wgslsmith_mod_u32(~abs(~arg_1.b.a), ~(~(~arg_1.d.b))));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.e.x, 1000f, arg_1.c, -3050f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.c, 1626f, 673f, 1085f)))))));
    var_0 = countOneBits(countOneBits(vec3<u32>(11162u, 0u, var_0.x) ^ firstLeadingBit(vec3<u32>(0u, arg_1.b.a, 31055u))) ^ vec3<u32>(abs(_wgslsmith_div_u32(51689u, 74883u)), ~arg_2 ^ ~44358u, reverseBits(~arg_1.b.a)));
    let var_2 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(arg_1.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -510f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1301f + var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -915f))), arg_1.e.x, _wgslsmith_f_op_f32(-arg_1.c)));
    let var_3 = arg_1;
    return ~arg_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(func_4(abs(_wgslsmith_mod_vec3_i32(vec3<i32>(4997i, u_input.b, 2147483647i), vec3<i32>(-16931i, u_input.b, 39460i)) & vec3<i32>(-23512i, u_input.a.x, u_input.b)), func_1(), ~(~(31275u << (u_input.c.x % 32u))), select(select(vec2<bool>(true, false), select(vec2<bool>(false, false), vec2<bool>(false, true), true), vec2<bool>(false, false)), vec2<bool>(true, true), any(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(200f + 874f)), _wgslsmith_div_f32(-773f, -528f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f - -1295f) + _wgslsmith_f_op_f32(f32(-1f) * -1612f)))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1032f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(389f + -1000f))), 130f) - vec3<f32>(_wgslsmith_f_op_f32(647f - 1111f), 1338f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-2140f))))));
    let var_2 = Struct_1(_wgslsmith_dot_vec3_u32(vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.c.x, u_input.c.x, 16450u), func_1().d.b, 1u), 8335u, 4294967295u), _wgslsmith_add_vec3_u32(vec3<u32>(10335u, _wgslsmith_add_u32(49227u, u_input.c.x), u_input.c.x), ~vec3<u32>(1u, u_input.c.x, 0u))), ~4294967295u);
    let var_3 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(551f))), 1525f)) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-715f - var_1.x) + _wgslsmith_f_op_f32(-var_1.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x - var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -838f), _wgslsmith_f_op_f32(sign(var_1.x))) + vec3<f32>(var_1.x, var_1.x, _wgslsmith_f_op_f32(var_1.x - var_1.x)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(var_1))) + vec3<f32>(_wgslsmith_f_op_f32(-var_1.x), 1660f, var_1.x)), !(!(!vec3<bool>(false, var_3, var_3)))));
    let var_5 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_5.c))), -4988i, max(u_input.c.x, select(_wgslsmith_mult_u32(49193u, select(var_5.b.a, var_2.a, var_3)), 68213u, ~var_2.b <= firstLeadingBit(39945u))));
}

