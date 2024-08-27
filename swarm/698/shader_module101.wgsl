struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: bool,
    d: vec2<u32>,
    e: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<i32>,
}

struct Struct_3 {
    a: vec4<bool>,
    b: Struct_1,
    c: u32,
}

struct Struct_4 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: Struct_3,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
    c: vec4<i32>,
    d: f32,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<f32>, 32>;

var<private> global1: array<i32, 17>;

var<private> global2: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, false, false, true), vec3<f32>(-121f, 171f, -749f), false, vec2<u32>(0u, 1u), 911f), vec3<i32>(2147483647i, 3871i, 2147483647i));

var<private> global3: Struct_2 = Struct_2(Struct_1(vec4<bool>(false, true, false, true), vec3<f32>(577f, 1747f, -694f), false, vec2<u32>(47531u, 1u), 200f), vec3<i32>(6318i, -1i, 2147483647i));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn func_3(arg_0: vec4<u32>, arg_1: vec2<bool>, arg_2: Struct_4, arg_3: Struct_4) -> vec3<f32> {
    global3 = Struct_2(Struct_1(vec4<bool>(false, !(!global2.a.c), !arg_1.x, true), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1246f * -993f)), _wgslsmith_f_op_f32(-global3.a.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.b.b.x - arg_2.c.b.b.x) - 1000f)), all(arg_2.c.a), global2.a.d, global3.a.b.x), _wgslsmith_mod_vec3_i32(-(~(-vec3<i32>(global3.b.x, 38753i, arg_3.e.x))), firstLeadingBit(-vec3<i32>(arg_3.b.x, u_input.a.x, arg_2.e.x)) >> (vec3<u32>(firstTrailingBit(arg_0.x), ~arg_3.c.b.d.x, arg_2.a.x) % vec3<u32>(32u))));
    global1 = array<i32, 17>();
    global3 = Struct_2(arg_3.c.b, global2.b << (arg_3.a.ywy % vec3<u32>(32u)));
    global2 = Struct_2(Struct_1(!global3.a.a, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(sign(global3.a.e)), _wgslsmith_div_f32(global2.a.b.x, arg_3.c.b.e), global3.a.b.x) * _wgslsmith_f_op_vec3_f32(select(arg_2.c.b.b, vec3<f32>(817f, global3.a.b.x, 1020f), all(global2.a.a.yyy)))), !arg_1.x, _wgslsmith_div_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.x, global2.a.d.x), arg_0.xx), firstLeadingBit(vec2<u32>(4294967295u, 28937u))), arg_2.c.b.e), ~arg_2.e.ywx);
    global0 = array<vec3<f32>, 32>();
    return _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_2.c.b.b)))));
}

fn func_2(arg_0: vec4<f32>, arg_1: Struct_3) -> vec4<i32> {
    global3 = Struct_2(Struct_1(!(!(!global2.a.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(~vec4<u32>(global3.a.d.x, 26341u, 3317u, arg_1.c), !arg_1.a.xz, Struct_4(vec4<u32>(6190u, 31658u, global2.a.d.x, 41283u), u_input.a, arg_1, arg_1.a.xw, vec4<i32>(2147483647i, 3660i, global2.b.x, global2.b.x)), Struct_4(vec4<u32>(0u, arg_1.c, 14500u, 20896u), u_input.a, arg_1, global3.a.a.yw, vec4<i32>(global1[_wgslsmith_index_u32(40769u, 17u)], u_input.b, global1[_wgslsmith_index_u32(0u, 17u)], global1[_wgslsmith_index_u32(global3.a.d.x, 17u)]))))), true, ~_wgslsmith_sub_vec2_u32(~vec2<u32>(4294967295u, 28361u), ~arg_1.b.d), _wgslsmith_f_op_f32(arg_0.x - 242f)), global3.b);
    var var_0 = Struct_2(Struct_1(global2.a.a, _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(min(arg_0.wwz, _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b.x, 519f, global3.a.e)))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(526f, -585f, global2.a.e), vec3<f32>(global2.a.e, -779f, 342f))))))), arg_1.a.x, ~min(vec2<u32>(4303u, global3.a.d.x), ~vec2<u32>(35578u, 4294967295u)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.b.e - 1000f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(round(-311f)))))), firstTrailingBit(global2.b));
    global2 = Struct_2(Struct_1(var_0.a.a, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b.x, global2.a.e, arg_0.x))) * _wgslsmith_f_op_vec3_f32(min(vec3<f32>(1000f, arg_0.x, -1497f), _wgslsmith_f_op_vec3_f32(vec3<f32>(-528f, arg_0.x, arg_0.x) - vec3<f32>(global2.a.b.x, arg_1.b.b.x, global2.a.e))))), !all(vec2<bool>(arg_1.b.c, false)), select(_wgslsmith_div_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.c, 0u), vec2<u32>(4294967295u, 38446u)), _wgslsmith_mult_vec2_u32(vec2<u32>(50516u, u_input.c), vec2<u32>(global2.a.d.x, 1u))), ~_wgslsmith_clamp_vec2_u32(global3.a.d, global2.a.d, var_0.a.d), !(!vec2<bool>(global3.a.a.x, arg_1.a.x))), arg_0.x), vec3<i32>(-1i) * -global3.b);
    let var_1 = arg_1.a.x;
    global1 = array<i32, 17>();
    return vec4<i32>(_wgslsmith_clamp_i32(0i, abs(min(i32(-1i) * -18544i, u_input.a.x)), 1i), -2147483647i, global2.b.x, -86995i);
}

fn func_4(arg_0: vec4<i32>) -> Struct_4 {
    var var_0 = vec2<bool>(!(!any(vec3<bool>(global3.a.a.x, false, true)) || true), !global3.a.c | !select(global3.a.a.x || true, true, u_input.c >= 4294967295u));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(exp2(global3.a.e)), _wgslsmith_div_f32(global3.a.e, _wgslsmith_f_op_f32(trunc(430f))));
    var_0 = global2.a.a.yx;
    var var_2 = global2.a.d.x;
    var var_3 = Struct_2(Struct_1(vec4<bool>(true & !global3.a.c, !global3.a.a.x | any(vec2<bool>(false, false)), !(36497i <= arg_0.x), !var_0.x && !global2.a.a.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(global0[_wgslsmith_index_u32(global3.a.d.x, 32u)], global0[_wgslsmith_index_u32(0u, 32u)]))))), all(vec4<bool>(all(vec2<bool>(false, global2.a.c)), global2.a.a.x, global2.a.c, false)), reverseBits(vec2<u32>(_wgslsmith_clamp_u32(63640u, 2654u, 4294967295u), _wgslsmith_sub_u32(global3.a.d.x, global3.a.d.x))), _wgslsmith_f_op_f32(global3.a.e * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global2.a.e))))), arg_0.xwy);
    return Struct_4(_wgslsmith_mod_vec4_u32((vec4<u32>(u_input.c, global2.a.d.x, global2.a.d.x, 26977u) >> (vec4<u32>(22470u, 5836u, global3.a.d.x, 1u) % vec4<u32>(32u))) >> (select(~vec4<u32>(5187u, 1u, 4294967295u, global2.a.d.x), abs(vec4<u32>(27664u, 0u, 81600u, 1u)), !var_3.a.a) % vec4<u32>(32u)), ~vec4<u32>(u_input.c, var_3.a.d.x ^ var_3.a.d.x, _wgslsmith_div_u32(global2.a.d.x, 0u), 1u)), vec2<i32>(1i, global3.b.x), Struct_3(var_3.a.a, Struct_1(vec4<bool>(true, global2.a.a.x, var_3.a.c, 0u > u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.e, global2.a.b.x, global3.a.e)) * _wgslsmith_f_op_vec3_f32(step(vec3<f32>(497f, global2.a.e, 945f), global3.a.b))), any(select(vec2<bool>(true, true), vec2<bool>(global2.a.a.x, true), var_3.a.a.xz)), _wgslsmith_clamp_vec2_u32(min(global2.a.d, vec2<u32>(0u, var_3.a.d.x)), firstLeadingBit(global2.a.d), ~vec2<u32>(global2.a.d.x, var_3.a.d.x)), _wgslsmith_f_op_f32(-302f - _wgslsmith_f_op_f32(global2.a.b.x + -226f))), var_3.a.d.x), !(!vec2<bool>(global2.a.a.x, true)), arg_0);
}

fn func_1() -> vec4<u32> {
    let var_0 = func_4(select(_wgslsmith_mod_vec4_i32(-vec4<i32>(global1[_wgslsmith_index_u32(14377u, 17u)], global3.b.x, 1i, 47238i), func_2(vec4<f32>(global2.a.e, global3.a.b.x, global3.a.e, 1586f), Struct_3(vec4<bool>(true, false, false, global2.a.c), global3.a, 1u))), -(~vec4<i32>(u_input.b, -1i, global3.b.x, -33656i)), !global2.a.c) ^ vec4<i32>(min(~(-2147483647i), -21586i), -global2.b.x, -40988i, ~u_input.a.x));
    var var_1 = global3.b;
    let var_2 = global2.b.x;
    var var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-786f, -543f, global3.a.b.x, 1123f)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.a.e, 1514f, -632f, var_0.c.b.e), vec4<f32>(-345f, global3.a.e, var_0.c.b.b.x, 103f), true))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c.b.e, 1000f, global3.a.b.x, -2204f))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global3.a.e, -938f, global3.a.b.x, -929f) * vec4<f32>(-952f, global2.a.e, -187f, var_0.c.b.b.x)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(978f, -1402f, global2.a.b.x, global3.a.e) - vec4<f32>(-1989f, 152f, 760f, -169f))))));
    global1 = array<i32, 17>();
    return vec4<u32>(_wgslsmith_mod_u32(~global3.a.d.x, 49860u), 37704u, _wgslsmith_div_u32(~_wgslsmith_add_u32(22584u & global3.a.d.x, global3.a.d.x), u_input.c), ~global3.a.d.x & var_0.c.c);
}

fn func_5(arg_0: vec4<i32>) -> vec2<i32> {
    global2 = Struct_2(func_4(~vec4<i32>(_wgslsmith_mult_i32(-47575i, 0i), global1[_wgslsmith_index_u32(4560u, 17u)] >> (15046u % 32u), 67i, min(global3.b.x, u_input.a.x))).c.b, ~(~vec3<i32>(arg_0.x, abs(global2.b.x), func_2(vec4<f32>(687f, global3.a.b.x, -2902f, global2.a.e), Struct_3(global2.a.a, Struct_1(vec4<bool>(true, true, false, true), global0[_wgslsmith_index_u32(1u, 32u)], true, vec2<u32>(global2.a.d.x, 1u), global3.a.e), global2.a.d.x)).x)));
    global2 = Struct_2(func_4(arg_0 >> (~_wgslsmith_sub_vec4_u32(vec4<u32>(1681u, global2.a.d.x, u_input.c, 2802u), vec4<u32>(1u, 81038u, 98525u, global2.a.d.x)) % vec4<u32>(32u))).c.b, abs(global2.b));
    global0 = array<vec3<f32>, 32>();
    let var_0 = Struct_4(~_wgslsmith_mod_vec4_u32(~vec4<u32>(u_input.c, 51039u, 1u, u_input.c), abs(vec4<u32>(53864u, 1u, 4294967295u, 0u))), select(vec2<i32>(-global2.b.x & _wgslsmith_mult_i32(u_input.b, 21426i), _wgslsmith_sub_i32(1i, -469i << (global2.a.d.x % 32u))), vec2<i32>(arg_0.x, 0i) >> (abs(max(global3.a.d, global3.a.d)) % vec2<u32>(32u)), vec2<bool>(all(global2.a.a.xx) | !global3.a.a.x, all(vec2<bool>(true, true)))), func_4(vec4<i32>(1i, _wgslsmith_clamp_i32(global3.b.x, -1i, 1i), _wgslsmith_dot_vec4_i32(arg_0, firstLeadingBit(arg_0)), _wgslsmith_mult_i32(u_input.a.x, global2.b.x))).c, vec2<bool>(global2.a.a.x, !all(global2.a.a.zww)), ~arg_0);
    let var_1 = ~0u;
    return firstTrailingBit(~global2.b.yx);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = max(global2.b.xx, -global3.b.yz);
    global1 = array<i32, 17>();
    let var_1 = Struct_4(vec4<u32>(~abs(global2.a.d.x), ~u_input.c, _wgslsmith_div_u32(u_input.c, ~_wgslsmith_clamp_u32(26888u, global3.a.d.x, global2.a.d.x)), 15666u ^ global2.a.d.x), func_5((max(vec4<i32>(15008i, global3.b.x, global1[_wgslsmith_index_u32(20308u, 17u)], 8468i), vec4<i32>(global2.b.x, global1[_wgslsmith_index_u32(u_input.c, 17u)], global2.b.x, -2147483647i)) | ~vec4<i32>(0i, -18658i, global1[_wgslsmith_index_u32(u_input.c, 17u)], global1[_wgslsmith_index_u32(1u, 17u)])) >> (func_1() % vec4<u32>(32u))), Struct_3(select(select(!vec4<bool>(global3.a.c, true, global3.a.a.x, false), !vec4<bool>(global3.a.a.x, true, false, global2.a.a.x), !global2.a.c), global3.a.a, false), func_4(-_wgslsmith_sub_vec4_i32(vec4<i32>(16671i, -12029i, -2147483647i, -41380i), vec4<i32>(-1i, -6180i, global2.b.x, 37447i))).c.b, 4294967295u), vec2<bool>(!(!any(vec4<bool>(global3.a.c, global2.a.c, global3.a.c, true))), global2.a.b.x > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1084f - 1268f) - global3.a.e)), _wgslsmith_add_vec4_i32(-min(abs(vec4<i32>(-13428i, 1i, u_input.b, global1[_wgslsmith_index_u32(global2.a.d.x, 17u)])), vec4<i32>(global3.b.x, 0i, 1i, global2.b.x) << (vec4<u32>(0u, 4294967295u, 41167u, 10551u) % vec4<u32>(32u))), select(abs(~vec4<i32>(var_0.x, 1i, global3.b.x, -2147483647i)), max(-vec4<i32>(-15771i, -1i, -51190i, 18332i), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, 17213i, -52251i, 43040i), vec4<i32>(global3.b.x, global3.b.x, global3.b.x, global1[_wgslsmith_index_u32(49937u, 17u)]))), true)));
    let var_2 = var_1.c;
    var var_3 = _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(firstTrailingBit(func_5(vec4<i32>(6153i, -1i, global3.b.x, u_input.b)).x), 2147483647i), global1[_wgslsmith_index_u32(global3.a.d.x, 17u)], u_input.b, u_input.a.x), vec4<i32>(_wgslsmith_dot_vec2_i32(~global3.b.zy, vec2<i32>(global2.b.x, global3.b.x)), _wgslsmith_sub_i32(func_4(var_1.e << (var_1.a % vec4<u32>(32u))).b.x, abs(0i >> (global2.a.d.x % 32u))), func_2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_2.b.e, var_2.b.e, -144f, global3.a.e) * vec4<f32>(-1037f, global2.a.e, 1000f, 275f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-612f, global3.a.b.x, 1480f, 1323f))), var_1.c).x, func_5(var_1.e).x));
    var var_4 = !(global2.a.a.x && false) || !(abs(countOneBits(1u)) > var_1.c.c);
    global2 = Struct_2(Struct_1(!vec4<bool>(!global2.a.c, true, false, true), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.c.b.e, -720f, _wgslsmith_f_op_f32(sign(1000f)))), var_2.a.x | var_2.b.c, vec2<u32>(global2.a.d.x, ~var_1.a.x), _wgslsmith_f_op_f32(ceil(163f))), vec3<i32>(global2.b.x, -var_3.x, ~global1[_wgslsmith_index_u32(global2.a.d.x, 17u)]));
    let x = u_input.a;
    s_output = StorageBuffer(reverseBits(var_1.e), ~func_4(_wgslsmith_mod_vec4_i32(_wgslsmith_mult_vec4_i32(var_1.e, var_1.e), abs(var_1.e))).a.x, var_1.e, var_2.b.e, _wgslsmith_f_op_vec2_f32(sign(global2.a.b.yy)));
}

