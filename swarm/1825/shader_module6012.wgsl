struct Struct_1 {
    a: vec4<u32>,
    b: f32,
    c: bool,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

var<private> global2: Struct_1;

var<private> global3: array<vec2<f32>, 32> = array<vec2<f32>, 32>(vec2<f32>(-1463f, -354f), vec2<f32>(-1165f, -1415f), vec2<f32>(730f, -661f), vec2<f32>(908f, -667f), vec2<f32>(-453f, -281f), vec2<f32>(-195f, -1000f), vec2<f32>(-1795f, -258f), vec2<f32>(-958f, 964f), vec2<f32>(117f, 523f), vec2<f32>(628f, -131f), vec2<f32>(1000f, 162f), vec2<f32>(-418f, -1000f), vec2<f32>(591f, -532f), vec2<f32>(-893f, -1349f), vec2<f32>(-311f, -794f), vec2<f32>(-515f, -280f), vec2<f32>(743f, -784f), vec2<f32>(853f, 1555f), vec2<f32>(-358f, 2585f), vec2<f32>(879f, -668f), vec2<f32>(330f, 972f), vec2<f32>(147f, -668f), vec2<f32>(-169f, -522f), vec2<f32>(-620f, -1241f), vec2<f32>(315f, -390f), vec2<f32>(1315f, -450f), vec2<f32>(405f, 751f), vec2<f32>(146f, -1392f), vec2<f32>(-1288f, 385f), vec2<f32>(339f, 632f), vec2<f32>(-595f, 123f), vec2<f32>(737f, -417f));

var<private> global4: array<bool, 28> = array<bool, 28>(true, false, false, false, true, false, true, true, true, true, true, true, true, true, true, true, true, false, false, false, true, false, false, true, false, false, false, false);

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: i32) -> u32 {
    var var_0 = Struct_1(max(min(~vec4<u32>(110376u, 0u, 79935u, 40441u), ~(~u_input.c)), ~global0.a), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(global0.d.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1273f) * 2189f)))), global2.c || ((arg_3 << (~arg_1.a.x % 32u)) < -2147483647i), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.x, arg_1.e.x, _wgslsmith_f_op_f32(-global2.e.x), -1139f) - arg_1.d), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -652f)), global0.e.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, 206f) * vec2<f32>(arg_2.x, 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, arg_2.x)))), select(select(vec2<bool>(true, true), vec2<bool>(true, true), u_input.a.x >= -68823i), vec2<bool>(global4[_wgslsmith_index_u32(global2.a.x, 28u)], true), false))));
    let var_1 = true;
    let var_2 = Struct_1(vec4<u32>(~(~(~4294967295u)), abs(~global0.a.x), ~_wgslsmith_add_u32(59973u, global0.a.x), ~_wgslsmith_dot_vec4_u32(~u_input.c, select(vec4<u32>(global2.a.x, global2.a.x, 32383u, arg_0), vec4<u32>(8042u, global0.a.x, arg_0, u_input.d), vec4<bool>(true, var_1, true, true)))), -1000f, false, vec4<f32>(833f, _wgslsmith_f_op_f32(ceil(arg_1.b)), global0.e.x, 463f), global0.d.zz);
    global3 = array<vec2<f32>, 32>();
    var var_3 = ~select(countOneBits(22111u), abs(4294967295u), any(select(vec3<bool>(global0.c, true, global0.c), vec3<bool>(true, false, var_1), vec3<bool>(true, true, true))));
    return firstTrailingBit(53371u);
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = ~_wgslsmith_mult_u32(~(_wgslsmith_dot_vec2_u32(global0.a.zy, vec2<u32>(u_input.d, global0.a.x)) << (1u % 32u)), max(global0.a.x, arg_0.a.x ^ global0.a.x));
    let var_0 = Struct_1(~vec4<u32>(4294967295u, global0.a.x, firstLeadingBit(global2.a.x) | ~0u, func_3(~arg_0.a.x, Struct_1(vec4<u32>(global2.a.x, 0u, global0.a.x, 4294967295u), global0.b, true, global0.d, vec2<f32>(arg_0.d.x, global0.d.x)), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(arg_0.b, global0.d.x))), 0i)), 138f, any(select(!(!vec4<bool>(false, arg_0.c, global0.c, arg_0.c)), !(!vec4<bool>(global2.c, false, false, false)), true)), global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(global3[_wgslsmith_index_u32(global0.a.x, 32u)], vec2<f32>(global0.d.x, -679f), vec2<bool>(true, arg_0.c))) * global0.d.wy))));
    let var_1 = global2.d.x;
    let var_2 = 0u;
    let var_3 = vec4<u32>(~_wgslsmith_dot_vec4_u32(arg_0.a, abs(_wgslsmith_clamp_vec4_u32(vec4<u32>(84111u, 73585u, 7539u, global0.a.x), vec4<u32>(global2.a.x, global2.a.x, 1u, var_2), vec4<u32>(4294967295u, 1u, global2.a.x, 97065u)))), max(31396u, _wgslsmith_mod_u32(0u, 4294967295u)), arg_0.a.x, global0.a.x & ~37466u);
    return _wgslsmith_f_op_f32(round(var_0.b));
}

fn func_1() -> u32 {
    var var_0 = _wgslsmith_div_f32(-2408f, -354f);
    global3 = array<vec2<f32>, 32>();
    var var_1 = vec4<f32>(271f, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(func_2(Struct_1(vec4<u32>(0u, global2.a.x, global2.a.x, 32455u), 639f, global4[_wgslsmith_index_u32(0u, 28u)], vec4<f32>(global2.e.x, 301f, global0.b, -1450f), vec2<f32>(global0.b, -396f)))))))))), -365f, -305f);
    global0 = Struct_1(u_input.c, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2.e.x + _wgslsmith_f_op_f32(select(var_1.x, -507f, false))) - 1271f)), all(vec3<bool>(false, global4[_wgslsmith_index_u32(745u, 28u)], true == global4[_wgslsmith_index_u32(95999u, 28u)])), global0.d, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global0.d.wy) - _wgslsmith_f_op_vec2_f32(global0.d.xz - _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_1.x, -160f), vec2<f32>(-659f, var_1.x)))))));
    global3 = array<vec2<f32>, 32>();
    return abs(_wgslsmith_dot_vec4_u32(~vec4<u32>(42736u, _wgslsmith_dot_vec4_u32(vec4<u32>(global0.a.x, global2.a.x, global0.a.x, 43658u), vec4<u32>(1u, 43451u, 31067u, global2.a.x)), global2.a.x, 52070u), ~vec4<u32>(0u, 1u, 1u, global0.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = array<bool, 28>();
    let var_0 = u_input.b.x;
    let var_1 = Struct_1(vec4<u32>(_wgslsmith_sub_u32(countOneBits(144465u), _wgslsmith_mult_u32(12187u, func_1())), 4294967295u, func_1(), global0.a.x), _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(289f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global2.e.x, -1279f)) * global2.b)))), true, vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(796f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.e.x))), global2.e.x, _wgslsmith_div_f32(1023f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -807f) - _wgslsmith_div_f32(-256f, global2.d.x))), _wgslsmith_f_op_f32(-global2.d.x)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-954f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.e.x) + global2.e.x))));
    global1 = _wgslsmith_mod_u32(_wgslsmith_add_u32(16211u, _wgslsmith_mult_u32(~5480u, abs(global2.a.x))) << ((var_1.a.x | 18924u) % 32u), ~23146u | global0.a.x);
    global4 = array<bool, 28>();
    var var_2 = global2.a.x;
    global0 = Struct_1(global2.a, _wgslsmith_div_f32(-546f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global2.b), _wgslsmith_f_op_f32(global2.e.x + -642f))) - _wgslsmith_f_op_f32(-1f))), global0.c, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(231f, global2.d.x, var_1.e.x, -1000f))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.e.x, 484f, var_1.b, 1752f)))) - global0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(global0.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.e.x, 607f)), !global2.c)))));
    let x = u_input.a;
    s_output = StorageBuffer(-(~(reverseBits(u_input.b) >> (~global2.a % vec4<u32>(32u)))), 1631u ^ global2.a.x);
}

