struct Struct_1 {
    a: vec2<bool>,
    b: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<bool>(false, false), -1407f);

var<private> global1: Struct_1;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), 490f);

var<private> global3: Struct_1 = Struct_1(vec2<bool>(true, false), -335f);

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1) -> bool {
    global1 = Struct_1(arg_0.a, _wgslsmith_f_op_f32(-1465f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(-159f)), -978f)));
    let var_0 = Struct_1(vec2<bool>(true, true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(1000f))))));
    global2 = arg_0;
    global2 = var_0;
    global2 = Struct_1(!(!select(global1.a, select(var_0.a, vec2<bool>(global2.a.x, false), arg_0.a), global3.a)), global1.b);
    return true;
}

fn func_2(arg_0: f32, arg_1: Struct_1, arg_2: vec3<bool>) -> f32 {
    global3 = arg_1;
    let var_0 = !vec2<bool>(false, any(global1.a));
    global3 = arg_1;
    var var_1 = all(vec4<bool>(true, -728f >= arg_1.b, true, any(vec4<bool>(global1.a.x, true, global0.a.x, true))));
    let var_2 = !select(vec3<bool>(global0.a.x, global3.a.x, func_3(arg_1)), select(!select(arg_2, vec3<bool>(true, true, global2.a.x), arg_2), arg_2, !arg_2), 760f != global0.b);
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-290f, global1.b) + _wgslsmith_f_op_f32(trunc(global0.b))) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-1000f)), _wgslsmith_f_op_f32(f32(-1f) * -1135f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-global1.b))) + global0.b))));
}

fn func_1(arg_0: vec2<i32>, arg_1: Struct_1, arg_2: vec2<f32>) -> vec2<bool> {
    let var_0 = vec2<f32>(1131f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(-2125f, Struct_1(vec2<bool>(global0.a.x, global3.a.x), _wgslsmith_f_op_f32(-arg_1.b)), !vec3<bool>(global0.a.x, false, false)))));
    let var_1 = -1000f != _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b + 599f) + _wgslsmith_f_op_f32(arg_2.x - arg_1.b)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-261f - 530f) + 1859f)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-503f)), arg_2.x))))));
    let var_2 = Struct_1(!(!vec2<bool>(true, global2.a.x || true)), 917f);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-2351f * _wgslsmith_f_op_f32(select(global2.b, global0.b, false))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(arg_2.x - var_0.x), arg_2.x)))), _wgslsmith_f_op_f32(min(global3.b, 1988f)), _wgslsmith_f_op_f32(288f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_f32(sign(global1.b)), Struct_1(vec2<bool>(global1.a.x, var_2.a.x), -315f), !vec3<bool>(arg_1.a.x, var_2.a.x, global0.a.x))))), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -558f)))));
    let var_4 = arg_1;
    return select(!global0.a, select(vec2<bool>(true, any(select(vec3<bool>(false, true, var_4.a.x), vec3<bool>(global1.a.x, global1.a.x, false), vec3<bool>(false, false, arg_1.a.x)))), vec2<bool>(false, false), select(select(select(global2.a, global1.a, vec2<bool>(arg_1.a.x, true)), global1.a, vec2<bool>(global2.a.x, var_4.a.x)), vec2<bool>(any(global2.a), all(vec2<bool>(var_1, false))), global2.a)), vec2<bool>(var_2.a.x, true));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_1(select(!select(vec2<bool>(true, true), vec2<bool>(true, global2.a.x), true), global0.a, func_1(vec2<i32>(abs(u_input.d.x), u_input.d.x), Struct_1(!vec2<bool>(global1.a.x, global1.a.x), 534f), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.b, 832f) * vec2<f32>(global3.b, 407f)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b, global3.b))))), global0.b);
    var var_0 = Struct_1(select(!select(!vec2<bool>(global0.a.x, global3.a.x), select(vec2<bool>(global1.a.x, global0.a.x), vec2<bool>(false, global0.a.x), global1.a.x), vec2<bool>(global3.a.x, global1.a.x)), vec2<bool>(global2.a.x, !all(vec3<bool>(global1.a.x, false, global2.a.x))), func_1(-u_input.d.yz, Struct_1(select(global2.a, global2.a, vec2<bool>(global3.a.x, true)), global1.b), _wgslsmith_div_vec2_f32(vec2<f32>(global3.b, global3.b), _wgslsmith_f_op_vec2_f32(vec2<f32>(-651f, 1000f) + vec2<f32>(global0.b, 1000f)))).x), 1000f);
    let var_1 = ~28010i < u_input.d.x;
    let var_2 = Struct_1(func_1(countOneBits(firstTrailingBit(vec2<i32>(u_input.d.x, -71385i)) >> (_wgslsmith_clamp_vec2_u32(vec2<u32>(u_input.c.x, 1u), u_input.c.yw, vec2<u32>(42507u, u_input.a.x)) % vec2<u32>(32u))), Struct_1(!global1.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(global3.b)))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(global1.b)) * _wgslsmith_div_f32(global2.b, -350f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b)))), _wgslsmith_div_f32(global1.b, -1095f));
    var var_3 = vec3<bool>(!var_0.a.x, !func_1(vec2<i32>(0i, u_input.d.x), var_2, vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -351f), global0.b)).x, !(!(!global0.a.x)));
    global2 = Struct_1(vec2<bool>(false, !var_1), _wgslsmith_f_op_f32(-var_2.b));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-507f * var_2.b) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.b))), var_0.b, vec2<u32>(1u & (u_input.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.a.x, 67577u), u_input.a) % 32u)), _wgslsmith_clamp_u32(6502u, _wgslsmith_sub_u32(u_input.b.x >> (u_input.c.x % 32u), countOneBits(u_input.b.x)), ~51487u | u_input.b.x)), u_input.d.x, -2147483647i);
}

