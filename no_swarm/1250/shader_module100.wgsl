struct Struct_1 {
    a: u32,
    b: i32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(4294967295u, -1i);

var<private> global1: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, true));

var<private> global2: array<Struct_1, 24>;

var<private> global3: array<vec4<f32>, 10> = array<vec4<f32>, 10>(vec4<f32>(-192f, 135f, -913f, 1152f), vec4<f32>(-281f, 1039f, 1000f, 739f), vec4<f32>(-1569f, 456f, 263f, 1643f), vec4<f32>(1551f, -2878f, 1366f, 1371f), vec4<f32>(895f, 1136f, -1434f, 132f), vec4<f32>(-339f, -1739f, -1000f, -649f), vec4<f32>(1242f, 829f, 134f, 1365f), vec4<f32>(-204f, 681f, 170f, -1715f), vec4<f32>(699f, -1661f, -1442f, -699f), vec4<f32>(251f, -1747f, 390f, 1000f));

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3() -> u32 {
    var var_0 = false;
    var var_1 = countOneBits(11206u);
    var var_2 = abs(global0.b & (i32(-1i) * -global0.b));
    let var_3 = ~(-1i);
    var var_4 = -281f;
    return select(~(countOneBits(global0.a) >> (abs(global0.a) % 32u)), _wgslsmith_dot_vec2_u32(_wgslsmith_mult_vec2_u32(~max(vec2<u32>(0u, global0.a), vec2<u32>(global0.a, global0.a)), ~(~vec2<u32>(1u, 25269u))), ~abs(~vec2<u32>(global0.a, global0.a))), -(~u_input.a << (~0u % 32u)) != max(~max(43730i, 2147483647i), u_input.a));
}

fn func_2(arg_0: vec3<u32>, arg_1: i32) -> bool {
    global0 = Struct_1(arg_0.x, 46793i << (firstLeadingBit(global0.a) % 32u));
    global1 = array<vec4<bool>, 11>();
    var var_0 = vec2<bool>(true, false);
    var var_1 = global2[_wgslsmith_index_u32(func_3(), 24u)];
    global2 = array<Struct_1, 24>();
    return var_0.x;
}

fn func_4(arg_0: Struct_1, arg_1: bool) -> f32 {
    var var_0 = select(select(!vec3<bool>(arg_1, !arg_1, false), vec3<bool>(arg_1 || (true & arg_1), any(!vec2<bool>(arg_1, arg_1)), !select(false, arg_1, false)), vec3<bool>(true, any(vec2<bool>(arg_1, false)), any(!vec2<bool>(arg_1, arg_1)))), vec3<bool>(func_2(~_wgslsmith_add_vec3_u32(vec3<u32>(81242u, 0u, global0.a), vec3<u32>(arg_0.a, 0u, 0u)), min(-4225i, 2147483647i)), all(vec3<bool>(true, true, select(true, true, arg_1))), true), true);
    var var_1 = Struct_1(firstLeadingBit(1u), ~u_input.a);
    global0 = Struct_1(reverseBits(4160u), max(51739i, i32(-1i) * -13401i));
    global3 = array<vec4<f32>, 10>();
    global1 = array<vec4<bool>, 11>();
    return _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1001f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -373f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(167f)) - -1070f))));
}

fn func_5(arg_0: f32, arg_1: f32) -> i32 {
    let var_0 = Struct_1(global0.a, _wgslsmith_add_i32(u_input.a & -2147483647i, u_input.a));
    var var_1 = func_3();
    let var_2 = Struct_1(20056u, var_0.b);
    var_1 = var_2.a;
    return -1i;
}

fn func_6(arg_0: vec4<i32>, arg_1: vec4<i32>) -> u32 {
    let var_0 = !global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global0.a, global0.a, ~_wgslsmith_mod_u32(7329u, global0.a)), vec3<u32>(~0u, reverseBits(~90294u), 4294967295u)), 11u)];
    global1 = array<vec4<bool>, 11>();
    let var_1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -597f), _wgslsmith_f_op_f32(abs(-229f)))), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-443f, _wgslsmith_f_op_f32(f32(-1f) * -561f)) * _wgslsmith_f_op_f32(abs(110f)))) - _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1361f, -434f)) * vec2<f32>(-197f, -184f)))))));
    let var_2 = arg_1.x;
    var var_3 = arg_1.yww;
    return min((countOneBits(global0.a) >> (global0.a % 32u)) & max(global0.a << (global0.a % 32u), max(global0.a, global0.a)), _wgslsmith_mult_u32(global0.a, ~(~1u))) | ~abs(0u);
}

fn func_1() -> u32 {
    global0 = Struct_1(global0.a, -(reverseBits(~u_input.a) << (global0.a % 32u)));
    let var_0 = global2[_wgslsmith_index_u32(1u, 24u)];
    var var_1 = global2[_wgslsmith_index_u32(1u, 24u)];
    let var_2 = global2[_wgslsmith_index_u32(reverseBits(1u), 24u)];
    global1 = array<vec4<bool>, 11>();
    return func_6(vec4<i32>(~(-17198i), firstLeadingBit(global0.b), func_5(_wgslsmith_f_op_f32(func_4(Struct_1(var_1.a, -9227i), func_2(vec3<u32>(global0.a, 16792u, 47199u), var_1.b))), _wgslsmith_f_op_f32(max(2013f, -931f))), ((-30793i & u_input.a) ^ -var_2.b) ^ u_input.a), vec4<i32>(~select(countOneBits(22911i), var_0.b, all(vec3<bool>(false, true, false))), 17477i, reverseBits(_wgslsmith_sub_i32(global0.b, firstLeadingBit(var_2.b))), abs(1i)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    global1 = array<vec4<bool>, 11>();
    var var_1 = func_1();
    var var_2 = Struct_1(0u, -_wgslsmith_dot_vec4_i32(~(vec4<i32>(global0.b, 26280i, 2147483647i, 19398i) ^ vec4<i32>(global0.b, 70i, -1i, global0.b)), vec4<i32>(1i, u_input.a, _wgslsmith_mod_i32(u_input.a, u_input.a), u_input.a)));
    let var_3 = 10650i;
    let x = u_input.a;
    s_output = StorageBuffer(-1365f, _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(var_2.a, var_2.a, var_2.a, global0.a) & vec4<u32>(1u, 4294967295u, var_2.a, 1u), vec4<u32>(1u, 28830u, 38289u, var_2.a)) | _wgslsmith_add_vec4_u32(min(vec4<u32>(3218u, 4052u, 1u, var_2.a), vec4<u32>(0u, 0u, global0.a, global0.a)), vec4<u32>(var_2.a, 0u, var_2.a, var_2.a) >> (vec4<u32>(13255u, 10802u, 28486u, 14007u) % vec4<u32>(32u))), _wgslsmith_mod_vec4_u32(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(global0.a, 4294967295u, 0u, 38560u)), select(vec4<u32>(global0.a, global0.a, global0.a, var_2.a), vec4<u32>(global0.a, 4294967295u, 4294967295u, global0.a), vec4<bool>(true, true, false, false))), min(vec4<u32>(var_2.a, var_2.a, 4294967295u, global0.a), vec4<u32>(3746u, global0.a, 4445u, var_2.a)))), 15749u);
}

