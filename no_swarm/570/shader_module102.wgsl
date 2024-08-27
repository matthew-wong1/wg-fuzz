struct Struct_1 {
    a: vec3<i32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_3 {
    a: f32,
    b: f32,
    c: vec2<bool>,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: array<bool, 3> = array<bool, 3>(true, false, true);

var<private> global2: array<Struct_1, 4> = array<Struct_1, 4>(Struct_1(vec3<i32>(1i, 2147483647i, 13068i)), Struct_1(vec3<i32>(63255i, 11152i, 10312i)), Struct_1(vec3<i32>(60763i, 16440i, 33405i)), Struct_1(vec3<i32>(-1i, -1i, i32(-2147483648))));

var<private> global3: array<Struct_3, 20> = array<Struct_3, 20>(Struct_3(3050f, -980f, vec2<bool>(true, false), 72869u, Struct_1(vec3<i32>(-1i, 2147483647i, -25337i))), Struct_3(830f, 1000f, vec2<bool>(false, false), 4294967295u, Struct_1(vec3<i32>(i32(-2147483648), 23695i, -41040i))), Struct_3(349f, -319f, vec2<bool>(false, false), 91151u, Struct_1(vec3<i32>(31191i, 7511i, -3719i))), Struct_3(-287f, 602f, vec2<bool>(false, false), 4294967295u, Struct_1(vec3<i32>(42764i, 25766i, -29355i))), Struct_3(-164f, -1242f, vec2<bool>(true, false), 10443u, Struct_1(vec3<i32>(-39169i, -1i, 77605i))), Struct_3(522f, -947f, vec2<bool>(false, false), 1u, Struct_1(vec3<i32>(13209i, 2147483647i, 1i))), Struct_3(-730f, 449f, vec2<bool>(false, false), 21539u, Struct_1(vec3<i32>(57334i, -21491i, -40165i))), Struct_3(-2038f, -615f, vec2<bool>(false, false), 4294967295u, Struct_1(vec3<i32>(i32(-2147483648), 2147483647i, 1i))), Struct_3(818f, -1255f, vec2<bool>(false, true), 0u, Struct_1(vec3<i32>(-15684i, 17752i, 0i))), Struct_3(-267f, 335f, vec2<bool>(false, false), 32261u, Struct_1(vec3<i32>(15805i, -8363i, -1i))), Struct_3(266f, -1000f, vec2<bool>(true, false), 34015u, Struct_1(vec3<i32>(-8313i, 1i, 1i))), Struct_3(-1190f, 1215f, vec2<bool>(true, false), 4294967295u, Struct_1(vec3<i32>(13581i, -4684i, 13146i))), Struct_3(283f, -719f, vec2<bool>(false, true), 10354u, Struct_1(vec3<i32>(2147483647i, -11873i, 0i))), Struct_3(-796f, 651f, vec2<bool>(true, true), 4294967295u, Struct_1(vec3<i32>(-47164i, -22530i, 40248i))), Struct_3(588f, 454f, vec2<bool>(true, false), 832u, Struct_1(vec3<i32>(-23839i, 2147483647i, 49701i))), Struct_3(855f, -1131f, vec2<bool>(false, true), 1u, Struct_1(vec3<i32>(6059i, -15272i, 2147483647i))), Struct_3(-266f, -800f, vec2<bool>(true, false), 36130u, Struct_1(vec3<i32>(20079i, -22145i, 11229i))), Struct_3(827f, -916f, vec2<bool>(true, false), 44805u, Struct_1(vec3<i32>(i32(-2147483648), i32(-2147483648), 2147483647i))), Struct_3(101f, -1556f, vec2<bool>(false, false), 24858u, Struct_1(vec3<i32>(2147483647i, -1i, 5747i))), Struct_3(1000f, -506f, vec2<bool>(false, true), 1u, Struct_1(vec3<i32>(1i, 0i, 1i))));

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = global3[_wgslsmith_index_u32(firstLeadingBit(~45734u) << (countOneBits(_wgslsmith_clamp_u32(_wgslsmith_mult_u32(arg_1.d, _wgslsmith_sub_u32(13336u, 10685u)), arg_1.d, arg_1.d)) % 32u), 20u)];
    var var_1 = _wgslsmith_div_vec3_f32(vec3<f32>(arg_1.b, 353f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-592f, _wgslsmith_f_op_f32(-var_0.b), true)))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b, -1000f, 919f))) * vec3<f32>(arg_1.a, -1000f, var_0.b)))));
    let var_2 = reverseBits(u_input.a.x);
    var var_3 = global2[_wgslsmith_index_u32(12653u, 4u)];
    var var_4 = 19758i;
    return _wgslsmith_div_u32(4294967295u, var_0.d);
}

fn func_2(arg_0: bool, arg_1: vec4<i32>, arg_2: vec2<i32>) -> u32 {
    var var_0 = abs(_wgslsmith_sub_i32(arg_1.x, countOneBits(2147483647i) >> (func_3(!global1[_wgslsmith_index_u32(65376u, 3u)], global3[_wgslsmith_index_u32(abs(0u), 20u)], -450f) % 32u)));
    global1 = array<bool, 3>();
    global2 = array<Struct_1, 4>();
    var var_1 = select(!select(select(vec2<bool>(false, arg_0), select(vec2<bool>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(4294967295u, 3u)]), vec2<bool>(arg_0, false), vec2<bool>(arg_0, false)), all(vec3<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)], true))), select(vec2<bool>(true, arg_0), vec2<bool>(true, true), !global1[_wgslsmith_index_u32(15085u, 3u)]), select(vec2<bool>(true, true), vec2<bool>(true, false), true)), select(!select(vec2<bool>(true, true), !vec2<bool>(true, global1[_wgslsmith_index_u32(1u, 3u)]), !vec2<bool>(global1[_wgslsmith_index_u32(0u, 3u)], global1[_wgslsmith_index_u32(60052u, 3u)])), !(!vec2<bool>(arg_0, global1[_wgslsmith_index_u32(13856u, 3u)])), arg_0), !vec2<bool>(global1[_wgslsmith_index_u32(196u, 3u)], false));
    global1 = array<bool, 3>();
    return 61113u;
}

fn func_1(arg_0: Struct_3, arg_1: u32, arg_2: u32) -> f32 {
    var var_0 = 5159u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, ~arg_2, 78881u, ~24892u) ^ reverseBits(vec4<u32>(arg_0.d, 0u, 7783u, arg_0.d)), vec4<u32>(_wgslsmith_mod_u32(~4294967295u, 27167u), func_2(true, vec4<i32>(-2147483647i, u_input.b.x, arg_0.e.a.x, 0i), vec2<i32>(u_input.a.x, -19671i)), firstLeadingBit(arg_0.d), arg_2));
    let var_1 = firstLeadingBit(42440i);
    global0 = _wgslsmith_div_u32(~arg_1, 135686u);
    let var_2 = arg_0.e;
    global3 = array<Struct_3, 20>();
    return 1000f;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1297f * 580f)) - _wgslsmith_f_op_f32(-1f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1272f, -785f)) - _wgslsmith_f_op_f32(1384f - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(func_1(Struct_3(-581f, -1826f, vec2<bool>(true, false), 0u, Struct_1(vec3<i32>(-37798i, u_input.b.x, -2147483647i))), 0u, 4294967295u))))))));
    let var_1 = ~45026i;
    global0 = ~(~(~(~_wgslsmith_dot_vec4_u32(vec4<u32>(87707u, 42293u, 21068u, 4294967295u), vec4<u32>(4294967295u, 39447u, 82387u, 18845u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1481f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(877f))), -1270f, -995f)));
    let x = u_input.a;
    s_output = StorageBuffer(var_0, var_2);
}

