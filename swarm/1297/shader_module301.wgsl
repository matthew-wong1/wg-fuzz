struct Struct_1 {
    a: f32,
    b: vec4<i32>,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec4<bool>,
    b: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = 4617i;

var<private> global1: array<Struct_1, 30> = array<Struct_1, 30>(Struct_1(-549f, vec4<i32>(0i, 12975i, 1i, -22447i), false, true), Struct_1(-764f, vec4<i32>(2147483647i, 714i, -7803i, -1i), true, false), Struct_1(1764f, vec4<i32>(26768i, -21953i, -2385i, 2147483647i), false, false), Struct_1(1495f, vec4<i32>(-1i, -68613i, -7365i, 27224i), true, true), Struct_1(-408f, vec4<i32>(0i, 0i, 2147483647i, 77191i), true, true), Struct_1(-705f, vec4<i32>(-1328i, -1i, 2147483647i, i32(-2147483648)), false, false), Struct_1(2020f, vec4<i32>(34189i, 1i, -29105i, 5400i), false, false), Struct_1(-344f, vec4<i32>(-6409i, -19259i, -43938i, 0i), true, false), Struct_1(-466f, vec4<i32>(-30782i, 32590i, 2147483647i, -12748i), true, false), Struct_1(1306f, vec4<i32>(-1i, i32(-2147483648), 0i, 1i), false, false), Struct_1(-1311f, vec4<i32>(2147483647i, 0i, -58474i, -8779i), true, true), Struct_1(869f, vec4<i32>(-49258i, 11423i, 0i, 2147483647i), true, false), Struct_1(782f, vec4<i32>(2147483647i, 0i, 7393i, -19991i), true, true), Struct_1(-1829f, vec4<i32>(-1i, -39590i, -35740i, i32(-2147483648)), true, false), Struct_1(-746f, vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, 18261i), true, false), Struct_1(-298f, vec4<i32>(17934i, 34245i, -1i, i32(-2147483648)), false, false), Struct_1(438f, vec4<i32>(-1i, -8795i, -36112i, 17572i), false, false), Struct_1(-804f, vec4<i32>(2147483647i, -1i, -51290i, 2147483647i), false, true), Struct_1(561f, vec4<i32>(1i, -53098i, -4505i, -1516i), true, true), Struct_1(659f, vec4<i32>(5342i, 26160i, -2877i, i32(-2147483648)), true, true), Struct_1(-1471f, vec4<i32>(9838i, 1i, 2147483647i, 8878i), false, false), Struct_1(221f, vec4<i32>(-10446i, 2147483647i, 18493i, -30525i), true, false), Struct_1(-1293f, vec4<i32>(i32(-2147483648), 20877i, 14273i, -19231i), true, true), Struct_1(618f, vec4<i32>(-44667i, 2147483647i, -1i, 1i), false, false), Struct_1(-1631f, vec4<i32>(i32(-2147483648), 20862i, 1i, -47376i), true, false), Struct_1(-1334f, vec4<i32>(-37826i, -41188i, 1i, 2147483647i), true, false), Struct_1(-764f, vec4<i32>(2147483647i, -1i, 2147483647i, i32(-2147483648)), false, false), Struct_1(-493f, vec4<i32>(1i, 19142i, -28766i, 2147483647i), true, false), Struct_1(-327f, vec4<i32>(49054i, i32(-2147483648), 13905i, 1i), true, false), Struct_1(-696f, vec4<i32>(51064i, 0i, 16823i, -1i), false, true));

var<private> global2: array<u32, 15>;

var<private> global3: vec2<i32> = vec2<i32>(17058i, 20992i);

var<private> global4: vec3<u32> = vec3<u32>(0u, 4294967295u, 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec3<u32>) -> u32 {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1087f))))))));
    return max(global4.x, 15960u);
}

fn func_2(arg_0: u32, arg_1: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1439f, -2057f, 191f)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-614f, -606f, -1276f) + vec3<f32>(-466f, 280f, 537f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1278f, -129f, 701f) * vec3<f32>(122f, -1733f, 1363f))))));
    global4 = ~(~(~(~firstTrailingBit(vec3<u32>(0u, global2[_wgslsmith_index_u32(1u, 15u)], 0u)))));
    global4 = firstTrailingBit(abs(vec3<u32>(26239u, 54089u, _wgslsmith_div_u32(~u_input.a, 1316u << (arg_0 % 32u)))));
    global1 = array<Struct_1, 30>();
    let var_1 = arg_1.a;
    return _wgslsmith_mult_u32(firstTrailingBit(~func_3(~u_input.b, max(vec3<u32>(14001u, global2[_wgslsmith_index_u32(global4.x, 15u)], 1u), vec3<u32>(4294967295u, 0u, 0u)))), global4.x);
}

fn func_1(arg_0: vec2<bool>) -> vec3<bool> {
    global4 = select(~(~(~vec3<u32>(1u, global2[_wgslsmith_index_u32(0u, 15u)], global2[_wgslsmith_index_u32(37235u, 15u)]))), ~_wgslsmith_sub_vec3_u32(vec3<u32>(47824u, ~9476u, 1u), min(~vec3<u32>(0u, global4.x, global4.x), ~vec3<u32>(20606u, global4.x, u_input.a))), false && any(!(!vec4<bool>(false, arg_0.x, arg_0.x, true))));
    global1 = array<Struct_1, 30>();
    let var_0 = _wgslsmith_sub_u32(func_2(_wgslsmith_mult_u32(84859u, 25829u) ^ _wgslsmith_div_u32(19227u, u_input.a), Struct_2(any(vec3<bool>(false, arg_0.x, arg_0.x)))), ~_wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.a, u_input.a), ~u_input.a, u_input.a)) << (select(4294967295u, _wgslsmith_dot_vec2_u32(~(~global4.xy), vec2<u32>(global2[_wgslsmith_index_u32(u_input.a, 15u)], u_input.a) & vec2<u32>(1u, 1u)), true) % 32u);
    global1 = array<Struct_1, 30>();
    let var_1 = ~u_input.b.x;
    return !select(!vec3<bool>(true, false, u_input.b.x != global3.x), vec3<bool>(0u >= var_0, arg_0.x, arg_0.x), select(select(!vec3<bool>(true, arg_0.x, true), vec3<bool>(true, true, false), vec3<bool>(arg_0.x, true, arg_0.x)), select(select(vec3<bool>(true, arg_0.x, false), vec3<bool>(true, false, arg_0.x), vec3<bool>(arg_0.x, true, true)), !vec3<bool>(arg_0.x, arg_0.x, false), arg_0.x), vec3<bool>(all(vec2<bool>(false, false)), arg_0.x, arg_0.x | arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = select(~vec3<u32>(_wgslsmith_mult_u32(2564u, global2[_wgslsmith_index_u32(1u, 15u)]), _wgslsmith_dot_vec3_u32(vec3<u32>(global4.x, 27102u, global2[_wgslsmith_index_u32(0u, 15u)]), vec3<u32>(global4.x, global4.x, u_input.a)), 4294967295u), vec3<u32>(~6969u, global2[_wgslsmith_index_u32(global4.x >> (~8166u % 32u), 15u)], ~(~0u)), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), func_1(select(vec2<bool>(false, true), vec2<bool>(false, true), false)), false)) | (~(vec3<u32>(global2[_wgslsmith_index_u32(0u, 15u)], 1u, u_input.a) | ~vec3<u32>(33525u, global2[_wgslsmith_index_u32(global4.x, 15u)], 50743u)) & _wgslsmith_clamp_vec3_u32(countOneBits(vec3<u32>(u_input.a, 11816u, 0u)), max(max(vec3<u32>(global4.x, u_input.a, global2[_wgslsmith_index_u32(global4.x, 15u)]), vec3<u32>(1u, global4.x, 1916u)), _wgslsmith_sub_vec3_u32(vec3<u32>(73351u, 53057u, 4294967295u), vec3<u32>(global4.x, 27234u, global2[_wgslsmith_index_u32(50880u, 15u)]))), vec3<u32>(_wgslsmith_div_u32(8827u, u_input.a), 1u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(4294967295u, 15u)], 15u)] ^ global4.x)));
    global2 = array<u32, 15>();
    let var_0 = !(!any(select(vec4<bool>(false, false, false, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, false), false), true)));
    var var_1 = Struct_2(true);
    var var_2 = !(!(!vec3<bool>(true, !var_1.a, func_1(vec2<bool>(false, var_1.a)).x)));
    var var_3 = -476f;
    let var_4 = Struct_3(vec4<bool>(false, true, (-7783i & u_input.b.x) > _wgslsmith_mod_i32(-2147483647i, i32(-1i) * -28510i), false), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(994f - 1409f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_4.b, -258f, var_4.b, 559f)), _wgslsmith_f_op_vec4_f32(vec4<f32>(var_4.b, var_4.b, var_4.b, var_4.b) + vec4<f32>(var_4.b, var_4.b, var_4.b, -161f))))) * vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_4.b))), var_4.b, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(266f, -237f)), var_4.b)), u_input.a, ~(_wgslsmith_sub_vec4_u32(select(vec4<u32>(u_input.a, global2[_wgslsmith_index_u32(u_input.a, 15u)], global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(33840u, 15u)], 15u)], 15u)], 14774u), vec4<u32>(1u, global2[_wgslsmith_index_u32(u_input.a, 15u)], 4294967295u, global2[_wgslsmith_index_u32(global4.x, 15u)]), false), ~vec4<u32>(u_input.a, 1u, global4.x, 4294967295u)) ^ (_wgslsmith_add_vec4_u32(vec4<u32>(0u, 4294967295u, 2479u, global2[_wgslsmith_index_u32(1u, 15u)]), vec4<u32>(25595u, global4.x, global2[_wgslsmith_index_u32(global4.x, 15u)], 1u)) & vec4<u32>(17733u, global2[_wgslsmith_index_u32(0u, 15u)], 898u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(31524u, 15u)], 15u)]))));
}

