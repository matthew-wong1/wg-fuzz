struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: bool,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: f32,
    c: Struct_1,
    d: Struct_2,
}

struct Struct_4 {
    a: vec3<f32>,
    b: f32,
    c: Struct_2,
}

struct Struct_5 {
    a: bool,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 20> = array<u32, 20>(60683u, 0u, 0u, 0u, 57598u, 4294967295u, 17911u, 25132u, 4294967295u, 1u, 4294967295u, 53248u, 4294967295u, 4294967295u, 1u, 4294967295u, 1u, 21946u, 59531u, 4294967295u);

var<private> global1: Struct_3;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_4) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(1238f, 1044f, arg_0.b) * vec3<f32>(-266f, -647f, arg_0.c.b.x))))))), vec3<f32>(-1672f, -779f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * global1.c.c) + -378f))))));
    var var_1 = firstTrailingBit(select(arg_0.c.d.b, 24730i, true | (_wgslsmith_f_op_f32(max(global1.a.x, var_0.x)) >= _wgslsmith_div_f32(-887f, 708f))));
    var var_2 = ~u_input.b << (~global1.d.c.wy % vec2<u32>(32u));
    var var_3 = _wgslsmith_add_u32(u_input.b.x, global0[_wgslsmith_index_u32(~(~((0u << (var_2.x % 32u)) << (_wgslsmith_add_u32(u_input.b.x, 11171u) % 32u))), 20u)]);
    var var_4 = false;
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(arg_0.b - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(980f * 1964f)))))));
}

fn func_2(arg_0: u32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_4) -> u32 {
    var var_0 = arg_3.c.d;
    var var_1 = _wgslsmith_mod_vec2_i32(global1.d.a.yz, min(_wgslsmith_add_vec2_i32(_wgslsmith_mod_vec2_i32(max(vec2<i32>(arg_2, -20112i), vec2<i32>(0i, 1159i)), vec2<i32>(0i, u_input.a.x)), vec2<i32>(arg_1.d.b, -8045i)), _wgslsmith_sub_vec2_i32(arg_1.a.yz, arg_1.a.zz)));
    var_1 = vec2<i32>(arg_1.a.x & -2147483647i, _wgslsmith_div_i32(max(-30974i, 1i), countOneBits(firstLeadingBit(_wgslsmith_mult_i32(20027i, -8883i)))));
    var_0 = arg_3.c.d;
    var_0 = arg_3.c.d;
    return _wgslsmith_mod_u32(~(~108663u) ^ _wgslsmith_clamp_u32(~select(15770u, 0u, false), 0u, 1u >> (~arg_3.c.c.x % 32u)), min(56508u, _wgslsmith_add_u32(124976u, ~_wgslsmith_clamp_u32(18971u, 3215u, global0[_wgslsmith_index_u32(0u, 20u)]))));
}

fn func_3(arg_0: vec4<u32>) -> Struct_1 {
    var var_0 = _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(~vec3<i32>(abs(-14573i), u_input.a.x, -2147483647i), vec3<i32>(-46702i, _wgslsmith_mult_i32(~u_input.a.x, global1.d.d.b), 1i >> ((u_input.b.x & global0[_wgslsmith_index_u32(12698u, 20u)]) % 32u))), -(~global1.d.a));
    let var_1 = select(vec4<bool>(all(vec4<bool>(true, any(vec3<bool>(global1.d.d.d, global1.c.d, false)), any(vec3<bool>(true, true, false)), global1.d.d.d)), any(!select(vec4<bool>(global1.c.d, true, global1.d.d.d, global1.c.d), vec4<bool>(global1.c.d, global1.d.d.d, false, global1.d.d.d), global1.d.d.d)), global1.d.d.d, any(vec2<bool>(true, false))), select(select(select(vec4<bool>(true, global1.d.d.d, false, false), select(vec4<bool>(false, global1.d.d.d, global1.c.d, global1.c.d), vec4<bool>(true, global1.d.d.d, global1.c.d, false), false), !vec4<bool>(global1.d.d.d, global1.c.d, global1.d.d.d, global1.c.d)), vec4<bool>(true, global1.c.d, select(global1.c.d, global1.c.d, global1.d.d.d), arg_0.x >= 38799u), vec4<bool>(global1.d.d.d & global1.c.d, global1.d.d.d, global1.d.d.d, all(vec2<bool>(global1.d.d.d, true)))), vec4<bool>(global1.d.d.d, all(vec2<bool>(global1.d.d.d, false)), true, global1.d.d.d), select(select(select(vec4<bool>(true, true, global1.d.d.d, true), vec4<bool>(true, true, global1.d.d.d, global1.d.d.d), global1.d.d.d), select(vec4<bool>(true, true, false, global1.c.d), vec4<bool>(global1.d.d.d, global1.d.d.d, global1.c.d, global1.d.d.d), vec4<bool>(global1.c.d, false, false, global1.d.d.d)), true), !select(vec4<bool>(true, false, false, global1.d.d.d), vec4<bool>(false, false, false, false), vec4<bool>(global1.c.d, global1.c.d, true, true)), !global1.c.d == false)), !(!vec4<bool>(true, true, true, !global1.c.d)));
    let var_2 = select(vec2<bool>(true, !(!any(vec4<bool>(true, false, var_1.x, global1.d.d.d)))), select(select(!select(var_1.zz, var_1.zy, vec2<bool>(true, var_1.x)), select(select(vec2<bool>(false, global1.c.d), vec2<bool>(global1.c.d, var_1.x), var_1.yw), select(vec2<bool>(true, true), var_1.xx, var_1.x), vec2<bool>(var_1.x, false)), var_1.wz), select(select(vec2<bool>(var_1.x, global1.d.d.d), vec2<bool>(global1.d.d.d, global1.d.d.d), select(vec2<bool>(false, global1.c.d), vec2<bool>(global1.c.d, false), var_1.yy)), var_1.yx, !(!var_1.xw)), global1.d.d.d), !all(select(select(var_1.zwy, vec3<bool>(var_1.x, true, false), vec3<bool>(true, false, false)), var_1.wzx, vec3<bool>(var_1.x, true, false))));
    var var_3 = vec4<u32>(~_wgslsmith_dot_vec4_u32(vec4<u32>(~arg_0.x, arg_0.x, 4294967295u, 4294967295u), vec4<u32>(global0[_wgslsmith_index_u32(38549u, 20u)], firstTrailingBit(1u), 34108u, 1u)), global0[_wgslsmith_index_u32(firstLeadingBit(global0[_wgslsmith_index_u32(u_input.b.x, 20u)]), 20u)], global0[_wgslsmith_index_u32(1u, 20u)] & _wgslsmith_sub_u32(~firstTrailingBit(arg_0.x), _wgslsmith_dot_vec3_u32(global1.d.c.xyw, _wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, 38168u, 22494u), global1.d.c.wzz))), firstTrailingBit(_wgslsmith_clamp_u32(~global1.d.c.x, 4294967295u, firstLeadingBit(global1.d.c.x))));
    var var_4 = _wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1039f, global1.b) - global1.a))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(640f, global1.b)))))));
    return Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(-global1.c.e.xy))) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1152f, _wgslsmith_f_op_f32(global1.c.c - var_4.x)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-global1.a), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(global1.d.b.x, var_4.x)))))))), 1i, _wgslsmith_f_op_f32(global1.c.a.x - -434f), (-1i <= ~global1.d.d.b) || true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.c.a.x + _wgslsmith_f_op_f32(-global1.c.e.x)) - _wgslsmith_f_op_f32(-1114f * _wgslsmith_f_op_f32(-2032f * global1.d.d.e.x))), _wgslsmith_f_op_f32(trunc(global1.d.d.a.x)), global1.c.c, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-594f + _wgslsmith_div_f32(global1.c.a.x, var_4.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~20403i & firstTrailingBit(15494i);
    let var_1 = global1.d.d.d;
    var var_2 = global1.d.c;
    global1 = Struct_3(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1000f, _wgslsmith_f_op_f32(floor(global1.a.x))), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-928f, -858f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.c.c, 845f) - global1.a))))))), _wgslsmith_f_op_f32(774f + _wgslsmith_f_op_f32(func_1(Struct_4(vec3<f32>(1764f, global1.c.e.x, 499f), _wgslsmith_f_op_f32(2171f + 801f), global1.d)))), func_3(vec4<u32>(_wgslsmith_mod_u32(554u, func_2(29579u, Struct_2(global1.d.a, global1.d.b, vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x), Struct_1(vec2<f32>(global1.a.x, 670f), global1.c.b, global1.d.d.c, global1.c.d, vec4<f32>(global1.a.x, 694f, -221f, 780f))), 0i, Struct_4(vec3<f32>(global1.d.b.x, global1.c.c, 558f), global1.b, Struct_2(global1.d.a, global1.c.e, global1.d.c, global1.c)))), 29911u, var_2.x, ~func_2(var_2.x, global1.d, 24034i, Struct_4(global1.c.e.xwy, -245f, Struct_2(global1.d.a, global1.c.e, global1.d.c, Struct_1(global1.a, -1i, global1.b, global1.d.d.d, vec4<f32>(global1.b, global1.b, global1.c.e.x, 1000f))))))), global1.d);
    global0 = array<u32, 20>();
    var_0 = -1i;
    var var_3 = -select(u_input.a.x, firstTrailingBit(firstLeadingBit(-2147483647i)), global1.c.d);
    var var_4 = -(~(~(i32(-1i) * -2147483647i)) << (u_input.b.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -1000f));
}

