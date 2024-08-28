struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<i32>, 21>;

var<private> global1: array<vec4<i32>, 8> = array<vec4<i32>, 8>(vec4<i32>(-1i, 2147483647i, -19110i, 2147483647i), vec4<i32>(-18596i, i32(-2147483648), 14803i, -8131i), vec4<i32>(4064i, 30129i, 2147483647i, -10478i), vec4<i32>(28628i, 0i, i32(-2147483648), -31012i), vec4<i32>(5672i, i32(-2147483648), 2147483647i, -3997i), vec4<i32>(43820i, -54110i, -60989i, 1i), vec4<i32>(41598i, -16185i, 1i, -1i), vec4<i32>(0i, 45204i, 1i, i32(-2147483648)));

var<private> global2: array<vec2<f32>, 14> = array<vec2<f32>, 14>(vec2<f32>(-897f, 726f), vec2<f32>(-1897f, -733f), vec2<f32>(-934f, -723f), vec2<f32>(-957f, 934f), vec2<f32>(-511f, -445f), vec2<f32>(943f, 865f), vec2<f32>(-199f, -325f), vec2<f32>(324f, 613f), vec2<f32>(883f, -821f), vec2<f32>(360f, 629f), vec2<f32>(1617f, -222f), vec2<f32>(2206f, -424f), vec2<f32>(326f, 613f), vec2<f32>(248f, -713f));

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_1) -> i32 {
    var var_0 = true;
    let var_1 = countOneBits(~abs(u_input.c.yyw));
    global0 = array<vec2<i32>, 21>();
    var_0 = all(!(!(!select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false)))));
    var_0 = any(select(select(select(select(vec3<bool>(false, true, false), vec3<bool>(true, true, false), true), vec3<bool>(false, true, false), false), !select(vec3<bool>(true, false, true), vec3<bool>(true, false, true), false), select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, true), true), vec3<bool>(true, true, true), true)), vec3<bool>(true, false, false != any(vec4<bool>(false, true, false, false))), select(vec3<bool>(true, all(vec4<bool>(false, false, true, false)), u_input.d >= 43438u), vec3<bool>(true, true, true), vec3<bool>(true, true, true))));
    return 1i;
}

fn func_2(arg_0: vec3<f32>, arg_1: vec4<i32>, arg_2: vec4<i32>) -> bool {
    global0 = array<vec2<i32>, 21>();
    let var_0 = Struct_1(~_wgslsmith_sub_i32(_wgslsmith_add_i32(func_3(-629f, Struct_1(arg_2.x)), _wgslsmith_clamp_i32(-1i, 0i, arg_1.x)), -u_input.c.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(1204f + arg_0.x), 438f)), _wgslsmith_f_op_f32(f32(-1f) * -383f))) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-315f)))))), arg_0.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -862f)))), -1232f);
    var var_2 = Struct_1(_wgslsmith_mod_i32(1i, select(-u_input.e.x, i32(-1i) * -5803i, any(vec4<bool>(true, true, true, true))) >> (max(4294967295u, ~11708u) % 32u)));
    global0 = array<vec2<i32>, 21>();
    return false;
}

fn func_1(arg_0: vec2<u32>) -> vec4<bool> {
    global1 = array<vec4<i32>, 8>();
    var var_0 = Struct_1(u_input.c.x);
    let var_1 = var_0.a;
    let var_2 = abs(_wgslsmith_mult_i32(-u_input.e.x, ~(~u_input.c.x)));
    var var_3 = ~(-select(vec4<i32>(0i, 26031i, var_2, -1i) & (vec4<i32>(-1i, var_0.a, 1217i, var_2) << (vec4<u32>(u_input.a.x, 40774u, u_input.a.x, 0u) % vec4<u32>(32u))), firstTrailingBit(global1[_wgslsmith_index_u32(countOneBits(40289u), 8u)]), !func_2(vec3<f32>(272f, -827f, 193f), vec4<i32>(2147483647i, -37859i, 16564i, var_2), vec4<i32>(28529i, var_2, var_2, var_2))));
    return select(select(select(!select(vec4<bool>(false, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, true)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true)), func_2(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1194f, 202f, 181f), vec3<f32>(1211f, 251f, -593f), false)), reverseBits(global1[_wgslsmith_index_u32(u_input.a.x, 8u)]), -vec4<i32>(2147483647i, var_2, 18851i, -60317i))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, true, false), vec4<bool>(true, true, true, true), true), true), select(2147483647i <= _wgslsmith_dot_vec4_i32(global1[_wgslsmith_index_u32(u_input.b, 8u)], vec4<i32>(-1i, -2701i, var_0.a, var_3.x)), true, false)), !select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, true, true), true), false), !select(!select(vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, false), false), vec4<bool>(true, all(vec4<bool>(true, true, false, false)), true, true), vec4<bool>(true, true, true, true)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(vec2<u32>(~(~u_input.d), ~u_input.a.x));
    global1 = array<vec4<i32>, 8>();
    var var_1 = max(vec3<i32>(_wgslsmith_dot_vec2_i32(~vec2<i32>(u_input.c.x, 38843i) ^ ~global0[_wgslsmith_index_u32(30396u, 21u)], vec2<i32>(u_input.c.x, u_input.e.x) ^ min(global0[_wgslsmith_index_u32(u_input.a.x, 21u)], global0[_wgslsmith_index_u32(1u, 21u)])), -32533i, u_input.e.x | 0i), u_input.c.zzw);
    var var_2 = vec4<u32>(~(~(u_input.d ^ 17843u) & _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.b, 20457u, 94314u), u_input.b)), _wgslsmith_dot_vec2_u32(abs(~(~u_input.a)), ~select(_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(108933u, 1u)), ~vec2<u32>(u_input.b, u_input.a.x), true)), ~(~(~u_input.d << (4294967295u % 32u))), u_input.a.x << (_wgslsmith_sub_u32(u_input.b, u_input.b | firstTrailingBit(u_input.b)) % 32u));
    var var_3 = -firstTrailingBit(~(~vec3<i32>(var_1.x, -2147483647i, 2147483647i)) & u_input.c.zyx);
    global0 = array<vec2<i32>, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(1i, ~select(~(~vec4<u32>(u_input.b, u_input.b, 0u, var_2.x)), vec4<u32>(max(var_2.x, u_input.a.x), countOneBits(u_input.d), 1u, u_input.b), true), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -678f))), -468f)));
}

