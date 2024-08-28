struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: i32,
    d: vec2<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: f32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: f32, arg_3: Struct_3) -> i32 {
    let var_0 = u_input.b.xy;
    var var_1 = max(vec2<u32>(abs(~61933u), arg_0.d.x & 0u) << (vec2<u32>(arg_3.d.d.x, 41623u) % vec2<u32>(32u)), vec2<u32>(1u, arg_0.d.x >> (arg_0.d.x % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(arg_2, -334f, arg_2)))), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(2857f, 1604f, -184f), vec3<f32>(-733f, arg_2, 1446f))))), _wgslsmith_div_vec3_f32(vec3<f32>(arg_2, _wgslsmith_div_f32(arg_3.b, arg_3.b), 519f), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(arg_2, arg_3.b, arg_2) + vec3<f32>(arg_3.b, arg_3.b, arg_2)))))));
    var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(min(arg_2, _wgslsmith_div_f32(1181f, var_2.x))), var_2.x), -1150f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1577f + var_2.x)) * 130f)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(-1161f, var_2.x, var_2.x), vec3<f32>(arg_2, arg_3.b, arg_2))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-156f, 1923f, 1297f)) * vec3<f32>(1f, _wgslsmith_f_op_f32(-arg_2), var_2.x)))));
    var var_3 = arg_3;
    return u_input.a ^ var_0.x;
}

fn func_3() -> vec2<bool> {
    let var_0 = Struct_3(true & select(!all(vec3<bool>(false, false, false)), all(vec4<bool>(true, false, true, false)) != false, any(vec3<bool>(true, true, true))), -628f, vec3<bool>(true, true, true), Struct_1(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.b.x >> (60662u % 32u), abs(u_input.a)), firstLeadingBit(u_input.b.zx), firstTrailingBit(vec2<i32>(u_input.a, u_input.a))), u_input.a, _wgslsmith_add_i32(-329i, u_input.b.x), _wgslsmith_clamp_vec2_u32(firstLeadingBit(vec2<u32>(4294967295u, 1u)), vec2<u32>(abs(81356u), ~4294967295u), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(2282u, 1u), vec2<u32>(16261u, 68923u)), ~vec2<u32>(5444u, 4294967295u))), true));
    var var_1 = Struct_2(reverseBits(~countOneBits(vec3<u32>(3869u, 1u, var_0.d.d.x))) ^ ~select(_wgslsmith_add_vec3_u32(vec3<u32>(var_0.d.d.x, var_0.d.d.x, var_0.d.d.x), vec3<u32>(0u, 23218u, 10411u)), ~vec3<u32>(0u, 4294967295u, 0u), select(var_0.c, var_0.c, true)), Struct_1(~(-var_0.d.a & vec2<i32>(var_0.d.a.x, 50549i)), -(_wgslsmith_div_i32(u_input.b.x, u_input.b.x) ^ func_1(Struct_1(vec2<i32>(u_input.b.x, var_0.d.b), u_input.a, u_input.b.x, var_0.d.d, var_0.d.e), 0i, -495f, var_0)), 0i, vec2<u32>(max(countOneBits(4294967295u), 60152u), _wgslsmith_mult_u32(max(var_0.d.d.x, 2123u), 59897u)), any(!select(vec3<bool>(false, var_0.a, var_0.c.x), var_0.c, vec3<bool>(var_0.c.x, false, false)))), var_0.d, var_0.d);
    var_1 = Struct_2(_wgslsmith_mod_vec3_u32(~(~vec3<u32>(var_0.d.d.x, 1u, 21565u)), _wgslsmith_clamp_vec3_u32(firstLeadingBit(~vec3<u32>(var_1.c.d.x, var_0.d.d.x, 29461u)), vec3<u32>(select(0u, var_1.a.x, false), var_1.b.d.x, select(var_1.c.d.x, var_1.d.d.x, true)), select(var_1.a, ~var_1.a, var_0.c.x))), Struct_1(~min(var_1.b.a << (vec2<u32>(26549u, var_0.d.d.x) % vec2<u32>(32u)), reverseBits(var_0.d.a)), var_0.d.b, 8956i, _wgslsmith_sub_vec2_u32(vec2<u32>(1u << (var_0.d.d.x % 32u), countOneBits(var_0.d.d.x)), ~var_0.d.d), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b) - -330f) >= -391f), Struct_1(var_0.d.a, var_1.d.a.x, u_input.b.x, ~_wgslsmith_mult_vec2_u32(select(vec2<u32>(var_1.b.d.x, 5433u), var_0.d.d, false), var_0.d.d), !var_1.d.e), Struct_1(_wgslsmith_add_vec2_i32(~u_input.b.yz, ~var_1.c.a), u_input.a, -20597i, ~var_0.d.d << ((~vec2<u32>(0u, var_1.c.d.x) >> (_wgslsmith_mult_vec2_u32(var_1.c.d, var_0.d.d) % vec2<u32>(32u))) % vec2<u32>(32u)), var_0.d.e));
    var var_2 = Struct_3(true, _wgslsmith_div_f32(1428f, 1430f), select(var_0.c, !select(!vec3<bool>(var_0.d.e, var_1.d.e, true), !vec3<bool>(false, var_0.c.x, false), !vec3<bool>(var_1.c.e, var_1.c.e, true)), vec3<bool>(false, all(vec3<bool>(var_1.c.e, true, var_1.b.e)), _wgslsmith_f_op_f32(-var_0.b) < _wgslsmith_f_op_f32(-var_0.b))), Struct_1(abs(min(_wgslsmith_add_vec2_i32(var_1.b.a, var_0.d.a), _wgslsmith_mult_vec2_i32(var_1.d.a, var_1.b.a))), 1i, ~var_0.d.a.x, (var_0.d.d << (~vec2<u32>(30671u, var_0.d.d.x) % vec2<u32>(32u))) | max(select(vec2<u32>(86204u, 4294967295u), var_0.d.d, true), reverseBits(vec2<u32>(var_0.d.d.x, 91894u))), var_1.b.e & true));
    var_1 = Struct_2(~(~(~(~var_1.a))), var_1.c, Struct_1(var_1.b.a << (vec2<u32>(7251u, var_0.d.d.x) % vec2<u32>(32u)), 6893i, -2147483647i, ~min(~var_1.c.d, var_0.d.d), false), var_0.d);
    return select(var_0.c.yy, select(vec2<bool>(any(vec2<bool>(true, true)), !(var_2.b == var_2.b)), select(var_0.c.yy, !select(var_2.c.zz, var_2.c.zx, true), true), (true && all(var_0.c.zx)) & var_0.a), var_0.c.yz);
}

fn func_2(arg_0: Struct_2, arg_1: vec4<f32>) -> u32 {
    let var_0 = 80516u;
    let var_1 = arg_0.d;
    let var_2 = vec3<bool>(true, any(vec3<bool>(true, true, arg_0.c.e)), false | (var_1.e != true));
    let var_3 = vec2<u32>(~14938u >> (~(~var_0 << (39152u % 32u)) % 32u), arg_0.a.x);
    let var_4 = Struct_3(!all(!(!vec4<bool>(var_1.e, false, var_1.e, var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-234f, _wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(f32(-1f) * -158f))))), vec3<bool>(all(func_3()), true, !(arg_0.d.d.x <= 9040u) && var_2.x), Struct_1(vec2<i32>(u_input.b.x, ~max(-1i, u_input.b.x)), -2147483647i, ~_wgslsmith_mod_i32(-8570i, reverseBits(var_1.b)), var_1.d, true));
    return abs(min(~(~arg_0.b.d.x ^ 0u), var_3.x));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(vec2<i32>(-2147483647i, -(~func_1(Struct_1(u_input.b.yx, u_input.a, u_input.a, vec2<u32>(28136u, 4294967295u), true), u_input.a, -845f, Struct_3(true, 1478f, vec3<bool>(true, true, true), Struct_1(u_input.b.yx, u_input.b.x, 2147483647i, vec2<u32>(0u, 750u), true))))), u_input.a >> (~29001u % 32u), 1i, vec2<u32>(_wgslsmith_clamp_u32(firstTrailingBit(countOneBits(2959u)), max(func_2(Struct_2(vec3<u32>(4294967295u, 0u, 4294967295u), Struct_1(u_input.b.yz, u_input.b.x, -51708i, vec2<u32>(1u, 0u), true), Struct_1(u_input.b.yz, u_input.a, u_input.b.x, vec2<u32>(0u, 0u), true), Struct_1(u_input.b.yz, u_input.a, -34055i, vec2<u32>(0u, 39060u), false)), vec4<f32>(-492f, 2052f, -1030f, -717f)), abs(81579u)), 1u), _wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 27427u, 90495u), ~vec3<u32>(12038u, 0u, 0u)) >> (~(~28260u) % 32u)), !(all(select(vec3<bool>(false, true, false), vec3<bool>(false, true, false), true)) || true));
    let x = u_input.a;
    s_output = StorageBuffer(~(~abs(var_0.d | var_0.d)));
}

