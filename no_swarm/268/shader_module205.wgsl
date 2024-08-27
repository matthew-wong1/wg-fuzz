struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
}

struct Struct_3 {
    a: i32,
    b: vec4<u32>,
    c: Struct_1,
    d: vec2<i32>,
    e: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: f32,
    d: vec3<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3() -> u32 {
    let var_0 = ~(~max(vec3<u32>(0u, 4294967295u, 0u), vec3<u32>(4294967295u, u_input.b, 4294967295u))) >> (~(~vec3<u32>(u_input.b, ~4294967295u, u_input.b)) % vec3<u32>(32u));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -367f));
    let var_2 = Struct_2(Struct_1(~_wgslsmith_mult_u32(1u, 29227u) > ~var_0.x, any(vec4<bool>(all(vec2<bool>(false, true)), true, var_0.x < 1u, true)), all(vec2<bool>(true, true)), _wgslsmith_f_op_f32(sign(-1291f))), _wgslsmith_mult_vec4_i32(vec4<i32>(_wgslsmith_add_i32(3275i, u_input.a), u_input.c, -5314i, i32(-1i) * -44715i), _wgslsmith_mod_vec4_i32(vec4<i32>(-45304i, u_input.c, u_input.a, -11710i), _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.c, 1i, u_input.c, u_input.c), vec4<i32>(0i, 32775i, u_input.c, u_input.a))) ^ vec4<i32>(firstLeadingBit(u_input.c), 1i, ~(-2147483647i), _wgslsmith_sub_i32(u_input.a, u_input.a))));
    var var_3 = false;
    var_3 = any(!select(!vec4<bool>(var_2.a.c, false, false, var_2.a.c), vec4<bool>(var_2.a.c, var_2.a.a, true, true), true)) || false;
    return 20161u;
}

fn func_2(arg_0: i32, arg_1: Struct_2) -> vec2<bool> {
    var var_0 = u_input.b;
    let var_1 = vec2<u32>(u_input.b, ~32825u) >> (~(vec2<u32>(_wgslsmith_mod_u32(0u, 47503u), _wgslsmith_div_u32(u_input.b, u_input.b)) >> ((_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.b, 1u), vec2<u32>(33225u, 74767u)) << (max(vec2<u32>(u_input.b, 4294967295u), vec2<u32>(u_input.b, u_input.b)) % vec2<u32>(32u))) % vec2<u32>(32u))) % vec2<u32>(32u));
    var_0 = u_input.b;
    let var_2 = firstLeadingBit(~_wgslsmith_mult_i32(u_input.c, -2147483647i) | arg_1.b.x) ^ _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(arg_1.b, arg_1.b), _wgslsmith_sub_i32(-arg_1.b.x, 2147483647i ^ u_input.c) & abs(max(-2147483647i, arg_1.b.x)));
    let var_3 = func_3();
    return !vec2<bool>(arg_1.a.a, !arg_1.a.a);
}

fn func_1() -> Struct_3 {
    var var_0 = select(select(select(select(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)), func_2(u_input.a, Struct_2(Struct_1(false, false, false, -945f), vec4<i32>(u_input.c, u_input.c, -2147483647i, u_input.c))), all(vec4<bool>(false, true, true, false))), vec2<bool>(true, true), vec2<bool>(false, false)), vec2<bool>(true, false), vec2<bool>(all(vec2<bool>(true, false)), true)), func_2(u_input.a, Struct_2(Struct_1(all(vec4<bool>(true, false, false, false)), true, true, -391f), firstTrailingBit(_wgslsmith_div_vec4_i32(vec4<i32>(13697i, 2147483647i, u_input.c, u_input.a), vec4<i32>(-19317i, 2147483647i, 7444i, 0i))))), !select(vec2<bool>(true, true), vec2<bool>(true, true), func_2(-u_input.c, Struct_2(Struct_1(false, false, false, 782f), vec4<i32>(u_input.a, u_input.c, u_input.a, -2147483647i)))));
    var_0 = vec2<bool>(!var_0.x, _wgslsmith_mod_u32(u_input.b, 8458u) != ~1u);
    var var_1 = var_0.x;
    var var_2 = vec3<u32>(25496u, countOneBits(~_wgslsmith_dot_vec3_u32(_wgslsmith_mod_vec3_u32(vec3<u32>(19181u, 1u, 4294967295u), vec3<u32>(3607u, 51136u, 1u)), vec3<u32>(59883u, u_input.b, u_input.b))), u_input.b);
    var_1 = reverseBits(~_wgslsmith_mod_u32(32349u, 30824u)) >= var_2.x;
    return Struct_3(u_input.c, ~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.b, ~var_2.x, ~4294967295u, ~4294967295u), ~vec4<u32>(var_2.x, 75009u, var_2.x, var_2.x) & ~vec4<u32>(0u, u_input.b, 32013u, var_2.x)), Struct_1((var_0.x & any(vec4<bool>(true, var_0.x, false, var_0.x))) != false, true, any(select(!vec4<bool>(var_0.x, var_0.x, true, false), select(vec4<bool>(true, true, false, false), vec4<bool>(var_0.x, var_0.x, var_0.x, var_0.x), var_0.x), false)), -1000f), select(firstTrailingBit(~(vec2<i32>(0i, u_input.a) ^ vec2<i32>(2147483647i, 1i))), abs(-vec2<i32>(1i, 1i)), !(!var_0.x)), Struct_1(any(select(vec3<bool>(true, var_0.x, false), select(vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, var_0.x), vec3<bool>(true, false, true)), var_0.x)), var_0.x | true, true, _wgslsmith_f_op_f32(f32(-1f) * -1326f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = Struct_3(u_input.c, var_0.b, func_1().e, vec2<i32>(var_0.a, ~(u_input.a ^ _wgslsmith_dot_vec3_i32(vec3<i32>(-16130i, -1i, 42519i), vec3<i32>(var_0.a, 9084i, -12582i)))), var_0.c);
    var_0 = func_1();
    var var_1 = var_0.b.x;
    var var_2 = Struct_3(countOneBits(_wgslsmith_clamp_i32(~_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c, 1i, 2694i, var_0.a), vec4<i32>(var_0.d.x, 30303i, 20092i, var_0.a)), _wgslsmith_dot_vec3_i32(vec3<i32>(-20031i, 2147483647i, 0i), max(vec3<i32>(var_0.d.x, 1i, var_0.d.x), vec3<i32>(1i, u_input.a, -41796i))), reverseBits(35453i))), vec4<u32>(~u_input.b, func_1().b.x, ~_wgslsmith_sub_u32(~var_0.b.x, 1u), 1u), func_1().c, var_0.d, Struct_1(any(!vec3<bool>(false, true, var_0.c.c)) != any(select(vec3<bool>(var_0.e.b, true, var_0.e.a), vec3<bool>(var_0.c.c, false, var_0.c.c), false)), true, true, -454f));
    var_1 = _wgslsmith_dot_vec3_u32(~countOneBits(max(vec3<u32>(61116u, var_0.b.x, 44178u), firstTrailingBit(vec3<u32>(u_input.b, var_0.b.x, 14975u)))), ~(~var_0.b.zzy) << (min(~abs(vec3<u32>(2116u, 71833u, 1u)), ~select(var_0.b.zwy, vec3<u32>(var_2.b.x, var_2.b.x, 1u), vec3<bool>(true, var_2.c.b, var_0.c.a))) % vec3<u32>(32u)));
    let x = u_input.a;
    s_output = StorageBuffer(48089i, _wgslsmith_mult_vec4_u32(abs(vec4<u32>(1u, min(u_input.b, u_input.b), ~var_0.b.x, 4415u)), abs(vec4<u32>(select(u_input.b, 0u, true), 1u, abs(var_0.b.x), u_input.b))), func_1().e.d, select(vec3<i32>(-1i) * -vec3<i32>(-30641i, u_input.a, u_input.c), countOneBits(~vec3<i32>(-1786i, 12739i, var_0.d.x)), vec3<bool>(!(!var_2.e.a), !func_1().e.a, true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(select(var_0.e.d, var_0.e.d, true)))) * _wgslsmith_f_op_f32(trunc(-162f)))));
}

