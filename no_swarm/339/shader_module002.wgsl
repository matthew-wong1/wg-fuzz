struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_2,
    e: vec3<i32>,
}

struct Struct_4 {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<bool>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec3<u32>,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 22>;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: u32) -> vec4<u32> {
    global0 = array<vec3<i32>, 22>();
    var var_0 = Struct_3(min(_wgslsmith_clamp_vec4_u32(vec4<u32>(0u, firstTrailingBit(1u), reverseBits(10366u), 4294967295u & arg_3), ~arg_0.b, arg_0.b), u_input.a), Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yy) + _wgslsmith_f_op_vec2_f32(min(arg_1.xy, vec2<f32>(357f, arg_1.x)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_1.x, arg_1.x))))), min(select(-arg_0.a >> (_wgslsmith_mod_vec4_u32(arg_0.b, u_input.a) % vec4<u32>(32u)), arg_0.a, any(vec2<bool>(arg_0.c.x, false))), arg_0.a), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(arg_1.xx, _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-1444f, 1365f))))), all(!vec3<bool>(false, arg_0.c.x, arg_0.c.x)), vec3<i32>(arg_0.a.x, _wgslsmith_sub_i32(1i, ~26806i), -23040i), -arg_0.a), ~vec3<i32>(_wgslsmith_div_i32(2147483647i, -57790i), firstLeadingBit(arg_0.a.x), _wgslsmith_add_i32(89058i, 36022i)) | (vec3<i32>(-1i) * -_wgslsmith_add_vec3_i32(vec3<i32>(arg_0.a.x, arg_0.a.x, arg_0.a.x), global0[_wgslsmith_index_u32(55647u, 22u)])));
    var var_1 = var_0.d;
    var_0 = Struct_3(~var_0.a, var_0.d.a, var_1.d, var_0.d, select(vec3<i32>(6894i, 16239i, ~_wgslsmith_clamp_i32(var_1.c.x, 1i, -2147483647i)), ~abs(countOneBits(global0[_wgslsmith_index_u32(arg_2.x, 22u)])), !any(arg_0.c.zy)));
    var_1 = Struct_2(var_0.d.a, var_0.d.b, vec3<i32>(_wgslsmith_add_i32(-arg_0.a.x, arg_0.a.x & var_0.d.d.x), -1i, _wgslsmith_sub_i32(i32(-1i) * -8432i, arg_0.a.x) & arg_0.a.x), _wgslsmith_mod_vec4_i32(vec4<i32>(var_1.d.x, -1i, -var_0.e.x, -(i32(-1i) * -15776i)), _wgslsmith_add_vec4_i32(~vec4<i32>(arg_0.a.x, arg_0.a.x, var_0.d.c.x, -1i), _wgslsmith_div_vec4_i32(select(var_1.d, vec4<i32>(var_1.c.x, 30497i, var_1.c.x, arg_0.a.x), var_1.b), vec4<i32>(-1i, -22279i, -35146i, -1i)))));
    return ~_wgslsmith_mult_vec4_u32(abs(var_0.a), u_input.a);
}

fn func_2(arg_0: f32, arg_1: Struct_4, arg_2: vec3<u32>, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_3(func_3(arg_1, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)), ~(vec3<u32>(arg_1.b.x, arg_1.b.x, arg_2.x) & ~arg_2), ~arg_2.x), Struct_1(_wgslsmith_f_op_vec2_f32(-arg_3.a)), vec4<i32>(countOneBits(min(arg_1.a.x ^ arg_1.a.x, arg_1.a.x)), -62013i, countOneBits(arg_1.a.x), -2147483647i), Struct_2(Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, arg_0) + vec2<f32>(-588f, -349f)), arg_3.a)), !(max(arg_1.a.x, -12263i) <= arg_1.a.x), arg_1.a.wxw, vec4<i32>(-1i, arg_1.a.x, -firstTrailingBit(22539i), reverseBits(arg_1.a.x | -1i))), global0[_wgslsmith_index_u32(~u_input.c & ~u_input.b.x, 22u)] << (~abs(~vec3<u32>(u_input.b.x, 14550u, 48015u)) % vec3<u32>(32u)));
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    var var_1 = Struct_3(u_input.a, arg_3, countOneBits(var_0.d.d), var_0.d, select(var_0.c.xxy, firstLeadingBit(_wgslsmith_mult_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(var_0.c.x, var_0.d.c.x, -50015i), var_0.c.wzw), vec3<i32>(arg_1.a.x, var_0.c.x, -2147483647i))), select(select(arg_1.c, arg_1.c, arg_1.c.x), arg_1.c, true)));
    let var_2 = arg_1.a.wy;
    return _wgslsmith_f_op_f32(min(-1382f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(var_1.d.a.a.x)), var_1.b.a.x)), 1199f)) - -1015f)));
}

fn func_1(arg_0: vec4<i32>, arg_1: Struct_1) -> Struct_3 {
    var var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(1787f, arg_1.a.x)) + _wgslsmith_f_op_f32(func_2(arg_1.a.x, Struct_4(vec4<i32>(arg_0.x, arg_0.x, arg_0.x, arg_0.x), u_input.a, vec3<bool>(true, false, false)), vec3<u32>(1u, 11961u, 0u), arg_1))), arg_1.a.x)));
    var_0 = arg_1;
    let var_1 = u_input.a.yxy;
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    return Struct_3(u_input.a, arg_1, ~vec4<i32>(_wgslsmith_dot_vec2_i32(arg_0.ww, vec2<i32>(10544i, 34052i) ^ arg_0.yw), arg_0.x, countOneBits(reverseBits(arg_0.x)), _wgslsmith_dot_vec4_i32(arg_0, abs(arg_0))), Struct_2(arg_1, true, ~(~firstTrailingBit(arg_0.yyy)), arg_0), min(arg_0.zyz, ~vec3<i32>(~(-1i), 0i, -arg_0.x)));
}

fn func_4(arg_0: bool, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec3<i32>) -> f32 {
    return arg_2.d.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<i32>, 22>();
    global0 = array<vec3<i32>, 22>();
    let var_0 = _wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(true, vec4<i32>(-1i, -20113i, -2147483647i, 6259i), func_1(vec4<i32>(-18615i, -10576i, 1i, -2147483647i), Struct_1(vec2<f32>(1395f, -1051f))), global0[_wgslsmith_index_u32(1u & u_input.b.x, 22u)]))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1047f * _wgslsmith_f_op_f32(f32(-1f) * -1667f)), _wgslsmith_div_f32(-588f, _wgslsmith_f_op_f32(round(673f))))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(floor(-981f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-994f)))))));
    var var_1 = func_1(-(vec4<i32>(_wgslsmith_mod_i32(4655i, -1i), 1i, 0i, ~3248i) << (vec4<u32>(~0u, 0u, u_input.a.x, 4294967295u) % vec4<u32>(32u))), func_1(abs(_wgslsmith_mult_vec4_i32(vec4<i32>(-42371i, -10537i, 0i, -1i), ~vec4<i32>(-13196i, 3517i, 2766i, 7931i))), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + _wgslsmith_f_op_vec2_f32(var_0 - var_0)))).d.a).d;
    let var_2 = Struct_4(_wgslsmith_mult_vec4_i32(var_1.d, -vec4<i32>(max(-3624i, -1i), var_1.d.x, firstLeadingBit(var_1.c.x), firstTrailingBit(var_1.c.x))), ~(~vec4<u32>(_wgslsmith_sub_u32(u_input.a.x, u_input.c), 4294967295u, u_input.a.x << (1u % 32u), u_input.a.x)), vec3<bool>(all(vec2<bool>(124f <= var_0.x, any(vec4<bool>(true, true, true, var_1.b)))), true, false));
    global0 = array<vec3<i32>, 22>();
    let var_3 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_1.a.a.x * var_1.a.a.x), _wgslsmith_f_op_f32(-var_1.a.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.d.x, ~_wgslsmith_add_u32(37864u, func_3(Struct_4(var_2.a, vec4<u32>(var_2.b.x, 17712u, var_2.b.x, var_2.b.x), vec3<bool>(true, var_2.c.x, var_2.c.x)), vec3<f32>(328f, var_0.x, -288f), vec3<u32>(u_input.c, 18734u, 66976u), 0u).x), -2147483647i);
}

