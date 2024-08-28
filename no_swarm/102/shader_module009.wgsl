struct Struct_1 {
    a: vec2<f32>,
    b: vec3<bool>,
    c: f32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_1,
    b: vec2<u32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 14>;

var<private> global1: vec2<f32> = vec2<f32>(611f, 635f);

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>, arg_3: Struct_3) -> f32 {
    let var_0 = true;
    var var_1 = arg_0;
    var_1 = Struct_2(_wgslsmith_dot_vec2_u32(vec2<u32>(arg_1, abs(arg_0.a)), ~select(~arg_3.b, ~arg_3.b, select(arg_3.a.b.yz, arg_3.a.b.zy, false))));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(arg_3.a.c))))));
}

fn func_2(arg_0: Struct_2, arg_1: bool, arg_2: Struct_1) -> vec2<f32> {
    global0 = array<Struct_3, 14>();
    let var_0 = arg_2.b.x;
    global0 = array<Struct_3, 14>();
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_2(arg_0.a), _wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0.a, arg_0.a, 23394u), vec4<u32>(arg_0.a, arg_0.a, arg_0.a, arg_0.a)), ~u_input.c.zz, global0[_wgslsmith_index_u32(4528u, 14u)])), _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1363f, global1.x) * _wgslsmith_f_op_f32(func_3(Struct_2(18273u), 0u, vec2<i32>(u_input.a.x, -1i), global0[_wgslsmith_index_u32(arg_0.a, 14u)]))))));
    global0 = array<Struct_3, 14>();
    return _wgslsmith_f_op_vec2_f32(arg_2.a - arg_2.a);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec4<f32>) -> Struct_2 {
    var var_0 = _wgslsmith_div_f32(arg_0.x, -801f);
    global1 = _wgslsmith_f_op_vec2_f32(select(arg_1.zy, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_2(18305u), false, Struct_1(vec2<f32>(-561f, 1888f), vec3<bool>(false, true, true), 936f))) * arg_0.xz)), select(!vec2<bool>(true, any(vec4<bool>(false, false, false, false))), select(vec2<bool>(true, any(vec2<bool>(true, false))), select(select(vec2<bool>(false, true), vec2<bool>(false, false), false), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false)), vec2<bool>(false, false)), select(select(vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true)), select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), true)), vec2<bool>(true, false))));
    var var_1 = min(vec3<i32>(u_input.b, _wgslsmith_add_i32(-29652i, u_input.c.x), u_input.c.x), -_wgslsmith_mult_vec3_i32(min(vec3<i32>(u_input.a.x, u_input.b, -2147483647i), vec3<i32>(u_input.a.x, u_input.c.x, 1i)) & ~vec3<i32>(-2528i, u_input.b, u_input.c.x), ~_wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.b, u_input.b, 32325i), u_input.c, u_input.c)));
    return Struct_2(1u);
}

fn func_4(arg_0: Struct_2, arg_1: bool, arg_2: i32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(arg_0, arg_0.a == select(arg_0.a, arg_0.a, false), Struct_1(_wgslsmith_f_op_vec2_f32(vec2<f32>(1079f, -603f) - vec2<f32>(global1.x, global1.x)), vec3<bool>(true, arg_1, false), 322f))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(321f, -388f))))), vec3<bool>(-805f == _wgslsmith_div_f32(-1198f, _wgslsmith_f_op_f32(ceil(1378f))), !any(!vec4<bool>(arg_1, true, arg_1, arg_1)), any(vec4<bool>(arg_1, true, arg_1, false)) || !(!arg_1)), global1.x);
    let var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(exp2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-264f, global1.x)))), vec2<f32>(var_0.a.x, _wgslsmith_f_op_f32(ceil(-377f))))), var_0.a)), var_0.b, 1175f);
    let var_2 = arg_2;
    var var_3 = func_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(492f * var_1.c))), -1109f, var_1.c)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(1164f, -748f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_1.c + _wgslsmith_f_op_f32(floor(-1566f))) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(631f, 324f) * _wgslsmith_f_op_f32(664f + -1537f))), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-296f + var_1.a.x), var_0.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(arg_0, arg_0.a, u_input.a.zz, global0[_wgslsmith_index_u32(4294967295u, 14u)])))), global1.x));
    global0 = array<Struct_3, 14>();
    return _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-var_1.c), 1440f)) + _wgslsmith_f_op_f32(func_3(func_1(_wgslsmith_div_vec4_f32(vec4<f32>(global1.x, 1075f, var_1.a.x, global1.x), vec4<f32>(var_1.c, -828f, var_0.c, var_0.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(2216f, var_1.c, 735f, 547f))), reverseBits(0u), u_input.c.yz, global0[_wgslsmith_index_u32(~(~arg_0.a), 14u)]))), _wgslsmith_f_op_f32(var_0.c + _wgslsmith_f_op_vec2_f32(func_2(arg_0, true, Struct_1(vec2<f32>(-643f, global1.x), select(vec3<bool>(false, arg_1, var_1.b.x), vec3<bool>(var_1.b.x, var_1.b.x, true), false), _wgslsmith_f_op_f32(f32(-1f) * -547f)))).x)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = vec2<f32>(627f, global1.x);
    global1 = vec2<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.x * _wgslsmith_f_op_f32(-global1.x)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(abs(global1.x)), _wgslsmith_f_op_f32(-global1.x)))), _wgslsmith_f_op_f32(func_4(func_1(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.x, global1.x, -626f, 210f))), vec4<f32>(global1.x, global1.x, global1.x, 850f)), !any(vec3<bool>(true, true, true)), _wgslsmith_add_i32(1i, ~0i))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global1.x * global1.x)))) * _wgslsmith_f_op_f32(-global1.x)));
    var var_0 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_div_u32(~(~firstTrailingBit(0u)), reverseBits(49144u)), firstTrailingBit(4294967295u)), 14u)];
    global1 = var_0.a.a;
    var_0 = global0[_wgslsmith_index_u32(~30501u, 14u)];
    let var_1 = -7517i;
    global1 = _wgslsmith_f_op_vec2_f32(max(var_0.a.a, _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-194f * global1.x))), 640f))));
    global0 = array<Struct_3, 14>();
    let x = u_input.a;
    s_output = StorageBuffer(~var_0.b, reverseBits(var_0.d));
}

