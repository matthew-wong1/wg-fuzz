struct Struct_1 {
    a: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: vec4<bool>,
    c: vec4<u32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: bool,
    b: i32,
    c: bool,
    d: Struct_1,
    e: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_5 {
    a: vec2<i32>,
    b: vec2<u32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: i32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_3(arg_0: Struct_3) -> vec2<u32> {
    var var_0 = Struct_5(vec2<i32>(_wgslsmith_clamp_i32(19241i, 2147483647i, -3002i), ~arg_0.b) & countOneBits(vec2<i32>(0i, -2147483647i | arg_0.b)), _wgslsmith_add_vec2_u32(vec2<u32>(1u, 1u), firstTrailingBit(reverseBits(vec2<u32>(1u, 38143u)))) | ~select(~vec2<u32>(1u, 8241u), ~vec2<u32>(40143u, 0u), arg_0.e.a.xy), 1u);
    let var_1 = var_0.b.x;
    var var_2 = any(select(select(select(arg_0.d.a, arg_0.d.a, vec3<bool>(true, arg_0.e.a.x, false)), vec3<bool>(true, !arg_0.a, all(vec2<bool>(false, true))), false), vec3<bool>(arg_0.e.a.x, true, arg_0.a), !arg_0.e.a));
    let var_3 = arg_0.d.a.x;
    var var_4 = vec2<u32>(~1u, var_0.b.x);
    return reverseBits(firstLeadingBit(vec2<u32>(firstLeadingBit(_wgslsmith_div_u32(55628u, var_4.x)), select(63528u, var_0.c, true))));
}

fn func_2(arg_0: bool, arg_1: i32) -> Struct_5 {
    var var_0 = ~(-9852i);
    return Struct_5(reverseBits(-vec2<i32>(arg_1, u_input.a) ^ vec2<i32>(12285i, arg_1)) >> (_wgslsmith_mult_vec2_u32(func_3(Struct_3(false, arg_1, true, Struct_1(vec3<bool>(false, true, true)), Struct_1(vec3<bool>(true, arg_0, arg_0)))), _wgslsmith_div_vec2_u32(max(vec2<u32>(0u, 0u), vec2<u32>(13668u, 1u)), vec2<u32>(9524u, 4294967295u))) % vec2<u32>(32u)), vec2<u32>(~(~reverseBits(34293u)), 35317u), abs(_wgslsmith_add_u32(29861u, 60533u)));
}

fn func_4(arg_0: Struct_5) -> vec3<i32> {
    var var_0 = 1f;
    var var_1 = Struct_1(!(!select(vec3<bool>(false, true, true), select(vec3<bool>(true, true, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), vec3<bool>(true, false, false))));
    var_1 = Struct_1(select(var_1.a, !(!(!vec3<bool>(false, var_1.a.x, true))), var_1.a));
    let var_2 = 373f;
    var var_3 = !var_1.a.x;
    return _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 1i, ~u_input.a), _wgslsmith_sub_vec3_i32(_wgslsmith_mod_vec3_i32(abs(-vec3<i32>(-11328i, arg_0.a.x, arg_0.a.x)), vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(1i, arg_0.a.x, 23353i, u_input.a), vec4<i32>(21715i, -26559i, -2147483647i, 15920i)), ~17198i, 2147483647i)), -vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0.a, vec2<i32>(u_input.a, arg_0.a.x)), -1i, arg_0.a.x >> (arg_0.c % 32u))), vec3<i32>(arg_0.a.x, ~(~(-arg_0.a.x)), arg_0.a.x));
}

fn func_1() -> Struct_4 {
    var var_0 = select(func_4(func_2(true, _wgslsmith_div_i32(u_input.a, 0i))), ~reverseBits(select(vec3<i32>(-2147483647i, u_input.a, 5270i), vec3<i32>(u_input.a, -5495i, -2147483647i), vec3<bool>(true, false, true)) ^ (vec3<i32>(1i, -1i, u_input.a) ^ vec3<i32>(u_input.a, u_input.a, -4534i))), false);
    var var_1 = Struct_1(vec3<bool>(false, false, true));
    var_1 = Struct_1(select(select(vec3<bool>(!var_1.a.x, any(var_1.a.yz), var_1.a.x), !var_1.a, vec3<bool>(!var_1.a.x, var_1.a.x, true)), select(vec3<bool>(!var_1.a.x, var_1.a.x, select(var_1.a.x, var_1.a.x, true)), select(vec3<bool>(false, false, var_1.a.x), var_1.a, !vec3<bool>(false, var_1.a.x, var_1.a.x)), var_1.a.x), var_1.a));
    var var_2 = Struct_3(true, u_input.a, var_1.a.x, Struct_1(vec3<bool>(all(vec4<bool>(var_1.a.x, var_1.a.x, false, true)), true != any(vec4<bool>(var_1.a.x, true, var_1.a.x, var_1.a.x)), var_1.a.x)), Struct_1(select(!(!var_1.a), vec3<bool>(true, true, true), !all(vec2<bool>(var_1.a.x, var_1.a.x)))));
    let var_3 = vec3<i32>(-1i ^ _wgslsmith_sub_i32((i32(-1i) * -53804i) | u_input.a, var_2.b), 2147483647i, var_2.b);
    return Struct_4(select(!select(select(vec4<bool>(var_1.a.x, var_1.a.x, true, true), vec4<bool>(var_2.c, var_1.a.x, true, true), true), select(vec4<bool>(var_1.a.x, var_2.e.a.x, true, true), vec4<bool>(var_2.c, var_2.e.a.x, true, false), true), var_2.a), !(!select(vec4<bool>(true, true, var_2.c, true), vec4<bool>(false, false, var_1.a.x, var_1.a.x), false)), vec4<bool>(all(!vec2<bool>(var_2.c, var_1.a.x)), select(true, true, false), all(vec2<bool>(var_2.c, var_2.c)) & false, true)), vec4<i32>(-var_3.x & var_0.x, -42288i, 2147483647i, 1i), firstLeadingBit(firstTrailingBit(_wgslsmith_div_vec4_i32(~vec4<i32>(var_3.x, 1i, -33982i, var_0.x), vec4<i32>(var_0.x, -2147483647i, var_2.b, -1i)))), _wgslsmith_dot_vec3_u32(~vec3<u32>(1u, 36833u, ~92288u), _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(abs(1u), ~6645u, firstLeadingBit(4294967295u)))));
}

fn func_5(arg_0: Struct_4) -> Struct_5 {
    var var_0 = true;
    return Struct_5(abs(firstTrailingBit(vec2<i32>(u_input.a, -22456i)) >> ((vec2<u32>(1u, 1u) ^ vec2<u32>(arg_0.d, arg_0.d)) % vec2<u32>(32u))), firstTrailingBit(~(~vec2<u32>(arg_0.d, 2068u) >> ((vec2<u32>(arg_0.d, arg_0.d) | vec2<u32>(arg_0.d, arg_0.d)) % vec2<u32>(32u)))), ~arg_0.d);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(func_1());
    let var_1 = func_1();
    var var_2 = var_0.b;
    var_2 = func_2(var_1.a.x, var_1.b.x).b;
    var_2 = _wgslsmith_div_vec2_u32(countOneBits(vec2<u32>(1u, 15043u)), abs(~func_2(var_1.a.x, u_input.a).b));
    var_2 = var_0.b;
    var var_3 = vec2<bool>(!var_1.a.x, !var_1.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec2_i32(vec2<i32>(var_0.a.x, 0i) << (~vec2<u32>(var_2.x, 1u) % vec2<u32>(32u)), firstLeadingBit(firstTrailingBit(var_1.c.xx))) >> (~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(var_2.x, var_2.x), vec2<u32>(84191u, 4294967295u), var_0.b)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(242f * -211f), var_0.a.x, -1255f);
}

