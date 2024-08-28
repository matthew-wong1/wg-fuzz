struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec4<bool>,
    c: vec3<f32>,
    d: vec4<u32>,
    e: f32,
}

struct Struct_5 {
    a: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec4<i32>,
    d: vec3<u32>,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 1> = array<vec4<f32>, 1>(vec4<f32>(709f, 1000f, 1732f, -1243f));

var<private> global1: array<Struct_5, 25>;

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2() -> u32 {
    global1 = array<Struct_5, 25>();
    return 71493u << (min(~(~_wgslsmith_mod_u32(u_input.a, u_input.d.x)), 1222u) % 32u);
}

fn func_3(arg_0: f32, arg_1: Struct_3, arg_2: f32, arg_3: Struct_1) -> vec2<f32> {
    var var_0 = vec3<f32>(-316f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-671f + arg_2)))))), -1550f);
    global0 = array<vec4<f32>, 1>();
    let var_1 = 27319i;
    global1 = array<Struct_5, 25>();
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(abs(448f)))))), _wgslsmith_f_op_f32(-762f + arg_0), -579f));
    return _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx * vec2<f32>(_wgslsmith_f_op_f32(ceil(-865f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(arg_2, -2643f)) * _wgslsmith_f_op_f32(trunc(1515f))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1516f, -1207f), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(vec2<f32>(-508f, arg_0) * arg_1.a.xx))))) * vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-848f, arg_0)), 757f)));
}

fn func_4(arg_0: vec2<f32>) -> vec4<f32> {
    var var_0 = i32(-1i) * -select(-1i, 0i | -u_input.c.x, true);
    let var_1 = global1[_wgslsmith_index_u32(18034u, 25u)];
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1182f, arg_0.x, arg_0.x)), _wgslsmith_f_op_vec3_f32(vec3<f32>(368f, arg_0.x, -1470f) - vec3<f32>(arg_0.x, 214f, 414f))), vec3<f32>(_wgslsmith_f_op_f32(1000f * arg_0.x), _wgslsmith_f_op_f32(step(-561f, 451f)), arg_0.x), false)))));
    let var_3 = _wgslsmith_sub_vec4_u32(min(select(~firstTrailingBit(vec4<u32>(10224u, u_input.a, 0u, 34652u)), ~vec4<u32>(1u, u_input.a, 1u, var_1.a.x) | vec4<u32>(u_input.a, 1u, 1u, u_input.d.x), vec4<bool>(true, false, true, true)), vec4<u32>(firstLeadingBit(~var_1.a.x), u_input.a, 4294967295u, ~min(1u, 4294967295u))), ~vec4<u32>(0u, ~select(var_1.a.x, 89962u, true), abs(1u), reverseBits(33160u)));
    let var_4 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_0));
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global0[_wgslsmith_index_u32(55139u, 1u)], vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1884f), _wgslsmith_f_op_vec2_f32(func_3(var_2.x, Struct_3(vec4<f32>(arg_0.x, arg_0.x, 547f, 589f)), var_2.x, Struct_1(57350u))).x, var_4.x, arg_0.x), true)) + global0[_wgslsmith_index_u32(countOneBits(~(~39934u)), 1u)]) + vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x * arg_0.x) + var_4.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-466f - _wgslsmith_f_op_f32(var_4.x * var_2.x))), _wgslsmith_f_op_f32(f32(-1f) * -307f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1009f - -191f)) - _wgslsmith_f_op_f32(round(arg_0.x)))));
}

fn func_5(arg_0: Struct_5, arg_1: Struct_3, arg_2: vec3<f32>, arg_3: vec3<bool>) -> Struct_4 {
    global0 = array<vec4<f32>, 1>();
    global0 = array<vec4<f32>, 1>();
    var var_0 = vec4<u32>(u_input.a, 4294967295u, ~_wgslsmith_sub_u32(5341u, ~u_input.d.x), min(abs(firstLeadingBit(u_input.a)), 4294967295u));
    var var_1 = arg_2.xx;
    var var_2 = Struct_3(global0[_wgslsmith_index_u32(countOneBits(4294967295u) >> (~_wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.x, var_0.x), vec2<u32>(var_0.x, var_0.x)) % 32u), 1u)]);
    return Struct_4(min(22908i, u_input.b), vec4<bool>(all(arg_3.xy), (_wgslsmith_f_op_f32(-var_2.a.x) >= var_1.x) | (_wgslsmith_f_op_f32(floor(arg_1.a.x)) != var_1.x), 436f != _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(arg_1.a.x)))), arg_3.x), vec3<f32>(-690f, 309f, _wgslsmith_f_op_f32(arg_1.a.x - -1627f)), ~(~firstTrailingBit(vec4<u32>(0u, var_0.x, 1u, u_input.d.x))), var_2.a.x);
}

fn func_1(arg_0: f32, arg_1: vec2<i32>, arg_2: bool, arg_3: f32) -> f32 {
    let var_0 = func_5(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(func_2(), ~u_input.d.x), 25u)], Struct_3(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(func_4(_wgslsmith_f_op_vec2_f32(func_3(arg_3, Struct_3(global0[_wgslsmith_index_u32(0u, 1u)]), arg_3, Struct_1(6307u))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-424f, arg_3, -592f, arg_3))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec4_f32(func_4(vec2<f32>(1000f, -439f))).zyy)))), vec3<bool>(false, any(select(select(vec4<bool>(true, true, false, true), vec4<bool>(false, arg_2, arg_2, false), vec4<bool>(arg_2, false, arg_2, arg_2)), select(vec4<bool>(true, true, arg_2, arg_2), vec4<bool>(arg_2, false, arg_2, false), arg_2), any(vec3<bool>(arg_2, false, arg_2)))), arg_2 && (true & (u_input.a != u_input.d.x))));
    var var_1 = Struct_3(global0[_wgslsmith_index_u32(~(~u_input.a), 1u)]);
    var var_2 = (vec2<i32>(countOneBits(66631i), firstTrailingBit(~(-27223i))) >> (vec2<u32>(u_input.a, _wgslsmith_div_u32(~4294967295u, u_input.d.x)) % vec2<u32>(32u))) | countOneBits(vec2<i32>(-2147483647i, u_input.e >> (var_0.d.x % 32u)));
    let var_3 = Struct_1(1u);
    var_2 = vec2<i32>(_wgslsmith_sub_i32(~var_0.a, firstLeadingBit(arg_1.x & firstLeadingBit(u_input.e))), -(~var_2.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(var_0.e)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(var_0.c.x - 1500f)))) + var_1.a.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(1f, _wgslsmith_f_op_f32(1138f - _wgslsmith_f_op_f32(func_1(-2972f, vec2<i32>(u_input.c.x, u_input.c.x), true, _wgslsmith_f_op_f32(-873f - 1195f))))));
    global0 = array<vec4<f32>, 1>();
    let var_1 = Struct_1(4294967295u);
    let var_2 = !(all(vec2<bool>(true, all(vec2<bool>(false, true)))) && (var_0 <= _wgslsmith_f_op_f32(floor(var_0))));
    let var_3 = var_2;
    global1 = array<Struct_5, 25>();
    let x = u_input.a;
    s_output = StorageBuffer(abs(-firstTrailingBit(u_input.b)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global0[_wgslsmith_index_u32(firstLeadingBit(88928u), 1u)] * vec4<f32>(-182f, var_0, 582f, var_0)))));
}

