struct Struct_1 {
    a: bool,
    b: f32,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
    d: f32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true, 716f);

var<private> global1: array<u32, 1>;

var<private> global2: array<Struct_1, 12>;

var<private> global3: vec3<bool> = vec3<bool>(true, true, true);

var<private> global4: array<f32, 22>;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: f32, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec2<bool>) -> u32 {
    let var_0 = global1[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(37562u, 1u), _wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(max(0u, global1[_wgslsmith_index_u32(4590u, 1u)]), 1u)], 9296u, 70903u)), 1u)];
    let var_1 = arg_2;
    global4 = array<f32, 22>();
    global4 = array<f32, 22>();
    return global1[_wgslsmith_index_u32(~(4294967295u >> (~firstTrailingBit(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(1u, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], 1u), 1u)], 1u)]) % 32u)), 1u)];
}

fn func_4(arg_0: u32) -> u32 {
    var var_0 = vec2<u32>(~global1[_wgslsmith_index_u32(~arg_0, 1u)], 4294967295u);
    let var_1 = global2[_wgslsmith_index_u32(arg_0, 12u)];
    global0 = Struct_1((u_input.b > ~u_input.c.x) && all(global3.zz), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-748f)) - global4[_wgslsmith_index_u32(arg_0, 22u)]) + _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(var_1.b)), _wgslsmith_f_op_f32(f32(-1f) * -239f), true)))));
    var var_2 = Struct_1(global3.x, -1068f);
    global1 = array<u32, 1>();
    return firstTrailingBit(arg_0);
}

fn func_2(arg_0: f32, arg_1: f32, arg_2: vec2<i32>) -> f32 {
    global4 = array<f32, 22>();
    var var_0 = -522f;
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(~21546u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(_wgslsmith_sub_u32(4798u, global1[_wgslsmith_index_u32(56851u, 1u)]), 1u)], 1u)]), 2442u | global1[_wgslsmith_index_u32(0u, 1u)]), 1u)], _wgslsmith_div_u32(~_wgslsmith_clamp_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(0u, 1u)], 7097u), (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(33802u, 1u)], 1u)] >> (33029u % 32u)) >> (64u % 32u)), 38336u), vec3<u32>(~abs(0u), global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(9754u, 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(3059u, 1u)], 1u)], 45951u, 59995u), vec4<u32>(32498u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(13086u, 1u)], 1u)], 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(66282u, 1u)], 1u)]) & vec4<u32>(global1[_wgslsmith_index_u32(8324u, 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], 27103u)), 1u)], 1u)], func_4(func_3(-1000f, global2[_wgslsmith_index_u32(13673u, 12u)], global2[_wgslsmith_index_u32(1u, 12u)], vec2<bool>(true, false))) << (global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)] ^ max(1u, 4294967295u), 1u)] % 32u)));
    var var_2 = any(!(!vec3<bool>(global0.a, global3.x, false))) || true;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_1.x, 22u)] * 1166f) * global0.b))))));
}

fn func_1(arg_0: Struct_1, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    global2 = array<Struct_1, 12>();
    let var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global4[_wgslsmith_index_u32(_wgslsmith_sub_u32(2540u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)]), 22u)], arg_0.b) + _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1727f, 822f), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.b, arg_0.b)), vec2<bool>(true, global3.x)))) - vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(func_2(-506f, -445f, u_input.c)), _wgslsmith_f_op_f32(abs(arg_2.b)), global0.a & global0.a)), 860f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.b, global0.b))));
    var var_1 = ~(-u_input.c.x);
    var var_2 = arg_0;
    global1 = array<u32, 1>();
    return var_0;
}

fn func_5(arg_0: vec2<f32>, arg_1: f32, arg_2: u32) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(arg_2, 22u)]), _wgslsmith_f_op_f32(-769f - 224f), _wgslsmith_f_op_f32(ceil(1016f)), arg_1))));
    global2 = array<Struct_1, 12>();
    global0 = Struct_1(!any(vec2<bool>(!global3.x, any(vec4<bool>(false, true, true, true)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1443f, _wgslsmith_f_op_f32(trunc(540f))))) * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_f_op_f32(f32(-1f) * -283f)), _wgslsmith_f_op_vec2_f32(func_1(Struct_1(global0.a, -1230f), select(false, global3.x, true), global2[_wgslsmith_index_u32(41419u, 12u)])).x, any(vec3<bool>(global0.a, global3.x, false)) || global3.x))));
    let var_1 = vec2<bool>(false, !global3.x);
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.b, arg_1) + _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(arg_2, 22u)] * _wgslsmith_f_op_f32(-arg_1)), _wgslsmith_f_op_f32(f32(-1f) * -923f)))));
    return Struct_1(!var_1.x, _wgslsmith_f_op_f32(310f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(var_0.x + var_2.x))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(global2[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(25884u, 1u)], 12u)], global0.a, global2[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)], 1u)] ^ 1u, 1u)], 12u)])) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-801f, global0.b) * vec2<f32>(global0.b, 1830f)) * vec2<f32>(global0.b, -624f)))), 156f, _wgslsmith_div_u32(1u, _wgslsmith_mult_u32(_wgslsmith_add_u32(45291u, global1[_wgslsmith_index_u32(_wgslsmith_clamp_u32(1u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(0u, 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)]), 1u)]), ~1222u)));
    var var_1 = _wgslsmith_clamp_vec2_u32(firstTrailingBit(vec2<u32>(39835u, 32369u)), _wgslsmith_sub_vec2_u32(select(select(~vec2<u32>(4294967295u, 12614u), ~vec2<u32>(4294967295u, 41288u), u_input.b != -14640i), select(select(vec2<u32>(1u, 1217u), vec2<u32>(global1[_wgslsmith_index_u32(0u, 1u)], 5611u), global3.xx), abs(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(34675u, 1u)], 1u)], 4294967295u)), select(global3.yx, vec2<bool>(global3.x, true), var_0.a)), all(global3.zy)), vec2<u32>(_wgslsmith_sub_u32(max(73251u, 1u), global1[_wgslsmith_index_u32(1u, 1u)]), _wgslsmith_mod_u32(global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(25123u, 1u)], 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)], 1u)]))), vec2<u32>(_wgslsmith_mod_u32(_wgslsmith_sub_u32(~global1[_wgslsmith_index_u32(12588u, 1u)], _wgslsmith_dot_vec2_u32(vec2<u32>(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1u)], 1u)], 1u)], 1u)], global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(1u, 1u)], 1u)]), vec2<u32>(46465u, 4294967295u))), ~(~global1[_wgslsmith_index_u32(4294967295u, 1u)])), 1u));
    var var_2 = func_5(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b, -443f))))) + _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1073f, -148f)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-1460f, -1647f))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1441f, 224f) * _wgslsmith_div_vec2_f32(vec2<f32>(global0.b, global0.b), vec2<f32>(var_0.b, 413f))))))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(291f)) * _wgslsmith_f_op_f32(ceil(global4[_wgslsmith_index_u32(0u, 22u)]))), global4[_wgslsmith_index_u32(0u, 22u)])), abs(global1[_wgslsmith_index_u32(~var_1.x, 1u)]));
    let var_3 = vec4<bool>(true, any(!vec2<bool>(!global3.x, any(vec4<bool>(var_2.a, var_2.a, false, var_2.a)))), -1000f >= _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(var_1.x, 22u)] * -783f))), (var_0.b < 1000f) && true);
    let var_4 = countOneBits(countOneBits(~vec3<u32>(~global1[_wgslsmith_index_u32(11969u, 1u)], 1u, global1[_wgslsmith_index_u32(var_1.x, 1u)])));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(var_1.x, 1u)], 22u)])))), _wgslsmith_f_op_f32(-578f * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1233f, var_2.b))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(var_2.b)))), _wgslsmith_f_op_f32(-1000f - var_0.b))), 486f), 0i, _wgslsmith_f_op_vec4_f32(step(vec4<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(var_0.b, global0.b), var_0.b)), _wgslsmith_f_op_f32(-global0.b), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(var_2.b * var_2.b), -2169f)), _wgslsmith_f_op_f32(global0.b * _wgslsmith_div_f32(498f, var_2.b))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(847f, 1596f, var_2.b, var_0.b))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, -456f, -1000f, global4[_wgslsmith_index_u32(var_4.x, 22u)])))) - vec4<f32>(_wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(f32(-1f) * -1598f), -876f, -323f)))), 2252f, _wgslsmith_f_op_f32(abs(global4[_wgslsmith_index_u32(1u, 22u)])));
}

