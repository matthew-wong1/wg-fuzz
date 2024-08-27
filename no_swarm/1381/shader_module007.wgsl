struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 3>;

var<private> global1: Struct_1;

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: Struct_1) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global1.b, -441f))) + global1.b)));
    global0 = array<f32, 3>();
    var var_1 = arg_0;
    var_1 = Struct_1(!(!select(vec2<bool>(var_1.a.x, false), vec2<bool>(arg_0.a.x, false), global1.a.x)), global0[_wgslsmith_index_u32(5332u, 3u)]);
    var var_2 = var_0;
    return u_input.c.x & abs(~max(firstLeadingBit(4294967295u), u_input.a.x & 1u));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: vec2<u32>, arg_3: bool) -> Struct_1 {
    global1 = arg_0;
    var var_0 = _wgslsmith_f_op_vec3_f32(max(arg_1, arg_1));
    var var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_1 + vec3<f32>(_wgslsmith_f_op_f32(-arg_0.b), _wgslsmith_f_op_f32(arg_1.x * -101f), -170f)) - _wgslsmith_div_vec3_f32(arg_1, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1826f, arg_0.b, arg_1.x)))))));
    var var_2 = _wgslsmith_div_u32(~_wgslsmith_sub_u32(u_input.a.x, func_3(arg_0)), select(_wgslsmith_sub_u32(~arg_2.x, arg_2.x), 1u, any(select(select(vec3<bool>(false, global1.a.x, false), vec3<bool>(true, true, true), false), !vec3<bool>(arg_3, arg_3, arg_3), !global1.a.x))));
    let var_3 = _wgslsmith_sub_i32(1i, _wgslsmith_div_i32(_wgslsmith_clamp_i32(2147483647i, 1i, countOneBits(_wgslsmith_dot_vec3_i32(vec3<i32>(19324i, 26800i, -1i), vec3<i32>(43070i, -38640i, -1i)))), 2147483647i));
    return Struct_1(arg_0.a, _wgslsmith_f_op_f32(1091f - arg_1.x));
}

fn func_4(arg_0: Struct_1) -> f32 {
    global1 = Struct_1(vec2<bool>(false, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -195f)) >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * global0[_wgslsmith_index_u32(22071u, 3u)]))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))))));
    global1 = Struct_1(!vec2<bool>(all(vec3<bool>(true, false, arg_0.a.x)), any(vec4<bool>(true, true, false, true)) & false), 158f);
    let var_0 = -min(vec3<i32>(abs(31065i), -2147483647i, 1i), ~abs(vec3<i32>(0i, -2147483647i, 4695i))) | -vec3<i32>(-1i, select(-38371i, 2147483647i, global1.a.x), 1i);
    global0 = array<f32, 3>();
    let var_1 = arg_0;
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(66820u, 3u)]), 179f)), _wgslsmith_f_op_f32(f32(-1f) * -468f));
}

fn func_5(arg_0: vec2<u32>, arg_1: f32, arg_2: vec2<bool>, arg_3: i32) -> bool {
    var var_0 = Struct_1(vec2<bool>(false, any(vec4<bool>(arg_2.x, true, false, arg_2.x))), func_2(Struct_1(arg_2, _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(u_input.b.x, 3u)])), vec3<f32>(-979f, -1000f, _wgslsmith_f_op_f32(-1000f * -792f)), select(vec2<u32>(~1u, 4294967295u), vec2<u32>(firstLeadingBit(u_input.c.x), 1u), global1.a), true).b);
    var var_1 = func_2(func_2(func_2(func_2(func_2(Struct_1(vec2<bool>(true, false), global0[_wgslsmith_index_u32(409u, 3u)]), vec3<f32>(global1.b, arg_1, -1000f), u_input.c.yz, false), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0[_wgslsmith_index_u32(u_input.b.x, 3u)], var_0.b, 1190f) + vec3<f32>(global1.b, var_0.b, -917f)), ~arg_0, any(vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(-185f, -2313f, 295f), vec3<f32>(1147f, 2125f, -164f)) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1158f, -245f, global1.b) + vec3<f32>(arg_1, -1283f, -300f))), abs(vec2<u32>(arg_0.x, 6977u)), true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0[_wgslsmith_index_u32(1u, 3u)], -640f, arg_1), vec3<f32>(-256f, -242f, global1.b), vec3<bool>(true, var_0.a.x, arg_2.x))) * vec3<f32>(1441f, arg_1, -553f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.b, -628f, global0[_wgslsmith_index_u32(4294967295u, 3u)]))), u_input.c.xy, !all(global1.a)), vec3<f32>(_wgslsmith_f_op_f32(trunc(322f)), _wgslsmith_f_op_f32(1058f * 666f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.c.x, 3u)])) - _wgslsmith_f_op_f32(f32(-1f) * -1651f))), firstLeadingBit(max(u_input.b, select(vec2<u32>(47503u, 1u), arg_0, true)) << (u_input.a % vec2<u32>(32u))), func_2(func_2(Struct_1(global1.a, _wgslsmith_f_op_f32(arg_1 + -2361f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1060f, arg_1, var_0.b) + _wgslsmith_f_op_vec3_f32(select(vec3<f32>(-485f, var_0.b, arg_1), vec3<f32>(arg_1, -272f, -1357f), vec3<bool>(false, global1.a.x, false)))), ~(~vec2<u32>(59249u, 4294967295u)), false), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-103f, func_2(Struct_1(var_0.a, -1779f), vec3<f32>(217f, global1.b, global0[_wgslsmith_index_u32(u_input.b.x, 3u)]), u_input.c.xy, global1.a.x).b, _wgslsmith_div_f32(191f, -919f))), countOneBits(select(vec2<u32>(1u, 0u), u_input.c.yy | vec2<u32>(arg_0.x, u_input.c.x), !var_0.a.x)), global1.a.x).a.x);
    let var_2 = Struct_1(arg_2, var_0.b);
    return true;
}

fn func_1(arg_0: f32, arg_1: Struct_1, arg_2: vec2<bool>) -> Struct_1 {
    let var_0 = func_5(_wgslsmith_add_vec2_u32(vec2<u32>(~24341u, _wgslsmith_mult_u32(u_input.a.x, _wgslsmith_add_u32(73528u, 77962u))), ~u_input.c.zz), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(global1.a, -1000f), vec3<f32>(global1.b, -1068f, 421f), vec2<u32>(u_input.b.x, 17451u), arg_2.x))), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(1u, 3u)]), u_input.c.x <= ~1u)), func_2(Struct_1(arg_2, arg_1.b), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_div_f32(1599f, global1.b), _wgslsmith_f_op_f32(min(1280f, -731f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(91660u, u_input.b.x, u_input.b.x, 67832u), vec4<u32>(4294967295u, 272u, u_input.c.x, 636u)), 3u)]))), vec2<u32>(u_input.c.x, 17754u), !any(arg_1.a) | !(global1.a.x && true)).a, select(-31052i, ~_wgslsmith_mod_i32(43701i, i32(-1i) * -2147483647i), global1.a.x));
    var var_1 = vec3<i32>(-8808i, 2147483647i, -26318i);
    let var_2 = arg_1;
    global1 = func_2(func_2(Struct_1(arg_2, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(6983u, 3u)])))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_0, -1178f)) + _wgslsmith_f_op_f32(f32(-1f) * -1508f)), global1.b, arg_1.b), _wgslsmith_mult_vec2_u32(u_input.b, vec2<u32>(min(38753u, u_input.a.x), ~u_input.c.x)), var_2.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_1.b)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global1.b))))), ~u_input.b, !(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_1.b - 437f))) == 286f));
    var var_3 = arg_1;
    return Struct_1(vec2<bool>(true, true), -1041f);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_f32(-1149f * global0[_wgslsmith_index_u32(29333u, 3u)]), Struct_1(global1.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(u_input.c.x, 3u)] - global0[_wgslsmith_index_u32(u_input.a.x, 3u)])))), vec2<bool>(any(global1.a), global1.a.x));
    let var_1 = Struct_1(select(!global1.a, !vec2<bool>(global1.a.x, !global1.a.x), !(!(!global1.a))), -1116f);
    let var_2 = Struct_1(var_1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -125f)))));
    var var_3 = abs(~(countOneBits(u_input.a) & ~vec2<u32>(u_input.a.x, u_input.b.x)));
    var var_4 = var_2;
    var_3 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(~0u, _wgslsmith_f_op_f32(func_4(func_1(-1907f, var_2, vec2<bool>(true, true)))), _wgslsmith_mult_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(3769u, u_input.b.x, var_3.x), u_input.c, u_input.c), u_input.c), vec3<u32>(~(~4294967295u), firstTrailingBit(var_3.x), 64214u)));
}

