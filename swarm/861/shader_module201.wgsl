struct Struct_1 {
    a: vec4<bool>,
    b: vec4<f32>,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec2<u32>;

var<private> global2: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true));

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> bool {
    let var_0 = (abs(30691i) & _wgslsmith_clamp_i32(select(2147483647i, u_input.a ^ u_input.a, true), max(u_input.a, ~u_input.a), u_input.a)) << (~abs(1u) % 32u);
    global2 = array<vec3<bool>, 3>();
    let var_1 = Struct_1(select(select(global0.a, vec4<bool>(global0.a.x, false & global0.a.x, 29089u <= global1.x, true), global0.a.x), vec4<bool>(!any(vec4<bool>(true, global0.a.x, false, false)), false, true, true), any(select(select(global0.a, vec4<bool>(true, global0.a.x, global0.a.x, true), false), !vec4<bool>(true, global0.a.x, false, true), vec4<bool>(true, true, true, true)))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2119f, 331f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.b.x) + global0.b.x)), _wgslsmith_f_op_f32(global0.b.x - 525f), _wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(-1079f, _wgslsmith_f_op_f32(481f * global0.b.x))))));
    let var_2 = !(!(!select(var_1.a, select(vec4<bool>(global0.a.x, var_1.a.x, false, var_1.a.x), global0.a, var_1.a), !var_1.a.x)));
    var var_3 = ~reverseBits(firstLeadingBit(~(~vec3<u32>(global1.x, global1.x, global1.x))));
    return ~global1.x > _wgslsmith_dot_vec4_u32((reverseBits(vec4<u32>(86188u, 145591u, global1.x, 14100u)) >> (~vec4<u32>(1041u, global1.x, global1.x, 243u) % vec4<u32>(32u))) & ((vec4<u32>(0u, 19944u, global1.x, global1.x) ^ vec4<u32>(0u, 47214u, 50660u, 3293u)) | reverseBits(vec4<u32>(4294967295u, var_3.x, global1.x, global1.x))), vec4<u32>(17091u, 11181u, abs(54707u), 4294967295u));
}

fn func_2() -> f32 {
    let var_0 = Struct_1(!vec4<bool>(all(vec2<bool>(global0.a.x, global0.a.x)), func_3(), !any(global0.a.yx), global0.a.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.b.x, global0.b.x))), _wgslsmith_f_op_f32(min(global0.b.x, _wgslsmith_f_op_f32(-global0.b.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(global0.b.x))), global0.b.x)));
    global2 = array<vec3<bool>, 3>();
    var var_1 = var_0;
    let var_2 = global2[_wgslsmith_index_u32(firstLeadingBit(1u), 3u)];
    let var_3 = _wgslsmith_f_op_f32(min(-1459f, 203f));
    return _wgslsmith_f_op_f32(exp2(global0.b.x));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec3<i32>, arg_2: Struct_1) -> Struct_1 {
    return Struct_1(!arg_2.a, arg_0);
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: vec4<u32>) -> f32 {
    var var_0 = func_4(vec4<f32>(_wgslsmith_f_op_f32(func_2()), -1000f, -467f, -385f), select(_wgslsmith_sub_vec3_i32(max(vec3<i32>(-14694i, u_input.a, u_input.a), vec3<i32>(39694i, -65706i, u_input.a)), vec3<i32>(u_input.a, u_input.a, u_input.a)), vec3<i32>(firstTrailingBit(u_input.a), select(u_input.a, 1i, false), _wgslsmith_mod_i32(-2147483647i, u_input.a)), (u_input.a | -35992i) < -67947i) & vec3<i32>(_wgslsmith_dot_vec3_i32(~vec3<i32>(-1i, u_input.a, u_input.a), vec3<i32>(-34487i, 3978i, u_input.a)), -2147483647i, i32(-1i) * -u_input.a), arg_2);
    var var_1 = _wgslsmith_div_f32(-725f, 739f);
    var var_2 = firstLeadingBit(select(-min(-vec4<i32>(1597i, 3941i, 2147483647i, -16396i), max(vec4<i32>(u_input.a, 2147483647i, 13765i, u_input.a), vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a))), vec4<i32>(min(_wgslsmith_mult_i32(u_input.a, -1i), 39387i), min(max(u_input.a, u_input.a), ~u_input.a), 0i, firstTrailingBit(u_input.a)), arg_2.a));
    var var_3 = arg_2;
    var var_4 = true;
    return -1523f;
}

fn func_5(arg_0: vec3<u32>, arg_1: vec2<i32>, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    var var_0 = vec3<bool>(arg_3.a.x, global0.a.x, all(!(!vec3<bool>(arg_3.a.x, true, global0.a.x))));
    let var_1 = arg_3;
    var var_2 = Struct_1(vec4<bool>(any(vec3<bool>(var_1.b.x >= 1009f, true, false)), !any(global0.a.xz), true, !var_0.x), global0.b);
    var var_3 = countOneBits(abs(vec3<i32>(-1i) * -vec3<i32>(arg_1.x, arg_1.x, u_input.a))) << (~arg_0 % vec3<u32>(32u));
    var var_4 = vec2<i32>(u_input.a, ~abs(arg_1.x));
    return func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(round(global0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_2.b) - func_4(vec4<f32>(var_1.b.x, global0.b.x, -582f, var_1.b.x), vec3<i32>(2147483647i, 0i, 1i), Struct_1(vec4<bool>(false, true, true, global0.a.x), var_2.b)).b))), -_wgslsmith_mult_vec3_i32((vec3<i32>(2147483647i, 13096i, var_3.x) << (vec3<u32>(global1.x, global1.x, 17046u) % vec3<u32>(32u))) & (vec3<i32>(-1i, -2147483647i, var_4.x) ^ vec3<i32>(var_3.x, var_4.x, var_4.x)), _wgslsmith_mult_vec3_i32(_wgslsmith_mult_vec3_i32(vec3<i32>(u_input.a, u_input.a, -9942i), vec3<i32>(var_4.x, arg_1.x, 3726i)), vec3<i32>(arg_1.x, var_4.x, 1i))), var_1);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(~vec3<u32>(~global1.x, firstTrailingBit(0u), 1u), ~abs(vec2<i32>(u_input.a, max(u_input.a, -1i))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2532f * _wgslsmith_f_op_f32(func_1(global0.a.x, vec4<f32>(1381f, global0.b.x, global0.b.x, 809f), Struct_1(global0.a, global0.b), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.x, 59522u, 4294967295u, global1.x), vec4<u32>(global1.x, global1.x, global1.x, global1.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1118f))), Struct_1(select(select(!global0.a, !global0.a, vec4<bool>(true, global0.a.x, false, global0.a.x)), !select(global0.a, global0.a, global0.a.x), global0.a.x), vec4<f32>(2597f, func_4(_wgslsmith_f_op_vec4_f32(global0.b - global0.b), ~vec3<i32>(-2147483647i, u_input.a, 0i), Struct_1(vec4<bool>(true, true, false, true), global0.b)).b.x, _wgslsmith_f_op_f32(step(-1194f, _wgslsmith_f_op_f32(floor(global0.b.x)))), global0.b.x)));
    global2 = array<vec3<bool>, 3>();
    global1 = vec2<u32>(~1u, 1u);
    global1 = ~(~(~countOneBits(vec2<u32>(global1.x, global1.x)))) << (vec2<u32>(4294967295u, countOneBits(~reverseBits(global1.x))) % vec2<u32>(32u));
    let var_1 = _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(379f, 1221f, global0.b.x, 2007f), vec4<f32>(914f, -311f, global0.b.x, -2069f))), _wgslsmith_f_op_vec4_f32(-global0.b)) * _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1111f, var_0.b.x, -462f, var_0.b.x), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.b.x, -1000f, global0.b.x, var_0.b.x) + global0.b)))), var_0.b));
    var var_2 = _wgslsmith_f_op_f32(sign(-1571f));
    let x = u_input.a;
    s_output = StorageBuffer(~(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(58741u, 41622u, 9107u)), select(vec3<u32>(global1.x, global1.x, global1.x), vec3<u32>(global1.x, global1.x, global1.x), false)) ^ global1.x), -firstLeadingBit(u_input.a));
}

