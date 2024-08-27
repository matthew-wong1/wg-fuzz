struct Struct_1 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: i32,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
    d: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: bool;

var<private> global2: bool = true;

var<private> global3: array<Struct_2, 5>;

var<private> global4: bool;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_1(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: bool) -> vec3<i32> {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_0.d.x + global0.x), -481f)))) + global0.x);
    global2 = false | (arg_0.c.a.x | true);
    global3 = array<Struct_2, 5>();
    let var_1 = ~4294967295u;
    var var_2 = select(arg_0.a.a, !arg_0.a.a, vec4<bool>(true, (var_1 == ~1608u) && select(select(false, arg_3, arg_3), all(arg_1), true), false, arg_2.b.x));
    return vec3<i32>(arg_0.a.c, _wgslsmith_mult_i32(arg_2.c, 5355i), _wgslsmith_add_i32(max(2147483647i, ~arg_0.a.c), arg_0.a.c));
}

fn func_3(arg_0: Struct_2) -> i32 {
    let var_0 = arg_0.a.b.xyw;
    global1 = !(_wgslsmith_add_i32(arg_0.c.c, ~(arg_0.a.e << (0u % 32u))) == ~(_wgslsmith_div_i32(-21250i, u_input.a) | arg_0.c.c));
    var var_1 = vec2<u32>(26004u, max(arg_0.a.d, 74665u));
    var var_2 = arg_0.a;
    let var_3 = arg_0;
    return -32270i;
}

fn func_4(arg_0: vec3<i32>, arg_1: vec3<i32>, arg_2: vec4<bool>) -> u32 {
    global2 = true;
    var var_0 = -_wgslsmith_clamp_i32(arg_1.x, abs(-2147483647i), arg_1.x);
    var var_1 = u_input.a;
    let var_2 = global3[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(abs(~(~(~vec2<u32>(1u, 24255u)))), vec2<u32>(~40542u, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(62794u, 4294967295u, 4294967295u), vec3<u32>(0u, 1u, 7487u)), max(91621u, 37331u)), 48363u))), 5u)];
    var var_3 = max(_wgslsmith_mult_vec3_i32(~vec3<i32>(9250i, arg_1.x, ~17394i), vec3<i32>(_wgslsmith_div_i32(-12570i, 2147483647i) | u_input.a, _wgslsmith_dot_vec2_i32(func_1(global3[_wgslsmith_index_u32(29890u, 5u)], var_2.a.b.xy, var_2.a, arg_2.x).xz, countOneBits(vec2<i32>(39955i, 10267i))), ~(~u_input.a))), (_wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(35124i, 64811i, -33200i), arg_1), -vec3<i32>(arg_1.x, arg_0.x, -1i)) >> (_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2.c.d, 1u, var_2.c.d), _wgslsmith_mod_vec3_u32(vec3<u32>(var_2.a.d, var_2.a.d, 1u), vec3<u32>(var_2.b, var_2.a.d, var_2.b))) % vec3<u32>(32u))) & arg_1);
    return firstLeadingBit(_wgslsmith_add_u32(_wgslsmith_mod_u32(countOneBits(var_2.b), _wgslsmith_clamp_u32(abs(53007u), ~20135u, 23011u)), _wgslsmith_dot_vec4_u32(min(vec4<u32>(var_2.c.d, var_2.a.d, var_2.b, var_2.b), vec4<u32>(var_2.b, var_2.a.d, var_2.b, var_2.a.d) >> (vec4<u32>(10488u, var_2.a.d, var_2.a.d, 1u) % vec4<u32>(32u))), vec4<u32>(33210u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_2.a.d, 4294967295u), vec3<u32>(var_2.c.d, var_2.c.d, var_2.b)), reverseBits(var_2.c.d), ~5486u))));
}

fn func_2() -> Struct_2 {
    var var_0 = -2147483647i;
    var var_1 = global3[_wgslsmith_index_u32((1u >> (~firstTrailingBit(1u) % 32u)) >> (~0u % 32u), 5u)];
    global0 = _wgslsmith_f_op_vec3_f32(var_1.d.xzy - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(var_1.d.x, global0.x, -971f), vec3<f32>(1240f, -110f, global0.x)) - _wgslsmith_f_op_vec3_f32(exp2(var_1.d.wzw))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, -480f, -887f))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.d.x, var_1.d.x, global0.x)) * _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(1000f, -478f, 1788f)))) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-2356f, -1914f, 1374f)))));
    var var_2 = func_4(vec3<i32>(-u_input.a, -2147483647i, func_3(Struct_2(Struct_1(vec4<bool>(var_1.a.b.x, false, var_1.a.a.x, false), var_1.a.a, 5215i, var_1.a.d, 24087i), ~21371u, var_1.a, _wgslsmith_f_op_vec4_f32(var_1.d - vec4<f32>(-314f, -347f, var_1.d.x, -1043f))))), firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(-1i, -2147483647i, u_input.a), vec3<i32>(30368i, u_input.a, var_1.a.e)), vec3<i32>(1i, var_1.c.c, u_input.a)) | vec3<i32>(-2147483647i, var_1.c.c, _wgslsmith_dot_vec2_i32(vec2<i32>(-10336i, -12864i), vec2<i32>(var_1.c.c, var_1.c.e)))), var_1.a.a);
    let var_3 = _wgslsmith_mod_u32(_wgslsmith_mod_u32(var_1.c.d, (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.b, 7318u, 0u, 0u), vec4<u32>(var_1.b, var_1.a.d, var_1.b, 2985u)) & ~var_1.c.d) ^ _wgslsmith_dot_vec3_u32(min(vec3<u32>(var_1.c.d, 0u, 0u), vec3<u32>(var_1.c.d, var_1.b, var_1.c.d)), firstTrailingBit(vec3<u32>(0u, 19179u, var_1.a.d)))), _wgslsmith_mod_u32(40362u, 43758u));
    return Struct_2(var_1.a, 102275u, var_1.c, var_1.d);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -min(_wgslsmith_mod_vec3_i32(vec3<i32>(_wgslsmith_clamp_i32(u_input.a, u_input.a, u_input.a), _wgslsmith_sub_i32(u_input.a, u_input.a), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a, 10443i), vec2<i32>(-1i, -52379i))), -(vec3<i32>(1i, u_input.a, u_input.a) & vec3<i32>(-36462i, -1i, u_input.a))), _wgslsmith_mod_vec3_i32(func_1(Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), u_input.a, 1u, u_input.a), 86915u, Struct_1(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, true), 0i, 1u, u_input.a), vec4<f32>(1213f, -175f, 1195f, global0.x)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), Struct_1(vec4<bool>(false, true, true, true), vec4<bool>(true, true, false, false), 38826i, 4294967295u, u_input.a), false), countOneBits(abs(vec3<i32>(16404i, -45904i, 16369i)))));
    var var_1 = vec4<i32>(37476i, 3160i, -_wgslsmith_sub_i32(_wgslsmith_mult_i32(select(-12015i, 0i, false), i32(-1i) * -18586i), countOneBits(u_input.a)), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(0i, var_0.x, u_input.a, -1i), vec4<i32>(-1i, 42748i, 2147483647i, var_0.x)), func_1(Struct_2(Struct_1(vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), -35040i, 31122u, 0i), 2109u, Struct_1(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, false), 0i, 0u, u_input.a), vec4<f32>(global0.x, -1043f, -1234f, -275f)), vec2<bool>(true, true), Struct_1(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), 2147483647i, 21930u, -23552i), true).x) >> ((~0u >> (1u % 32u)) % 32u));
    var var_2 = func_2();
    var_1 = ~_wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(~(~vec4<i32>(var_2.a.c, 14977i, u_input.a, 2147483647i)), abs(~vec4<i32>(var_1.x, -1i, u_input.a, 31779i))), ~(vec4<i32>(-1i) * -vec4<i32>(32025i, 20635i, var_1.x, 7220i)));
    global4 = true;
    let var_3 = ~var_2.a.d;
    var var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1200f, -1000f, global0.x)) * _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.x, 2338f, 333f)))), vec3<f32>(_wgslsmith_f_op_f32(ceil(var_2.d.x)), var_2.d.x, _wgslsmith_f_op_f32(-695f - 424f)), var_2.a.b.ywy))));
    var var_5 = ~(~abs(_wgslsmith_clamp_vec2_u32(~vec2<u32>(var_3, 14613u), vec2<u32>(var_3, 0u) >> (vec2<u32>(var_3, 0u) % vec2<u32>(32u)), select(vec2<u32>(var_2.c.d, var_2.c.d), vec2<u32>(var_3, 4294967295u), vec2<bool>(false, var_2.a.a.x)))));
    var_4 = var_2.d.yxw;
    let x = u_input.a;
    s_output = StorageBuffer(countOneBits(firstTrailingBit(select(-vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x), vec4<i32>(u_input.a, 0i, u_input.a, 0i), false))), vec2<i32>(~u_input.a, min(~var_0.x ^ (var_1.x << (var_5.x % 32u)), min(-1i, 0i))), _wgslsmith_div_vec4_f32(var_2.d, _wgslsmith_f_op_vec4_f32(floor(var_2.d))));
}

