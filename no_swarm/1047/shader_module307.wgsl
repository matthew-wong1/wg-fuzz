struct Struct_1 {
    a: u32,
    b: f32,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(26894u, -521f, 2147483647i);

var<private> global1: i32;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_1(_wgslsmith_dot_vec2_u32(~abs(vec2<u32>(u_input.d, global0.a) & vec2<u32>(4294967295u, 1894u)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, global0.a), vec2<u32>(4294967295u, ~global0.a))), global0.b, _wgslsmith_add_i32(-(~(1i | u_input.a.x)), global0.c));
    global1 = -countOneBits(-min(~u_input.a.x, _wgslsmith_mult_i32(1i, 57119i)));
    global0 = Struct_1(1u, _wgslsmith_f_op_f32(-var_0.b), select(global0.c, reverseBits(~0i), true) << (~reverseBits(global0.a >> (0u % 32u)) % 32u));
    global1 = u_input.a.x;
    global1 = 0i;
    return !select(!vec2<bool>(global0.b >= -610f, select(false, false, false)), vec2<bool>(true, true), vec2<bool>(true, true));
}

fn func_2(arg_0: Struct_1) -> vec2<bool> {
    var var_0 = any(func_3()) & all(vec4<bool>(!(-869f >= global0.b), false && (arg_0.b < 768f), !all(vec4<bool>(false, true, true, true)), any(vec4<bool>(true, true, true, true))));
    global1 = 1i;
    global1 = -1i;
    let var_1 = -((vec3<i32>(arg_0.c, ~(-23096i), ~global0.c) & -vec3<i32>(1i, 1i, 1i)) << (~vec3<u32>(25723u, countOneBits(u_input.d), 23825u) % vec3<u32>(32u)));
    var var_2 = any(select(!(!select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), false)), vec3<bool>(select(true, false, true) | false, false, _wgslsmith_f_op_f32(exp2(global0.b)) == _wgslsmith_f_op_f32(round(global0.b))), vec3<bool>(!any(vec3<bool>(true, false, true)), false, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, false), false)))));
    return select(!select(vec2<bool>(all(vec4<bool>(false, true, true, true)), false), vec2<bool>(true, true), func_3().x), select(vec2<bool>(true, true), vec2<bool>(any(vec3<bool>(false, false, true)), true), false), func_3());
}

fn func_1(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: vec2<bool>, arg_3: vec2<u32>) -> Struct_1 {
    global0 = Struct_1(_wgslsmith_dot_vec2_u32(select(select(~arg_1, vec2<u32>(29612u, 1u), func_2(Struct_1(arg_0.a, -218f, -2147483647i))), vec2<u32>(arg_3.x, 50364u) | arg_3, all(vec3<bool>(true, true, arg_2.x))), firstTrailingBit(arg_3)), global0.b, abs(_wgslsmith_sub_i32(_wgslsmith_mult_i32(u_input.a.x, global0.c), _wgslsmith_mult_i32(arg_0.c, 0i))) ^ ~arg_0.c);
    let var_0 = Struct_1(729u, global0.b, -42268i);
    let var_1 = ~3443u;
    var var_2 = func_2(var_0);
    global1 = var_0.c;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = false;
    let var_1 = _wgslsmith_f_op_f32(-global0.b);
    let var_2 = Struct_1(global0.a, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(829f + _wgslsmith_f_op_f32(round(global0.b))))))), ~_wgslsmith_mod_i32(-(i32(-1i) * -20356i), u_input.b.x));
    var var_3 = true;
    var var_4 = func_1(var_2, abs(vec2<u32>(firstTrailingBit(110481u), ~var_2.a)), vec2<bool>(var_0, var_0), vec2<u32>(var_2.a, global0.a));
    var_3 = 71787u >= reverseBits(~(firstTrailingBit(73804u) | _wgslsmith_mod_u32(13539u, var_2.a)));
    let x = u_input.a;
    s_output = StorageBuffer(~min(_wgslsmith_div_vec4_i32(select(vec4<i32>(-26295i, var_2.c, 2147483647i, var_4.c), vec4<i32>(global0.c, -43773i, var_2.c, 17531i), var_0), vec4<i32>(u_input.a.x, global0.c, -15910i, var_4.c) | vec4<i32>(var_2.c, 14869i, 31768i, global0.c)), ~min(vec4<i32>(50198i, u_input.c, var_4.c, 1i), vec4<i32>(-36279i, global0.c, -22733i, var_4.c))), vec3<i32>(min(_wgslsmith_sub_i32(i32(-1i) * -2147483647i, abs(62781i)), select(~var_4.c, ~var_4.c, var_2.b >= global0.b)), global0.c, 2147483647i & var_2.c), ~u_input.d);
}

