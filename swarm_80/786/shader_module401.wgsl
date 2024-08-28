struct Struct_1 {
    a: i32,
    b: u32,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: i32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32 = -15454i;

var<private> global1: array<u32, 31> = array<u32, 31>(39193u, 0u, 40905u, 4294967295u, 1u, 4294967295u, 36890u, 122225u, 1u, 0u, 22203u, 6243u, 4294967295u, 1u, 4294967295u, 1u, 1u, 0u, 1u, 67330u, 0u, 4294967295u, 13717u, 37201u, 0u, 55488u, 1u, 58046u, 4294967295u, 15925u, 0u);

var<private> global2: vec2<i32> = vec2<i32>(-1i, -1i);

var<private> global3: vec3<u32>;

var<private> global4: array<Struct_2, 14> = array<Struct_2, 14>(Struct_2(-253f), Struct_2(1000f), Struct_2(-2128f), Struct_2(1244f), Struct_2(111f), Struct_2(-470f), Struct_2(434f), Struct_2(494f), Struct_2(-626f), Struct_2(978f), Struct_2(-426f), Struct_2(107f), Struct_2(1000f), Struct_2(1569f));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3() -> u32 {
    global2 = vec2<i32>(u_input.a, -19221i);
    global0 = 1i;
    global1 = array<u32, 31>();
    let var_0 = -(((vec3<i32>(-39424i, 2147483647i, -15168i) << (vec3<u32>(global1[_wgslsmith_index_u32(55663u, 31u)], global3.x, global1[_wgslsmith_index_u32(u_input.b, 31u)]) % vec3<u32>(32u))) << (_wgslsmith_mod_vec3_u32(vec3<u32>(1711u, u_input.b, 40429u), vec3<u32>(14189u, 58940u, global1[_wgslsmith_index_u32(1u, 31u)])) % vec3<u32>(32u))) >> (vec3<u32>(5241u, global3.x >> (u_input.b % 32u), _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, global3.x, 91399u), vec3<u32>(global3.x, 0u, u_input.b))) % vec3<u32>(32u))) >> ((vec3<u32>(_wgslsmith_mult_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25693u, 31u)], 31u)], 31u)], _wgslsmith_clamp_u32(4294967295u, global1[_wgslsmith_index_u32(16237u, 31u)], 13411u)), min(~4294967295u, reverseBits(1u)), reverseBits(1u)) >> (firstLeadingBit(vec3<u32>(14438u, u_input.b, ~4294967295u)) % vec3<u32>(32u))) % vec3<u32>(32u));
    var var_1 = !(select(true, true, all(vec2<bool>(false, false))) & (1u >= abs(~global1[_wgslsmith_index_u32(26222u, 31u)])));
    return 0u;
}

fn func_2(arg_0: u32) -> Struct_1 {
    var var_0 = countOneBits(_wgslsmith_sub_u32(3582u, 1392u)) >> (func_3() % 32u);
    let var_1 = !any(vec2<bool>(true, true));
    let var_2 = ~vec2<u32>(120180u, global3.x);
    let var_3 = Struct_3(select(u_input.a, _wgslsmith_add_i32(-11786i, max(-global2.x, 0i)), true));
    let var_4 = -countOneBits(vec3<i32>(-984i, global2.x, _wgslsmith_add_i32(var_3.a, var_3.a)));
    return Struct_1(var_3.a, 29602u, -1i, 1u, vec4<u32>(_wgslsmith_add_u32(global1[_wgslsmith_index_u32(11232u, 31u)], global1[_wgslsmith_index_u32(82259u, 31u)]), _wgslsmith_div_u32(~_wgslsmith_sub_u32(0u, arg_0), select(_wgslsmith_mult_u32(var_2.x, global3.x), var_2.x, var_1 | var_1)), func_3(), 40515u));
}

fn func_4(arg_0: u32, arg_1: vec4<i32>, arg_2: Struct_1) -> Struct_2 {
    let var_0 = 29993u;
    var var_1 = Struct_1(~_wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c, 0i, 31983i, arg_1.x), vec4<i32>(0i, 2147483647i, arg_2.a, -1i)) & arg_1.x, ~func_2(select(27981u, arg_0, true)).d, arg_2.a, min(0u, _wgslsmith_div_u32(arg_0, _wgslsmith_mod_u32(abs(18798u), _wgslsmith_clamp_u32(arg_0, arg_0, global1[_wgslsmith_index_u32(1u, 31u)])))), ~(~abs(vec4<u32>(var_0, global3.x, 88495u, 48705u)) & vec4<u32>(~4294967295u, 37251u, _wgslsmith_div_u32(global1[_wgslsmith_index_u32(51801u, 31u)], global3.x), 44578u)));
    global0 = _wgslsmith_add_i32(reverseBits(0i), 2147483647i);
    global0 = _wgslsmith_dot_vec3_i32(arg_1.wyy, arg_1.wzw);
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(109f * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1000f, 738f)) * _wgslsmith_div_f32(561f, 221f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1215f))));
    return global4[_wgslsmith_index_u32(~_wgslsmith_sub_u32(~1u, abs(_wgslsmith_mod_u32(global1[_wgslsmith_index_u32(29070u, 31u)] & 4294967295u, 4294967295u | global1[_wgslsmith_index_u32(37564u, 31u)]))), 14u)];
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_2, arg_2: Struct_3, arg_3: vec4<f32>) -> f32 {
    let var_0 = any(vec4<bool>((_wgslsmith_f_op_f32(abs(arg_3.x)) > -1189f) | !(u_input.b > global1[_wgslsmith_index_u32(4294967295u, 31u)]), true, true, true));
    global3 = abs(~(vec3<u32>(_wgslsmith_mod_u32(u_input.b, 4294967295u), ~global1[_wgslsmith_index_u32(u_input.b, 31u)], firstTrailingBit(0u)) >> (_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(45190u, global3.x, 1u)), vec3<u32>(41908u, 4294967295u, 1u)) % vec3<u32>(32u))));
    let var_1 = func_4(_wgslsmith_clamp_u32(1u ^ (global1[_wgslsmith_index_u32(_wgslsmith_div_u32(19596u, 1u), 31u)] << (min(global1[_wgslsmith_index_u32(72763u, 31u)], 56946u) % 32u)), global1[_wgslsmith_index_u32(u_input.b, 31u)], _wgslsmith_add_u32(~(global3.x | 21328u), 1u)), vec4<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec2_i32(abs(vec2<i32>(2147483647i, u_input.a)), _wgslsmith_mod_vec2_i32(vec2<i32>(global2.x, arg_2.a), vec2<i32>(global2.x, arg_2.a))), arg_2.a >> (~1u % 32u)), global2.x ^ global2.x, arg_2.a, _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.a), firstLeadingBit(vec2<i32>(global2.x, -2147483647i))), _wgslsmith_clamp_i32(-1i, 4164i, arg_2.a))), func_2(4294967295u));
    global4 = array<Struct_2, 14>();
    let var_2 = arg_0.x;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global4[_wgslsmith_index_u32(~firstLeadingBit(~0u), 14u)];
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(_wgslsmith_div_vec2_f32(vec2<f32>(-409f, var_0.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(815f, -467f))), global4[_wgslsmith_index_u32(7493u, 14u)], Struct_3(global2.x), vec4<f32>(_wgslsmith_div_f32(1083f, -861f), _wgslsmith_f_op_f32(abs(792f)), -635f, 1348f))) + _wgslsmith_f_op_f32(trunc(-965f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.a * 333f) - var_0.a) - _wgslsmith_f_op_f32(859f + -876f))));
    global1 = array<u32, 31>();
    var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2099f, 1175f)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, var_0.a)) - _wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_1.x, 471f))))))));
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_1.x)), -540f);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<u32>(_wgslsmith_add_u32(1u, global3.x), _wgslsmith_div_u32(u_input.b, global3.x << (97512u % 32u)), min(1u, u_input.b), 90694u) & ~(~_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, u_input.b, 0u, global3.x), vec4<u32>(global1[_wgslsmith_index_u32(10852u, 31u)], u_input.b, global3.x, 68503u))), abs(vec4<i32>(1i, ~(1i | global2.x), _wgslsmith_clamp_i32(_wgslsmith_add_i32(global2.x, 1i), _wgslsmith_dot_vec3_i32(vec3<i32>(global2.x, u_input.a, global2.x), vec3<i32>(global2.x, 2147483647i, u_input.a)), global2.x), max(min(-11222i, global2.x), ~2147483647i))), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_0.a, 286f), vec2<f32>(804f, -1076f), vec2<bool>(true, false))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)));
}

