struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: u32,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec4<f32>,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<bool>, 3> = array<vec3<bool>, 3>(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, false));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
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

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: vec2<f32>) -> i32 {
    let var_0 = vec3<bool>(!((reverseBits(1i) != _wgslsmith_mod_i32(-1i, u_input.a.x)) & false), false, true);
    var var_1 = Struct_1(1652f, firstLeadingBit(-1i));
    var_1 = Struct_1(_wgslsmith_f_op_f32(min(arg_0.x, 599f)), u_input.a.x);
    var_1 = Struct_1(-770f, -u_input.a.x);
    var_1 = Struct_1(arg_0.x, 800i);
    return u_input.a.x;
}

fn func_3(arg_0: i32, arg_1: vec3<i32>) -> Struct_1 {
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    let var_0 = Struct_3(!vec2<bool>(true, !any(vec2<bool>(false, true))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(173f, 763f, 630f, 1825f)), vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -1000f), -1000f, -1012f), vec4<bool>(false, true, true, all(vec3<bool>(true, false, false))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -2208f), _wgslsmith_f_op_f32(min(-1835f, -211f)), -1065f, -477f)), vec4<bool>(true, true, true, true))), Struct_1(_wgslsmith_f_op_f32(1094f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(709f + -855f) * 266f)), arg_0), Struct_2(Struct_1(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-1347f)))), firstTrailingBit(_wgslsmith_add_i32(arg_0, arg_1.x))), u_input.b.x, min(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, 4294967295u, 34706u), u_input.b.zzz), 4094u), !select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), true), select(vec4<bool>(false, false, true, false), vec4<bool>(false, true, false, false), false), vec4<bool>(true, true, true, true))));
    return var_0.c;
}

fn func_1(arg_0: i32, arg_1: u32, arg_2: f32) -> f32 {
    let var_0 = vec2<bool>(true, true);
    var var_1 = u_input.a;
    global0 = array<vec3<bool>, 3>();
    global0 = array<vec3<bool>, 3>();
    let var_2 = func_3(~33146i, vec3<i32>(firstTrailingBit(-func_2(vec2<f32>(arg_2, arg_2))), 6007i, ~var_1.x));
    return arg_2;
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: Struct_2, arg_3: Struct_1) -> u32 {
    var var_0 = ~(_wgslsmith_sub_vec2_u32(~(vec2<u32>(arg_2.c, u_input.b.x) ^ u_input.b.zw), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, 1u), u_input.b.yy)) << (_wgslsmith_sub_vec2_u32(~vec2<u32>(26074u, 0u), vec2<u32>(~u_input.b.x, ~48442u)) % vec2<u32>(32u)));
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(func_1(_wgslsmith_clamp_i32(-max(-66301i, 1i), 7991i, ~(-12880i)), _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(~u_input.b.zzy, u_input.b.wzx), _wgslsmith_div_vec3_u32(u_input.b.wyy, vec3<u32>(u_input.b.x, 1u, arg_2.b) << (u_input.b.yxx % vec3<u32>(32u)))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(func_1(16656i, 0u, arg_0)))))), arg_3.a);
    global0 = array<vec3<bool>, 3>();
    let var_2 = select(select(arg_2.d.wwy, vec3<bool>(arg_1, false, arg_1), vec3<bool>(arg_1, all(vec4<bool>(arg_1, false, arg_2.d.x, true)), any(select(vec3<bool>(arg_1, arg_1, false), arg_2.d.wwz, arg_2.d.x)))), select(arg_2.d.xww, !vec3<bool>(true, true, select(arg_1, true, arg_1)), false), select(!arg_2.d.wzw, !select(select(vec3<bool>(true, arg_2.d.x, arg_1), global0[_wgslsmith_index_u32(var_0.x, 3u)], vec3<bool>(arg_1, arg_2.d.x, arg_2.d.x)), select(vec3<bool>(false, true, arg_1), vec3<bool>(true, false, arg_2.d.x), arg_1), !arg_2.d.x), arg_2.d.xxy));
    var var_3 = any(arg_2.d) | false;
    return u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = min(firstTrailingBit((~u_input.b.x & ~7881u) ^ u_input.b.x), ~min(~4294967295u, u_input.b.x));
    global0 = array<vec3<bool>, 3>();
    var var_1 = _wgslsmith_mult_u32(21241u & u_input.b.x, u_input.b.x >> (~(~_wgslsmith_div_u32(u_input.b.x, 11504u)) % 32u));
    var_1 = func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(145f, 381f)), -1386f))) * _wgslsmith_f_op_f32(func_1(u_input.a.x, var_0, -1088f))), true, Struct_2(func_3(~u_input.a.x, vec3<i32>(countOneBits(-43627i), -u_input.a.x, u_input.a.x)), var_0, min(89146u, var_0), vec4<bool>(false, true, _wgslsmith_f_op_f32(sign(-195f)) > _wgslsmith_f_op_f32(max(1000f, -1312f)), true)), func_3(_wgslsmith_clamp_i32(u_input.a.x, i32(-1i) * -1i, _wgslsmith_mod_i32(func_3(-8509i, vec3<i32>(1i, 1i, 3010i)).b, -u_input.a.x)), vec3<i32>(52882i | firstTrailingBit(-3359i), -1i, u_input.a.x)));
    var var_2 = _wgslsmith_add_vec3_u32(reverseBits(u_input.b.yyw ^ u_input.b.zww) ^ u_input.b.zzy, firstTrailingBit(_wgslsmith_add_vec3_u32(~u_input.b.wzz, vec3<u32>(u_input.b.x, 1u, u_input.b.x) << (vec3<u32>(var_0, var_0, 4294967295u) % vec3<u32>(32u))))) >> (~(~firstTrailingBit(vec3<u32>(1u, 4294967295u, u_input.b.x))) % vec3<u32>(32u));
    let var_3 = vec4<bool>(true, true, true, true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(firstLeadingBit(-(1i | u_input.a.x)), u_input.a.x), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(408f, 672f, -309f), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1552f, -519f, 1595f)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1455f, 499f, 837f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(918f, 1884f, 438f), vec3<f32>(-799f, 1000f, -1307f), global0[_wgslsmith_index_u32(var_0, 3u)]))))), vec3<bool>(any(select(vec4<bool>(true, var_3.x, var_3.x, var_3.x), var_3, var_3)), false && var_3.x, var_3.x))));
}

