struct Struct_1 {
    a: i32,
    b: vec4<f32>,
    c: vec2<i32>,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: array<f32, 31>;

var<private> global2: Struct_1 = Struct_1(8199i, vec4<f32>(1201f, -1423f, -115f, 1000f), vec2<i32>(i32(-2147483648), -917i), 979f);

var<private> global3: vec2<bool>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: vec3<u32>, arg_1: bool, arg_2: vec4<f32>, arg_3: Struct_1) -> f32 {
    var var_0 = !vec3<bool>(global3.x, 362f < _wgslsmith_f_op_f32(arg_2.x + -985f), arg_1);
    var_0 = !select(vec3<bool>(arg_1, arg_1, true), !(!vec3<bool>(true, true, global3.x)), var_0.x);
    let var_1 = true;
    global3 = !var_0.yz;
    let var_2 = 400f;
    return _wgslsmith_f_op_f32(139f * -461f);
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: bool, arg_3: Struct_1) -> f32 {
    let var_0 = vec2<bool>(!(any(vec4<bool>(arg_2, true, arg_2, arg_2)) | ((u_input.b << (u_input.b % 32u)) >= u_input.b)), all(select(select(!vec4<bool>(true, false, arg_2, arg_2), vec4<bool>(true, true, true, true), any(vec2<bool>(true, arg_2))), !vec4<bool>(arg_2, true, arg_2, false), !vec4<bool>(global3.x, arg_2, arg_2, global3.x))));
    var var_1 = _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(726f, -105f)))), _wgslsmith_f_op_f32(549f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1035f, global1[_wgslsmith_index_u32(1u, 31u)])) + _wgslsmith_f_op_f32(-arg_1.b.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(vec3<u32>(u_input.b, arg_0, u_input.b), !global3.x, arg_1.b, Struct_1(-37622i, arg_1.b, vec2<i32>(-2147483647i, global2.a), global2.d))) - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global2.b.x, -1000f) + -343f)))));
    global2 = arg_1;
    let var_2 = !select(!vec3<bool>(true, false, var_0.x), !(!vec3<bool>(var_0.x, false, global3.x)), vec3<bool>(true, false, all(vec4<bool>(var_0.x, false, var_0.x, false)) && false));
    let var_3 = global2.a;
    return _wgslsmith_f_op_f32(f32(-1f) * -1289f);
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec2<bool>) -> vec2<u32> {
    var var_0 = -884f;
    var var_1 = vec3<f32>(arg_1.d, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_1.b.x, -714f)) + _wgslsmith_f_op_f32(-global2.d))), _wgslsmith_div_f32(-1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.d)) * -264f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(1u, Struct_1(-33173i, _wgslsmith_f_op_vec4_f32(-arg_1.b), select(vec2<i32>(global2.a, -47488i), global2.c, vec2<bool>(global3.x, false)), _wgslsmith_f_op_f32(floor(-574f))), true, arg_1)) * _wgslsmith_f_op_f32(1236f * _wgslsmith_f_op_f32(min(-797f, 551f)))));
    global3 = !(!vec2<bool>(all(!vec2<bool>(global3.x, arg_2.x)), global3.x));
    let var_2 = _wgslsmith_f_op_f32(func_2(~(~_wgslsmith_clamp_vec3_u32(abs(vec3<u32>(35772u, 70966u, u_input.b)), ~vec3<u32>(u_input.b, u_input.a, u_input.a), max(vec3<u32>(35365u, u_input.a, 48059u), vec3<u32>(u_input.b, 32477u, u_input.a)))), false, _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.b.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(243f - 647f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.d * 1528f)), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(63046u, 31u)] + 125f)) * global2.b), arg_1));
    var var_3 = var_2;
    return vec2<u32>(65638u, ~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 42860u), vec2<u32>(min(32504u, u_input.a), u_input.a | u_input.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global2.b.zw;
    var var_1 = ~16513i << (select(min(u_input.a, 4294967295u), u_input.b, global3.x) % 32u);
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.b, 31u)] + var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1338f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1247f + var_0.x)), var_0.x, -1377f))), vec2<i32>(global2.a, -2147483647i), _wgslsmith_f_op_f32(global2.b.x + _wgslsmith_f_op_f32(floor(578f))));
    var var_2 = any(!(!select(vec2<bool>(true, global3.x), vec2<bool>(false, global3.x), !global3.x)));
    global1 = array<f32, 31>();
    global0 = array<vec4<u32>, 8>();
    let var_3 = _wgslsmith_mult_vec2_u32(min(abs(firstLeadingBit(vec2<u32>(1u, 30187u))), _wgslsmith_mult_vec2_u32(vec2<u32>(44465u, u_input.b), ~vec2<u32>(62364u, 0u))) ^ (~(vec2<u32>(u_input.a, u_input.b) | vec2<u32>(u_input.b, 8368u)) << ((firstLeadingBit(vec2<u32>(u_input.a, u_input.a)) & _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.a), vec2<u32>(u_input.a, u_input.a))) % vec2<u32>(32u))), func_3(firstLeadingBit(~_wgslsmith_add_i32(global2.c.x, global2.a)), Struct_1(2147483647i, vec4<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.a, 31u)] * global2.b.x), _wgslsmith_f_op_f32(global2.b.x - global2.d), 939f, _wgslsmith_f_op_f32(func_1(3570u, Struct_1(-2147483647i, vec4<f32>(global2.d, 717f, -392f, global2.b.x), vec2<i32>(global2.a, 41318i), global1[_wgslsmith_index_u32(4294967295u, 31u)]), false, Struct_1(0i, global2.b, global2.c, global2.d)))), -global2.c | _wgslsmith_div_vec2_i32(global2.c, vec2<i32>(31116i, global2.c.x)), _wgslsmith_f_op_f32(func_1(51984u, Struct_1(global2.c.x, vec4<f32>(1147f, global2.b.x, 388f, -1581f), global2.c, global2.d), global3.x, Struct_1(global2.c.x, global2.b, global2.c, global2.d)))), vec2<bool>(true || global3.x, true)));
    var_1 = i32(-1i) * -(~global2.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(abs(global0[_wgslsmith_index_u32(~_wgslsmith_div_u32(u_input.b, 50673u), 8u)]), global0[_wgslsmith_index_u32(35933u, 8u)], !select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, false, true), true), !vec4<bool>(global3.x, true, false, true), true)), vec4<u32>(min(4294967295u, func_3(global2.a, Struct_1(12346i, global2.b, vec2<i32>(-2147483647i, -31121i), global2.d), !vec2<bool>(true, global3.x)).x), _wgslsmith_mult_u32(u_input.a, 4294967295u), var_3.x, ~((var_3.x >> (var_3.x % 32u)) << (var_3.x % 32u))), _wgslsmith_sub_u32(27081u, _wgslsmith_mod_u32(u_input.b, _wgslsmith_mult_u32(_wgslsmith_sub_u32(u_input.a, u_input.a), ~37729u))), _wgslsmith_mult_u32(12317u >> (~u_input.a % 32u), var_3.x << (2002u % 32u)));
}

