struct Struct_1 {
    a: f32,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: vec2<bool>,
    b: bool,
    c: vec2<u32>,
    d: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec3<f32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 19>;

var<private> global1: array<i32, 17>;

var<private> global2: vec4<bool> = vec4<bool>(true, false, false, true);

var<private> global3: bool;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: f32) -> f32 {
    global0 = array<vec4<u32>, 19>();
    return -807f;
}

fn func_2(arg_0: f32, arg_1: vec2<u32>, arg_2: u32, arg_3: i32) -> f32 {
    let var_0 = Struct_1(arg_0, reverseBits(0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_f32(trunc(154f)))) - arg_0)), !all(select(vec2<bool>(true, global2.x), global2.zw, arg_0 >= 749f)));
    let var_1 = ~(-firstTrailingBit(~_wgslsmith_clamp_vec4_i32(vec4<i32>(47611i, u_input.b, -2147483647i, 2147483647i), vec4<i32>(2582i, 2147483647i, -5921i, arg_3), vec4<i32>(1i, u_input.c, global1[_wgslsmith_index_u32(u_input.a, 17u)], -2147483647i))));
    global0 = array<vec4<u32>, 19>();
    global3 = all(select(vec3<bool>(all(!global2.yx), true, global2.x), select(vec3<bool>(global2.x, select(false, false, global2.x), true), global2.zwx, select(global2.zwy, select(vec3<bool>(false, global2.x, true), global2.zyz, global2.x), true)), var_0.d));
    global1 = array<i32, 17>();
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-815f * _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(1371f)), 418f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(1265f, 336f)), _wgslsmith_f_op_f32(f32(-1f) * -401f)))))));
}

fn func_1(arg_0: vec4<bool>, arg_1: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-661f - _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(func_2(419f, arg_1.c, u_input.a, global1[_wgslsmith_index_u32(u_input.a, 17u)])))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(-338f, _wgslsmith_f_op_f32(f32(-1f) * -598f))), _wgslsmith_f_op_f32(-473f * _wgslsmith_f_op_f32(-435f - 490f)))) * 676f));
    global1 = array<i32, 17>();
    global1 = array<i32, 17>();
    let var_1 = 782f;
    var var_2 = Struct_1(_wgslsmith_div_f32(-371f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(var_1, arg_1.c, 13632u, u_input.b)))) + 232f)), global1[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.a, firstLeadingBit(66561u)) | _wgslsmith_add_u32(0u, ~arg_1.d), 17u)] << (_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(~arg_1.c, arg_1.c), abs(select(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a), false))) % 32u), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -707f) - _wgslsmith_f_op_f32(-var_1)))), false);
    return true;
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(1000f * 1967f), 475f)))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-891f * -667f) + _wgslsmith_f_op_f32(f32(-1f) * -1602f)) - _wgslsmith_f_op_f32(-848f + _wgslsmith_f_op_f32(floor(-790f)))) - _wgslsmith_f_op_f32(f32(-1f) * -998f)));
    return Struct_1(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -741f) - _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(var_0 + -1000f), arg_0.c, 0u, max(1i, -49763i)))) + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-var_0)))))), abs(u_input.c), _wgslsmith_div_f32(318f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(var_0, var_0)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)))), !any(select(vec2<bool>(false, false), vec2<bool>(global2.x, false), true)) != (_wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(trunc(-1464f))) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0)) + -2010f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -u_input.c;
    let var_1 = func_4(Struct_2(!global2.xz, !any(select(vec4<bool>(global2.x, global2.x, global2.x, false), vec4<bool>(global2.x, false, true, global2.x), true)), select(_wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, 4294967295u)), firstLeadingBit(vec2<u32>(0u, 0u))), ~vec2<u32>(9563u, u_input.a) ^ _wgslsmith_mod_vec2_u32(vec2<u32>(100518u, 0u), vec2<u32>(u_input.a, u_input.a)), func_1(!vec4<bool>(false, true, true, global2.x), Struct_2(global2.yw, false, vec2<u32>(43637u, 1u), u_input.a))), u_input.a));
    global3 = true;
    global1 = array<i32, 17>();
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1879f, var_1.a))), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a, 1650f), vec2<f32>(var_1.a, var_1.a), vec2<bool>(true, false)))))))));
    global2 = select(vec4<bool>(select(countOneBits(u_input.a) != countOneBits(u_input.a), global2.x, all(vec4<bool>(global2.x, false, global2.x, false)) || func_4(Struct_2(global2.zw, global2.x, vec2<u32>(u_input.a, 0u), 1u)).d), false, global2.x, false), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false));
    global3 = true & global2.x;
    let x = u_input.a;
    s_output = StorageBuffer(-((var_1.b << (16466u % 32u)) & ((global1[_wgslsmith_index_u32(u_input.a, 17u)] & -24732i) & _wgslsmith_mult_i32(var_0, 1571i))), abs(_wgslsmith_div_i32(-1i, ~(-u_input.c))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(-373f)), -1825f) + 816f), _wgslsmith_f_op_f32(var_1.a * _wgslsmith_f_op_f32(func_2(694f, vec2<u32>(0u, 0u) << (vec2<u32>(u_input.a, 0u) % vec2<u32>(32u)), firstTrailingBit(u_input.a), -var_0))), _wgslsmith_f_op_f32(sign(-1264f))), vec4<i32>(min(-1i, 1i), firstTrailingBit(0i), u_input.c, reverseBits(~global1[_wgslsmith_index_u32(39923u, 17u)]) | (0i >> (~u_input.a % 32u))), 108f);
}

