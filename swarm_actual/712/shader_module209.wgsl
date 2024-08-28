struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_1,
    d: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec3<i32>,
    c: bool,
    d: vec2<u32>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: f32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 9>;

var<private> global1: bool;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn func_1(arg_0: f32) -> i32 {
    return firstTrailingBit(u_input.b.x);
}

fn func_3(arg_0: bool) -> u32 {
    let var_0 = global0[_wgslsmith_index_u32(1u, 9u)];
    let var_1 = global0[_wgslsmith_index_u32(4294967295u, 9u)];
    return _wgslsmith_add_u32(~_wgslsmith_dot_vec3_u32(select(~vec3<u32>(4294967295u, 39422u, 49973u), ~vec3<u32>(0u, 4294967295u, 17653u), select(vec3<bool>(var_0.a, var_0.a, arg_0), vec3<bool>(true, var_1.a, var_0.a), vec3<bool>(true, var_1.a, true))), vec3<u32>(1u, 1u, ~5386u)), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~1u, _wgslsmith_clamp_u32(1u, 4294967295u, 52810u), 87186u), reverseBits(vec3<u32>(4294967295u, 35011u, 0u))), firstTrailingBit(firstTrailingBit(0u)) << (~select(33194u, 1u, var_1.a) % 32u)));
}

fn func_2(arg_0: Struct_4, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_4 {
    var var_0 = arg_0.d.x;
    var var_1 = arg_0.a;
    var var_2 = _wgslsmith_mod_vec3_u32(firstTrailingBit(~vec3<u32>(func_3(true), _wgslsmith_sub_u32(arg_0.d.x, 0u), reverseBits(arg_0.d.x))), ~(~_wgslsmith_div_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(0u, arg_0.d.x, 1u), vec3<u32>(44301u, 33954u, 4294967295u)), vec3<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x) << (vec3<u32>(arg_0.d.x, arg_0.d.x, arg_0.d.x) % vec3<u32>(32u)))));
    let var_3 = Struct_2(Struct_1(any(select(select(vec3<bool>(false, false, arg_0.a.a), vec3<bool>(arg_2.c.a, var_1.a, true), true), vec3<bool>(false, false, true), select(vec3<bool>(true, var_1.a, false), vec3<bool>(arg_2.c.a, false, false), vec3<bool>(arg_2.a.a, arg_2.a.a, arg_2.c.a))))), global0[_wgslsmith_index_u32(var_2.x, 9u)], arg_0.a);
    let var_4 = vec2<bool>(false, all(!vec2<bool>(var_1.a, false)));
    return Struct_4(Struct_1(!var_1.a), min(vec3<i32>(max(~u_input.b.x, arg_0.b.x >> (4294967295u % 32u)), 15597i, _wgslsmith_dot_vec2_i32(select(arg_1.zz, vec2<i32>(arg_0.b.x, u_input.b.x), var_4), vec2<i32>(0i, 1i))), ~vec3<i32>(~arg_0.b.x, u_input.a.x, -2680i)), false, _wgslsmith_add_vec2_u32(vec2<u32>(firstLeadingBit(~8013u), ~_wgslsmith_sub_u32(arg_0.d.x, arg_0.d.x)), firstTrailingBit(_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 38233u), ~var_2.zz))), all(select(select(vec3<bool>(false, var_4.x, var_4.x), select(vec3<bool>(arg_2.b.a, var_3.a.a, var_3.c.a), vec3<bool>(false, var_1.a, arg_0.c), vec3<bool>(false, arg_2.c.a, var_1.a)), var_3.a.a | arg_0.c), select(select(vec3<bool>(false, true, arg_0.a.a), vec3<bool>(false, arg_0.e, arg_0.a.a), true), !vec3<bool>(var_3.b.a, arg_0.a.a, true), select(vec3<bool>(false, var_3.c.a, var_3.a.a), vec3<bool>(var_4.x, true, false), true)), select(vec3<bool>(arg_0.c, false, arg_2.b.a), vec3<bool>(arg_2.a.a, arg_0.a.a, var_3.c.a), var_4.x & false))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_2(Struct_4(Struct_1(false), -countOneBits(u_input.b), true, ~vec2<u32>(1u, 1u), select(all(vec4<bool>(true, true, true, true)), any(vec4<bool>(false, false, false, true)) && true, any(vec3<bool>(false, true, false)))), -vec3<i32>(~(-u_input.b.x), func_1(_wgslsmith_f_op_f32(abs(533f))), -reverseBits(-2147483647i)), Struct_2(Struct_1(!all(vec3<bool>(true, true, true))), Struct_1(false), Struct_1(_wgslsmith_clamp_u32(4294967295u, 16920u, 871u) == ~4294967295u)));
    var_0 = Struct_4(Struct_1(true), -u_input.a.zzw, var_0.a.a, var_0.d, !(!((4294967295u << (var_0.d.x % 32u)) == (var_0.d.x | 40330u))));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-911f + _wgslsmith_f_op_f32(_wgslsmith_div_f32(1212f, 2067f) + -249f))), _wgslsmith_f_op_f32(1775f * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(496f, 1000f)) + _wgslsmith_f_op_f32(-1158f + 2675f))))));
    var var_2 = var_0.b.x;
    global1 = countOneBits(-_wgslsmith_mult_i32(~u_input.b.x, 1i)) <= select(min(u_input.b.x, func_2(Struct_4(Struct_1(var_0.c), var_0.b, false, var_0.d, var_0.c), vec3<i32>(-16807i, 33991i, -33556i), Struct_2(var_0.a, Struct_1(var_0.a.a), global0[_wgslsmith_index_u32(var_0.d.x, 9u)])).b.x) ^ countOneBits(-7787i), -1i, all(vec3<bool>(var_0.c, all(vec3<bool>(var_0.c, false, false)), var_0.c)));
    global0 = array<Struct_1, 9>();
    let var_3 = Struct_3(Struct_2(Struct_1(func_2(Struct_4(Struct_1(var_0.e), vec3<i32>(-40332i, var_0.b.x, -29777i), var_0.e, var_0.d, false), ~var_0.b, Struct_2(Struct_1(var_0.e), Struct_1(true), Struct_1(false))).c), func_2(func_2(func_2(Struct_4(var_0.a, var_0.b, false, var_0.d, false), u_input.b, Struct_2(var_0.a, Struct_1(true), Struct_1(true))), -vec3<i32>(-1i, 2147483647i, var_0.b.x), Struct_2(Struct_1(true), global0[_wgslsmith_index_u32(0u, 9u)], var_0.a)), _wgslsmith_div_vec3_i32(reverseBits(var_0.b), max(vec3<i32>(2147483647i, 2147483647i, 0i), u_input.a.xxz)), Struct_2(Struct_1(true), var_0.a, func_2(Struct_4(Struct_1(false), u_input.b, var_0.a.a, vec2<u32>(var_0.d.x, 46706u), true), vec3<i32>(var_0.b.x, var_0.b.x, u_input.b.x), Struct_2(Struct_1(var_0.c), Struct_1(false), Struct_1(true))).a)).a, Struct_1(true)), func_2(func_2(func_2(Struct_4(Struct_1(true), vec3<i32>(-24584i, 11869i, u_input.b.x), var_0.c, var_0.d, false), vec3<i32>(-2147483647i, u_input.b.x, u_input.b.x), Struct_2(global0[_wgslsmith_index_u32(4294967295u, 9u)], Struct_1(false), var_0.a)), vec3<i32>(u_input.a.x, 0i, -1i), Struct_2(Struct_1(var_0.e), global0[_wgslsmith_index_u32(~9319u, 9u)], Struct_1(var_0.a.a))), vec3<i32>(u_input.a.x, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a.x, -1i, 41512i), vec3<i32>(-2147483647i, u_input.a.x, -28017i)) >> (_wgslsmith_mult_u32(var_0.d.x, 5621u) % 32u), ~1i), Struct_2(var_0.a, Struct_1(true), var_0.a)).a, Struct_1(true), var_0.b.x);
    let var_4 = Struct_3(var_3.a, func_2(func_2(func_2(func_2(Struct_4(Struct_1(false), var_0.b, true, vec2<u32>(var_0.d.x, var_0.d.x), true), u_input.a.xzy, Struct_2(global0[_wgslsmith_index_u32(61818u, 9u)], var_0.a, var_3.b)), vec3<i32>(1i, 10693i, 0i), var_3.a), abs(-var_0.b), Struct_2(var_3.a.a, var_0.a, func_2(Struct_4(Struct_1(false), vec3<i32>(2147483647i, var_0.b.x, 24939i), var_0.e, var_0.d, false), u_input.b, var_3.a).a)), -(_wgslsmith_add_vec3_i32(var_0.b, var_0.b) << (abs(vec3<u32>(0u, var_0.d.x, 45730u)) % vec3<u32>(32u))), Struct_2(func_2(Struct_4(global0[_wgslsmith_index_u32(var_0.d.x, 9u)], vec3<i32>(5425i, 15018i, var_3.d), var_0.a.a, vec2<u32>(var_0.d.x, 57458u), var_3.b.a), min(vec3<i32>(u_input.a.x, -2147483647i, var_0.b.x), u_input.b), Struct_2(Struct_1(false), Struct_1(true), var_0.a)).a, func_2(Struct_4(Struct_1(true), var_0.b, var_0.e, vec2<u32>(30142u, 57246u), var_0.c), ~u_input.a.wzw, var_3.a).a, var_0.a)).a, func_2(Struct_4(Struct_1(true), max(u_input.b, vec3<i32>(-18763i, u_input.a.x, var_0.b.x)), all(select(vec3<bool>(var_0.a.a, var_0.a.a, var_0.a.a), vec3<bool>(var_3.c.a, var_0.c, false), true)), func_2(Struct_4(Struct_1(var_3.a.b.a), vec3<i32>(var_3.d, var_0.b.x, 0i), var_0.a.a, vec2<u32>(10242u, 4294967295u), false), _wgslsmith_add_vec3_i32(u_input.b, vec3<i32>(u_input.b.x, var_0.b.x, u_input.b.x)), Struct_2(var_0.a, Struct_1(var_0.e), Struct_1(var_0.c))).d, var_3.b.a), vec3<i32>(i32(-1i) * -23122i, _wgslsmith_dot_vec2_i32(u_input.b.yx, vec2<i32>(1i, u_input.a.x)) ^ -22372i, u_input.a.x), Struct_2(var_0.a, Struct_1(all(vec3<bool>(false, var_0.e, true))), func_2(Struct_4(Struct_1(var_3.a.c.a), u_input.a.xxz, true, vec2<u32>(var_0.d.x, var_0.d.x), true), var_0.b, Struct_2(Struct_1(var_0.a.a), global0[_wgslsmith_index_u32(74689u, 9u)], global0[_wgslsmith_index_u32(51037u, 9u)])).a)).a, u_input.a.x);
    var var_5 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(1f, 1f) * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1000f, 125f) - vec2<f32>(-867f, 574f)), _wgslsmith_f_op_vec2_f32(vec2<f32>(102f, 1176f) + vec2<f32>(-939f, -355f)), var_0.d.x >= var_0.d.x)))) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -691f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -588f) - -619f))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.b.yx, _wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-169f, _wgslsmith_f_op_f32(min(var_5.x, var_5.x)), all(vec3<bool>(false, var_4.c.a, false)))), var_5.x))), _wgslsmith_div_u32(var_0.d.x, firstTrailingBit(_wgslsmith_sub_u32(~var_0.d.x, func_2(Struct_4(var_4.c, var_0.b, var_4.a.a.a, vec2<u32>(var_0.d.x, var_0.d.x), true), var_0.b, var_3.a).d.x))));
}

