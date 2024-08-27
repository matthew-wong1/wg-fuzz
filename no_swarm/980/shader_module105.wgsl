struct Struct_1 {
    a: vec3<u32>,
    b: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<u32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: Struct_1,
    e: u32,
}

struct Struct_4 {
    a: vec4<f32>,
    b: vec4<i32>,
    c: bool,
}

struct Struct_5 {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: bool,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 8> = array<bool, 8>(false, true, true, false, true, false, true, false);

var<private> global1: array<bool, 5>;

var<private> global2: array<vec4<bool>, 11>;

var<private> global3: array<i32, 24> = array<i32, 24>(0i, -487i, -21053i, 1i, 0i, 18179i, -15980i, 34698i, i32(-2147483648), -54325i, -1i, 35415i, -26268i, 0i, 1i, i32(-2147483648), 2147483647i, 29175i, i32(-2147483648), i32(-2147483648), -23425i, 2147483647i, 0i, -1i);

var<private> global4: array<vec2<bool>, 14> = array<vec2<bool>, 14>(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_2(arg_0: vec3<f32>, arg_1: Struct_1) -> vec4<i32> {
    let var_0 = global3[_wgslsmith_index_u32(~(~(countOneBits(min(u_input.b, 1300u)) & ((arg_1.a.x | u_input.b) >> ((arg_1.b & 77486u) % 32u)))), 24u)];
    var var_1 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1738f * -1082f), arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(arg_0.x)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.x * arg_0.x) - arg_0.x)), 264f, arg_0.x)));
    let var_2 = _wgslsmith_div_i32(i32(-1i) * -1i, _wgslsmith_dot_vec3_i32(-(vec3<i32>(-1i) * -vec3<i32>(1i, 2147483647i, 65628i)), vec3<i32>(countOneBits(global3[_wgslsmith_index_u32(~4294967295u, 24u)]), countOneBits(u_input.a.x), 0i)));
    var var_3 = Struct_2(true);
    global2 = array<vec4<bool>, 11>();
    return ~(~vec4<i32>(~(-64199i), -1i, -1i, var_2));
}

fn func_3(arg_0: u32, arg_1: vec4<f32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    global1 = array<bool, 5>();
    var var_0 = ~(~(-(~_wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -1091i), vec2<i32>(global3[_wgslsmith_index_u32(arg_0, 24u)], 0i)))));
    let var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-235f, arg_1.x, -149f, arg_1.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_1.x, 346f, arg_1.x, 1421f))))), min(~vec4<i32>(40542i, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -5012i, 16208i), vec3<i32>(u_input.a.x, global3[_wgslsmith_index_u32(arg_0, 24u)], u_input.a.x)), -global3[_wgslsmith_index_u32(31863u, 24u)], _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 1i, -39688i), vec3<i32>(u_input.a.x, -43397i, u_input.a.x))), _wgslsmith_sub_vec4_i32(-vec4<i32>(1i, -5313i, 21968i, u_input.a.x), vec4<i32>(i32(-1i) * -23863i, -8058i, -u_input.a.x, ~global3[_wgslsmith_index_u32(92103u, 24u)]))), true || (any(select(vec3<bool>(arg_3.a, global1[_wgslsmith_index_u32(1u, 5u)], global0[_wgslsmith_index_u32(u_input.b, 8u)]), vec3<bool>(global0[_wgslsmith_index_u32(20255u, 8u)], global0[_wgslsmith_index_u32(u_input.b, 8u)], false), vec3<bool>(false, false, true))) | global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(arg_2.a.yy, firstLeadingBit(vec2<u32>(arg_0, 1u))), 8u)]));
    var var_2 = _wgslsmith_f_op_f32(max(1f, arg_1.x));
    let var_3 = Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, ~47990u, ~4294967295u) << (arg_2.a % vec3<u32>(32u)), firstTrailingBit(select(arg_2.a, vec3<u32>(35713u, 51358u, arg_2.b), vec3<bool>(global0[_wgslsmith_index_u32(1u, 8u)], true, global0[_wgslsmith_index_u32(1u, 8u)]))) >> (vec3<u32>(arg_2.a.x, 37805u, 1u << (arg_2.a.x % 32u)) % vec3<u32>(32u))), _wgslsmith_div_u32(~select(arg_2.b, _wgslsmith_dot_vec3_u32(vec3<u32>(51599u, 1u, 1u), arg_2.a), false), ~37490u));
    return var_1.a.x;
}

fn func_1(arg_0: f32) -> f32 {
    let var_0 = Struct_4(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1000f, _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(ceil(arg_0))), 247f, arg_0))), (_wgslsmith_add_vec4_i32(~vec4<i32>(u_input.a.x, -1i, -1582i, 47462i), func_2(vec3<f32>(arg_0, 1170f, -630f), Struct_1(vec3<u32>(42378u, 14011u, u_input.b), u_input.b))) << (~(~vec4<u32>(0u, u_input.b, 0u, u_input.b)) % vec4<u32>(32u))) & ~(-(vec4<i32>(u_input.a.x, 22102i, 6489i, 2147483647i) << (vec4<u32>(0u, u_input.b, u_input.b, 4294967295u) % vec4<u32>(32u)))), global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, max(countOneBits(~u_input.b), ~(0u ^ u_input.b)), 0u), 5u)]);
    var var_1 = Struct_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(22948u, var_0.a, Struct_1(vec3<u32>(u_input.b, u_input.b, 21724u), 28675u), Struct_2(var_0.c)))), _wgslsmith_f_op_f32(f32(-1f) * -1067f), _wgslsmith_f_op_f32(-1788f - var_0.a.x), arg_0)), var_0.b, !(_wgslsmith_add_u32(~34976u, u_input.b) == (~1u >> (u_input.b % 32u))));
    var var_2 = _wgslsmith_f_op_vec4_f32(sign(var_1.a));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -868f);
    let var_4 = 1u;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-488f)) - _wgslsmith_f_op_f32(step(-148f, _wgslsmith_f_op_f32(-var_1.a.x))))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-249f, -1275f, select(global1[_wgslsmith_index_u32(170805u, 5u)], global0[_wgslsmith_index_u32(var_4, 8u)], true))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1693f)) * arg_0))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<bool, 8>();
    let var_0 = u_input.a.x;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(-2024f)));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(select(1005f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-464f))) * _wgslsmith_f_op_f32(-243f * _wgslsmith_f_op_f32(abs(912f)))), !(false && (global0[_wgslsmith_index_u32(u_input.b, 8u)] & false)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(198f - _wgslsmith_f_op_f32(-1f)), 1079f))));
    var var_3 = Struct_4(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(1462f, -1000f, -859f, 1000f) + vec4<f32>(-466f, -1160f, -210f, -1074f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(306f, -444f, 709f, 1682f))), !select(global2[_wgslsmith_index_u32(u_input.b, 11u)], global2[_wgslsmith_index_u32(u_input.b, 11u)], true))) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(1866f, 103f, 865f, -1232f))) - _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-142f, -1770f, -1276f, 1628f)))) * _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1325f, 608f, -185f, 476f)))))), vec4<i32>(1i, abs(u_input.a.x), -var_0, -global3[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u, u_input.b), 24u)]) >> (_wgslsmith_mod_vec4_u32(vec4<u32>(_wgslsmith_mod_u32(u_input.b, 0u), 53412u << (0u % 32u), 4294967295u, 4294967295u << (u_input.b % 32u)), firstTrailingBit(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, 1u, 62767u, 85185u), vec4<u32>(57246u, 78152u, 2028u, 31430u)))) % vec4<u32>(32u)), any(!(!global4[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.b, 25830u), 14u)])));
    var var_4 = ~(~(~(vec3<i32>(u_input.a.x, 6456i, 83933i) ^ vec3<i32>(-76388i, u_input.a.x, var_3.b.x)))) & _wgslsmith_mult_vec3_i32(var_3.b.zzz, var_3.b.zyx);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(173f))) - var_3.a.x), var_3.a.x, _wgslsmith_f_op_f32(-var_3.a.x), var_3.a.x));
}

