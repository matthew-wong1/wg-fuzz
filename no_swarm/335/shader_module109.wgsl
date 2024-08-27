struct Struct_1 {
    a: bool,
    b: u32,
    c: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: vec2<i32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: u32,
    c: vec3<u32>,
    d: vec4<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_2, arg_1: u32) -> u32 {
    let var_0 = -2147483647i;
    global0 = !vec2<bool>(all(select(select(vec4<bool>(false, false, true, true), vec4<bool>(false, arg_0.b.a, arg_0.b.a, arg_0.a.a), vec4<bool>(false, false, false, global0.x)), vec4<bool>(false, global0.x, arg_0.b.a, global0.x), !vec4<bool>(global0.x, true, arg_0.b.a, global0.x))), any(vec2<bool>(all(vec4<bool>(arg_0.b.a, arg_0.b.a, arg_0.a.a, arg_0.b.a)), u_input.c.x != -2147483647i)));
    global0 = select(select(!select(select(vec2<bool>(arg_0.b.a, global0.x), vec2<bool>(true, false), vec2<bool>(false, global0.x)), vec2<bool>(false, global0.x), select(global0.x, true, false)), select(!vec2<bool>(arg_0.a.a, arg_0.a.a), select(select(vec2<bool>(global0.x, false), vec2<bool>(false, true), false), select(vec2<bool>(true, true), vec2<bool>(true, arg_0.b.a), arg_0.b.a), any(vec3<bool>(false, true, false))), any(vec4<bool>(false, false, arg_0.a.a, true))), !vec2<bool>(arg_0.a.a, true)), select(select(!vec2<bool>(false, arg_0.b.a), select(vec2<bool>(true, true), !vec2<bool>(arg_0.a.a, arg_0.a.a), vec2<bool>(global0.x, global0.x)), vec2<bool>(true, true)), vec2<bool>(any(vec4<bool>(arg_0.a.a, arg_0.a.a, global0.x, true)), global0.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1895f))) < -438f), arg_0.a.a);
    global0 = select(select(vec2<bool>(false, (arg_0.b.c.x << (3723u % 32u)) != _wgslsmith_clamp_u32(0u, arg_0.a.b, arg_1)), vec2<bool>(abs(arg_0.c.x) >= -1i, global0.x), true), !(!vec2<bool>(any(vec2<bool>(global0.x, arg_0.a.a)), !global0.x)), !select(any(vec2<bool>(true, true)), !arg_0.a.a, global0.x));
    var var_1 = Struct_2(arg_0.b, arg_0.a, abs(vec2<i32>(2147483647i, arg_0.c.x)));
    return var_1.b.c.x;
}

fn func_2(arg_0: vec4<u32>, arg_1: vec2<bool>) -> Struct_1 {
    var var_0 = (-2147483647i >> (func_3(Struct_2(Struct_1(false, 36266u, vec4<u32>(42322u, u_input.a, u_input.a, arg_0.x)), Struct_1(true, 43364u, arg_0), abs(vec2<i32>(u_input.c.x, -1i))), 38823u) % 32u)) | u_input.c.x;
    let var_1 = select(!select(!vec4<bool>(false, false, false, global0.x), !select(vec4<bool>(arg_1.x, global0.x, false, true), vec4<bool>(global0.x, arg_1.x, arg_1.x, global0.x), vec4<bool>(false, true, true, arg_1.x)), !select(vec4<bool>(false, arg_1.x, true, false), vec4<bool>(true, arg_1.x, false, global0.x), arg_1.x)), !select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, true, false, false), vec4<bool>(false, global0.x, arg_1.x, global0.x), false), false), select(select(vec4<bool>(arg_1.x, true, global0.x, true), vec4<bool>(global0.x, true, global0.x, false), global0.x), select(vec4<bool>(arg_1.x, false, false, true), vec4<bool>(false, arg_1.x, false, arg_1.x), true), !vec4<bool>(false, global0.x, false, arg_1.x)), vec4<bool>(!global0.x, arg_1.x, true, true)), vec4<bool>(all(vec3<bool>(global0.x, arg_1.x | false, true)), !(!all(vec3<bool>(false, global0.x, arg_1.x))), global0.x, true));
    return Struct_1(global0.x, ~0u, ~vec4<u32>(~u_input.a, arg_0.x, 7323u << (u_input.b % 32u), _wgslsmith_dot_vec3_u32(arg_0.zzz, arg_0.yzx)) >> (~vec4<u32>(22613u, 63689u >> (u_input.b % 32u), _wgslsmith_mult_u32(arg_0.x, 0u), _wgslsmith_dot_vec2_u32(arg_0.zx, arg_0.xz)) % vec4<u32>(32u)));
}

fn func_1(arg_0: vec2<bool>) -> f32 {
    global0 = arg_0;
    global0 = !arg_0;
    let var_0 = Struct_2(func_2(~vec4<u32>(u_input.b << (65090u % 32u), ~u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, 49205u), vec3<u32>(47134u, 59914u, u_input.b)), 4294967295u), arg_0), Struct_1(global0.x, _wgslsmith_clamp_u32(u_input.b << (~u_input.b % 32u), 4294967295u, func_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b, u_input.b, u_input.b, 1u), vec4<u32>(u_input.a, u_input.b, 28723u, u_input.a), vec4<u32>(u_input.b, u_input.a, u_input.a, u_input.a)), !vec2<bool>(global0.x, global0.x)).b), ~vec4<u32>(_wgslsmith_mod_u32(u_input.a, 4690u), 39557u, _wgslsmith_clamp_u32(u_input.b, u_input.b, 4294967295u), 25390u)), ~_wgslsmith_sub_vec2_i32(u_input.c, u_input.c));
    let var_1 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(746f - -1295f), -1524f, _wgslsmith_f_op_f32(f32(-1f) * -1401f))) - vec3<f32>(_wgslsmith_f_op_f32(step(733f, 201f)), -717f, _wgslsmith_f_op_f32(f32(-1f) * -424f)))));
    return _wgslsmith_f_op_f32(-890f * _wgslsmith_f_op_f32(-167f + var_1.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -1065f))), _wgslsmith_f_op_f32(312f * -1195f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-2063f, 934f)) - _wgslsmith_f_op_f32(f32(-1f) * -405f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(294f + 1340f) - _wgslsmith_f_op_f32(func_1(vec2<bool>(true, global0.x))))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-861f - -1193f) - _wgslsmith_f_op_f32(abs(1000f)))));
    var var_1 = _wgslsmith_mod_u32(~35425u, ~func_2(countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, 1u, u_input.a, u_input.a), vec4<u32>(0u, 1u, 81431u, 4294967295u))), vec2<bool>(global0.x | false, all(vec4<bool>(global0.x, global0.x, global0.x, true)))).c.x);
    var_1 = ~1u;
    let var_2 = _wgslsmith_add_u32(u_input.b, u_input.a);
    var var_3 = -u_input.c.x;
    global0 = !vec2<bool>(true, ~var_2 <= (var_2 ^ var_2));
    let x = u_input.a;
    s_output = StorageBuffer(vec3<u32>(u_input.a, u_input.b, var_2), u_input.a, vec3<u32>(_wgslsmith_mod_u32(select(u_input.b, u_input.a, true) >> (53634u % 32u), ~(~u_input.b)), 8300u, ~4294967295u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.x * -569f)), 285f, _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(func_1(vec2<bool>(global0.x, true))))), var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-var_0)))));
}

