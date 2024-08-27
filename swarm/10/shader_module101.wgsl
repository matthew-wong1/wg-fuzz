struct Struct_1 {
    a: vec3<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
    c: f32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 2>;

var<private> global1: array<vec4<f32>, 23> = array<vec4<f32>, 23>(vec4<f32>(-1207f, -1080f, 1046f, -786f), vec4<f32>(-532f, -2031f, 197f, 474f), vec4<f32>(-769f, 1290f, 880f, -259f), vec4<f32>(1000f, 2371f, 760f, 1539f), vec4<f32>(-282f, -398f, -1517f, 103f), vec4<f32>(1000f, -1432f, 1362f, -1948f), vec4<f32>(-1461f, 614f, -1000f, -1219f), vec4<f32>(1662f, -256f, 749f, -1134f), vec4<f32>(-2318f, -336f, -277f, -1434f), vec4<f32>(512f, 1361f, -788f, 257f), vec4<f32>(206f, 214f, -786f, -528f), vec4<f32>(604f, -1523f, 1511f, -169f), vec4<f32>(2314f, -484f, -1000f, -594f), vec4<f32>(2372f, -1166f, 663f, 1939f), vec4<f32>(1296f, -508f, -284f, 1000f), vec4<f32>(2538f, 906f, 600f, -2397f), vec4<f32>(-925f, -505f, -195f, -183f), vec4<f32>(1000f, 388f, 469f, 440f), vec4<f32>(-349f, 1144f, -213f, 298f), vec4<f32>(393f, -246f, 1420f, -1178f), vec4<f32>(2304f, -797f, -962f, 1000f), vec4<f32>(-1000f, 131f, -1000f, -196f), vec4<f32>(2420f, -337f, 660f, -609f));

var<private> global2: array<vec4<bool>, 11> = array<vec4<bool>, 11>(vec4<bool>(true, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, false, false));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: Struct_1) -> f32 {
    var var_0 = arg_0.x;
    let var_1 = vec4<i32>(-1i, _wgslsmith_dot_vec4_i32(-vec4<i32>(~(-4257i), _wgslsmith_add_i32(5091i, 0i), 1i, max(63456i, -2147483647i)), reverseBits(-vec4<i32>(-20555i, 38777i, -61481i, 67194i))), abs(-countOneBits(i32(-1i) * -2147483647i)), -max(firstLeadingBit(_wgslsmith_mod_i32(-1i, -1i)), -1i));
    global0 = array<vec4<i32>, 2>();
    var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(910f, arg_0.x))));
    let var_2 = Struct_1(vec3<bool>(false, arg_1.a.x, false));
    return arg_0.x;
}

fn func_2(arg_0: i32, arg_1: vec4<u32>) -> vec4<u32> {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(2187f, -1127f)))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec2<f32>(-1008f, -421f), Struct_1(vec3<bool>(false, false, true)), Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, false, false)))) - _wgslsmith_f_op_f32(f32(-1f) * -1038f)))), -1975f, -602f);
    global0 = array<vec4<i32>, 2>();
    var var_1 = all(!select(vec3<bool>(true, all(vec4<bool>(true, false, false, false)), var_0.x <= -449f), !select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true), any(select(global2[_wgslsmith_index_u32(arg_1.x, 11u)], vec4<bool>(false, false, false, false), false))));
    let var_2 = Struct_1(select(vec3<bool>(false, true, false), vec3<bool>(true, all(vec3<bool>(true, true, true)), arg_1.x <= ~14379u), !vec3<bool>(u_input.a.x != arg_1.x, 245f > var_0.x, true)));
    var var_3 = Struct_1(vec3<bool>(false, all(vec3<bool>(true, !var_2.a.x, true)), true));
    return vec4<u32>(_wgslsmith_mult_u32(65010u, abs(_wgslsmith_dot_vec3_u32(u_input.a, u_input.a)) << (_wgslsmith_mod_u32(arg_1.x, ~11091u) % 32u)), max(u_input.a.x, max(reverseBits(arg_1.x), _wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a.x, u_input.a.x), 1u))), ~13957u, _wgslsmith_add_u32(u_input.a.x, ~_wgslsmith_mult_u32(~u_input.a.x, ~4294967295u)));
}

fn func_1(arg_0: vec3<u32>) -> bool {
    let var_0 = true | all(global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(~vec4<u32>(0u, 1u, 4294967295u, 21652u), func_2(-2147483647i, vec4<u32>(arg_0.x, 4294967295u, 40649u, 8802u))), _wgslsmith_sub_u32(abs(u_input.a.x), 66766u), arg_0.x), 11u)]);
    let var_1 = Struct_1(vec3<bool>(all(vec2<bool>(var_0, select(var_0, false, false))), var_0, -594f > _wgslsmith_f_op_f32(sign(1f))));
    let var_2 = var_1;
    var var_3 = -23292i;
    return any(select(select(var_2.a, !var_1.a, var_2.a), select(!var_2.a, var_1.a, select(var_1.a, var_1.a, var_0)), select(vec3<bool>(!var_1.a.x, false, var_0), vec3<bool>(true, true, select(var_2.a.x, var_1.a.x, var_2.a.x)), !var_1.a.x & all(global2[_wgslsmith_index_u32(u_input.a.x, 11u)]))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.a.x;
    var var_1 = any(!vec2<bool>(any(vec3<bool>(false, false, false)), func_1(u_input.a & u_input.a)));
    var var_2 = -abs(abs(firstTrailingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(21087i, -19905i, -33778i), vec3<i32>(-1i, -4549i, 20988i)))));
    global0 = array<vec4<i32>, 2>();
    var var_3 = !(!select(!global2[_wgslsmith_index_u32(1u, 11u)], !global2[_wgslsmith_index_u32(u_input.a.x, 11u)], global2[_wgslsmith_index_u32(max(reverseBits(0u), _wgslsmith_add_u32(u_input.a.x, 16110u)), 11u)]));
    let var_4 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(1244f - -1327f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(399f * -974f), _wgslsmith_f_op_f32(1092f - 1039f))) * _wgslsmith_f_op_f32(select(-296f, _wgslsmith_f_op_f32(f32(-1f) * -1301f), all(!vec2<bool>(var_3.x, true)))))));
    var var_5 = select(!var_3.zx, var_3.xz, select(select(var_3.xx, select(select(vec2<bool>(var_3.x, var_3.x), var_3.ww, var_3.x), select(vec2<bool>(true, var_3.x), vec2<bool>(false, false), var_3.x), vec2<bool>(false, var_3.x)), !any(var_3.yw)), vec2<bool>(any(select(vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, var_3.x), vec2<bool>(var_3.x, var_3.x))), true), any(vec2<bool>(true, true))));
    let var_6 = vec2<f32>(var_4, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-200f, 1114f))))) - _wgslsmith_div_f32(var_4, var_4)));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_0, 38631u), ~vec2<i32>(-(~(-35896i)), (-51979i << (1u % 32u)) << (u_input.a.x % 32u)), var_4, _wgslsmith_f_op_f32(sign(3133f)), -2147483647i >> (firstLeadingBit(abs(_wgslsmith_clamp_u32(var_0, var_0, 12983u))) % 32u));
}

