struct Struct_1 {
    a: vec3<bool>,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 24> = array<Struct_1, 24>(Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(true, false, true), false), Struct_1(vec3<bool>(false, false, true), false), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(true, true, false), true), Struct_1(vec3<bool>(false, true, true), true), Struct_1(vec3<bool>(false, true, true), false), Struct_1(vec3<bool>(true, true, true), false), Struct_1(vec3<bool>(true, false, true), true), Struct_1(vec3<bool>(true, true, false), false), Struct_1(vec3<bool>(true, false, false), true), Struct_1(vec3<bool>(true, true, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(false, true, false), true), Struct_1(vec3<bool>(true, true, false), false));

var<private> global1: u32 = 1u;

var<private> global2: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, true, true), true), Struct_1(vec3<bool>(false, false, true), true), Struct_1(vec3<bool>(false, true, false), false), Struct_1(vec3<bool>(true, true, false), false), Struct_1(vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(false, false, false), false));

var<private> global3: array<u32, 2> = array<u32, 2>(47952u, 0u);

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: vec3<u32>) -> bool {
    var var_0 = Struct_1(vec3<bool>(true, true, true), true);
    var var_1 = abs(_wgslsmith_clamp_u32(~_wgslsmith_sub_u32(arg_0.x, 0u), _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(u_input.b.zzz, abs(arg_0)), ~vec3<u32>(1u, 49710u, arg_0.x) << (_wgslsmith_sub_vec3_u32(vec3<u32>(4294967295u, global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(17814u, 2u)], 2u)], u_input.a), arg_0) % vec3<u32>(32u))), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(u_input.b.xw, vec2<u32>(global3[_wgslsmith_index_u32(global3[_wgslsmith_index_u32(4294967295u, 2u)], 2u)], 4294967295u)) | arg_0.yy, vec2<u32>(_wgslsmith_div_u32(u_input.a, 1u), 45956u))));
    global2 = array<Struct_1, 7>();
    global2 = array<Struct_1, 7>();
    var var_2 = global0[_wgslsmith_index_u32(2654u, 24u)];
    return false;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> vec3<f32> {
    var var_0 = global2[_wgslsmith_index_u32(~_wgslsmith_mult_u32(_wgslsmith_clamp_u32(~global3[_wgslsmith_index_u32(_wgslsmith_mult_u32(u_input.a, u_input.a), 2u)], 1u, 4294967295u), u_input.a), 7u)];
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(327f, -549f, -971f) * vec3<f32>(-1000f, 1411f, -144f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, 1764f, -1318f)))), vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(266f + -240f), -196f, true)), -123f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(355f * -475f))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(255f, -2489f, -1397f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-719f)) + 813f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(-874f, -1671f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-488f))))));
    let var_2 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, u_input.b.x, _wgslsmith_div_u32(0u, 3113u ^ global3[_wgslsmith_index_u32(37670u, 2u)]), 4294967295u), u_input.b, vec4<u32>(~min(select(global3[_wgslsmith_index_u32(101479u, 2u)], global3[_wgslsmith_index_u32(55356u, 2u)], var_0.b), 56995u), reverseBits(~(4294967295u >> (global3[_wgslsmith_index_u32(4294967295u, 2u)] % 32u))), 1u, 0u));
    var var_3 = ~(i32(-1i) * -1i);
    let var_4 = vec2<bool>(any(!vec2<bool>(any(vec4<bool>(true, arg_1.b, false, false)), false)), true);
    return vec3<f32>(-1657f, 639f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(round(108f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) * _wgslsmith_f_op_f32(-var_1.x))))));
}

fn func_1(arg_0: u32) -> vec4<bool> {
    var var_0 = func_2(u_input.b.wzy) == all(vec4<bool>(true, true, true, true));
    var var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global2[_wgslsmith_index_u32(24367u, 7u)], Struct_1(vec3<bool>(true, false, false), false)))), vec3<f32>(-362f, -454f, _wgslsmith_f_op_f32(f32(-1f) * -2133f))))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1811f)), _wgslsmith_f_op_f32(-231f + -820f), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(989f * -2420f)))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1037f), var_1.x) + vec2<f32>(1175f, var_1.x));
    var var_3 = all(vec2<bool>(any(vec3<bool>(true, true, true)) & (min(0i, u_input.c.x) <= min(u_input.c.x, 67628i)), func_2(_wgslsmith_add_vec3_u32(u_input.b.yxw, vec3<u32>(0u, 4294967295u, arg_0)))));
    let var_4 = Struct_1(vec3<bool>(false, !any(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, false), false)), false), true);
    return vec4<bool>(var_4.b, _wgslsmith_f_op_f32(exp2(var_1.x)) <= _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * -1247f) * _wgslsmith_f_op_f32(var_1.x * var_2.x)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(238f, 224f)))), _wgslsmith_dot_vec3_u32(u_input.b.zyx ^ vec3<u32>(4294967295u, arg_0, global3[_wgslsmith_index_u32(arg_0, 2u)]), ~vec3<u32>(global3[_wgslsmith_index_u32(1u, 2u)], u_input.b.x, 0u)) < 4294967295u, false);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<Struct_1, 7>();
    let var_0 = Struct_1(vec3<bool>(any(vec2<bool>(true, true)), _wgslsmith_sub_i32(~(-9949i), reverseBits(u_input.c.x)) < _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(1i, u_input.c.x), u_input.c.yy), -u_input.c.x), !select(any(vec4<bool>(true, true, true, false)), select(true, false, true), true)), true);
    let var_1 = ~u_input.b.wx;
    global3 = array<u32, 2>();
    var var_2 = _wgslsmith_dot_vec3_i32(u_input.c.wxy, vec3<i32>(-2147483647i, -(-2147483647i << (u_input.a % 32u)), max(_wgslsmith_div_i32(66815i >> (var_1.x % 32u), ~(-2147483647i)), u_input.c.x)));
    global0 = array<Struct_1, 24>();
    global3 = array<u32, 2>();
    global0 = array<Struct_1, 24>();
    let var_3 = select(select(!select(func_1(24295u), !vec4<bool>(true, var_0.a.x, var_0.b, true), !var_0.a.x), vec4<bool>(var_0.a.x, true, true, !var_0.a.x), func_1(~u_input.b.x)), !func_1(var_1.x), var_0.b);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, var_1.x >> (global3[_wgslsmith_index_u32(3276u, 2u)] % 32u));
}

