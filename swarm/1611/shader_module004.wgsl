struct Struct_1 {
    a: i32,
    b: vec2<i32>,
    c: bool,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: vec4<i32>,
}

struct Struct_3 {
    a: f32,
    b: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(-1000f, true, vec4<i32>(-21191i, 1i, -1i, 39018i)), Struct_2(573f, true, vec4<i32>(1i, 17282i, 9875i, -34195i)));

var<private> global1: array<vec4<u32>, 28>;

var<private> global2: f32 = -1482f;

var<private> global3: f32;

var<private> global4: array<vec4<bool>, 3> = array<vec4<bool>, 3>(vec4<bool>(true, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>, arg_2: Struct_1) -> f32 {
    let var_0 = _wgslsmith_mod_i32(arg_1.x >> (u_input.b % 32u), arg_1.x);
    global3 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_0.b.x - -2568f), -527f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(410f - arg_0.b.x) * _wgslsmith_f_op_f32(1000f - arg_0.b.x))), -250f, (true | arg_2.c) | false)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_0.a))))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.a, arg_0.a, arg_0.b.x, 828f))))))));
    let var_2 = Struct_3(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.b.x + arg_0.b.x)))), vec2<f32>(arg_0.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-arg_0.a), arg_0.b.x)) * -1581f)));
    return _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(777f * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_0.a + 1660f)))), var_1.x, true))));
}

fn func_2(arg_0: i32, arg_1: vec3<f32>, arg_2: bool, arg_3: f32) -> vec4<f32> {
    let var_0 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(arg_1.x)), 514f))) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.x))), arg_1.x)), -768f, 1223f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1170f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), any(vec2<bool>(false, true))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(arg_3, arg_1.xy), countOneBits(vec3<i32>(arg_0, arg_0, 0i)), Struct_1(arg_0, vec2<i32>(1i, 2147483647i), arg_2))))));
    global2 = 884f;
    var var_1 = Struct_3(_wgslsmith_f_op_f32(ceil(-375f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(arg_1.xx, vec2<f32>(-136f, 119f), vec2<bool>(arg_2, arg_2))) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(1039f, -1499f))))) * var_0.wz));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -2105f);
    var var_2 = global0[_wgslsmith_index_u32(u_input.a.x, 2u)];
    return _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(-1228f, arg_3)), _wgslsmith_div_f32(1000f, 310f), _wgslsmith_f_op_f32(sign(-2274f)), -2275f), var_0)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(floor(var_2.a)), _wgslsmith_f_op_f32(round(arg_3)), -116f, -1219f)), false))));
}

fn func_1(arg_0: Struct_1, arg_1: u32, arg_2: i32, arg_3: u32) -> bool {
    var var_0 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_2(arg_0.b.x, vec3<f32>(439f, -1355f, -284f), arg_0.c, -387f)), vec4<f32>(1f, 1f, 1f, 1f))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(189f, 1155f, 1000f, 1352f))) + _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-200f, -1125f, 597f, -693f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(1218f, -520f, -1867f, 842f) + vec4<f32>(2765f, -457f, 1142f, -268f)), true)))))));
    let var_1 = vec3<bool>(true && arg_0.c, arg_0.c, !(~firstTrailingBit(0u) > _wgslsmith_clamp_u32(~0u, select(0u, arg_3, true), 1u)));
    var var_2 = !(-480f != _wgslsmith_f_op_f32(-1000f - _wgslsmith_f_op_vec4_f32(func_2(0i, var_0.zxz, false, var_0.x)).x)) || false;
    global4 = array<vec4<bool>, 3>();
    var var_3 = var_1.x;
    return _wgslsmith_f_op_f32(f32(-1f) * -1469f) <= _wgslsmith_f_op_f32(669f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.x, 476f) + 503f) * 2369f));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(select(vec4<bool>(select(true, true, true), func_1(Struct_1(-37563i, vec2<i32>(3459i, 0i), true), 40106u, _wgslsmith_mod_i32(0i, 16874i), u_input.b), true, true), !select(select(vec4<bool>(true, false, true, false), global4[_wgslsmith_index_u32(u_input.b, 3u)], global4[_wgslsmith_index_u32(26288u, 3u)]), !global4[_wgslsmith_index_u32(1u, 3u)], vec4<bool>(true, true, true, true)), global4[_wgslsmith_index_u32(0u, 3u)]), global4[_wgslsmith_index_u32(select(_wgslsmith_clamp_u32(20079u, ~(~18314u), u_input.b), u_input.b, all(select(vec2<bool>(false, true), select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false)), all(global4[_wgslsmith_index_u32(4294967295u, 3u)])))), 3u)], any(select(!select(vec2<bool>(true, false), vec2<bool>(false, false), true), vec2<bool>(true, any(vec2<bool>(false, true))), select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false)))));
    global0 = array<Struct_2, 2>();
    let var_1 = u_input.a.x;
    var_0 = select(global4[_wgslsmith_index_u32(37394u, 3u)], select(select(!(!vec4<bool>(true, var_0.x, false, false)), select(select(vec4<bool>(var_0.x, true, true, var_0.x), global4[_wgslsmith_index_u32(var_1, 3u)], false), !global4[_wgslsmith_index_u32(34537u, 3u)], vec4<bool>(true, var_0.x, false, true)), all(!var_0.xyw)), vec4<bool>(any(select(var_0.zz, vec2<bool>(var_0.x, var_0.x), var_0.zw)), true, false, var_0.x), !global4[_wgslsmith_index_u32(~4294967295u, 3u)]), select(vec4<bool>(var_0.x, !any(vec4<bool>(false, false, var_0.x, var_0.x)), var_0.x, false), !global4[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(4294967295u, u_input.b), u_input.a.x), 3u)], true));
    let var_2 = vec4<bool>(var_0.x, reverseBits(_wgslsmith_dot_vec4_u32(~vec4<u32>(30485u, 42849u, 20163u, 1906u), _wgslsmith_mult_vec4_u32(u_input.a, global1[_wgslsmith_index_u32(0u, 28u)]))) <= (u_input.a.x << (30118u % 32u)), select(var_0.x, true, var_0.x), any(global4[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(var_1, var_1) >> (vec2<u32>(24175u, 4294967295u) % vec2<u32>(32u)), u_input.a.xy) | ~abs(var_1), 3u)]));
    var_0 = select(!vec4<bool>(true, false, false, !var_0.x), !var_2, select(select(!global4[_wgslsmith_index_u32(~1u, 3u)], var_2, false), var_2, select(vec4<bool>(true, true, var_0.x, func_1(Struct_1(1i, vec2<i32>(-5063i, -96119i), true), u_input.b, -52092i, 1u)), var_2, var_2)));
    global3 = _wgslsmith_f_op_f32(f32(-1f) * -589f);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1184f, 136f, -1376f, -1577f) * vec4<f32>(-685f, 675f, -1842f, 282f)) + vec4<f32>(-692f, -1103f, -751f, -308f)), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -291f, 154f, -272f), vec4<f32>(591f, -1077f, -1864f, -732f))), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(357f, -191f, 298f, -697f), vec4<f32>(450f, 981f, 839f, 929f))), any(var_2.zw))))))));
    let var_4 = countOneBits(-1i);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.xw, vec3<f32>(var_3.x, -632f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(Struct_3(var_3.x, var_3.xw), vec3<i32>(var_4, -9392i, 0i), Struct_1(var_4, vec2<i32>(61557i, 0i), var_0.x))))));
}

