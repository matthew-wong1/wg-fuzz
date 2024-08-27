struct Struct_1 {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
    e: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<u32>,
    c: f32,
}

struct Struct_3 {
    a: u32,
    b: i32,
    c: u32,
    d: vec3<i32>,
    e: vec4<i32>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: f32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec4<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 5> = array<bool, 5>(false, true, false, true, true);

var<private> global1: Struct_4;

var<private> global2: array<i32, 23>;

var<private> global3: i32 = 2147483647i;

var<private> global4: vec4<u32> = vec4<u32>(1u, 59733u, 4294967295u, 0u);

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32) -> f32 {
    global2 = array<i32, 23>();
    global1 = Struct_4(global1.a);
    let var_0 = Struct_4(-18484i);
    global3 = _wgslsmith_add_i32(16308i >> (abs(~_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 920u, u_input.a), vec3<u32>(0u, u_input.b.x, u_input.b.x))) % 32u), _wgslsmith_clamp_i32(_wgslsmith_add_i32(~(~global2[_wgslsmith_index_u32(46210u, 23u)]), -global1.a), var_0.a, global2[_wgslsmith_index_u32(u_input.c.x >> (~_wgslsmith_mod_u32(0u, 1u) % 32u), 23u)]));
    global3 = global1.a;
    return 563f;
}

fn func_2() -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1072f), -259f), vec2<f32>(426f, _wgslsmith_f_op_f32(-924f * -2425f))))), ~global4.yz, _wgslsmith_f_op_f32(1f + -966f), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(4294967295u ^ u_input.c.x)))), vec3<i32>(-14911i, -10114i, global2[_wgslsmith_index_u32(max(~_wgslsmith_div_u32(1u, u_input.c.x), _wgslsmith_add_u32(u_input.b.x, global4.x) >> (u_input.b.x % 32u)), 23u)]));
    global3 = 1i;
    var var_1 = u_input.b.x;
    var var_2 = _wgslsmith_f_op_f32(ceil(var_0.d.x)) >= var_0.d.x;
    let var_3 = true;
    return Struct_3(~var_0.b.x | ~select(u_input.b.x, _wgslsmith_dot_vec2_u32(var_0.b, global4.zz), true), ~(-1i), 30423u, vec3<i32>(~global1.a, abs(1i), global2[_wgslsmith_index_u32(var_0.b.x, 23u)]), _wgslsmith_div_vec4_i32(vec4<i32>(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, 25587i, var_0.e.x, global1.a), vec4<i32>(-26535i, 2147483647i, global2[_wgslsmith_index_u32(4294967295u, 23u)], 40424i))), global1.a, var_0.e.x, _wgslsmith_clamp_i32(max(global1.a, -2147483647i), countOneBits(20422i), -62218i)), vec4<i32>(2147483647i, _wgslsmith_sub_i32(global1.a, _wgslsmith_sub_i32(2147483647i, 2147483647i)), -1i, var_0.e.x)));
}

fn func_1() -> Struct_3 {
    let var_0 = u_input.c.wyz;
    var var_1 = (~(~_wgslsmith_sub_vec4_u32(vec4<u32>(4294967295u, global4.x, 4294967295u, global4.x), u_input.c)) << (countOneBits(vec4<u32>(_wgslsmith_clamp_u32(26680u, 1u, global4.x), abs(var_0.x), max(u_input.b.x, 4294967295u), 232u >> (0u % 32u))) % vec4<u32>(32u))) >> (~u_input.c % vec4<u32>(32u));
    var var_2 = 0u;
    global3 = _wgslsmith_sub_i32(global2[_wgslsmith_index_u32(30936u, 23u)], countOneBits(~0i) & _wgslsmith_mod_i32(firstLeadingBit(global1.a), _wgslsmith_div_i32(~global1.a, ~3845i)));
    global4 = vec4<u32>(100981u, _wgslsmith_sub_u32(58076u, ~_wgslsmith_div_u32(~var_0.x, ~42730u)), _wgslsmith_dot_vec3_u32(abs(_wgslsmith_mod_vec3_u32(abs(var_0), vec3<u32>(var_0.x, global4.x, var_1.x))), firstLeadingBit(~(~vec3<u32>(global4.x, 24590u, global4.x)))), ~firstLeadingBit(~u_input.c.x));
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(1000f)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(490f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-361f, -700f)), 880f))), _wgslsmith_div_f32(230f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(976f)) - _wgslsmith_f_op_f32(floor(1306f))))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-300f, _wgslsmith_f_op_f32(f32(-1f) * -1439f), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(func_3(global4.x)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2812f + -2927f))))));
    var var_2 = ~select(~u_input.c, abs(min(~vec4<u32>(13577u, 0u, 0u, u_input.a), u_input.c)), any(select(select(vec4<bool>(true, false, true, true), vec4<bool>(global0[_wgslsmith_index_u32(53261u, 5u)], false, true, global0[_wgslsmith_index_u32(65762u, 5u)]), vec4<bool>(global0[_wgslsmith_index_u32(4294967295u, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)], global0[_wgslsmith_index_u32(13546u, 5u)], global0[_wgslsmith_index_u32(1u, 5u)])), vec4<bool>(false, true, global0[_wgslsmith_index_u32(0u, 5u)], global0[_wgslsmith_index_u32(0u, 5u)]), false)));
    var var_3 = _wgslsmith_add_i32(global1.a, ~(-(~25768i)));
    global1 = Struct_4(var_0.e.x);
    var var_4 = Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(var_1.zy - var_1.xz), _wgslsmith_f_op_vec2_f32(max(var_1.xy, var_1.ww)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(2194f - var_1.x))), _wgslsmith_sub_vec2_u32(global4.yx, ~vec2<u32>(1u, 34078u) ^ _wgslsmith_div_vec2_u32(global4.xw, global4.zx)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(f32(-1f) * -1314f), any(vec3<bool>(global0[_wgslsmith_index_u32(u_input.a, 5u)], global0[_wgslsmith_index_u32(var_2.x, 5u)], global0[_wgslsmith_index_u32(u_input.b.x, 5u)])))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(-var_1.x)) * vec2<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(global1.a, var_0.d.x, 10499i), abs(19880i)), firstTrailingBit(-4567i), var_0.d.x)), ~vec4<u32>(~func_1().c, ~u_input.b.x ^ _wgslsmith_clamp_u32(0u, var_2.x, 0u), 4294967295u, ~var_2.x << (var_2.x % 32u)), -1411f);
    global1 = Struct_4(_wgslsmith_mult_i32(var_0.e.x, 12567i));
    let x = u_input.a;
    s_output = StorageBuffer(34098u, var_1.x, _wgslsmith_clamp_vec4_i32(var_0.e, vec4<i32>(~(-2147483647i), i32(-1i) * -1i, ~var_0.d.x, -1i), vec4<i32>(var_4.a.e.x, ~1i, _wgslsmith_clamp_i32(var_4.a.e.x, var_4.a.e.x, global1.a), _wgslsmith_div_i32(-1i, 2147483647i))) >> (u_input.c % vec4<u32>(32u)), -(max(select(0i, -2147483647i, true), global2[_wgslsmith_index_u32(var_0.c, 23u)] >> (var_2.x % 32u)) << (_wgslsmith_dot_vec3_u32(vec3<u32>(47684u, 39406u, 43261u), u_input.b) % 32u)));
}

