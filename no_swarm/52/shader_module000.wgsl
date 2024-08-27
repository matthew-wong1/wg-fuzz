struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: i32,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 28> = array<vec4<i32>, 28>(vec4<i32>(10274i, -7246i, -22770i, 2147483647i), vec4<i32>(i32(-2147483648), 4178i, i32(-2147483648), 59715i), vec4<i32>(0i, -22528i, 39527i, i32(-2147483648)), vec4<i32>(2147483647i, 1i, i32(-2147483648), i32(-2147483648)), vec4<i32>(0i, -504i, 24880i, 0i), vec4<i32>(40048i, -1i, 9367i, 43873i), vec4<i32>(-32907i, 1i, 0i, 24481i), vec4<i32>(-33557i, 1i, -4975i, -28325i), vec4<i32>(2147483647i, 47059i, -28992i, 0i), vec4<i32>(16759i, -5873i, 2147483647i, 1i), vec4<i32>(-8574i, 4177i, 0i, -1i), vec4<i32>(i32(-2147483648), -76753i, -47653i, 2147483647i), vec4<i32>(-35300i, i32(-2147483648), i32(-2147483648), -3940i), vec4<i32>(2147483647i, 2147483647i, 1i, -1i), vec4<i32>(2147483647i, 1i, -53361i, 2147483647i), vec4<i32>(4952i, 2147483647i, 0i, 15991i), vec4<i32>(48079i, -23795i, -19192i, 1667i), vec4<i32>(-26896i, 33555i, i32(-2147483648), 2147483647i), vec4<i32>(-1i, 21114i, 3565i, 2147483647i), vec4<i32>(2147483647i, -1i, 47082i, -18128i), vec4<i32>(i32(-2147483648), i32(-2147483648), -76412i, 0i), vec4<i32>(1i, i32(-2147483648), 0i, 1i), vec4<i32>(0i, 1i, 0i, 20536i), vec4<i32>(-21281i, 0i, 1i, 18962i), vec4<i32>(1i, 2147483647i, 36487i, -1i), vec4<i32>(2147483647i, 2147483647i, -32343i, 27174i), vec4<i32>(62047i, 9741i, i32(-2147483648), 70196i), vec4<i32>(-24388i, 0i, -29698i, -64909i));

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_1) -> i32 {
    let var_0 = ~u_input.a.x;
    global0 = array<vec4<i32>, 28>();
    let var_1 = Struct_1(-abs(u_input.d), !vec3<bool>(true, true, select(true, -276f < arg_0.d.x, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_add_i32(arg_0.a.x, arg_0.c) >> (u_input.a.x % 32u), -u_input.d.x), vec2<i32>(arg_0.a.x, 0i)), _wgslsmith_f_op_vec3_f32(select(arg_0.d, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_0.d, vec3<f32>(484f, arg_0.d.x, arg_0.d.x))), arg_0.d), !(!vec3<bool>(arg_0.b.x, false, true)))));
    var var_2 = firstTrailingBit(u_input.c.x);
    var_2 = _wgslsmith_mult_u32(~select(16782u, var_0, arg_0.b.x) & _wgslsmith_div_u32((var_0 << (u_input.a.x % 32u)) & u_input.c.x, 0u), ~(~(~1u)));
    return _wgslsmith_dot_vec4_i32(firstTrailingBit(_wgslsmith_mod_vec4_i32(-(~global0[_wgslsmith_index_u32(u_input.c.x, 28u)]), _wgslsmith_sub_vec4_i32(global0[_wgslsmith_index_u32(var_0, 28u)], global0[_wgslsmith_index_u32(~u_input.a.x, 28u)]))), ~(-((global0[_wgslsmith_index_u32(u_input.a.x, 28u)] | vec4<i32>(-46466i, arg_0.c, 1i, -75158i)) & global0[_wgslsmith_index_u32(u_input.a.x, 28u)])));
}

fn func_2(arg_0: u32, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: f32) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(arg_2.d * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(445f, arg_3, -716f)) * _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-arg_2.d), _wgslsmith_f_op_vec3_f32(vec3<f32>(-258f, -659f, 1725f) * vec3<f32>(arg_2.d.x, -1998f, -145f)), !vec3<bool>(arg_2.b.x, arg_2.b.x, arg_2.b.x)))))));
    var var_1 = Struct_1(countOneBits(vec3<i32>(-_wgslsmith_div_i32(u_input.b, 51203i), -reverseBits(arg_2.c), firstTrailingBit(_wgslsmith_mod_i32(-1i, -2147483647i)))), !vec3<bool>(any(vec3<bool>(arg_2.b.x, false, arg_2.b.x)), (1i < arg_2.a.x) || (arg_2.b.x == true), true), firstLeadingBit(func_3(arg_2)), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1345f))), arg_2.d.x, -371f));
    let var_2 = arg_0;
    var var_3 = firstLeadingBit(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(149100u & arg_0, abs(4294967295u), 4294967295u, var_2), vec4<u32>(_wgslsmith_add_u32(57749u, u_input.a.x), u_input.a.x >> (var_2 % 32u), var_2, ~4294967295u)), 127367u), 28u)]);
    global0 = array<vec4<i32>, 28>();
    return false;
}

fn func_1(arg_0: vec3<u32>, arg_1: u32, arg_2: vec4<bool>, arg_3: vec2<bool>) -> Struct_1 {
    global0 = array<vec4<i32>, 28>();
    let var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-1165f, -464f, 1974f, -267f), _wgslsmith_div_vec4_f32(vec4<f32>(277f, -955f, 1283f, 197f), vec4<f32>(1000f, -726f, 302f, -672f))) * vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(select(414f, 523f, arg_3.x)), _wgslsmith_f_op_f32(abs(939f)), _wgslsmith_f_op_f32(538f - 197f)))));
    var var_1 = u_input.b;
    global0 = array<vec4<i32>, 28>();
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0.x, 967f))))) <= -1034f;
    return Struct_1(vec3<i32>(53870i, _wgslsmith_mod_i32(firstLeadingBit(13204i ^ u_input.d.x), 1i), -1i), !vec3<bool>(true, false, func_2(8511u, _wgslsmith_f_op_vec2_f32(var_0.xy * var_0.xy), Struct_1(u_input.d, vec3<bool>(false, arg_2.x, arg_2.x), u_input.b, var_0.xyw), -591f)), 1442i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(var_0.x, 922f, var_0.x))) - _wgslsmith_f_op_vec3_f32(step(var_0.xxz, var_0.yzw))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_1 {
    let var_0 = 1i;
    var var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(min(vec3<i32>(~var_0, max(12334i, -2147483647i), func_1(vec3<u32>(17984u, 47630u, u_input.c.x), u_input.c.x, vec4<bool>(true, true, false, arg_1.b.x), vec2<bool>(true, true)).a.x), vec3<i32>(select(arg_0, arg_1.a.x, arg_1.b.x), -16274i, _wgslsmith_sub_i32(1i, -1i))), -arg_1.a), -5482i, _wgslsmith_sub_i32(-_wgslsmith_add_i32(-1i, _wgslsmith_dot_vec2_i32(u_input.d.yx, vec2<i32>(u_input.d.x, var_0))), _wgslsmith_mult_i32(var_0, u_input.b)));
    var_1 = arg_1.a;
    global0 = array<vec4<i32>, 28>();
    let var_2 = arg_1;
    return arg_1;
}

fn func_5(arg_0: vec4<u32>, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    let var_0 = arg_1;
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~select(select(~vec4<u32>(u_input.c.x, 4294967295u, 1u, u_input.a.x), vec4<u32>(u_input.c.x, u_input.a.x, u_input.c.x, u_input.c.x), select(vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, true), false)), ~(~vec4<u32>(0u, u_input.a.x, u_input.a.x, u_input.c.x)), select(false, false, false) || any(vec3<bool>(false, true, false))), func_4(u_input.d.x, func_1(_wgslsmith_div_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, u_input.a.x, 1u), vec3<u32>(u_input.a.x, 1u, 0u)), vec3<u32>(26789u, 44349u, 38879u)), ~u_input.a.x ^ _wgslsmith_add_u32(u_input.c.x, u_input.c.x), vec4<bool>(true, true, true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), false))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f * 1f)));
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    global0 = array<vec4<i32>, 28>();
    let var_1 = Struct_1(var_0.a, var_0.b, ~(-1i), _wgslsmith_f_op_vec3_f32(var_0.d * _wgslsmith_div_vec3_f32(var_0.d, func_1(reverseBits(vec3<u32>(u_input.a.x, 0u, u_input.a.x)), u_input.c.x & u_input.c.x, vec4<bool>(var_0.b.x, true, var_0.b.x, var_0.b.x), !var_0.b.xz).d)));
    let var_2 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.d.x * _wgslsmith_f_op_f32(ceil(-1343f)))));
    global0 = array<vec4<i32>, 28>();
    var var_3 = 1u;
    global0 = array<vec4<i32>, 28>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(select(-(~var_1.c), _wgslsmith_div_i32(0i, var_0.c), var_1.c > 1i), 12845i), countOneBits(firstTrailingBit(2147483647i)));
}

