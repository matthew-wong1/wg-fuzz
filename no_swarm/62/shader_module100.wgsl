struct Struct_1 {
    a: vec3<f32>,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_1, 7> = array<Struct_1, 7>(Struct_1(vec3<f32>(-432f, 410f, -1479f), 0u), Struct_1(vec3<f32>(119f, -176f, -722f), 28106u), Struct_1(vec3<f32>(-499f, 237f, -783f), 0u), Struct_1(vec3<f32>(-824f, -610f, -588f), 1u), Struct_1(vec3<f32>(-1397f, -127f, 799f), 4294967295u), Struct_1(vec3<f32>(516f, 1000f, -131f), 79383u), Struct_1(vec3<f32>(581f, 1287f, 352f), 0u));

var<private> global2: Struct_1 = Struct_1(vec3<f32>(1619f, -1571f, -930f), 101749u);

var<private> global3: Struct_1 = Struct_1(vec3<f32>(2661f, -695f, 592f), 1u);

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn func_3() -> u32 {
    global3 = global1[_wgslsmith_index_u32(firstTrailingBit(~_wgslsmith_dot_vec2_u32(~vec2<u32>(5085u, 9922u), max(reverseBits(vec2<u32>(global2.b, global3.b)), _wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, u_input.d), vec2<u32>(global2.b, 0u))))), 7u)];
    global2 = global1[_wgslsmith_index_u32(~reverseBits(reverseBits(~(global2.b >> (global3.b % 32u)))), 7u)];
    var var_0 = select(vec2<i32>(u_input.c, 7992i), abs(vec2<i32>(abs(_wgslsmith_dot_vec2_i32(vec2<i32>(6284i, -47678i), vec2<i32>(u_input.c, u_input.c))), u_input.c)), select(select(vec2<bool>(false, any(vec3<bool>(global0.x, global0.x, global0.x))), !vec2<bool>(global0.x, global0.x), _wgslsmith_f_op_f32(-global3.a.x) >= _wgslsmith_f_op_f32(ceil(276f))), global0.yz, global0.zz));
    var var_1 = ~vec2<i32>(1i, -57125i);
    var var_2 = global1[_wgslsmith_index_u32(u_input.a, 7u)];
    return (var_2.b ^ u_input.d) << (~(~u_input.d) % 32u);
}

fn func_2() -> Struct_1 {
    let var_0 = vec3<bool>(global0.x, !(!(true && any(vec3<bool>(global0.x, global0.x, global0.x)))), true);
    var var_1 = Struct_1(vec3<f32>(global3.a.x, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-global2.a.x), _wgslsmith_f_op_f32(global2.a.x - 2057f)))), 757f), func_3());
    var_1 = global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_mod_vec4_u32(~firstTrailingBit(vec4<u32>(0u, 62369u, global3.b, global3.b)), ~(vec4<u32>(4294967295u, u_input.d, 1180u, u_input.d) >> (vec4<u32>(7217u, u_input.d, 66466u, global3.b) % vec4<u32>(32u)))), ~abs(vec4<u32>(u_input.a, 1u, 51208u, 4294967295u))), _wgslsmith_sub_u32(~global2.b, func_3())), 7u)];
    let var_2 = ~(~1u);
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-258f, global2.a.x, global2.a.x)))), global3.a)))), global2.b);
    return Struct_1(global2.a, 30391u);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>, arg_2: bool, arg_3: vec4<i32>) -> u32 {
    var var_0 = func_2();
    global1 = array<Struct_1, 7>();
    global2 = Struct_1(vec3<f32>(212f, -562f, _wgslsmith_f_op_f32(global2.a.x * -572f)), _wgslsmith_add_u32(select(global3.b, _wgslsmith_div_u32(u_input.d, var_0.b) & ~4294967295u, any(!vec4<bool>(true, true, arg_2, arg_2))), 112157u));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(global2.a.x, var_0.a.x, var_0.a.x, 739f) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.a.x, -1000f, global3.a.x, -490f)))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global3.a.x, 1000f, global2.a.x, var_0.a.x))), vec4<f32>(-275f, var_0.a.x, 1007f, global3.a.x)))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.a.x, global2.a.x, global2.a.x, var_0.a.x)))))));
    var var_2 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(357f, _wgslsmith_f_op_f32(f32(-1f) * -416f), _wgslsmith_f_op_f32(sign(global3.a.x))), var_0.a)), 4294967295u);
    return _wgslsmith_add_u32(24650u, arg_1.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(vec4<bool>(abs(global2.b) > func_1(u_input.d <= 1u, vec3<u32>(global2.b, u_input.b, u_input.d), all(vec2<bool>(global0.x, true)), vec4<i32>(-26175i, u_input.c, -28757i, -17811i) << (vec4<u32>(4294967295u, u_input.d, u_input.a, global3.b) % vec4<u32>(32u))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-130f)))) >= -968f, all(!select(vec4<bool>(false, global0.x, false, true), vec4<bool>(false, global0.x, global0.x, global0.x), vec4<bool>(global0.x, false, global0.x, true))), all(vec4<bool>(true, global0.x, all(global0.yy), !global0.x))), !vec4<bool>(!any(vec3<bool>(true, global0.x, global0.x)), !global0.x, all(vec4<bool>(global0.x, false, false, false)), any(global0.yy)), !(!vec4<bool>(true, false, global0.x, any(vec3<bool>(true, false, global0.x)))));
    let var_1 = Struct_1(vec3<f32>(_wgslsmith_f_op_f32(ceil(global3.a.x)), -2386f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(global3.a.x, global2.a.x), func_2().a.x)) + _wgslsmith_f_op_f32(-global2.a.x))), select(global2.b, 18141u, global0.x));
    let var_2 = func_2();
    global1 = array<Struct_1, 7>();
    let var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(13795i);
}

