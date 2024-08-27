struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: Struct_2,
    d: Struct_2,
    e: Struct_2,
}

struct Struct_4 {
    a: bool,
    b: bool,
    c: vec3<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_5 {
    a: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<bool>, 29> = array<vec4<bool>, 29>(vec4<bool>(false, true, false, true), vec4<bool>(true, false, true, false), vec4<bool>(false, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, true, true, true), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, false, false, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), vec4<bool>(false, false, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, true, false, true));

var<private> global1: vec2<f32> = vec2<f32>(1002f, 2108f);

var<private> global2: array<f32, 18> = array<f32, 18>(1197f, 173f, 168f, 229f, 1000f, -2355f, 1550f, -194f, -2515f, 1819f, 259f, 1229f, -361f, -192f, -291f, 1154f, -477f, 1142f);

var<private> global3: vec4<u32> = vec4<u32>(205u, 1u, 19258u, 42339u);

var<private> global4: vec3<f32> = vec3<f32>(1717f, -1171f, 724f);

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: Struct_5, arg_1: Struct_5, arg_2: Struct_1) -> u32 {
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(-1065f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(global4.x)))))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(363f, arg_1.a.x), arg_0.a.zz))))));
    global2 = array<f32, 18>();
    var var_0 = _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(arg_0.a - vec3<f32>(global4.x, arg_1.a.x, 1000f)) - arg_0.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(arg_1.a, arg_1.a)))))));
    let var_1 = true;
    var var_2 = ~arg_2.a.x;
    return u_input.b;
}

fn func_2() -> Struct_5 {
    let var_0 = Struct_4(~global3.x >= ~global3.x, false, vec3<bool>(true, !(all(global0[_wgslsmith_index_u32(global3.x, 29u)]) & true), _wgslsmith_add_u32(_wgslsmith_add_u32(global3.x, 1u), 0u) >= func_3(Struct_5(vec3<f32>(global2[_wgslsmith_index_u32(43260u, 18u)], 101f, global2[_wgslsmith_index_u32(33944u, 18u)])), Struct_5(vec3<f32>(global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)], global2[_wgslsmith_index_u32(u_input.b, 18u)])), Struct_1(vec4<u32>(1u, u_input.b, 4294967295u, 36895u)))), vec4<i32>(-abs(u_input.a), _wgslsmith_sub_i32(-640i, -38986i) >> (abs(u_input.b) % 32u), 2147483647i, _wgslsmith_clamp_i32(-u_input.a, u_input.a << (u_input.b % 32u), ~(-25270i))) | vec4<i32>(u_input.a, -1i, u_input.a, 0i), _wgslsmith_mod_i32(u_input.a, _wgslsmith_dot_vec2_i32(vec2<i32>(-2147483647i, -2147483647i), select(vec2<i32>(-1100i, u_input.a) & vec2<i32>(13020i, u_input.a), -vec2<i32>(u_input.a, u_input.a), select(vec2<bool>(true, false), vec2<bool>(false, false), false)))));
    global4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global4.x) - _wgslsmith_div_f32(-441f, -1045f)))) * 448f), _wgslsmith_f_op_f32(select(-2129f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 18u)] * 360f), _wgslsmith_f_op_f32(-global4.x), all(vec2<bool>(var_0.b, false))))), true)));
    global3 = _wgslsmith_clamp_vec4_u32(vec4<u32>(_wgslsmith_clamp_u32(_wgslsmith_div_u32(~54283u, min(944u, global3.x)), global3.x, countOneBits(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), global3.zy))), 43890u, _wgslsmith_sub_u32(u_input.b, ~1u), u_input.b), vec4<u32>(_wgslsmith_mult_u32(u_input.b, _wgslsmith_add_u32(u_input.b, u_input.b)), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, 4294967295u), min(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(global3.x, 1u))), ~global3.x | firstLeadingBit(u_input.b), u_input.b) ^ vec4<u32>(~(~1u), global3.x, 1u, 17212u), vec4<u32>(_wgslsmith_sub_u32(~global3.x, _wgslsmith_sub_u32(4294967295u, global3.x)) >> (countOneBits(~u_input.b) % 32u), 0u >> (u_input.b % 32u), _wgslsmith_dot_vec4_u32(~vec4<u32>(u_input.b, u_input.b, u_input.b, global3.x), vec4<u32>(~u_input.b, 35522u, 4294967295u, 1u)), global3.x));
    let var_1 = Struct_5(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(825f, _wgslsmith_f_op_f32(abs(1077f)))) * _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(global3.x, 18u)] * global2[_wgslsmith_index_u32(_wgslsmith_clamp_u32(u_input.b, u_input.b, global3.x), 18u)])), _wgslsmith_f_op_f32(round(-1244f))));
    let var_2 = var_0.a;
    return var_1;
}

fn func_1(arg_0: vec2<u32>, arg_1: Struct_4, arg_2: Struct_2) -> f32 {
    global4 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(-1666f - global1.x), -2123f))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(64177u, 18u)]), _wgslsmith_div_f32(-1400f, _wgslsmith_f_op_f32(sign(-1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(global1.x, global1.x)))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(vec3<f32>(global1.x, -340f, global1.x), vec3<f32>(-1425f, -879f, global4.x)) + _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(global2[_wgslsmith_index_u32(0u, 18u)], global1.x, global2[_wgslsmith_index_u32(11697u, 18u)])))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-843f, -1581f, 517f)))))));
    let var_0 = 53877u;
    global0 = array<vec4<bool>, 29>();
    var var_1 = func_2();
    return _wgslsmith_f_op_f32(-global1.x);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = _wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(-global4.yz));
    let var_0 = Struct_5(_wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, 256f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global1.x)))) + vec3<f32>(-949f, _wgslsmith_f_op_f32(379f + _wgslsmith_f_op_f32(-1000f + 1883f)), _wgslsmith_f_op_f32(f32(-1f) * -804f))));
    var var_1 = global1.x;
    var var_2 = _wgslsmith_sub_u32(~global3.x, global3.x);
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.x, -1911f) - _wgslsmith_f_op_f32(func_1(vec2<u32>(u_input.b, global3.x), Struct_4(false, false, vec3<bool>(true, true, true), vec4<i32>(u_input.a, u_input.a, u_input.a, -2147483647i), u_input.a), Struct_2(vec2<bool>(true, false)))))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global4.x, -276f, false)) * 155f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global1.x)) - _wgslsmith_f_op_f32(max(948f, var_0.a.x))), false))));
    let var_4 = u_input.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(330f - _wgslsmith_f_op_f32(ceil(-349f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-662f, -336f), vec2<f32>(_wgslsmith_f_op_f32(round(var_3.x)), -130f))));
}

