struct Struct_1 {
    a: i32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: f32,
}

struct Struct_3 {
    a: bool,
    b: u32,
    c: i32,
    d: bool,
}

struct Struct_4 {
    a: u32,
    b: u32,
    c: vec2<i32>,
    d: vec4<f32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec3<u32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 3>;

var<private> global1: Struct_2 = Struct_2(Struct_1(-1i, vec4<i32>(-58459i, 1i, 1i, -8083i), vec3<i32>(-1i, i32(-2147483648), 0i), false, vec2<u32>(93127u, 4294967295u)), vec4<i32>(2147483647i, -5308i, -206i, -1i), -171f);

var<private> global2: array<bool, 15> = array<bool, 15>(true, true, false, false, false, false, false, true, false, true, true, true, true, false, false);

var<private> global3: i32;

var<private> global4: vec4<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: vec4<i32>, arg_1: i32, arg_2: i32) -> f32 {
    let var_0 = global0[_wgslsmith_index_u32(u_input.a.x, 3u)];
    let var_1 = _wgslsmith_f_op_f32(step(-418f, -120f));
    var var_2 = global4.xx;
    let var_3 = global1.a;
    let var_4 = global4.yx;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -652f), global1.c))));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_add_vec3_u32(u_input.a, global4.zzw);
    let var_1 = firstTrailingBit(90445u);
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1019f) * global1.c) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -469f), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-global1.c))))), -387f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3(vec4<i32>(global1.b.x, global1.a.c.x, global1.a.c.x, -1i) >> (vec4<u32>(57553u, 17656u, var_0.x, 74336u) % vec4<u32>(32u)), ~(-2147483647i), 2147483647i))))), -198f);
    global0 = array<bool, 3>();
    var var_3 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(step(var_2, var_2)), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global1.c, -868f, var_2.x, -1153f))), all(vec3<bool>(true, false, global1.a.d))))))));
    return ~((~abs(4294967295u) | var_0.x) >> (~19200u % 32u));
}

fn func_1(arg_0: Struct_3, arg_1: Struct_4, arg_2: i32) -> f32 {
    global4 = ~abs(vec4<u32>(global4.x, ~func_2(), 20320u, ~arg_0.b));
    let var_0 = vec4<bool>(~arg_1.b != _wgslsmith_mult_u32(select(0u << (arg_1.e.e.x % 32u), countOneBits(31607u), global1.a.d), reverseBits(reverseBits(global1.a.e.x))), true, !(-13601i > -firstTrailingBit(1i)), global1.a.d);
    return global1.c;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(global1.b.zxy);
    let var_1 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(407f * global1.c), _wgslsmith_f_op_f32(max(global1.c, global1.c)), global2[_wgslsmith_index_u32(~4294967295u, 15u)])), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(Struct_3(global2[_wgslsmith_index_u32(45836u, 15u)], global1.a.e.x, -8706i, false), Struct_4(1u, 77062u, vec2<i32>(var_0.x, -22084i), vec4<f32>(global1.c, 915f, global1.c, 1000f), Struct_1(-31359i, global1.a.b, vec3<i32>(-35781i, var_0.x, var_0.x), global1.a.d, vec2<u32>(85924u, 66896u))), -2316i)))) * _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-388f, 1000f), vec2<f32>(-317f, -932f))) - _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(164f, -536f))))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.c, _wgslsmith_f_op_f32(step(2485f, 185f)))) - _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(global1.c)), _wgslsmith_f_op_f32(abs(1359f))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(934f, -1432f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.a.c.yz, abs(u_input.a), -38684i);
}

