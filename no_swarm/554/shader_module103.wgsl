struct Struct_1 {
    a: vec2<bool>,
    b: vec3<i32>,
    c: vec4<u32>,
    d: f32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: u32,
    d: f32,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<u32>,
    b: vec4<f32>,
    c: i32,
    d: Struct_4,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 1>;

var<private> global1: array<vec3<bool>, 31> = array<vec3<bool>, 31>(vec3<bool>(false, true, false), vec3<bool>(false, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, false));

var<private> global2: vec4<u32> = vec4<u32>(1u, 14871u, 46944u, 18385u);

var<private> global3: vec2<bool>;

var<private> global4: u32;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>) -> vec3<bool> {
    var var_0 = vec3<i32>(-max(_wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 2147483647i, 2147483647i, 1i), vec4<i32>(0i, u_input.a, u_input.a, u_input.a), vec4<i32>(-16315i, u_input.a, 11161i, -2147483647i)), ~vec4<i32>(32635i, u_input.a, u_input.a, -14043i)), -27687i), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(abs(min(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a))), abs(_wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, u_input.a), vec2<i32>(u_input.a, u_input.a)))), _wgslsmith_mult_i32(u_input.a, _wgslsmith_mult_i32(~u_input.a, u_input.a ^ 28169i))), -_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), reverseBits(vec4<i32>(2147483647i, u_input.a, u_input.a, 19896i))), u_input.a >> (_wgslsmith_sub_u32(global2.x, 53412u) % 32u), u_input.a));
    var var_1 = vec3<i32>(_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-(vec4<i32>(var_0.x, var_0.x, var_0.x, u_input.a) | vec4<i32>(var_0.x, -13711i, u_input.a, var_0.x)), ~vec4<i32>(53921i, -2147483647i, u_input.a, var_0.x)), firstTrailingBit(vec4<i32>(-15312i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, 2147483647i, var_0.x, -8515i), vec4<i32>(u_input.a, u_input.a, u_input.a, 16125i)), 26803i << (global2.x % 32u), 1i))), abs(_wgslsmith_sub_i32(~var_0.x ^ -39376i, -(~u_input.a))), u_input.a);
    let var_2 = global2.yzz;
    let var_3 = 0u;
    var_1 = vec3<i32>(var_1.x, reverseBits(1i), 5983i);
    return select(select(select(select(global1[_wgslsmith_index_u32(1612u, 31u)], !vec3<bool>(global3.x, global3.x, true), global1[_wgslsmith_index_u32(~var_2.x, 31u)]), select(select(vec3<bool>(global3.x, global3.x, global3.x), global1[_wgslsmith_index_u32(var_2.x, 31u)], global3.x), global1[_wgslsmith_index_u32(var_3, 31u)], global1[_wgslsmith_index_u32(1u, 31u)]), true), select(global1[_wgslsmith_index_u32(global2.x, 31u)], vec3<bool>(any(global1[_wgslsmith_index_u32(16438u, 31u)]), !global3.x, global3.x), global1[_wgslsmith_index_u32(_wgslsmith_add_u32(global2.x << (1u % 32u), 4294967295u >> (global2.x % 32u)), 31u)]), all(vec3<bool>(global3.x, all(vec3<bool>(global3.x, true, false)), true))), global1[_wgslsmith_index_u32(abs(4294967295u), 31u)], select(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(global2.x, 138260u, 19887u), max(_wgslsmith_mult_vec3_u32(global2.yxx, vec3<u32>(13483u, global2.x, 9198u)), _wgslsmith_mult_vec3_u32(global2.zxw, global2.xwz))), 31u)], vec3<bool>(u_input.a <= (i32(-1i) * -1i), 972f < _wgslsmith_f_op_f32(ceil(449f)), !global3.x == (arg_0.x >= -1014f)), vec3<bool>(global3.x & !global3.x, true, global3.x)));
}

fn func_2(arg_0: i32, arg_1: f32, arg_2: vec2<i32>) -> vec4<bool> {
    let var_0 = !global1[_wgslsmith_index_u32(13286u, 31u)];
    var var_1 = Struct_5(~_wgslsmith_sub_vec2_u32(global2.wx >> (_wgslsmith_sub_vec2_u32(vec2<u32>(global2.x, global2.x), vec2<u32>(global2.x, global2.x)) % vec2<u32>(32u)), reverseBits(_wgslsmith_mult_vec2_u32(global2.xw, vec2<u32>(32908u, global2.x)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_1, 1751f, 165f, -1000f) * vec4<f32>(arg_1, arg_1, arg_1, 536f))))) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1136f), arg_1, _wgslsmith_div_f32(arg_1, arg_1), _wgslsmith_f_op_f32(arg_1 * arg_1)) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1, arg_1, -1647f, arg_1)) + vec4<f32>(-176f, arg_1, -208f, -368f)))), arg_2.x, Struct_4(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1144f, -451f)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1, arg_1)), select(vec2<bool>(true, true), vec2<bool>(var_0.x, global3.x), var_0.x))), func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(661f, arg_1)) - _wgslsmith_f_op_vec2_f32(vec2<f32>(-551f, 1907f) + vec2<f32>(778f, 858f)))), Struct_3(Struct_1(!vec2<bool>(global3.x, var_0.x), firstLeadingBit(vec3<i32>(u_input.a, 1i, u_input.a)), _wgslsmith_div_vec4_u32(vec4<u32>(global2.x, global2.x, 1u, 17510u), vec4<u32>(global2.x, global2.x, global2.x, 51973u)), arg_1, ~vec4<u32>(1u, global2.x, 1u, global2.x)), Struct_1(vec2<bool>(true, true), vec3<i32>(u_input.a, arg_0, u_input.a), vec4<u32>(36245u, 1u, 1u, global2.x), -983f, _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 79568u, global2.x, 28465u), vec4<u32>(35149u, 1u, global2.x, 5291u))), Struct_1(vec2<bool>(false, global3.x), vec3<i32>(-13442i, 18037i, u_input.a), _wgslsmith_mod_vec4_u32(vec4<u32>(0u, 4610u, global2.x, global2.x), vec4<u32>(global2.x, global2.x, 57935u, 4294967295u)), _wgslsmith_f_op_f32(-1383f + -1441f), _wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 0u, 1u, global2.x), vec4<u32>(global2.x, 256u, 4294967295u, global2.x), vec4<u32>(39369u, 1u, 55335u, global2.x))))));
    let var_2 = !select(!select(vec4<bool>(global3.x, false, global3.x, false), !vec4<bool>(var_0.x, var_0.x, false, true), true), select(select(vec4<bool>(false, global3.x, true, var_0.x), select(vec4<bool>(true, true, true, true), vec4<bool>(var_0.x, false, var_1.d.b.x, var_0.x), vec4<bool>(var_1.d.b.x, false, true, true)), var_0.x & false), vec4<bool>(true, true, true, true), true | var_0.x), vec4<bool>(var_0.x, var_0.x, _wgslsmith_f_op_f32(var_1.d.c.c.d * var_1.d.c.c.d) > _wgslsmith_f_op_f32(floor(601f)), false));
    var var_3 = ~_wgslsmith_sub_vec4_u32(max(~var_1.d.c.a.c | abs(var_1.d.c.c.c), _wgslsmith_mult_vec4_u32(vec4<u32>(global2.x, var_1.a.x, 4294967295u, 22962u), select(vec4<u32>(4294967295u, 107137u, var_1.d.c.b.e.x, 13787u), var_1.d.c.c.c, false))), ~_wgslsmith_mult_vec4_u32(vec4<u32>(0u, 1u, global2.x, 0u), vec4<u32>(36480u, var_1.a.x, 0u, var_1.d.c.a.e.x)));
    var var_4 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(var_1.b, vec4<f32>(-722f, arg_1, var_1.b.x, -1000f)))) - var_1.b)));
    return vec4<bool>(var_0.x, func_3(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.b.x)), _wgslsmith_f_op_f32(sign(-308f)))).x, func_3(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_1.b.wy * vec2<f32>(arg_1, -1000f))) + var_1.d.a)).x, all(vec3<bool>(true, !var_1.d.b.x, all(var_2))) && !all(var_1.d.b));
}

fn func_1(arg_0: vec3<u32>, arg_1: Struct_5) -> vec3<bool> {
    let var_0 = select(!vec4<bool>(!global3.x, !(!arg_1.d.c.b.a.x), all(select(vec4<bool>(false, true, global3.x, arg_1.d.b.x), vec4<bool>(true, arg_1.d.b.x, global3.x, true), vec4<bool>(false, false, global3.x, true))), true), select(func_2(select(-75891i, u_input.a, true), -623f, vec2<i32>(-2147483647i, 16885i)), !select(vec4<bool>(false, false, true, true), func_2(0i, -850f, vec2<i32>(-13372i, u_input.a)), true), !arg_1.d.c.a.a.x), select(true, false, 1u <= arg_1.a.x));
    let var_1 = global0[_wgslsmith_index_u32(~(~_wgslsmith_div_u32(max(arg_1.d.c.a.e.x, _wgslsmith_mod_u32(arg_0.x, 1u)), arg_1.d.c.a.e.x)), 1u)];
    var var_2 = Struct_3(arg_1.d.c.b, arg_1.d.c.c, var_1.c);
    global2 = vec4<u32>(1u, ~((_wgslsmith_add_u32(1u, arg_0.x) << (var_2.c.c.x % 32u)) >> (_wgslsmith_clamp_u32(0u, arg_0.x, min(0u, var_1.a.c.x)) % 32u)), var_2.c.c.x, arg_1.d.c.b.c.x);
    let var_3 = ~min(arg_1.d.c.b.b.yz, vec2<i32>(_wgslsmith_clamp_i32(1i, u_input.a, arg_1.c), var_2.a.b.x));
    return vec3<bool>(true, var_1.c.a.x || all(var_0), !arg_1.d.c.a.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = all(func_1(_wgslsmith_clamp_vec3_u32(~_wgslsmith_mult_vec3_u32(global2.zwy, vec3<u32>(1648u, global2.x, global2.x)), ~global2.zwx, _wgslsmith_div_vec3_u32(abs(vec3<u32>(6605u, 4294967295u, 91731u)), ~vec3<u32>(4294967295u, global2.x, 10957u))), Struct_5((global2.wz ^ vec2<u32>(global2.x, global2.x)) << (global2.xz % vec2<u32>(32u)), _wgslsmith_f_op_vec4_f32(vec4<f32>(-1322f, -1184f, 369f, 555f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-210f, -256f, -574f, 458f), vec4<f32>(591f, 1855f, 232f, -916f), false))), -u_input.a, Struct_4(_wgslsmith_f_op_vec2_f32(vec2<f32>(769f, 1233f) + vec2<f32>(-1160f, 456f)), global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(global2.yw, global2.xw), 31u)], global0[_wgslsmith_index_u32(~global2.x, 1u)]))));
    let var_1 = false;
    global4 = reverseBits(24521u);
    global2 = ~countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(60207u, 0u, global2.x, global2.x), ~vec4<u32>(4238u, global2.x, global2.x, global2.x)) ^ ((vec4<u32>(21604u, 894u, 44013u, global2.x) >> (vec4<u32>(85130u, 16892u, global2.x, 45111u) % vec4<u32>(32u))) << (select(vec4<u32>(4294967295u, global2.x, 4294967295u, 67255u), vec4<u32>(38431u, global2.x, 4294967295u, 1u), vec4<bool>(global3.x, var_1, true, global3.x)) % vec4<u32>(32u))));
    var var_2 = global2.yxx;
    let var_3 = var_2.zy;
    var var_4 = vec3<bool>(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -497f), _wgslsmith_f_op_f32(-1313f * -1448f)))).x, func_1(vec3<u32>(var_3.x, var_3.x, _wgslsmith_sub_u32(min(var_3.x, 73790u), _wgslsmith_clamp_u32(global2.x, var_2.x, 47227u))), Struct_5(_wgslsmith_sub_vec2_u32(global2.zy, var_2.xz) | vec2<u32>(731u, var_3.x), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-641f, 1152f, 392f, -1000f)), vec4<f32>(230f, -301f, 1000f, -1000f))), u_input.a, Struct_4(vec2<f32>(1764f, 866f), vec3<bool>(var_0, var_1, false), Struct_3(Struct_1(vec2<bool>(var_0, var_1), vec3<i32>(-1i, -67883i, u_input.a), vec4<u32>(var_2.x, var_3.x, global2.x, 127433u), 456f, vec4<u32>(88134u, global2.x, var_3.x, var_3.x)), Struct_1(vec2<bool>(true, false), vec3<i32>(26614i, u_input.a, -13704i), vec4<u32>(var_2.x, global2.x, 65862u, 0u), -265f, vec4<u32>(var_2.x, 0u, global2.x, global2.x)), Struct_1(vec2<bool>(global3.x, global3.x), vec3<i32>(-1i, u_input.a, -2147483647i), vec4<u32>(var_3.x, var_3.x, 9106u, global2.x), -902f, vec4<u32>(0u, global2.x, 1u, 1u)))))).x, select(!(!var_0), !var_0, var_1));
    let var_5 = min(~var_2.x, firstLeadingBit(~117305u));
    var var_6 = vec4<bool>(true, !var_0, 2147483647i < _wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec2_i32(abs(vec2<i32>(u_input.a, u_input.a)), firstTrailingBit(vec2<i32>(u_input.a, 1i)))), ((var_2.x ^ ~27668u) & select(_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global2.x, global2.x), global2.zxz), global2.x, -6590i != u_input.a)) != var_5);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a, 1i, _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-522f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1326f, 1000f)))))));
}

