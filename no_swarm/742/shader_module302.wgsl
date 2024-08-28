struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_2,
    c: Struct_1,
    d: vec4<i32>,
}

struct Struct_4 {
    a: Struct_3,
    b: vec4<f32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<f32, 18> = array<f32, 18>(779f, -326f, 1189f, 742f, -1071f, 277f, -599f, -570f, -669f, -518f, -711f, -300f, 980f, -482f, 158f, 947f, -1392f, -898f);

var<private> global1: i32;

var<private> global2: array<Struct_1, 21>;

var<private> global3: vec4<i32>;

var<private> global4: Struct_5;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_2(arg_0: i32, arg_1: vec3<f32>) -> u32 {
    global1 = max(i32(-1i) * -2147483647i, u_input.a);
    var var_0 = 0u & ~u_input.c;
    let var_1 = ((!all(vec3<bool>(true, false, true)) || all(vec3<bool>(true, true, true))) && true) || true;
    return global4.a;
}

fn func_3(arg_0: Struct_2, arg_1: vec4<i32>) -> f32 {
    let var_0 = arg_1.xyz;
    let var_1 = ~u_input.b.wxw;
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1009f)) + global0[_wgslsmith_index_u32(arg_0.a, 18u)]);
    global4 = Struct_5(4294967295u, Struct_2(u_input.b.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(var_2, _wgslsmith_f_op_f32(ceil(global0[_wgslsmith_index_u32(u_input.b.x, 18u)]))))));
    global1 = var_0.x;
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) + _wgslsmith_f_op_f32(682f * -1792f)) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(60120u, 18u)]), _wgslsmith_div_f32(arg_0.b, -134f))))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global4.b.b)), -737f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.b) - _wgslsmith_f_op_f32(global0[_wgslsmith_index_u32(65145u, 18u)] - global4.b.b)))));
}

fn func_1() -> u32 {
    let var_0 = abs(~vec2<i32>(-17875i, -u_input.a) & vec2<i32>(-68850i, global3.x));
    let var_1 = min(firstLeadingBit(~3483u), global4.b.a);
    let var_2 = vec2<u32>(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(~1u ^ global4.a, max(4294967295u, 1u) >> (~4294967295u % 32u), func_2(var_0.x, vec3<f32>(2214f, 345f, global0[_wgslsmith_index_u32(0u, 18u)])), ~0u), u_input.b));
    var var_3 = ~vec4<i32>(var_0.x & global3.x, 2147483647i, _wgslsmith_mod_i32(61108i, 2245i), _wgslsmith_add_i32(global3.x, -20372i)) ^ -abs(~(-vec4<i32>(1i, u_input.a, 1i, u_input.a)));
    var var_4 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(-1211f)))))), _wgslsmith_f_op_f32(func_3(Struct_2(10994u, _wgslsmith_f_op_f32(f32(-1f) * -1127f)), ~vec4<i32>(u_input.a, ~global3.x, -u_input.a, ~global3.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1424f))));
    return _wgslsmith_mult_u32(~(func_2(2147483647i, vec3<f32>(global4.b.b, -133f, global0[_wgslsmith_index_u32(4294967295u, 18u)])) >> ((~u_input.b.x | global4.a) % 32u)), var_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<f32, 18>();
    global1 = u_input.a << (func_1() % 32u);
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-950f + 1154f) + 1000f), _wgslsmith_f_op_f32(-global0[_wgslsmith_index_u32(~66661u, 18u)])))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(global0[_wgslsmith_index_u32(~reverseBits(u_input.b.x), 18u)], 563f))), vec3<u32>(4294967295u, global4.a, 1u));
}

