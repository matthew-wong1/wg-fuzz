struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: vec3<u32>,
    d: bool,
    e: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec4<f32>(-578f, -1326f, 332f, 1010f), -486f, vec3<u32>(27641u, 1085u, 2591u), true, vec3<bool>(false, true, false));

var<private> global1: array<vec4<u32>, 7>;

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<bool>, arg_2: Struct_1) -> Struct_1 {
    global0 = Struct_1(vec4<f32>(arg_2.b, _wgslsmith_f_op_f32(-arg_2.b), _wgslsmith_f_op_f32(-arg_2.b), global0.b), arg_2.a.x, vec3<u32>(arg_2.c.x, 1u, select(countOneBits(global0.c.x), ~global0.c.x, false)) << (~(~global0.c) % vec3<u32>(32u)), any(select(!select(vec4<bool>(arg_2.d, true, arg_2.e.x, arg_2.d), vec4<bool>(true, true, global0.d, arg_2.d), vec4<bool>(arg_2.e.x, global0.e.x, arg_1.x, false)), select(vec4<bool>(arg_2.d, false, true, true), !vec4<bool>(global0.d, arg_2.e.x, arg_2.d, false), !vec4<bool>(false, false, arg_1.x, arg_2.e.x)), !arg_1.x)), !arg_1);
    return Struct_1(arg_2.a, _wgslsmith_f_op_f32(f32(-1f) * -821f), ~_wgslsmith_add_vec3_u32(reverseBits(abs(global0.c)), select(~vec3<u32>(4294967295u, 4294967295u, arg_0.x), vec3<u32>(global0.c.x, arg_0.x, u_input.a), true)), true, global0.e);
}

fn func_3(arg_0: Struct_1) -> Struct_1 {
    global0 = arg_0;
    global0 = func_2(countOneBits(select(reverseBits(vec4<u32>(1u, global0.c.x, arg_0.c.x, u_input.b) & global1[_wgslsmith_index_u32(41647u, 7u)]), global1[_wgslsmith_index_u32(abs(~global0.c.x), 7u)], _wgslsmith_f_op_f32(f32(-1f) * -1204f) <= _wgslsmith_f_op_f32(-global0.b))), vec3<bool>(true, global0.d, all(arg_0.e)), func_2(~_wgslsmith_mod_vec4_u32(reverseBits(vec4<u32>(arg_0.c.x, 90698u, global0.c.x, global0.c.x)), ~global1[_wgslsmith_index_u32(4294967295u, 7u)]), vec3<bool>(false, true, !global0.e.x), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(349f, arg_0.a.x, global0.b, global0.b)))), -240f, global0.c, !global0.e.x && all(vec2<bool>(arg_0.e.x, arg_0.d)), select(!vec3<bool>(arg_0.d, global0.e.x, false), arg_0.e, vec3<bool>(false, false, arg_0.e.x)))));
    let var_0 = max(-_wgslsmith_dot_vec2_i32(vec2<i32>(0i, _wgslsmith_mult_i32(u_input.c, 2147483647i)), (vec2<i32>(u_input.c, 1i) ^ vec2<i32>(0i, u_input.c)) >> (_wgslsmith_mod_vec2_u32(global0.c.xz, arg_0.c.zy) % vec2<u32>(32u))), _wgslsmith_mult_i32(u_input.c, ~(~13600i)));
    let var_1 = Struct_3(arg_0.e.x);
    let var_2 = arg_0.d;
    return Struct_1(vec4<f32>(_wgslsmith_f_op_f32(global0.a.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(global0.a.x)), global0.a.x))), -1190f, global0.b, arg_0.a.x), _wgslsmith_f_op_f32(f32(-1f) * -647f), countOneBits(~vec3<u32>(_wgslsmith_dot_vec4_u32(global1[_wgslsmith_index_u32(0u, 7u)], vec4<u32>(4294967295u, 4294967295u, arg_0.c.x, 8962u)), 43036u, ~u_input.a)), !(!global0.d), vec3<bool>(select(global0.e.x, !any(global0.e), global0.d), var_2, !all(arg_0.e.xx)));
}

fn func_1(arg_0: vec4<i32>, arg_1: vec2<bool>) -> vec4<f32> {
    var var_0 = func_3(func_2(_wgslsmith_div_vec4_u32(firstTrailingBit(_wgslsmith_mod_vec4_u32(global1[_wgslsmith_index_u32(1u, 7u)], vec4<u32>(4294967295u, 1u, 41540u, global0.c.x))), ~_wgslsmith_clamp_vec4_u32(global1[_wgslsmith_index_u32(u_input.a, 7u)], global1[_wgslsmith_index_u32(32649u, 7u)], global1[_wgslsmith_index_u32(1u, 7u)])), global0.e, Struct_1(_wgslsmith_f_op_vec4_f32(-global0.a), _wgslsmith_f_op_f32(-1000f * global0.b), ~countOneBits(vec3<u32>(1u, 34175u, 26867u)), all(!vec4<bool>(false, true, global0.d, arg_1.x)), !global0.e)));
    global1 = array<vec4<u32>, 7>();
    var var_1 = global0.e;
    global0 = func_3(func_3(func_3(func_3(Struct_1(vec4<f32>(-138f, 613f, -1035f, -804f), var_0.a.x, vec3<u32>(var_0.c.x, u_input.b, global0.c.x), var_1.x, var_0.e)))));
    var var_2 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(round(1633f)))));
    return _wgslsmith_f_op_vec4_f32(round(func_3(Struct_1(vec4<f32>(_wgslsmith_f_op_f32(var_0.a.x - 766f), _wgslsmith_div_f32(var_0.a.x, var_0.b), global0.a.x, var_0.b), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-331f, var_0.b)) + 1009f), ~vec3<u32>(var_0.c.x, u_input.b, global0.c.x), global0.e.x, var_0.e)).a));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(u_input.c, u_input.c, 39355i, 0i), vec2<bool>(global0.e.x, true)))), _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(global0.a, vec4<f32>(global0.a.x, -1554f, global0.a.x, -162f))))))), 129f, global0.c, false, global0.e);
    var var_1 = abs(u_input.c);
    var var_2 = all(var_0.e.xx);
    var var_3 = ~var_0.c.x;
    let var_4 = firstTrailingBit(vec2<i32>(u_input.c, i32(-1i) * -1269i) >> (var_0.c.zy % vec2<u32>(32u))) | -abs(vec2<i32>(reverseBits(u_input.c), abs(-69466i)));
    global1 = array<vec4<u32>, 7>();
    var_1 = ~2147483647i;
    var_0 = Struct_1(global0.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-700f - 1033f)) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_vec4_f32(func_1(vec4<i32>(76401i, 3415i, var_4.x, 29114i), vec2<bool>(false, global0.d))).x, _wgslsmith_f_op_f32(exp2(var_0.b)), global0.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b - _wgslsmith_f_op_f32(f32(-1f) * -286f))))), var_0.c, ~4294967295u < func_2(select(~vec4<u32>(3827u, 10871u, var_0.c.x, 4294967295u), vec4<u32>(2966u, var_0.c.x, 4648u, 0u), false), global0.e, func_3(Struct_1(var_0.a, 1320f, global0.c, var_0.e.x, global0.e))).c.x, !select(!vec3<bool>(global0.e.x, global0.e.x, true), !vec3<bool>(var_0.d, var_0.e.x, true), func_2(vec4<u32>(30464u, 4294967295u, var_0.c.x, global0.c.x), var_0.e, Struct_1(vec4<f32>(-394f, var_0.a.x, var_0.a.x, var_0.b), var_0.a.x, global0.c, global0.d, var_0.e)).e.x & global0.d));
    let var_5 = !(!(!global0.d));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(vec3<u32>(_wgslsmith_clamp_u32(max(u_input.b, 13761u), var_0.c.x, 13121u), ~1u, ~_wgslsmith_add_u32(4294967295u, var_0.c.x))));
}

