struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: i32,
    d: f32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: f32,
    c: f32,
    d: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20>;

var<private> global1: array<vec4<u32>, 25>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: f32, arg_1: Struct_2) -> vec3<bool> {
    return arg_1.a;
}

fn func_3(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec2<u32>) -> i32 {
    global1 = array<vec4<u32>, 25>();
    global0 = array<u32, 20>();
    var var_0 = vec2<u32>(~(~35669u), ~(~global0[_wgslsmith_index_u32(reverseBits(select(40730u, global0[_wgslsmith_index_u32(0u, 20u)], false)), 20u)]));
    var_0 = min(_wgslsmith_sub_vec2_u32(vec2<u32>(arg_2.x, arg_2.x), vec2<u32>(~_wgslsmith_sub_u32(57864u, arg_2.x), _wgslsmith_div_u32(~u_input.a.x, u_input.a.x >> (global0[_wgslsmith_index_u32(47462u, 20u)] % 32u)))), min(~firstTrailingBit(vec2<u32>(44054u, global0[_wgslsmith_index_u32(4294967295u, 20u)])) << (u_input.a.yx % vec2<u32>(32u)), u_input.a.yz));
    var var_1 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, arg_1.a.b.b.x, -410f, 311f)), _wgslsmith_f_op_vec4_f32(floor(arg_1.a.b.b)))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(arg_1.b, 605f, arg_1.a.b.b.x, arg_1.a.b.b.x))), _wgslsmith_div_vec4_f32(vec4<f32>(1832f, 247f, 590f, -1006f), vec4<f32>(arg_1.a.b.b.x, arg_1.a.b.d, arg_1.b, arg_1.a.b.d)), select(vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, false, arg_1.a.a.x), vec4<bool>(false, true, true, false), vec4<bool>(arg_1.a.a.x, arg_1.a.a.x, true, arg_1.a.a.x))))))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_1.b, -696f, arg_1.a.b.d, arg_1.b))))))));
    return -43129i;
}

fn func_2(arg_0: bool) -> Struct_3 {
    let var_0 = _wgslsmith_dot_vec4_i32(vec4<i32>(~reverseBits(2147483647i), i32(-1i) * -66637i, _wgslsmith_mult_i32(~(-75916i), countOneBits(-53917i)), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), countOneBits(vec3<i32>(0i, -1i, -31253i)))) ^ ((vec4<i32>(-1i) * -vec4<i32>(-13246i, 0i, 14760i, -6830i)) & countOneBits(vec4<i32>(0i, 22279i, 310i, 1i) >> (global1[_wgslsmith_index_u32(u_input.a.x, 25u)] % vec4<u32>(32u)))), countOneBits(_wgslsmith_mod_vec4_i32(min(_wgslsmith_mod_vec4_i32(vec4<i32>(0i, 1i, -2147483647i, -2147483647i), vec4<i32>(-2147483647i, 2147483647i, -2147483647i, -24084i)), vec4<i32>(-1i, -1i, -1i, 28455i)), vec4<i32>(-1i) * -vec4<i32>(2147483647i, 2147483647i, 31666i, -2147483647i))));
    let var_1 = Struct_2(!select(!(!vec3<bool>(arg_0, arg_0, false)), vec3<bool>(arg_0, true, true), !select(vec3<bool>(arg_0, arg_0, arg_0), vec3<bool>(arg_0, true, true), vec3<bool>(true, arg_0, false))), Struct_1(vec3<i32>(_wgslsmith_div_i32(-3803i, -10850i), _wgslsmith_clamp_i32(-8089i, var_0, 42162i), 51708i) >> (vec3<u32>(global0[_wgslsmith_index_u32(u_input.a.x, 20u)], 20395u, u_input.a.x) % vec3<u32>(32u)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-1382f, -1330f, -1267f, 1734f))) - vec4<f32>(363f, -483f, -238f, 939f))), func_3(vec2<i32>(var_0, var_0 | 44200i), Struct_4(Struct_2(vec3<bool>(false, arg_0, true), Struct_1(vec3<i32>(var_0, var_0, 22127i), vec4<f32>(106f, 444f, 2567f, -801f), -15816i, -1623f)), _wgslsmith_div_f32(1000f, 683f)), firstTrailingBit(vec2<u32>(global0[_wgslsmith_index_u32(53861u, 20u)], global0[_wgslsmith_index_u32(u_input.a.x, 20u)]) << (u_input.a.yz % vec2<u32>(32u)))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-1383f))))))));
    return Struct_3(var_0, _wgslsmith_f_op_f32(872f * _wgslsmith_f_op_f32(abs(var_1.b.d))), var_1.b.d, abs(~vec2<u32>(~global0[_wgslsmith_index_u32(0u, 20u)], select(0u, u_input.a.x, arg_0))));
}

fn func_4(arg_0: bool, arg_1: bool, arg_2: bool, arg_3: Struct_3) -> Struct_2 {
    var var_0 = _wgslsmith_f_op_f32(-arg_3.c);
    var_0 = 693f;
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_3.b - _wgslsmith_f_op_f32(trunc(arg_3.c))), _wgslsmith_f_op_f32(-arg_3.b)));
    let var_1 = Struct_2(!(!(!vec3<bool>(arg_0, true, arg_2))), Struct_1(_wgslsmith_sub_vec3_i32(max(-vec3<i32>(arg_3.a, arg_3.a, arg_3.a), _wgslsmith_mult_vec3_i32(vec3<i32>(arg_3.a, arg_3.a, arg_3.a), vec3<i32>(arg_3.a, -2147483647i, 81743i))), ~(vec3<i32>(arg_3.a, arg_3.a, arg_3.a) | vec3<i32>(44818i, arg_3.a, arg_3.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1255f, -822f, arg_3.b, arg_3.c))), 56062i, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_3.c, arg_3.b))))));
    var var_2 = Struct_3(var_1.b.c, _wgslsmith_f_op_f32(trunc(1405f)), _wgslsmith_f_op_f32(arg_3.c + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-418f, 1280f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(3078f, arg_3.b)) * _wgslsmith_f_op_f32(-arg_3.c)))), firstLeadingBit(abs(func_2(var_1.b.c < var_1.b.c).d)));
    return Struct_2(var_1.a, Struct_1(var_1.b.a, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-967f - var_2.b) + var_1.b.d), 383f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_1.b.d))), _wgslsmith_f_op_f32(min(var_2.c, _wgslsmith_f_op_f32(ceil(var_2.b))))), ~(i32(-1i) * -19667i), _wgslsmith_f_op_f32(-172f + _wgslsmith_div_f32(-1607f, _wgslsmith_f_op_f32(f32(-1f) * -1007f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(func_4(false, true, true, func_2(any(func_1(-448f, Struct_2(vec3<bool>(true, true, false), Struct_1(vec3<i32>(73005i, 1i, 1i), vec4<f32>(1879f, 942f, 1544f, 1315f), 0i, -175f)))))), _wgslsmith_f_op_f32(floor(-1000f)));
    global0 = array<u32, 20>();
    global1 = array<vec4<u32>, 25>();
    var var_1 = func_2(false);
    let var_2 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_mod_i32(27548i, 31775i ^ countOneBits(var_1.a)), _wgslsmith_dot_vec4_i32(select(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.a.b.a.x, 0i, 32896i, var_1.a), vec4<i32>(1i, 24672i, var_1.a, 2147483647i)), abs(vec4<i32>(-2147483647i, var_1.a, var_1.a, var_0.a.b.a.x)), !vec4<bool>(false, var_0.a.a.x, var_0.a.a.x, var_0.a.a.x)), _wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(vec4<i32>(var_1.a, -1i, 39743i, var_1.a), vec4<i32>(-45927i, -12857i, 2147483647i, 2147483647i)), vec4<i32>(var_0.a.b.c, 2147483647i, var_1.a, var_1.a) | vec4<i32>(var_1.a, var_0.a.b.a.x, 1i, var_1.a)))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(16513i, _wgslsmith_add_i32(12106i, var_0.a.b.a.x)), _wgslsmith_mult_i32(-var_1.a, max(8915i, 42564i))) ^ 33530i, 0i, -((i32(-1i) * -1417i) >> (~_wgslsmith_mod_u32(51763u, var_1.d.x) % 32u)));
    global0 = array<u32, 20>();
    let var_3 = global0[_wgslsmith_index_u32(select(1u, ~1u, select((_wgslsmith_clamp_u32(0u, u_input.a.x, 36405u) > var_1.d.x) || select(func_1(var_1.c, Struct_2(var_0.a.a, var_0.a.b)).x, u_input.a.x < 0u, var_0.a.a.x), !var_0.a.a.x, (_wgslsmith_f_op_f32(sign(var_0.a.b.d)) != var_1.c) || true)), 20u)];
    var var_4 = vec2<u32>(firstTrailingBit(var_1.d.x), ~(46221u | _wgslsmith_div_u32(4294967295u, global0[_wgslsmith_index_u32(var_1.d.x, 20u)]))) >> (var_1.d % vec2<u32>(32u));
    var_4 = var_1.d;
    let x = u_input.a;
    s_output = StorageBuffer(func_4(true, var_0.a.a.x, true, func_2(all(var_0.a.a.yx))).b.c, var_4.x, 21459u, 0i, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(1501f, 1628f, var_1.b), _wgslsmith_f_op_vec3_f32(-var_0.a.b.b.zwy)) * _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.b, var_1.b, 1563f) * vec3<f32>(-297f, var_0.b, -517f)), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.b.b.x, var_0.a.b.d, var_1.b)))))) * _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(var_0.a.b.b.xzx, vec3<f32>(-449f, -205f, var_0.b))))));
}

