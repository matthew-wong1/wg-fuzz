struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: array<bool, 8> = array<bool, 8>(false, false, true, true, true, false, false, true);

var<private> global2: vec3<f32> = vec3<f32>(-212f, -1519f, -2317f);

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: vec4<u32>) -> vec4<i32> {
    let var_0 = arg_1;
    let var_1 = arg_0;
    var var_2 = Struct_1(var_0.a, global0.b);
    global2 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, _wgslsmith_f_op_f32(sign(global2.x)), _wgslsmith_f_op_f32(round(global2.x)))))) * _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1394f, 1000f, 433f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2.x, global2.x, global2.x))))))));
    var var_3 = Struct_1(vec2<bool>(false, true), -(arg_1.b ^ ((vec4<i32>(var_0.b.x, arg_0.b.x, 35840i, 0i) >> (vec4<u32>(u_input.d.x, arg_3.x, u_input.e.x, arg_3.x) % vec4<u32>(32u))) & ~vec4<i32>(1i, arg_1.b.x, arg_2.x, -8481i))));
    return -_wgslsmith_mod_vec4_i32(_wgslsmith_clamp_vec4_i32(_wgslsmith_sub_vec4_i32(_wgslsmith_add_vec4_i32(var_1.b, vec4<i32>(1i, arg_2.x, 1i, -20809i)), arg_1.b), _wgslsmith_div_vec4_i32(-var_1.b, _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a, arg_0.b.x, -10638i, 2147483647i), arg_2)), min(abs(vec4<i32>(2147483647i, 1i, -6682i, var_3.b.x)), var_3.b)), var_0.b);
}

fn func_3() -> vec4<i32> {
    let var_0 = Struct_1(global0.a, vec4<i32>(-33975i, 1i, -368i, u_input.a));
    var var_1 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.x))))));
    let var_2 = global2.x;
    var_1 = global2.x;
    var_1 = _wgslsmith_f_op_f32(max(-2268f, _wgslsmith_f_op_f32(global2.x - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x))) - global2.x))));
    return var_0.b;
}

fn func_1(arg_0: vec4<i32>, arg_1: bool, arg_2: u32, arg_3: u32) -> vec4<u32> {
    var var_0 = _wgslsmith_add_vec4_i32(min(arg_0, -func_2(Struct_1(global0.a, vec4<i32>(global0.b.x, arg_0.x, 35294i, global0.b.x)), Struct_1(vec2<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 8u)], global0.a.x), vec4<i32>(arg_0.x, u_input.a, 1i, -1i)), vec4<i32>(u_input.a, 2147483647i, -1i, 0i), vec4<u32>(1u, u_input.d.x, 1u, 56853u))), vec4<i32>(_wgslsmith_mult_i32(u_input.a, global0.b.x), (global0.b.x ^ -2147483647i) << (arg_2 % 32u), abs(-1i), ~(~u_input.a))) ^ func_3();
    let var_1 = Struct_1(!global0.a, -func_2(Struct_1(!global0.a, func_2(Struct_1(global0.a, global0.b), Struct_1(vec2<bool>(false, true), vec4<i32>(1i, -15119i, -1i, -39335i)), vec4<i32>(var_0.x, 1i, global0.b.x, arg_0.x), vec4<u32>(32560u, arg_2, 0u, arg_3))), Struct_1(vec2<bool>(true, global0.a.x), select(vec4<i32>(arg_0.x, -12747i, u_input.a, var_0.x), vec4<i32>(var_0.x, arg_0.x, arg_0.x, 0i), arg_1)), min(vec4<i32>(global0.b.x, u_input.a, -2147483647i, -2147483647i), ~arg_0), min(reverseBits(vec4<u32>(1u, u_input.b, arg_3, 1u)), ~vec4<u32>(u_input.c, arg_3, arg_3, arg_3))));
    var var_2 = !vec4<bool>(true, (5264u << (max(u_input.c, 0u) % 32u)) <= (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c, 51288u, 1u, 4294967295u), vec4<u32>(u_input.c, u_input.b, u_input.d.x, 11233u)) & _wgslsmith_sub_u32(u_input.d.x, 31051u)), true, !(!(136f < global2.x)));
    let var_3 = -_wgslsmith_add_i32(i32(-1i) * -60896i, ~var_0.x << (~u_input.b % 32u)) ^ ~(-77576i);
    let var_4 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - -1512f), 1000f, _wgslsmith_f_op_f32(f32(-1f) * -156f), 613f), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1512f, 104f, 1291f, global2.x)) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(870f, 1137f, global2.x, global2.x)))))));
    return min(select(_wgslsmith_mult_vec4_u32(reverseBits(_wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d.x, 0u, 1u, 4294967295u), vec4<u32>(u_input.d.x, u_input.b, 1u, 38064u))), abs(~vec4<u32>(98221u, 1u, arg_2, arg_3))), vec4<u32>(_wgslsmith_mult_u32(~arg_2, ~54455u), reverseBits(41426u), countOneBits(max(1u, 4268u)), ~_wgslsmith_mod_u32(40308u, arg_2)), select(select(!vec4<bool>(arg_1, true, global1[_wgslsmith_index_u32(1u, 8u)], false), select(vec4<bool>(var_2.x, true, false, true), vec4<bool>(true, true, global1[_wgslsmith_index_u32(u_input.e.x, 8u)], var_2.x), vec4<bool>(true, false, false, var_1.a.x)), -668f < var_4.x), vec4<bool>(!var_1.a.x, var_2.x & false, global1[_wgslsmith_index_u32(0u, 8u)], true), vec4<bool>(true, !var_2.x, any(vec4<bool>(true, global1[_wgslsmith_index_u32(4294967295u, 8u)], true, global0.a.x)), any(global0.a)))), abs(_wgslsmith_add_vec4_u32(vec4<u32>(firstLeadingBit(arg_3), abs(arg_3), 33270u, arg_3 & 4294967295u), vec4<u32>(1u, 4294967295u, abs(76566u), ~arg_3))));
}

fn func_4(arg_0: vec4<u32>) -> Struct_1 {
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(266f, global2.x, global2.x))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-807f, 473f, global2.x)))))));
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -666f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-623f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global2.x)), _wgslsmith_f_op_f32(ceil(1186f)))) + _wgslsmith_f_op_f32(f32(-1f) * -671f))), global2.x);
    global0 = Struct_1(select(vec2<bool>((global0.a.x || true) & global0.a.x, true), !select(vec2<bool>(false, global0.a.x), !global0.a, select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 8u)], global0.a.x), vec2<bool>(false, true), global0.a)), !all(!vec3<bool>(global0.a.x, global0.a.x, global0.a.x))), reverseBits(_wgslsmith_mod_vec4_i32(firstTrailingBit(_wgslsmith_clamp_vec4_i32(vec4<i32>(global0.b.x, global0.b.x, -6821i, u_input.a), vec4<i32>(u_input.a, global0.b.x, global0.b.x, u_input.a), vec4<i32>(1784i, 21471i, -2147483647i, u_input.a))), -vec4<i32>(global0.b.x, u_input.a, u_input.a, u_input.a))));
    var var_1 = Struct_1(vec2<bool>(true, true), _wgslsmith_clamp_vec4_i32(-(-vec4<i32>(global0.b.x, global0.b.x, -2147483647i, u_input.a) | ~vec4<i32>(u_input.a, 7485i, global0.b.x, u_input.a)), global0.b, _wgslsmith_clamp_vec4_i32(func_3(), vec4<i32>(-27879i, u_input.a, 2147483647i, countOneBits(-1i)), _wgslsmith_mod_vec4_i32(global0.b, -global0.b))));
    let var_2 = arg_0.xyz;
    return Struct_1(select(select(vec2<bool>(true, select(true, true, true)), vec2<bool>(true, true), var_1.a), global0.a, global2.x != _wgslsmith_f_op_f32(f32(-1f) * -451f)), reverseBits(vec4<i32>(-1i) * -vec4<i32>(u_input.a, var_1.b.x, u_input.a, 0i)));
}

fn func_5(arg_0: Struct_1, arg_1: bool, arg_2: vec2<u32>, arg_3: vec3<f32>) -> vec4<f32> {
    let var_0 = ~(~(~select(vec3<u32>(0u, u_input.c, 4294967295u), vec3<u32>(u_input.e.x, 0u, 1u), vec3<bool>(global0.a.x, arg_1, arg_0.a.x))) ^ ~_wgslsmith_sub_vec3_u32(vec3<u32>(32535u, 1u, 23859u), vec3<u32>(51462u, 4294967295u, arg_2.x)));
    global2 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global2.x, -1079f, global2.x)));
    global1 = array<bool, 8>();
    let var_1 = Struct_1(arg_0.a, vec4<i32>(_wgslsmith_dot_vec4_i32(select(global0.b, ~vec4<i32>(arg_0.b.x, u_input.a, 35197i, global0.b.x), !vec4<bool>(false, false, arg_0.a.x, global0.a.x)), arg_0.b), -arg_0.b.x, global0.b.x, -38606i));
    let var_2 = func_4(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(firstLeadingBit(~vec4<u32>(68528u, u_input.d.x, arg_2.x, 0u)), ~vec4<u32>(0u, u_input.e.x, u_input.b, u_input.e.x)), ~(~(~vec4<u32>(u_input.d.x, 1u, var_0.x, 4294967295u)))));
    return _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_3.x, 903f, 1000f, 1000f)) * _wgslsmith_div_vec4_f32(vec4<f32>(980f, global2.x, arg_3.x, arg_3.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(247f, -197f, arg_3.x, arg_3.x), vec4<f32>(arg_3.x, -191f, arg_3.x, 1310f))))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(func_5(func_4(func_1(_wgslsmith_clamp_vec4_i32(global0.b, ~vec4<i32>(0i, u_input.a, u_input.a, global0.b.x), min(vec4<i32>(-1589i, u_input.a, global0.b.x, 39199i), global0.b)), !any(vec4<bool>(global1[_wgslsmith_index_u32(21675u, 8u)], global0.a.x, global1[_wgslsmith_index_u32(10698u, 8u)], global1[_wgslsmith_index_u32(67926u, 8u)])), min(firstLeadingBit(u_input.e.x), 1u), ~firstLeadingBit(1u))), any(vec4<bool>(global1[_wgslsmith_index_u32(1u, 8u)], select(true, true, true), global1[_wgslsmith_index_u32(1u, 8u)], any(vec4<bool>(true, false, global1[_wgslsmith_index_u32(9493u, 8u)], true)))) | false, ~u_input.e, vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global2.x)) * _wgslsmith_f_op_f32(sign(global2.x))) - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.x)))), _wgslsmith_f_op_f32(-global2.x), global2.x)));
    global0 = func_4(~vec4<u32>(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(u_input.d.x, 4294967295u, 43582u, u_input.c)), ~vec4<u32>(u_input.c, 42992u, 23566u, 1u)), abs(u_input.d.x), 14930u, u_input.e.x));
    let var_1 = select(func_1(global0.b, func_4(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 6227u, 1u, u_input.c), vec4<u32>(5319u, u_input.d.x, 52744u, 1u), vec4<u32>(4294967295u, u_input.d.x, 27090u, 1u))).b.x <= -_wgslsmith_sub_i32(u_input.a, 45979i), 4294967295u, _wgslsmith_sub_u32(63211u, ~u_input.e.x) | ~u_input.d.x).x, _wgslsmith_dot_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(83631u, u_input.c, u_input.d.x, u_input.d.x) | vec4<u32>(u_input.c, 1u, 1u, u_input.b), vec4<u32>(u_input.b, u_input.c, u_input.e.x, 68285u)), vec4<u32>(u_input.e.x, u_input.c, ~(u_input.e.x << (1u % 32u)), select(~u_input.e.x, _wgslsmith_div_u32(u_input.b, 1u), false))), global1[_wgslsmith_index_u32(u_input.b, 8u)]);
    let var_2 = func_4(~select(countOneBits(vec4<u32>(u_input.b, 9822u, u_input.c, u_input.e.x)), _wgslsmith_add_vec4_u32(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, u_input.d.x, 77565u, var_1), vec4<u32>(u_input.c, u_input.e.x, u_input.c, 4294967295u)), _wgslsmith_add_vec4_u32(vec4<u32>(var_1, 1u, var_1, 19379u), vec4<u32>(0u, u_input.e.x, 4294967295u, var_1))), select(select(vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(var_1, 8u)], true, false), vec4<bool>(false, false, false, global0.a.x), vec4<bool>(global1[_wgslsmith_index_u32(u_input.e.x, 8u)], false, global0.a.x, global1[_wgslsmith_index_u32(3073u, 8u)])), select(vec4<bool>(global0.a.x, true, global0.a.x, true), vec4<bool>(global1[_wgslsmith_index_u32(18820u, 8u)], global1[_wgslsmith_index_u32(u_input.e.x, 8u)], global0.a.x, false), vec4<bool>(global1[_wgslsmith_index_u32(u_input.d.x, 8u)], global1[_wgslsmith_index_u32(var_1, 8u)], false, global1[_wgslsmith_index_u32(var_1, 8u)])), !vec4<bool>(global1[_wgslsmith_index_u32(4294967295u, 8u)], global1[_wgslsmith_index_u32(var_1, 8u)], global1[_wgslsmith_index_u32(2203u, 8u)], global1[_wgslsmith_index_u32(1u, 8u)]))));
    var var_3 = Struct_1(select(vec2<bool>(false, !(!global0.a.x)), vec2<bool>(!global0.a.x || true, all(vec3<bool>(false, false, false))), var_2.a), abs(var_2.b) >> (vec4<u32>(~u_input.d.x ^ var_1, 4294967295u, _wgslsmith_dot_vec4_u32(~vec4<u32>(var_1, var_1, 30598u, 34015u), vec4<u32>(var_1, u_input.d.x, 4294967295u, 1u) << (vec4<u32>(1u, u_input.c, 4294967295u, u_input.d.x) % vec4<u32>(32u))), var_1) % vec4<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.yzx, -44134i, var_3.b.x);
}

