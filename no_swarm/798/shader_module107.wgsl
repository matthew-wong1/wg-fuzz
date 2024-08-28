struct Struct_1 {
    a: vec4<u32>,
    b: i32,
    c: vec4<i32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<bool>,
}

struct Struct_5 {
    a: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: vec2<u32>) -> u32 {
    let var_0 = Struct_5(Struct_1(firstTrailingBit(select(vec4<u32>(arg_0.x, 1u, arg_0.x, arg_0.x), ~vec4<u32>(arg_0.x, 4294967295u, arg_0.x, arg_0.x), false)), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.a.x), max(vec2<i32>(u_input.a.x, u_input.b) & u_input.a.yy, ~u_input.a.zy)), vec4<i32>(62477i, 0i, 1i, 5308i), firstTrailingBit(49209u), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -813f), _wgslsmith_f_op_f32(382f * 855f), _wgslsmith_f_op_f32(-1518f * 123f)) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-896f, 702f, 1125f), vec3<f32>(584f, -1027f, 1428f), vec3<bool>(true, true, true)))))));
    let var_1 = Struct_3(firstTrailingBit(_wgslsmith_mod_vec3_i32(-_wgslsmith_mod_vec3_i32(var_0.a.c.yxy, vec3<i32>(var_0.a.b, -32023i, var_0.a.c.x)), vec3<i32>(var_0.a.c.x, var_0.a.c.x, 33537i) | -var_0.a.c.wxw)), Struct_2(Struct_1(vec4<u32>(9653u << (1u % 32u), var_0.a.a.x | var_0.a.d, _wgslsmith_dot_vec3_u32(var_0.a.a.wzw, vec3<u32>(var_0.a.d, 45519u, var_0.a.a.x)), ~1u), var_0.a.b, u_input.a, firstLeadingBit(_wgslsmith_mod_u32(var_0.a.d, 0u)), var_0.a.e), vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1836f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-822f - var_0.a.e.x))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -431f), var_0.a.e.x)), _wgslsmith_f_op_f32(-998f + _wgslsmith_f_op_f32(-var_0.a.e.x)))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(step(var_0.a.e.yy, var_0.a.e.zy)))))));
    var var_3 = ~1u;
    let var_4 = vec2<bool>((i32(-1i) * -2147483647i) != u_input.b, any(select(vec3<bool>(true, all(vec2<bool>(true, false)), false), select(vec3<bool>(true, true, false), vec3<bool>(true, true, true), true), select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, false), vec3<bool>(true, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))));
    return ~var_0.a.d;
}

fn func_2() -> bool {
    let var_0 = _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(747f, 453f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-869f * _wgslsmith_f_op_f32(-849f - 1915f))), _wgslsmith_f_op_f32(2184f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -253f) + _wgslsmith_f_op_f32(-256f + -581f))), 643f), _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, -218f, _wgslsmith_f_op_f32(400f - 599f), -2268f)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1000f, -276f, -346f, 483f), vec4<f32>(-2380f, -1221f, -453f, -1062f))), vec4<f32>(-1694f, -927f, -285f, 593f), true)))))));
    var var_1 = reverseBits(_wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_mult_u32(func_3(vec2<u32>(17147u, 4294967295u)), max(1u, 20928u)), 59271u, _wgslsmith_sub_u32(~69786u, firstTrailingBit(1u)), 4294967295u), _wgslsmith_add_vec4_u32(~vec4<u32>(36360u, 87896u, 35846u, 1u), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 4294967295u, 0u, 0u), vec4<u32>(1u, 0u, 1u, 0u), vec4<u32>(0u, 1u, 37992u, 4294967295u)), vec4<u32>(1u, 1u, 4294967295u, 4443u)))));
    var var_2 = vec3<u32>(1u, 1u, 1u);
    let var_3 = !(func_3(abs(var_2.xz)) == ~var_2.x);
    var var_4 = Struct_5(Struct_1(~_wgslsmith_mod_vec4_u32(max(vec4<u32>(4294967295u, 4294967295u, var_2.x, var_2.x), vec4<u32>(21854u, 0u, var_2.x, var_2.x)), ~vec4<u32>(10801u, 30848u, 30103u, 1u)), _wgslsmith_mod_i32(-min(u_input.a.x, u_input.a.x), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) << (28144u % 32u)), vec4<i32>(u_input.b, _wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.b, -63883i, -23085i), u_input.a), _wgslsmith_sub_i32(u_input.b, u_input.b), u_input.b >> (var_2.x % 32u)) << ((vec4<u32>(69591u, var_2.x, 24785u, var_2.x) << (vec4<u32>(var_2.x, 22070u, 61276u, 13075u) % vec4<u32>(32u))) % vec4<u32>(32u)), _wgslsmith_mod_u32(~var_2.x | var_2.x, ~1u), var_0.xwz));
    return any(select(select(select(select(vec4<bool>(var_3, var_3, var_3, var_3), vec4<bool>(false, true, false, var_3), vec4<bool>(true, var_3, var_3, true)), !vec4<bool>(true, var_3, true, var_3), !vec4<bool>(var_3, var_3, true, true)), vec4<bool>(var_3, select(false, false, var_3), true, true), any(vec2<bool>(true, true))), vec4<bool>(var_3, all(select(vec4<bool>(true, var_3, var_3, true), vec4<bool>(var_3, true, false, var_3), false)), any(!vec3<bool>(var_3, var_3, var_3)), var_3), select(select(select(vec4<bool>(var_3, true, var_3, var_3), vec4<bool>(true, true, false, false), var_3), vec4<bool>(true, true, var_3, false), vec4<bool>(false, false, var_3, false)), vec4<bool>(all(vec3<bool>(false, var_3, var_3)), var_3, !var_3, !var_3), !(!vec4<bool>(var_3, var_3, var_3, false)))));
}

fn func_1(arg_0: Struct_3, arg_1: i32, arg_2: f32) -> vec3<bool> {
    var var_0 = arg_0.a.zy;
    let var_1 = any(vec2<bool>(!(arg_0.b.a.d > arg_0.b.a.a.x) & (func_2() || true), !(!all(vec3<bool>(false, false, false)))));
    var_0 = countOneBits(vec2<i32>(max(106860i, -14489i), max(_wgslsmith_clamp_i32(u_input.a.x, arg_1, -2147483647i), -var_0.x) | 0i));
    var var_2 = Struct_5(Struct_1(~(~arg_0.b.a.a | _wgslsmith_mod_vec4_u32(arg_0.b.a.a, arg_0.b.a.a)), min(_wgslsmith_mod_i32(u_input.a.x, 1i), -14993i) | _wgslsmith_dot_vec2_i32(countOneBits(vec2<i32>(-3157i, 0i)), _wgslsmith_mod_vec2_i32(u_input.a.zy, vec2<i32>(49873i, 2147483647i))), -u_input.a, _wgslsmith_mult_u32(reverseBits(max(1u, arg_0.b.a.d)), ~arg_0.b.a.d), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(arg_2, 664f, 755f))), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(exp2(arg_0.b.a.e)))), !vec3<bool>(var_1, false, false)))));
    return vec3<bool>(true, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-903f + _wgslsmith_f_op_f32(-var_2.a.e.x)), arg_0.b.a.e.x)) >= -899f, any(vec3<bool>(var_1, any(vec2<bool>(var_1, false)), ~var_2.a.a.x > var_2.a.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    let var_1 = vec4<bool>(all(vec3<bool>(true, true, true)) & all(select(select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false)), select(vec4<bool>(false, true, false, false), vec4<bool>(false, false, false, true), vec4<bool>(false, false, true, false)), select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, true), vec4<bool>(true, true, false, false)))), _wgslsmith_dot_vec2_i32(u_input.a.zz, vec2<i32>(-1586i, _wgslsmith_div_i32(1i, 2147483647i))) <= _wgslsmith_mult_i32(firstLeadingBit(39984i), -1i), -717f == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(877f)) + -142f), select(true, any(func_1(Struct_3(vec3<i32>(u_input.b, u_input.a.x, -2147483647i), Struct_2(Struct_1(vec4<u32>(0u, 107672u, 76234u, 17177u), 33029i, u_input.a, 0u, vec3<f32>(-722f, 566f, -2169f)), vec4<f32>(-333f, 1029f, -1747f, 475f))), u_input.b, -736f)), select(true, true, true)) != any(func_1(Struct_3(u_input.a.yxw, Struct_2(Struct_1(vec4<u32>(0u, 1u, 1u, 1u), -1i, vec4<i32>(u_input.b, u_input.b, u_input.a.x, 6345i), 873u, vec3<f32>(-210f, -402f, -2159f)), vec4<f32>(366f, -241f, -133f, -1033f))), _wgslsmith_dot_vec4_i32(u_input.a, u_input.a), _wgslsmith_f_op_f32(1290f + 861f))));
    var_0 = reverseBits(-reverseBits(u_input.a.x));
    var_0 = min(_wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(_wgslsmith_add_vec2_i32(-u_input.a.wy, ~vec2<i32>(u_input.b, u_input.b)), _wgslsmith_add_vec2_i32(u_input.a.yx, ~vec2<i32>(u_input.b, -1i))), abs(min(20907i, u_input.a.x))), u_input.a.x);
    let var_2 = 0u;
    let var_3 = Struct_2(Struct_1(~firstLeadingBit(~vec4<u32>(var_2, var_2, 0u, var_2)), u_input.b, vec4<i32>(u_input.b, -u_input.a.x, firstTrailingBit(u_input.b), u_input.a.x), ~4294967295u, vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-916f)))), 1f, 1000f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-660f, 1000f)), _wgslsmith_f_op_f32(floor(1f)), 755f, -552f)));
    var var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1365f, var_3.a.e.x))), -324f))));
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(vec2<u32>(1u, var_3.a.d) << (min(var_3.a.a.xz, vec2<u32>(117366u, var_3.a.d)) % vec2<u32>(32u))), vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + 428f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1622f) * -1222f) * _wgslsmith_f_op_f32(-822f * var_3.a.e.x))), _wgslsmith_clamp_vec4_u32(min(var_3.a.a, var_3.a.a), var_3.a.a, select(~var_3.a.a, var_3.a.a, func_2())), countOneBits(_wgslsmith_mult_vec2_i32(~(-vec2<i32>(var_3.a.b, var_3.a.c.x)), u_input.a.wy)));
}

