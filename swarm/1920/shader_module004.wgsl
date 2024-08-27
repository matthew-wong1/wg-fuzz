struct Struct_1 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: Struct_1,
    d: vec4<f32>,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: u32,
    c: vec3<i32>,
    d: Struct_2,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: Struct_3,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec2<i32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<f32>,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 1>;

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<i32>, arg_1: u32, arg_2: Struct_3, arg_3: Struct_3) -> u32 {
    let var_0 = 2147483647i ^ arg_2.d.c.d;
    global0 = array<vec3<i32>, 1>();
    let var_1 = any(vec2<bool>(true, !(abs(-2147483647i) < min(arg_3.a.d, var_0))));
    let var_2 = ~(~(~(arg_1 | select(arg_2.a.c, 4294967295u, arg_3.a.a.x))));
    return (~var_2 << (max(firstTrailingBit(68239u) << (1u % 32u), arg_1) % 32u)) << (4294967295u % 32u);
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = !(4294967295u == ~(abs(15426u) | func_3(arg_1, u_input.c.x, Struct_3(Struct_1(arg_0.yw, u_input.c, 4294967295u, arg_1.x, vec4<i32>(u_input.b.x, u_input.b.x, 2580i, -17421i)), u_input.c.x, u_input.b.xww, Struct_2(vec4<u32>(u_input.c.x, u_input.c.x, u_input.c.x, 1u), Struct_1(arg_0.zx, vec4<u32>(u_input.c.x, u_input.c.x, 26109u, 4294967295u), u_input.c.x, -9435i, u_input.a), Struct_1(arg_0.xw, vec4<u32>(u_input.c.x, 0u, u_input.c.x, 60187u), u_input.c.x, -1i, vec4<i32>(16831i, 0i, -9197i, arg_1.x)), vec4<f32>(470f, 1000f, -234f, -1000f), Struct_1(vec2<bool>(arg_0.x, false), u_input.c, 0u, 1i, vec4<i32>(arg_1.x, arg_1.x, arg_1.x, -2147483647i))), arg_0.x), Struct_3(Struct_1(vec2<bool>(true, true), u_input.c, u_input.c.x, u_input.a.x, u_input.b), 0u, vec3<i32>(-1i, arg_1.x, -28708i), Struct_2(u_input.c, Struct_1(vec2<bool>(arg_0.x, arg_0.x), u_input.c, 45782u, arg_1.x, vec4<i32>(-30334i, -10599i, -41785i, -2838i)), Struct_1(arg_0.zw, vec4<u32>(44360u, u_input.c.x, 6706u, 4294967295u), u_input.c.x, 14142i, vec4<i32>(u_input.b.x, arg_1.x, 2147483647i, u_input.a.x)), vec4<f32>(1000f, -617f, -1378f, -153f), Struct_1(arg_0.yx, u_input.c, 0u, 50066i, vec4<i32>(u_input.d.x, 5532i, 38398i, 24944i))), arg_0.x))));
    global0 = array<vec3<i32>, 1>();
    global0 = array<vec3<i32>, 1>();
    let var_1 = Struct_4(Struct_1(vec2<bool>(var_0, true), vec4<u32>(abs(u_input.c.x), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 53949u, 1u), select(u_input.c.zyx, vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), arg_0.ywy)), _wgslsmith_div_u32(39470u | u_input.c.x, u_input.c.x), ~2674u), _wgslsmith_clamp_u32(4294967295u, ~reverseBits(30858u), u_input.c.x), _wgslsmith_add_i32(_wgslsmith_sub_i32(reverseBits(-37946i), 438i << (u_input.c.x % 32u)), 1i), firstTrailingBit(-vec4<i32>(u_input.d.x, 5719i, arg_1.x, -2147483647i) >> (vec4<u32>(u_input.c.x, u_input.c.x, 1u, u_input.c.x) % vec4<u32>(32u)))), _wgslsmith_div_i32(1i, max(-arg_1.x, -u_input.b.x)), Struct_3(Struct_1(!arg_0.yy, _wgslsmith_div_vec4_u32(u_input.c, vec4<u32>(u_input.c.x, u_input.c.x, 59506u, u_input.c.x)) << (vec4<u32>(0u, u_input.c.x, 7361u, 38840u) % vec4<u32>(32u)), 0u, ~_wgslsmith_mod_i32(-27815i, 5501i), _wgslsmith_sub_vec4_i32(u_input.a, min(u_input.b, vec4<i32>(arg_1.x, 41259i, arg_1.x, 2147483647i)))), ~u_input.c.x, reverseBits(vec3<i32>(-1i) * -vec3<i32>(1i, u_input.e, 56224i)), Struct_2(~u_input.c, Struct_1(arg_0.wz, u_input.c, _wgslsmith_add_u32(u_input.c.x, u_input.c.x), ~(-2371i), u_input.a & vec4<i32>(30934i, 37357i, u_input.a.x, u_input.d.x)), Struct_1(vec2<bool>(true, true), vec4<u32>(4294967295u, 1u, u_input.c.x, 40081u), _wgslsmith_div_u32(u_input.c.x, 10305u), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, -2147483647i), u_input.d), -u_input.b), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-200f, -383f, -1298f, -863f)))), Struct_1(vec2<bool>(true, var_0), firstLeadingBit(u_input.c), u_input.c.x, ~1i, abs(vec4<i32>(-1i, u_input.e, u_input.a.x, -1i)))), true), vec2<u32>(u_input.c.x, u_input.c.x));
    global0 = array<vec3<i32>, 1>();
    return var_1.c.d.c;
}

fn func_4(arg_0: vec2<f32>, arg_1: Struct_3, arg_2: Struct_2, arg_3: i32) -> i32 {
    let var_0 = Struct_4(func_2(vec4<bool>(false, !arg_2.e.a.x, true, any(arg_2.c.a)), abs(_wgslsmith_add_vec3_i32(~vec3<i32>(arg_1.c.x, 45654i, 23699i), _wgslsmith_div_vec3_i32(arg_2.b.e.wxz, arg_1.a.e.wyy)))), _wgslsmith_clamp_i32(-countOneBits(abs(arg_3)), _wgslsmith_clamp_i32((0i & arg_2.c.e.x) >> (49935u % 32u), 35934i, arg_1.a.e.x), -1i), arg_1, vec2<u32>(72955u, reverseBits(u_input.c.x)));
    global0 = array<vec3<i32>, 1>();
    var var_1 = firstTrailingBit(firstLeadingBit(0u));
    var var_2 = arg_1.d.c;
    return var_0.a.d;
}

fn func_5(arg_0: vec3<u32>, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    let var_0 = vec4<bool>(1708u > arg_1.c.d.e.c, true, select(!func_2(!vec4<bool>(false, true, false, arg_1.c.a.a.x), ~arg_1.a.e.yyz).a.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2, arg_1.c.d.d.x)) >= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(256f * arg_1.c.d.d.x), arg_1.c.d.d.x)), arg_1.c.e), arg_1.c.d.c.a.x);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1625f * 1561f)), _wgslsmith_f_op_f32(arg_1.c.d.d.x + _wgslsmith_div_f32(arg_2, arg_1.c.d.d.x)), arg_1.c.d.d.x) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(arg_1.c.d.d.ywz + vec3<f32>(-631f, arg_1.c.d.d.x, 638f)))) * _wgslsmith_f_op_vec3_f32(arg_1.c.d.d.xzz * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(928f, 871f, 931f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.c.d.d.x, arg_2, arg_2)) - _wgslsmith_f_op_vec3_f32(arg_1.c.d.d.zxx * vec3<f32>(arg_1.c.d.d.x, -931f, 1483f))))));
    global0 = array<vec3<i32>, 1>();
    var var_2 = arg_1.c;
    let var_3 = select(var_2.a.e.wzx, _wgslsmith_div_vec3_i32(~vec3<i32>(u_input.b.x, select(18836i, u_input.b.x, false), i32(-1i) * -57589i), ~(-vec3<i32>(32991i, -1i, arg_1.b)) ^ ~_wgslsmith_sub_vec3_i32(arg_1.c.d.c.e.www, vec3<i32>(-62704i, var_2.c.x, -2147483647i))), !(!(!any(vec2<bool>(true, true)))));
    return Struct_3(func_2(select(select(var_0, vec4<bool>(arg_1.a.a.x, true, var_0.x, var_0.x), !vec4<bool>(true, var_0.x, var_2.d.e.a.x, true)), vec4<bool>(select(true, var_0.x, true), var_0.x || var_0.x, var_2.e, !var_0.x), var_0), firstLeadingBit(var_3)), arg_1.d.x & 11061u, vec3<i32>(-25200i, var_2.c.x, -_wgslsmith_div_i32(func_4(vec2<f32>(-1256f, arg_2), Struct_3(arg_1.a, u_input.c.x, var_3, Struct_2(vec4<u32>(var_2.d.a.x, 0u, u_input.c.x, arg_0.x), Struct_1(arg_1.c.d.b.a, vec4<u32>(var_2.a.c, arg_1.d.x, var_2.b, arg_1.c.a.b.x), arg_0.x, 0i, vec4<i32>(0i, 2147483647i, var_3.x, -53021i)), var_2.a, vec4<f32>(-492f, 1672f, arg_2, 430f), Struct_1(var_2.a.a, var_2.d.a, var_2.d.c.b.x, -17529i, u_input.b)), var_0.x), arg_1.c.d, 3258i), 59820i)), Struct_2(vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(arg_0.x, arg_0.x, u_input.c.x, 1u) & vec4<u32>(14520u, var_2.b, 65365u, u_input.c.x), arg_1.c.d.c.b), _wgslsmith_sub_u32(func_3(vec3<i32>(var_2.d.b.e.x, u_input.b.x, arg_1.b), 0u, Struct_3(Struct_1(arg_1.a.a, var_2.a.b, u_input.c.x, arg_1.b, arg_1.a.e), arg_0.x, u_input.b.xzy, Struct_2(arg_1.a.b, arg_1.c.d.c, Struct_1(vec2<bool>(false, true), arg_1.c.d.a, 0u, -28289i, vec4<i32>(var_2.d.c.d, 2147483647i, var_3.x, var_3.x)), vec4<f32>(arg_2, -1587f, var_2.d.d.x, var_2.d.d.x), Struct_1(arg_1.c.a.a, arg_1.a.b, 4294967295u, -55285i, u_input.b)), arg_1.a.a.x), arg_1.c), arg_1.d.x), 7866u, countOneBits(4294967295u)), Struct_1(!(!vec2<bool>(arg_1.c.e, var_2.d.c.a.x)), vec4<u32>(select(var_2.a.b.x, arg_1.a.b.x, arg_1.c.d.c.a.x), _wgslsmith_mult_u32(0u, 18650u), arg_1.d.x & var_2.a.c, var_2.b), _wgslsmith_dot_vec4_u32(var_2.a.b, min(arg_1.c.a.b, vec4<u32>(u_input.c.x, u_input.c.x, var_2.a.b.x, arg_0.x))), _wgslsmith_mod_i32(var_3.x, abs(23515i)), min(-u_input.b, firstLeadingBit(var_2.a.e))), func_2(select(var_0, select(var_0, var_0, vec4<bool>(false, var_2.e, true, true)), all(vec4<bool>(false, arg_1.a.a.x, true, true))), var_2.c), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_div_vec4_f32(var_2.d.d, arg_1.c.d.d)))), func_2(vec4<bool>(false, !arg_1.a.a.x, any(vec4<bool>(arg_1.c.a.a.x, true, false, true)), var_2.d.c.a.x), _wgslsmith_mult_vec3_i32(var_3, arg_1.c.c))), var_2.a.a.x);
}

fn func_1(arg_0: vec3<bool>, arg_1: Struct_2) -> i32 {
    let var_0 = func_5(arg_1.e.b.wxy, Struct_4(Struct_1(arg_0.xz, abs(vec4<u32>(4294967295u, 31021u, 4294967295u, 1u)), u_input.c.x, max(i32(-1i) * -1i, ~arg_1.e.e.x), countOneBits(arg_1.c.e << (vec4<u32>(arg_1.e.b.x, 37064u, u_input.c.x, 4294967295u) % vec4<u32>(32u)))), func_4(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.d.yx)), Struct_3(func_2(vec4<bool>(arg_1.e.a.x, arg_0.x, true, arg_1.b.a.x), arg_1.b.e.wwy), ~58108u, -vec3<i32>(-8377i, u_input.e, 35024i), arg_1, any(vec3<bool>(arg_1.b.a.x, arg_1.c.a.x, false))), arg_1, _wgslsmith_div_i32(arg_1.e.d, arg_1.c.d)), Struct_3(arg_1.b, 22083u, global0[_wgslsmith_index_u32(0u, 1u)], arg_1, arg_0.x), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 1u, 105818u, 4294967295u), arg_1.b.b) << (_wgslsmith_dot_vec3_u32(u_input.c.xyy, vec3<u32>(4294967295u, 72948u, 4294967295u)) % 32u), 0u)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.d.x) - arg_1.d.x) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-154f * arg_1.d.x))))));
    let var_1 = u_input.a.x > (u_input.e ^ countOneBits(u_input.b.x));
    return ~1i;
}

fn func_6(arg_0: Struct_1, arg_1: f32, arg_2: Struct_4) -> Struct_1 {
    global0 = array<vec3<i32>, 1>();
    global0 = array<vec3<i32>, 1>();
    global0 = array<vec3<i32>, 1>();
    global0 = array<vec3<i32>, 1>();
    let var_0 = func_5(firstLeadingBit(u_input.c.yyy), Struct_4(func_2(!(!vec4<bool>(arg_0.a.x, false, false, false)), vec3<i32>(-arg_2.a.e.x, _wgslsmith_dot_vec2_i32(arg_2.a.e.zz, u_input.a.ww), u_input.a.x << (arg_2.c.d.c.b.x % 32u))), _wgslsmith_sub_i32(~func_4(arg_2.c.d.d.xw, Struct_3(arg_0, u_input.c.x, vec3<i32>(arg_2.b, arg_2.c.d.e.e.x, -31029i), Struct_2(vec4<u32>(39788u, 1u, arg_2.a.b.x, 11588u), arg_0, Struct_1(vec2<bool>(false, false), arg_0.b, arg_2.d.x, arg_2.b, arg_2.a.e), arg_2.c.d.d, Struct_1(vec2<bool>(true, false), u_input.c, arg_0.c, u_input.a.x, vec4<i32>(arg_2.a.d, u_input.b.x, 1i, -2147483647i))), arg_0.a.x), arg_2.c.d, arg_0.d), countOneBits(arg_2.c.a.d) ^ 14236i), Struct_3(func_2(select(vec4<bool>(false, true, true, true), vec4<bool>(arg_2.c.a.a.x, arg_2.a.a.x, arg_0.a.x, arg_2.a.a.x), vec4<bool>(arg_2.c.e, false, true, arg_0.a.x)), vec3<i32>(-2147483647i, u_input.e, u_input.a.x)), ~_wgslsmith_mod_u32(0u, arg_0.c), _wgslsmith_sub_vec3_i32(global0[_wgslsmith_index_u32(~u_input.c.x, 1u)], vec3<i32>(8690i, -60979i, -4408i)), func_5(vec3<u32>(arg_2.c.d.b.c, u_input.c.x, arg_2.a.c), Struct_4(Struct_1(vec2<bool>(arg_0.a.x, true), vec4<u32>(u_input.c.x, arg_2.c.a.c, 102619u, 53728u), 23976u, 2147483647i, vec4<i32>(-1i, 10238i, -27522i, -9535i)), 1i, arg_2.c, u_input.c.xy), 1565f).d, func_2(vec4<bool>(true, arg_2.a.a.x, false, false), vec3<i32>(0i, arg_0.d, u_input.d.x)).a.x), arg_0.b.yz), _wgslsmith_f_op_f32(arg_2.c.d.d.x * _wgslsmith_f_op_f32(floor(arg_1)))).d;
    return Struct_1(vec2<bool>(false, false), arg_0.b, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, 1u) << (arg_0.b.xz % vec2<u32>(32u)), _wgslsmith_mod_vec2_u32(arg_2.a.b.xy, vec2<u32>(firstLeadingBit(0u), 61553u >> (u_input.c.x % 32u)))), (i32(-1i) * -24377i) & _wgslsmith_add_i32(-41099i & ~arg_0.d, _wgslsmith_mult_i32(arg_2.c.d.e.e.x, -8173i)), arg_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(u_input.c.xw | vec2<u32>(_wgslsmith_mod_u32(u_input.c.x, 4294967295u), ~u_input.c.x));
    var var_1 = func_6(Struct_1(vec2<bool>(all(vec4<bool>(false, false, true, false)), false), u_input.c, _wgslsmith_sub_u32(abs(u_input.c.x), 60267u) >> ((abs(var_0.x) | 13887u) % 32u), _wgslsmith_mult_i32(-2147483647i, 1i << (0u % 32u)), min(select(select(vec4<i32>(9562i, u_input.b.x, -2147483647i, -1i), vec4<i32>(-388i, 2147483647i, -9825i, -1i), true), vec4<i32>(u_input.b.x, u_input.e, u_input.b.x, u_input.a.x), 978i == u_input.d.x), vec4<i32>(u_input.e ^ u_input.d.x, u_input.e >> (var_0.x % 32u), ~29287i, func_1(vec3<bool>(true, false, false), Struct_2(u_input.c, Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.c.x, var_0.x, var_0.x, u_input.c.x), 50982u, 1i, vec4<i32>(61746i, u_input.a.x, u_input.a.x, 0i)), Struct_1(vec2<bool>(true, false), u_input.c, var_0.x, 0i, u_input.b), vec4<f32>(-892f, 1147f, -248f, 376f), Struct_1(vec2<bool>(false, true), vec4<u32>(u_input.c.x, var_0.x, 0u, 1u), var_0.x, u_input.e, vec4<i32>(-2i, u_input.a.x, u_input.e, 23030i))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1520f))) - _wgslsmith_f_op_f32(2211f + _wgslsmith_f_op_f32(-1601f - _wgslsmith_f_op_f32(1006f - -176f)))), Struct_4(func_5(u_input.c.zzz, Struct_4(func_5(u_input.c.xyw, Struct_4(Struct_1(vec2<bool>(false, false), vec4<u32>(40039u, 54978u, 0u, u_input.c.x), var_0.x, 2147483647i, u_input.b), u_input.a.x, Struct_3(Struct_1(vec2<bool>(false, true), u_input.c, u_input.c.x, -16915i, u_input.b), u_input.c.x, vec3<i32>(u_input.b.x, -2147483647i, u_input.e), Struct_2(u_input.c, Struct_1(vec2<bool>(true, true), u_input.c, 3193u, 1i, vec4<i32>(u_input.a.x, u_input.e, -1i, 1i)), Struct_1(vec2<bool>(false, true), vec4<u32>(4364u, 26639u, var_0.x, 27584u), var_0.x, u_input.d.x, u_input.a), vec4<f32>(501f, 235f, -1126f, 967f), Struct_1(vec2<bool>(true, false), u_input.c, u_input.c.x, -34847i, vec4<i32>(u_input.d.x, u_input.a.x, u_input.b.x, u_input.e))), true), u_input.c.yw), 158f).a, u_input.d.x & -1i, Struct_3(Struct_1(vec2<bool>(true, false), u_input.c, 42124u, -2147483647i, vec4<i32>(0i, 1i, -32511i, -22416i)), 4294967295u, vec3<i32>(u_input.b.x, 1i, u_input.d.x), Struct_2(u_input.c, Struct_1(vec2<bool>(false, false), vec4<u32>(var_0.x, 1u, 4294967295u, 33670u), u_input.c.x, u_input.b.x, vec4<i32>(-11301i, 2147483647i, u_input.b.x, -61562i)), Struct_1(vec2<bool>(true, false), vec4<u32>(1u, 1u, var_0.x, u_input.c.x), 4294967295u, u_input.e, u_input.b), vec4<f32>(-858f, 249f, -162f, 108f), Struct_1(vec2<bool>(false, false), u_input.c, u_input.c.x, u_input.e, u_input.b)), true), select(u_input.c.zz, var_0, vec2<bool>(false, false))), -273f).a, _wgslsmith_sub_i32(1i ^ ~u_input.a.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(u_input.c.x, 1u)], u_input.a.wzz), -1i)), func_5(~(u_input.c.zyw | u_input.c.yzw), Struct_4(func_5(vec3<u32>(8746u, 0u, 4294967295u), Struct_4(Struct_1(vec2<bool>(true, true), u_input.c, 4294967295u, u_input.b.x, vec4<i32>(0i, u_input.d.x, 1i, 32923i)), 16480i, Struct_3(Struct_1(vec2<bool>(true, false), vec4<u32>(var_0.x, u_input.c.x, 49002u, u_input.c.x), 1u, -2147483647i, u_input.b), u_input.c.x, u_input.a.zyx, Struct_2(vec4<u32>(var_0.x, 0u, 6294u, 21547u), Struct_1(vec2<bool>(false, false), vec4<u32>(4294967295u, 4294967295u, 4294967295u, var_0.x), var_0.x, u_input.e, u_input.b), Struct_1(vec2<bool>(false, false), vec4<u32>(38944u, 4294967295u, 55734u, var_0.x), 1u, -2147483647i, vec4<i32>(u_input.d.x, 2690i, 2147483647i, -2215i)), vec4<f32>(-648f, 1488f, 353f, -291f), Struct_1(vec2<bool>(false, false), u_input.c, 0u, u_input.d.x, u_input.b)), false), u_input.c.wz), 512f).d.c, -21089i, Struct_3(Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.c.x, 4294967295u, var_0.x, u_input.c.x), 0u, u_input.b.x, vec4<i32>(2147483647i, u_input.a.x, 1i, u_input.d.x)), 4294967295u, vec3<i32>(u_input.d.x, u_input.e, u_input.d.x), Struct_2(u_input.c, Struct_1(vec2<bool>(false, false), u_input.c, 31155u, u_input.b.x, vec4<i32>(-14624i, u_input.a.x, 0i, u_input.e)), Struct_1(vec2<bool>(true, true), u_input.c, 65132u, u_input.a.x, vec4<i32>(u_input.e, u_input.d.x, 0i, u_input.d.x)), vec4<f32>(-890f, 1310f, 1000f, 1000f), Struct_1(vec2<bool>(false, true), vec4<u32>(25215u, 121272u, var_0.x, 19790u), var_0.x, 2147483647i, vec4<i32>(u_input.a.x, -47526i, u_input.b.x, u_input.b.x))), true), vec2<u32>(21311u, var_0.x)), -740f), select(vec2<u32>(var_0.x, 12425u), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, 0u), var_0), func_2(vec4<bool>(true, true, true, false), vec3<i32>(u_input.a.x, u_input.a.x, u_input.e)).a) & vec2<u32>(_wgslsmith_mult_u32(u_input.c.x, 74129u), 85535u)));
    global0 = array<vec3<i32>, 1>();
    let var_2 = Struct_2(~(~_wgslsmith_div_vec4_u32(~vec4<u32>(var_1.c, u_input.c.x, var_0.x, var_1.b.x), firstTrailingBit(vec4<u32>(u_input.c.x, var_0.x, var_1.b.x, u_input.c.x)))), Struct_1(func_6(func_5(~u_input.c.xxx, Struct_4(Struct_1(vec2<bool>(false, var_1.a.x), vec4<u32>(0u, 0u, var_1.b.x, u_input.c.x), 9021u, -2147483647i, vec4<i32>(16752i, -21837i, u_input.d.x, u_input.b.x)), 11177i, Struct_3(Struct_1(var_1.a, vec4<u32>(20354u, 21076u, 1u, 4294967295u), 12802u, var_1.e.x, u_input.a), u_input.c.x, vec3<i32>(-16807i, u_input.d.x, var_1.d), Struct_2(vec4<u32>(0u, var_0.x, 1u, var_1.c), Struct_1(var_1.a, var_1.b, 49490u, u_input.b.x, vec4<i32>(0i, -1i, -20185i, var_1.d)), Struct_1(var_1.a, u_input.c, 35400u, 3328i, vec4<i32>(u_input.d.x, 34231i, var_1.d, var_1.d)), vec4<f32>(-451f, 491f, 2046f, 1487f), Struct_1(var_1.a, var_1.b, 8290u, var_1.d, var_1.e)), true), var_0), -466f).d.c, _wgslsmith_f_op_f32(f32(-1f) * -182f), Struct_4(func_2(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, var_1.a.x), vec3<i32>(var_1.e.x, var_1.d, -2147483647i)), i32(-1i) * -2464i, Struct_3(Struct_1(vec2<bool>(true, true), vec4<u32>(u_input.c.x, var_1.c, var_0.x, var_0.x), var_1.c, 0i, u_input.b), var_1.c, vec3<i32>(var_1.d, -1i, -1i), Struct_2(vec4<u32>(9227u, 37284u, 4294967295u, var_0.x), Struct_1(var_1.a, vec4<u32>(var_0.x, var_0.x, var_0.x, var_1.b.x), var_0.x, u_input.d.x, vec4<i32>(u_input.a.x, -6133i, 22517i, -26703i)), Struct_1(var_1.a, u_input.c, var_0.x, -22685i, vec4<i32>(50253i, 150i, var_1.e.x, u_input.a.x)), vec4<f32>(1000f, -418f, -321f, -914f), Struct_1(var_1.a, vec4<u32>(u_input.c.x, 22589u, 41257u, 60446u), var_0.x, 2147483647i, u_input.b)), false), vec2<u32>(var_1.b.x, var_1.c))).a, u_input.c, ~reverseBits(u_input.c.x), func_4(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(vec2<f32>(-953f, 242f) * vec2<f32>(-275f, 1000f)))), func_5(_wgslsmith_mult_vec3_u32(u_input.c.yzw, vec3<u32>(0u, var_0.x, u_input.c.x)), Struct_4(Struct_1(var_1.a, vec4<u32>(var_0.x, var_1.c, 4294967295u, 4111u), 0u, var_1.e.x, vec4<i32>(-2147483647i, var_1.e.x, var_1.e.x, 2147483647i)), var_1.d, Struct_3(Struct_1(var_1.a, var_1.b, var_0.x, 1i, u_input.a), var_0.x, vec3<i32>(var_1.d, 1i, var_1.d), Struct_2(var_1.b, Struct_1(vec2<bool>(false, var_1.a.x), u_input.c, u_input.c.x, 15881i, vec4<i32>(u_input.e, u_input.e, var_1.d, 18598i)), Struct_1(var_1.a, u_input.c, 48936u, var_1.e.x, var_1.e), vec4<f32>(-211f, 683f, -1102f, -1078f), Struct_1(vec2<bool>(var_1.a.x, false), u_input.c, var_1.b.x, -11816i, u_input.b)), var_1.a.x), vec2<u32>(var_1.b.x, var_0.x)), _wgslsmith_f_op_f32(1985f + -423f)), Struct_2(abs(var_1.b), func_5(var_1.b.xzx, Struct_4(Struct_1(var_1.a, var_1.b, 16595u, -2147483647i, vec4<i32>(27772i, u_input.e, u_input.a.x, u_input.d.x)), 2147483647i, Struct_3(Struct_1(var_1.a, vec4<u32>(1u, var_0.x, var_0.x, u_input.c.x), u_input.c.x, -3165i, vec4<i32>(-25164i, u_input.a.x, 1i, 2147483647i)), u_input.c.x, vec3<i32>(u_input.b.x, u_input.a.x, 1i), Struct_2(vec4<u32>(7099u, 1u, 0u, 4294967295u), Struct_1(vec2<bool>(true, var_1.a.x), var_1.b, var_1.b.x, -62235i, u_input.a), Struct_1(var_1.a, var_1.b, u_input.c.x, u_input.b.x, vec4<i32>(25290i, u_input.a.x, -2147483647i, var_1.d)), vec4<f32>(1779f, -1353f, -828f, 441f), Struct_1(vec2<bool>(var_1.a.x, false), vec4<u32>(var_1.b.x, 41506u, 5427u, var_1.c), 4294967295u, u_input.d.x, var_1.e)), false), vec2<u32>(u_input.c.x, 68004u)), -304f).a, func_6(Struct_1(var_1.a, u_input.c, var_1.c, var_1.e.x, var_1.e), -543f, Struct_4(Struct_1(var_1.a, u_input.c, 0u, 16863i, var_1.e), 2147483647i, Struct_3(Struct_1(var_1.a, vec4<u32>(var_1.b.x, 0u, 0u, 0u), 11748u, var_1.e.x, vec4<i32>(var_1.d, -26714i, -3878i, var_1.e.x)), var_1.b.x, global0[_wgslsmith_index_u32(95936u, 1u)], Struct_2(u_input.c, Struct_1(var_1.a, u_input.c, 1u, var_1.e.x, var_1.e), Struct_1(vec2<bool>(var_1.a.x, true), vec4<u32>(var_0.x, 72728u, u_input.c.x, u_input.c.x), var_1.b.x, var_1.e.x, var_1.e), vec4<f32>(775f, -1610f, 1585f, 232f), Struct_1(vec2<bool>(false, true), vec4<u32>(var_1.b.x, 15439u, var_1.c, var_1.b.x), u_input.c.x, 17640i, var_1.e)), false), vec2<u32>(0u, 1u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(732f, 897f, -408f, 1000f)), func_2(vec4<bool>(var_1.a.x, var_1.a.x, var_1.a.x, false), u_input.a.yxw)), u_input.a.x), vec4<i32>(firstTrailingBit(~var_1.e.x), u_input.e ^ abs(2147483647i), _wgslsmith_dot_vec4_i32(vec4<i32>(1i, var_1.d, -17564i, 14385i), min(var_1.e, vec4<i32>(var_1.d, 0i, 2147483647i, var_1.d))), 0i)), Struct_1(var_1.a, firstTrailingBit(u_input.c), 30074u, func_5(vec3<u32>(_wgslsmith_mult_u32(33278u, 0u), ~var_1.b.x, var_1.b.x), Struct_4(func_5(u_input.c.zyy, Struct_4(Struct_1(var_1.a, var_1.b, 2097u, -17695i, var_1.e), -1i, Struct_3(Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), var_1.b, 87011u, u_input.b.x, vec4<i32>(u_input.a.x, -19601i, u_input.a.x, var_1.d)), var_0.x, vec3<i32>(u_input.b.x, 0i, u_input.e), Struct_2(var_1.b, Struct_1(vec2<bool>(var_1.a.x, var_1.a.x), vec4<u32>(33004u, var_1.b.x, 0u, 1u), u_input.c.x, 10862i, vec4<i32>(var_1.d, 3747i, var_1.d, var_1.e.x)), Struct_1(var_1.a, u_input.c, var_1.c, -31442i, vec4<i32>(u_input.d.x, -2147483647i, 0i, var_1.d)), vec4<f32>(1234f, -960f, -1245f, -146f), Struct_1(vec2<bool>(var_1.a.x, true), var_1.b, 0u, var_1.e.x, var_1.e)), false), vec2<u32>(var_1.c, var_1.c)), 286f).d.b, 0i, Struct_3(Struct_1(vec2<bool>(var_1.a.x, false), u_input.c, 1u, -2147483647i, var_1.e), 0u, vec3<i32>(u_input.e, 2731i, u_input.a.x), Struct_2(vec4<u32>(43164u, var_1.c, u_input.c.x, 3931u), Struct_1(vec2<bool>(false, var_1.a.x), var_1.b, 4294967295u, u_input.e, var_1.e), Struct_1(vec2<bool>(true, var_1.a.x), var_1.b, var_0.x, -2147483647i, var_1.e), vec4<f32>(-711f, 364f, -352f, -432f), Struct_1(var_1.a, vec4<u32>(26846u, 20009u, var_1.b.x, var_1.b.x), var_1.b.x, var_1.d, vec4<i32>(104083i, var_1.e.x, u_input.a.x, u_input.d.x))), var_1.a.x), u_input.c.yw), -2213f).d.c.d, ~u_input.a), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(220f, 1515f)), _wgslsmith_f_op_f32(step(-280f, 991f)), -823f, -1000f)), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(393f, 1118f)) * _wgslsmith_f_op_f32(max(-369f, 560f))), _wgslsmith_f_op_f32(floor(321f)), -412f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(462f - -354f)))), Struct_1(var_1.a, ~min(var_1.b, firstLeadingBit(var_1.b)), _wgslsmith_div_u32(_wgslsmith_mod_u32(9236u, var_1.c), ~(var_0.x | var_0.x)), countOneBits(u_input.a.x) & -2147483647i, reverseBits(vec4<i32>(-11953i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.e.x, 4146i, 1i, 1i), var_1.e), u_input.b.x ^ 10168i, u_input.a.x))));
    global0 = array<vec3<i32>, 1>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~var_1.e.zy), vec3<f32>(_wgslsmith_f_op_f32(-var_2.d.x), var_2.d.x, _wgslsmith_f_op_f32(f32(-1f) * -214f)), u_input.d.x, vec2<f32>(var_2.d.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1185f))));
}

