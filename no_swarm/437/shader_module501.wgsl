struct Struct_1 {
    a: bool,
    b: i32,
    c: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: bool,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_1,
    c: bool,
    d: bool,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: Struct_3,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_2,
    c: f32,
    d: Struct_4,
    e: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec2<i32>,
    c: vec4<u32>,
    d: i32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec2<f32>, arg_1: i32, arg_2: vec4<i32>) -> i32 {
    var var_0 = Struct_3(arg_2.xyx, Struct_1(_wgslsmith_clamp_i32(arg_2.x, ~21433i, _wgslsmith_sub_i32(arg_2.x, 15255i)) != (_wgslsmith_dot_vec2_i32(vec2<i32>(29465i, u_input.d), vec2<i32>(2147483647i, 1i)) | 33717i), ~0i >> ((u_input.a << ((u_input.c.x & 0u) % 32u)) % 32u), 54193i), select(_wgslsmith_dot_vec2_i32(u_input.b, vec2<i32>(u_input.d, -1i)) < ~8327i, all(select(vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(true, false), false), vec2<bool>(true, true))), false), all(vec2<bool>(true, true)));
    var_0 = Struct_3(~(select(_wgslsmith_div_vec3_i32(var_0.a, var_0.a), var_0.a, var_0.c) << (~select(u_input.c.zzy, u_input.c.yzx, vec3<bool>(var_0.d, false, true)) % vec3<u32>(32u))), var_0.b, arg_0.x == _wgslsmith_f_op_f32(-arg_0.x), !(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(-1026f))) == arg_0.x));
    var_0 = Struct_3(vec3<i32>(_wgslsmith_add_i32(u_input.e << (49196u % 32u), -1i), var_0.a.x, -_wgslsmith_add_i32(-39477i, var_0.a.x)) >> (firstTrailingBit(~abs(vec3<u32>(18920u, u_input.c.x, 95973u))) % vec3<u32>(32u)), var_0.b, (true || any(vec4<bool>(true, true, var_0.d, true))) && false, any(!vec3<bool>(true, any(vec4<bool>(true, true, true, var_0.d)), true)));
    var_0 = Struct_3(abs(arg_2.xwz), var_0.b, all(select(vec4<bool>(false, all(vec2<bool>(var_0.c, true)), arg_1 == u_input.b.x, true), select(select(vec4<bool>(true, var_0.d, true, true), vec4<bool>(false, var_0.b.a, false, var_0.b.a), vec4<bool>(false, false, var_0.c, true)), vec4<bool>(var_0.c, var_0.b.a, var_0.c, true), !var_0.b.a), vec4<bool>(all(vec3<bool>(true, true, false)), false, true, true))), true);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(arg_0.x * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)), _wgslsmith_f_op_f32(ceil(-1000f))))));
    return ~(~(~abs(0i) & -u_input.b.x));
}

fn func_2(arg_0: u32, arg_1: i32) -> vec2<bool> {
    let var_0 = Struct_3(vec3<i32>(u_input.b.x, -2147483647i, abs(u_input.e) << (~(~36731u) % 32u)), Struct_1(arg_0 > ~1u, _wgslsmith_add_i32(func_3(_wgslsmith_f_op_vec2_f32(-vec2<f32>(108f, 1040f)), -21083i, _wgslsmith_add_vec4_i32(vec4<i32>(-29481i, -2147483647i, u_input.e, u_input.e), vec4<i32>(1i, -2147483647i, -1i, u_input.d))), ~arg_1 | _wgslsmith_sub_i32(-2147483647i, u_input.d)), arg_1), true, true);
    var var_1 = Struct_5(vec2<bool>(true, arg_0 != firstLeadingBit(16992u)), Struct_2(var_0.b, var_0.b.b, var_0.d), _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(-431f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1656f + -253f) - _wgslsmith_f_op_f32(select(-340f, -757f, false))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-355f))) + _wgslsmith_div_f32(-747f, 312f))), Struct_4(!vec3<bool>(true, true, !var_0.b.a), var_0, Struct_3(var_0.a, Struct_1(select(true, false, false), ~1i, _wgslsmith_dot_vec4_i32(vec4<i32>(1i, -19859i, 2147483647i, 17682i), vec4<i32>(arg_1, 2147483647i, -2392i, arg_1))), false, all(vec2<bool>(var_0.c, true)) == true)), Struct_1(all(select(!vec2<bool>(false, var_0.b.a), select(vec2<bool>(true, var_0.d), vec2<bool>(true, var_0.b.a), vec2<bool>(false, false)), arg_1 < var_0.b.b)), var_0.a.x, _wgslsmith_div_i32(reverseBits(firstTrailingBit(-4374i)), _wgslsmith_dot_vec2_i32(u_input.b, u_input.b | u_input.b))));
    var_1 = Struct_5(var_1.d.a.zx, Struct_2(var_1.b.a, 0i, var_0.d), var_1.c, Struct_4(var_1.d.a, var_0, Struct_3((vec3<i32>(52854i, arg_1, 0i) & var_1.d.c.a) & -vec3<i32>(u_input.b.x, var_1.e.c, 36995i), Struct_1(var_0.c, arg_1, var_0.b.c), false, false)), Struct_1(var_1.a.x, -18158i, -u_input.b.x));
    var_1 = Struct_5(vec2<bool>(all(select(select(vec2<bool>(false, var_0.c), vec2<bool>(var_1.b.c, var_1.a.x), vec2<bool>(var_0.b.a, false)), var_1.d.a.xz, -1723f > var_1.c)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(arg_0, 25883u), ~u_input.c.x, u_input.a >> (37553u % 32u)) > arg_0), var_1.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(555f))), Struct_4(var_1.d.a, Struct_3(~reverseBits(vec3<i32>(var_0.a.x, arg_1, -36575i)), var_1.b.a, any(vec4<bool>(false, var_0.c, false, var_0.c)) & false, true), Struct_3(vec3<i32>(~(-2147483647i), ~(-35078i), arg_1), Struct_1(false, ~1i, _wgslsmith_mult_i32(u_input.d, var_1.b.a.c)), true, !var_0.d)), var_1.d.c.b);
    var var_2 = Struct_4(var_1.d.a, var_1.d.c, var_1.d.b);
    return !var_2.a.xx;
}

fn func_1(arg_0: vec4<u32>, arg_1: vec2<i32>, arg_2: f32) -> u32 {
    var var_0 = vec2<bool>(select(false, !(!all(vec4<bool>(false, true, false, false))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(721f - 313f))) == _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(599f + arg_2) - _wgslsmith_f_op_f32(627f * arg_2))), all(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(vec4<bool>(true, true, true, true), vec4<bool>(false, true, false, false), select(vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), false)))));
    var_0 = !select(func_2(u_input.c.x, -arg_1.x), vec2<bool>(!(u_input.e > u_input.b.x), false), var_0.x);
    var var_1 = _wgslsmith_f_op_f32(arg_2 - -1000f);
    let var_2 = _wgslsmith_div_vec4_f32(vec4<f32>(-294f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2 + arg_2)), 148f, _wgslsmith_f_op_f32(arg_2 - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(193f))))), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(223f, arg_2), _wgslsmith_f_op_f32(-436f - -1551f), arg_2 <= arg_2)), -1438f, 934f, _wgslsmith_f_op_f32(1400f + _wgslsmith_f_op_f32(f32(-1f) * -1047f))) * vec4<f32>(-953f, arg_2, _wgslsmith_div_f32(_wgslsmith_f_op_f32(arg_2 - -1448f), _wgslsmith_f_op_f32(734f - arg_2)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(abs(-165f)))))));
    var_0 = func_2(abs(4294967295u), _wgslsmith_sub_i32(u_input.e, -2147483647i));
    return _wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_add_u32(0u >> (arg_0.x % 32u), _wgslsmith_mod_u32(45432u, u_input.a)), arg_0.x), _wgslsmith_mod_vec2_u32(_wgslsmith_mult_vec2_u32(u_input.c.yy, u_input.c.yz), _wgslsmith_div_vec2_u32(arg_0.wy | u_input.c.xz, ~u_input.c.ww))), 0u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!any(vec2<bool>(true, all(vec4<bool>(true, false, true, true)))), max(u_input.d, select(firstLeadingBit(u_input.b.x), _wgslsmith_mult_i32(_wgslsmith_div_i32(0i, 12569i), u_input.b.x), true)), select(firstTrailingBit(u_input.b.x ^ countOneBits(u_input.b.x)), -1i, true));
    var_0 = Struct_1(select(19527i, i32(-1i) * -71851i, var_0.a) > -(~28618i >> (_wgslsmith_sub_u32(u_input.c.x, u_input.a) % 32u)), max(1i << (u_input.c.x % 32u), var_0.b), 2147483647i >> (_wgslsmith_mod_u32(_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) | func_1(vec4<u32>(56969u, 32305u, 0u, u_input.c.x), vec2<i32>(var_0.c, 2147483647i), 566f), ~(~1u)) % 32u));
    var var_1 = Struct_4(vec3<bool>((all(vec4<bool>(var_0.a, true, var_0.a, var_0.a)) || true) && var_0.a, !func_2(~18766u, var_0.c).x, all(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(true, false), true))), Struct_3(-(vec3<i32>(-28119i, var_0.b, 2147483647i) << (vec3<u32>(u_input.a, 4294967295u, u_input.c.x) % vec3<u32>(32u))), Struct_1((var_0.b << (u_input.c.x % 32u)) < (i32(-1i) * -27886i), -30834i, max(-22911i, var_0.c >> (1u % 32u))), true, 0i >= u_input.d), Struct_3(_wgslsmith_mult_vec3_i32(vec3<i32>(-2147483647i, u_input.b.x, 1i), vec3<i32>(2147483647i, var_0.b, _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.d, -21868i, u_input.d), vec3<i32>(var_0.c, 3078i, 43989i)))), Struct_1(true, -2147483647i, reverseBits(-51379i)), true, true));
    var_1 = Struct_4(!(!var_1.a), Struct_3(vec3<i32>(u_input.d, -1i, abs(u_input.e >> (u_input.c.x % 32u))), var_1.c.b, false, true), var_1.c);
    var var_2 = countOneBits(var_0.b);
    var_0 = Struct_1(any(vec2<bool>(true, true)), _wgslsmith_add_i32(-30255i, u_input.b.x >> (25798u % 32u)), ~u_input.e);
    let var_3 = ~var_1.c.a.yy & vec2<i32>(firstLeadingBit(~(~u_input.d)), u_input.b.x);
    var_1 = Struct_4(!var_1.a, Struct_3(var_1.b.a, var_1.b.b, all(!var_1.a.xy), select(~u_input.c.x <= u_input.c.x, !(!var_1.b.d), func_2(max(1u, 1u), abs(var_1.c.a.x)).x)), Struct_3(var_1.b.a, Struct_1(var_1.c.b.a, -var_1.c.a.x, 0i), false, var_0.a));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u, vec2<u32>((~u_input.a | ~u_input.a) << (~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, 0u), u_input.c.yw) % 32u), 55872u));
}

