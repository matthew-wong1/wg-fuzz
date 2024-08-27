struct Struct_1 {
    a: bool,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: vec3<i32>,
    d: f32,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: Struct_1,
    d: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
    c: i32,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: bool, arg_1: Struct_3, arg_2: f32) -> u32 {
    var var_0 = Struct_3(false, Struct_2(vec4<bool>(all(!vec4<bool>(arg_0, true, true, false)), false, false, true), arg_1.d.b, vec3<i32>(~(~u_input.c), u_input.e.x | arg_1.b.c.x, arg_1.d.c.x), 1078f), Struct_1(true, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.c.b * arg_1.c.b))), vec2<f32>(_wgslsmith_f_op_f32(ceil(arg_2)), _wgslsmith_f_op_f32(round(173f))))), 1u, (vec4<u32>(u_input.a.x, 7893u, 13571u, 0u) << (_wgslsmith_div_vec4_u32(arg_1.b.b.d, vec4<u32>(u_input.a.x, arg_1.b.b.d.x, 0u, 4294967295u)) % vec4<u32>(32u))) & ~arg_1.d.b.d), arg_1.d);
    var var_1 = true;
    return 1u;
}

fn func_2(arg_0: vec4<bool>) -> Struct_1 {
    let var_0 = 1u;
    var var_1 = true;
    let var_2 = abs(1i) << (var_0 % 32u);
    let var_3 = var_2 & u_input.e.x;
    var_1 = arg_0.x;
    return Struct_1(true, _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-414f * -687f)), _wgslsmith_f_op_f32(f32(-1f) * -1131f)), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(1437f - -653f), _wgslsmith_f_op_f32(f32(-1f) * -404f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(582f, -1236f) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1775f, -1000f))), true)))), firstTrailingBit(func_3(true, Struct_3(true, Struct_2(arg_0, Struct_1(arg_0.x, vec2<f32>(-1315f, 558f), var_0, vec4<u32>(u_input.a.x, 18166u, 1u, var_0)), vec3<i32>(var_2, var_3, -38519i), -1640f), Struct_1(true, vec2<f32>(230f, 543f), u_input.b.x, vec4<u32>(u_input.b.x, 12497u, u_input.b.x, var_0)), Struct_2(arg_0, Struct_1(false, vec2<f32>(-1000f, -686f), var_0, vec4<u32>(u_input.a.x, 32912u, 1u, u_input.a.x)), u_input.e.yyy, 370f)), 568f)), ~(~(~(~vec4<u32>(22458u, u_input.b.x, var_0, 5276u)))));
}

fn func_1(arg_0: u32, arg_1: vec2<bool>) -> bool {
    var var_0 = _wgslsmith_sub_u32(~arg_0, ~u_input.d.x);
    let var_1 = 1i;
    let var_2 = func_2(vec4<bool>(arg_1.x, true, !((var_1 <= 1i) == !arg_1.x), arg_1.x));
    let var_3 = vec4<bool>((var_2.d.x > 51733u) | !(!(!var_2.a)), true, (i32(-1i) * -2147483647i) < ~var_1, var_2.a == arg_1.x);
    let var_4 = Struct_3(var_3.x, Struct_2(!select(var_3, !vec4<bool>(arg_1.x, false, true, var_2.a), !vec4<bool>(arg_1.x, false, true, var_2.a)), Struct_1(var_3.x, var_2.b, 18314u, abs(max(vec4<u32>(u_input.a.x, u_input.b.x, arg_0, arg_0), var_2.d))), abs(vec3<i32>(-14193i, -1i, ~(-1i))), var_2.b.x), func_2(!var_3), Struct_2(vec4<bool>(true, select(var_2.a, false, arg_1.x & false), false, arg_1.x), Struct_1(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_2.b)), 28991u, ~select(var_2.d, var_2.d, true)), vec3<i32>(_wgslsmith_clamp_i32(max(1i, 15289i), countOneBits(u_input.e.x), var_1), 0i, reverseBits(-u_input.e.x)), -141f));
    return !var_4.a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(~u_input.d.x < ~4519u, Struct_2(vec4<bool>(true, true, false, func_1(_wgslsmith_mod_u32(16213u, 1u), vec2<bool>(true, true))), Struct_1(true, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1167f, 660f) + vec2<f32>(1000f, -1775f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(526f, 1988f))), 19606u, ~(~vec4<u32>(u_input.d.x, 10621u, 0u, 1u))), vec3<i32>(35827i, -59890i, _wgslsmith_dot_vec4_i32(u_input.e << (vec4<u32>(102110u, u_input.d.x, u_input.b.x, u_input.d.x) % vec4<u32>(32u)), vec4<i32>(u_input.e.x, u_input.c, u_input.c, u_input.e.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-719f))))), Struct_1(true, _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-2462f, -1000f) + vec2<f32>(1212f, 765f)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-268f, -200f) + vec2<f32>(-740f, -309f))))), _wgslsmith_clamp_u32(countOneBits(u_input.a.x), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.d.x), ~u_input.a.yx), 4294967295u), vec4<u32>(u_input.a.x, u_input.a.x, 1u, _wgslsmith_clamp_u32(1u, 37116u, u_input.d.x)) & vec4<u32>(56850u, _wgslsmith_div_u32(4294967295u, u_input.d.x), ~0u, 1u)), Struct_2(vec4<bool>(u_input.a.x <= (u_input.a.x >> (35059u % 32u)), false, ~(-1i) > abs(u_input.e.x), true), Struct_1(true, _wgslsmith_f_op_vec2_f32(max(vec2<f32>(-1228f, -280f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1325f, 625f) + vec2<f32>(-555f, -1000f)))), 4294967295u, ~vec4<u32>(17927u, u_input.b.x, 14693u, 4294967295u)), ~(~_wgslsmith_mult_vec3_i32(u_input.e.xyy, vec3<i32>(62368i, u_input.e.x, -2147483647i))), -1000f));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.d, var_0.b.c.x);
}

