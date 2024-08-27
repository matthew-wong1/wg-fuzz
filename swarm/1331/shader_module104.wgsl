struct Struct_1 {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec2<bool>,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<f32>,
    c: i32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_3, arg_1: Struct_2) -> vec2<i32> {
    let var_0 = -1843f;
    let var_1 = arg_0;
    var var_2 = var_0;
    var var_3 = 45215u;
    let var_4 = vec3<u32>(firstTrailingBit(u_input.c.x << (~(~var_1.b.x) % 32u)), ~(~_wgslsmith_mult_u32(arg_0.b.x ^ arg_1.d.c, 34841u << (u_input.c.x % 32u))), ~(~var_1.b.x));
    return -select(vec2<i32>(-select(-21542i, u_input.b.x, arg_1.c.x), -1i), vec2<i32>(arg_1.b, _wgslsmith_dot_vec4_i32(abs(vec4<i32>(-2147483647i, -2147483647i, u_input.b.x, -15248i)), vec4<i32>(0i, 86629i, arg_1.a.d, var_1.a.a.x) >> (vec4<u32>(13779u, var_4.x, 1u, u_input.c.x) % vec4<u32>(32u)))), !vec2<bool>(arg_0.e.x, true));
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec3<bool>) -> u32 {
    var var_0 = Struct_3(Struct_1(~reverseBits(arg_1.a), arg_1.b, select(abs(4294967295u), ~u_input.c.x, any(vec2<bool>(arg_2.x, arg_2.x))), u_input.a.x << (1u % 32u)), countOneBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, _wgslsmith_mod_u32(51144u, 7125u), max(u_input.c.x, u_input.c.x), _wgslsmith_div_u32(u_input.c.x, u_input.c.x)), vec4<u32>(arg_1.b.x, u_input.c.x, u_input.c.x, 80806u) ^ _wgslsmith_mod_vec4_u32(arg_1.b, vec4<u32>(27686u, 46852u, u_input.c.x, u_input.c.x)))), _wgslsmith_sub_vec2_i32(select(func_3(Struct_3(arg_1, vec4<u32>(4294967295u, 94280u, arg_1.b.x, 0u), u_input.b.zy, 2147483647i, vec3<bool>(false, false, false)), Struct_2(Struct_1(vec3<i32>(-11134i, u_input.b.x, arg_1.a.x), vec4<u32>(97496u, 4294967295u, 1u, 32688u), u_input.c.x, arg_1.d), arg_0.x, arg_2.yz, Struct_1(vec3<i32>(-1i, 2147483647i, arg_0.x), vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, 66878u), u_input.c.x, arg_1.d), arg_2.x)), u_input.a, !arg_2.zx), -min(_wgslsmith_sub_vec2_i32(vec2<i32>(1i, u_input.b.x), vec2<i32>(-47042i, arg_0.x)), ~arg_0.yx)), arg_1.a.x, select(arg_2, select(vec3<bool>(true, false, arg_2.x), vec3<bool>(arg_2.x, arg_2.x, false), (0u < arg_1.c) & true), !arg_2));
    var var_1 = all(vec4<bool>(_wgslsmith_clamp_i32(~(-1i), ~arg_1.d, var_0.d) == ((arg_1.d | arg_0.x) >> (20728u % 32u)), !any(arg_2), 4294967295u <= var_0.a.c, (-arg_1.a.x >= -25357i) && true));
    var var_2 = Struct_2(var_0.a, arg_0.x | var_0.a.a.x, select(var_0.e.zz, var_0.e.yx, var_0.e.xy), arg_1, all(!(!select(vec4<bool>(var_0.e.x, false, arg_2.x, var_0.e.x), vec4<bool>(true, true, var_0.e.x, true), vec4<bool>(true, false, false, arg_2.x)))));
    var var_3 = var_0.a.a;
    let var_4 = ~_wgslsmith_sub_u32(var_2.a.c, var_0.a.c);
    return ~7586u;
}

fn func_1(arg_0: i32) -> Struct_2 {
    let var_0 = firstTrailingBit(vec2<u32>(~16041u ^ countOneBits(func_2(vec3<i32>(arg_0, arg_0, u_input.a.x), Struct_1(u_input.b, vec4<u32>(1u, u_input.c.x, 4294967295u, u_input.c.x), 4294967295u, -45074i), vec3<bool>(true, true, false))), ~0u));
    let var_1 = Struct_1(~(~firstTrailingBit(u_input.b)), _wgslsmith_div_vec4_u32(countOneBits(vec4<u32>(_wgslsmith_mod_u32(18135u, var_0.x), 4294967295u, abs(u_input.c.x), min(24962u, u_input.c.x))), ~(~(~vec4<u32>(59326u, u_input.c.x, u_input.c.x, u_input.c.x)))), ~_wgslsmith_sub_u32(~func_2(u_input.b, Struct_1(vec3<i32>(0i, u_input.a.x, -1i), vec4<u32>(42778u, 118701u, var_0.x, 3262u), u_input.c.x, u_input.a.x), vec3<bool>(false, true, true)), _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(49833u, u_input.c.x, var_0.x, var_0.x)), vec4<u32>(30172u, 55449u, var_0.x, 5975u))), ~(-_wgslsmith_mult_i32(-18321i, 0i)) >> (reverseBits(var_0.x << ((u_input.c.x >> (69364u % 32u)) % 32u)) % 32u));
    let var_2 = Struct_3(var_1, reverseBits(var_1.b ^ (var_1.b & vec4<u32>(var_0.x, 1u, 0u, 0u))), ~select(select(vec2<i32>(u_input.b.x, u_input.b.x), u_input.a, any(vec4<bool>(false, false, false, false))), min(vec2<i32>(1i, 2147483647i), vec2<i32>(arg_0, -2147483647i)) ^ vec2<i32>(var_1.d, var_1.a.x), vec2<bool>(true, true)), -47550i, !(!vec3<bool>(u_input.a.x >= 1i, any(vec3<bool>(false, false, false)), true)));
    var var_3 = false || any(!(!vec2<bool>(var_2.e.x, var_2.e.x)));
    var var_4 = var_1;
    return Struct_2(var_1, ~1i, vec2<bool>(true & var_2.e.x, true), Struct_1(~var_2.a.a, vec4<u32>(58673u, 0u, var_0.x ^ var_1.c, _wgslsmith_sub_u32(3844u, _wgslsmith_dot_vec4_u32(vec4<u32>(60779u, var_4.c, 15517u, 4294967295u), var_4.b))), 1u, reverseBits(-1i)), var_2.e.x);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(-1167i);
    let var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_f32(f32(-1f) * -2781f);
    var var_3 = _wgslsmith_mult_vec4_i32(~(-firstLeadingBit(min(vec4<i32>(-53409i, var_0.b, var_0.d.a.x, 2147483647i), vec4<i32>(u_input.b.x, -2147483647i, var_0.a.d, var_0.a.a.x)))), _wgslsmith_add_vec4_i32(-vec4<i32>(var_0.d.d << (var_0.d.b.x % 32u), 2144i, u_input.a.x, ~1i), _wgslsmith_mult_vec4_i32(~vec4<i32>(0i, 5638i, u_input.b.x, -2147483647i), vec4<i32>(-9085i, var_0.a.a.x, 0i, 5137i)) ^ vec4<i32>(0i, var_0.a.d, 54287i >> (var_0.d.c % 32u), u_input.b.x)));
    var_3 = select(countOneBits(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a.x, var_3.x, 70257i, var_0.d.a.x), -vec4<i32>(u_input.a.x, -1i, u_input.a.x, 18083i), -vec4<i32>(var_3.x, -2147483647i, 0i, 34610i))), vec4<i32>(~u_input.a.x, select(var_3.x | 1i, _wgslsmith_div_i32(var_0.d.a.x, u_input.a.x), var_0.e), -813i, u_input.b.x), true) << (vec4<u32>(79527u, u_input.c.x, ~(_wgslsmith_mod_u32(u_input.c.x, u_input.c.x) ^ 40578u), abs(39984u)) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.c.x, _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(1025f, 223f, -2032f), vec3<f32>(616f, 1044f, -666f), false)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-299f, -732f, 1000f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(136f, 702f, -723f))), !select(!var_0.e, true, true))), -4863i, -29500i);
}

