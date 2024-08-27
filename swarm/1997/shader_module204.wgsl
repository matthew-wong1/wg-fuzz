struct Struct_1 {
    a: vec2<f32>,
    b: i32,
    c: f32,
    d: f32,
    e: vec2<u32>,
}

struct Struct_2 {
    a: f32,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec2<bool>,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_1,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec4<u32>,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: vec3<bool>) -> f32 {
    let var_0 = Struct_3(global0.a, select(vec2<bool>(false, all(arg_0)), arg_0.zz, true));
    global0 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a) * -1216f)), select(select(!vec2<bool>(global0.b.x, arg_0.x), select(arg_0.zx, !vec2<bool>(global0.b.x, var_0.b.x), true), true), select(var_0.b, arg_0.xy, false), vec2<bool>(any(select(var_0.b, vec2<bool>(global0.b.x, true), global0.b)), !global0.b.x & arg_0.x)));
    global0 = Struct_3(_wgslsmith_f_op_f32(round(var_0.a)), global0.b);
    var var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, global0.a) + vec2<f32>(var_0.a, 216f))), vec2<f32>(-1726f, -868f)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-2470f, var_0.a)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.a, 1351f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(2482f, -608f)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(1187f, -1368f) - vec2<f32>(global0.a, var_0.a))), _wgslsmith_f_op_vec2_f32(vec2<f32>(global0.a, -569f) - _wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.a, -611f) - vec2<f32>(1094f, global0.a))), any(select(vec4<bool>(var_0.b.x, global0.b.x, arg_0.x, true), vec4<bool>(global0.b.x, true, true, false), vec4<bool>(var_0.b.x, false, true, false)))))));
    let var_2 = Struct_2(1194f, any(!(!global0.b)), Struct_1(_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-360f, 799f), vec2<f32>(492f, -482f), global0.b.x))))), -76550i, var_1.x, _wgslsmith_f_op_f32(ceil(-1258f)), countOneBits(vec2<u32>(abs(18697u), max(1u, u_input.d.x)))), u_input.a.x, Struct_1(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.a))))), _wgslsmith_dot_vec2_i32(vec2<i32>(min(-9769i, -26309i), ~0i), vec2<i32>(1i, 1i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-global0.a), _wgslsmith_f_op_f32(abs(global0.a))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a * -2966f)) - -1262f), abs(vec2<u32>(u_input.c.x, u_input.a.x)) << (~_wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, u_input.b), u_input.d.wz) % vec2<u32>(32u))));
    return var_2.c.a.x;
}

fn func_2(arg_0: vec3<u32>) -> Struct_3 {
    return Struct_3(_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(true, global0.b.x, false))) - _wgslsmith_f_op_f32(ceil(-564f)))), -1000f), global0.b);
}

fn func_1(arg_0: vec3<f32>, arg_1: i32) -> vec2<f32> {
    var var_0 = Struct_5(~(-(~(arg_1 & -17085i))));
    global0 = func_2(u_input.c.zwx);
    let var_1 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -478f) + arg_0.x)), _wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(global0.a * global0.a)))))), arg_0.xx, _wgslsmith_dot_vec2_i32(~vec2<i32>(arg_1, 1i), -firstLeadingBit(vec2<i32>(var_0.a, 2147483647i))) >= 10106i));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(vec3<bool>(false, global0.b.x, all(vec3<bool>(true, global0.b.x, false))))) * global0.a);
    global0 = func_2(_wgslsmith_add_vec3_u32(~(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, u_input.d.x, u_input.d.x), u_input.a) << (vec3<u32>(u_input.b, 7413u, 66004u) % vec3<u32>(32u))), u_input.d.yzy));
    return vec2<f32>(1126f, _wgslsmith_f_op_f32(select(-169f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * -1252f))) + arg_0.x), global0.b.x)));
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: f32, arg_3: i32) -> Struct_3 {
    global0 = Struct_3(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f) - _wgslsmith_f_op_f32(-global0.a)), -567f)))), global0.b);
    global0 = Struct_3(1773f, !select(global0.b, vec2<bool>(global0.b.x, true), global0.b.x));
    var var_0 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-1958f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.a, 268f)))), arg_1.a.x))));
    global0 = func_2(~(~u_input.d.zxw << (~(~vec3<u32>(0u, 1u, 0u)) % vec3<u32>(32u))));
    var_0 = arg_1.a.x;
    return Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1191f), !vec2<bool>(true, !(false | global0.b.x)));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(global0.a, global0.b);
    global0 = func_4(abs(vec3<i32>(1i, 1i, 1i)), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_1(vec3<f32>(233f, global0.a, global0.a), -1i)) + _wgslsmith_div_vec2_f32(vec2<f32>(global0.a, global0.a), vec2<f32>(174f, -770f)))), -1i << (u_input.b % 32u), _wgslsmith_f_op_f32(f32(-1f) * -296f), global0.a, u_input.c.xy), _wgslsmith_f_op_f32(global0.a - -1899f), ~(i32(-1i) * -2147483647i));
    global0 = func_2(reverseBits(countOneBits(vec3<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, u_input.b, 5342u), u_input.c.yzx), u_input.b, _wgslsmith_add_u32(24681u, u_input.a.x)))));
    global0 = func_2(~reverseBits(~vec3<u32>(2326u, u_input.c.x, u_input.d.x)));
    var var_0 = Struct_5(-select(-22117i, 1i, true));
    var var_1 = -223f;
    global0 = Struct_3(global0.a, select(vec2<bool>(any(vec3<bool>(false, global0.b.x, false)), true), vec2<bool>(35055i < abs(var_0.a), !all(vec3<bool>(global0.b.x, true, false))), true));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_vec2_u32(~vec2<u32>(~83335u, min(8458u, 76178u)), u_input.a.zy));
}

