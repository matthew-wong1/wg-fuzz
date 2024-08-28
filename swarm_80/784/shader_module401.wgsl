struct Struct_1 {
    a: vec4<f32>,
    b: vec3<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
}

struct Struct_3 {
    a: vec4<f32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 1> = array<vec4<u32>, 1>(vec4<u32>(6897u, 1966u, 1u, 0u));

var<private> global1: array<f32, 11> = array<f32, 11>(-750f, 718f, 126f, -173f, 2858f, 1104f, -456f, 1526f, -1000f, 467f, 1298f);

var<private> global2: vec3<f32> = vec3<f32>(-640f, -564f, 562f);

var<private> global3: Struct_2;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3() -> f32 {
    let var_0 = Struct_3(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(global3.b * -678f), -319f, global2.x, global2.x))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(2355f, 1584f, global2.x, global1[_wgslsmith_index_u32(39173u, 11u)]) * vec4<f32>(global2.x, 1473f, global3.b, global3.b)) + _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-648f, global3.b, -1000f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)]), vec4<f32>(134f, global1[_wgslsmith_index_u32(u_input.a.x, 11u)], -1199f, global2.x))))))));
    var var_1 = select(vec4<bool>(false, true, all(select(!vec2<bool>(global3.a, true), select(vec2<bool>(false, true), vec2<bool>(false, global3.a), global3.a), false)), (~(-38315i) >> ((28396u | u_input.a.x) % 32u)) <= u_input.b.x), select(vec4<bool>(!global3.a, true, false, select(global3.a, global3.a, -2147483647i > u_input.b.x)), select(!vec4<bool>(true, global3.a, false, true), select(!vec4<bool>(global3.a, false, global3.a, false), select(vec4<bool>(global3.a, global3.a, global3.a, true), vec4<bool>(false, true, global3.a, true), vec4<bool>(false, true, global3.a, true)), !vec4<bool>(global3.a, true, global3.a, true)), all(vec2<bool>(true, false)) || true), !(!(!vec4<bool>(global3.a, false, false, global3.a)))), !((select(global3.a, global3.a, false) | all(vec3<bool>(global3.a, global3.a, global3.a))) || all(select(vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, global3.a), vec2<bool>(global3.a, global3.a)))));
    let var_2 = min(_wgslsmith_dot_vec2_i32(u_input.b.wz, abs(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), vec2<i32>(u_input.b.x, u_input.b.x)))) & -abs(-1i >> (u_input.a.x % 32u)), -u_input.b.x);
    var var_3 = any(!(!vec2<bool>(any(vec4<bool>(var_1.x, true, global3.a, false)), global3.a)));
    var var_4 = 2147483647i;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global2.x)));
}

fn func_2() -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(global2.x + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global1[_wgslsmith_index_u32(u_input.a.x, 11u)])))));
    global0 = array<vec4<u32>, 1>();
    global2 = vec3<f32>(_wgslsmith_f_op_f32(func_3()), 919f, var_0);
    global3 = Struct_2(~(_wgslsmith_add_u32(0u, u_input.a.x) ^ u_input.a.x) == _wgslsmith_div_u32(u_input.a.x, u_input.a.x), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-1090f)) + _wgslsmith_f_op_f32(1089f - global3.b)) * global2.x), _wgslsmith_f_op_f32(ceil(var_0)))));
    global2 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-145f - global1[_wgslsmith_index_u32(u_input.a.x, 11u)])), 1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3()) - var_0)), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(586f, -1248f, _wgslsmith_f_op_f32(select(-1155f, 1777f, global3.a))))))));
    return Struct_2(all(vec3<bool>(true, true, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_0, 3014f)));
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: f32, arg_3: u32) -> vec3<f32> {
    let var_0 = _wgslsmith_div_f32(-524f, -509f);
    global1 = array<f32, 11>();
    let var_1 = global3.a;
    global3 = func_2();
    global1 = array<f32, 11>();
    return vec3<f32>(-1090f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.x * _wgslsmith_f_op_f32(floor(arg_0.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(global3.b)), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(1u, 11u)]))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-1558f * -1669f), _wgslsmith_f_op_f32(f32(-1f) * -1759f))))), global3.b);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(global3.b * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.b, global2.x)) * _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.a.x, 11u)])) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(round(-695f))))))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_div_vec3_f32(vec3<f32>(859f, -2456f, global3.b), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-613f, -1109f, -1000f)))))) + _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global3.b), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(firstTrailingBit(u_input.a.x), 11u)]), _wgslsmith_f_op_f32(f32(-1f) * -274f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_1(Struct_2(global3.a, 1608f), true, global3.b, 1u)) + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.a.x, 11u)], 890f, global3.b)) + vec3<f32>(1265f, -1000f, global1[_wgslsmith_index_u32(4294967295u, 11u)])))));
    var var_2 = Struct_2(true, global3.b);
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-949f - 675f) + _wgslsmith_f_op_f32(f32(-1f) * -198f))) - 1f), _wgslsmith_f_op_f32(f32(-1f) * -186f), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(_wgslsmith_add_u32(select(_wgslsmith_mult_u32(u_input.a.x, 24009u), firstTrailingBit(12852u), global3.a), u_input.a.x), 11u)]));
    var_1 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_1(Struct_2((-19532i & u_input.b.x) >= u_input.b.x, 214f), all(vec4<bool>(global3.a, true, !var_2.a, any(vec4<bool>(true, true, false, false)))), var_2.b, ~abs(~u_input.a.x))));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_3.x + func_2().b));
    let var_5 = _wgslsmith_clamp_vec4_i32(u_input.b, max(countOneBits(_wgslsmith_mult_vec4_i32(u_input.b, -u_input.b)), vec4<i32>(-1i, -24383i, ~abs(0i), min(-30667i, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.b.x, u_input.b.x), u_input.b.yy)))), firstTrailingBit(u_input.b));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(2147483647i, -42460i));
}

