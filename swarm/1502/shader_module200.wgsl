struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<u32>,
    c: Struct_2,
    d: bool,
    e: vec3<u32>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_2,
    c: u32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: Struct_2,
    c: Struct_1,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<bool>;

var<private> global1: Struct_4 = Struct_4(vec2<f32>(507f, -376f), Struct_2(false, 1u), 4294967295u, Struct_3(vec3<f32>(183f, -122f, 901f), vec3<u32>(31099u, 0u, 4294967295u), Struct_2(true, 66807u), false, vec3<u32>(51270u, 36784u, 1u)));

var<private> global2: Struct_3;

var<private> global3: array<i32, 16> = array<i32, 16>(-8952i, 1i, 1i, 2147483647i, -19838i, 14262i, 1i, 1i, -6187i, -35431i, 11766i, 2147483647i, -51405i, 618i, 2147483647i, 0i);

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_5, arg_1: u32, arg_2: bool, arg_3: bool) -> vec4<bool> {
    var var_0 = vec2<i32>(max(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_div_i32(arg_0.c.a, 2147483647i), 4238i >> (1u % 32u), -1084i), vec3<i32>(global3[_wgslsmith_index_u32(~global2.b.x, 16u)], global3[_wgslsmith_index_u32(33544u, 16u)] ^ 1i, abs(global3[_wgslsmith_index_u32(30414u, 16u)]))), -abs(1i)), ~_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.c.x, u_input.b), _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, u_input.c.x), u_input.c.ww)), global3[_wgslsmith_index_u32(global1.d.b.x, 16u)]));
    let var_1 = select(!vec4<bool>(!any(vec4<bool>(global0.x, true, true, true)), global0.x, (43969u >= global1.b.b) & true, arg_0.c.b), select(select(select(!vec4<bool>(global0.x, global2.c.a, true, true), select(vec4<bool>(global2.c.a, arg_3, true, false), vec4<bool>(global1.d.d, global1.b.a, true, true), true), vec4<bool>(false, true, global2.c.a, true)), !(!vec4<bool>(true, false, true, global0.x)), !all(global0.xw)), select(!(!vec4<bool>(true, global1.b.a, global2.d, false)), select(select(vec4<bool>(true, arg_0.a.x, false, false), vec4<bool>(global0.x, arg_2, true, global0.x), global1.d.c.a), select(vec4<bool>(false, false, arg_2, global2.c.a), vec4<bool>(false, true, true, arg_2), vec4<bool>(true, arg_2, global0.x, arg_3)), !arg_3), select(vec4<bool>(true, true, true, arg_0.c.b), !vec4<bool>(arg_2, arg_0.b.a, arg_3, arg_2), true)), global2.d), select(select(vec4<bool>(true, global2.c.a, any(global0.xx), false), vec4<bool>(true, false, select(false, global1.d.d, true), !arg_3), select(true, any(vec3<bool>(false, arg_3, true)), false)), !select(!vec4<bool>(arg_2, arg_3, true, true), select(vec4<bool>(false, global2.c.a, arg_3, false), vec4<bool>(true, global2.d, true, true), global0.x), arg_2), !(_wgslsmith_dot_vec2_u32(global1.d.b.xy, u_input.a) >= ~65858u)));
    let var_2 = Struct_1(_wgslsmith_clamp_i32(6803i, arg_0.c.a, countOneBits(u_input.c.x)), !any(global0.ww), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(2117f, -1238f)) * 1462f));
    var var_3 = 845f;
    var_3 = 371f;
    return vec4<bool>(true, false, true, false);
}

fn func_2(arg_0: bool) -> Struct_5 {
    let var_0 = Struct_5(vec3<bool>(true, all(func_3(Struct_5(global0.xxw, Struct_2(global2.d, 9379u), Struct_1(u_input.c.x, global2.c.a, -332f), global1.d.e.xz), 16480u, true, false || global0.x)), true), global2.c, Struct_1(u_input.d & global3[_wgslsmith_index_u32(~global1.b.b, 16u)], all(select(global0.xz, vec2<bool>(arg_0, global0.x), arg_0)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x + -1000f))), global2.b.yz);
    global2 = global1.d;
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2067f)), _wgslsmith_f_op_f32(-1780f + -107f))), Struct_2(_wgslsmith_f_op_f32(global1.a.x + _wgslsmith_f_op_f32(round(global2.a.x))) < var_0.c.c, _wgslsmith_div_u32(~(~1u), u_input.a.x)), u_input.a.x, global1.d);
    var var_1 = true | any(global0.zyz);
    let var_2 = global1.d;
    return Struct_5(select(func_3(var_0, firstLeadingBit(u_input.a.x) ^ ~9670u, true, true).xww, vec3<bool>(all(!global0.wyz), all(func_3(Struct_5(vec3<bool>(global2.d, true, global1.d.d), Struct_2(true, 1u), var_0.c, vec2<u32>(global2.e.x, 29951u)), 1u, var_2.c.a, var_2.d).zw), false), func_3(Struct_5(vec3<bool>(true, true, global2.d), Struct_2(var_2.c.a, 1u), Struct_1(u_input.d, var_0.a.x, -498f), vec2<u32>(1u, 25332u)), global2.c.b, ~(-1i) >= _wgslsmith_dot_vec4_i32(vec4<i32>(-10908i, u_input.b, var_0.c.a, global3[_wgslsmith_index_u32(var_0.b.b, 16u)]), u_input.c), !(!var_0.b.a)).wyz), Struct_2(all(select(!vec4<bool>(false, global1.b.a, var_0.a.x, var_2.d), !vec4<bool>(false, true, arg_0, arg_0), var_2.a.x < 242f)), countOneBits(17429u)), Struct_1(abs(u_input.c.x), abs(~(-26090i)) != var_0.c.a, global2.a.x), abs(vec2<u32>(u_input.a.x, _wgslsmith_mod_u32(~40727u, 4294967295u << (0u % 32u)))));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_5) -> Struct_3 {
    global2 = global1.d;
    global0 = !select(select(!select(vec4<bool>(global1.b.a, false, global1.b.a, false), vec4<bool>(false, global2.c.a, false, global1.d.d), vec4<bool>(arg_2.c.b, false, false, false)), !vec4<bool>(global1.b.a, true, false, arg_2.a.x), !(!vec4<bool>(global0.x, false, global2.d, true))), !vec4<bool>(global0.x, select(false, false, true), any(vec3<bool>(true, global2.c.a, arg_2.c.b)), all(vec2<bool>(global0.x, true))), func_3(Struct_5(!vec3<bool>(true, arg_1, true), Struct_2(true, global2.e.x), arg_2.c, vec2<u32>(u_input.a.x, global2.b.x)), 1u, true, global2.c.a && global0.x));
    global0 = func_3(func_2(global1.a.x < -387f), countOneBits(~91527u), func_2(true).b.a, all(select(vec3<bool>(false, false, false), !select(vec3<bool>(global0.x, true, global1.d.c.a), vec3<bool>(false, global1.d.c.a, arg_1), global0.wxw), !(-42669i < u_input.c.x))));
    var var_0 = func_2(any(arg_2.a.zx));
    global2 = global1.d;
    return Struct_3(_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(select(523f, arg_2.c.c, arg_1)), _wgslsmith_div_f32(arg_2.c.c, arg_0), arg_0) + _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1364f, arg_2.c.c, arg_2.c.c)))))), global2.b, var_0.b, true, _wgslsmith_sub_vec3_u32(vec3<u32>(~(~4294967295u), ~(36944u >> (0u % 32u)), _wgslsmith_add_u32(abs(u_input.a.x), ~global2.b.x)), select(global1.d.b, vec3<u32>(_wgslsmith_add_u32(0u, global2.c.b), 1u, global1.d.c.b), select(!vec3<bool>(global0.x, true, false), !vec3<bool>(false, arg_1, false), false))));
}

fn func_1(arg_0: bool) -> Struct_4 {
    let var_0 = global2.c.a;
    var var_1 = func_4(247f, global2.d, func_2(true));
    let var_2 = Struct_4(vec2<f32>(func_2(_wgslsmith_f_op_f32(floor(1448f)) != _wgslsmith_f_op_f32(abs(-517f))).c.c, -431f), func_2(!global2.c.a).b, 8202u, global1.d);
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f * _wgslsmith_div_f32(var_1.a.x, 1459f))) * _wgslsmith_f_op_f32(-global2.a.x)) < _wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-890f, var_2.d.a.x))));
    var var_4 = func_2(!func_3(func_2(any(vec3<bool>(global0.x, arg_0, false))), 0u, true, false).x);
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1155f, -927f) + vec2<f32>(-1842f, var_4.c.c)) * _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.a.x, 701f))))) * vec2<f32>(var_4.c.c, 702f)), func_4(global1.a.x, !(!any(vec2<bool>(false, var_1.c.a))), func_2(true)).c, _wgslsmith_mult_u32(_wgslsmith_div_u32(11032u, global2.c.b), _wgslsmith_add_u32(global1.b.b & _wgslsmith_div_u32(0u, global2.e.x), 0u)), func_4(var_4.c.c, false, Struct_5(vec3<bool>(true, global1.d.c.a, false), func_2(all(var_4.a)).b, func_2(any(vec3<bool>(var_1.d, global1.b.a, true))).c, var_4.d)));
}

fn func_5(arg_0: Struct_4, arg_1: vec4<f32>, arg_2: Struct_2) -> Struct_3 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) + -1328f), _wgslsmith_div_f32(-708f, _wgslsmith_f_op_f32(floor(-1511f)))))), Struct_2(select(!arg_2.a, global2.c.a != global1.d.c.a, !(u_input.a.x > 1u)), ~arg_0.d.e.x), ~global1.b.b, func_4(-491f, false, func_2(true)));
    var var_1 = Struct_4(vec2<f32>(104f, func_1(false).a.x), global1.d.c, _wgslsmith_clamp_u32(arg_2.b, global1.b.b | ~(~4294967295u), func_1(true).b.b), func_4(-919f, !arg_0.d.d, func_2(!arg_0.d.c.a)));
    var_1 = func_1(_wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 0i) >> (var_0.d.b.xy % vec2<u32>(32u)), firstLeadingBit(vec2<i32>(-1i, global3[_wgslsmith_index_u32(4294967295u, 16u)]))) == max(firstLeadingBit(u_input.c.x) & 1i, abs(_wgslsmith_clamp_i32(global3[_wgslsmith_index_u32(0u, 16u)], global3[_wgslsmith_index_u32(arg_0.d.e.x, 16u)], 22379i))));
    var var_2 = Struct_4(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(global1.d.a.yx + arg_1.ww), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, global1.d.a.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(437f, arg_1.x), vec2<f32>(global1.d.a.x, 1690f))))))), func_1(func_2(global3[_wgslsmith_index_u32(u_input.a.x, 16u)] >= global3[_wgslsmith_index_u32(var_1.d.e.x, 16u)]).c.a > -15797i).d.c, func_1(true).c, global1.d);
    var var_3 = u_input.d ^ ~(~global3[_wgslsmith_index_u32(func_4(555f, false, func_2(global1.d.d)).c.b, 16u)]);
    return func_4(1038f, !(124f >= var_2.a.x), Struct_5(!vec3<bool>(arg_2.a, true, true), var_0.b, func_2(true).c, max(func_4(_wgslsmith_f_op_f32(round(1938f)), true, Struct_5(vec3<bool>(var_2.b.a, true, true), Struct_2(global0.x, global2.b.x), Struct_1(-2147483647i, arg_0.b.a, 170f), arg_0.d.e.zy)).e.zz, countOneBits(vec2<u32>(1u, global1.b.b)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1161f;
    global1 = Struct_4(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.a.x, global2.a.x)) * _wgslsmith_f_op_vec2_f32(select(global2.a.zx, vec2<f32>(global2.a.x, -551f), vec2<bool>(true, false)))), global1.a, !(!global0.yx))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.a))), _wgslsmith_div_vec2_f32(vec2<f32>(-507f, global1.d.a.x), _wgslsmith_f_op_vec2_f32(-global2.a.xx)))))), Struct_2(true || (true || !global0.x), ~(_wgslsmith_clamp_u32(global1.c, 44855u, u_input.a.x) >> (_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, 0u), vec2<u32>(u_input.a.x, 55383u)) % 32u))), 1u, Struct_3(vec3<f32>(_wgslsmith_f_op_f32(global2.a.x + _wgslsmith_f_op_f32(global1.d.a.x - -1265f)), -185f, global2.a.x), ~vec3<u32>(~20732u, 0u, ~u_input.a.x), global1.b, global2.c.a, global2.e));
    let var_1 = global1.b.b;
    let var_2 = false;
    global2 = func_5(func_1(any(vec2<bool>(true, false))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(392f, 343f, global2.a.x, -232f))) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global1.a.x, global2.a.x, 934f))), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1194f), _wgslsmith_f_op_f32(f32(-1f) * -1000f), 1000f, -901f))) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1000f, -125f, global1.a.x, global1.d.a.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.a.x, 1000f, 543f, 1188f) * vec4<f32>(global1.d.a.x, 361f, 2338f, global1.a.x)), global2.c.a))))), Struct_2(false, u_input.a.x & ~1u));
    global0 = func_3(Struct_5(vec3<bool>(var_2, global1.d.c.a, all(global0.xw) & (-774f <= global2.a.x)), global2.c, Struct_1(-2147483647i, true || !var_2, global1.d.a.x), global1.d.b.xx), 10365u, false, func_5(Struct_4(_wgslsmith_f_op_vec2_f32(-global2.a.xx), func_4(func_4(433f, true, Struct_5(vec3<bool>(global1.b.a, false, true), global2.c, Struct_1(1i, true, global2.a.x), vec2<u32>(u_input.a.x, 32154u))).a.x, var_2, func_2(global1.d.c.a)).c, 1u, Struct_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.d.a.x, -767f, global2.a.x)), global2.e, Struct_2(false, global2.b.x), -1613f != global2.a.x, ~vec3<u32>(12042u, 0u, 1u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1016f, global1.a.x, global1.d.a.x, global1.a.x) + vec4<f32>(350f, global1.d.a.x, -1000f, global1.d.a.x)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(global1.a.x, global2.a.x, 1000f, global2.a.x))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, 512f, global1.d.a.x, global1.a.x) * vec4<f32>(global2.a.x, 424f, global2.a.x, -1000f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(-1229f, 132f, -662f, global1.a.x) * vec4<f32>(-1168f, global1.a.x, global2.a.x, global1.a.x)))), global1.b).d);
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(min(_wgslsmith_mod_i32(u_input.d, -29003i & global3[_wgslsmith_index_u32(0u, 16u)]), -_wgslsmith_dot_vec4_i32(vec4<i32>(-15313i, u_input.b, global3[_wgslsmith_index_u32(u_input.a.x, 16u)], u_input.c.x), vec4<i32>(1i, -2147483647i, u_input.d, -35238i))), -(~u_input.c.x), _wgslsmith_dot_vec4_i32(u_input.c, u_input.c)), global1.d.a.x, _wgslsmith_clamp_u32(func_1((global1.b.b == global1.d.c.b) || false).d.b.x, func_1(false).c, select(_wgslsmith_mult_u32(u_input.a.x, 92064u) & (global1.b.b << (3350u % 32u)), global1.d.e.x, false)), _wgslsmith_mult_vec4_i32(~vec4<i32>(1i, _wgslsmith_add_i32(global3[_wgslsmith_index_u32(global1.b.b, 16u)], 0i), u_input.b, global3[_wgslsmith_index_u32(_wgslsmith_div_u32(4294967295u, global2.c.b), 16u)]), vec4<i32>(abs(global3[_wgslsmith_index_u32(global2.c.b, 16u)]), -1i << (global1.d.e.x % 32u), firstLeadingBit(u_input.c.x), global3[_wgslsmith_index_u32(_wgslsmith_div_u32(70480u, global1.d.e.x), 16u)]) | -u_input.c), _wgslsmith_add_vec3_u32(vec3<u32>(u_input.a.x, ~global2.e.x, u_input.a.x) & ~abs(global2.b), global2.b));
}

