struct Struct_1 {
    a: i32,
    b: bool,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: vec4<bool>,
    b: vec4<bool>,
    c: vec3<i32>,
    d: u32,
    e: bool,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: vec2<bool>,
}

struct Struct_5 {
    a: Struct_1,
    b: u32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec2<u32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec3<bool>;

var<private> global2: Struct_4;

var<private> global3: u32 = 95u;

var<private> global4: array<vec4<u32>, 1>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: i32) -> f32 {
    var var_0 = Struct_2(arg_2.c);
    global1 = !(!select(vec3<bool>(false, true, global2.b.b), select(select(vec3<bool>(global1.x, global2.b.b, global2.c.x), vec3<bool>(arg_2.b, arg_2.b, true), arg_1.d), vec3<bool>(arg_2.b, false, global1.x), !vec3<bool>(arg_2.b, global2.c.x, global1.x)), !vec3<bool>(false, arg_1.b, false)));
    global3 = _wgslsmith_dot_vec3_u32(select(~vec3<u32>(arg_0.x, 54145u, 4294967295u), vec3<u32>(_wgslsmith_div_u32(~arg_0.x, _wgslsmith_div_u32(1u, arg_0.x)), 1881u, 1u), var_0.a > 1531f), select(~_wgslsmith_mult_vec3_u32(~vec3<u32>(1235u, arg_0.x, 4294967295u), _wgslsmith_mult_vec3_u32(vec3<u32>(61967u, arg_0.x, arg_0.x), vec3<u32>(1u, 1u, 4294967295u))), vec3<u32>(select(48621u, 4294967295u, arg_1.b), arg_0.x, arg_0.x), !select(select(vec3<bool>(true, arg_2.b, true), vec3<bool>(global1.x, false, false), vec3<bool>(arg_2.d, true, global1.x)), select(vec3<bool>(arg_2.b, false, false), vec3<bool>(false, global2.b.b, false), vec3<bool>(true, false, false)), !vec3<bool>(true, arg_1.b, false))));
    var var_1 = _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(vec2<f32>(arg_2.c, 1314f), vec2<f32>(arg_1.c, arg_1.c))))))));
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.c, var_0.a) + -1145f), arg_1.c), _wgslsmith_f_op_vec2_f32(-vec2<f32>(966f, 758f)))));
    return _wgslsmith_f_op_f32(1108f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.c)) * var_1.x)));
}

fn func_2() -> Struct_4 {
    global4 = array<vec4<u32>, 1>();
    global0 = _wgslsmith_mult_i32(-(~(~_wgslsmith_dot_vec2_i32(u_input.a.xz, u_input.a.yy))), abs(global2.a.x));
    let var_0 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global2.b.c - -1541f)) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global2.b.c), _wgslsmith_f_op_f32(func_3(vec2<u32>(4294967295u, 38739u), global2.b, Struct_1(global2.a.x, global1.x, -889f, true), global2.a.x)), global2.a.x != -72868i))), _wgslsmith_f_op_f32(select(-127f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(floor(-537f)))), select(all(vec2<bool>(global1.x, global2.c.x)), true, global1.x))), true))));
    let var_1 = u_input.a.xw;
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(1687f)), -891f)))));
    return Struct_4(~(-select(-vec4<i32>(var_1.x, -32863i, global2.b.a, var_1.x), vec4<i32>(1i, u_input.a.x, 52274i, -31607i), select(vec4<bool>(global1.x, global2.b.b, true, global2.c.x), vec4<bool>(global1.x, false, false, false), vec4<bool>(true, true, true, false)))), global2.b, vec2<bool>(false, any(vec2<bool>(true, global2.b.b))));
}

fn func_1(arg_0: vec3<f32>, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> vec3<i32> {
    var var_0 = vec3<u32>(~1u, _wgslsmith_mult_u32(61203u, min(4294967295u & (0u & arg_2.d), _wgslsmith_mod_u32(~arg_2.d, arg_2.d))), _wgslsmith_dot_vec4_u32(vec4<u32>(arg_2.d, ~(~4294967295u), 6647u, ~_wgslsmith_mult_u32(arg_2.d, arg_2.d)), ~vec4<u32>(arg_2.d, _wgslsmith_div_u32(arg_2.d, 8258u), _wgslsmith_dot_vec3_u32(vec3<u32>(9751u, arg_2.d, 64867u), vec3<u32>(arg_2.d, arg_2.d, 43797u)), 34490u)));
    let var_1 = var_0.x;
    global2 = func_2();
    var var_2 = firstLeadingBit(~_wgslsmith_div_vec3_u32(reverseBits(vec3<u32>(4294967295u, var_0.x, 2664u)), vec3<u32>(arg_2.d, 1u, var_0.x))) & _wgslsmith_div_vec3_u32(vec3<u32>(arg_2.d, var_0.x, arg_2.d), _wgslsmith_mod_vec3_u32(abs(vec3<u32>(var_0.x, var_0.x, var_0.x)) | min(vec3<u32>(108499u, 11963u, arg_2.d), vec3<u32>(4294967295u, 8186u, arg_2.d)), ~(~vec3<u32>(55707u, 4294967295u, var_0.x))));
    let var_3 = Struct_4(u_input.a, Struct_1(_wgslsmith_mod_i32(~(~(-13445i)), max(-2147483647i, u_input.a.x << (arg_2.d % 32u))), arg_2.a.x, _wgslsmith_f_op_f32(arg_0.x + -986f), true), !(!select(vec2<bool>(true, global2.c.x), select(vec2<bool>(global1.x, global2.b.d), vec2<bool>(false, true), vec2<bool>(true, global2.c.x)), vec2<bool>(true, global2.b.b))));
    return abs(vec3<i32>(_wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(arg_2.c.yx, global2.a.zz), global2.a.yz), ~_wgslsmith_dot_vec3_i32(global2.a.wwy, vec3<i32>(-5023i, -20347i, 0i)), ~(u_input.a.x & -1i)) | var_3.a.zww);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(global2.b.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b.c)), _wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(1980f - -513f)), !(!global1.x)))), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-678f * global2.b.c))), _wgslsmith_f_op_f32(f32(-1f) * -1013f));
    global0 = select(u_input.a.x, firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -12847i, global2.a.x, global2.a.x), u_input.a) ^ select(-global2.a.x, ~global2.a.x, global2.c.x == global2.b.b)), true);
    var var_1 = _wgslsmith_mod_vec3_i32(_wgslsmith_sub_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-u_input.a.x, ~(-2147483647i), u_input.a.x & global2.b.a), ~func_1(vec3<f32>(var_0.x, 256f, 223f), 1000f, Struct_3(vec4<bool>(true, global1.x, global2.c.x, true), vec4<bool>(global2.b.b, global1.x, global1.x, true), global2.a.yzz, 0u, false), global2.b.a)), -global2.a.yyy), -firstTrailingBit(u_input.a.ywx) >> (vec3<u32>(1u, 1u, 1u) % vec3<u32>(32u)));
    var var_2 = Struct_1(1i | global2.b.a, true, global2.b.c, true);
    let var_3 = select(~vec2<u32>(1u, 1u), select(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, 1u), max(vec3<u32>(4294967295u, 4294967295u, 1u), vec3<u32>(7535u, 4294967295u, 1u))), ~55388u), ~vec2<u32>(~1u, _wgslsmith_add_u32(4082u, 17401u)), vec2<bool>(select(global1.x, !global1.x, global1.x), var_2.a > ~var_2.a)), vec2<bool>(global2.c.x, true & global1.x));
    global1 = vec3<bool>(any(!vec3<bool>(25592u >= var_3.x, true, false)), !(!(!all(vec2<bool>(true, true)))), global1.x);
    var var_4 = Struct_3(!select(!select(vec4<bool>(global2.c.x, var_2.b, true, false), vec4<bool>(true, true, var_2.b, global2.c.x), vec4<bool>(global2.c.x, global2.b.b, true, true)), select(!vec4<bool>(global2.c.x, false, global1.x, false), !vec4<bool>(var_2.d, global2.c.x, false, true), vec4<bool>(global2.c.x, false, false, false)), !(!vec4<bool>(global1.x, true, global1.x, var_2.d))), !select(select(select(vec4<bool>(false, var_2.b, global1.x, true), vec4<bool>(true, true, true, var_2.b), vec4<bool>(false, global2.b.d, false, false)), select(vec4<bool>(true, global2.b.b, global2.b.b, false), vec4<bool>(false, true, global2.c.x, global1.x), vec4<bool>(global2.b.b, var_2.b, true, global2.c.x)), !vec4<bool>(true, var_2.d, global2.b.b, false)), vec4<bool>(all(vec4<bool>(true, var_2.b, false, global1.x)), true, global2.c.x, !global2.b.b), vec4<bool>(global2.c.x, true, var_2.b, all(vec4<bool>(global2.c.x, global1.x, global1.x, global2.c.x)))), vec3<i32>(~(~_wgslsmith_mod_i32(u_input.a.x, -65540i)), ~1i, _wgslsmith_dot_vec4_i32(global2.a | vec4<i32>(u_input.a.x, var_1.x, -2147483647i, var_2.a), firstLeadingBit(select(u_input.a, u_input.a, global2.b.b)))), 1u, func_2().c.x & false);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~(firstLeadingBit(var_1.x) | firstTrailingBit(var_1.x))), vec2<u32>(1u, 0u), vec2<u32>(~4294967295u, ~0u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(var_0.wyz + var_0.xyz)));
}

