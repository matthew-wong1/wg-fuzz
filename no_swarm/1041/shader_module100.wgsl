struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec4<u32>,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 22>;

var<private> global1: array<vec2<i32>, 9>;

var<private> global2: f32 = 586f;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>) -> Struct_1 {
    let var_0 = global0[_wgslsmith_index_u32(arg_1.x | _wgslsmith_div_u32(arg_1.x, ~0u), 22u)];
    let var_1 = ~(~firstTrailingBit(abs(arg_1.x)) << (arg_1.x % 32u));
    var var_2 = Struct_1(-1052f);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -1444f);
    let var_3 = _wgslsmith_f_op_f32(select(-1000f, 462f, true));
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: vec4<bool>, arg_2: Struct_1) -> f32 {
    global2 = arg_0.a;
    global1 = array<vec2<i32>, 9>();
    global0 = array<Struct_1, 22>();
    global0 = array<Struct_1, 22>();
    let var_0 = _wgslsmith_f_op_f32(step(154f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_2.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(arg_0.a)))))));
    return var_0;
}

fn func_4(arg_0: f32, arg_1: vec2<i32>, arg_2: u32, arg_3: i32) -> vec3<f32> {
    let var_0 = u_input.a;
    let var_1 = Struct_1(183f);
    let var_2 = func_2(func_2(global0[_wgslsmith_index_u32(u_input.a, 22u)], min(vec3<u32>(0u, arg_2, 0u), min(vec3<u32>(arg_2, 38537u, 27512u), u_input.d.wxz)) & select(select(u_input.d.xwz, u_input.d.yyz, vec3<bool>(true, true, true)), firstLeadingBit(u_input.d.wzz), true)), _wgslsmith_mult_vec3_u32(~vec3<u32>(~arg_2, 32791u, 4294967295u), u_input.d.wzw));
    global2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -687f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_2.a, _wgslsmith_div_f32(-986f, -355f)))), var_2.a, false)));
    global1 = array<vec2<i32>, 9>();
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(vec3<f32>(735f, 1969f, 584f) + vec3<f32>(var_1.a, var_1.a, var_1.a)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-379f, var_2.a, var_1.a) - vec3<f32>(-704f, 886f, var_2.a))))) * _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(215f, var_1.a, 226f), vec3<f32>(var_1.a, -984f, 508f)), _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(var_2.a, var_2.a, var_2.a))), true))))));
}

fn func_1(arg_0: bool, arg_1: Struct_1) -> f32 {
    global0 = array<Struct_1, 22>();
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(global0[_wgslsmith_index_u32(firstLeadingBit(1u), 22u)], !vec4<bool>(arg_0, arg_0, arg_0, true), func_2(arg_1, u_input.d.zwx))) - _wgslsmith_f_op_f32(select(func_2(arg_1, u_input.d.wwy).a, arg_1.a, false))), firstLeadingBit(-(global1[_wgslsmith_index_u32(u_input.d.x, 9u)] ^ global1[_wgslsmith_index_u32(1u, 9u)])), _wgslsmith_clamp_u32(~(~4294967295u), ~18254u, 0u), firstLeadingBit(0i))));
    global2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(889f)), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-576f))))))));
    let var_1 = arg_1;
    let var_2 = global0[_wgslsmith_index_u32(1u, 22u)];
    return _wgslsmith_f_op_f32(f32(-1f) * -1079f);
}

fn func_5(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1) -> Struct_1 {
    let var_0 = abs(~(u_input.d.zx ^ u_input.d.ww));
    global1 = array<vec2<i32>, 9>();
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -177f);
    var var_1 = arg_1;
    let var_2 = -_wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(74072i, firstTrailingBit(u_input.b.x)), 12181i), global1[_wgslsmith_index_u32(u_input.a, 9u)]);
    return func_2(func_2(func_2(func_2(func_2(Struct_1(arg_2.a), vec3<u32>(u_input.d.x, 4294967295u, u_input.e.x)), abs(vec3<u32>(u_input.d.x, 42514u, 4294967295u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.d.x, 1u, 4294967295u), _wgslsmith_sub_vec3_u32(vec3<u32>(var_0.x, u_input.a, var_0.x), vec3<u32>(u_input.d.x, u_input.a, var_0.x)))), u_input.d.www), reverseBits(firstLeadingBit(~vec3<u32>(u_input.d.x, u_input.a, u_input.e.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -553f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(trunc(434f)))), _wgslsmith_f_op_f32(func_1(true, Struct_1(606f))))), func_2(global0[_wgslsmith_index_u32(u_input.a, 22u)], firstTrailingBit(abs(~u_input.d.wyz))), global0[_wgslsmith_index_u32(~(u_input.a ^ ~(~u_input.a)), 22u)]);
    let var_1 = vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_0.a, var_0.a)) - _wgslsmith_f_op_f32(select(var_0.a, -734f, true)))))), -1166f, var_0.a);
    global2 = _wgslsmith_f_op_f32(-532f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(func_2(global0[_wgslsmith_index_u32(4294967295u, 22u)], u_input.d.yww), vec4<bool>(true, true, true, true), global0[_wgslsmith_index_u32(4294967295u, 22u)])) + _wgslsmith_div_f32(1245f, _wgslsmith_f_op_f32(f32(-1f) * -510f)))));
    let var_2 = u_input.b.x;
    global1 = array<vec2<i32>, 9>();
    var var_3 = Struct_1(1229f);
    global0 = array<Struct_1, 22>();
    let var_4 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-398f)) * _wgslsmith_f_op_f32(round(-960f))), var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(_wgslsmith_f_op_f32(-var_4.a), var_0.a, _wgslsmith_f_op_f32(trunc(-320f))), vec3<f32>(-1091f, var_3.a, var_0.a))), var_2);
}

