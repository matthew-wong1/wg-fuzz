struct Struct_1 {
    a: vec4<f32>,
    b: vec2<i32>,
    c: vec4<u32>,
    d: bool,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec4<bool>,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(1677f, -1000f, 1771f, 134f), vec2<i32>(-18164i, 17043i), vec4<u32>(1u, 4294967295u, 23459u, 12113u), false, 433f);

var<private> global1: Struct_2;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> f32 {
    global1 = Struct_2(countOneBits(~(~(vec3<u32>(14140u, 104069u, global1.a.x) | u_input.b.xxz))), global1.b, _wgslsmith_f_op_f32(min(global1.e.a.x, global0.e)), global1.d, global1.e);
    global1 = Struct_2(global1.a, -37382i, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.e, _wgslsmith_div_f32(234f, -1305f)))))), !select(select(vec4<bool>(false, global0.d, false, true), !global1.d, vec4<bool>(false, global1.d.x, true, true)), select(vec4<bool>(true, global1.e.d, global0.d, false), global1.d, vec4<bool>(true, true, true, true)), select(!global1.d, global1.d, false)), global1.e);
    global0 = global1.e;
    global1 = Struct_2(global1.e.c.xyz, 39114i, _wgslsmith_f_op_f32(f32(-1f) * -1292f), select(!global1.d, !global1.d, vec4<bool>(true, global0.d, any(!global1.d), select(true, !global0.d, global1.d.x))), Struct_1(global1.e.a, vec2<i32>(_wgslsmith_sub_i32(reverseBits(1i), -2732i), global1.e.b.x), global0.c, all(vec4<bool>(true, select(true, global0.d, false), all(global1.d.wzz), all(global1.d.zz))), _wgslsmith_f_op_f32(-1f)));
    global0 = global1.e;
    return global0.a.x;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<i32>, arg_3: vec2<f32>) -> u32 {
    var var_0 = arg_1.x;
    var var_1 = Struct_2(u_input.b.zzy >> ((countOneBits(global1.e.c.yyy) | select(vec3<u32>(19241u, 35017u, global0.c.x), min(vec3<u32>(19856u, 20643u, 4294967295u), vec3<u32>(global0.c.x, global0.c.x, 40296u)), !global1.d.xyx)) % vec3<u32>(32u)), ~(~(~(-9774i)) << (1u % 32u)), _wgslsmith_f_op_f32(func_3()), vec4<bool>(any(global1.d.xx), true, true && any(global1.d.xw), false), global1.e);
    var var_2 = _wgslsmith_f_op_f32(global1.e.e * _wgslsmith_f_op_f32(-global1.c));
    var var_3 = Struct_2(~reverseBits(vec3<u32>(0u, global1.e.c.x, u_input.b.x)) << (global0.c.wyx % vec3<u32>(32u)), -41563i, 1621f, vec4<bool>(global1.e.d, global0.a.x < _wgslsmith_f_op_f32(-arg_3.x), global0.e == _wgslsmith_f_op_f32(ceil(-608f)), all(!global1.d.zzx)), Struct_1(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1887f, -311f, _wgslsmith_f_op_f32(select(global1.e.a.x, -1000f, true)), global0.e) + _wgslsmith_f_op_vec4_f32(var_1.e.a - _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1.x, global1.e.e, arg_1.x, var_1.e.a.x) + global1.e.a))), global1.e.b, _wgslsmith_mod_vec4_u32(abs(select(vec4<u32>(1u, 39965u, var_1.e.c.x, u_input.a), vec4<u32>(global1.e.c.x, u_input.b.x, var_1.e.c.x, 4294967295u), var_1.e.d)), global0.c), (139f > _wgslsmith_f_op_f32(-arg_3.x)) && global1.d.x, -1657f));
    global0 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3.c, _wgslsmith_f_op_f32(var_3.c * -464f), _wgslsmith_f_op_f32(-var_3.e.e), var_3.c) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_3.e.a) + _wgslsmith_f_op_vec4_f32(global0.a * vec4<f32>(-362f, global1.e.a.x, global0.a.x, 769f)))) - vec4<f32>(-788f, _wgslsmith_f_op_f32(-global1.e.a.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-121f)) + var_3.e.e), -1731f)), countOneBits(vec2<i32>(_wgslsmith_mult_i32(1i, 0i), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(-31365i, -1618i), global0.b), ~vec2<i32>(var_3.e.b.x, -15391i)))), vec4<u32>(~var_3.a.x, var_3.a.x >> (firstTrailingBit(0u) % 32u), _wgslsmith_mult_u32(global0.c.x, ~global1.a.x >> ((0u & var_1.e.c.x) % 32u)), var_1.a.x), any(select(global1.d, vec4<bool>(false, false, global1.d.x && false, all(vec3<bool>(true, global1.d.x, var_1.d.x))), vec4<bool>(!var_3.d.x, false, select(true, true, false), var_1.e.d | true))), var_3.c);
    return 34473u;
}

fn func_1() -> Struct_1 {
    let var_0 = vec2<f32>(-340f, _wgslsmith_f_op_f32(-global0.a.x));
    var var_1 = vec2<bool>(all(global1.d.yxy), _wgslsmith_add_u32(~func_2(2147483647i, vec3<f32>(612f, 1134f, var_0.x), global0.b, vec2<f32>(552f, 1553f)), ~1u) == u_input.a);
    var var_2 = -146f;
    var var_3 = any(!(!(!vec4<bool>(false, var_1.x, var_1.x, false))));
    var var_4 = _wgslsmith_clamp_vec4_i32(-_wgslsmith_mod_vec4_i32(min(abs(vec4<i32>(-26500i, global1.b, -14525i, -1572i)), vec4<i32>(-2147483647i, global1.b, -3717i, global1.e.b.x) >> (global0.c % vec4<u32>(32u))), ~reverseBits(vec4<i32>(global1.e.b.x, global0.b.x, global0.b.x, -1i))), ~(-(-vec4<i32>(-2147483647i, global1.e.b.x, global1.b, -1i) ^ (vec4<i32>(global0.b.x, 65431i, global0.b.x, global0.b.x) >> (vec4<u32>(38616u, 46490u, global0.c.x, global0.c.x) % vec4<u32>(32u))))), vec4<i32>(1i, 43563i, _wgslsmith_add_i32(_wgslsmith_sub_i32(i32(-1i) * -1i, min(1i, 16814i)), 1i), reverseBits(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, global0.b.x, global1.b, global1.b), vec4<i32>(global0.b.x, 26893i, global1.e.b.x, -1i)) << (1u % 32u))));
    return Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(-456f, global1.c, global1.e.e, global1.c) + vec4<f32>(234f, global1.c, global0.a.x, -724f)))))), vec2<i32>(_wgslsmith_clamp_i32(0i, ~(-2147483647i), select(-1i, ~var_4.x, false)), global1.e.b.x), vec4<u32>(4294967295u, ~global0.c.x, ~abs(15504u), abs(~global0.c.x >> (_wgslsmith_dot_vec3_u32(vec3<u32>(global0.c.x, u_input.b.x, 10862u), vec3<u32>(global1.a.x, global0.c.x, 59462u)) % 32u))), global0.a.x > -1240f, var_0.x);
}

fn func_4(arg_0: Struct_2, arg_1: vec4<f32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(arg_2, vec3<f32>(arg_1.x, global1.c, 767f))) + global0.a.wxw))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_2 - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2))) - vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) * _wgslsmith_f_op_f32(-259f + -765f)), _wgslsmith_f_op_f32(-1841f + _wgslsmith_f_op_f32(step(-1037f, global0.a.x))))), func_1().d));
    var var_1 = abs(_wgslsmith_dot_vec2_i32(~(~_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.b, 2147483647i), global0.b)), _wgslsmith_add_vec2_i32(vec2<i32>(global1.b, -19330i), ~vec2<i32>(arg_0.b, -2147483647i))));
    let var_2 = _wgslsmith_dot_vec2_i32(select(global0.b, vec2<i32>(arg_0.e.b.x, -_wgslsmith_mod_i32(-39878i, global0.b.x)), false & (global0.d != !global1.e.d)), -vec2<i32>(global1.e.b.x, ~(-2147483647i)));
    let var_3 = 4294967295u;
    var var_4 = _wgslsmith_div_i32(0i, var_2);
    return arg_0.e.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = _wgslsmith_dot_vec3_i32(vec3<i32>(func_4(Struct_2(vec3<u32>(1u, global0.c.x, global0.c.x), global1.e.b.x, -1470f, global1.d, func_1()), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, global0.e, global0.e, 1128f) * global1.e.a) + _wgslsmith_f_op_vec4_f32(-global0.a)), _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(350f, -458f, global0.e)))))), min(abs(global1.b), firstTrailingBit(_wgslsmith_div_i32(global0.b.x, global0.b.x))), _wgslsmith_dot_vec3_i32(min(vec3<i32>(global1.e.b.x, 1i, global0.b.x), vec3<i32>(global1.b, -16679i, global1.e.b.x)), ~select(vec3<i32>(-1i, global0.b.x, 1i), vec3<i32>(global0.b.x, -1i, global1.b), global0.d))), abs(_wgslsmith_sub_vec3_i32(abs(~vec3<i32>(global0.b.x, global1.b, 0i)), select(vec3<i32>(0i, global0.b.x, global1.b), vec3<i32>(-1874i, 1i, global0.b.x), select(vec3<bool>(global0.d, global1.e.d, global1.e.d), global1.d.yzz, global1.d.x)))));
    global0 = func_1();
    let var_2 = func_1();
    global1 = Struct_2((u_input.b.wxz | (_wgslsmith_sub_vec3_u32(vec3<u32>(global0.c.x, u_input.a, var_2.c.x), global1.e.c.xyw) ^ ~vec3<u32>(global0.c.x, global1.a.x, var_2.c.x))) << (global0.c.zwy % vec3<u32>(32u)), -9139i, global1.e.e, select(!vec4<bool>(false, global0.d, global0.d && var_2.d, true), global1.d, global1.d), Struct_1(_wgslsmith_f_op_vec4_f32(min(global0.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(global1.e.a, global0.a)) + global0.a))), _wgslsmith_sub_vec2_i32(vec2<i32>(-57203i, ~var_2.b.x), global0.b), global1.e.c ^ select(vec4<u32>(3225u, 1u, global1.a.x, 1u), abs(vec4<u32>(global0.c.x, var_2.c.x, u_input.b.x, global0.c.x)), global1.d), false, global0.e));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global1.e.a.x), _wgslsmith_f_op_f32(-global0.a.x), true)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-763f)) - 1f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1259f, var_2.a.x)), -741f)), abs(vec4<u32>(1u | global0.c.x, firstTrailingBit(61042u), u_input.a, abs(0u))) ^ ~(u_input.b << (~vec4<u32>(1u, 1u, 1554u, u_input.b.x) % vec4<u32>(32u))), global1.b, global0.b.x);
}

