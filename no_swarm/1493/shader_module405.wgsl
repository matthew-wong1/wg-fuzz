struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32> = vec4<i32>(2282i, 24728i, i32(-2147483648), -71804i);

var<private> global1: Struct_2 = Struct_2(vec2<i32>(-49330i, -16529i));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<f32>, arg_1: vec4<i32>, arg_2: i32, arg_3: vec3<u32>) -> vec4<i32> {
    let var_0 = _wgslsmith_mult_vec4_u32(~(~(~(~vec4<u32>(arg_3.x, 4294967295u, 34087u, 6816u)))), ~max(vec4<u32>(_wgslsmith_div_u32(29364u, 107440u), 4294967295u, ~u_input.b, _wgslsmith_add_u32(u_input.b, u_input.a.x)), firstTrailingBit(vec4<u32>(23492u, 1u, arg_3.x, 0u))));
    let var_1 = _wgslsmith_div_vec4_i32(arg_1, arg_1);
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1111f, arg_0.x, arg_0.x, arg_0.x) * vec4<f32>(1434f, 759f, 716f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0.x, 1188f, 401f, -461f), vec4<f32>(-594f, arg_0.x, 742f, -191f), false)), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(596f, arg_0.x, 797f, arg_0.x), vec4<f32>(arg_0.x, 494f, arg_0.x, -1357f)))))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.x, -1000f, _wgslsmith_f_op_f32(ceil(318f)), arg_0.x)))));
    let var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_0.x, 942f, 1000f)))))), var_2.wzy)));
    var var_4 = ~u_input.a;
    return max(select(arg_1, arg_1, vec4<bool>(select(true, true, true), any(vec4<bool>(true, true, true, true)), true, true)), arg_1 ^ (arg_1 | var_1));
}

fn func_2() -> Struct_1 {
    global0 = _wgslsmith_sub_vec4_i32(abs(~firstLeadingBit(func_3(vec2<f32>(-459f, 349f), vec4<i32>(-8217i, 41594i, 9135i, 0i), u_input.c, vec3<u32>(u_input.a.x, u_input.a.x, 1u)))), abs(-vec4<i32>(global0.x, ~global0.x, firstLeadingBit(-26191i), -global0.x)));
    let var_0 = Struct_1(_wgslsmith_sub_vec2_u32(min(u_input.a, _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 42190u), vec2<u32>(u_input.a.x, u_input.a.x))), u_input.a), _wgslsmith_clamp_u32(u_input.a.x, ~_wgslsmith_dot_vec3_u32(select(vec3<u32>(87555u, u_input.a.x, u_input.b), vec3<u32>(4294967295u, 22575u, 1u), vec3<bool>(true, true, false)), ~vec3<u32>(u_input.a.x, 4483u, 4294967295u)), firstLeadingBit(0u)), _wgslsmith_add_vec2_u32(vec2<u32>(u_input.b, u_input.b), ~vec2<u32>(~50632u, ~u_input.a.x)), vec2<i32>(min(_wgslsmith_sub_i32(-global0.x, -1i | global0.x), global0.x), 0i));
    var var_1 = Struct_2(var_0.d);
    let var_2 = Struct_2((global0.xy | vec2<i32>(i32(-1i) * -6757i, var_0.d.x >> (u_input.a.x % 32u))) << ((_wgslsmith_clamp_vec2_u32(select(vec2<u32>(1u, 22040u), u_input.a, false), vec2<u32>(var_0.c.x, var_0.a.x), abs(u_input.a)) << (u_input.a % vec2<u32>(32u))) % vec2<u32>(32u)));
    var var_3 = _wgslsmith_mult_vec3_i32(global0.zzy & firstLeadingBit(vec3<i32>(2147483647i, ~var_1.a.x, min(1i, var_0.d.x))), vec3<i32>(global0.x, select(~(i32(-1i) * -2147483647i), -(1i >> (u_input.a.x % 32u)), ~var_0.d.x < var_1.a.x), max(max(global0.x, _wgslsmith_mod_i32(global1.a.x, u_input.c)), -45189i)));
    return var_0;
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>, arg_2: vec4<f32>) -> vec4<i32> {
    let var_0 = ~abs(abs(~u_input.a.x >> (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b, arg_0.b, arg_0.b, u_input.a.x), vec4<u32>(4294967295u, u_input.b, u_input.a.x, 4294967295u)) % 32u)));
    global1 = Struct_2(countOneBits(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_0.d.x, arg_0.d.x), func_3(_wgslsmith_f_op_vec2_f32(arg_2.yw - vec2<f32>(arg_2.x, 428f)), vec4<i32>(arg_0.d.x, arg_0.d.x, 2147483647i, 45836i), func_3(arg_2.wy, vec4<i32>(u_input.c, 14407i, 0i, arg_0.d.x), global0.x, vec3<u32>(0u, 0u, 72971u)).x, ~vec3<u32>(1522u, 56235u, 11306u)).wy)));
    let var_1 = var_0;
    let var_2 = _wgslsmith_mult_vec3_u32(vec3<u32>(0u, arg_0.c.x, 0u), ~abs(vec3<u32>(0u, var_0, 1u)) << (min(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, arg_0.c.x, 37168u), vec3<u32>(arg_0.a.x, 0u, 58601u))), ~(vec3<u32>(u_input.a.x, u_input.b, u_input.b) & vec3<u32>(72966u, 1u, 0u))) % vec3<u32>(32u)));
    global1 = Struct_2(vec2<i32>(-min(2147483647i, 27809i), global1.a.x) ^ countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(0i, global0.x), vec2<i32>(2147483647i, -15574i))));
    return func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x))), -(~countOneBits(vec4<i32>(global1.a.x, u_input.c, arg_0.d.x, -2147483647i) ^ vec4<i32>(global0.x, u_input.c, 7435i, global1.a.x))), -global0.x, _wgslsmith_sub_vec3_u32(abs(vec3<u32>(91597u, _wgslsmith_mult_u32(var_1, var_2.x), ~4294967295u)), vec3<u32>(~arg_0.a.x, _wgslsmith_div_u32(19912u, 34775u), _wgslsmith_sub_u32(var_2.x & 5746u, u_input.a.x))));
}

fn func_1() -> i32 {
    global0 = func_4(func_2(), !(!select(vec2<bool>(false, true), vec2<bool>(true, true), true)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_div_f32(155f, -1242f), _wgslsmith_f_op_f32(-1162f + 2322f), -123f, _wgslsmith_f_op_f32(-1382f + -1750f))))) & -func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, 685f)) - _wgslsmith_div_vec2_f32(vec2<f32>(1004f, 317f), vec2<f32>(-2338f, 188f))), abs(select(vec4<i32>(-27739i, 2147483647i, 0i, u_input.c), vec4<i32>(global1.a.x, 2147483647i, 2147483647i, u_input.c), false)), 0i, ~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a.x, 1u, u_input.b), vec3<u32>(u_input.a.x, 1u, u_input.b)));
    global1 = Struct_2(abs(~_wgslsmith_sub_vec2_i32(vec2<i32>(0i, global1.a.x), global1.a) & func_3(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(980f, 1234f))), -vec4<i32>(global1.a.x, global1.a.x, 14756i, u_input.c), 0i << (1u % 32u), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, 4294967295u, u_input.b), vec3<u32>(u_input.a.x, 19680u, 23050u))).zy));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1542f - -1000f))), _wgslsmith_div_f32(-506f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -812f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(-1482f)))))), -1000f);
    global1 = Struct_2(global0.wz);
    var var_1 = all(vec3<bool>(all(!select(vec2<bool>(false, true), vec2<bool>(true, false), true)), !(~u_input.a.x > ~0u), false));
    return _wgslsmith_div_i32(_wgslsmith_mult_i32(global0.x, global1.a.x), -10313i ^ -_wgslsmith_dot_vec3_i32(vec3<i32>(-16313i, 1i, global1.a.x), vec3<i32>(29009i, -1i, global1.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_mod_i32(countOneBits(-24365i), u_input.c);
    let var_1 = vec3<i32>(_wgslsmith_sub_i32(~u_input.c, func_1()), ~_wgslsmith_sub_i32(countOneBits(var_0), ~global1.a.x), func_3(vec2<f32>(1f, 1f), _wgslsmith_mult_vec4_i32(min(vec4<i32>(1i, 6097i, 1i, u_input.c), _wgslsmith_clamp_vec4_i32(vec4<i32>(global1.a.x, 12507i, global1.a.x, 1i), vec4<i32>(10959i, -42411i, -20362i, 0i), vec4<i32>(2147483647i, -4669i, global0.x, u_input.c))), -vec4<i32>(28822i, 2147483647i, global1.a.x, u_input.c) | -vec4<i32>(var_0, 5538i, 2769i, 29263i)), var_0, vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 0u, u_input.a.x), vec3<u32>(57549u, 43695u, u_input.a.x)), ~u_input.b & select(1u, 4294967295u, true), 10485u)).x);
    global1 = Struct_2(_wgslsmith_mult_vec2_i32(-(-global1.a & (global1.a ^ vec2<i32>(2147483647i, 1i))), -(~_wgslsmith_div_vec2_i32(global1.a, var_1.yy))));
    var var_2 = !select(true, true, true);
    global1 = Struct_2(~vec2<i32>(var_1.x, _wgslsmith_add_i32(2147483647i, reverseBits(u_input.c))));
    let var_3 = vec2<f32>(636f, 224f);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_3.x, _wgslsmith_f_op_f32(var_3.x + -907f))), _wgslsmith_f_op_f32(f32(-1f) * -653f)), -970f, var_3.x), _wgslsmith_f_op_vec2_f32(exp2(var_3)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-895f, -961f, var_3.x, 283f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -890f, var_3.x, var_3.x) * vec4<f32>(var_3.x, var_3.x, 737f, var_3.x))))), i32(-1i) * -abs(_wgslsmith_div_i32(u_input.c, var_1.x)));
}

