struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec3<i32>,
    d: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_2,
    c: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
    c: vec2<u32>,
    d: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3() -> vec2<u32> {
    var var_0 = Struct_3(global0.b, Struct_2(global0.a.a, 32811i, ~(-vec3<i32>(global0.a.a.a, -26688i, global0.a.a.a)), _wgslsmith_mult_u32(~4294967295u, 0u)), Struct_1(-23351i));
    let var_1 = Struct_2(global0.a.a, -(~countOneBits(17450i)), vec3<i32>(countOneBits(_wgslsmith_add_i32(var_0.b.c.x, min(40196i, -1i))), ~(var_0.b.a.a | 30261i), _wgslsmith_mod_i32(select(abs(global0.b.c.x), firstTrailingBit(1i), false), min(i32(-1i) * -49529i, _wgslsmith_mod_i32(17664i, var_0.b.a.a)))), _wgslsmith_dot_vec3_u32(max(vec3<u32>(8224u, global0.b.d, global0.a.d) << (~vec3<u32>(4294967295u, var_0.b.d, global0.b.d) % vec3<u32>(32u)), ~(~u_input.a.wyz)), firstLeadingBit(firstTrailingBit(vec3<u32>(var_0.b.d, 0u, 43757u)))));
    global0 = Struct_3(global0.a, var_1, var_1.a);
    let var_2 = var_0.b;
    let var_3 = var_0.a.d;
    return _wgslsmith_mod_vec2_u32(u_input.a.wy, vec2<u32>(global0.a.d, u_input.a.x)) << (select(select(u_input.a.yy, vec2<u32>(u_input.a.x, 0u) ^ u_input.a.zx, select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))) ^ u_input.a.wz, ~(u_input.a.wx ^ (u_input.a.yx | u_input.a.wy)), vec2<bool>(true, true)) % vec2<u32>(32u));
}

fn func_2(arg_0: u32) -> bool {
    var var_0 = ~u_input.a.zw;
    var_0 = countOneBits(func_3());
    var var_1 = -2147483647i;
    let var_2 = _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -2170f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + -916f)), _wgslsmith_div_u32(global0.a.d, arg_0) <= ~u_input.a.x)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(1167f)))), 482f, false)))));
    let var_3 = _wgslsmith_mult_vec3_i32(global0.a.c, global0.b.c);
    return false;
}

fn func_1(arg_0: Struct_3, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: Struct_1) -> f32 {
    let var_0 = abs(min(arg_0.a.c.yy | _wgslsmith_div_vec2_i32(-vec2<i32>(arg_1.a, 51207i), vec2<i32>(0i, -27001i)), global0.b.c.xy));
    var var_1 = !vec4<bool>(global0.a.b == _wgslsmith_sub_i32(-6310i, arg_3.a), func_2(global0.a.d), any(select(vec3<bool>(true, true, true), !vec3<bool>(false, arg_2.x, arg_2.x), select(vec3<bool>(false, false, false), vec3<bool>(true, arg_2.x, arg_2.x), arg_2.x))), !all(vec4<bool>(true, arg_2.x, true, arg_2.x)));
    let var_2 = vec3<i32>(_wgslsmith_mod_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.x, var_0.x, arg_3.a, arg_0.c.a), vec4<i32>(arg_1.a, -2147483647i, arg_3.a, 0i)) >> (~min(6026u, 44095u) % 32u), _wgslsmith_mod_i32(arg_3.a, 1i)), min(0i, -arg_1.a), 21825i);
    let var_3 = 79836u;
    global0 = arg_0;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-315f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(743f)) + _wgslsmith_f_op_f32(round(-615f)))))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a.b;
    global0 = Struct_3(global0.b, global0.a, global0.a.a);
    let var_1 = -_wgslsmith_dot_vec4_i32(vec4<i32>(abs(select(global0.c.a, -8625i, true)), _wgslsmith_dot_vec2_i32(vec2<i32>(2147483647i, global0.c.a), vec2<i32>(2147483647i, global0.c.a)), -24668i, reverseBits(_wgslsmith_div_i32(-28961i, global0.b.a.a))), vec4<i32>(6867i, _wgslsmith_dot_vec2_i32(-vec2<i32>(global0.c.a, 0i), abs(global0.b.c.yy)), global0.b.a.a, 0i));
    var_0 = reverseBits(_wgslsmith_dot_vec3_i32(global0.a.c, vec3<i32>(global0.c.a, global0.b.a.a, global0.a.c.x >> (global0.b.d % 32u))));
    var_0 = ~max(var_1, 13357i >> (u_input.a.x % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1529f))), u_input.a.x, vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(Struct_3(Struct_2(global0.b.a, var_1, global0.a.c, 1u), Struct_2(global0.a.a, 45910i, global0.a.c, u_input.a.x), Struct_1(16136i)), Struct_1(var_1), vec2<bool>(false, true), global0.a.a)) - -791f)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1873f))))), 1278f));
}

