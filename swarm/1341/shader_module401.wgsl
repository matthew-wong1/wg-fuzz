struct Struct_1 {
    a: bool,
    b: i32,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, -29497i);

var<private> global1: vec2<u32> = vec2<u32>(0u, 30964u);

var<private> global2: bool;

var<private> global3: array<Struct_1, 8>;

var<private> global4: Struct_1;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec3<f32> {
    global0 = global3[_wgslsmith_index_u32(~27118u, 8u)];
    global0 = Struct_1(all(select(!select(vec3<bool>(global4.a, global4.a, global0.a), vec3<bool>(false, false, global4.a), vec3<bool>(true, global0.a, false)), !vec3<bool>(global4.a, false, global4.a), all(vec2<bool>(global4.a, true)) || any(vec2<bool>(global4.a, global4.a)))), 11245i);
    var var_0 = firstTrailingBit(0u);
    global1 = ~(~vec2<u32>(25613u, u_input.a) << (min(~_wgslsmith_clamp_vec2_u32(vec2<u32>(global1.x, 137u), vec2<u32>(global1.x, 1u), vec2<u32>(global1.x, 41230u)), reverseBits(~vec2<u32>(1u, 1u))) % vec2<u32>(32u)));
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1694f, -658f)))) - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_div_vec2_f32(vec2<f32>(557f, -679f), vec2<f32>(1003f, -413f))))) + _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(260f, 711f))))), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(_wgslsmith_f_op_f32(select(-1631f, _wgslsmith_f_op_f32(min(-995f, -954f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-353f * -1880f) + _wgslsmith_f_op_f32(ceil(1220f))))))));
    return _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(step(var_1.x, -1194f)))), var_1.x, var_1.x)) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.x, var_1.x, -1313f)))));
}

fn func_2() -> Struct_1 {
    var var_0 = vec3<f32>(1f, 1f, 1f);
    var var_1 = vec4<bool>(global4.a, select(_wgslsmith_f_op_f32(-1000f + var_0.x) >= var_0.x, any(vec3<bool>(true, 32449u < global1.x, global4.a | global0.a)), global4.b == max(abs(86587i), ~8045i)), global0.a, global0.a);
    global4 = global3[_wgslsmith_index_u32(countOneBits(4294967295u), 8u)];
    var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_0.x + var_0.x)))) + _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-588f, 1000f, 477f)))), _wgslsmith_f_op_vec3_f32(func_3()), false))) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.x, var_0.x, 648f), vec3<f32>(-794f, -223f, var_0.x)))))), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(850f, var_0.x, var_0.x))) + _wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, -1788f, -1423f) - vec3<f32>(var_0.x, -1475f, var_0.x)))))));
    global4 = global3[_wgslsmith_index_u32(0u, 8u)];
    return Struct_1(all(var_1.yyy), abs(~(-max(-974i, 0i))));
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-807f)) + _wgslsmith_f_op_f32(-907f - _wgslsmith_f_op_f32(min(-814f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1140f))))));
    global3 = array<Struct_1, 8>();
    global1 = max(~vec2<u32>(_wgslsmith_div_u32(1u, arg_1), firstTrailingBit(global1.x)), ~_wgslsmith_mod_vec2_u32(vec2<u32>(~global1.x, ~arg_1), _wgslsmith_add_vec2_u32(vec2<u32>(1u, global1.x), ~vec2<u32>(0u, 4294967295u))));
    var var_1 = ~52447u;
    global4 = func_2();
    return Struct_1(global0.a, 7331i);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>) -> vec2<f32> {
    var var_0 = 6921i ^ countOneBits(global4.b);
    var var_1 = func_4(func_2(), _wgslsmith_mod_u32(~0u, ~arg_1.x));
    global0 = Struct_1(61119u == select(select(4294967295u, _wgslsmith_clamp_u32(1u, global1.x, arg_1.x), true), abs(_wgslsmith_div_u32(u_input.a, 4372u)), global4.a), global0.b);
    var var_2 = 21102i;
    let var_3 = 1i;
    return _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1006f), 869f), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-148f, -1930f)))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-557f, 1159f)))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(-780f, _wgslsmith_f_op_f32(1209f - -678f)), -743f) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_div_f32(-2033f, 1000f), _wgslsmith_f_op_f32(484f - -2086f)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(Struct_1(global0.a, _wgslsmith_mod_i32(_wgslsmith_sub_i32(0i, -2147483647i), 2147483647i)), ~(~(vec2<u32>(0u, global1.x) | vec2<u32>(4294967295u, global1.x))))) + _wgslsmith_f_op_vec2_f32(func_1(global3[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(65384u, 1u, 4043u), _wgslsmith_mod_vec3_u32(~vec3<u32>(1u, 63189u, global1.x), abs(vec3<u32>(0u, u_input.a, 0u)))), 8u)], min(_wgslsmith_sub_vec2_u32(vec2<u32>(18844u, global1.x), vec2<u32>(global1.x, 33311u)), select(vec2<u32>(global1.x, u_input.a), vec2<u32>(4294967295u, global1.x), vec2<bool>(false, global0.a))) << (vec2<u32>(~global1.x, 0u) % vec2<u32>(32u)))));
    let var_1 = _wgslsmith_div_f32(-841f, var_0.x);
    let var_2 = 820f;
    let var_3 = min(-2147483647i, max(2147483647i, min(global0.b, global0.b) >> (firstLeadingBit(u_input.a) % 32u))) | ~(~(-global4.b));
    global1 = _wgslsmith_clamp_vec2_u32(reverseBits(vec2<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, global1.x), vec2<u32>(global1.x, 4294967295u)), 62409u)) << (abs(vec2<u32>(u_input.a, reverseBits(global1.x))) % vec2<u32>(32u)), ~vec2<u32>(~(~u_input.a), u_input.a), ~(_wgslsmith_sub_vec2_u32(firstLeadingBit(vec2<u32>(u_input.a, u_input.a)), reverseBits(vec2<u32>(28953u, 12216u))) << (~(vec2<u32>(global1.x, 39174u) >> (vec2<u32>(u_input.a, u_input.a) % vec2<u32>(32u))) % vec2<u32>(32u))));
    global2 = true;
    var var_4 = func_4(func_4(func_2(), ~countOneBits(global1.x)), abs(30946u));
    global0 = Struct_1(global0.a | ((_wgslsmith_f_op_f32(abs(var_1)) == _wgslsmith_f_op_f32(ceil(341f))) && false), -reverseBits(~9828i ^ (-10684i & var_3)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1278f, 998f)) - var_0.x)))), ~(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b, -21031i, global4.b, -22096i) | vec4<i32>(var_4.b, -68917i, 15470i, 0i), min(vec4<i32>(0i, global0.b, 43557i, 27959i), vec4<i32>(var_4.b, var_4.b, global4.b, 1i))) | func_2().b), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(var_0)) - var_0)));
}

