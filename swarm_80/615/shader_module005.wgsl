struct Struct_1 {
    a: u32,
    b: i32,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_3,
}

struct Struct_5 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3() -> f32 {
    let var_0 = 963f;
    let var_1 = Struct_1(~31679u, u_input.c);
    var var_2 = Struct_2(firstTrailingBit(abs(-42575i << ((u_input.a >> (31539u % 32u)) % 32u))), Struct_1(u_input.b.x, firstTrailingBit(-1i)), global0.a.c);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(global0.a.c.x)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_2.c.x + -521f))), _wgslsmith_f_op_f32(abs(-715f)), _wgslsmith_f_op_f32(f32(-1f) * -921f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, -1323f, var_0, global0.a.c.x) - vec4<f32>(347f, -857f, -448f, 1000f))))))));
    global0 = Struct_3(global0.a, ~reverseBits(~var_2.b.a), Struct_1(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(u_input.a, _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 31234u), vec2<u32>(var_1.a, global0.c.a))), var_2.b.a, var_2.b.a | 1660u), i32(-1i) * -2379i), 49172i & u_input.c);
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)) * var_0);
}

fn func_4(arg_0: Struct_5) -> f32 {
    var var_0 = true;
    var_0 = arg_0.c;
    let var_1 = _wgslsmith_clamp_i32(select(~countOneBits(2147483647i), u_input.c, true), 0i, -global0.a.b.b);
    let var_2 = vec4<f32>(arg_0.a, _wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.x)), -151f);
    let var_3 = -346f;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(1770f, _wgslsmith_f_op_f32(step(global0.a.c.x, _wgslsmith_f_op_f32(global0.a.c.x - var_3))), false && !(!arg_0.c))));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: bool) -> vec4<f32> {
    global0 = Struct_3(Struct_2(~(-3104i), global0.a.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(global0.a.c.x, -442f, -1590f), arg_0.zwy)) - _wgslsmith_f_op_vec3_f32(round(arg_0.yww))), _wgslsmith_f_op_vec3_f32(vec3<f32>(arg_0.x, -506f, -1228f) + _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.a.c.x, -2556f, -776f) + global0.a.c)))), abs(1u), global0.a.b, firstTrailingBit(min(-2416i, ~u_input.c)));
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(func_4(Struct_5(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(func_3()))), _wgslsmith_add_u32(firstTrailingBit(u_input.a), arg_1.x), any(select(vec3<bool>(arg_2, false, arg_2), vec3<bool>(arg_2, arg_2, arg_2), vec3<bool>(arg_2, arg_2, arg_2)))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-918f + -539f)), -437f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(_wgslsmith_div_f32(arg_0.x, 361f), 1u, all(vec3<bool>(arg_2, true, true))))) * _wgslsmith_f_op_f32(global0.a.c.x * _wgslsmith_f_op_f32(1271f + _wgslsmith_f_op_f32(-global0.a.c.x)))));
    var_0 = arg_0;
    let var_1 = arg_1;
    var var_2 = ~vec3<u32>(~_wgslsmith_dot_vec2_u32(var_1.yz, var_1.yz >> (vec2<u32>(1u, 0u) % vec2<u32>(32u))), countOneBits(var_1.x), global0.b);
    return arg_0;
}

fn func_1() -> StorageBuffer {
    var var_0 = _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.a.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(1528f * 709f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.a.c.x + 1220f), global0.a.c.x)), 1078f)));
    var_0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(597f, -1000f, -119f, -1324f))) + vec4<f32>(global0.a.c.x, global0.a.c.x, global0.a.c.x, -932f)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.a.c.x, -808f, var_0.x, global0.a.c.x) * _wgslsmith_f_op_vec4_f32(func_2(vec4<f32>(var_0.x, global0.a.c.x, 1000f, -1965f), vec4<u32>(4294967295u, global0.c.a, global0.b, 18462u), false)))), _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_f_op_f32(-global0.a.c.x), 1305f, _wgslsmith_f_op_f32(abs(var_0.x)), global0.a.c.x)))));
    var_0 = vec4<f32>(_wgslsmith_f_op_f32(1f * _wgslsmith_f_op_f32(-634f + var_0.x)), -728f, global0.a.c.x, _wgslsmith_f_op_f32(func_3()));
    var_0 = vec4<f32>(var_0.x, var_0.x, _wgslsmith_f_op_f32(-1497f * _wgslsmith_f_op_f32(func_3())), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -375f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_5(-408f, 0u, false))) * var_0.x)));
    var var_1 = true;
    return StorageBuffer(~60936i, global0.a.c.x, 19065u, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(abs(vec2<u32>(u_input.a, 4294967295u)), select(vec2<u32>(45129u, 39674u), u_input.b, vec2<bool>(false, true)) | u_input.b), u_input.b));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-global0.a.c.x);
    var_0 = global0.a.c.x;
    var var_1 = any(vec3<bool>((_wgslsmith_mult_u32(55893u, global0.b) < u_input.b.x) | true, true, any(select(vec3<bool>(false, false, true), select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), true))));
    var var_2 = any(vec2<bool>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.c.x + 1000f)) == 1f, true));
    var var_3 = _wgslsmith_f_op_f32(sign(global0.a.c.x));
    let var_4 = _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(869f - global0.a.c.x))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-737f)) * _wgslsmith_f_op_f32(f32(-1f) * -112f)), 455f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global0.a.c))), select(vec3<bool>(true, true, true), select(vec3<bool>(true, all(vec4<bool>(true, true, true, true)), false), vec3<bool>(true, true, true), vec3<bool>(true, global0.a.c.x <= 533f, false)), ~(~1u) >= ~u_input.a)));
    let x = u_input.a;
    s_output = func_1();
}

