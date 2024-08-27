struct Struct_1 {
    a: f32,
    b: vec2<i32>,
    c: vec3<u32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: bool,
}

struct Struct_4 {
    a: bool,
    b: vec2<bool>,
}

struct Struct_5 {
    a: Struct_2,
    b: bool,
    c: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

var<private> global1: array<vec2<f32>, 23> = array<vec2<f32>, 23>(vec2<f32>(-1268f, -1362f), vec2<f32>(2868f, -2076f), vec2<f32>(1184f, -1431f), vec2<f32>(373f, 301f), vec2<f32>(-291f, 349f), vec2<f32>(-1089f, 1579f), vec2<f32>(-1015f, 951f), vec2<f32>(549f, -1000f), vec2<f32>(-1083f, -476f), vec2<f32>(-423f, 608f), vec2<f32>(960f, 983f), vec2<f32>(1640f, -1333f), vec2<f32>(838f, -440f), vec2<f32>(-2414f, 1840f), vec2<f32>(-1030f, -573f), vec2<f32>(-299f, -340f), vec2<f32>(240f, -1393f), vec2<f32>(548f, 547f), vec2<f32>(919f, -545f), vec2<f32>(505f, 1095f), vec2<f32>(-1202f, 1143f), vec2<f32>(1144f, 1848f), vec2<f32>(-408f, -290f));

var<private> global2: Struct_2;

var<private> global3: array<vec3<i32>, 7>;

var<private> global4: vec2<f32> = vec2<f32>(-1451f, 1349f);

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: vec3<bool>) -> vec4<bool> {
    return !select(vec4<bool>(!arg_0, (global2.c.x << (74035u % 32u)) <= _wgslsmith_add_i32(arg_2.x, -2147483647i), arg_0, !(-42144i <= arg_2.x)), vec4<bool>(all(select(vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(arg_0, arg_0, false, true))), !all(arg_3.xz), global4.x < 3432f, false), !select(vec4<bool>(arg_3.x, arg_3.x, false, false), select(vec4<bool>(global0.b, false, false, false), vec4<bool>(arg_0, false, true, true), vec4<bool>(arg_3.x, true, arg_3.x, false)), vec4<bool>(true, true, true, global0.b)));
}

fn func_2(arg_0: Struct_2, arg_1: i32, arg_2: i32) -> Struct_3 {
    global3 = array<vec3<i32>, 7>();
    let var_0 = all(select(!(!select(vec4<bool>(global0.b, global0.b, true, true), vec4<bool>(true, false, false, false), global0.b)), vec4<bool>(true, true, true, true), !func_3(true, global0.a.xz, global3[_wgslsmith_index_u32(131692u, 7u)], select(vec3<bool>(global0.b, false, true), vec3<bool>(global0.b, global0.b, global0.b), vec3<bool>(false, global0.b, false)))));
    let var_1 = !select(any(func_3(true, global0.a.xz, -global3[_wgslsmith_index_u32(24779u, 7u)], vec3<bool>(true, var_0, true)).yyy), !var_0, global0.b);
    var var_2 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-global0.a), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.x, -455f, global0.a.x)))))), var_0);
    global1 = array<vec2<f32>, 23>();
    return Struct_3(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-var_2.a), _wgslsmith_f_op_vec3_f32(var_2.a - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(var_2.a)) * _wgslsmith_f_op_vec3_f32(-global0.a)))), all(func_3(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global4.x, global4.x))), min(global3[_wgslsmith_index_u32(global2.a >> (u_input.a % 32u), 7u)], abs(global3[_wgslsmith_index_u32(u_input.a, 7u)])), !vec3<bool>(var_0, var_0, false))));
}

fn func_4(arg_0: Struct_1, arg_1: Struct_3, arg_2: vec4<f32>) -> Struct_2 {
    let var_0 = Struct_4(global0.b, vec2<bool>(all(vec3<bool>(arg_1.b, global0.b, global0.b)) & !all(vec3<bool>(arg_1.b, false, false)), global4.x < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.x * 217f) - func_2(Struct_2(1u, u_input.a, global2.c), 2147483647i, -1i).a.x)));
    var var_1 = 845f;
    var var_2 = var_0;
    let var_3 = Struct_5(Struct_2(9050u, abs(firstTrailingBit(1u)), vec2<i32>(1i, select(-45286i, _wgslsmith_mult_i32(arg_0.b.x, 0i), !arg_1.b))), global0.b, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(~vec2<i32>(global2.c.x, global2.c.x), -arg_0.b), -arg_0.b) & _wgslsmith_dot_vec2_i32(~global2.c ^ _wgslsmith_clamp_vec2_i32(arg_0.b, vec2<i32>(0i, -2147483647i), arg_0.b), -vec2<i32>(2147483647i, global2.c.x)));
    let var_4 = true;
    return var_3.a;
}

fn func_1() -> Struct_4 {
    let var_0 = global2.a;
    var var_1 = reverseBits(countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(i32(-1i) * -2147483647i, min(global2.c.x, 2147483647i), -45028i, -global2.c.x), ~(~vec4<i32>(global2.c.x, global2.c.x, global2.c.x, 0i)))));
    let var_2 = min(1u, min(~u_input.a, 1336u));
    global2 = func_4(Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1406f - global0.a.x)))), global2.c, vec3<u32>(var_2 << (_wgslsmith_div_u32(u_input.a, global2.b) % 32u), ~0u, 36359u), u_input.a), func_2(Struct_2(~(~u_input.a), ~var_2, select(firstLeadingBit(global2.c), reverseBits(vec2<i32>(-2147483647i, -2221i)), global2.c.x < global2.c.x)), countOneBits(-_wgslsmith_sub_i32(45087i, var_1.x)), global2.c.x >> (_wgslsmith_add_u32(global2.a, 0u) % 32u)), vec4<f32>(1448f, _wgslsmith_f_op_f32(f32(-1f) * -220f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), 961f, global0.b)), global0.a.x));
    global3 = array<vec3<i32>, 7>();
    return Struct_4(global0.b, select(vec2<bool>(global0.b, global0.b), select(vec2<bool>(func_3(global0.b, global0.a.zy, vec3<i32>(1i, 2147483647i, -1i), vec3<bool>(true, global0.b, global0.b)).x, global0.b), select(select(vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.b), global0.b), select(vec2<bool>(global0.b, true), vec2<bool>(true, global0.b), vec2<bool>(global0.b, global0.b)), global0.b), vec2<bool>(true, true)), !vec2<bool>(true, global0.b || global0.b)));
}

fn func_5(arg_0: Struct_4, arg_1: Struct_5) -> vec3<u32> {
    var var_0 = global0.b;
    let var_1 = Struct_4(arg_1.b, select(func_3(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1170f, global4.x) + global1[_wgslsmith_index_u32(11291u, 23u)]) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.a.x, 500f))), -global3[_wgslsmith_index_u32(43246u, 7u)], select(func_3(arg_0.a, global1[_wgslsmith_index_u32(u_input.a, 23u)], vec3<i32>(-19915i, 1i, 2147483647i), vec3<bool>(false, true, arg_1.b)).xwx, select(vec3<bool>(arg_0.a, global0.b, false), vec3<bool>(global0.b, arg_1.b, true), arg_0.a), false)).xx, arg_0.b, true));
    let var_2 = 1u > ~abs(_wgslsmith_add_u32(arg_1.a.a, arg_1.a.a) & arg_1.a.b);
    let var_3 = Struct_4(!any(select(func_1().b, var_1.b, false | global0.b)), vec2<bool>(func_3(true, _wgslsmith_f_op_vec2_f32(ceil(global1[_wgslsmith_index_u32(0u, 23u)])), -vec3<i32>(7339i, arg_1.a.c.x, -43682i), func_3(!var_2, vec2<f32>(global4.x, -352f), vec3<i32>(global2.c.x, arg_1.c, 1i) ^ global3[_wgslsmith_index_u32(global2.b, 7u)], !vec3<bool>(var_1.b.x, false, true)).wyy).x, arg_1.b && !func_2(Struct_2(u_input.a, arg_1.a.b, arg_1.a.c), global2.c.x, global2.c.x).b));
    var var_4 = arg_1;
    return select(_wgslsmith_mod_vec3_u32(~(min(vec3<u32>(u_input.a, var_4.a.a, u_input.a), vec3<u32>(global2.a, 11005u, global2.b)) << (vec3<u32>(arg_1.a.a, arg_1.a.a, global2.a) % vec3<u32>(32u))), vec3<u32>(reverseBits(u_input.a), global2.b, 9615u)), ~vec3<u32>(46272u, ~0u, firstLeadingBit(u_input.a << (arg_1.a.b % 32u))), vec3<bool>(!(!all(vec4<bool>(true, false, var_1.b.x, true))), !(!global0.b == true), true));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(741f * 189f), _wgslsmith_mod_vec2_i32(global2.c, _wgslsmith_div_vec2_i32(vec2<i32>(global2.c.x, firstTrailingBit(-1i)), -(vec2<i32>(-1i, global2.c.x) >> (vec2<u32>(27031u, 0u) % vec2<u32>(32u))))), func_5(func_1(), Struct_5(Struct_2(global2.a | 4294967295u, 4294967295u, -global2.c), global0.b, abs(_wgslsmith_mod_i32(4854i, 24548i)))), global2.a);
    let var_1 = 40824i;
    var var_2 = global0.b;
    let var_3 = Struct_3(global0.a, true);
    let var_4 = func_2(func_4(Struct_1(_wgslsmith_f_op_f32(max(863f, -282f)), _wgslsmith_mod_vec2_i32(var_0.b, var_0.b), var_0.c, 4294967295u), var_3, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(global4.x, var_3.a.x, 1117f, 397f), vec4<f32>(-210f, 437f, 1379f, global0.a.x))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_3.a.x, -795f, -154f, var_0.a)))))), var_1, _wgslsmith_dot_vec3_i32(~select(global3[_wgslsmith_index_u32(33747u, 7u)], vec3<i32>(-7169i, 23785i, -2147483647i), vec3<bool>(global0.b, false, global0.b)), global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(~4294967295u, var_0.d), 7u)]) >> (countOneBits(4294967295u) % 32u));
    let var_5 = _wgslsmith_dot_vec3_u32(vec3<u32>(global2.a, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_0.d, 4294967295u, 16194u, var_0.c.x), ~vec4<u32>(u_input.a, u_input.a, var_0.c.x, u_input.a)), _wgslsmith_div_u32(~4294967295u, _wgslsmith_clamp_u32(1u, 1u, u_input.a))) << (min(func_5(func_1(), Struct_5(Struct_2(54257u, global2.b, vec2<i32>(1i, var_0.b.x)), var_4.b, var_0.b.x)), vec3<u32>(~u_input.a, reverseBits(global2.a), _wgslsmith_dot_vec3_u32(var_0.c, vec3<u32>(u_input.a, 6916u, 71799u)))) % vec3<u32>(32u)), vec3<u32>(firstTrailingBit(~u_input.a), u_input.a, countOneBits(~(var_0.d ^ 0u))));
    let var_6 = !select(!select(select(vec4<bool>(true, false, var_3.b, var_4.b), vec4<bool>(global0.b, var_4.b, true, var_3.b), var_4.b), vec4<bool>(true, var_4.b, var_3.b, true), var_3.b), vec4<bool>(_wgslsmith_f_op_f32(global0.a.x + -1146f) != var_3.a.x, var_3.b, !(!global0.b), var_4.b || true), false);
    let x = u_input.a;
    s_output = StorageBuffer(~var_5);
}

