struct Struct_1 {
    a: u32,
    b: vec4<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<u32>, 8> = array<vec2<u32>, 8>(vec2<u32>(11394u, 33343u), vec2<u32>(1u, 42395u), vec2<u32>(70716u, 0u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(1u, 4294967295u), vec2<u32>(4294967295u, 4294967295u), vec2<u32>(128826u, 4294967295u), vec2<u32>(49315u, 35685u));

var<private> global1: array<i32, 14> = array<i32, 14>(-2074i, 17993i, 0i, 11639i, 8146i, -22897i, 1i, 1i, 2147483647i, 42655i, 1i, -17818i, 36809i, -22752i);

var<private> global2: array<vec2<i32>, 14> = array<vec2<i32>, 14>(vec2<i32>(1i, i32(-2147483648)), vec2<i32>(6656i, -1i), vec2<i32>(i32(-2147483648), 18981i), vec2<i32>(-20086i, 30209i), vec2<i32>(-1i, -3541i), vec2<i32>(2147483647i, -23685i), vec2<i32>(20567i, -6910i), vec2<i32>(-1195i, 2147483647i), vec2<i32>(15113i, i32(-2147483648)), vec2<i32>(-10847i, i32(-2147483648)), vec2<i32>(-18761i, 0i), vec2<i32>(23628i, -13543i), vec2<i32>(0i, -16649i), vec2<i32>(6574i, 6917i));

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<i32>, arg_2: u32) -> u32 {
    let var_0 = true;
    global1 = array<i32, 14>();
    var var_1 = Struct_1(firstTrailingBit(65842u) | (~arg_0.a & arg_2), select(vec4<bool>(arg_0.b.x, true, true, false), !(!vec4<bool>(false, true, arg_0.b.x, var_0)), vec4<bool>(true, select(true, any(arg_0.b.xzz), arg_0.b.x), true, (arg_2 | 46410u) <= arg_2)));
    let var_2 = Struct_1(arg_2, vec4<bool>(!all(arg_0.b.zx), !all(arg_0.b), true, arg_0.b.x));
    let var_3 = var_2;
    return 1u;
}

fn func_2(arg_0: vec2<bool>, arg_1: vec3<f32>, arg_2: vec3<u32>, arg_3: u32) -> bool {
    global1 = array<i32, 14>();
    global1 = array<i32, 14>();
    global0 = array<vec2<u32>, 8>();
    var var_0 = vec3<i32>(-_wgslsmith_div_i32(global1[_wgslsmith_index_u32(func_3(Struct_1(53898u, vec4<bool>(false, arg_0.x, arg_0.x, true)), vec3<i32>(u_input.b, u_input.a, -6660i) ^ vec3<i32>(-26479i, global1[_wgslsmith_index_u32(4294967295u, 14u)], 0i), arg_2.x), 14u)], -43003i), ~min(u_input.b, ~2147483647i ^ u_input.a), global1[_wgslsmith_index_u32(0u, 14u)]);
    var var_1 = -(_wgslsmith_clamp_vec4_i32(min(vec4<i32>(u_input.b, u_input.b, -1i, u_input.b), vec4<i32>(23679i, var_0.x, 2147483647i, -26551i)) << (vec4<u32>(4294967295u, 22558u, arg_2.x, 93151u) % vec4<u32>(32u)), vec4<i32>(1i, _wgslsmith_mult_i32(var_0.x, -63418i), var_0.x, max(u_input.a, -1i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, u_input.a), global1[_wgslsmith_index_u32(arg_2.x, 14u)] & -14274i, 861i, var_0.x)) | vec4<i32>(-1i, ~0i, _wgslsmith_sub_i32(-1i, global1[_wgslsmith_index_u32(47299u, 14u)]) << (~arg_3 % 32u), _wgslsmith_div_i32(_wgslsmith_mult_i32(27039i, u_input.b), global1[_wgslsmith_index_u32(arg_3 >> (arg_2.x % 32u), 14u)])));
    return !(!(!all(vec4<bool>(true, false, arg_0.x, true))));
}

fn func_1(arg_0: vec4<i32>) -> i32 {
    var var_0 = 1u;
    global2 = array<vec2<i32>, 14>();
    let var_1 = Struct_1(135721u, !select(vec4<bool>(all(vec2<bool>(true, false)), true, true, true), select(vec4<bool>(false, true, false, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, false, true))), vec4<bool>(func_2(vec2<bool>(false, true), vec3<f32>(-365f, 776f, -1295f), vec3<u32>(4682u, 0u, 0u), 44154u), true, true, any(vec4<bool>(true, false, false, true)))));
    var var_2 = 515f;
    let var_3 = var_1.b.yyy;
    return i32(-1i) * -591i;
}

fn func_4(arg_0: vec3<i32>) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(299f, _wgslsmith_f_op_f32(abs(685f)), arg_0.x > -2147483647i)), -976f), _wgslsmith_f_op_f32(min(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -433f), _wgslsmith_f_op_f32(f32(-1f) * -1088f)), _wgslsmith_f_op_f32(f32(-1f) * -173f))), _wgslsmith_f_op_f32(trunc(-1000f)), 1012f) - _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, 1254f, 443f, -924f) + vec4<f32>(584f, 102f, 910f, 413f)) * vec4<f32>(938f, 761f, 424f, -1000f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-939f, -502f, -491f, -906f) - vec4<f32>(527f, -1704f, -304f, -284f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(110f, -1205f, 1162f, 396f) - vec4<f32>(-1182f, 194f, 592f, -1000f))), func_2(select(vec2<bool>(false, false), vec2<bool>(false, true), true), _wgslsmith_f_op_vec3_f32(vec3<f32>(1659f, 1423f, 592f) - vec3<f32>(-1000f, -801f, 1166f)), ~vec3<u32>(86631u, 4294967295u, 4294967295u), _wgslsmith_mult_u32(40079u, 1u)))))));
    var var_1 = Struct_1(43192u, vec4<bool>(all(vec3<bool>(false, false, false)) || any(vec4<bool>(true, true, true, true)), false, any(vec4<bool>(true, true, true, true)), (_wgslsmith_f_op_f32(ceil(829f)) != _wgslsmith_div_f32(var_0.x, var_0.x)) | true));
    global1 = array<i32, 14>();
    var var_2 = arg_0.x;
    var_2 = firstLeadingBit(_wgslsmith_add_i32(i32(-1i) * -12269i, _wgslsmith_add_i32(_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(39103u, 14u)], -1i), _wgslsmith_mod_i32(-1349i, 2147483647i))));
    return Struct_1(min(abs(_wgslsmith_mod_u32(41181u, 4460u)), ~var_1.a), var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = !(!vec3<bool>(all(vec3<bool>(false, false, false)), true, all(vec3<bool>(false, false, true))));
    global0 = array<vec2<u32>, 8>();
    var var_1 = func_4(vec3<i32>(~func_1(vec4<i32>(u_input.a, global1[_wgslsmith_index_u32(48221u, 14u)], global1[_wgslsmith_index_u32(0u, 14u)], 0i)) << (select(1u, 1u, all(vec4<bool>(true, true, var_0.x, false))) % 32u), global1[_wgslsmith_index_u32(4294967295u, 14u)], ~(~1i)));
    let var_2 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(-347f - 1285f), _wgslsmith_f_op_f32(401f - -177f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(max(vec2<f32>(314f, -1291f), vec2<f32>(-217f, -467f)))) + vec2<f32>(_wgslsmith_f_op_f32(max(-650f, -1015f)), _wgslsmith_f_op_f32(floor(-212f))))));
    let var_3 = Struct_1(var_1.a, !select(!select(var_1.b, vec4<bool>(var_1.b.x, true, false, var_1.b.x), var_1.b.x), vec4<bool>(global1[_wgslsmith_index_u32(var_1.a, 14u)] != global1[_wgslsmith_index_u32(4294967295u, 14u)], !var_0.x, func_2(var_0.xx, vec3<f32>(var_2.x, var_2.x, 590f), vec3<u32>(0u, 114247u, var_1.a), var_1.a), select(false, var_0.x, var_0.x)), !var_1.b));
    let var_4 = -vec4<i32>(-u_input.b, ~global1[_wgslsmith_index_u32(var_3.a, 14u)], reverseBits(-(~u_input.b)), global1[_wgslsmith_index_u32(select(countOneBits(var_1.a >> (var_1.a % 32u)), ~_wgslsmith_add_u32(var_1.a, var_3.a), any(!vec4<bool>(var_0.x, var_0.x, true, var_1.b.x))), 14u)]);
    let var_5 = _wgslsmith_add_vec3_u32(~(~firstTrailingBit(firstLeadingBit(vec3<u32>(var_3.a, var_3.a, 1u)))), vec3<u32>(func_4(vec3<i32>(global1[_wgslsmith_index_u32(0u, 14u)], -global1[_wgslsmith_index_u32(1u, 14u)], 35354i)).a, 25665u >> (~var_1.a % 32u), 1u));
    let x = u_input.a;
    s_output = StorageBuffer(0u, _wgslsmith_clamp_u32(~12416u ^ _wgslsmith_mult_u32(min(var_5.x, var_5.x), ~22526u), 38566u, _wgslsmith_dot_vec2_u32(select(select(vec2<u32>(78795u, var_1.a), vec2<u32>(var_5.x, var_3.a), var_1.b.x), _wgslsmith_add_vec2_u32(global0[_wgslsmith_index_u32(var_3.a, 8u)], global0[_wgslsmith_index_u32(var_3.a, 8u)]), !var_0.zz), var_5.yz << (global0[_wgslsmith_index_u32(~1u, 8u)] % vec2<u32>(32u)))), firstTrailingBit(~vec3<u32>(_wgslsmith_sub_u32(var_1.a, var_3.a), countOneBits(2354u), select(var_3.a, var_1.a, var_3.b.x))), ~(~(~vec4<u32>(63934u, 4294967295u, 0u, 15226u))) ^ ~(~vec4<u32>(0u, var_3.a, 0u, 1u)), firstLeadingBit(0i));
}

