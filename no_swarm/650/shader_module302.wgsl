struct Struct_1 {
    a: i32,
    b: i32,
    c: i32,
    d: vec4<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
    c: Struct_2,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: vec2<i32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 20> = array<vec2<i32>, 20>(vec2<i32>(15393i, 52059i), vec2<i32>(0i, 0i), vec2<i32>(-9576i, 1i), vec2<i32>(-11711i, i32(-2147483648)), vec2<i32>(-23246i, i32(-2147483648)), vec2<i32>(-83183i, i32(-2147483648)), vec2<i32>(-1i, 2147483647i), vec2<i32>(1i, 49182i), vec2<i32>(16066i, -14803i), vec2<i32>(0i, -27975i), vec2<i32>(-1i, 8801i), vec2<i32>(2147483647i, i32(-2147483648)), vec2<i32>(-15140i, 1i), vec2<i32>(i32(-2147483648), -5578i), vec2<i32>(7485i, 1i), vec2<i32>(27396i, -1i), vec2<i32>(1i, 33509i), vec2<i32>(i32(-2147483648), 0i), vec2<i32>(2147483647i, 23995i), vec2<i32>(-27236i, -42141i));

var<private> global1: array<Struct_3, 9>;

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: Struct_3, arg_1: bool) -> vec2<i32> {
    global1 = array<Struct_3, 9>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-141f)) * _wgslsmith_f_op_f32(sign(2499f))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(100f - -429f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -490f)))), select(!vec2<bool>(arg_0.b.d.x, arg_1), select(select(arg_0.b.d.ww, arg_0.b.d.xx, true), vec2<bool>(true, arg_1), !arg_0.b.d.wx), !vec2<bool>(arg_1, false)))));
    let var_1 = global0[_wgslsmith_index_u32(countOneBits(u_input.c.x), 20u)];
    var_0 = vec2<f32>(2403f, var_0.x);
    let var_2 = Struct_1(~(~var_1.x), min(16003i ^ arg_0.c.b, abs(i32(-1i) * -1i)), -(~arg_0.c.b << (arg_0.a % 32u)), select(select(!arg_0.b.d, vec4<bool>(false, true, arg_0.b.d.x && false, true), arg_0.b.d), !(!select(arg_0.b.d, vec4<bool>(true, false, true, true), arg_1)), true), max(vec2<u32>(u_input.a, 7831u), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(u_input.a, 0u), arg_0.b.e))));
    return global0[_wgslsmith_index_u32(1u, 20u)];
}

fn func_2(arg_0: bool, arg_1: vec3<u32>) -> vec4<bool> {
    global0 = array<vec2<i32>, 20>();
    global1 = array<Struct_3, 9>();
    let var_0 = firstLeadingBit(func_3(global1[_wgslsmith_index_u32(~1u, 9u)], arg_0));
    global0 = array<vec2<i32>, 20>();
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(-1153f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(-1016f)))) + _wgslsmith_div_f32(-396f, -182f)), 257f) * _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -397f) + -1000f), _wgslsmith_f_op_f32(-341f + _wgslsmith_f_op_f32(297f + -1179f)), _wgslsmith_f_op_f32(abs(-1298f))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1212f, -191f)) * -672f), 1010f, 2150f), any(!(!vec2<bool>(arg_0, false))))));
    return vec4<bool>(arg_0, all(select(!(!vec4<bool>(false, arg_0, true, false)), vec4<bool>(var_0.x <= var_0.x, all(vec2<bool>(false, arg_0)), true, u_input.c.x != u_input.c.x), true)), !(!(-704f != var_1.x)) | any(!vec2<bool>(arg_0, arg_0)), arg_0);
}

fn func_1(arg_0: bool) -> Struct_1 {
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    global0 = array<vec2<i32>, 20>();
    var var_0 = Struct_1(_wgslsmith_clamp_i32(-_wgslsmith_mult_i32(u_input.b.x << (u_input.c.x % 32u), _wgslsmith_sub_i32(-2147483647i, u_input.b.x)), -14240i, -1i), firstLeadingBit(-(1i >> (1u % 32u))), -1i, select(vec4<bool>(all(vec4<bool>(true, false, false, true)), arg_0, !arg_0, all(select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, false), vec2<bool>(arg_0, arg_0)))), func_2(all(vec2<bool>(true, true)), vec3<u32>(_wgslsmith_mod_u32(u_input.c.x, u_input.a), ~u_input.c.x, 39182u)), !vec4<bool>(all(vec3<bool>(arg_0, false, arg_0)), any(vec4<bool>(arg_0, arg_0, true, true)), true, true)), vec2<u32>(4294967295u, u_input.c.x));
    global1 = array<Struct_3, 9>();
    return Struct_1(_wgslsmith_dot_vec3_i32(firstTrailingBit(_wgslsmith_div_vec3_i32(vec3<i32>(0i, var_0.a, u_input.b.x), vec3<i32>(-1i, 2147483647i, var_0.a)) & min(vec3<i32>(u_input.b.x, -2147483647i, var_0.c), vec3<i32>(u_input.b.x, 17027i, 2147483647i))), ~(-_wgslsmith_div_vec3_i32(vec3<i32>(var_0.a, 20531i, -64045i), vec3<i32>(u_input.b.x, 0i, 0i)))), 1i, 2147483647i, select(!select(vec4<bool>(false, var_0.d.x, true, var_0.d.x), func_2(var_0.d.x, vec3<u32>(var_0.e.x, var_0.e.x, var_0.e.x)), true), var_0.d, true), ~var_0.e);
}

fn func_4(arg_0: Struct_1, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_1) -> vec3<i32> {
    global0 = array<vec2<i32>, 20>();
    global1 = array<Struct_3, 9>();
    global1 = array<Struct_3, 9>();
    global0 = array<vec2<i32>, 20>();
    var var_0 = Struct_2(u_input.a, (i32(-1i) * -max(-38916i, 14892i)) >> (arg_3.e.x % 32u));
    return vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.b.x, ~0i, 0i), vec3<i32>(-10381i, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(arg_2.x, 11528i, arg_3.b, var_0.b)), abs(vec4<i32>(0i, 0i, 8678i, -9631i))), 45029i)), -1i, arg_0.c);
}

fn func_5(arg_0: Struct_3, arg_1: vec3<i32>) -> Struct_1 {
    return arg_0.b;
}

fn func_6(arg_0: Struct_1) -> u32 {
    var var_0 = vec3<bool>(true, all(vec2<bool>(true, ~15568u < ~arg_0.e.x)), any(arg_0.d));
    var var_1 = !select(arg_0.d, vec4<bool>(all(var_0.zy), any(arg_0.d.xy) && true, !var_0.x, true || all(vec4<bool>(false, var_0.x, arg_0.d.x, false))), false);
    var var_2 = abs(-2147483647i);
    let var_3 = Struct_2(~4294967295u, (func_3(global1[_wgslsmith_index_u32(arg_0.e.x, 9u)], true).x >> (18550u % 32u)) & arg_0.b);
    var_2 = -1i;
    return u_input.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_6(func_5(global1[_wgslsmith_index_u32(abs(16073u), 9u)], func_4(Struct_1(32349i, -1i, u_input.b.x, vec4<bool>(true, true, false, false), u_input.c), u_input.c.x >= 1u, vec2<i32>(2147483647i, u_input.b.x), func_1(false)))), -u_input.b.x & -(~32054i << (u_input.c.x % 32u)));
    var var_1 = global1[_wgslsmith_index_u32(var_0.a, 9u)];
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-367f)));
    let var_3 = ~(~(~countOneBits(_wgslsmith_mult_vec3_u32(vec3<u32>(0u, var_0.a, 4294967295u), vec3<u32>(4294967295u, 0u, var_0.a)))));
    let var_4 = !select(!vec2<bool>(var_1.b.d.x, !var_1.b.d.x), !(!(!vec2<bool>(var_1.b.d.x, true))), true | var_1.b.d.x);
    var var_5 = !(!var_1.b.d);
    let var_6 = func_1(all(vec3<bool>(var_4.x, var_4.x, var_5.x))).d.xzx;
    let x = u_input.a;
    s_output = StorageBuffer(-_wgslsmith_clamp_i32(-29233i, func_1(true).a, func_5(Struct_3(var_1.a, var_1.b, Struct_2(var_1.a, 17487i)), vec3<i32>(var_1.b.b, -1i, var_1.c.b)).b) & -(~(~0i)), vec3<u32>(u_input.c.x, _wgslsmith_mult_u32(~abs(u_input.a), _wgslsmith_div_u32(_wgslsmith_add_u32(0u, 6105u), ~var_3.x)), 1u), 99663u, min(vec2<i32>(-1i, func_4(var_1.b, var_4.x, vec2<i32>(-2147483647i, var_1.c.b), Struct_1(-2147483647i, 3638i, var_0.b, vec4<bool>(var_6.x, var_1.b.d.x, false, var_5.x), var_3.xz)).x) & (max(vec2<i32>(var_0.b, 2147483647i), u_input.b) & select(vec2<i32>(5478i, -2147483647i), global0[_wgslsmith_index_u32(4294967295u, 20u)], var_5.yw)), u_input.b), _wgslsmith_mult_vec3_i32(-(~max(vec3<i32>(-62389i, u_input.b.x, u_input.b.x), vec3<i32>(-2147483647i, 2147483647i, var_0.b))), vec3<i32>(var_1.b.a, var_0.b, ~(13468i | var_1.b.c))));
}

