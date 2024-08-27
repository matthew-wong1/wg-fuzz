struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: bool,
    c: vec3<f32>,
    d: f32,
    e: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: Struct_2,
}

struct Struct_4 {
    a: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec3<u32>,
    c: vec2<f32>,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 11>;

var<private> global1: array<i32, 30>;

var<private> global2: Struct_4 = Struct_4(false);

var<private> global3: vec3<f32> = vec3<f32>(636f, -2112f, -440f);

var<private> global4: array<Struct_1, 29> = array<Struct_1, 29>(Struct_1(vec4<bool>(true, true, false, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, true, false)), Struct_1(vec4<bool>(true, false, true, false)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(false, false, true, true)), Struct_1(vec4<bool>(false, true, true, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, true, true, false)), Struct_1(vec4<bool>(false, true, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(true, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, true, true, true)), Struct_1(vec4<bool>(false, false, false, true)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(true, false, false, false)), Struct_1(vec4<bool>(false, true, true, false)), Struct_1(vec4<bool>(true, false, true, true)), Struct_1(vec4<bool>(false, false, false, false)));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<f32> {
    var var_0 = _wgslsmith_mod_vec3_i32(-u_input.d.xww, u_input.d.xww);
    var_0 = vec3<i32>(-2147483647i, 2147483647i & _wgslsmith_dot_vec3_i32(countOneBits(vec3<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], -17237i)), -(~vec3<i32>(u_input.d.x, -1i, var_0.x))), 1i ^ global1[_wgslsmith_index_u32(u_input.c, 30u)]);
    var var_1 = _wgslsmith_mod_u32(~3329u, u_input.a.x & 4294967295u);
    global4 = array<Struct_1, 29>();
    var var_2 = Struct_4(any(arg_1.a.xw));
    return vec4<f32>(arg_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(global3.x, -322f)), _wgslsmith_f_op_f32(trunc(-1462f)), any(vec2<bool>(arg_1.a.x, true)))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(arg_0.x))))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * 529f));
}

fn func_4(arg_0: vec3<f32>, arg_1: u32, arg_2: vec4<f32>, arg_3: Struct_2) -> vec4<f32> {
    let var_0 = ~arg_3.e;
    global4 = array<Struct_1, 29>();
    let var_1 = u_input.a;
    var var_2 = select(!select(!vec4<bool>(arg_3.b, false, global2.a, true), vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), !vec4<bool>(false, global2.a, false, true), select(vec4<bool>(global2.a, true, false, true), vec4<bool>(false, arg_3.b, true, true), vec4<bool>(true, arg_3.b, arg_3.b, global2.a)))), vec4<bool>(true, false, !select(false, any(vec3<bool>(true, true, global2.a)), all(vec4<bool>(true, arg_3.b, true, true))), select(global2.a, select(true, arg_3.e < 0u, false), false)), (_wgslsmith_mod_i32(_wgslsmith_mult_i32(arg_3.a, 0i), ~465i) <= (i32(-1i) * -61165i)) == any(!(!vec3<bool>(arg_3.b, arg_3.b, global2.a))));
    let var_3 = Struct_3(Struct_1(select(!vec4<bool>(var_2.x, true, arg_3.b, true), !select(vec4<bool>(global2.a, false, arg_3.b, arg_3.b), vec4<bool>(var_2.x, var_2.x, global2.a, true), false), var_2.x)), u_input.d.x, arg_3);
    return _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(arg_2)), _wgslsmith_f_op_vec4_f32(-arg_2));
}

fn func_2(arg_0: vec4<u32>, arg_1: i32, arg_2: i32) -> vec4<bool> {
    global0 = array<vec4<u32>, 11>();
    var var_0 = _wgslsmith_f_op_vec4_f32(step(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(global3.x, global3.x, -338f))), ~arg_0.x, _wgslsmith_f_op_vec4_f32(func_3(vec3<f32>(1425f, global3.x, -687f), global4[_wgslsmith_index_u32(16454u, 29u)])), Struct_2(36123i, global2.a, vec3<f32>(-2476f, global3.x, global3.x), -1106f, 65958u)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1000f, global3.x, global3.x, 649f) - vec4<f32>(-729f, 1126f, global3.x, global3.x)) - vec4<f32>(global3.x, global3.x, 469f, global3.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(532f, 1424f, global3.x, global3.x) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.x, 966f, global3.x, 1000f))))), vec4<f32>(global3.x, _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_f32(-318f + _wgslsmith_f_op_f32(-302f + -1209f))), _wgslsmith_f_op_f32(floor(global3.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-636f, -725f)) + _wgslsmith_f_op_f32(ceil(global3.x))) + _wgslsmith_f_op_f32(-global3.x)))));
    var var_1 = !vec2<bool>(global2.a, global2.a);
    global3 = var_0.ywy;
    global1 = array<i32, 30>();
    return select(!vec4<bool>(var_1.x, all(select(vec3<bool>(false, false, false), vec3<bool>(true, var_1.x, var_1.x), vec3<bool>(false, true, true))), false, global2.a), !(!vec4<bool>(var_1.x, true, true, any(vec2<bool>(global2.a, false)))), var_1.x);
}

fn func_1(arg_0: Struct_2, arg_1: Struct_1) -> vec4<bool> {
    var var_0 = Struct_3(Struct_1(select(vec4<bool>(true, !arg_1.a.x, u_input.b < arg_0.e, global2.a), func_2(global0[_wgslsmith_index_u32(9518u, 11u)] & vec4<u32>(26418u, u_input.a.x, 10030u, 71570u), 1i, arg_0.a), global1[_wgslsmith_index_u32(u_input.c | 107398u, 30u)] != 1i)), _wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), -u_input.d.xy), Struct_2(select(arg_0.a, -_wgslsmith_div_i32(u_input.d.x, -2147483647i), true), global2.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global3.x, -431f, arg_0.d))) * vec3<f32>(-1000f, _wgslsmith_f_op_f32(-global3.x), 655f)), -1793f, 4294967295u));
    let var_1 = global1[_wgslsmith_index_u32(4294967295u, 30u)];
    let var_2 = arg_1;
    var_0 = Struct_3(Struct_1(vec4<bool>(true, all(!var_2.a), false, true)), abs(firstTrailingBit(~0i) & _wgslsmith_sub_i32(~17133i, 0i)), Struct_2(u_input.d.x, !any(arg_1.a.yzx), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_0.c.c - _wgslsmith_f_op_vec3_f32(min(vec3<f32>(arg_0.d, -726f, global3.x), arg_0.c))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(836f, arg_0.d, 1088f) + arg_0.c))), _wgslsmith_f_op_f32(ceil(1212f)), 1u));
    global0 = array<vec4<u32>, 11>();
    return vec4<bool>(true, select(any(!arg_1.a.yx), true, arg_1.a.x), arg_0.b, func_2(~(~(~vec4<u32>(547u, arg_0.e, arg_0.e, 1u))), _wgslsmith_sub_i32(arg_0.a, max(global1[_wgslsmith_index_u32(min(15762u, var_0.c.e), 30u)], _wgslsmith_clamp_i32(arg_0.a, u_input.d.x, -15080i))), -u_input.d.x).x);
}

fn func_5(arg_0: Struct_1) -> vec3<f32> {
    global2 = Struct_4(func_1(Struct_2(u_input.d.x, arg_0.a.x & true, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.x, 1392f, -906f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.x))), firstTrailingBit(reverseBits(4294967295u))), Struct_1(select(!arg_0.a, func_1(Struct_2(u_input.d.x, global2.a, vec3<f32>(global3.x, global3.x, global3.x), -1383f, 4294967295u), Struct_1(arg_0.a)), func_1(Struct_2(u_input.d.x, false, vec3<f32>(-493f, global3.x, 981f), global3.x, 21522u), Struct_1(arg_0.a))))).x);
    var var_0 = func_2(_wgslsmith_mult_vec4_u32(vec4<u32>(min(~81716u, 58444u), 1u, 4204u, firstTrailingBit(u_input.b)), vec4<u32>(72030u, 1u, u_input.a.x, reverseBits(46124u))), _wgslsmith_mod_i32(51867i, u_input.d.x), _wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(4294967295u, 30u)], u_input.d.x, u_input.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 30u)]), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(20896u, 30u)], -28767i, 21801i) | vec4<i32>(6512i, u_input.d.x, u_input.d.x, 4541i)) | _wgslsmith_mult_i32(1i, -u_input.d.x), reverseBits(u_input.d.x))).xyy;
    return vec3<f32>(_wgslsmith_f_op_f32(round(951f)), 278f, -161f);
}

@compute
@workgroup_size(1)
fn main() {
    global3 = _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(func_5(Struct_1(!func_1(Struct_2(2147483647i, global2.a, vec3<f32>(global3.x, global3.x, -170f), -1290f, 0u), Struct_1(vec4<bool>(true, false, global2.a, global2.a))))))));
    global1 = array<i32, 30>();
    global0 = array<vec4<u32>, 11>();
    var var_0 = Struct_3(global4[_wgslsmith_index_u32(1741u, 29u)], u_input.d.x, Struct_2(5774i, global3.x <= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(-2040f)), _wgslsmith_f_op_f32(global3.x + 417f), true)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec4_f32(func_3(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global3.x, global3.x, global3.x))), Struct_1(vec4<bool>(false, false, global2.a, true)))).wyx + _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-529f, -152f, global3.x)))))), -550f, 15258u));
    var_0 = Struct_3(Struct_1(var_0.a.a), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(16347i, u_input.d.x, global1[_wgslsmith_index_u32(u_input.a.x, 30u)])), _wgslsmith_clamp_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(var_0.c.a, 1i, global1[_wgslsmith_index_u32(var_0.c.e, 30u)]), vec3<i32>(3031i, global1[_wgslsmith_index_u32(u_input.a.x, 30u)], var_0.c.a)) << (vec3<u32>(u_input.c, var_0.c.e, u_input.a.x) % vec3<u32>(32u)), vec3<i32>(countOneBits(global1[_wgslsmith_index_u32(var_0.c.e, 30u)]), abs(-69205i), -1i), ~vec3<i32>(52113i, global1[_wgslsmith_index_u32(var_0.c.e, 30u)], 21430i))), Struct_2(_wgslsmith_sub_i32(62942i, -_wgslsmith_div_i32(u_input.d.x, global1[_wgslsmith_index_u32(0u, 30u)])), global2.a, vec3<f32>(global3.x, _wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec3_f32(-var_0.c.c), abs(u_input.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-114f, var_0.c.d, global3.x, 1501f)), var_0.c)).x, global3.x), global3.x, ~var_0.c.e));
    global2 = Struct_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0.c.d, 1068f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.c.d * 1f) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.c.x, var_0.c.d)))));
    var var_1 = Struct_3(Struct_1(func_2(_wgslsmith_add_vec4_u32(global0[_wgslsmith_index_u32(var_0.c.e, 11u)], global0[_wgslsmith_index_u32(1u, 11u)]), -u_input.d.x, abs(global1[_wgslsmith_index_u32(u_input.c, 30u)]))), firstTrailingBit(2147483647i >> (_wgslsmith_mod_u32(_wgslsmith_div_u32(u_input.a.x, 29988u), 61724u) % 32u)), var_0.c);
    let var_2 = Struct_2(18263i << (var_1.c.e % 32u), var_0.c.b, var_1.c.c, _wgslsmith_f_op_f32(floor(global3.x)), 7404u);
    var var_3 = var_2.d;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(global3.x)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(var_0.c.c.x)), _wgslsmith_f_op_f32(var_0.c.c.x + -812f)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(global3.x, var_1.c.c.x), vec2<f32>(-1000f, var_0.c.c.x)))))), _wgslsmith_mult_vec3_u32(vec3<u32>(firstLeadingBit(var_2.e | var_0.c.e), abs(44152u), ~(var_0.c.e | var_2.e)), ~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.c.e, var_1.c.e, 78073u), vec3<u32>(var_0.c.e, u_input.b, var_1.c.e)))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.c.x, 1000f), var_0.c.c.xx, var_1.c.b)))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.c.xz)))), ~vec2<u32>(_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, var_1.c.e, 52722u), vec3<u32>(var_0.c.e, 0u, 6176u)), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.b, u_input.a.x, 4294967295u), vec3<u32>(var_0.c.e, var_2.e, 52253u))), 48533u));
}

