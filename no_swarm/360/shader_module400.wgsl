struct Struct_1 {
    a: bool,
    b: vec2<bool>,
    c: f32,
    d: u32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: vec4<f32>,
    c: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: bool,
    c: vec2<f32>,
    d: vec2<f32>,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<f32, 9>;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: i32, arg_2: vec4<f32>) -> vec3<f32> {
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(min(arg_2.wwz, vec3<f32>(652f, -1383f, -602f)))))))));
}

fn func_2() -> Struct_2 {
    var var_0 = !vec4<bool>(!(global1[_wgslsmith_index_u32(1u, 9u)] < 1127f), all(!select(vec3<bool>(global0.c.b.x, global0.c.b.x, false), vec3<bool>(false, global0.c.a, false), vec3<bool>(global0.c.b.x, true, global0.c.a))), true, false);
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(func_3(global1[_wgslsmith_index_u32(~1u, 9u)], ~(-2147483647i), vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 9u)], global0.a.x, global0.c.c, 1471f))) + _wgslsmith_f_op_vec3_f32(-global0.b.wzy)), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1060f))), -1375f, _wgslsmith_f_op_f32(floor(-334f))))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(global0.c.c))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.c.c - -1000f) - _wgslsmith_f_op_f32(max(706f, global1[_wgslsmith_index_u32(global0.c.e.x, 9u)]))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(431f, -299f))), global1[_wgslsmith_index_u32(9726u, 9u)])), Struct_1(select(global0.c.a, !global0.c.a, true), vec2<bool>(!var_0.x | true, u_input.a.x != 22443i), -645f, global0.c.e.x, global0.c.e));
    var var_1 = true;
    let var_2 = Struct_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(724f, _wgslsmith_f_op_f32(f32(-1f) * -903f), _wgslsmith_div_f32(-1021f, global0.a.x)) - global0.a)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(global0.c.e.x, 9u)]) * -513f), _wgslsmith_f_op_f32(f32(-1f) * -523f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(2537f, global1[_wgslsmith_index_u32(global0.c.d, 9u)]) - 912f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(536f * global1[_wgslsmith_index_u32(6621u, 9u)]) + 2116f)))), Struct_1(((u_input.a.x << (global0.c.e.x % 32u)) >= ~0i) && (~4294967295u <= (global0.c.d & 1u)), !select(var_0.yw, vec2<bool>(false, true), true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1383f + -699f)))), global0.c.d, vec2<u32>(~countOneBits(global0.c.e.x), ~abs(0u))));
    var var_3 = -1756f;
    return var_2;
}

fn func_1(arg_0: bool) -> vec2<f32> {
    global1 = array<f32, 9>();
    var var_0 = func_2();
    global1 = array<f32, 9>();
    global0 = Struct_2(_wgslsmith_f_op_vec3_f32(select(var_0.a, var_0.b.zzx, select(vec3<bool>(true, true, false), select(select(vec3<bool>(false, false, true), vec3<bool>(arg_0, true, true), vec3<bool>(arg_0, true, global0.c.b.x)), !vec3<bool>(var_0.c.b.x, global0.c.a, global0.c.b.x), true), !select(vec3<bool>(global0.c.a, false, false), vec3<bool>(true, false, false), false)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-func_2().a.x), -717f, 729f, _wgslsmith_div_f32(_wgslsmith_f_op_vec3_f32(func_3(1806f, u_input.a.x, global0.b)).x, func_2().b.x))), Struct_1(true, var_0.c.b, _wgslsmith_f_op_f32(trunc(-534f)), global0.c.d, _wgslsmith_div_vec2_u32(~vec2<u32>(4294967295u, var_0.c.e.x), abs(global0.c.e)) >> (vec2<u32>(global0.c.e.x & global0.c.d, global0.c.e.x) % vec2<u32>(32u))));
    let var_1 = Struct_2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1288f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(global0.b.x, global1[_wgslsmith_index_u32(4294967295u, 9u)])))), -113f) * vec3<f32>(_wgslsmith_f_op_f32(sign(var_0.c.c)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-855f)), _wgslsmith_f_op_f32(-var_0.c.c))), global1[_wgslsmith_index_u32(4294967295u, 9u)])), _wgslsmith_div_vec4_f32(var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.b.x, 660f, var_0.b.x, global1[_wgslsmith_index_u32(global0.c.d, 9u)])))))), global0.c);
    return _wgslsmith_f_op_vec3_f32(func_3(-991f, ~_wgslsmith_div_i32(~u_input.a.x, u_input.a.x), global0.b)).yz;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(global1[_wgslsmith_index_u32(1u, 9u)], global0.a.x, global0.a.x, -1643f) * _wgslsmith_f_op_vec4_f32(global0.b * vec4<f32>(global0.c.c, -592f, 1000f, global1[_wgslsmith_index_u32(global0.c.d, 9u)])))), _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-1000f, _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(global0.c.e.x, 9u)] - global1[_wgslsmith_index_u32(global0.c.d, 9u)]), -2279f, -791f)))), _wgslsmith_f_op_vec4_f32(-global0.b)));
    let var_1 = _wgslsmith_f_op_vec2_f32(func_1(true));
    var var_2 = 0u;
    var var_3 = Struct_3(firstTrailingBit(u_input.a.x), 84033u);
    let var_4 = ~vec2<u32>(abs(global0.c.d), 1u);
    global0 = func_2();
    let var_5 = select(all(select(vec3<bool>(global0.c.a, true, false), !vec3<bool>(global0.c.b.x, true, true), true)), global0.c.a, true && !func_2().c.a) | select(global0.c.b.x, global0.c.a, global0.c.a);
    var var_6 = -_wgslsmith_clamp_vec2_i32(-firstLeadingBit(vec2<i32>(u_input.a.x, 62509i)), abs(u_input.a.ww), ~(u_input.a.ww & vec2<i32>(59616i, 47557i)));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b, var_0.wyx, vec3<u32>(96161u, 18202u, ~func_2().c.d));
}

