struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 7> = array<vec2<f32>, 7>(vec2<f32>(-1243f, 1000f), vec2<f32>(-185f, -1216f), vec2<f32>(-737f, -2118f), vec2<f32>(-1393f, -1478f), vec2<f32>(1000f, 442f), vec2<f32>(-446f, -1000f), vec2<f32>(795f, 355f));

var<private> global1: bool;

var<private> global2: vec2<bool> = vec2<bool>(false, false);

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: f32, arg_1: f32, arg_2: vec3<bool>) -> bool {
    global3 = Struct_1(-global3.a, global3.b);
    global0 = array<vec2<f32>, 7>();
    global2 = select(arg_2.yy, arg_2.xz, vec2<bool>(arg_2.x, false));
    return all(vec3<bool>(any(vec3<bool>(all(vec3<bool>(true, true, true)), global2.x, true)), all(arg_2), !(_wgslsmith_div_i32(u_input.b.x, 1i) < global3.a)));
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(countOneBits(abs(0i)) << (u_input.a % 32u), max(global3.b, vec3<u32>(~global3.b.x, global3.b.x, 21212u) >> (global3.b % vec3<u32>(32u))));
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(~6605i, -6205i & min(var_0.a, _wgslsmith_mod_i32(1i, var_0.a))), ~(~abs(firstTrailingBit(u_input.b))));
    let var_2 = select(!vec3<bool>(!select(false, global2.x, global2.x), all(!vec2<bool>(global2.x, false)), func_3(_wgslsmith_f_op_f32(f32(-1f) * -1000f), 1f, select(vec3<bool>(global2.x, true, global2.x), vec3<bool>(false, global2.x, true), true))), select(select(select(vec3<bool>(true, false, global2.x), !vec3<bool>(global2.x, global2.x, global2.x), vec3<bool>(global2.x, global2.x, global2.x)), vec3<bool>(false, true, all(vec2<bool>(false, false))), all(select(vec4<bool>(global2.x, true, true, global2.x), vec4<bool>(true, false, false, false), false))), select(select(vec3<bool>(true, true, true), select(vec3<bool>(global2.x, global2.x, false), vec3<bool>(global2.x, true, global2.x), global2.x), true), vec3<bool>(all(vec3<bool>(global2.x, false, true)), true, true), select(vec3<bool>(true, true, global2.x), select(vec3<bool>(global2.x, false, false), vec3<bool>(true, false, global2.x), false), select(vec3<bool>(false, global2.x, true), vec3<bool>(global2.x, true, global2.x), global2.x))), select(vec3<bool>(true, false, any(vec4<bool>(global2.x, global2.x, global2.x, false))), vec3<bool>(global2.x, global2.x, true), !(!vec3<bool>(false, false, global2.x)))), any(vec4<bool>(global2.x, all(vec4<bool>(true, true, global2.x, true)), !(!global2.x), !(!global2.x))));
    var var_3 = vec3<i32>(-countOneBits(-2147483647i), ~_wgslsmith_add_i32(abs(firstTrailingBit(var_1)), 2147483647i >> ((u_input.a >> (1u % 32u)) % 32u)), -11486i);
    var var_4 = Struct_1(min(u_input.b.x, ~1i), global3.b);
    return Struct_1(_wgslsmith_mod_i32(_wgslsmith_clamp_i32(-min(var_1, var_0.a), u_input.b.x >> (30311u % 32u), select(reverseBits(-4793i), var_3.x | 1i, func_3(1197f, 1000f, vec3<bool>(var_2.x, global2.x, true)))), _wgslsmith_div_i32(106835i, var_0.a)), var_4.b);
}

fn func_1() -> vec4<f32> {
    global1 = global2.x;
    var var_0 = func_2();
    var var_1 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(186f)), -187f, _wgslsmith_f_op_f32(select(1000f, -142f, true)), 1380f) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(850f - 1575f)), 1f, _wgslsmith_f_op_f32(min(1634f, _wgslsmith_f_op_f32(floor(-617f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1282f)))));
    global1 = false;
    let var_2 = vec4<bool>(!(!any(select(vec4<bool>(true, true, global2.x, false), vec4<bool>(false, false, global2.x, global2.x), global2.x))), any(select(!select(vec4<bool>(false, true, global2.x, true), vec4<bool>(global2.x, global2.x, false, global2.x), vec4<bool>(false, false, false, global2.x)), !select(vec4<bool>(false, global2.x, global2.x, false), vec4<bool>(global2.x, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(false, global2.x, global2.x, global2.x), !vec4<bool>(global2.x, false, global2.x, true), !vec4<bool>(false, global2.x, global2.x, true)))), select(!(!global2.x), global2.x, 1i < (global3.a | -u_input.b.x)), true);
    return vec4<f32>(_wgslsmith_f_op_f32(-683f - _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.x - 1177f) - _wgslsmith_f_op_f32(f32(-1f) * -119f))))), -1000f, -1469f, var_1.x);
}

fn func_4(arg_0: vec2<f32>, arg_1: vec4<f32>, arg_2: u32) -> Struct_1 {
    let var_0 = func_2();
    var var_1 = _wgslsmith_sub_u32(~arg_2, 28729u);
    global0 = array<vec2<f32>, 7>();
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-601f)) + -1538f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(-194f)), -1000f))))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - 775f)))), arg_1.x)));
    var var_3 = arg_2;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_1(22050i, ~vec3<u32>(global3.b.x, max(~1u, ~1u), _wgslsmith_mod_u32(22389u, global3.b.x) << (4294967295u % 32u)));
    global3 = func_4(global0[_wgslsmith_index_u32(55158u, 7u)], _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_1()) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 2365f, 277f, -505f)) * vec4<f32>(137f, -1805f, 1143f, 176f))) * _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-2851f, 347f, -753f, -330f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(330f, -493f, 205f, -1000f) - vec4<f32>(160f, -836f, 1195f, 866f))))), u_input.a);
    var var_0 = Struct_1(u_input.b.x, global3.b);
    let var_1 = func_4(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec4_f32(func_1()).zz, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0[_wgslsmith_index_u32(countOneBits(73750u), 7u)] * vec2<f32>(1719f, 2155f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-205f + -414f) - -637f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1688f - -905f)), _wgslsmith_f_op_f32(1317f + -929f), 704f)), min(global3.b.x, _wgslsmith_mult_u32(8367u, var_0.b.x) << (firstTrailingBit(_wgslsmith_mult_u32(var_0.b.x, 1u)) % 32u)));
    var var_2 = !vec2<bool>((all(vec2<bool>(false, true)) | false) == global2.x, true);
    global0 = array<vec2<f32>, 7>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-41272i), func_4(_wgslsmith_f_op_vec2_f32(-global0[_wgslsmith_index_u32(14667u, 7u)]), vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-550f * 257f), _wgslsmith_f_op_f32(f32(-1f) * -1202f))), 1f, _wgslsmith_f_op_f32(min(-174f, _wgslsmith_f_op_vec4_f32(func_1()).x)), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(212f, 801f), -642f, var_2.x && false))), _wgslsmith_mult_u32(u_input.a, global3.b.x & 50344u) >> (~var_1.b.x % 32u)).b, global3.a);
}

