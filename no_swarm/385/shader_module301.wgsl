struct Struct_1 {
    a: vec4<i32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: u32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> bool {
    var var_0 = vec2<bool>(!all(select(vec3<bool>(true, true, false), vec3<bool>(true, true, false), any(vec2<bool>(true, true)))), true);
    var_0 = !vec2<bool>(false, u_input.c < -42760i);
    var var_1 = Struct_1(select(-(vec4<i32>(u_input.c, u_input.b, -39736i, u_input.a.x) << (abs(vec4<u32>(19910u, 28334u, 9815u, 12730u)) % vec4<u32>(32u))), u_input.a, select(select(vec4<bool>(var_0.x, true, true, false), vec4<bool>(var_0.x, true, false, var_0.x), select(vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), vec4<bool>(true, var_0.x, false, false), vec4<bool>(var_0.x, true, var_0.x, true))), !select(vec4<bool>(var_0.x, false, var_0.x, var_0.x), vec4<bool>(var_0.x, var_0.x, var_0.x, true), vec4<bool>(true, var_0.x, false, true)), select(var_0.x, u_input.c != u_input.c, true))));
    var_1 = Struct_1(vec4<i32>(-(reverseBits(var_1.a.x) >> (63642u % 32u)), u_input.c | 2147483647i, var_1.a.x, -var_1.a.x));
    var var_2 = _wgslsmith_f_op_f32(trunc(605f));
    return var_0.x;
}

fn func_2() -> vec4<bool> {
    let var_0 = select(7192i, 1i, func_3());
    let var_1 = Struct_2(37558i, Struct_1(select(_wgslsmith_sub_vec4_i32(u_input.a, vec4<i32>(var_0, 14316i, -356i, 2147483647i)), firstLeadingBit(vec4<i32>(u_input.a.x, u_input.c, -2147483647i, u_input.c)), all(vec4<bool>(false, true, true, true))) >> (vec4<u32>(_wgslsmith_div_u32(1u, 13470u), select(1u, 0u, true), 59510u, countOneBits(1u)) % vec4<u32>(32u))));
    let var_2 = (~_wgslsmith_mult_u32(min(1u, 11622u), 0u >> (1u % 32u)) == ~(0u >> (select(82370u, 63968u, false) % 32u))) & any(!vec2<bool>(any(vec4<bool>(false, false, false, true)), true));
    let var_3 = !select(vec2<bool>(true, false), select(select(vec2<bool>(var_2, var_2), vec2<bool>(var_2, false), true), !vec2<bool>(false, var_2), !all(vec2<bool>(true, var_2))), all(select(vec3<bool>(false, var_2, var_2), !vec3<bool>(false, var_2, var_2), false)));
    var var_4 = ~vec2<u32>(_wgslsmith_dot_vec3_u32(countOneBits(vec3<u32>(4294967295u, 4294967295u, 1u)), ~vec3<u32>(28509u, 57065u, 5999u)), 4294967295u);
    return select(vec4<bool>(!any(vec3<bool>(var_2, false, var_2)), select(!var_3.x, var_3.x, !select(true, false, false)), 0u >= _wgslsmith_sub_u32(0u, max(var_4.x, 4294967295u)), var_3.x), select(select(!(!vec4<bool>(var_3.x, false, false, true)), !vec4<bool>(var_2, true, var_3.x, var_2), var_3.x), vec4<bool>(false, !(!var_2), any(select(vec4<bool>(var_3.x, true, false, var_3.x), vec4<bool>(false, true, true, var_3.x), vec4<bool>(true, true, false, false))), true), vec4<bool>(any(var_3), !var_3.x, true, true | any(vec4<bool>(true, false, var_3.x, var_3.x)))), var_2);
}

fn func_1(arg_0: Struct_2, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    let var_0 = ~arg_0.a;
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(770f + 916f), _wgslsmith_f_op_f32(-460f - -353f)), _wgslsmith_div_f32(-2025f, -264f))));
    let var_2 = ~(~(vec2<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_1, 0u, arg_1), vec4<u32>(0u, 1010u, 4294967295u, 21625u)), arg_1) >> (~vec2<u32>(4294967295u, 20077u) % vec2<u32>(32u))));
    var var_3 = select(vec4<u32>(var_2.x, arg_1, var_2.x, 0u), ~(~(~vec4<u32>(arg_1, arg_1, var_2.x, arg_1) | vec4<u32>(arg_1, arg_1, 0u, 58452u))), !(!func_2()));
    let var_4 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1 * var_1)), _wgslsmith_f_op_f32(-573f + _wgslsmith_f_op_f32(min(var_1, var_1))))), _wgslsmith_f_op_f32(f32(-1f) * -2757f), _wgslsmith_f_op_f32(f32(-1f) * -427f)));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_4.x))));
}

fn func_4(arg_0: f32, arg_1: f32) -> f32 {
    let var_0 = u_input.a.x;
    var var_1 = (~_wgslsmith_mod_i32(-9965i, var_0) >> (max(~(~40860u), firstLeadingBit(~3544u)) % 32u)) <= u_input.b;
    let var_2 = Struct_1(vec4<i32>(-var_0 ^ -(~u_input.c), -1i, abs(max(firstLeadingBit(37158i), _wgslsmith_dot_vec3_i32(vec3<i32>(var_0, var_0, -10659i), u_input.a.xwx))), (_wgslsmith_div_i32(1i, u_input.c) ^ abs(u_input.b)) >> (1u % 32u)));
    let var_3 = Struct_2(0i & u_input.b, Struct_1(firstLeadingBit(_wgslsmith_div_vec4_i32(u_input.a, vec4<i32>(var_2.a.x, -6089i, 0i, var_2.a.x)))));
    var_1 = _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(trunc(-233f)), _wgslsmith_f_op_f32(trunc(arg_0)))) == arg_0;
    return _wgslsmith_f_op_f32(ceil(-1000f));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_f32(func_1(Struct_2(22072i, Struct_1(u_input.a)), _wgslsmith_dot_vec2_u32(vec2<u32>(25085u, 15433u), vec2<u32>(0u, 0u)), _wgslsmith_div_vec2_i32(u_input.a.wx, u_input.a.ww))), _wgslsmith_div_f32(927f, 923f))) - _wgslsmith_f_op_f32(min(2432f, _wgslsmith_f_op_f32(select(-671f, 454f, true))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(781f * _wgslsmith_f_op_f32(-1445f - -468f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -453f), _wgslsmith_f_op_f32(-737f * -371f), any(vec3<bool>(true, true, false))))) + -801f));
    let var_1 = ~_wgslsmith_div_u32(~select(countOneBits(4294967295u), max(0u, 1084u), u_input.c > u_input.a.x), 4294967295u);
    var var_2 = Struct_2(select(_wgslsmith_dot_vec4_i32(~(~u_input.a), _wgslsmith_mult_vec4_i32(u_input.a, u_input.a)), -2147483647i, true), Struct_1(-vec4<i32>(1i, -1i, u_input.c | u_input.b, max(u_input.c, -23161i))));
    let var_3 = Struct_2(countOneBits(31548i), Struct_1(abs((vec4<i32>(u_input.c, var_2.b.a.x, -45030i, u_input.c) >> (vec4<u32>(45579u, 1u, var_1, var_1) % vec4<u32>(32u))) << ((vec4<u32>(52370u, var_1, var_1, var_1) & vec4<u32>(1u, 4294967295u, var_1, 4294967295u)) % vec4<u32>(32u)))));
    let var_4 = any(vec2<bool>(true, true));
    var_2 = var_3;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1258f, var_0.x, -1062f, var_0.x), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, 1125f), vec4<f32>(495f, var_0.x, var_0.x, var_0.x)))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(2156f, 1244f, var_0.x, var_0.x)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 400f, -363f, var_0.x)))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-1278f * 2065f), _wgslsmith_f_op_f32(min(1320f, 317f)), _wgslsmith_f_op_f32(f32(-1f) * -1164f), _wgslsmith_f_op_f32(var_0.x + -130f))))), countOneBits(~abs(~var_1)), var_1, var_0.x);
}

