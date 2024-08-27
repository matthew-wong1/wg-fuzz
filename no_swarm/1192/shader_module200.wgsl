struct Struct_1 {
    a: vec3<bool>,
    b: bool,
    c: bool,
    d: u32,
    e: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: vec4<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: f32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec3<bool>(false, false, true), false, true, 826u, vec4<bool>(false, false, true, true)), true, vec4<bool>(true, false, true, true), Struct_1(vec3<bool>(true, false, true), false, true, 4570u, vec4<bool>(false, true, false, true)));

var<private> global1: array<Struct_2, 4> = array<Struct_2, 4>(Struct_2(Struct_1(vec3<bool>(false, false, false), true, false, 4294967295u, vec4<bool>(true, false, false, true)), false, vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(true, false, false), false, false, 1u, vec4<bool>(true, true, true, true))), Struct_2(Struct_1(vec3<bool>(false, true, false), false, true, 0u, vec4<bool>(false, false, false, true)), false, vec4<bool>(false, false, false, true), Struct_1(vec3<bool>(true, false, true), false, false, 1u, vec4<bool>(true, false, true, true))), Struct_2(Struct_1(vec3<bool>(false, false, false), false, false, 0u, vec4<bool>(true, false, false, false)), true, vec4<bool>(true, false, true, false), Struct_1(vec3<bool>(false, false, true), false, false, 1u, vec4<bool>(false, false, true, true))), Struct_2(Struct_1(vec3<bool>(true, true, false), false, false, 2858u, vec4<bool>(false, false, false, true)), false, vec4<bool>(true, true, true, true), Struct_1(vec3<bool>(false, false, false), false, true, 18738u, vec4<bool>(false, false, true, false))));

var<private> global2: vec3<bool>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_1() -> bool {
    global1 = array<Struct_2, 4>();
    return any(vec2<bool>(true || global0.c.x, true));
}

fn func_3(arg_0: vec2<u32>, arg_1: i32, arg_2: Struct_1) -> f32 {
    var var_0 = arg_2;
    let var_1 = vec4<bool>(true, false, !(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(1u, arg_0.x, 1u, arg_2.d), vec4<u32>(66138u, 9576u, var_0.d, 84373u)), ~vec4<u32>(1u, arg_0.x, arg_0.x, 0u)) != (_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, 1382u, 4294967295u, 4294967295u), vec4<u32>(1u, global0.a.d, u_input.a, var_0.d)) ^ ~arg_0.x)), var_0.a.x);
    var var_2 = global1[_wgslsmith_index_u32(21585u, 4u)];
    var var_3 = reverseBits(61658u);
    let var_4 = global0.a;
    return _wgslsmith_f_op_f32(max(606f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1102f)))));
}

fn func_2() -> i32 {
    let var_0 = vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_3(vec2<u32>(global0.d.d, _wgslsmith_add_u32(17188u, 20509u)), 1i, global0.d)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(268f, _wgslsmith_f_op_f32(-798f + 179f), !global0.d.a.x))))), -1425f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec2<u32>(global0.d.d, 0u), 0i, Struct_1(vec3<bool>(false, global2.x, false), false, true, 1u, global0.c))))))), -544f);
    var var_1 = max(firstTrailingBit(_wgslsmith_mult_u32(~1u, u_input.a)), min(_wgslsmith_sub_u32(~4294967295u | ~u_input.a, _wgslsmith_mod_u32(u_input.a, _wgslsmith_div_u32(28025u, 1u))), _wgslsmith_mod_u32(global0.a.d, max(~1u, global0.d.d))));
    var_1 = 0u;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-140f, 1894f)) * _wgslsmith_f_op_f32(step(1388f, var_0.x))))));
    var_1 = 26879u;
    return -28595i;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<Struct_2, 4>();
    global2 = select(select(global0.a.a, global0.c.zzx, global0.c.yxx), vec3<bool>(global0.a.c, global2.x, true), true);
    global2 = global0.c.yzw;
    var var_0 = select(vec4<bool>(all(global0.d.e.xwz), all(!global0.d.e), false, (select(false, false, true) & (global0.c.x && global2.x)) | false), vec4<bool>(global2.x, true || global0.d.a.x, func_1(), func_1()), vec4<bool>(true && (1i < func_2()), false & global0.b, !global0.c.x & !global2.x, true));
    let var_1 = 2204f;
    let x = u_input.a;
    s_output = StorageBuffer(-2088f, u_input.a);
}

