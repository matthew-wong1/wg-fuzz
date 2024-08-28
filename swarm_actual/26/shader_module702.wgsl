struct Struct_1 {
    a: f32,
    b: vec4<f32>,
    c: i32,
    d: vec4<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 3>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: u32, arg_1: Struct_1) -> f32 {
    let var_0 = Struct_1(1177f, vec4<f32>(_wgslsmith_div_f32(arg_1.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_1.a + 414f), arg_1.b.x)), -274f, arg_1.a, -633f), u_input.a.x, vec4<u32>(~arg_0, ~27891u, 61484u, _wgslsmith_clamp_u32(~17692u, 1u, arg_0)), any(vec3<bool>(all(vec2<bool>(arg_1.e, false)), !(arg_1.e && false), true)));
    let var_1 = Struct_1(var_0.a, arg_1.b, u_input.a.x, reverseBits(~_wgslsmith_sub_vec4_u32(vec4<u32>(var_0.d.x, 34622u, 0u, 1u), vec4<u32>(4294967295u, arg_1.d.x, 14191u, 19013u))), false);
    var var_2 = -u_input.a.xx;
    let var_3 = u_input.a.xwz;
    var var_4 = select(var_0.c, var_2.x, var_1.e);
    return _wgslsmith_f_op_f32(f32(-1f) * -975f);
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(532f, _wgslsmith_f_op_vec4_f32(vec4<f32>(1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -966f)), _wgslsmith_f_op_f32(func_3(firstTrailingBit(4294967295u), Struct_1(-527f, vec4<f32>(-1399f, 940f, 1443f, -320f), 2669i, vec4<u32>(16031u, 62798u, 4294967295u, 0u), true))), 716f) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1f, 1f, 1f, 1f)))), ~reverseBits(u_input.a.x), ~select(~(~global0[_wgslsmith_index_u32(4294967295u, 3u)]), vec4<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(61933u, 3989u), vec2<u32>(4294967295u, 46783u)), _wgslsmith_clamp_u32(0u, 61091u, 37101u), 4294967295u, ~56217u), false), (~(u_input.a.x << (1u % 32u)) < u_input.a.x) | true);
    var var_1 = Struct_1(var_0.b.x, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(var_0.b)) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.a, -1000f, -1264f, -962f)) * _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.b.x, var_0.a, var_0.a, 1000f)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.b + var_0.b) * vec4<f32>(-1274f, var_0.a, var_0.a, var_0.b.x)))), abs(-_wgslsmith_div_i32(~u_input.a.x, var_0.c)), vec4<u32>(~0u, select(4294967295u, ~(~19651u), var_0.e), ~countOneBits(~var_0.d.x), 1u), false);
    let var_2 = var_0.b.xy;
    var var_3 = ~var_1.d.yxy;
    let var_4 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(-2118f)))))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(var_1.b.x, -1646f)) - var_0.a) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(var_1.a - var_1.a)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) + 1659f), _wgslsmith_div_f32(var_1.a, _wgslsmith_div_f32(439f, _wgslsmith_f_op_f32(round(-1522f)))), var_0.b.x), -_wgslsmith_dot_vec4_i32(select(vec4<i32>(var_1.c, var_0.c, 14733i, u_input.a.x), u_input.a, true), -u_input.a) >> (reverseBits(var_3.x) % 32u), var_1.d, var_1.e);
    return var_4;
}

fn func_1(arg_0: vec2<f32>) -> vec2<u32> {
    let var_0 = func_2();
    var var_1 = func_2();
    let var_2 = !(!vec3<bool>(var_0.e && true, var_1.e, all(vec2<bool>(var_1.e, var_1.e))));
    var_1 = var_0;
    global0 = array<vec4<u32>, 3>();
    return var_0.d.zy;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~(~_wgslsmith_mult_u32(1u, min(1u, 1u)));
    var var_1 = ~_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), _wgslsmith_add_vec2_u32(func_1(vec2<f32>(1150f, -665f)), func_2().d.xx)), ~firstTrailingBit(select(vec2<u32>(39073u, 50661u), vec2<u32>(65637u, 0u), vec2<bool>(true, true))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_dot_vec2_i32(select(vec2<i32>(min(u_input.a.x, u_input.a.x), min(u_input.a.x, 37359i)), -reverseBits(u_input.a.wy), vec2<bool>(true, any(vec4<bool>(true, true, true, true)))), u_input.a.wz));
}

