struct Struct_1 {
    a: vec4<i32>,
    b: u32,
    c: vec4<f32>,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: vec3<i32>,
    c: f32,
    d: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 9>;

var<private> global1: vec4<bool>;

var<private> global2: Struct_3;

var<private> global3: vec2<u32> = vec2<u32>(10640u, 1u);

var<private> global4: Struct_3 = Struct_3(vec4<f32>(-352f, -537f, 496f, -786f), vec4<i32>(7884i, -1i, 1i, 1i));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<u32>, arg_2: Struct_2, arg_3: bool) -> f32 {
    var var_0 = false;
    var var_1 = -712f;
    let var_2 = vec4<bool>(reverseBits(~1u >> ((arg_2.a ^ global3.x) % 32u)) <= arg_1.x, !(!all(vec2<bool>(false, global1.x))), true, all(global1.zw));
    global0 = array<vec2<i32>, 9>();
    var var_3 = max(global3.x & reverseBits(_wgslsmith_mult_u32(6388u, arg_1.x) >> (41686u % 32u)), _wgslsmith_dot_vec4_u32(~reverseBits(~vec4<u32>(1u, 0u, 20445u, u_input.a.x)), ~_wgslsmith_mod_vec4_u32(~vec4<u32>(arg_1.x, 1u, u_input.b, arg_2.a), ~vec4<u32>(117413u, 4294967295u, global3.x, arg_2.a))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.c * -268f)) + _wgslsmith_f_op_f32(select(2640f, arg_2.c, any(var_2.zz))));
}

fn func_2(arg_0: vec3<u32>, arg_1: u32, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    global1 = !arg_3;
    let var_0 = arg_2;
    global4 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global4.a + arg_2.c) - arg_2.c) * _wgslsmith_f_op_vec4_f32(-arg_2.c))), _wgslsmith_sub_vec4_i32(vec4<i32>(-arg_2.a.x, var_0.a.x, -(i32(-1i) * -2147483647i), -_wgslsmith_dot_vec3_i32(vec3<i32>(1i, var_0.a.x, global4.b.x), var_0.a.xxw)), global2.b));
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(arg_2.c))), vec4<i32>(firstTrailingBit(_wgslsmith_mod_i32(var_0.a.x, var_0.a.x) >> (50224u % 32u)), 1i, 0i, reverseBits(arg_2.a.x)));
    var var_2 = Struct_2(arg_2.b >> (_wgslsmith_div_u32(~(~arg_2.d), 0u) % 32u), reverseBits(vec3<i32>(-1i) * -global2.b.xyx), 492f, Struct_1(global2.b, ~arg_2.d, vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(221f - -618f), _wgslsmith_f_op_f32(func_3(Struct_3(vec4<f32>(-632f, -218f, -742f, var_1.a.x), var_0.a), vec3<u32>(var_0.d, 28990u, 27585u), Struct_2(arg_2.d, global2.b.yxx, global2.a.x, var_0), global1.x)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(1777f, global4.a.x)))), -1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1229f))), _wgslsmith_add_u32(u_input.b, _wgslsmith_mult_u32(1u, 67583u))));
    return 703f;
}

fn func_4(arg_0: Struct_2) -> u32 {
    let var_0 = arg_0;
    let var_1 = select(vec4<bool>(global1.x, global4.b.x >= _wgslsmith_dot_vec3_i32(global2.b.zxw, _wgslsmith_mult_vec3_i32(global4.b.xyw, vec3<i32>(global2.b.x, var_0.d.a.x, global4.b.x))), global1.x, all(select(vec3<bool>(global1.x, global1.x, false), select(global1.zwy, vec3<bool>(global1.x, global1.x, true), true), select(global1.wzw, global1.xyx, global1.x)))), vec4<bool>(true, (var_0.d.a.x | var_0.d.a.x) == ~_wgslsmith_sub_i32(var_0.b.x, global4.b.x), !select(true, global1.x || global1.x, true), any(select(select(global1.xw, global1.zz, vec2<bool>(global1.x, true)), select(vec2<bool>(true, false), vec2<bool>(true, global1.x), vec2<bool>(false, true)), select(vec2<bool>(true, global1.x), vec2<bool>(false, global1.x), true)))), global1.x);
    global0 = array<vec2<i32>, 9>();
    let var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(select(20336u, global3.x, false), _wgslsmith_sub_u32(max(0u, arg_0.d.b), 11162u)), u_input.a.zz ^ select(u_input.a.xx, select(vec2<u32>(1u, 0u), vec2<u32>(4294967295u, 86256u), global1.x), vec2<bool>(var_1.x, true))) > ~(~_wgslsmith_add_u32(u_input.b >> (global3.x % 32u), max(global3.x, var_0.a)));
    let var_3 = vec2<bool>(true, var_2);
    return firstLeadingBit(0u);
}

fn func_1(arg_0: i32, arg_1: vec3<i32>, arg_2: bool) -> Struct_2 {
    let var_0 = ~vec3<u32>(1u, _wgslsmith_sub_u32(u_input.b, u_input.b), _wgslsmith_div_u32(select(15361u, 42840u, global1.x), ~global3.x));
    var var_1 = ~func_4(Struct_2(reverseBits(_wgslsmith_mod_u32(1u, var_0.x)), select(min(vec3<i32>(arg_1.x, 0i, 1i), arg_1), _wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, arg_0, 2147483647i), vec3<i32>(arg_0, 50417i, -5631i)), select(global1.zyy, vec3<bool>(false, global1.x, true), vec3<bool>(true, global1.x, false))), _wgslsmith_f_op_f32(func_2(var_0, 4269u, Struct_1(vec4<i32>(-8876i, 23540i, 10757i, -1i), 40187u, vec4<f32>(global4.a.x, global2.a.x, global4.a.x, global2.a.x), 1u), vec4<bool>(false, true, false, false))), Struct_1(~global4.b, u_input.a.x, vec4<f32>(1390f, 1000f, 1563f, global2.a.x), _wgslsmith_sub_u32(5323u, u_input.a.x))));
    global3 = vec2<u32>(firstLeadingBit(~1u), max(var_0.x & ~0u, countOneBits(~0u))) >> (vec2<u32>(global3.x ^ 0u, 23757u) % vec2<u32>(32u));
    global4 = Struct_3(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.a.x - global2.a.x)), -1980f, global2.a.x, -967f), ~global4.b);
    global1 = !vec4<bool>(global1.x == arg_2, all(vec4<bool>(all(vec4<bool>(global1.x, true, false, false)), true, arg_2 & global1.x, global1.x)), _wgslsmith_div_i32(-1i, firstLeadingBit(global2.b.x)) > global2.b.x, true);
    return Struct_2(u_input.c, -vec3<i32>(reverseBits(-1i), -1i, -1i), _wgslsmith_f_op_f32(f32(-1f) * -420f), Struct_1(vec4<i32>(~abs(global2.b.x), -6645i, 2147483647i, _wgslsmith_add_i32(-19494i, _wgslsmith_mod_i32(2147483647i, -2147483647i))), global3.x, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.a.x, -1233f, -1674f, -2505f), vec4<f32>(global2.a.x, 467f, global4.a.x, global4.a.x), vec4<bool>(false, true, global1.x, true))) * _wgslsmith_div_vec4_f32(vec4<f32>(global4.a.x, global4.a.x, 1382f, global2.a.x), global2.a)))), u_input.a.x >> (~1u % 32u)));
}

fn func_5(arg_0: vec3<f32>, arg_1: bool, arg_2: Struct_2) -> Struct_2 {
    global0 = array<vec2<i32>, 9>();
    var var_0 = Struct_1(arg_2.d.a, global3.x, vec4<f32>(_wgslsmith_f_op_f32(trunc(202f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) + -948f) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(ceil(global2.a.x)), 846f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1935f, arg_0.x)) - -1819f)), -1015f), ~global3.x);
    global3 = u_input.a.zx;
    var var_1 = Struct_3(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(exp2(arg_2.d.c)))), global4.b);
    var var_2 = arg_2.d;
    return arg_2;
}

@compute
@workgroup_size(1)
fn main() {
    global4 = Struct_3(vec4<f32>(-870f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4.a.x * _wgslsmith_f_op_f32(global4.a.x + -1145f)) - global4.a.x), 675f, global4.a.x), vec4<i32>(global2.b.x, ~1i << (global3.x % 32u), global2.b.x, global4.b.x));
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(-1000f)))) * 1049f);
    let var_1 = func_5(vec3<f32>(497f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.a.x))), -420f), false, func_1(_wgslsmith_sub_i32(-26639i, global2.b.x ^ 1i), global4.b.zyw, false));
    var var_2 = vec2<bool>(global1.x, false & !select(any(vec2<bool>(global1.x, global1.x)), any(vec2<bool>(global1.x, global1.x)), all(vec3<bool>(global1.x, global1.x, global1.x))));
    var var_3 = Struct_3(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global4.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(global4.a, var_1.d.c) * vec4<f32>(global4.a.x, global4.a.x, -305f, global4.a.x)), all(!vec3<bool>(var_2.x, global1.x, true)))) + _wgslsmith_f_op_vec4_f32(global4.a + vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -144f), func_1(-1i, var_1.d.a.zyy, global1.x).c, _wgslsmith_div_f32(var_1.c, global2.a.x), 269f))), vec4<i32>(var_1.d.a.x, -max(global4.b.x & 49835i, -1i), firstLeadingBit(_wgslsmith_dot_vec4_i32(countOneBits(vec4<i32>(1024i, -61898i, -2147483647i, var_1.b.x)), var_1.d.a >> (vec4<u32>(global3.x, global3.x, global3.x, 1u) % vec4<u32>(32u)))), global4.b.x));
    let var_4 = u_input.a.zx;
    var var_5 = !(!(!(!select(vec4<bool>(false, global1.x, global1.x, false), vec4<bool>(var_2.x, global1.x, false, var_2.x), vec4<bool>(true, true, var_2.x, true)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_4);
}

