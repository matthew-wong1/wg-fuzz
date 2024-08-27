struct Struct_1 {
    a: vec4<f32>,
    b: f32,
    c: bool,
    d: vec4<u32>,
    e: bool,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct Struct_3 {
    a: bool,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: Struct_1,
}

struct Struct_5 {
    a: i32,
    b: Struct_3,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 18802u;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn func_3(arg_0: i32, arg_1: bool) -> i32 {
    let var_0 = _wgslsmith_dot_vec4_u32(vec4<u32>(~_wgslsmith_mult_u32(1951u, _wgslsmith_mult_u32(81826u, u_input.a.x)), min(u_input.c.x, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.c.x, 3752u, u_input.b), vec3<u32>(4294967295u, 47227u, 1u) << (vec3<u32>(0u, u_input.a.x, u_input.c.x) % vec3<u32>(32u)))), 33146u, u_input.b), _wgslsmith_mult_vec4_u32(_wgslsmith_sub_vec4_u32(select(vec4<u32>(54526u, u_input.c.x, 4294967295u, 1u), vec4<u32>(34976u, 80956u, u_input.b, u_input.a.x), true) << ((vec4<u32>(4294967295u, 30487u, u_input.a.x, u_input.b) | vec4<u32>(48658u, u_input.b, u_input.a.x, 0u)) % vec4<u32>(32u)), vec4<u32>(~1u, u_input.b, ~0u, ~88676u)), _wgslsmith_mod_vec4_u32(min(vec4<u32>(u_input.b, u_input.a.x, u_input.b, 0u), ~vec4<u32>(24370u, u_input.b, 4294967295u, 0u)), countOneBits(firstTrailingBit(vec4<u32>(36549u, 30267u, 89607u, 17785u))))));
    var var_1 = countOneBits(_wgslsmith_add_vec4_i32(~min(vec4<i32>(arg_0, -5328i, -1i, arg_0), vec4<i32>(22322i, -4114i, -65341i, arg_0)), (vec4<i32>(1i, -65079i, arg_0, arg_0) | vec4<i32>(28115i, arg_0, -2147483647i, -2147483647i)) ^ ~vec4<i32>(arg_0, 1i, arg_0, arg_0))) | abs(-_wgslsmith_mult_vec4_i32(vec4<i32>(0i, 30997i, arg_0, 1i), -vec4<i32>(-7167i, 2147483647i, arg_0, arg_0)));
    let var_2 = vec3<u32>(_wgslsmith_sub_u32(_wgslsmith_sub_u32(u_input.b, ~_wgslsmith_add_u32(var_0, u_input.a.x)), countOneBits(4294967295u)), var_0, _wgslsmith_dot_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(abs(var_0), ~var_0), u_input.c.x, max(63094u, 7618u), reverseBits(1u) | _wgslsmith_add_u32(1u, var_0)), firstTrailingBit(vec4<u32>(var_0 & u_input.b, _wgslsmith_sub_u32(55573u, 1u), ~u_input.b, 60302u))));
    global0 = var_0;
    var var_3 = var_2;
    return var_1.x;
}

fn func_2() -> vec4<f32> {
    let var_0 = false;
    var var_1 = vec3<i32>(func_3(_wgslsmith_mult_i32(_wgslsmith_add_i32(countOneBits(0i), -1i), 50406i), false), reverseBits(-10930i), -47767i);
    let var_2 = Struct_5(-_wgslsmith_dot_vec2_i32(vec2<i32>(19312i, var_1.x) ^ ~vec2<i32>(-1i, var_1.x), var_1.yx), Struct_3(false == all(select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), true)), abs(select(-vec2<i32>(var_1.x, -23612i), var_1.xy, select(vec2<bool>(true, true), vec2<bool>(false, var_0), false))), Struct_2(~(vec4<u32>(u_input.c.x, u_input.a.x, 4294967295u, u_input.c.x) ^ vec4<u32>(0u, 1907u, 0u, 48901u))), Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1134f, 828f, 1047f, 339f)) + vec4<f32>(1400f, -1000f, 190f, -445f)), _wgslsmith_f_op_f32(574f + _wgslsmith_f_op_f32(-122f - 318f)), true, ~_wgslsmith_div_vec4_u32(vec4<u32>(0u, u_input.c.x, u_input.b, u_input.a.x), vec4<u32>(u_input.c.x, u_input.b, u_input.b, 4294967295u)), var_0), all(!select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), vec2<bool>(true, var_0)))), var_0);
    var var_3 = select(_wgslsmith_clamp_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, var_1.x), vec2<i32>(-31668i, var_1.x)), var_1.x), 1i), _wgslsmith_mult_vec4_i32(~vec4<i32>(var_1.x, var_2.b.b.x, 0i, -2147483647i), vec4<i32>(max(66071i, var_1.x), i32(-1i) * -1i, min(var_2.b.b.x, -4705i), reverseBits(1867i))), _wgslsmith_add_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(-2147483647i, 0i, 0i, var_1.x), firstLeadingBit(vec4<i32>(0i, 1i, 39725i, -15261i))), ~(vec4<i32>(var_1.x, 6987i, 57534i, var_2.b.b.x) | vec4<i32>(2147483647i, 36937i, -15512i, var_1.x)))), select(-vec4<i32>(var_2.b.b.x, var_1.x, var_1.x, var_1.x) << (~vec4<u32>(79625u, 7108u, 14633u, u_input.c.x) % vec4<u32>(32u)), vec4<i32>(max(-21335i, -28371i), 1i, -2147483647i, var_2.a), any(!vec3<bool>(var_2.c, var_0, false))) | vec4<i32>(9379i, 1i, select(-23028i, _wgslsmith_add_i32(38909i, var_1.x), false), _wgslsmith_mult_i32(var_2.b.b.x, ~2147483647i)), vec4<bool>(!any(!vec2<bool>(false, var_0)), false, !var_0, any(select(vec4<bool>(true, true, var_0, var_2.c), vec4<bool>(var_2.c, var_2.b.d.e, var_0, false), !vec4<bool>(false, true, true, var_2.c)))));
    var var_4 = Struct_5(~var_3.x, Struct_3(!(!var_2.b.d.e), -_wgslsmith_mult_vec2_i32(countOneBits(var_3.yw), var_1.yx), Struct_2(_wgslsmith_sub_vec4_u32(vec4<u32>(95296u, 0u, var_2.b.c.a.x, 73416u), firstLeadingBit(var_2.b.d.d))), var_2.b.d, true), (u_input.a.x != (36259u >> ((72978u >> (u_input.c.x % 32u)) % 32u))) && false);
    return var_4.b.d.a;
}

fn func_1(arg_0: Struct_2, arg_1: bool, arg_2: vec3<bool>, arg_3: i32) -> StorageBuffer {
    var var_0 = vec3<bool>(arg_2.x, arg_2.x, true);
    global0 = _wgslsmith_mod_u32(1u, ~arg_0.a.x);
    var var_1 = arg_2.x;
    var var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(266f, -1656f, 772f, 1016f)) * _wgslsmith_div_vec4_f32(vec4<f32>(-1086f, 892f, 2257f, 1583f), vec4<f32>(589f, -107f, 1448f, -619f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1407f, 515f, -467f, -176f))) + _wgslsmith_f_op_vec4_f32(func_2())), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-751f, -232f) + _wgslsmith_f_op_f32(floor(-1266f))))), var_0.x, _wgslsmith_sub_vec4_u32(_wgslsmith_mult_vec4_u32(~(vec4<u32>(4294967295u, u_input.b, 0u, arg_0.a.x) >> (vec4<u32>(53084u, 11125u, arg_0.a.x, 8221u) % vec4<u32>(32u))), (arg_0.a >> (vec4<u32>(8628u, arg_0.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u))) ^ arg_0.a), min(arg_0.a, arg_0.a)), false);
    var var_3 = any(vec3<bool>(true, all(select(!vec4<bool>(false, true, var_2.c, arg_2.x), vec4<bool>(arg_2.x, false, true, true), !vec4<bool>(var_2.c, true, false, false))), all(vec3<bool>(true, arg_1, all(vec3<bool>(var_2.c, arg_2.x, arg_1))))));
    return StorageBuffer(_wgslsmith_mult_i32(~(-16035i) & arg_3, arg_3) << (~u_input.a.x % 32u));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(Struct_2(vec4<u32>(~(u_input.a.x >> (u_input.c.x % 32u)), 23821u, _wgslsmith_dot_vec2_u32(~vec2<u32>(1u, u_input.a.x), ~u_input.a), 13803u)), false, vec3<bool>(true, true, false), 0i);
}

