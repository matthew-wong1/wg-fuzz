struct Struct_1 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
    d: vec3<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec3<i32>,
    c: Struct_1,
}

struct Struct_4 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: bool,
    e: u32,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 1> = array<vec3<f32>, 1>(vec3<f32>(1174f, 1089f, -178f));

var<private> global1: array<Struct_1, 23>;

var<private> global2: vec2<f32>;

var<private> global3: array<f32, 21>;

var<private> global4: Struct_4 = Struct_4(30171i, Struct_1(vec2<i32>(7815i, 38243i), vec2<u32>(4294967295u, 1u), vec3<u32>(4294967295u, 32250u, 27194u), vec3<bool>(true, true, false), vec4<i32>(32220i, 22063i, 1i, 16216i)), Struct_1(vec2<i32>(0i, -64766i), vec2<u32>(0u, 39858u), vec3<u32>(0u, 87767u, 1u), vec3<bool>(false, true, false), vec4<i32>(i32(-2147483648), 31224i, 1i, -38095i)), false, 4294967295u);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_1() -> Struct_5 {
    global2 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(829f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(990f + global3[_wgslsmith_index_u32(global4.c.c.x, 21u)]) - _wgslsmith_f_op_f32(-246f + global3[_wgslsmith_index_u32(global4.c.b.x, 21u)])))), _wgslsmith_f_op_f32(trunc(global2.x))), vec2<f32>(global2.x, global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(min(1u, global4.e), 12245u, _wgslsmith_add_u32(global4.b.c.x, 17136u)), vec3<u32>(0u, u_input.b, firstTrailingBit(4294967295u))), 21u)]));
    let var_0 = global4.b.e.yy;
    let var_1 = ~(-countOneBits(global4.b.e.xwz) >> (~global4.b.c % vec3<u32>(32u)));
    global0 = array<vec3<f32>, 1>();
    var var_2 = u_input.c & var_0.x;
    return Struct_5(6129i);
}

fn func_3(arg_0: vec2<f32>) -> f32 {
    let var_0 = ~global4.b.e.yzy;
    let var_1 = global4.b.c.yy;
    global3 = array<f32, 21>();
    let var_2 = global1[_wgslsmith_index_u32(4294967295u >> (firstLeadingBit(~select(~40158u, 1u, true)) % 32u), 23u)];
    var var_3 = select(select(global4.b.d, !vec3<bool>(true, var_2.d.x || var_2.d.x, true), false), !select(select(select(var_2.d, global4.b.d, vec3<bool>(true, true, var_2.d.x)), select(global4.b.d, var_2.d, false), false), !vec3<bool>(var_2.d.x, var_2.d.x, true), -2552i <= var_2.a.x), global4.c.d);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * -693f);
}

fn func_2(arg_0: Struct_5) -> Struct_3 {
    var var_0 = global4.b;
    var var_1 = -25282i;
    let var_2 = _wgslsmith_mod_i32(~2147483647i, 26244i);
    global3 = array<f32, 21>();
    var var_3 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2415f, -1114f) - _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, global2.x), vec2<f32>(global2.x, -532f)))))), _wgslsmith_f_op_f32(-global2.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-226f, global3[_wgslsmith_index_u32(60510u, 21u)]), _wgslsmith_f_op_vec2_f32(-vec2<f32>(783f, 164f)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.x, global3[_wgslsmith_index_u32(var_0.b.x, 21u)])) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-425f, -1157f) + vec2<f32>(global2.x, -1200f))), true))), select(select(select(vec2<bool>(true, true), global4.b.d.zy, select(global4.c.d.xy, var_0.d.xz, var_0.d.x)), vec2<bool>(all(global4.c.d.zy), !var_0.d.x), false), select(vec2<bool>(!var_0.d.x, var_0.d.x), var_0.d.zx, var_0.d.x), all(vec2<bool>(true, false)))));
    return Struct_3(min(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(var_0.e.yx ^ vec2<i32>(u_input.c, 6677i), vec2<i32>(global4.c.a.x, u_input.c)), vec2<i32>(-1i) * -vec2<i32>(arg_0.a, 2147483647i)), vec2<i32>(-(global4.c.a.x | 0i), countOneBits(-5680i << (1u % 32u)))), global4.b.e.zzw, Struct_1((min(var_0.a, global4.c.e.wy) >> (abs(vec2<u32>(u_input.b, 34724u)) % vec2<u32>(32u))) >> (vec2<u32>(0u, 1u) % vec2<u32>(32u)), vec2<u32>(firstTrailingBit(var_0.b.x), 23941u), ~vec3<u32>(1u, 0u, 29366u) << (~select(vec3<u32>(26392u, 0u, global4.e), vec3<u32>(0u, 29409u, 4294967295u), true) % vec3<u32>(32u)), select(select(select(var_0.d, vec3<bool>(global4.c.d.x, false, false), var_0.d), vec3<bool>(false, false, true), var_0.d), global4.c.d, _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_0.e.x), global4.c.a) != _wgslsmith_clamp_i32(var_2, 35765i, global4.c.e.x)), reverseBits(global4.b.e)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(select(!(!select(vec3<bool>(false, false, true), vec3<bool>(global4.c.d.x, true, global4.b.d.x), false)), vec3<bool>(any(global4.c.d), (8195i & global4.b.e.x) == _wgslsmith_div_i32(1i, u_input.a), select(false, global4.d, false)), global4.b.d));
    var var_1 = !select(!vec4<bool>(false, !global4.b.d.x, true, global2.x > global3[_wgslsmith_index_u32(57112u, 21u)]), vec4<bool>(all(select(vec4<bool>(global4.d, global4.b.d.x, true, global4.b.d.x), vec4<bool>(true, false, false, true), false)), true, true, true), countOneBits(global4.c.e.x) != 6248i);
    global1 = array<Struct_1, 23>();
    let var_2 = func_2(func_1());
    var var_3 = vec4<i32>(-1i, _wgslsmith_sub_i32(abs(_wgslsmith_add_i32(22771i, var_2.b.x)), -_wgslsmith_sub_i32(1i, var_2.b.x)), ~max(-41372i, -u_input.a), ~global4.c.e.x) & abs(vec4<i32>(-2147483647i, -2147483647i, global4.b.a.x, ~2147483647i));
    var_1 = select(select(!select(!vec4<bool>(false, false, var_1.x, true), vec4<bool>(false, var_2.c.d.x, var_2.c.d.x, true), true), vec4<bool>(true, func_2(func_1()).c.d.x, true, all(!global4.b.d.zx)), false), !(!vec4<bool>(!var_1.x, true, true, all(vec4<bool>(true, var_2.c.d.x, true, false)))), var_2.c.d.x);
    let x = u_input.a;
    s_output = StorageBuffer(-1i, global2.x, var_2.c.b.x, -11988i, global0[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, ~4294967295u, firstTrailingBit(~(1965u >> (var_2.c.b.x % 32u)))), 1u)]);
}

