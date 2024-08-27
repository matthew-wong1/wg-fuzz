struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: array<vec4<i32>, 6>;

var<private> global2: i32 = 2147483647i;

var<private> global3: Struct_1;

var<private> global4: Struct_1;

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> bool {
    let var_0 = ~52201i;
    global2 = ~firstTrailingBit(2147483647i);
    var var_1 = Struct_1(global3.a, global4.b, vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global3.c.x + global3.c.x), _wgslsmith_f_op_f32(-global4.c.x))))), global3.c.x, 1192f));
    return arg_1.a.x;
}

fn func_2(arg_0: vec3<f32>, arg_1: f32) -> i32 {
    let var_0 = u_input.a.x;
    let var_1 = Struct_1(vec2<bool>(true & func_3(_wgslsmith_add_u32(u_input.a.x, 0u), Struct_1(global3.a, vec4<i32>(global4.b.x, global3.b.x, 0i, global3.b.x), arg_0)), true), _wgslsmith_sub_vec4_i32(global3.b, vec4<i32>(1i, global3.b.x, abs(_wgslsmith_add_i32(-2147483647i, 2147483647i)), _wgslsmith_div_i32(min(-18671i, global4.b.x), -global3.b.x))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(2323f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_0.x + global4.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global3.c.x, arg_1)))))));
    let var_2 = 314f;
    var var_3 = _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(global3.c.x, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-1389f - 855f))))))));
    var var_4 = var_1;
    return -54567i;
}

fn func_1(arg_0: vec4<u32>, arg_1: i32) -> Struct_1 {
    global0 = func_2(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global4.c.x, _wgslsmith_div_f32(global3.c.x, 346f), _wgslsmith_f_op_f32(min(1101f, global3.c.x)))))), global4.c.x);
    global1 = array<vec4<i32>, 6>();
    var var_0 = select(!vec4<bool>(all(vec2<bool>(global4.a.x, true)), true, !select(global4.a.x, global4.a.x, global4.a.x), all(!vec3<bool>(global4.a.x, true, false))), select(!select(vec4<bool>(false, false, false, false), !vec4<bool>(false, true, global3.a.x, false), !vec4<bool>(true, global4.a.x, global4.a.x, global4.a.x)), !(!(!vec4<bool>(global4.a.x, global4.a.x, true, true))), true), vec4<bool>((_wgslsmith_dot_vec4_i32(vec4<i32>(arg_1, arg_1, global4.b.x, arg_1), global4.b) ^ min(arg_1, arg_1)) > -countOneBits(arg_1), global3.a.x, func_3(~4294967295u, Struct_1(global4.a, ~global3.b, _wgslsmith_f_op_vec3_f32(-global3.c))), true));
    global0 = ~(-44880i);
    var var_1 = _wgslsmith_sub_vec3_i32(vec3<i32>(global3.b.x, 1i, _wgslsmith_dot_vec2_i32((vec2<i32>(44266i, 18148i) >> (vec2<u32>(u_input.a.x, 53641u) % vec2<u32>(32u))) | _wgslsmith_mult_vec2_i32(global4.b.yy, global4.b.yw), countOneBits(vec2<i32>(0i, global3.b.x)) << ((vec2<u32>(u_input.a.x, u_input.a.x) << (u_input.a.wy % vec2<u32>(32u))) % vec2<u32>(32u)))), vec3<i32>(-global3.b.x, _wgslsmith_add_i32(_wgslsmith_add_i32(0i, _wgslsmith_mult_i32(global4.b.x, arg_1)), ~firstLeadingBit(10095i)), global4.b.x));
    return Struct_1(vec2<bool>(false, global3.a.x), countOneBits(global4.b >> (~arg_0 % vec4<u32>(32u))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(1000f, global4.c.x)))) + -274f), -498f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(845f, global4.c.x))) * -337f)));
}

fn func_4(arg_0: i32, arg_1: i32, arg_2: Struct_1, arg_3: u32) -> vec2<f32> {
    var var_0 = select(!(!vec4<bool>(true, true, all(global3.a), true)), vec4<bool>(select(true, !global3.a.x, arg_3 != max(u_input.a.x, u_input.a.x)), false, false, select(all(select(vec2<bool>(true, true), global4.a, vec2<bool>(global3.a.x, arg_2.a.x))), global4.a.x, !global4.a.x)), select(vec4<bool>(global4.a.x, global3.a.x, !(arg_3 < arg_3), false), vec4<bool>(global3.a.x, any(vec3<bool>(global3.a.x, true, true)), !any(global3.a), 1i < (-23317i | arg_1)), global3.c.x >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.c.x + global4.c.x) - _wgslsmith_f_op_f32(-global3.c.x))));
    global0 = ~_wgslsmith_sub_i32(-global4.b.x, _wgslsmith_mod_i32(1i, -1i)) << (34859u % 32u);
    var var_1 = select(select(!vec4<bool>(true, global4.a.x, all(vec4<bool>(global3.a.x, global3.a.x, false, global3.a.x)), !global3.a.x), select(vec4<bool>(global4.c.x <= -232f, any(vec4<bool>(global3.a.x, false, var_0.x, false)), arg_2.c.x < 1921f, select(true, global3.a.x, true)), select(!vec4<bool>(var_0.x, true, var_0.x, global4.a.x), vec4<bool>(true, global4.a.x, false, false), select(vec4<bool>(true, false, true, arg_2.a.x), vec4<bool>(true, global4.a.x, true, true), true)), false), true), vec4<bool>(all(select(select(var_0.wzy, vec3<bool>(false, arg_2.a.x, global4.a.x), var_0.xxy), !vec3<bool>(global4.a.x, false, arg_2.a.x), all(var_0.zyx))), false, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(arg_2.c.x - global3.c.x), _wgslsmith_f_op_f32(926f + -1171f))) < _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(arg_2.c.x)), 1051f)), select(_wgslsmith_f_op_f32(select(arg_2.c.x, 2202f, global3.a.x)) <= 267f, any(!global3.a), false)), !(!(!(!vec4<bool>(var_0.x, true, false, global4.a.x)))));
    global0 = _wgslsmith_div_i32(-15409i, 26608i) >> ((select(_wgslsmith_div_u32(arg_3, 41384u), abs(86363u << (u_input.a.x % 32u)), false) ^ _wgslsmith_mult_u32(u_input.a.x | 51880u, ~arg_3)) % 32u);
    let var_2 = -427f;
    return vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) + global4.c.x), -2279f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(global3.a, abs(_wgslsmith_mult_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, global4.b.x, 0i, global4.b.x), vec4<i32>(global4.b.x, global4.b.x, -33457i, 1i)), global4.b ^ vec4<i32>(global3.b.x, global3.b.x, -1i, 10013i)), vec4<i32>(~global3.b.x, global3.b.x, 21887i, global4.b.x))), _wgslsmith_f_op_vec3_f32(global3.c - vec3<f32>(_wgslsmith_div_f32(global4.c.x, 1548f), global3.c.x, global3.c.x)));
    global0 = 43975i;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec2_u32(abs(u_input.a.zw), firstTrailingBit(~u_input.a.ww)), 200f, _wgslsmith_f_op_f32(min(511f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.c.x) + _wgslsmith_f_op_f32(-global3.c.x)))))), _wgslsmith_f_op_vec2_f32(func_4(global4.b.x, global3.b.x, func_1(u_input.a, _wgslsmith_add_i32(global4.b.x & 1i, _wgslsmith_mult_i32(global4.b.x, global4.b.x))), 26442u)));
}

