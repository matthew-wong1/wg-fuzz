struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: Struct_1,
}

struct Struct_5 {
    a: vec2<i32>,
    b: bool,
    c: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<i32>;

var<private> global1: vec2<bool> = vec2<bool>(false, true);

var<private> global2: array<f32, 1> = array<f32, 1>(-1792f);

var<private> global3: u32 = 26583u;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool, arg_2: bool) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(~(~1792u), 1u)]);
    var var_1 = 1i;
    global2 = array<f32, 1>();
    global3 = ~(~(~_wgslsmith_mult_u32(112513u & u_input.d, u_input.d)));
    var var_2 = Struct_2(Struct_1(firstTrailingBit(~vec3<u32>(u_input.a, 4294967295u, arg_0.x)), all(!select(vec2<bool>(false, false), vec2<bool>(true, arg_2), global1.x))), true || any(!vec3<bool>(global1.x, false, true)), _wgslsmith_clamp_vec3_u32(~select(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d, arg_0.x), vec3<u32>(u_input.a, 0u, u_input.a)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.d, arg_0.x, 38792u), vec3<u32>(34592u, 51389u, arg_0.x)), arg_1), ~vec3<u32>(_wgslsmith_clamp_u32(11972u, u_input.a, u_input.a), _wgslsmith_clamp_u32(1u, arg_0.x, 61487u), 1u), ~(~countOneBits(vec3<u32>(arg_0.x, arg_0.x, 0u)))), Struct_1(max(_wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(arg_0.x, 4294967295u, 89567u), vec3<u32>(arg_0.x, 0u, u_input.d)), min(vec3<u32>(arg_0.x, 32753u, 4294967295u), vec3<u32>(59716u, u_input.d, u_input.d))), ~(~vec3<u32>(arg_0.x, u_input.d, arg_0.x))), var_0 == _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-340f)), -841f))));
    return u_input.a;
}

fn func_2() -> Struct_3 {
    let var_0 = Struct_2(Struct_1(~(~(~vec3<u32>(u_input.d, u_input.d, 1u))), !all(select(vec3<bool>(true, true, global1.x), vec3<bool>(global1.x, global1.x, false), false))), any(vec4<bool>(!global1.x, !(!global1.x), ~u_input.d > u_input.a, !global1.x)), countOneBits(~vec3<u32>(u_input.a, func_3(vec2<u32>(1u, 1u), false, global1.x), ~4294967295u)), Struct_1(vec3<u32>(u_input.a, u_input.a, 11972u), global1.x));
    var var_1 = vec2<bool>(!global1.x, true);
    var var_2 = vec4<bool>(false, var_0.d.b, true, !(!(false & any(vec3<bool>(global1.x, true, var_0.a.b)))));
    var_1 = select(select(!select(var_2.wy, var_2.xx, true), select(vec2<bool>(global2[_wgslsmith_index_u32(var_0.d.a.x, 1u)] < -301f, u_input.c >= -2147483647i), var_2.wy, true), all(select(!var_2.yyw, !vec3<bool>(false, var_2.x, true), var_0.a.b))), var_2.yz, var_2.yx);
    let var_3 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-607f - global2[_wgslsmith_index_u32(u_input.d, 1u)]), _wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(u_input.a, 1u)]), _wgslsmith_div_f32(global2[_wgslsmith_index_u32(u_input.d, 1u)], global2[_wgslsmith_index_u32(0u, 1u)])) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(654f, global2[_wgslsmith_index_u32(0u, 1u)], global2[_wgslsmith_index_u32(34967u, 1u)])) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2[_wgslsmith_index_u32(4294967295u, 1u)], -295f, -195f)))) - _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global2[_wgslsmith_index_u32(37999u, 1u)], global2[_wgslsmith_index_u32(var_0.c.x, 1u)], 952f), vec3<f32>(global2[_wgslsmith_index_u32(var_0.d.a.x, 1u)], global2[_wgslsmith_index_u32(66545u, 1u)], 207f), vec3<bool>(false, false, var_0.b)))), vec3<f32>(_wgslsmith_f_op_f32(-809f + 436f), 1f, global2[_wgslsmith_index_u32(_wgslsmith_add_u32(var_0.d.a.x, u_input.a), 1u)])))));
    return Struct_3(vec3<bool>(any(var_2.yx), true, _wgslsmith_mult_u32(5494u, select(4294967295u, u_input.a, global1.x)) == _wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(var_0.c.zx, var_0.d.a.zz), u_input.d)), Struct_1(~firstTrailingBit(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.a.x, 41538u, var_0.c.x), var_0.d.a)), any(select(vec2<bool>(var_2.x, var_2.x), !vec2<bool>(global1.x, false), true))));
}

fn func_4(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool, arg_3: Struct_3) -> Struct_3 {
    global0 = ~(-(~vec4<i32>(countOneBits(u_input.b), ~39808i, reverseBits(-65982i), 2147483647i)));
    var var_0 = min(~(-41034i), 1i);
    global0 = vec4<i32>(0i, -29116i, 0i, _wgslsmith_clamp_i32(~(-_wgslsmith_div_i32(0i, 1i)), abs(~(~u_input.c)), global0.x));
    var var_1 = arg_1.x;
    let var_2 = arg_3.b.a;
    return Struct_3(func_2().a, Struct_1(~var_2, _wgslsmith_mult_i32(-1i, abs(-1809i)) < global0.x));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>, arg_2: vec3<u32>, arg_3: vec4<i32>) -> vec2<i32> {
    let var_0 = u_input.d;
    let var_1 = func_4(func_2(), select(!vec2<bool>(false | global1.x, false), select(arg_1, arg_1, !select(vec2<bool>(arg_1.x, arg_1.x), arg_1, true)), select(func_2().a.yz, !arg_1, func_2().a.x)), true, Struct_3(!(!select(vec3<bool>(true, true, arg_1.x), vec3<bool>(global1.x, true, global1.x), vec3<bool>(true, false, global1.x))), func_2().b));
    let var_2 = vec4<bool>(any(select(vec3<bool>(true, !var_1.a.x, var_1.b.b), vec3<bool>(true, true, true), !var_1.a)), all(!vec4<bool>(true, false, func_2().b.b, var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global2[_wgslsmith_index_u32(~18457u, 1u)]))) <= 811f, !var_1.a.x);
    var var_3 = reverseBits(~(max(vec3<i32>(arg_3.x, 0i, 325i), vec3<i32>(global0.x, u_input.b, u_input.b)) << (_wgslsmith_mult_vec3_u32(var_1.b.a & arg_2, select(vec3<u32>(1u, 1u, var_1.b.a.x), vec3<u32>(arg_0, 0u, 4294967295u), false)) % vec3<u32>(32u))));
    global3 = func_4(func_2(), var_2.zx, all(vec2<bool>(true, !global1.x)), func_2()).b.a.x;
    return _wgslsmith_mult_vec2_i32(global0.yx, var_3.yx);
}

fn func_5(arg_0: vec2<i32>, arg_1: bool, arg_2: i32, arg_3: vec2<u32>) -> Struct_2 {
    var var_0 = Struct_4(func_2(), func_2().b);
    global3 = firstTrailingBit(_wgslsmith_clamp_u32(min(1u, var_0.b.a.x), u_input.d, u_input.d) << (var_0.a.b.a.x % 32u)) | func_2().b.a.x;
    return Struct_2(var_0.a.b, global1.x, ~(~(var_0.b.a >> (_wgslsmith_mod_vec3_u32(var_0.a.b.a, vec3<u32>(84972u, 33040u, var_0.a.b.a.x)) % vec3<u32>(32u)))), func_2().b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_add_vec2_i32(global0.zy, func_1(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.a, 37257u, 0u), vec4<u32>(u_input.d, u_input.d, 1u, 0u)), vec2<bool>(false, true), vec3<u32>(u_input.d, u_input.a, u_input.a) ^ vec3<u32>(u_input.a, u_input.a, u_input.a), min(vec4<i32>(-1i, 1i, 0i, global0.x), vec4<i32>(0i, global0.x, 31210i, 1i))) ^ vec2<i32>(abs(-2147483647i), 1i)), !all(vec2<bool>(global2[_wgslsmith_index_u32(u_input.a, 1u)] >= 417f, any(vec2<bool>(global1.x, global1.x)))), 12911i, ~(~firstTrailingBit(vec2<u32>(u_input.a, 48147u))));
    global3 = _wgslsmith_dot_vec3_u32(~countOneBits(var_0.c), ~countOneBits(var_0.a.a));
    let var_1 = func_5(_wgslsmith_mult_vec2_i32(-(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i, u_input.c), global0.xy) << (~vec2<u32>(5932u, 38430u) % vec2<u32>(32u))), abs(reverseBits(~vec2<i32>(u_input.c, global0.x)))), global1.x, global0.x, countOneBits(countOneBits(var_0.a.a.yy)) & min(~(~vec2<u32>(50536u, 4294967295u)), vec2<u32>(1u, 1u)));
    var var_2 = func_2();
    var var_3 = 50906i;
    var var_4 = Struct_5(_wgslsmith_mod_vec2_i32(vec2<i32>(-1i) * -global0.xw, ~(vec2<i32>(u_input.c, global0.x) ^ global0.zz)) ^ -vec2<i32>(~(-12162i), _wgslsmith_sub_i32(u_input.c, -28655i)), var_2.a.x, Struct_3(vec3<bool>(func_4(Struct_3(var_2.a, Struct_1(var_2.b.a, true)), vec2<bool>(var_2.a.x, false), !global1.x, func_4(Struct_3(vec3<bool>(global1.x, var_1.b, var_0.b), Struct_1(var_2.b.a, true)), var_2.a.yy, true, Struct_3(vec3<bool>(true, var_0.b, false), Struct_1(var_2.b.a, false)))).a.x, func_2().a.x, true), func_4(func_2(), !func_2().a.xz, false, func_4(Struct_3(var_2.a, Struct_1(vec3<u32>(57902u, u_input.d, var_2.b.a.x), false)), select(var_2.a.xy, var_2.a.xx, var_2.a.yx), false, func_4(Struct_3(vec3<bool>(false, global1.x, false), var_1.a), var_2.a.yz, true, Struct_3(var_2.a, var_1.d)))).b));
    global3 = var_4.c.b.a.x;
    global0 = vec4<i32>(countOneBits(_wgslsmith_dot_vec4_i32(~vec4<i32>(29024i, -2147483647i, 0i, -1i), vec4<i32>(select(u_input.c, -1i, true), -47420i, 1i, u_input.b))), _wgslsmith_div_i32(-7957i, _wgslsmith_dot_vec4_i32(~select(vec4<i32>(global0.x, global0.x, var_4.a.x, u_input.c), vec4<i32>(var_4.a.x, 2147483647i, var_4.a.x, -41029i), vec4<bool>(var_0.d.b, false, false, true)), vec4<i32>(2147483647i, -24642i, ~global0.x, reverseBits(var_4.a.x)))), _wgslsmith_div_i32(-1i, min(var_4.a.x, _wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c, global0.x), _wgslsmith_clamp_vec2_i32(var_4.a, global0.ww, vec2<i32>(u_input.b, -29886i))))), var_4.a.x << (_wgslsmith_mult_u32(1u, abs(u_input.d)) % 32u));
    var_2 = func_4(var_4.c, vec2<bool>(!(!(!global1.x)), func_4(func_2(), !var_4.c.a.xx, var_2.a.x, Struct_3(vec3<bool>(var_0.b, var_2.a.x, var_4.b), func_2().b)).a.x), true, Struct_3(vec3<bool>(_wgslsmith_add_i32(33330i, var_4.a.x) >= var_4.a.x, any(!var_4.c.a), true), func_4(func_4(var_4.c, var_2.a.xy, all(var_2.a), Struct_3(var_4.c.a, var_2.b)), var_4.c.a.xx, -1136f < global2[_wgslsmith_index_u32(u_input.a, 1u)], var_4.c).b));
    let x = u_input.a;
    s_output = StorageBuffer(global0.yyz);
}

