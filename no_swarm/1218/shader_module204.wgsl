struct Struct_1 {
    a: f32,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
    d: vec2<i32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: i32,
    d: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: vec4<i32>,
    c: Struct_2,
    d: f32,
    e: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: vec3<i32>,
    d: i32,
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

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> vec4<i32> {
    var var_0 = Struct_3(true, 0i, 8727i, Struct_1(arg_1.c.a, -1i));
    var_0 = Struct_3(select(any(vec2<bool>(true, var_0.a)), ~reverseBits(arg_1.b.x) > 4294967295u, any(select(!vec4<bool>(var_0.a, false, var_0.a, var_0.a), vec4<bool>(true, var_0.a, var_0.a, var_0.a), var_0.a))), _wgslsmith_dot_vec2_i32(-_wgslsmith_mult_vec2_i32(vec2<i32>(1i, var_0.c), -vec2<i32>(arg_0.a.x, var_0.c)), select(firstLeadingBit(~u_input.c.yz), max(arg_0.a, u_input.c.zx), var_0.a)), -1i, arg_1.c);
    var_0 = Struct_3(var_0.a, -arg_0.a.x | arg_1.c.b, 22083i, arg_0.c.a);
    var var_1 = arg_0.c.b.x;
    var_1 = ~arg_1.b.x;
    return arg_0.b;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec4<u32>, arg_2: f32, arg_3: bool) -> vec3<bool> {
    let var_0 = true;
    let var_1 = (vec3<u32>(9066u, _wgslsmith_mult_u32(4294967295u & arg_1.x, min(4294967295u, 45686u)), ~_wgslsmith_mod_u32(u_input.b.x, 4294967295u)) | arg_1.wzy) | _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(~(~u_input.b.xzy), _wgslsmith_mod_vec3_u32(firstTrailingBit(u_input.b.xzy), ~vec3<u32>(4294967295u, u_input.b.x, 0u))), arg_1.zyx);
    let var_2 = Struct_1(_wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(f32(-1f) * -1549f)), min(_wgslsmith_add_i32(-18854i, _wgslsmith_sub_i32(u_input.c.x, 18743i)), u_input.c.x));
    let var_3 = ~((i32(-1i) * -7894i) << (~_wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_1.x, 60337u), vec2<u32>(4294967295u, 40413u)), min(vec2<u32>(4294967295u, var_1.x), vec2<u32>(1u, u_input.b.x))) % 32u));
    let var_4 = Struct_4(vec2<i32>(u_input.c.x, u_input.c.x) | u_input.c.yz, _wgslsmith_clamp_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(_wgslsmith_div_i32(var_2.b, 1i), firstLeadingBit(var_3), -1i, _wgslsmith_sub_i32(u_input.d, 70753i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.c.x, 44438i, 11988i, -2147483647i), abs(vec4<i32>(u_input.d, u_input.c.x, -2147483647i, var_3))), func_3(Struct_4(vec2<i32>(var_2.b, -30556i), vec4<i32>(u_input.d, -2147483647i, var_3, -33809i), Struct_2(Struct_1(arg_2, 30918i), vec2<u32>(arg_1.x, var_1.x), Struct_1(var_2.a, -2147483647i), vec2<i32>(-16972i, u_input.c.x)), 200f, var_2.a), Struct_2(var_2, vec2<u32>(1u, var_1.x), Struct_1(-272f, 13842i), vec2<i32>(u_input.d, u_input.c.x)), _wgslsmith_f_op_f32(var_2.a * var_2.a))), firstLeadingBit(firstTrailingBit(~vec4<i32>(var_2.b, 1i, -1i, -6186i))), firstLeadingBit(vec4<i32>(~var_2.b, -1i, -1i, u_input.c.x))), Struct_2(var_2, reverseBits(vec2<u32>(0u, arg_1.x) >> (u_input.a % vec2<u32>(32u))) | (~arg_1.yz >> (~vec2<u32>(0u, arg_1.x) % vec2<u32>(32u))), Struct_1(var_2.a, firstTrailingBit(-u_input.d)), firstTrailingBit(u_input.c.yx & vec2<i32>(u_input.c.x, 2088i)) & u_input.c.yx), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_2.a))) + 348f), 1564f);
    return select(!select(select(vec3<bool>(true, var_0, true), vec3<bool>(false, var_0, false), !arg_0.xzx), select(vec3<bool>(true, true, true), !vec3<bool>(arg_0.x, arg_3, true), vec3<bool>(arg_3, var_0, arg_0.x)), !arg_0.wxz), !select(vec3<bool>(u_input.c.x <= var_3, !arg_3, true), !arg_0.www, arg_0.yyx), true);
}

fn func_4(arg_0: i32, arg_1: vec3<bool>, arg_2: vec3<bool>, arg_3: vec4<f32>) -> vec2<i32> {
    var var_0 = !(!(!select(vec4<bool>(true, arg_2.x, false, arg_1.x), !vec4<bool>(false, true, arg_1.x, arg_1.x), !vec4<bool>(false, true, false, arg_1.x))));
    let var_1 = vec3<bool>(all(!arg_2), all(func_2(select(select(vec4<bool>(true, true, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, arg_2.x, true), true), !vec4<bool>(true, var_0.x, arg_1.x, arg_2.x), false), u_input.b, _wgslsmith_f_op_f32(min(-1000f, _wgslsmith_f_op_f32(f32(-1f) * -1000f))), all(vec3<bool>(true, true, true))).zx), arg_2.x);
    var_0 = vec4<bool>(true, countOneBits(_wgslsmith_mult_i32(select(34980i, arg_0, arg_2.x), 44903i)) != -2147483647i, true, true);
    var var_2 = _wgslsmith_f_op_f32(-1986f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_3.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_3.x) - -447f), true)) - _wgslsmith_f_op_f32(arg_3.x * _wgslsmith_f_op_f32(f32(-1f) * -374f))));
    let var_3 = 1u;
    return u_input.c.xy;
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_1(735f, _wgslsmith_dot_vec2_i32(_wgslsmith_sub_vec2_i32(func_4(27200i, func_2(vec4<bool>(true, true, false, false), u_input.b, 555f, false), vec3<bool>(true, false, false), vec4<f32>(-418f, 911f, -441f, -514f)), firstLeadingBit(firstTrailingBit(vec2<i32>(u_input.d, 1i)))), vec2<i32>(2147483647i, -_wgslsmith_mod_i32(2147483647i, u_input.c.x))));
    var var_1 = Struct_3(any(!(!select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)))), firstLeadingBit(_wgslsmith_clamp_i32(~u_input.d & ~u_input.c.x, _wgslsmith_add_i32(var_0.b, _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, u_input.c.x), u_input.c.yx)), _wgslsmith_sub_i32(-2147483647i, var_0.b))), -9869i, Struct_1(_wgslsmith_f_op_f32(-var_0.a), 15634i));
    let var_2 = ~vec2<i32>(firstLeadingBit(var_0.b) & 21170i, u_input.d | var_1.d.b);
    let var_3 = Struct_3(var_1.a, -2147483647i, u_input.c.x, Struct_1(_wgslsmith_f_op_f32(round(var_1.d.a)), -u_input.d));
    let var_4 = ~_wgslsmith_clamp_u32(u_input.a.x, u_input.b.x, u_input.a.x);
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-606f, _wgslsmith_f_op_f32(-var_1.d.a), !var_3.a)))), ~var_1.d.b);
}

fn func_5(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: u32) -> u32 {
    var var_0 = Struct_3(!(!(!arg_0)), u_input.d ^ _wgslsmith_dot_vec3_i32(~vec3<i32>(-52546i, arg_1.b, arg_1.b), abs(vec3<i32>(arg_2.c.b, arg_2.d.x, 8535i))), _wgslsmith_div_i32(-u_input.c.x, arg_2.d.x), arg_2.c);
    var var_1 = vec3<u32>(arg_2.b.x & arg_3, _wgslsmith_mod_u32(~1u, ~(~arg_3)), u_input.b.x);
    var var_2 = func_1();
    var var_3 = Struct_3(_wgslsmith_sub_i32(arg_2.c.b, -4261i) <= arg_2.c.b, ~1i, 11336i >> (0u % 32u), func_1());
    let var_4 = var_3.d.b;
    return arg_3 >> (max(~firstLeadingBit(~53722u), ~25770u) % 32u);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = abs(_wgslsmith_dot_vec2_i32(select(_wgslsmith_add_vec2_i32(u_input.c.yz, u_input.c.xy), -u_input.c.yx, true), u_input.c.yx >> (u_input.a % vec2<u32>(32u)))) >> (_wgslsmith_add_u32(func_5(true, Struct_1(594f, -27098i << (u_input.b.x % 32u)), Struct_2(func_1(), vec2<u32>(4294967295u, 18119u), Struct_1(-303f, 1i), vec2<i32>(u_input.d, 26447i)), 38224u), 13887u) % 32u);
    var var_1 = reverseBits(u_input.c);
    var_1 = ~vec3<i32>(var_0, 26261i, -1i);
    var var_2 = Struct_3(true, 0i, ~var_0, func_1());
    var var_3 = !vec2<bool>(true, var_2.a);
    let x = u_input.a;
    s_output = StorageBuffer(1u);
}

