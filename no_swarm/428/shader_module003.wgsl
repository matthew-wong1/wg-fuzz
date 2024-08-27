struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: i32,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<vec3<f32>, 9>;

var<private> global2: Struct_1;

var<private> global3: array<i32, 2>;

var<private> global4: array<Struct_1, 8>;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_2(arg_0: Struct_2, arg_1: u32, arg_2: i32, arg_3: f32) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(arg_0.a)))) * global0.wwz), _wgslsmith_add_u32(1u, 1u));
    let var_1 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global0.yy))), global0.ww)))));
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), _wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(1088f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.a.x + -828f) - _wgslsmith_f_op_f32(arg_3 * var_0.a.x)))), ~arg_1, 0i);
    var var_2 = -537f;
    let var_3 = global4[_wgslsmith_index_u32(~arg_1, 8u)];
    return _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(-1410f))));
}

fn func_3(arg_0: u32, arg_1: vec2<bool>, arg_2: Struct_1) -> u32 {
    let var_0 = vec3<u32>(~(~select(u_input.a, 25564u, arg_1.x)), 1u, arg_2.c);
    var var_1 = -624f;
    global0 = vec4<f32>(arg_2.a.x, -137f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(sign(-133f)))), _wgslsmith_f_op_f32(f32(-1f) * -641f));
    var var_2 = Struct_1(global2.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_2.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global0.x)) + global2.a.x))) * _wgslsmith_f_op_f32(ceil(global2.a.x))), u_input.a, _wgslsmith_mult_i32(global2.d, abs(-14757i)));
    global0 = global2.a;
    return ~(~arg_0);
}

fn func_1(arg_0: u32) -> f32 {
    var var_0 = !vec3<bool>(global2.a.x <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-860f + global0.x))), true, !any(select(vec4<bool>(true, true, false, false), vec4<bool>(false, true, true, false), true)));
    var var_1 = vec4<i32>(abs(13039i), 7209i, global3[_wgslsmith_index_u32(~_wgslsmith_mult_u32(reverseBits(_wgslsmith_sub_u32(arg_0, u_input.b)), _wgslsmith_sub_u32(arg_0, global2.c) | _wgslsmith_mod_u32(4294967295u, 37946u)), 2u)], 811i);
    let var_2 = -46997i;
    var var_3 = Struct_1(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(global2.a - vec4<f32>(_wgslsmith_f_op_f32(306f * -574f), 179f, global0.x, _wgslsmith_f_op_f32(-global2.a.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(global2.a.xxw, arg_0), ~22801u, _wgslsmith_mod_i32(var_2, -6369i), 1000f))) - 1287f), _wgslsmith_clamp_u32(~0u, 1u, func_3(0u, vec2<bool>(false, var_0.x), global4[_wgslsmith_index_u32(1u, 8u)])) ^ arg_0, global3[_wgslsmith_index_u32(global2.c, 2u)]);
    global1 = array<vec3<f32>, 9>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(-global0.x), true)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-172f)))))));
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> vec4<u32> {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global2.a))));
    let var_0 = 52995u;
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1266f, -130f, _wgslsmith_f_op_f32(ceil(1814f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b, arg_1, arg_1)), _wgslsmith_f_op_vec3_f32(vec3<f32>(497f, arg_0, arg_1) * global1[_wgslsmith_index_u32(81637u, 9u)]))), true))), ~0u);
    var var_2 = Struct_1(vec4<f32>(-483f, var_1.a.x, 1008f, _wgslsmith_f_op_f32(round(-1057f))), arg_0, 4294967295u, global2.d);
    let var_3 = Struct_2(_wgslsmith_f_op_vec3_f32(global0.zww * _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(global2.a.yyx)) + vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -526f), _wgslsmith_f_op_f32(step(-1185f, arg_1)), _wgslsmith_f_op_f32(round(arg_0))))), ~79388u);
    return vec4<u32>(1u, min(1u, 1u ^ var_1.b), ~(~_wgslsmith_dot_vec3_u32(vec3<u32>(global2.c, 4294967295u, u_input.a), vec3<u32>(global2.c, 1u, 1u))), var_2.c | ~(~u_input.a)) >> (min(max(vec4<u32>(456u, var_3.b, var_2.c, 33070u) >> (select(vec4<u32>(u_input.a, 1u, 4294967295u, u_input.b), vec4<u32>(4294967295u, 35454u, var_0, var_1.b), vec4<bool>(false, true, false, true)) % vec4<u32>(32u)), min(vec4<u32>(30711u, var_3.b, 37854u, 10282u), ~vec4<u32>(18224u, var_3.b, u_input.b, global2.c))), abs(~vec4<u32>(0u, u_input.a, var_3.b, 4294967295u))) % vec4<u32>(32u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~(~func_4(_wgslsmith_f_op_f32(func_1(51034u)), global2.b, -vec2<i32>(global2.d, global2.d)));
    let var_1 = var_0;
    global4 = array<Struct_1, 8>();
    let var_2 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -676f) + global0.x))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(740f, global0.x))) * _wgslsmith_f_op_vec2_f32(exp2(global0.wz)))))), select(vec2<bool>(false, false), select(vec2<bool>(true, true), vec2<bool>(true, any(vec3<bool>(false, true, true))), !(global2.d > 61986i)), select(vec2<bool>(true, true), vec2<bool>(true, true), false))));
    var var_3 = select(~abs(~vec4<i32>(-1i, -19314i, -1i, global3[_wgslsmith_index_u32(1u, 2u)])) << (var_1 % vec4<u32>(32u)), vec4<i32>(~(-1i), ~global3[_wgslsmith_index_u32(0u, 2u)], global2.d, max(min(~global3[_wgslsmith_index_u32(global2.c, 2u)], -39672i | global3[_wgslsmith_index_u32(1u, 2u)]), _wgslsmith_clamp_i32(-2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global2.d, 3695i), vec3<i32>(global3[_wgslsmith_index_u32(4294967295u, 2u)], global2.d, global2.d)), -global3[_wgslsmith_index_u32(0u, 2u)]))), any(!select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, true, true))));
    var var_4 = -(~(-1i));
    let var_5 = global4[_wgslsmith_index_u32(~(~(var_1.x >> (var_1.x % 32u))), 8u)];
    global2 = Struct_1(_wgslsmith_f_op_vec4_f32(-global2.a), 1167f, var_5.c, -12137i);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(Struct_2(vec3<f32>(-716f, global0.x, var_2.x), var_1.x), var_1.x, -1i, _wgslsmith_f_op_f32(select(-576f, 256f, true))))))), ~vec2<u32>((82799u & var_5.c) << (4805u % 32u), var_5.c), 0i & _wgslsmith_dot_vec3_i32(select(vec3<i32>(1i, var_5.d, global2.d), var_3.wxz, vec3<bool>(true, false, false)) << (~vec3<u32>(1u, 62806u, 1u) % vec3<u32>(32u)), var_3.xzz), 87694u, ~19571u);
}

