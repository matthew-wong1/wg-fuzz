struct Struct_1 {
    a: vec2<i32>,
    b: vec4<bool>,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<u32>,
    d: f32,
}

struct Struct_3 {
    a: vec4<f32>,
    b: f32,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = false;

var<private> global1: vec2<i32>;

var<private> global2: array<vec4<i32>, 29>;

var<private> global3: Struct_2;

var<private> global4: array<Struct_3, 11>;

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: vec3<f32>, arg_1: vec2<f32>) -> u32 {
    let var_0 = global4[_wgslsmith_index_u32(~(~global3.c.x), 11u)];
    var var_1 = vec4<u32>(var_0.c.c.x << (~(~(~0u)) % 32u), abs(1u), u_input.c.x, firstLeadingBit(~_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.c.c.x, 4294967295u, u_input.c.x), vec3<u32>(u_input.c.x, 4294967295u, 60871u))));
    let var_2 = !all(var_0.c.b.e);
    global4 = array<Struct_3, 11>();
    var var_3 = !var_0.c.b.e;
    return reverseBits(4294967295u);
}

fn func_2() -> Struct_2 {
    global1 = -u_input.d.yx;
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -834f), global3.d, global3.d), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.d, global3.d, global3.d)))) * vec3<f32>(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-284f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d) + -1084f)), _wgslsmith_f_op_f32(ceil(781f))));
    let var_1 = 14192u;
    global0 = true;
    var var_2 = 1i;
    return Struct_2(-55223i, Struct_1(reverseBits(global3.b.a), select(global3.b.b, !select(vec4<bool>(global3.b.c, false, global3.b.b.x, global3.b.e.x), vec4<bool>(true, global3.b.b.x, false, false), vec4<bool>(true, true, false, true)), global3.b.e.x), all(global3.b.e), ~(global3.c.x & func_3(vec3<f32>(var_0.x, -1219f, 1365f), vec2<f32>(global3.d, var_0.x))), select(vec4<bool>(all(vec4<bool>(false, false, global3.b.e.x, true)), any(vec4<bool>(true, true, global3.b.e.x, global3.b.e.x)), global3.b.e.x, false), !global3.b.b, select(global3.b.b, vec4<bool>(global3.b.b.x, global3.b.e.x, true, global3.b.e.x), false))), _wgslsmith_div_vec3_u32(~(~global3.c) ^ vec3<u32>(50204u, 4294967295u, 0u), global3.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(455f + 555f) - _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.x - var_0.x))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_3) -> vec2<i32> {
    let var_0 = func_2().b;
    var var_1 = func_2().b.e;
    var var_2 = ~arg_1.c.b.a.x & -2147483647i;
    let var_3 = vec2<i32>(-1i, firstTrailingBit(reverseBits(0i)));
    let var_4 = var_3.x;
    return var_0.a;
}

fn func_1(arg_0: bool) -> Struct_1 {
    global0 = true;
    global1 = max(global3.b.a, func_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, -1138f, 511f, -988f) - _wgslsmith_div_vec4_f32(vec4<f32>(-475f, -1484f, global3.d, global3.d), vec4<f32>(352f, global3.d, global3.d, 176f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.d, global3.d, global3.d, 1000f)))), Struct_3(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(global3.d, -1533f, 2118f, -1381f), vec4<f32>(561f, 809f, global3.d, 180f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(780f, 1000f, -1013f, 441f) - vec4<f32>(global3.d, -199f, -903f, -1963f)), global3.b.b.x)), _wgslsmith_f_op_f32(abs(global3.d)), func_2(), true | any(vec2<bool>(true, false)))));
    var var_0 = !any(global3.b.e.yw);
    global4 = array<Struct_3, 11>();
    global1 = vec2<i32>(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(max(~global3.a, global1.x), _wgslsmith_dot_vec2_i32(global3.b.a, global3.b.a), func_2().a), ~0i), _wgslsmith_dot_vec4_i32(vec4<i32>(-1i) * -global2[_wgslsmith_index_u32(global3.c.x, 29u)], global2[_wgslsmith_index_u32(_wgslsmith_div_u32(u_input.c.x, u_input.b.x) >> (83825u % 32u), 29u)]) & global3.a);
    return func_2().b;
}

fn func_5(arg_0: Struct_1, arg_1: i32, arg_2: u32) -> Struct_3 {
    let var_0 = Struct_4(Struct_1(vec2<i32>(-1i) * -vec2<i32>(0i, -2147483647i), vec4<bool>((arg_0.e.x & false) || false, true, !global3.b.b.x, all(vec3<bool>(global3.b.b.x, global3.b.e.x, global3.b.e.x))), !any(arg_0.e), _wgslsmith_mult_u32(max(arg_0.d >> (arg_2 % 32u), ~0u), _wgslsmith_mod_u32(global3.c.x, ~4294967295u)), !vec4<bool>(all(global3.b.e.ywz), !global3.b.c, !arg_0.b.x, global3.b.c)), _wgslsmith_sub_u32(min(~_wgslsmith_mod_u32(1u, 1u), countOneBits(global3.c.x)), arg_2), ~1u, Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1596f, global3.d, -1048f, -242f) * _wgslsmith_div_vec4_f32(vec4<f32>(global3.d, global3.d, global3.d, global3.d), vec4<f32>(global3.d, global3.d, -784f, global3.d))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(global3.d, -194f, 163f, global3.d)))), -215f, Struct_2(abs(global3.a) ^ arg_1, Struct_1(-vec2<i32>(6477i, -65528i), arg_0.e, global3.b.c, func_2().c.x, !arg_0.b), _wgslsmith_sub_vec3_u32(global3.c, global3.c) | u_input.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global3.d, 1000f))), true), true);
    var var_1 = global3.d;
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-967f, _wgslsmith_f_op_f32(select(-160f, global3.d, global3.b.b.x))))))), -558f);
    let var_3 = func_2().b;
    var var_4 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(-1101f, var_2, _wgslsmith_f_op_f32(sign(2058f))))))) - vec3<f32>(_wgslsmith_f_op_f32(step(global3.d, -902f)), -193f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2)))));
    return var_0.d;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(51088i);
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -304f);
    var var_2 = func_5(func_1(!global3.b.c), reverseBits(abs(_wgslsmith_dot_vec3_i32(u_input.d | vec3<i32>(-1i, global1.x, -46219i), vec3<i32>(-9584i, global3.b.a.x, global3.a)))), _wgslsmith_dot_vec2_u32((vec2<u32>(1u, 4294967295u) | _wgslsmith_clamp_vec2_u32(global3.c.yx, global3.c.yx, vec2<u32>(global3.c.x, 57542u))) ^ vec2<u32>(u_input.c.x, min(global3.c.x, global3.b.d)), _wgslsmith_mod_vec2_u32(select(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b.x, 4294967295u), global3.c.zx), abs(u_input.b.yx), true), ~_wgslsmith_sub_vec2_u32(vec2<u32>(global3.c.x, u_input.b.x), vec2<u32>(16679u, u_input.c.x)))));
    var_2 = global4[_wgslsmith_index_u32(abs(global3.b.d), 11u)];
    var var_3 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(var_2.a.xx - _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1, var_1))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(vec2<f32>(global3.d, 427f), _wgslsmith_f_op_vec2_f32(max(var_2.a.wz, vec2<f32>(var_1, var_1)))), vec2<f32>(_wgslsmith_f_op_f32(-var_1), _wgslsmith_f_op_f32(var_2.b * 2007f)))) * var_2.a.xx));
    let var_4 = _wgslsmith_f_op_f32(-var_2.b);
    global2 = array<vec4<i32>, 29>();
    let x = u_input.a;
    s_output = StorageBuffer(-(~43470i));
}

