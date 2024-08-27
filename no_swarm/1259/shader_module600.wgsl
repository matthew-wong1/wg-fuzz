struct Struct_1 {
    a: vec2<bool>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_2() -> Struct_1 {
    let var_0 = u_input.a.x;
    var var_1 = -2147483647i;
    return Struct_1(!vec2<bool>(!all(vec3<bool>(true, false, true)), true), _wgslsmith_sub_vec4_i32(u_input.a, -vec4<i32>(var_0, u_input.a.x, var_0, -35458i) << (vec4<u32>(0u | u_input.c, ~4294967295u, ~37486u, 0u) % vec4<u32>(32u))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<bool>, arg_3: Struct_2) -> i32 {
    let var_0 = vec2<i32>(arg_3.b, _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(arg_0.b >> (vec4<u32>(12173u, 4294967295u, 5631u, u_input.c) % vec4<u32>(32u)), ~arg_1.b) & arg_3.a.b, ~(-arg_1.b) | arg_0.b));
    var var_1 = arg_3;
    var var_2 = true;
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(630f)) * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -245f)))));
    let var_4 = all(vec2<bool>(func_2().a.x, all(arg_2)));
    return _wgslsmith_dot_vec4_i32(-vec4<i32>(countOneBits(firstLeadingBit(var_0.x)), 2147483647i, max(2147483647i, _wgslsmith_mod_i32(1190i, -8138i)), 2147483647i), vec4<i32>(~(arg_0.b.x | 0i), _wgslsmith_mod_i32(~(-10767i), u_input.a.x), _wgslsmith_div_i32(0i, func_2().b.x), arg_3.b) >> (~(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.c, 4294967295u, u_input.c, 41311u), vec4<u32>(46807u, 12746u, u_input.c, u_input.c)) >> (vec4<u32>(1u, 69683u, u_input.c, 72493u) % vec4<u32>(32u))) % vec4<u32>(32u)));
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(select(vec2<bool>(true, true), vec2<bool>(all(vec2<bool>(true, true)), u_input.b <= -33229i), !any(vec4<bool>(false, true, false, false)) & (true && all(vec2<bool>(true, false)))), select(vec4<i32>(-2147483647i, ~(-52511i), u_input.b, func_3(Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.b, u_input.b, u_input.b, 46765i)), func_2(), vec4<bool>(true, true, true, true), Struct_2(Struct_1(vec2<bool>(false, true), vec4<i32>(u_input.b, u_input.b, u_input.a.x, 1i)), 1i))), (vec4<i32>(u_input.a.x, u_input.b, -22414i, -64258i) | vec4<i32>(20155i, 16265i, 0i, -16809i)) << (vec4<u32>(_wgslsmith_add_u32(4974u, u_input.c), 1u, u_input.c, 1u) % vec4<u32>(32u)), vec4<bool>(false, -1i > u_input.a.x, false, true)));
    let var_1 = Struct_2(Struct_1(vec2<bool>(var_0.a.x, false || all(vec3<bool>(true, var_0.a.x, false))), firstLeadingBit(~u_input.a)), _wgslsmith_sub_i32(var_0.b.x, countOneBits(-1i)));
    let var_2 = func_2();
    var var_3 = var_2;
    var_3 = func_2();
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = 1080f;
    let var_1 = u_input.a.x << (_wgslsmith_add_u32(~4294967295u, abs(4294967295u)) % 32u);
    let var_2 = true;
    var var_3 = func_1();
    let var_4 = Struct_1(select(var_3.a, var_3.a, var_2), vec4<i32>(~_wgslsmith_mult_i32(var_3.b.x, 1i) << (firstLeadingBit(0u) % 32u), -(~var_3.b.x & ~46308i), var_3.b.x, _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_3.b.x, -u_input.b), -max(292i, u_input.a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(_wgslsmith_clamp_u32(u_input.c, _wgslsmith_add_u32(u_input.c, 0u), u_input.c), 12527u) >> ((~(vec2<u32>(u_input.c, u_input.c) & vec2<u32>(21709u, 0u)) | ~(vec2<u32>(u_input.c, u_input.c) ^ vec2<u32>(u_input.c, u_input.c))) % vec2<u32>(32u)), ~(~min(countOneBits(vec4<u32>(u_input.c, u_input.c, 18602u, u_input.c)), vec4<u32>(49633u, u_input.c, 37849u, 53916u))), max(vec4<u32>(1u, _wgslsmith_mult_u32(u_input.c, u_input.c) << (u_input.c % 32u), ~abs(u_input.c), _wgslsmith_mult_u32(~u_input.c, reverseBits(u_input.c))), max(~firstLeadingBit(vec4<u32>(u_input.c, 84200u, u_input.c, 1u)), min(vec4<u32>(u_input.c, 51567u, 27500u, 35963u), ~vec4<u32>(46405u, u_input.c, 40025u, u_input.c)))));
}

