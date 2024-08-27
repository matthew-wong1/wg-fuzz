struct Struct_1 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
    d: vec4<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: array<Struct_1, 21>;

var<private> global2: array<f32, 25>;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_1() -> Struct_1 {
    var var_0 = vec2<bool>(true, true);
    let var_1 = _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(global2[_wgslsmith_index_u32(1u, 25u)], global2[_wgslsmith_index_u32(u_input.a, 25u)]), _wgslsmith_div_f32(272f, -912f)) + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(475f))))), global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(12115u, u_input.a, _wgslsmith_dot_vec3_u32(u_input.c, u_input.c), firstTrailingBit(1u)), min(select(vec4<u32>(u_input.a, u_input.c.x, u_input.b, u_input.c.x), vec4<u32>(u_input.c.x, 4294967295u, 4294967295u, u_input.c.x), var_0.x), _wgslsmith_mult_vec4_u32(vec4<u32>(12808u, u_input.c.x, u_input.b, 0u), vec4<u32>(57320u, 1u, 1u, u_input.b)))), 25u)], _wgslsmith_div_f32(242f, -182f)) * _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-global2[_wgslsmith_index_u32(18286u, 25u)]), global2[_wgslsmith_index_u32(u_input.b, 25u)], 1f), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(global2[_wgslsmith_index_u32(20805u, 25u)], 1035f, global2[_wgslsmith_index_u32(59670u, 25u)]), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-673f, 496f, global2[_wgslsmith_index_u32(83455u, 25u)]))))))));
    global2 = array<f32, 25>();
    var_0 = vec2<bool>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(873f, var_1.x))), var_1.x) <= _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1000f))))), !var_0.x);
    let var_2 = 1i;
    return Struct_1(vec4<u32>(~(reverseBits(1u) << ((u_input.c.x & u_input.c.x) % 32u)), ~u_input.b, 4294967295u, u_input.c.x));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>) -> vec4<u32> {
    return _wgslsmith_mult_vec4_u32(abs(max(arg_0.a, arg_0.a)), vec4<u32>(~arg_1.x, 69115u, ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(arg_0.a.x, u_input.b, 4294967295u), arg_0.a.yww), max(arg_1.x, arg_1.x)), _wgslsmith_mod_u32(firstLeadingBit(18354u), u_input.a) & u_input.a));
}

fn func_2() -> bool {
    var var_0 = global1[_wgslsmith_index_u32(85265u, 21u)];
    let var_1 = Struct_1(func_1().a);
    var var_2 = var_1.a.x;
    let var_3 = Struct_1(firstLeadingBit(func_3(func_1(), vec2<u32>(45922u, max(var_0.a.x, 2651u)))));
    return any(vec3<bool>(all(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), all(vec2<bool>(true, true)))), any(vec3<bool>(true, true, true)), global0.x >= u_input.d.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(firstLeadingBit(~1u), 25u)])) + global2[_wgslsmith_index_u32(~u_input.a, 25u)]);
    var var_1 = u_input.d.x;
    let var_2 = global1[_wgslsmith_index_u32(u_input.a, 21u)];
    var var_3 = func_1();
    let var_4 = global1[_wgslsmith_index_u32(countOneBits(~(~(~(~0u)))), 21u)];
    var var_5 = select(vec3<bool>(true, true, all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), vec3<bool>(false, true, false), true))), !(!vec3<bool>(func_2(), 2158f >= global2[_wgslsmith_index_u32(var_2.a.x, 25u)], true)), vec3<bool>(true, (~u_input.e.x ^ -u_input.d.x) > 0i, !select(all(vec4<bool>(true, false, true, true)), true, global0.x >= 1i)));
    global1 = array<Struct_1, 21>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(abs(var_3.a.x) ^ _wgslsmith_mod_u32(4294967295u, 36799u), select(4294967295u, u_input.a, !var_5.x), 40564u, _wgslsmith_mult_u32(var_2.a.x, 7813u)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(var_3.a, vec4<u32>(var_3.a.x, var_4.a.x, var_2.a.x, u_input.c.x)), 25u)])), _wgslsmith_f_op_f32(f32(-1f) * -1814f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-507f * _wgslsmith_f_op_f32(trunc(429f))), vec4<f32>(1079f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(var_2.a.x, 25u)] * global2[_wgslsmith_index_u32(0u, 25u)]), _wgslsmith_f_op_f32(f32(-1f) * -962f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(333f + 143f))), global2[_wgslsmith_index_u32(0u, 25u)]), ~vec2<i32>(u_input.e.x, ~max(0i, -7267i)));
}

