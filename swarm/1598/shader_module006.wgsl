struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: array<bool, 28> = array<bool, 28>(false, false, false, true, true, true, false, false, false, false, true, false, true, false, false, true, false, false, true, true, false, true, false, false, true, true, false, false);

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: Struct_1, arg_1: vec2<bool>) -> vec2<i32> {
    let var_0 = Struct_2(Struct_1(vec2<f32>(-190f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_0.d)))), arg_0.b, ~_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.c, arg_0.c, 640u), vec3<u32>(31752u, arg_0.c, 50673u) ^ vec3<u32>(arg_0.c, arg_0.c, 0u)), arg_0.d), global0.x, Struct_1(vec2<f32>(-116f, _wgslsmith_f_op_f32(698f + -272f)), -u_input.a, 0u, arg_0.a.x));
    var var_1 = ~arg_0.c;
    return -firstTrailingBit(_wgslsmith_mult_vec2_i32(select(vec2<i32>(-24090i, var_0.a.b), reverseBits(vec2<i32>(45633i, -1i)), false), -vec2<i32>(-9250i, -25365i)));
}

fn func_3(arg_0: vec3<i32>, arg_1: f32, arg_2: Struct_3, arg_3: i32) -> vec2<i32> {
    global0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(abs(~0i), _wgslsmith_div_i32(arg_2.b.c.b, arg_0.x), 37409i >> (arg_2.b.c.c % 32u)), arg_0), -1i);
    global0 = _wgslsmith_mult_vec2_i32((arg_0.zz & _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(arg_0.zx, arg_0.xx), _wgslsmith_add_vec2_i32(arg_0.zx, vec2<i32>(global0.x, arg_3)))) & -_wgslsmith_clamp_vec2_i32(arg_0.yx, -arg_0.yy, arg_0.yx), _wgslsmith_add_vec2_i32(~((arg_0.zy >> (vec2<u32>(71169u, 4294967295u) % vec2<u32>(32u))) | arg_0.xy), _wgslsmith_mult_vec2_i32(arg_0.xz, arg_0.xz)));
    global0 = ((~_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b, arg_2.b.a.b), arg_0.xx, vec2<i32>(arg_3, arg_2.b.a.b)) ^ ~vec2<i32>(arg_0.x, arg_2.b.a.b)) & (~_wgslsmith_mult_vec2_i32(arg_0.zz, vec2<i32>(arg_2.b.c.b, -26867i)) >> ((firstTrailingBit(vec2<u32>(111009u, 35998u)) | ~vec2<u32>(arg_2.b.c.c, arg_2.b.c.c)) % vec2<u32>(32u)))) & _wgslsmith_mult_vec2_i32(countOneBits(-(arg_0.zy | vec2<i32>(-53291i, global0.x))), _wgslsmith_mod_vec2_i32(arg_0.zz, vec2<i32>(global0.x, -11182i)));
    let var_0 = abs(2147483647i) ^ (arg_3 << (0u % 32u));
    let var_1 = vec2<u32>(~1u, arg_2.b.a.c);
    return arg_0.xx;
}

fn func_4(arg_0: vec2<i32>, arg_1: i32) -> vec2<bool> {
    let var_0 = _wgslsmith_mod_vec4_u32(vec4<u32>(1u, _wgslsmith_div_u32(~(~4294967295u), max(1u, 26303u)), _wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 4294967295u), firstLeadingBit(_wgslsmith_div_vec2_u32(vec2<u32>(4294967295u, 80773u), vec2<u32>(4294967295u, 95323u)))), abs(~(~6564u))), ~(~vec4<u32>(max(1u, 54920u), countOneBits(9227u), ~74575u, ~5848u)));
    global1 = array<bool, 28>();
    let var_1 = var_0.x;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -764f);
    var var_3 = vec4<bool>(global1[_wgslsmith_index_u32(abs(50405u), 28u)], global1[_wgslsmith_index_u32(~4294967295u, 28u)], true, true);
    return select(vec2<bool>(false, var_3.x), select(select(select(!var_3.zw, select(var_3.yz, vec2<bool>(false, true), var_3.x), vec2<bool>(false, global1[_wgslsmith_index_u32(var_0.x, 28u)])), var_3.zx, var_3.ww), var_3.yz, !(arg_0.x <= -u_input.a)), select(select(select(var_3.xw, var_3.xx, false), var_3.ww, vec2<bool>(all(vec3<bool>(var_3.x, false, false)), global1[_wgslsmith_index_u32(4294967295u >> (var_0.x % 32u), 28u)])), !select(select(var_3.xy, vec2<bool>(var_3.x, var_3.x), false), vec2<bool>(false, global1[_wgslsmith_index_u32(53263u, 28u)]), var_3.wx), vec2<bool>(global1[_wgslsmith_index_u32(abs(var_1) << (4294967295u % 32u), 28u)], select(any(vec4<bool>(var_3.x, var_3.x, var_3.x, var_3.x)), select(global1[_wgslsmith_index_u32(21023u, 28u)], false, global1[_wgslsmith_index_u32(var_0.x, 28u)]), var_3.x))));
}

fn func_5(arg_0: vec2<bool>, arg_1: Struct_3) -> f32 {
    global0 = func_3(vec3<i32>(firstTrailingBit(countOneBits(arg_1.b.a.b)), abs(~u_input.a), _wgslsmith_mod_i32(global0.x, 1i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a.x) * arg_1.b.c.a.x), Struct_3(vec3<f32>(arg_1.b.a.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(arg_1.a.x - 948f), _wgslsmith_f_op_f32(-arg_1.b.a.d))), _wgslsmith_f_op_f32(max(arg_1.b.c.d, 2417f))), arg_1.b), 37414i);
    let var_0 = vec2<f32>(_wgslsmith_f_op_f32(1799f + _wgslsmith_f_op_f32(272f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_1.b.a.d))))), -1000f);
    global1 = array<bool, 28>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0))), ~1i, _wgslsmith_div_u32(countOneBits(~1u), ~(~1u)), arg_1.b.a.a.x);
    var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(arg_1.b.c.a)) + _wgslsmith_f_op_vec2_f32(-var_0))), _wgslsmith_f_op_vec2_f32(arg_1.a.xx - vec2<f32>(1f, 1f)))), _wgslsmith_add_i32(firstLeadingBit(~var_1.b), u_input.a), _wgslsmith_sub_u32(abs(66534u), _wgslsmith_mod_u32(9296u, ~11280u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x) + 105f), var_1.d))));
    return arg_1.b.a.a.x;
}

fn func_2() -> Struct_1 {
    return Struct_1(vec2<f32>(1f, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(max(-699f, 182f)))))), global0.x, ~(~39698u), _wgslsmith_f_op_f32(func_5(select(func_4(func_3(vec3<i32>(u_input.a, global0.x, -1i), 1187f, Struct_3(vec3<f32>(-1000f, -1000f, -1000f), Struct_2(Struct_1(vec2<f32>(-105f, -1154f), u_input.b, 15815u, 317f), -1i, Struct_1(vec2<f32>(230f, 2826f), 2147483647i, 1u, 1347f))), u_input.b), i32(-1i) * -1i), !(!vec2<bool>(global1[_wgslsmith_index_u32(22320u, 28u)], false)), !(!vec2<bool>(global1[_wgslsmith_index_u32(83925u, 28u)], false))), Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(vec3<f32>(2005f, 766f, -1111f), vec3<f32>(663f, -135f, -546f)))), Struct_2(Struct_1(vec2<f32>(-494f, -499f), global0.x, 1u, 591f), _wgslsmith_mult_i32(-38005i, global0.x), Struct_1(vec2<f32>(997f, 832f), 16149i, 8776u, -1477f))))));
}

fn func_6(arg_0: vec2<i32>, arg_1: vec2<u32>, arg_2: Struct_1, arg_3: vec3<bool>) -> Struct_1 {
    global0 = _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(arg_0, abs(abs(arg_0)) << (~arg_1 % vec2<u32>(32u))), abs(_wgslsmith_div_vec2_i32(~(~vec2<i32>(global0.x, 2147483647i)), ~(-arg_0))));
    global1 = array<bool, 28>();
    global0 = min(vec2<i32>(~(~func_3(vec3<i32>(42806i, -1i, u_input.b), arg_2.d, Struct_3(vec3<f32>(-1642f, arg_2.d, 1097f), Struct_2(Struct_1(vec2<f32>(151f, -1000f), global0.x, arg_2.c, 472f), 13482i, arg_2)), -2147483647i).x), -8446i), arg_0);
    let var_0 = Struct_4(Struct_2(arg_2, 1i, arg_2), arg_1, ~arg_2.c);
    global0 = ~arg_0;
    return arg_2;
}

fn func_7(arg_0: Struct_2) -> Struct_3 {
    global1 = array<bool, 28>();
    global0 = (vec2<i32>(-1i) * -select(vec2<i32>(7463i, -19991i), ~vec2<i32>(2147483647i, 2147483647i), !vec2<bool>(global1[_wgslsmith_index_u32(arg_0.a.c, 28u)], true))) << (max(firstLeadingBit(_wgslsmith_add_vec2_u32(vec2<u32>(arg_0.a.c, arg_0.a.c) << (vec2<u32>(1u, arg_0.c.c) % vec2<u32>(32u)), _wgslsmith_sub_vec2_u32(vec2<u32>(arg_0.a.c, 0u), vec2<u32>(4294967295u, arg_0.c.c)))), countOneBits(countOneBits(vec2<u32>(1u, 3006u))) << (abs(~vec2<u32>(arg_0.c.c, arg_0.c.c)) % vec2<u32>(32u))) % vec2<u32>(32u));
    global0 = vec2<i32>(func_1(Struct_1(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(arg_0.a.a.x, arg_0.c.d))), -66391i, ~arg_0.c.c, _wgslsmith_f_op_f32(-arg_0.a.d)), vec2<bool>(!global1[_wgslsmith_index_u32(4294967295u, 28u)], false)).x & arg_0.b, abs(_wgslsmith_sub_i32(u_input.a, -1i)) | 0i);
    var var_0 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.d - -1129f)), _wgslsmith_f_op_f32(-func_6(min(vec2<i32>(u_input.a, 1i), vec2<i32>(u_input.b, arg_0.b)), ~vec2<u32>(4294967295u, 1u), func_6(vec2<i32>(global0.x, arg_0.c.b), vec2<u32>(arg_0.c.c, 0u), arg_0.a, vec3<bool>(global1[_wgslsmith_index_u32(7546u, 28u)], true, false)), select(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a.c, 28u)], global1[_wgslsmith_index_u32(15529u, 28u)], true), vec3<bool>(global1[_wgslsmith_index_u32(arg_0.a.c, 28u)], false, false), false)).d), _wgslsmith_f_op_f32(-arg_0.a.a.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.c.a.x, arg_0.c.d, -1608f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1124f, 1763f, -545f) - vec3<f32>(arg_0.c.a.x, arg_0.c.d, arg_0.a.d)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(228f, -1154f, arg_0.a.a.x))))), vec3<bool>(any(vec3<bool>(any(vec3<bool>(global1[_wgslsmith_index_u32(arg_0.c.c, 28u)], global1[_wgslsmith_index_u32(arg_0.c.c, 28u)], global1[_wgslsmith_index_u32(0u, 28u)])), any(vec4<bool>(true, false, true, false)), global1[_wgslsmith_index_u32(arg_0.a.c, 28u)])), global1[_wgslsmith_index_u32(arg_0.a.c, 28u)], !(true && all(vec4<bool>(global1[_wgslsmith_index_u32(34357u, 28u)], global1[_wgslsmith_index_u32(arg_0.c.c, 28u)], true, global1[_wgslsmith_index_u32(arg_0.a.c, 28u)]))))));
    return Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), vec3<f32>(-458f, var_0.x, arg_0.c.a.x))))), arg_0);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_7(Struct_2(func_6(~func_1(Struct_1(vec2<f32>(-846f, -659f), 1i, 30791u, 1167f), vec2<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(1u, 28u)])), vec2<u32>(abs(3344u), ~98u), func_2(), !(!vec3<bool>(false, false, global1[_wgslsmith_index_u32(1u, 28u)]))), _wgslsmith_sub_i32(2147483647i, _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(u_input.a, 1i)), abs(vec2<i32>(u_input.a, -16291i)))), func_6(~vec2<i32>(u_input.b, 0i) & -vec2<i32>(u_input.b, u_input.a), ~vec2<u32>(40151u, 4294967295u), func_2(), select(select(vec3<bool>(global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)]), vec3<bool>(global1[_wgslsmith_index_u32(58566u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(10050u, 28u)]), true), vec3<bool>(global1[_wgslsmith_index_u32(94158u, 28u)], false, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec3<bool>(true, true, global1[_wgslsmith_index_u32(1u, 28u)])))));
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(global0.x, abs(-1i)), select(abs(reverseBits(global0.x)), _wgslsmith_mult_i32(i32(-1i) * -1i, -34248i << (var_0.b.a.c % 32u)) << (~func_6(vec2<i32>(global0.x, -2147483647i), vec2<u32>(44728u, 56574u), Struct_1(vec2<f32>(1108f, var_0.b.a.a.x), global0.x, var_0.b.a.c, var_0.b.a.d), vec3<bool>(false, true, global1[_wgslsmith_index_u32(1u, 28u)])).c % 32u), true), _wgslsmith_div_i32(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(var_0.b.c.b, global0.x, u_input.b), vec3<i32>(u_input.b, u_input.b, 55658i)), min(vec3<i32>(global0.x, u_input.a, var_0.b.c.b) & vec3<i32>(-42948i, u_input.a, -1i), vec3<i32>(global0.x, u_input.b, 22563i) | vec3<i32>(33832i, u_input.b, 1i))), 2147483647i >> (~_wgslsmith_div_u32(var_0.b.a.c, 1u) % 32u)), 0i);
    var var_2 = var_0.b.c.d;
    let var_3 = global1[_wgslsmith_index_u32(20142u, 28u)];
    let var_4 = vec4<i32>(0i >> (var_0.b.a.c % 32u), -2147483647i, _wgslsmith_add_i32(_wgslsmith_mult_i32(-_wgslsmith_div_i32(var_0.b.b, var_1.x), ~u_input.a), _wgslsmith_add_i32(abs(abs(39368i)), var_0.b.c.b)), -1i);
    var var_5 = select(vec4<bool>(any(vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)] && false, all(vec3<bool>(global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)], false, true)))), true, any(vec3<bool>(false, true, any(vec3<bool>(true, global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)], true)))), true), !select(vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)] & global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)], func_4(var_1.xw, var_4.x).x, select(false, true, global1[_wgslsmith_index_u32(39019u, 28u)]), true), select(vec4<bool>(true, true, true, global1[_wgslsmith_index_u32(1u, 28u)]), vec4<bool>(global1[_wgslsmith_index_u32(48699u, 28u)], true, global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)]), true), !global1[_wgslsmith_index_u32(~var_0.b.a.c, 28u)]), select(select(vec4<bool>(all(vec4<bool>(global1[_wgslsmith_index_u32(4806u, 28u)], global1[_wgslsmith_index_u32(13766u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)])), any(vec2<bool>(global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)], true)), all(vec2<bool>(false, true)), !global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)]), select(select(vec4<bool>(global1[_wgslsmith_index_u32(24569u, 28u)], global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)], false, global1[_wgslsmith_index_u32(4294967295u, 28u)]), vec4<bool>(global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)], global1[_wgslsmith_index_u32(1u, 28u)], false, global1[_wgslsmith_index_u32(1u, 28u)]), false), vec4<bool>(global1[_wgslsmith_index_u32(1u, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)], global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)], global1[_wgslsmith_index_u32(43091u, 28u)]), select(vec4<bool>(global1[_wgslsmith_index_u32(0u, 28u)], false, global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)], false), vec4<bool>(false, global1[_wgslsmith_index_u32(34400u, 28u)], true, false), vec4<bool>(false, global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)], global1[_wgslsmith_index_u32(22873u, 28u)], global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)]))), false), select(!(!vec4<bool>(false, global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(0u, 28u)], global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)])), select(select(vec4<bool>(true, global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)], false, false), vec4<bool>(false, global1[_wgslsmith_index_u32(17458u, 28u)], false, true), vec4<bool>(false, true, true, false)), !vec4<bool>(global1[_wgslsmith_index_u32(36711u, 28u)], global1[_wgslsmith_index_u32(47482u, 28u)], false, global1[_wgslsmith_index_u32(1u, 28u)]), select(vec4<bool>(false, true, false, true), vec4<bool>(false, false, global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)], global1[_wgslsmith_index_u32(4294967295u, 28u)]), global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)])), vec4<bool>(!global1[_wgslsmith_index_u32(var_0.b.a.c, 28u)], var_0.b.c.a.x > var_0.a.x, true, !global1[_wgslsmith_index_u32(var_0.b.c.c, 28u)])), global1[_wgslsmith_index_u32(4294967295u, 28u)]));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -400f)));
}

