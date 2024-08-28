struct Struct_1 {
    a: vec4<f32>,
    b: vec2<f32>,
    c: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: i32,
    d: vec2<bool>,
    e: vec4<bool>,
}

struct Struct_3 {
    a: vec3<u32>,
}

struct Struct_4 {
    a: bool,
    b: vec4<u32>,
    c: f32,
}

struct Struct_5 {
    a: f32,
    b: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<i32>,
    c: vec2<u32>,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 8> = array<i32, 8>(i32(-2147483648), -62585i, 39534i, -30763i, 2147483647i, -19024i, 2147483647i, 1i);

var<private> global1: f32 = 233f;

var<private> global2: u32;

var<private> global3: Struct_1 = Struct_1(vec4<f32>(1712f, 761f, -1589f, -2079f), vec2<f32>(770f, -984f), vec4<f32>(-266f, -850f, -1026f, -104f));

var<private> global4: Struct_1 = Struct_1(vec4<f32>(-152f, -1000f, 1344f, 872f), vec2<f32>(638f, -1000f), vec4<f32>(-2102f, 291f, -1620f, 2501f));

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2() -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(_wgslsmith_sub_u32(min(~u_input.c.x >> (1u % 32u), 1u), 27324u), 8u)];
    var var_1 = Struct_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global3.a.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) - 1509f))) - -1680f), !all(vec3<bool>(true, u_input.d.x <= 61651u, all(vec2<bool>(false, true)))));
    var_1 = Struct_5(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1231f - var_1.a), _wgslsmith_div_f32(-2487f, var_1.a))))))), false);
    let var_2 = _wgslsmith_sub_i32(_wgslsmith_add_i32(-(-13047i & global0[_wgslsmith_index_u32(0u, 8u)]), 36977i) >> (_wgslsmith_add_u32(0u, 48385u) % 32u), u_input.a.x);
    var var_3 = Struct_3(vec3<u32>(7435u, 1u, ~(~_wgslsmith_div_u32(33561u, 9834u))));
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(select(-177f, var_1.a, var_1.b))));
}

fn func_3(arg_0: bool, arg_1: bool, arg_2: i32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec4_f32(vec4<f32>(-1081f, _wgslsmith_f_op_f32(select(global3.c.x, global3.b.x, false)), _wgslsmith_f_op_f32(func_2()), 1000f), global3.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(select(global3.b.x, global3.b.x, false)), _wgslsmith_f_op_f32(trunc(global4.b.x)))), vec4<f32>(global4.a.x, _wgslsmith_f_op_f32(1000f + _wgslsmith_f_op_f32(floor(554f))), 1223f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(global4.c.x, 1411f, arg_1)), -1115f)))), all(vec2<bool>(arg_1, global4.a.x >= _wgslsmith_f_op_f32(select(1000f, global3.b.x, arg_0)))), _wgslsmith_clamp_i32(global0[_wgslsmith_index_u32(0u, 8u)], arg_2, arg_2), select(select(vec2<bool>(arg_0, u_input.e.x <= u_input.e.x), vec2<bool>(true | arg_1, false), true), !(!(!vec2<bool>(false, arg_1))), true), select(vec4<bool>(false, any(vec2<bool>(true, true)), !(arg_1 && arg_0), arg_1), vec4<bool>(true & arg_1, !arg_0, true, !any(vec3<bool>(false, true, true))), select(!(arg_1 & true), all(select(vec2<bool>(arg_1, arg_1), vec2<bool>(arg_1, arg_0), arg_0)), arg_1)));
    let var_1 = u_input.e.x >= u_input.e.x;
    var var_2 = -1022f;
    var var_3 = Struct_3(vec3<u32>(1u, 0u, _wgslsmith_mod_u32(~1u, u_input.c.x)));
    let var_4 = Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(global3.a.x + 174f), _wgslsmith_f_op_f32(select(global3.b.x, 1385f, arg_0)), -617f, global4.a.x))), var_0.a.a.zz, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4.b.x), _wgslsmith_f_op_f32(exp2(global4.a.x)), _wgslsmith_f_op_f32(select(-1147f, var_0.a.a.x, var_0.d.x)), -206f))), !(max(global0[_wgslsmith_index_u32(1u, 8u)], -22419i) == _wgslsmith_div_i32(firstTrailingBit(var_0.c), -global0[_wgslsmith_index_u32(1280u, 8u)])), arg_2, select(select(!(!vec2<bool>(arg_1, true)), var_0.e.zw, var_0.e.zx), var_0.e.ww, select(var_0.d, select(select(vec2<bool>(false, false), vec2<bool>(true, false), arg_1), vec2<bool>(true, false), !var_0.d.x), var_0.e.yz)), !select(var_0.e, var_0.e, !(!arg_1)));
    return var_4.a;
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> Struct_5 {
    var var_0 = firstTrailingBit(~(vec4<i32>(u_input.b.x, -1i, u_input.a.x, 2147483647i) << (~vec4<u32>(u_input.d.x, u_input.e.x, 24922u, 4294967295u) % vec4<u32>(32u))) >> (min(select(vec4<u32>(4294967295u, arg_0, arg_0, u_input.d.x), vec4<u32>(u_input.e.x, 1u, 1384u, u_input.d.x), vec4<bool>(false, false, true, false)) & vec4<u32>(u_input.c.x, 4294967295u, u_input.e.x, 91143u), _wgslsmith_sub_vec4_u32(~vec4<u32>(arg_0, 1u, arg_0, arg_0), vec4<u32>(1734u, arg_0, arg_0, 14422u))) % vec4<u32>(32u)));
    var var_1 = Struct_3(vec3<u32>(8249u, _wgslsmith_dot_vec3_u32(u_input.e, _wgslsmith_div_vec3_u32(~u_input.e, u_input.e)), _wgslsmith_clamp_u32(abs(_wgslsmith_add_u32(u_input.e.x, 6528u)), _wgslsmith_mod_u32(u_input.c.x, 1u) >> (0u % 32u), 1u)));
    global1 = 793f;
    global0 = array<i32, 8>();
    var var_2 = !vec2<bool>(select(true, true, select(true, arg_0 < arg_0, true)), any(select(vec2<bool>(false, false), vec2<bool>(true, true), 940f >= global4.c.x)));
    return Struct_5(-1601f, !(!(!var_2.x && true)));
}

fn func_1(arg_0: i32) -> vec4<f32> {
    var var_0 = all(!vec2<bool>(true, (global4.a.x != global3.b.x) | true));
    var var_1 = 43647i;
    var var_2 = func_4(_wgslsmith_dot_vec3_u32(u_input.e & vec3<u32>(select(0u, u_input.c.x, true), _wgslsmith_mult_u32(u_input.c.x, u_input.c.x), 1u), ~vec3<u32>(30664u, u_input.d.x, 49396u) | ~vec3<u32>(u_input.c.x, u_input.d.x, 41092u)), func_3(1293f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2()) + _wgslsmith_f_op_f32(global4.b.x + global4.b.x)), true, -abs(_wgslsmith_mod_i32(arg_0, arg_0)), ~_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, global0[_wgslsmith_index_u32(2664u, 8u)], -2147483647i), vec3<i32>(-7597i, u_input.b.x, 0i))));
    var_1 = u_input.b.x | ~max(-(~arg_0), _wgslsmith_dot_vec4_i32(vec4<i32>(0i, -1i, u_input.a.x, global0[_wgslsmith_index_u32(0u, 8u)]) | vec4<i32>(15248i, 1i, arg_0, arg_0), -vec4<i32>(-38993i, arg_0, -36702i, -11186i)));
    var var_3 = any(select(vec4<bool>(any(vec4<bool>(true, var_2.b, false, var_2.b)) && !var_2.b, !(u_input.a.x < -1584i), !var_2.b, true), !vec4<bool>(!var_2.b, true, false, false), select(all(vec2<bool>(false, var_2.b)), var_2.b, var_2.b) || !(var_2.b & var_2.b)));
    return global4.a;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<i32, 8>();
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3.b.x + global3.c.x) + -1593f), 2227f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -683f) + _wgslsmith_f_op_f32(527f - global3.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(914f)))))), vec2<f32>(global4.a.x, global4.c.x), _wgslsmith_f_op_vec4_f32(func_1(_wgslsmith_dot_vec2_i32(u_input.b.xx, -(~vec2<i32>(59481i, global0[_wgslsmith_index_u32(0u, 8u)]))))));
    var var_0 = ~(~0u);
    global0 = array<i32, 8>();
    let var_1 = Struct_1(global3.a, _wgslsmith_f_op_vec2_f32(global4.a.xy + _wgslsmith_f_op_vec2_f32(-global4.a.wz)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-global3.c))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_dot_vec4_u32(select(vec4<u32>(4294967295u, 66763u, 1u, 4294967295u) & vec4<u32>(u_input.d.x, 4294967295u, u_input.c.x, u_input.d.x), _wgslsmith_sub_vec4_u32(vec4<u32>(41556u, 13080u, 4294967295u, 29381u), vec4<u32>(71443u, u_input.e.x, u_input.c.x, 9251u)), true) >> (~vec4<u32>(4294967295u, u_input.e.x, u_input.d.x, u_input.c.x) % vec4<u32>(32u)), vec4<u32>(firstLeadingBit(46471u), ~(~1u), u_input.e.x, u_input.e.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_2()))), global4.c.zy);
}

