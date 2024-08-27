struct Struct_1 {
    a: f32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: f32,
    c: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: Struct_1,
    c: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 32> = array<bool, 32>(false, true, true, false, true, true, true, true, true, true, false, true, true, false, false, true, true, false, true, true, false, false, false, false, true, false, false, true, false, false, true, true);

var<private> global1: i32;

var<private> global2: array<Struct_4, 7>;

var<private> global3: Struct_2;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn func_3(arg_0: u32, arg_1: Struct_2, arg_2: vec3<i32>, arg_3: vec4<i32>) -> vec4<f32> {
    global1 = 3145i;
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_1.d.a, _wgslsmith_f_op_f32(round(-136f)), global3.d.d.x) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.d.x, 1043f, -1185f)) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-361f, -976f, arg_1.d.a))))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.b.a - 1112f))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global3.d.d.x)) + _wgslsmith_f_op_f32(max(global3.d.a, -1427f)))), 196f)), select(~global3.b.c.x >> (firstTrailingBit(1u) % 32u), arg_1.d.b.x, global3.a.x));
    global0 = array<bool, 32>();
    let var_1 = vec2<u32>(31414u, arg_1.c.b.x | ~arg_1.d.b.x) >> (vec2<u32>(75643u, u_input.c) % vec2<u32>(32u));
    var_0 = Struct_3(var_0.a, -147f, firstTrailingBit(_wgslsmith_dot_vec4_u32(abs(vec4<u32>(4294967295u, var_0.c, var_1.x, arg_1.b.e.x)), ~vec4<u32>(arg_0, u_input.c, arg_1.b.e.x, var_1.x))) << (max(~(global3.c.c.x << (1u % 32u)), 2219u) % 32u));
    return _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.d.x, var_0.b, -208f, global3.c.a), vec4<f32>(894f, 171f, -110f, arg_1.b.d.x), arg_1.a.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(813f, arg_1.b.d.x, var_0.a.x, arg_1.d.d.x))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-388f, 1487f, arg_1.b.d.x, 309f), vec4<f32>(global3.d.a, 987f, var_0.a.x, arg_1.b.a)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a.x, arg_1.d.d.x, -645f, var_0.b) * vec4<f32>(var_0.b, arg_1.b.a, arg_1.b.d.x, 1625f))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec4<f32>, arg_2: vec4<u32>, arg_3: Struct_1) -> i32 {
    global0 = array<bool, 32>();
    var var_0 = Struct_3(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -546f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3.d.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x * -1615f))) + arg_1.xzz), _wgslsmith_f_op_f32(sign(arg_1.x)), 0u);
    let var_1 = abs(var_0.c);
    global0 = array<bool, 32>();
    let var_2 = u_input.a;
    return _wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(1i, firstLeadingBit(u_input.b.x), ~10758i) ^ select(max(vec3<i32>(var_2, u_input.a, var_2), vec3<i32>(u_input.a, -67259i, 12348i)), reverseBits(vec3<i32>(var_2, u_input.b.x, u_input.a)), global3.a.x)), ~select(vec3<i32>(0i, u_input.b.x, u_input.a), ~vec3<i32>(-17217i, u_input.a, var_2), global0[_wgslsmith_index_u32(58328u, 32u)]) | -vec3<i32>(-84041i, u_input.b.x, 1i));
}

fn func_2(arg_0: u32, arg_1: vec4<bool>, arg_2: u32, arg_3: vec4<bool>) -> vec4<f32> {
    global3 = Struct_2(arg_3.yxx, Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.c.d.x)), vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, arg_2, arg_0, 4294967295u), vec4<u32>(1u, arg_0, u_input.c, u_input.c)), 1u) >> (~select(vec2<u32>(u_input.c, 51701u), global3.c.c, arg_1.x) % vec2<u32>(32u)), global3.d.e.xy, _wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(global3.c.a - global3.d.d.x), -2237f), vec2<f32>(-1152f, _wgslsmith_f_op_f32(global3.d.a + 192f)))), select(vec3<u32>(arg_2, ~global3.d.c.x, ~59705u), ~reverseBits(global3.d.e), vec3<bool>(false, true, false))), Struct_1(-310f, global3.c.e.zx, vec2<u32>(_wgslsmith_add_u32(4294967295u, arg_2), 4294967295u), _wgslsmith_f_op_vec2_f32(global3.b.d * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global3.c.d.x))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(arg_2), 0u, _wgslsmith_dot_vec2_u32(global3.d.b, global3.c.c)), _wgslsmith_add_vec3_u32(vec3<u32>(46477u, 4294967295u, 1u), vec3<u32>(4294967295u, arg_2, 0u)) >> (global3.d.e % vec3<u32>(32u)))), global3.d);
    global1 = u_input.a;
    global0 = array<bool, 32>();
    let var_0 = 816u;
    let var_1 = -_wgslsmith_dot_vec2_i32(countOneBits(u_input.b), vec2<i32>(func_4(vec4<f32>(global3.b.d.x, 257f, 450f, -318f), _wgslsmith_f_op_vec4_f32(func_3(u_input.c, Struct_2(global3.a, Struct_1(1000f, global3.d.e.xy, global3.c.e.zz, vec2<f32>(global3.c.d.x, global3.d.d.x), vec3<u32>(1u, 4294967295u, 842u)), global3.c, global3.c), vec3<i32>(u_input.b.x, u_input.b.x, u_input.b.x), vec4<i32>(24374i, -13837i, u_input.a, 0i))), min(vec4<u32>(global3.d.c.x, var_0, var_0, 1u), vec4<u32>(1u, arg_0, var_0, var_0)), Struct_1(175f, vec2<u32>(arg_0, arg_2), vec2<u32>(32683u, arg_0), global3.b.d, vec3<u32>(9737u, arg_0, global3.c.e.x))), u_input.a));
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(abs(global3.c.a)), global3.c.d.x, arg_1.x)), global3.d.a, _wgslsmith_div_f32(global3.c.d.x, _wgslsmith_f_op_f32(1503f + global3.b.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -560f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(global3.c.d.x, global3.c.d.x, -902f, 981f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.b.d.x, 1606f, 281f, 399f))))), _wgslsmith_f_op_vec4_f32(func_3(~_wgslsmith_sub_u32(var_0, 7018u), Struct_2(!select(vec3<bool>(arg_3.x, arg_3.x, arg_1.x), vec3<bool>(false, false, global3.a.x), vec3<bool>(false, global3.a.x, false)), Struct_1(-260f, vec2<u32>(var_0, 26751u), ~global3.c.e.xy, vec2<f32>(457f, global3.d.a), reverseBits(vec3<u32>(1u, global3.d.b.x, u_input.c))), global3.d, global3.d), ~(-_wgslsmith_clamp_vec3_i32(vec3<i32>(-42324i, var_1, 30680i), vec3<i32>(-12689i, 2147483647i, 2147483647i), vec3<i32>(var_1, var_1, 1i))), _wgslsmith_sub_vec4_i32(max(vec4<i32>(0i, 2147483647i, var_1, 31012i), vec4<i32>(23702i, var_1, u_input.a, var_1)), min(vec4<i32>(-22505i, u_input.a, u_input.a, 1i), vec4<i32>(-1i, 2147483647i, 2147483647i, var_1))) << (~(~vec4<u32>(0u, global3.c.e.x, var_0, global3.d.b.x)) % vec4<u32>(32u)))));
}

fn func_5(arg_0: bool, arg_1: u32, arg_2: vec4<f32>) -> Struct_3 {
    let var_0 = _wgslsmith_f_op_vec4_f32(ceil(arg_2));
    var var_1 = _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(step(arg_2.wwx, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1170f, arg_2.x) - var_0.zxz)) - _wgslsmith_f_op_vec3_f32(select(var_0.ywz, _wgslsmith_f_op_vec4_f32(func_3(global3.d.b.x, Struct_2(global3.a, global3.c, global3.b, Struct_1(1000f, vec2<u32>(global3.d.b.x, u_input.c), vec2<u32>(global3.d.b.x, global3.d.c.x), var_0.wz, vec3<u32>(4294967295u, 32850u, 0u))), vec3<i32>(-27191i, 31391i, 24803i), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.b.x))).yxw, select(false, true, global0[_wgslsmith_index_u32(arg_1, 32u)]))))))));
    var var_2 = -u_input.b;
    global1 = 1i;
    var var_3 = _wgslsmith_mod_u32(~23138u, ~(abs(global3.b.b.x) >> (global3.c.b.x % 32u)) >> (min(0u, abs(91564u)) % 32u));
    return Struct_3(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(round(1668f)), -497f, _wgslsmith_f_op_f32(159f * -1230f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(arg_2.x))), 15099u);
}

fn func_1(arg_0: vec3<bool>) -> Struct_4 {
    global2 = array<Struct_4, 7>();
    var var_0 = func_5(arg_0.x, ~4294967295u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_2(u_input.c, vec4<bool>(arg_0.x, true, global3.a.x, global0[_wgslsmith_index_u32(u_input.c, 32u)]), 31422u, vec4<bool>(true, arg_0.x, true, global3.a.x))))))));
    var var_1 = global3.d;
    let var_2 = Struct_2(global3.a, global3.b, Struct_1(_wgslsmith_div_f32(425f, _wgslsmith_f_op_vec4_f32(func_3(1u, Struct_2(arg_0, global3.b, Struct_1(global3.b.d.x, vec2<u32>(7195u, 0u), vec2<u32>(u_input.c, var_0.c), vec2<f32>(var_1.d.x, 1675f), global3.b.e), global3.b), abs(vec3<i32>(u_input.a, 0i, -2147483647i)), -vec4<i32>(u_input.b.x, u_input.a, 30009i, u_input.a))).x), abs(select(_wgslsmith_mult_vec2_u32(global3.b.b, vec2<u32>(var_1.e.x, var_1.b.x)), var_1.c | var_1.b, true)), ~(~max(var_1.c, global3.c.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1225f, 1703f) + _wgslsmith_f_op_vec2_f32(step(global3.b.d, var_1.d)))), _wgslsmith_add_vec3_u32(~var_1.e, ~(var_1.e >> (var_1.e % vec3<u32>(32u))))), Struct_1(var_0.b, _wgslsmith_mod_vec2_u32(abs(var_1.b), _wgslsmith_div_vec2_u32(var_1.e.xx, var_1.c)) << ((min(vec2<u32>(var_0.c, var_0.c), vec2<u32>(4294967295u, 4294967295u)) & reverseBits(var_1.b)) % vec2<u32>(32u)), vec2<u32>(41175u, min(1u, 18204u)), vec2<f32>(-908f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.b)) + -1000f)), _wgslsmith_clamp_vec3_u32(~select(var_1.e, global3.c.e, false), var_1.e, global3.b.e)));
    let var_3 = all(select(global3.a.yz, var_2.a.xy, !(!var_2.a.x)));
    return global2[_wgslsmith_index_u32(~func_5(any(select(!vec3<bool>(false, global0[_wgslsmith_index_u32(37555u, 32u)], global3.a.x), arg_0, all(vec4<bool>(false, var_3, true, global0[_wgslsmith_index_u32(var_1.e.x, 32u)])))), ~4078u, vec4<f32>(-369f, _wgslsmith_f_op_vec4_f32(func_3(~8412u, Struct_2(vec3<bool>(false, global0[_wgslsmith_index_u32(u_input.c, 32u)], var_2.a.x), var_2.b, global3.c, global3.c), -vec3<i32>(-1i, 6195i, -2147483647i), select(vec4<i32>(u_input.a, -9031i, u_input.b.x, -16072i), vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 2530i), vec4<bool>(arg_0.x, false, var_2.a.x, true)))).x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global3.c.a * var_0.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_2.b.d.x))))).c, 7u)];
}

fn func_6(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_4) -> Struct_1 {
    var var_0 = arg_2;
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(global3.b.a, global3.c.a)) - arg_2.a.x), arg_2.a.x, _wgslsmith_f_op_f32(f32(-1f) * -1650f), _wgslsmith_f_op_f32(-global3.b.d.x))))));
    let var_2 = _wgslsmith_clamp_vec2_u32(vec2<u32>(1u, func_5(all(global3.a), var_0.b.e.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_2.a) * _wgslsmith_div_vec4_f32(var_0.a, arg_0))).c), abs(~(~vec2<u32>(global3.b.b.x, var_0.b.c.x))), global3.c.c);
    var_0 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-971f * -547f), -332f, -506f, arg_0.x), global3.d, var_0.c);
    var var_3 = Struct_1(_wgslsmith_f_op_f32(var_0.a.x * _wgslsmith_f_op_f32(floor(162f))), ~(~arg_2.b.c), vec2<u32>(~4294967295u, 4294967295u) & _wgslsmith_clamp_vec2_u32(vec2<u32>(4294967295u, 1u >> (global3.b.b.x % 32u)), ~(var_0.b.b & vec2<u32>(global3.c.e.x, 1u)), ~(arg_2.b.b << (vec2<u32>(u_input.c, var_0.b.b.x) % vec2<u32>(32u)))), func_5(any(!vec4<bool>(global3.a.x, global0[_wgslsmith_index_u32(arg_2.b.e.x, 32u)], false, var_0.c)) & !all(global3.a.yz), ~(~var_2.x) ^ firstTrailingBit(_wgslsmith_clamp_u32(var_0.b.e.x, arg_2.b.c.x, 36983u)), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(arg_0 * vec4<f32>(arg_2.b.d.x, -363f, var_0.b.d.x, var_0.b.d.x))))))).a.xz, countOneBits((vec3<u32>(88295u, u_input.c, var_0.b.b.x) & var_0.b.e) & global3.d.e));
    return Struct_1(_wgslsmith_f_op_f32(-752f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.b.a))), _wgslsmith_add_vec2_u32(vec2<u32>(global3.d.c.x, ~72700u) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(var_3.b.x, var_2.x), select(global3.d.e.zx, var_0.b.b, vec2<bool>(arg_2.c, global3.a.x)), _wgslsmith_sub_vec2_u32(arg_2.b.b, vec2<u32>(0u, 4294967295u))) % vec2<u32>(32u)), ~var_0.b.e.yx), vec2<u32>(var_3.e.x, var_2.x), global3.d.d, ~vec3<u32>(_wgslsmith_add_u32(u_input.c, global3.b.b.x), ~var_3.b.x, ~u_input.c));
}

fn func_7(arg_0: u32, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_4) -> vec3<i32> {
    global0 = array<bool, 32>();
    global1 = ~_wgslsmith_sub_i32(-1i, u_input.b.x);
    global0 = array<bool, 32>();
    global2 = array<Struct_4, 7>();
    let var_0 = arg_3;
    return -(~countOneBits(~vec3<i32>(2147483647i, 1i, u_input.b.x))) | (vec3<i32>(-1i) * -vec3<i32>(u_input.b.x << (0u % 32u), ~u_input.b.x, reverseBits(0i)));
}

fn func_8(arg_0: vec3<i32>, arg_1: vec2<f32>) -> Struct_2 {
    var var_0 = countOneBits(u_input.c) < ~(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(80309u, global3.b.b.x), vec2<u32>(4294967295u, 4294967295u))));
    let var_1 = _wgslsmith_f_op_vec3_f32(func_1(vec3<bool>(all(!vec3<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], false, true)), false, global0[_wgslsmith_index_u32(_wgslsmith_div_u32(firstTrailingBit(global3.d.b.x), ~0u), 32u)])).a.xyy * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(global3.b.d.x, -2369f, -1799f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, arg_1.x, global3.d.d.x))))));
    var var_2 = Struct_2(vec3<bool>(any(select(select(vec4<bool>(global0[_wgslsmith_index_u32(0u, 32u)], true, global3.a.x, true), vec4<bool>(global3.a.x, global0[_wgslsmith_index_u32(1u, 32u)], false, false), global0[_wgslsmith_index_u32(4294967295u, 32u)]), select(vec4<bool>(global0[_wgslsmith_index_u32(u_input.c, 32u)], false, global0[_wgslsmith_index_u32(1u, 32u)], global0[_wgslsmith_index_u32(global3.d.b.x, 32u)]), vec4<bool>(false, global3.a.x, global0[_wgslsmith_index_u32(0u, 32u)], global3.a.x), vec4<bool>(global3.a.x, false, true, global0[_wgslsmith_index_u32(u_input.c, 32u)])), true)), global3.a.x, global0[_wgslsmith_index_u32(1u, 32u)] | false), Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_vec4_f32(func_3(51671u, Struct_2(global3.a, Struct_1(1143f, vec2<u32>(u_input.c, 2782u), global3.c.b, vec2<f32>(221f, 1806f), vec3<u32>(global3.d.c.x, global3.c.b.x, 0u)), global3.d, Struct_1(arg_1.x, global3.b.e.zx, vec2<u32>(0u, 48542u), vec2<f32>(arg_1.x, global3.d.d.x), global3.d.e)), vec3<i32>(arg_0.x, 1i, -3663i), vec4<i32>(arg_0.x, 6601i, arg_0.x, 0i))).x * func_6(vec4<f32>(368f, global3.b.a, 616f, -1000f), arg_0, Struct_4(vec4<f32>(var_1.x, arg_1.x, 413f, arg_1.x), Struct_1(global3.b.d.x, vec2<u32>(0u, 0u), global3.b.c, vec2<f32>(-1239f, -1012f), vec3<u32>(u_input.c, global3.d.b.x, 21981u)), global0[_wgslsmith_index_u32(global3.b.b.x, 32u)])).a)), global3.b.e.zy, global3.b.e.xx, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(min(var_1.x, -1775f)), _wgslsmith_f_op_f32(-var_1.x)), vec2<f32>(var_1.x, -109f))), global3.c.e), global3.d, Struct_1(arg_1.x, vec2<u32>(~(0u | u_input.c), _wgslsmith_dot_vec3_u32(select(vec3<u32>(0u, u_input.c, 1u), global3.d.e, false), ~global3.c.e)), global3.b.b, _wgslsmith_div_vec2_f32(var_1.xx, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(vec2<f32>(arg_1.x, 608f), vec2<f32>(arg_1.x, -832f))))), ~_wgslsmith_sub_vec3_u32(abs(vec3<u32>(0u, u_input.c, u_input.c)), vec3<u32>(0u, 4294967295u, u_input.c))));
    var var_3 = vec3<u32>(0u, _wgslsmith_div_u32(33377u, (_wgslsmith_mult_u32(4294967295u, u_input.c) << (~global3.c.e.x % 32u)) >> (u_input.c % 32u)), ~40405u);
    var_3 = vec3<u32>(u_input.c, 0u, ~global3.c.b.x);
    return Struct_2(!select(var_2.a, !vec3<bool>(true, var_2.a.x, false), func_1(global3.a).c), Struct_1(var_1.x, abs(var_2.d.c), ~func_1(var_2.a).b.e.yx, vec2<f32>(var_1.x, -1171f), ~func_6(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1468f, arg_1.x, -126f, arg_1.x))), vec3<i32>(26222i, u_input.b.x, 2147483647i), Struct_4(vec4<f32>(var_1.x, global3.b.a, var_1.x, arg_1.x), Struct_1(var_1.x, vec2<u32>(var_2.b.b.x, 0u), var_3.yz, vec2<f32>(arg_1.x, -1431f), var_2.d.e), global3.a.x)).e), Struct_1(_wgslsmith_div_f32(_wgslsmith_div_f32(-126f, 433f), _wgslsmith_f_op_f32(-var_2.b.d.x)), ~vec2<u32>(var_3.x, _wgslsmith_dot_vec2_u32(var_2.b.c, var_3.xz)), vec2<u32>(global3.d.b.x, min(44868u, u_input.c | u_input.c)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1.x, global3.b.a) * var_1.xy)), select(~(~vec3<u32>(33399u, var_3.x, 55890u)), abs(vec3<u32>(var_3.x, 42554u, var_2.b.b.x)) ^ ~vec3<u32>(var_2.b.e.x, 16341u, var_3.x), _wgslsmith_f_op_f32(var_2.b.a + var_1.x) <= _wgslsmith_f_op_f32(1026f - var_1.x))), Struct_1(_wgslsmith_f_op_f32(select(475f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x - 601f) * global3.b.d.x), global0[_wgslsmith_index_u32(global3.c.c.x | ~var_2.c.b.x, 32u)])), _wgslsmith_sub_vec2_u32(var_3.yx, vec2<u32>(var_2.c.c.x, 56918u) << ((vec2<u32>(var_2.c.c.x, 1u) ^ vec2<u32>(u_input.c, global3.c.b.x)) % vec2<u32>(32u))), min(var_2.d.c, var_2.b.b), global3.d.d, vec3<u32>(34971u >> (_wgslsmith_div_u32(global3.c.b.x, 1u) % 32u), var_2.b.e.x, ~u_input.c | u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec4<u32>(abs(~(~global3.c.e.x)), u_input.c, u_input.c, 4294967295u);
    global3 = func_8(func_7(_wgslsmith_sub_u32((1u | u_input.c) ^ 12754u, 59524u), global3.b, Struct_2(vec3<bool>(!global3.a.x, select(global3.a.x, global3.a.x, global0[_wgslsmith_index_u32(50239u, 32u)]), 13063u >= global3.d.e.x), func_6(vec4<f32>(1279f, 1433f, 1210f, -1091f), vec3<i32>(u_input.a, 10474i, -1i), func_1(vec3<bool>(global0[_wgslsmith_index_u32(var_0.x, 32u)], false, global0[_wgslsmith_index_u32(21017u, 32u)]))), func_1(!vec3<bool>(global0[_wgslsmith_index_u32(0u, 32u)], true, false)).b, func_1(vec3<bool>(true, true, true)).b), Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d.d.x, -1162f, global3.d.d.x, global3.d.d.x)), Struct_1(_wgslsmith_f_op_f32(min(-1000f, global3.d.a)), _wgslsmith_mod_vec2_u32(vec2<u32>(var_0.x, u_input.c), vec2<u32>(var_0.x, 4294967295u)), vec2<u32>(4294967295u, global3.b.b.x), vec2<f32>(global3.b.d.x, 1658f), reverseBits(vec3<u32>(global3.b.c.x, u_input.c, u_input.c))), global3.a.x)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(func_1(vec3<bool>(true, global3.a.x, true)).a.x, global3.d.d.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(global3.c.d, global3.c.d, global3.a.xy)))) - global3.b.d))));
    global3 = Struct_2(global3.a, Struct_1(_wgslsmith_f_op_f32(-362f * _wgslsmith_div_f32(global3.d.d.x, _wgslsmith_f_op_f32(f32(-1f) * -456f))), global3.d.b, global3.d.b | firstLeadingBit(~vec2<u32>(var_0.x, 45268u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global3.c.d.x, global3.d.d.x))) + global3.d.d) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(1517f, -1042f), vec2<f32>(-161f, global3.b.d.x))))), vec3<u32>(33960u, global3.d.e.x, 18388u)), Struct_1(global3.c.d.x, ~(~_wgslsmith_sub_vec2_u32(global3.b.e.yz, global3.d.b)), ~vec2<u32>(1u, u_input.c) ^ vec2<u32>(min(88336u, global3.b.b.x), func_5(global3.a.x, 20418u, vec4<f32>(345f, 603f, -177f, -740f)).c), vec2<f32>(func_5(true, ~global3.b.b.x, vec4<f32>(global3.b.a, 746f, global3.d.a, 1300f)).b, _wgslsmith_f_op_f32(-global3.c.a)), ~vec3<u32>(global3.c.e.x, ~var_0.x, 29481u)), func_6(vec4<f32>(global3.c.d.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-577f, global3.b.a) - -565f), _wgslsmith_f_op_f32(step(-859f, _wgslsmith_f_op_f32(-global3.c.a))), global3.d.d.x), -_wgslsmith_sub_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-44911i, 2147483647i, u_input.a), vec3<i32>(-3167i, 2147483647i, u_input.a)), ~vec3<i32>(2147483647i, -1i, u_input.b.x)), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(func_6(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global3.c.d.x, -1000f, -907f, global3.c.a))), -vec3<i32>(2147483647i, u_input.b.x, 23185i), Struct_4(vec4<f32>(-263f, global3.c.a, 298f, global3.d.a), Struct_1(1645f, vec2<u32>(u_input.c, var_0.x), vec2<u32>(u_input.c, u_input.c), vec2<f32>(global3.b.a, 644f), global3.c.e), false)).e, ~firstLeadingBit(vec3<u32>(global3.d.e.x, global3.b.e.x, u_input.c))), 7u)]));
    var_0 = countOneBits(vec4<u32>(47948u, _wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global3.c.e, ~global3.d.e), u_input.c), 27515u, ~func_5(1142f < global3.b.a, ~var_0.x, vec4<f32>(-314f, global3.c.d.x, global3.d.a, global3.d.a)).c));
    var var_1 = global3.b;
    var var_2 = (vec4<u32>(~6441u, _wgslsmith_dot_vec4_u32(vec4<u32>(45164u, global3.d.b.x, 57003u, var_1.c.x), _wgslsmith_mod_vec4_u32(vec4<u32>(1u, global3.b.e.x, var_0.x, 4294967295u), vec4<u32>(54745u, u_input.c, 1u, u_input.c))), 0u, select(select(var_1.b.x, 4294967295u, global3.a.x), u_input.c, global3.b.b.x == global3.d.b.x)) ^ (~vec4<u32>(global3.c.b.x, var_0.x, 4294967295u, var_1.b.x) >> ((abs(vec4<u32>(var_0.x, 1u, 0u, 51250u)) >> (firstLeadingBit(vec4<u32>(0u, 4294967295u, global3.c.b.x, u_input.c)) % vec4<u32>(32u))) % vec4<u32>(32u)))) & ~firstTrailingBit(abs(min(vec4<u32>(var_1.c.x, var_0.x, var_0.x, 4294967295u), vec4<u32>(0u, 1u, 1u, 4294967295u))));
    var var_3 = _wgslsmith_dot_vec4_i32(-reverseBits(-vec4<i32>(u_input.b.x, -1i, u_input.a, -29778i)), reverseBits(~vec4<i32>(2147483647i >> (var_2.x % 32u), abs(u_input.b.x), -73157i, _wgslsmith_sub_i32(0i, 0i))));
    let var_4 = ~(~u_input.c);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(var_0.wx & _wgslsmith_add_vec2_u32(~vec2<u32>(u_input.c, global3.d.e.x), ~var_1.e.zx), vec2<u32>(~global3.d.e.x, 41685u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1000f, var_1.a, -1689f)) - _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -760f, -422f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.c.a, 2942f, -825f))))) * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_1.d.x, 1076f, var_1.d.x) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-643f, global3.d.a, -1269f), vec3<f32>(global3.d.d.x, -1268f, -1000f)))) - _wgslsmith_f_op_vec3_f32(func_5(false, 1u, vec4<f32>(-221f, var_1.d.x, -221f, -583f)).a - vec3<f32>(1000f, 859f, global3.c.a)))), var_1.b.x);
}

