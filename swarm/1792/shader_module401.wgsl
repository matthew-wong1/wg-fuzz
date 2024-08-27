struct Struct_1 {
    a: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: vec2<u32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(Struct_1(vec4<u32>(56908u, 2290u, 0u, 59005u)), Struct_1(vec4<u32>(1u, 4294967295u, 7788u, 1u)));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
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

fn func_2() -> Struct_2 {
    let var_0 = Struct_2(global0.b, global0.a);
    global0 = Struct_2(var_0.a, var_0.b);
    let var_1 = _wgslsmith_dot_vec2_i32(vec2<i32>(-select(-25786i, u_input.b, false), -1i), u_input.a);
    let var_2 = u_input.a.x >> (global0.b.a.x % 32u);
    let var_3 = Struct_1(_wgslsmith_div_vec4_u32(firstTrailingBit(~var_0.a.a ^ _wgslsmith_div_vec4_u32(vec4<u32>(global0.a.a.x, var_0.b.a.x, u_input.d.x, var_0.a.a.x), vec4<u32>(1u, global0.b.a.x, 22685u, 1u))), global0.b.a));
    return var_0;
}

fn func_3(arg_0: Struct_2) -> Struct_1 {
    global0 = Struct_2(arg_0.a, func_2().a);
    var var_0 = Struct_2(Struct_1(vec4<u32>(_wgslsmith_sub_u32(firstLeadingBit(global0.a.a.x), 19786u), 0u, 1u, arg_0.a.a.x ^ (4294967295u | u_input.c))), func_2().b);
    var_0 = arg_0;
    var_0 = arg_0;
    var_0 = arg_0;
    return arg_0.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: Struct_1) -> f32 {
    let var_0 = ~_wgslsmith_add_vec3_u32(_wgslsmith_div_vec3_u32(~arg_1.a.ywz, arg_1.a.yyz), arg_1.a.wxz) & ~(arg_1.a.xxx | (vec3<u32>(1u, arg_1.a.x, 17170u) >> (vec3<u32>(65787u, 0u, 65371u) % vec3<u32>(32u))));
    global0 = Struct_2(Struct_1(~vec4<u32>(~u_input.d.x, 1u, global0.b.a.x, _wgslsmith_add_u32(0u, 4294967295u))), func_3(func_2()));
    let var_1 = vec2<u32>(global0.b.a.x, firstTrailingBit(_wgslsmith_div_u32(~10262u, firstLeadingBit(global0.a.a.x))) >> (1u % 32u));
    let var_2 = arg_1;
    let var_3 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(step(-788f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-1300f)) + _wgslsmith_div_f32(736f, -741f)))), -641f))));
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(var_3 * _wgslsmith_f_op_f32(min(var_3, 2460f)))))) * var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(-1226f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -391f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -881f) - -600f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-687f))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1f, -1160f, _wgslsmith_f_op_f32(f32(-1f) * -721f), _wgslsmith_f_op_f32(-730f - -197f)) + _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-vec4<f32>(839f, 761f, 210f, -1000f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(func_1(vec3<i32>(u_input.b, u_input.a.x, -1i), global0.a)), _wgslsmith_f_op_f32(f32(-1f) * -1056f), -1000f, 1f))));
    global0 = func_2();
    let var_1 = _wgslsmith_add_u32(_wgslsmith_add_u32(max(~4294967295u & u_input.d.x, u_input.e), ~_wgslsmith_dot_vec2_u32(vec2<u32>(global0.a.a.x, 22282u), global0.a.a.zz ^ u_input.d)), u_input.c);
    global0 = Struct_2(Struct_1(_wgslsmith_sub_vec4_u32(global0.a.a, global0.b.a)), global0.a);
    var var_2 = vec3<i32>(-u_input.b, _wgslsmith_add_i32(-1i, ~(-u_input.a.x)), u_input.a.x);
    var var_3 = Struct_2(Struct_1(firstTrailingBit(_wgslsmith_sub_vec4_u32(global0.a.a, ~vec4<u32>(1u, 0u, u_input.d.x, 80294u)))), global0.a);
    var_3 = func_2();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(0u, select(var_3.b.a.x, ~u_input.e << ((global0.b.a.x ^ global0.b.a.x) % 32u), true | any(vec2<bool>(true, true)))));
}

