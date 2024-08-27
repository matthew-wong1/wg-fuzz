struct Struct_1 {
    a: u32,
}

struct Struct_2 {
    a: bool,
    b: i32,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<f32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: u32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 30>;

var<private> global1: vec3<f32>;

var<private> global2: vec2<bool>;

var<private> global3: array<u32, 20>;

var<private> global4: array<bool, 18>;

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: bool, arg_1: Struct_2, arg_2: i32) -> u32 {
    var var_0 = !global2.x;
    let var_1 = ~vec4<u32>(u_input.a, ~(~firstLeadingBit(20158u)), global3[_wgslsmith_index_u32(~u_input.c, 20u)], _wgslsmith_mod_u32(1u, global3[_wgslsmith_index_u32(~1u, 20u)]));
    let var_2 = global0[_wgslsmith_index_u32(arg_1.c.a, 30u)];
    return ~countOneBits(~(~arg_1.d.a));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1) -> vec2<f32> {
    let var_0 = vec3<bool>((_wgslsmith_f_op_f32(-156f * _wgslsmith_f_op_f32(global1.x * -1000f)) < global1.x) & true, global4[_wgslsmith_index_u32(33611u, 18u)], global2.x);
    global1 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -516f)), _wgslsmith_div_f32(-189f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -769f))), _wgslsmith_f_op_f32(-global1.x));
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(100f, global1.x))), Struct_1(~(~1u)));
    var var_2 = ~select(1u, countOneBits(_wgslsmith_mult_u32(countOneBits(arg_1.a), func_3(global4[_wgslsmith_index_u32(5440u, 18u)], Struct_2(true, -82707i, arg_1, Struct_1(var_1.b.a)), -80797i))), true);
    let var_3 = global4[_wgslsmith_index_u32(1u, 18u)];
    return _wgslsmith_f_op_vec2_f32(round(vec2<f32>(577f, _wgslsmith_f_op_f32(-426f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.a.x, -378f)))))));
}

fn func_1(arg_0: u32, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    var var_0 = !vec4<bool>(!(!global2.x), global2.x, false, global4[_wgslsmith_index_u32(u_input.a, 18u)]);
    var var_1 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_2(Struct_1(4294967295u), Struct_1(0u))) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.xz * vec2<f32>(global1.x, global1.x))))), Struct_1(~(min(1u, u_input.c) << (abs(0u) % 32u))));
    global2 = vec2<bool>(false, all(var_0.wxy));
    let var_2 = global0[_wgslsmith_index_u32(~(~((~arg_2.x << (global3[_wgslsmith_index_u32(73702u, 20u)] % 32u)) ^ ~firstLeadingBit(37915u))), 30u)];
    let var_3 = _wgslsmith_f_op_vec2_f32(var_2.a - _wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_1.a.x, var_1.a.x), _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, var_2.a.x)), false != !all(vec2<bool>(global2.x, false)))));
    return Struct_2(var_3.x < _wgslsmith_f_op_f32(trunc(579f)), -1i, var_2.b, var_1.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(countOneBits(74919u), 0i, _wgslsmith_mod_vec3_u32(u_input.b.xxx, firstLeadingBit(u_input.b.yxy) >> (vec3<u32>(~10250u, u_input.a, 4294967295u) % vec3<u32>(32u))), ~_wgslsmith_div_u32(_wgslsmith_clamp_u32(45558u, global3[_wgslsmith_index_u32(0u, 20u)] & 0u, ~4294967295u), 4294967295u));
    var var_1 = Struct_1(~var_0.c.a);
    let x = u_input.a;
    s_output = StorageBuffer(global1.x, u_input.b.ww, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(201f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(653f * global1.x)))));
}

