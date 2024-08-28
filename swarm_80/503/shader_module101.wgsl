struct Struct_1 {
    a: bool,
    b: vec3<i32>,
    c: vec2<f32>,
    d: u32,
    e: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 31> = array<vec3<u32>, 31>(vec3<u32>(4294967295u, 83952u, 0u), vec3<u32>(7986u, 1255u, 4294967295u), vec3<u32>(4294967295u, 51471u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(2289u, 15304u, 0u), vec3<u32>(0u, 0u, 6570u), vec3<u32>(4294967295u, 0u, 0u), vec3<u32>(2590u, 1u, 1u), vec3<u32>(52268u, 40591u, 0u), vec3<u32>(0u, 8903u, 65002u), vec3<u32>(4294967295u, 33944u, 9188u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(66955u, 4294967295u, 4294967295u), vec3<u32>(14707u, 2632u, 1u), vec3<u32>(0u, 87417u, 0u), vec3<u32>(1u, 23363u, 53542u), vec3<u32>(1u, 19290u, 82083u), vec3<u32>(1u, 4294967295u, 1u), vec3<u32>(0u, 0u, 0u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(0u, 57928u, 19228u), vec3<u32>(4294967295u, 2870u, 41014u), vec3<u32>(4294967295u, 4294967295u, 67743u), vec3<u32>(6801u, 4294967295u, 1u), vec3<u32>(1u, 1u, 33998u), vec3<u32>(4294967295u, 1u, 0u), vec3<u32>(10762u, 107235u, 101508u), vec3<u32>(60360u, 1u, 1u), vec3<u32>(19148u, 54143u, 32573u), vec3<u32>(1u, 70369u, 6944u), vec3<u32>(1u, 4294967295u, 4294967295u));

var<private> global1: f32;

var<private> global2: Struct_1 = Struct_1(true, vec3<i32>(5593i, 1i, i32(-2147483648)), vec2<f32>(358f, -967f), 0u, 5223i);

var<private> global3: Struct_2;

var<private> global4: vec2<bool>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_2(arg_0: bool, arg_1: Struct_1) -> vec3<u32> {
    global2 = global3.a;
    let var_0 = vec2<bool>(true, true);
    global4 = !var_0;
    var var_1 = -2139i | ((_wgslsmith_dot_vec2_i32(global3.a.b.zx, ~vec2<i32>(2147483647i, arg_1.e)) & -2147483647i) | 8622i);
    let var_2 = global3.a.b.xy;
    return ~countOneBits(vec3<u32>(_wgslsmith_div_u32(global3.a.d ^ arg_1.d, arg_1.d), ~global3.a.d, 40877u));
}

fn func_3(arg_0: i32, arg_1: vec3<f32>) -> vec4<f32> {
    let var_0 = arg_1;
    var var_1 = Struct_2(global3.a, _wgslsmith_mod_i32(u_input.a & _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(global2.b.zy, vec2<i32>(0i, global2.b.x)), global2.e), u_input.a));
    global1 = 2724f;
    global0 = array<vec3<u32>, 31>();
    global3 = Struct_2(Struct_1(!all(vec3<bool>(true, false, true)), _wgslsmith_div_vec3_i32(-vec3<i32>(2147483647i, var_1.b, arg_0), ~var_1.a.b) | countOneBits(vec3<i32>(global3.b, var_1.a.e, -49510i) >> (global0[_wgslsmith_index_u32(global2.d, 31u)] % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(arg_1.x - global2.c.x), -671f))), firstTrailingBit(_wgslsmith_clamp_u32(countOneBits(global3.a.d), ~36406u, ~0u)), 60494i), -1i);
    return vec4<f32>(844f, 1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.x, global3.a.c.x)) + var_1.a.c.x), -531f), _wgslsmith_f_op_f32(sign(836f)));
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = abs(~_wgslsmith_mult_vec3_u32(global0[_wgslsmith_index_u32(global2.d, 31u)], vec3<u32>(arg_0, global2.d, global2.d)) << (vec3<u32>(1u, reverseBits(global3.a.d), ~1104u) % vec3<u32>(32u))) ^ func_2(false, Struct_1(select(select(true, global2.a, global3.a.a), all(vec3<bool>(global3.a.a, false, true)), all(vec2<bool>(true, global2.a))), _wgslsmith_add_vec3_i32(_wgslsmith_div_vec3_i32(global2.b, vec3<i32>(global2.e, u_input.a, u_input.b)), vec3<i32>(global2.e, global3.a.b.x, global3.b) | vec3<i32>(u_input.a, -3479i, -31200i)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global3.a.c)), ~(~global2.d), 1i << (global3.a.d % 32u)));
    var var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.c.x))), _wgslsmith_div_f32(-2379f, global3.a.c.x), global3.a.c.x, _wgslsmith_f_op_f32(global2.c.x * _wgslsmith_div_f32(global3.a.c.x, 1361f))))) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-814f, global2.c.x, global3.a.c.x, global3.a.c.x) - _wgslsmith_f_op_vec4_f32(func_3(u_input.b, vec3<f32>(global2.c.x, -1458f, 672f))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a.c.x, global3.a.c.x, -264f, 200f)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global2.c.x, 886f, global3.a.c.x, 133f)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, global2.c.x, global2.c.x, global3.a.c.x) * vec4<f32>(1000f, global3.a.c.x, 262f, global2.c.x)))), vec4<bool>(var_0.x < arg_0, global2.a, !global2.a, false)))));
    var var_2 = abs((countOneBits(vec3<i32>(global2.b.x, -37414i, u_input.b)) ^ _wgslsmith_add_vec3_i32(abs(vec3<i32>(1i, 16057i, u_input.a)), firstLeadingBit(vec3<i32>(u_input.b, u_input.a, global2.b.x)))) | abs(min(abs(vec3<i32>(23450i, global3.b, -37866i)), global3.a.b)));
    global0 = array<vec3<u32>, 31>();
    var var_3 = select(!select(vec2<bool>(global2.a, all(vec4<bool>(global2.a, global3.a.a, false, false))), select(select(vec2<bool>(true, global2.a), vec2<bool>(true, false), vec2<bool>(false, global2.a)), select(vec2<bool>(global3.a.a, global2.a), vec2<bool>(global3.a.a, false), vec2<bool>(true, global2.a)), select(vec2<bool>(global4.x, true), vec2<bool>(true, true), vec2<bool>(global3.a.a, true))), true), select(select(select(vec2<bool>(true, true), vec2<bool>(true, true), !global2.a), vec2<bool>(true, global4.x), select(select(vec2<bool>(false, false), vec2<bool>(global3.a.a, global2.a), vec2<bool>(false, global2.a)), vec2<bool>(global2.a, false), vec2<bool>(true, true))), vec2<bool>(any(select(vec2<bool>(global3.a.a, global3.a.a), vec2<bool>(global4.x, global3.a.a), global4.x)), !(!global3.a.a)), true), !any(!select(vec4<bool>(global3.a.a, true, false, global2.a), vec4<bool>(global2.a, true, global2.a, global4.x), global3.a.a)));
    return global3.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(global2.d);
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(round(146f)), _wgslsmith_f_op_f32(select(var_0.c.x, 1598f, true)), var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(global2.c.x))), _wgslsmith_f_op_f32(-global2.c.x), func_1(50138u).c.x) * _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global3.a.c.x, global3.a.c.x, _wgslsmith_f_op_f32(-var_0.c.x), _wgslsmith_f_op_f32(-global2.c.x))))) - vec4<f32>(-553f, global2.c.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -410f))), 903f));
    var var_2 = vec3<i32>(_wgslsmith_div_i32(-global2.e, -global2.b.x), 0i, firstTrailingBit((var_0.e << (select(global3.a.d, global2.d, true) % 32u)) & _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.b.x, 37456i, 17787i), global3.a.b), var_0.e)));
    global0 = array<vec3<u32>, 31>();
    var var_3 = global4.x;
    let var_4 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_vec4_f32(func_3(-2147483647i, vec3<f32>(global3.a.c.x, global2.c.x, var_1.x))).x, func_1(global3.a.d).c.x)))), -820f) + var_1.yw);
    let var_5 = vec3<i32>(u_input.b, -var_0.e, abs(_wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global3.a.b.x, global2.e, 2147483647i, 2147483647i), vec4<i32>(-19769i, var_2.x, global2.e, global2.b.x)), _wgslsmith_sub_vec4_i32(vec4<i32>(var_0.e, 1799i, var_2.x, -10507i), vec4<i32>(u_input.a, var_0.b.x, 1i, global3.a.b.x)) ^ (vec4<i32>(u_input.a, var_0.e, -46734i, var_0.e) ^ vec4<i32>(-1i, 45452i, -30018i, 18627i)))));
    var var_6 = global4.x | any(!(!vec4<bool>(global4.x, global4.x, var_0.a, false)));
    let var_7 = _wgslsmith_mult_i32(-abs(max(global3.a.e, -8124i >> (global3.a.d % 32u))), 0i);
    let x = u_input.a;
    s_output = StorageBuffer(24443u, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -407f) - var_0.c.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(func_1(var_0.d).c.x)) - -1200f)));
}

