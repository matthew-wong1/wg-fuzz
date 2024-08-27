struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: bool,
    d: i32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: vec2<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 30>;

var<private> global1: bool = false;

var<private> global2: array<bool, 12>;

var<private> global3: Struct_1 = Struct_1(vec2<f32>(-1402f, -434f), vec3<bool>(false, true, false), false, 1i);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    var var_0 = min(~vec4<u32>(u_input.c.x, reverseBits(~u_input.d), 63883u, u_input.c.x), vec4<u32>(~0u, 4294967295u, ~(~1u), _wgslsmith_add_u32(4294967295u, 0u)));
    let var_1 = false;
    let var_2 = Struct_1(vec2<f32>(2029f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.a.x, global3.a.x, global3.c))))), vec3<bool>(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~(vec3<u32>(0u, 3705u, 32731u) | vec3<u32>(95527u, 59264u, u_input.c.x)), abs(vec3<u32>(var_0.x, 0u, 60462u))), 12u)], !global2[_wgslsmith_index_u32(~14276u, 12u)], select(!all(global3.b.zz), all(select(global3.b, global3.b, var_1)), global3.b.x)), global2[_wgslsmith_index_u32(var_0.x << ((1u << ((~7088u & u_input.b.x) % 32u)) % 32u), 12u)], 0i);
    let var_3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1879f, var_2.a.x), var_2.a))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, -523f)), !(var_0.x == var_0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.a.x, global3.a.x)))), global3.b, any(vec2<bool>(true, var_2.c)), -2147483647i);
    var_0 = abs(_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(125090u, 27391u, 38539u, 0u), vec4<u32>(0u, 8866u, 0u, 0u) << (vec4<u32>(var_0.x, u_input.d, var_0.x, var_0.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.b.x, var_0.x, 1u, 1u)) >> (~countOneBits(vec4<u32>(u_input.c.x, 75447u, 0u, 11088u)) % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(min(~vec4<u32>(u_input.b.x, u_input.b.x, 13457u, u_input.b.x), vec4<u32>(var_0.x, u_input.c.x, 39399u, 4294967295u)), vec4<u32>(1u, var_0.x, ~u_input.d, reverseBits(0u)))));
    return 621f;
}

fn func_2(arg_0: bool, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    global0 = array<vec2<u32>, 30>();
    global3 = Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global3.a - _wgslsmith_div_vec2_f32(global3.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(-659f, -2205f)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(global3.a - vec2<f32>(global3.a.x, global3.a.x)), global3.a)))), select(global3.b, vec3<bool>(true, all(select(vec2<bool>(global2[_wgslsmith_index_u32(u_input.d, 12u)], global2[_wgslsmith_index_u32(arg_1, 12u)]), global3.b.xz, true)), true), !global3.b), global3.c, arg_2.x);
    global0 = array<vec2<u32>, 30>();
    global2 = array<bool, 12>();
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(885f, -1000f, -246f, _wgslsmith_f_op_f32(round(global3.a.x))) - vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global3.a.x, global3.a.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global3.a.x)))), _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(func_3(-select(arg_2, arg_2, global3.b.yy))), _wgslsmith_f_op_f32(-701f - global3.a.x)));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1073f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(step(global3.a.x, -783f)))), 648f)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2361f + -102f))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1420f * var_0.x))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> Struct_1 {
    let var_0 = vec3<u32>(_wgslsmith_sub_u32(u_input.b.x, _wgslsmith_dot_vec4_u32(~vec4<u32>(82487u, 0u, u_input.b.x, u_input.d) ^ ~vec4<u32>(35022u, 5342u, u_input.b.x, 2440u), vec4<u32>(_wgslsmith_dot_vec3_u32(u_input.b, u_input.b), 48355u, u_input.d, ~u_input.b.x))), abs(2161u), (max(~62063u, u_input.d) ^ _wgslsmith_sub_u32(4294967295u, _wgslsmith_mod_u32(u_input.c.x, 39091u))) ^ u_input.b.x);
    let var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(1062f, -670f, arg_1.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x - 515f))) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_0.a.x)), -1030f)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_1.a.x + 772f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(975f - 853f), _wgslsmith_f_op_f32(func_2(arg_1.c, 4294967295u, vec2<i32>(arg_2, arg_0.d)))), arg_0.a.x)));
    var var_2 = arg_1;
    let var_3 = _wgslsmith_mod_u32(firstTrailingBit(82305u) ^ _wgslsmith_mod_u32(var_0.x << (u_input.d % 32u), firstTrailingBit(var_0.x)), 79342u) << (4294967295u % 32u);
    return Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_2.a + vec2<f32>(arg_1.a.x, -563f)))), arg_0.b, var_2.b.x, arg_2 >> ((1u & _wgslsmith_mult_u32(_wgslsmith_mult_u32(var_0.x, 11202u), 1u)) % 32u));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: vec4<bool>) -> f32 {
    global3 = arg_2;
    global3 = Struct_1(global3.a, vec3<bool>(all(vec4<bool>(all(vec4<bool>(global2[_wgslsmith_index_u32(1u, 12u)], true, true, global2[_wgslsmith_index_u32(4294967295u, 12u)])), false, !arg_3.x, false)), false, global2[_wgslsmith_index_u32(u_input.c.x, 12u)]), true, arg_1.x);
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(max(arg_2.a, vec2<f32>(_wgslsmith_f_op_f32(abs(-716f)), 439f))), select(global3.b, global3.b, arg_3.x), all(select(func_1(Struct_1(vec2<f32>(-425f, global3.a.x), arg_3.ywx, false, global3.d), func_1(Struct_1(vec2<f32>(1000f, arg_2.a.x), arg_3.xxw, global2[_wgslsmith_index_u32(u_input.d, 12u)], arg_1.x), arg_2, arg_1.x, arg_2.d), _wgslsmith_dot_vec2_i32(vec2<i32>(-13085i, -4282i), arg_1.yx), _wgslsmith_sub_i32(arg_2.d, arg_1.x)).b, global3.b, global2[_wgslsmith_index_u32(arg_0 ^ u_input.d, 12u)] == (58158u != arg_0))), _wgslsmith_dot_vec2_i32(_wgslsmith_mult_vec2_i32(-vec2<i32>(1i, 1i), vec2<i32>(u_input.a | 0i, ~global3.d)), -vec2<i32>(-5894i, arg_1.x)));
    var var_1 = arg_0;
    let var_2 = var_0;
    return arg_2.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(step(-346f, _wgslsmith_f_op_f32(global3.a.x - _wgslsmith_f_op_f32(func_4(~u_input.b.x, vec4<i32>(29337i, 11920i, -39355i, 2147483647i), func_1(Struct_1(global3.a, vec3<bool>(global3.b.x, global3.b.x, false), false, 2147483647i), Struct_1(global3.a, vec3<bool>(true, false, global2[_wgslsmith_index_u32(29132u, 12u)]), true, 0i), u_input.a, -473i), select(vec4<bool>(global3.c, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], false, global3.c), vec4<bool>(global3.b.x, global2[_wgslsmith_index_u32(u_input.d, 12u)], global3.b.x, global3.c), vec4<bool>(global3.c, false, true, false))))))), _wgslsmith_div_f32(208f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-681f)) - 1000f)), _wgslsmith_f_op_f32(-global3.a.x), global3.a.x);
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(max(var_0.wx, vec2<f32>(var_0.x, global3.a.x)))), global3.a, global3.b.zx)), global3.b, any(vec4<bool>(!global2[_wgslsmith_index_u32(28069u, 12u)], global3.b.x, global2[_wgslsmith_index_u32(35121u, 12u)], any(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.b.x, 12u)], false)))), reverseBits(~u_input.e)), Struct_1(_wgslsmith_f_op_vec2_f32(global3.a + _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, var_0.x) + vec2<f32>(var_0.x, var_0.x))))), vec3<bool>(all(vec2<bool>(false, global2[_wgslsmith_index_u32(u_input.c.x, 12u)])), global3.b.x, global3.b.x), false, -global3.d), global3.d, global3.d);
    let var_2 = u_input.a;
    var var_3 = select(var_1.b, !(!select(vec3<bool>(var_1.c, global2[_wgslsmith_index_u32(u_input.d, 12u)], var_1.b.x), func_1(var_1, Struct_1(vec2<f32>(var_1.a.x, 571f), vec3<bool>(var_1.c, false, false), false, u_input.e), -769i, u_input.e).b, any(vec3<bool>(true, false, false)))), vec3<bool>(any(select(vec3<bool>(false, global2[_wgslsmith_index_u32(u_input.d, 12u)], global3.b.x), var_1.b, any(vec4<bool>(global3.c, global3.b.x, global3.b.x, true)))), global3.b.x, global2[_wgslsmith_index_u32(((u_input.b.x | u_input.d) >> (~u_input.b.x % 32u)) << (2026u % 32u), 12u)]));
    let var_4 = var_1;
    var var_5 = u_input.b;
    let var_6 = func_1(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1703f, global3.a.x)))), select(global3.b, global3.b, !(!global3.c)), true, _wgslsmith_div_i32(-_wgslsmith_mult_i32(1i, 1i), 41763i)), func_1(func_1(Struct_1(global3.a, func_1(Struct_1(var_4.a, var_1.b, false, 12042i), var_1, var_4.d, -1i).b, var_4.a.x >= 476f, _wgslsmith_mod_i32(14506i, u_input.e)), Struct_1(_wgslsmith_div_vec2_f32(global3.a, var_0.xy), func_1(var_1, var_4, -9693i, -31209i).b, false, 1020i), _wgslsmith_add_i32(31448i, ~u_input.a), abs(~global3.d)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.a)), select(global3.b, func_1(var_1, Struct_1(vec2<f32>(543f, global3.a.x), vec3<bool>(var_3.x, false, var_3.x), var_3.x, 0i), var_4.d, 2147483647i).b, !var_1.c), !var_1.c, var_4.d), 1i, 14973i), u_input.a, -2071i);
    global1 = any(var_1.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<i32>(firstTrailingBit(countOneBits(-1i)), var_4.d, ~(i32(-1i) * -17505i), 37804i), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.a) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(vec2<f32>(global3.a.x, global3.a.x) - var_4.a))))));
}

