struct Struct_1 {
    a: i32,
    b: vec3<u32>,
    c: vec3<u32>,
}

struct Struct_2 {
    a: u32,
    b: vec4<i32>,
    c: Struct_1,
    d: bool,
    e: vec2<bool>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: Struct_2,
}

struct Struct_4 {
    a: vec3<u32>,
    b: i32,
}

struct Struct_5 {
    a: vec2<bool>,
    b: i32,
    c: vec3<u32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 26>;

var<private> global1: f32;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: bool, arg_1: vec3<f32>, arg_2: Struct_4) -> i32 {
    let var_0 = u_input.a.x;
    var var_1 = Struct_1(_wgslsmith_add_i32(max(-1i | ~u_input.c.x, -u_input.c.x ^ u_input.c.x), arg_2.b), u_input.a & arg_2.a, vec3<u32>(_wgslsmith_clamp_u32(abs(u_input.d.x | 1u), _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 113857u, 4294967295u, u_input.a.x), vec4<u32>(u_input.b, 1u, var_0, arg_2.a.x)), arg_2.a.x), 748u, _wgslsmith_clamp_u32(u_input.a.x, countOneBits(~arg_2.a.x), _wgslsmith_sub_u32(countOneBits(4294967295u), max(24768u, u_input.d.x)))));
    global0 = array<Struct_4, 26>();
    var var_2 = !any(vec2<bool>(true, true));
    let var_3 = Struct_4(_wgslsmith_mod_vec3_u32(abs(~firstLeadingBit(arg_2.a)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(2272u, var_1.c.x, arg_2.a.x), vec3<u32>(1u, arg_2.a.x, var_0), _wgslsmith_add_vec3_u32(arg_2.a, vec3<u32>(u_input.a.x, var_0, 1u)))), 1i);
    return _wgslsmith_clamp_i32(21153i, arg_2.b << (((~u_input.d.x ^ 121398u) ^ (var_0 ^ 35211u)) % 32u), u_input.c.x);
}

fn func_2() -> i32 {
    var var_0 = Struct_4(_wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a.x, u_input.d.x, u_input.b), ~vec3<u32>(u_input.d.x, u_input.d.x, u_input.a.x), ~u_input.d), u_input.d), abs(max(abs(i32(-1i) * -2147483647i), reverseBits(func_3(true, vec3<f32>(-1688f, 839f, -1825f), Struct_4(u_input.d, 43256i))))));
    let var_1 = 33285u;
    let var_2 = -2006f;
    var_0 = global0[_wgslsmith_index_u32(u_input.d.x, 26u)];
    var var_3 = abs(vec2<i32>(var_0.b, 2147483647i));
    return (var_0.b & 1i) | ~(~var_0.b);
}

fn func_1() -> i32 {
    var var_0 = abs(~u_input.a);
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<i32>(abs(-2147483647i), _wgslsmith_sub_i32(~(i32(-1i) * -u_input.c.x), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), vec2<i32>(-2147483647i, u_input.c.x)), vec2<i32>(-24065i, u_input.c.x)) >> (u_input.b % 32u)), u_input.c.x, _wgslsmith_mult_i32(-_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.c.x), u_input.c.xz), u_input.c.x) | (countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, 5127i, u_input.c.x, 1i), u_input.c)) & u_input.c.x));
    var_0 = vec4<i32>(~(~(-_wgslsmith_add_i32(-40467i, var_0.x))), var_0.x, _wgslsmith_add_i32(-31414i, u_input.c.x), min(var_0.x, -func_1()));
    var_0 = ~u_input.c;
    let var_1 = Struct_5(vec2<bool>(all(select(vec3<bool>(true, false, true), vec3<bool>(true, true, true), all(vec4<bool>(true, false, false, false)))), false), var_0.x, u_input.a, Struct_4(u_input.a << (~select(u_input.a, u_input.d, vec3<bool>(false, false, false)) % vec3<u32>(32u)), min(~(-15654i >> (u_input.a.x % 32u)), var_0.x)));
    var_0 = _wgslsmith_clamp_vec4_i32(_wgslsmith_mod_vec4_i32(-firstTrailingBit(u_input.c | vec4<i32>(u_input.c.x, var_0.x, var_0.x, var_1.d.b)), u_input.c), vec4<i32>(_wgslsmith_dot_vec2_i32(firstLeadingBit(var_0.zw) >> (vec2<u32>(4294967295u, u_input.a.x) % vec2<u32>(32u)), -abs(vec2<i32>(6432i, var_1.b))), _wgslsmith_add_i32(_wgslsmith_sub_i32(u_input.c.x | 2147483647i, var_0.x), 0i), 1i >> (~(u_input.b & 1028u) % 32u), -max(_wgslsmith_add_i32(-2147483647i, var_1.b), -var_1.d.b)), vec4<i32>(-25445i >> (1u % 32u), ~_wgslsmith_div_i32(7668i, 2147483647i), _wgslsmith_add_i32(min(-2147483647i, -2147483647i), 2147483647i), -2147483647i) | (firstTrailingBit(countOneBits(vec4<i32>(u_input.c.x, -46616i, u_input.c.x, u_input.c.x))) << (vec4<u32>(u_input.a.x, u_input.a.x, var_1.d.a.x, 7406u) % vec4<u32>(32u))));
    global0 = array<Struct_4, 26>();
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1846f + -540f))) + _wgslsmith_div_f32(-194f, _wgslsmith_f_op_f32(sign(-1663f))))));
    let var_3 = true;
    let var_4 = vec4<u32>(~var_1.c.x, var_1.c.x, countOneBits(var_1.d.a.x) ^ _wgslsmith_add_u32(u_input.a.x, _wgslsmith_dot_vec3_u32(select(vec3<u32>(u_input.b, var_1.c.x, 4294967295u), var_1.c, false), _wgslsmith_mult_vec3_u32(var_1.c, vec3<u32>(85928u, 53504u, var_1.c.x)))), ~var_1.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2, 673f, -275f, 1500f) + vec4<f32>(var_2, var_2, var_2, var_2)), _wgslsmith_f_op_vec4_f32(vec4<f32>(1398f, -1041f, var_2, 118f) * vec4<f32>(var_2, var_2, var_2, var_2))))))), 1u, vec4<u32>(43316u, ~(~1u), (var_1.c.x | var_1.c.x) >> ((var_4.x << (var_1.c.x % 32u)) % 32u), max(1u, 92621u)) ^ vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(var_4.x, var_4.x), _wgslsmith_dot_vec3_u32(vec3<u32>(95410u, u_input.a.x, 113953u), u_input.a)), var_1.d.a.x, ~_wgslsmith_sub_u32(25576u, u_input.a.x), ~(4294967295u & u_input.b)), ~_wgslsmith_clamp_vec2_u32(countOneBits(~u_input.a.xz), var_4.ww, ~u_input.a.xy & firstLeadingBit(vec2<u32>(0u, var_4.x))));
}

