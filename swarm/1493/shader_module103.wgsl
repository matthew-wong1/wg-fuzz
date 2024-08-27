struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: u32,
    d: vec3<bool>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: u32,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<f32>,
    c: u32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<u32>,
    c: vec2<i32>,
    d: u32,
    e: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
    c: f32,
    d: u32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 17>;

var<private> global1: array<vec4<bool>, 21>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: i32, arg_2: Struct_2) -> bool {
    let var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1431f))), _wgslsmith_f_op_f32(exp2(arg_2.d.x))), _wgslsmith_f_op_f32(-arg_2.d.x))));
    let var_1 = firstTrailingBit(u_input.d);
    let var_2 = true;
    var var_3 = !(!(!(!select(vec3<bool>(var_2, var_2, false), vec3<bool>(true, false, var_2), vec3<bool>(true, false, var_2)))));
    global1 = array<vec4<bool>, 21>();
    return any(global0[_wgslsmith_index_u32(min(54506u & _wgslsmith_mult_u32(reverseBits(46535u), var_1), _wgslsmith_clamp_u32(_wgslsmith_dot_vec2_u32(arg_2.a.yy, vec2<u32>(1u, var_1)), min(_wgslsmith_clamp_u32(41821u, 4294967295u, 1u), min(var_1, 1u)), _wgslsmith_sub_u32(arg_2.c, 46053u) | 1u)), 17u)]);
}

fn func_2() -> Struct_3 {
    let var_0 = ~_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~u_input.d, firstLeadingBit(u_input.e), u_input.e ^ 46795u), ~_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e, u_input.e, u_input.e), vec3<u32>(u_input.e, 4294967295u, 1u))), 11175u);
    global1 = array<vec4<bool>, 21>();
    var var_1 = Struct_1(vec2<bool>((func_3(2147483647i, 5754i, Struct_2(vec4<u32>(0u, 0u, 15053u, 4294967295u), u_input.a, u_input.b.x, vec2<f32>(486f, 1398f))) == true) | select(true, u_input.c.x <= u_input.c.x, true), !all(select(vec4<bool>(true, true, false, true), vec4<bool>(true, false, false, true), false))), vec4<i32>(u_input.a.x, select(-40957i, _wgslsmith_div_i32(u_input.c.x, u_input.c.x), false), -2147483647i, u_input.c.x) ^ _wgslsmith_add_vec4_i32(vec4<i32>(~18101i, _wgslsmith_add_i32(u_input.a.x, 92862i), -u_input.a.x, abs(-43094i)), _wgslsmith_sub_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, -54233i, u_input.a.x, 2147483647i), vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, -22276i)), vec4<i32>(24444i, u_input.a.x, u_input.c.x, 46259i))), ~(~0u), select(select(vec3<bool>(true, true, true), vec3<bool>(true, false, any(vec3<bool>(false, false, false))), select(false, u_input.c.x != -18629i, true)), !select(select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(true, true, true)), ~vec4<u32>(var_0 & (u_input.d << (u_input.e % 32u)), ~1u, 1u, firstLeadingBit(u_input.b.x | u_input.b.x)));
    let var_2 = var_1.d.x;
    let var_3 = var_1.b.xzx;
    return Struct_3(Struct_1(vec2<bool>(-868f == _wgslsmith_f_op_f32(round(928f)), !var_1.a.x & true), _wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(~var_1.b.x, -43777i, var_1.b.x, _wgslsmith_mod_i32(u_input.a.x, u_input.a.x))), _wgslsmith_dot_vec4_u32(~_wgslsmith_mult_vec4_u32(var_1.e, var_1.e), vec4<u32>(1383u, var_1.e.x ^ var_0, 49732u, _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.c, 35655u, 65364u), var_1.e.yzw))), vec3<bool>(true, all(var_1.d) && (var_1.d.x | var_1.d.x), false), countOneBits(abs(var_1.e & var_1.e))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-781f, -898f) - vec2<f32>(_wgslsmith_div_f32(1158f, -381f), -1417f)) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(473f, 1804f)))))), _wgslsmith_div_u32(_wgslsmith_mod_u32(63542u, ~select(var_0, var_1.e.x, var_1.d.x)), 26234u));
}

fn func_1(arg_0: Struct_1, arg_1: vec3<bool>, arg_2: u32, arg_3: vec2<bool>) -> vec4<i32> {
    let var_0 = func_2();
    let var_1 = func_2().a;
    var var_2 = arg_0;
    let var_3 = Struct_1(!vec2<bool>(abs(var_0.a.b.x) > 1i, false), max(var_2.b, _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_clamp_i32(var_1.b.x, 43056i, 27031i), -10569i, arg_0.b.x, abs(-2869i)), ~(var_0.a.b ^ var_2.b))), ~_wgslsmith_clamp_u32(select(arg_2, 1u << (1u % 32u), var_2.d.x), 1462u ^ var_2.c, _wgslsmith_div_u32(0u, var_0.a.e.x) << (_wgslsmith_dot_vec2_u32(var_0.a.e.yz, vec2<u32>(591u, 14706u)) % 32u)), select(vec3<bool>(arg_3.x, any(var_1.a), var_1.a.x), vec3<bool>(var_2.a.x, var_0.a.a.x, !all(var_2.d)), vec3<bool>(arg_0.a.x, select(arg_0.d.x != var_2.a.x, arg_3.x || arg_3.x, true & arg_3.x), (true == var_2.a.x) | all(arg_0.d.yx))), vec4<u32>(~(~_wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.d, arg_2), vec3<u32>(arg_0.e.x, 2625u, u_input.b.x))), var_1.c, _wgslsmith_dot_vec2_u32(~arg_0.e.yz, var_0.a.e.zy), arg_2));
    var var_4 = vec4<u32>(~var_3.c << (0u % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), _wgslsmith_dot_vec2_u32(vec2<u32>(arg_2, var_3.c), vec2<u32>(87152u, 44069u)), 3868u, ~17330u) | ~vec4<u32>(1u, arg_0.e.x, 129554u, 0u), ~firstTrailingBit(var_2.e | vec4<u32>(arg_2, arg_0.e.x, 8976u, 0u))), 1u, 1u & func_2().c);
    return vec4<i32>(abs(_wgslsmith_mod_i32(func_2().a.b.x, -var_2.b.x)) | countOneBits(_wgslsmith_mult_i32(abs(var_1.b.x), i32(-1i) * -56521i)), -1i, -1i, ~_wgslsmith_mult_i32(2147483647i, _wgslsmith_dot_vec3_i32(u_input.a, ~arg_0.b.xzx)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!vec2<bool>(any(global0[_wgslsmith_index_u32(1u, 17u)]), any(global0[_wgslsmith_index_u32(max(4294967295u, 4294967295u), 17u)])), ~(vec4<i32>(7870i, u_input.a.x, u_input.a.x, u_input.a.x) & ~vec4<i32>(u_input.a.x, -36419i, u_input.a.x, 30130i)) ^ _wgslsmith_clamp_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(-47452i, u_input.c.x, u_input.c.x, 2147483647i), ~vec4<i32>(-1968i, u_input.a.x, u_input.c.x, u_input.a.x)), func_1(Struct_1(global0[_wgslsmith_index_u32(u_input.e, 17u)], vec4<i32>(u_input.a.x, u_input.c.x, u_input.a.x, u_input.c.x), 10945u, vec3<bool>(false, false, false), vec4<u32>(28632u, u_input.b.x, u_input.e, u_input.b.x)), vec3<bool>(true, false, false), ~u_input.d, !global0[_wgslsmith_index_u32(u_input.d, 17u)]), -vec4<i32>(9454i, 0i, -2147483647i, 12165i)), 0u, !select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), vec3<bool>(false, true, true)), func_2().a.d, true & all(vec3<bool>(false, false, true))), firstTrailingBit(vec4<u32>(_wgslsmith_sub_u32(0u, u_input.d), max(~u_input.d, ~u_input.d), 1u, u_input.d)));
    let var_1 = var_0.d;
    global1 = array<vec4<bool>, 21>();
    var var_2 = Struct_3(func_2().a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1065f, 1430f) * func_2().b) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-883f, 802f)))), _wgslsmith_clamp_u32(~_wgslsmith_add_u32(~2169u, ~var_0.c), func_2().a.e.x, 0u));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -861f);
    let x = u_input.a;
    s_output = StorageBuffer(firstLeadingBit(~vec3<i32>(-1i, var_0.b.x, var_2.a.b.x) >> (var_2.a.e.xxw % vec3<u32>(32u))), select(4294967295u, ~4294967295u, !any(select(global1[_wgslsmith_index_u32(0u, 21u)], vec4<bool>(var_1.x, false, false, true), true))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_2.b.x)))))), _wgslsmith_mult_u32(_wgslsmith_mod_u32(u_input.b.x, var_2.a.e.x), ~68604u), func_2().a.b.x);
}

