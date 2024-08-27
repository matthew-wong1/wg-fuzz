struct Struct_1 {
    a: f32,
    b: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: vec2<bool>,
}

struct Struct_3 {
    a: Struct_2,
    b: vec3<i32>,
    c: vec2<i32>,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: vec3<i32>,
    c: f32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_3, arg_2: Struct_3, arg_3: Struct_4) -> f32 {
    return _wgslsmith_f_op_f32(ceil(arg_3.c));
}

fn func_2(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-arg_0.a.a.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -635f)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-arg_0.d.a), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_3(vec4<bool>(false, arg_0.a.c.x, arg_0.a.c.x, arg_0.a.c.x), arg_0, arg_0, Struct_4(arg_0, arg_0.b, arg_0.a.b)))), arg_0.d.a)), arg_0.a.c.x)));
    let var_1 = 465f;
    var var_2 = reverseBits(arg_0.d.b);
    let var_3 = arg_0.a.a;
    var_2 = _wgslsmith_dot_vec2_u32(abs(vec2<u32>(31607u, abs(~0u))), _wgslsmith_mult_vec2_u32(~_wgslsmith_mult_vec2_u32(vec2<u32>(102865u, 9560u), ~vec2<u32>(var_3.b, 4294967295u)), abs(~(~vec2<u32>(var_3.b, arg_0.d.b)))));
    return Struct_2(Struct_1(_wgslsmith_f_op_f32(-var_3.a), arg_0.d.b), var_1, !vec2<bool>(var_1 > -813f, arg_0.a.c.x));
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec4<i32>, arg_3: Struct_2) -> u32 {
    return arg_3.a.b;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<f32>) -> Struct_2 {
    let var_0 = select(_wgslsmith_add_vec3_i32(countOneBits(vec3<i32>(u_input.a.x, u_input.a.x, -1i)), countOneBits(~vec3<i32>(1i, u_input.a.x, u_input.a.x))), vec3<i32>(u_input.a.x, 28314i, ~firstLeadingBit(u_input.a.x)), (_wgslsmith_div_i32(u_input.a.x, -1716i) > -u_input.a.x) && true) << (select(~countOneBits(vec3<u32>(1u, 1u, 1u)), vec3<u32>(func_4(_wgslsmith_div_vec2_f32(arg_1, vec2<f32>(arg_1.x, arg_1.x)), arg_0.x, ~vec4<i32>(1i, u_input.a.x, u_input.a.x, u_input.a.x), func_2(Struct_3(Struct_2(Struct_1(arg_1.x, 0u), arg_1.x, vec2<bool>(false, arg_0.x)), vec3<i32>(u_input.a.x, u_input.a.x, u_input.a.x), u_input.a, Struct_1(595f, 55925u)))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(17789u, 59565u, 0u), vec3<u32>(0u, 1u, 53139u)), _wgslsmith_dot_vec3_u32(vec3<u32>(21826u, 77284u, 54982u), vec3<u32>(20787u, 1u, 1u))), 1u), arg_0.x) % vec3<u32>(32u));
    var var_1 = Struct_3(Struct_2(Struct_1(arg_1.x, 1u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_1.x + arg_1.x) - arg_1.x) + _wgslsmith_f_op_f32(func_3(select(vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), Struct_3(Struct_2(Struct_1(-785f, 61134u), arg_1.x, arg_0.yy), vec3<i32>(var_0.x, u_input.a.x, -58188i), vec2<i32>(u_input.a.x, var_0.x), Struct_1(-1657f, 4294967295u)), Struct_3(Struct_2(Struct_1(arg_1.x, 4533u), arg_1.x, vec2<bool>(arg_0.x, false)), vec3<i32>(u_input.a.x, 55329i, var_0.x), vec2<i32>(2147483647i, u_input.a.x), Struct_1(426f, 25391u)), Struct_4(Struct_3(Struct_2(Struct_1(1828f, 4294967295u), arg_1.x, vec2<bool>(false, true)), var_0, var_0.zy, Struct_1(arg_1.x, 4294967295u)), var_0, arg_1.x)))), arg_0.xy), vec3<i32>(_wgslsmith_dot_vec3_i32(var_0 ^ var_0, _wgslsmith_add_vec3_i32(vec3<i32>(var_0.x, 1i, 11970i), vec3<i32>(u_input.a.x, var_0.x, -43478i))), var_0.x, _wgslsmith_div_i32(~(-2732i), u_input.a.x)) & (vec3<i32>(1i, 1i, 1i) >> (_wgslsmith_mult_vec3_u32(select(vec3<u32>(50577u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 52522u), vec3<bool>(false, false, false)), countOneBits(vec3<u32>(4294967295u, 1u, 5863u))) % vec3<u32>(32u))), _wgslsmith_clamp_vec2_i32(select(select(var_0.yz, u_input.a, !vec2<bool>(true, arg_0.x)), u_input.a, vec2<bool>(arg_0.x, !arg_0.x)), var_0.yz, u_input.a), Struct_1(_wgslsmith_f_op_f32(trunc(arg_1.x)), max(select(_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, 116140u), vec2<u32>(4294967295u, 8735u)), 16260u, true), _wgslsmith_clamp_u32(_wgslsmith_div_u32(4294967295u, 42046u), ~11795u, 1u))));
    var var_2 = var_1.a.c.x;
    var_2 = _wgslsmith_dot_vec2_u32(vec2<u32>(0u, _wgslsmith_clamp_u32(~var_1.d.b, _wgslsmith_mult_u32(7627u, 31340u), var_1.a.a.b)), ~_wgslsmith_mod_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(var_1.d.b, 0u), vec2<u32>(0u, var_1.a.a.b)), reverseBits(vec2<u32>(43433u, 53103u)))) != var_1.a.a.b;
    let var_3 = _wgslsmith_clamp_vec3_u32(vec3<u32>(_wgslsmith_mod_u32(var_1.d.b | var_1.d.b, var_1.d.b << (19731u % 32u)) | var_1.a.a.b, 28114u, var_1.a.a.b), firstTrailingBit(vec3<u32>(_wgslsmith_sub_u32(~21674u, var_1.a.a.b), ~var_1.a.a.b ^ (37088u | var_1.a.a.b), (var_1.d.b | var_1.a.a.b) >> (~23007u % 32u))), select(select(_wgslsmith_mod_vec3_u32(select(vec3<u32>(var_1.a.a.b, var_1.d.b, var_1.a.a.b), vec3<u32>(var_1.d.b, var_1.a.a.b, 0u), true), ~vec3<u32>(var_1.a.a.b, var_1.a.a.b, var_1.d.b)), select(vec3<u32>(1u, 4294967295u, var_1.d.b), vec3<u32>(0u, var_1.d.b, 9497u), true) ^ _wgslsmith_mod_vec3_u32(vec3<u32>(var_1.d.b, 1u, var_1.d.b), vec3<u32>(var_1.d.b, var_1.a.a.b, var_1.a.a.b)), true), vec3<u32>(4294967295u, 4294967295u, ~_wgslsmith_mult_u32(var_1.d.b, 35931u)), false));
    return func_2(Struct_3(func_2(Struct_3(Struct_2(var_1.a.a, -1220f, var_1.a.c), firstTrailingBit(var_1.b), vec2<i32>(-1i, -1i), var_1.a.a)), var_0 | vec3<i32>(var_1.c.x, 31512i, _wgslsmith_dot_vec2_i32(var_0.yz, u_input.a)), firstLeadingBit(var_0.zx), var_1.d));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_3(func_1(vec3<bool>(all(vec4<bool>(false, true, true, true)) | true, true, true), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(804f, 2696f) + vec2<f32>(776f, 233f)))) + _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-711f, -887f))))), vec3<i32>(min(firstTrailingBit(2147483647i), -(i32(-1i) * -3413i)), _wgslsmith_div_i32(firstLeadingBit(-34748i) | (u_input.a.x | 2147483647i), firstTrailingBit(-u_input.a.x)), u_input.a.x), firstLeadingBit(_wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.a.x, -1i), vec2<i32>(9423i, u_input.a.x), vec2<i32>(u_input.a.x, u_input.a.x)) & vec2<i32>(u_input.a.x, u_input.a.x)) >> (_wgslsmith_mult_vec2_u32(vec2<u32>(1u, 1u), select(firstTrailingBit(vec2<u32>(18085u, 20469u)), ~vec2<u32>(39853u, 0u), select(vec2<bool>(true, false), vec2<bool>(true, false), true))) % vec2<u32>(32u)), Struct_1(func_1(vec3<bool>(true, true, true), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-400f, 171f) + vec2<f32>(-318f, -1209f)))).a.a, _wgslsmith_dot_vec4_u32(~(~vec4<u32>(1u, 6343u, 63346u, 1737u)), vec4<u32>(1u, 1u, 1u, 1u))));
    var var_1 = _wgslsmith_div_u32(5534u, 15704u);
    var_0 = Struct_3(func_2(Struct_3(var_0.a, var_0.b, u_input.a, Struct_1(var_0.d.a, func_2(Struct_3(var_0.a, var_0.b, vec2<i32>(-2791i, -38241i), Struct_1(var_0.a.a.a, var_0.d.b))).a.b))), vec3<i32>(select(_wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, u_input.a.x), countOneBits(u_input.a)), max(var_0.b.x, u_input.a.x) | _wgslsmith_dot_vec4_i32(vec4<i32>(var_0.b.x, 23176i, -2147483647i, 14568i), vec4<i32>(var_0.b.x, var_0.b.x, 0i, u_input.a.x)), !all(vec2<bool>(var_0.a.c.x, true))), u_input.a.x, -(~u_input.a.x)), _wgslsmith_mod_vec2_i32(select(_wgslsmith_mult_vec2_i32(vec2<i32>(-38121i, u_input.a.x), u_input.a), _wgslsmith_mod_vec2_i32(max(vec2<i32>(u_input.a.x, var_0.c.x), vec2<i32>(var_0.b.x, -1i)), _wgslsmith_clamp_vec2_i32(vec2<i32>(24376i, var_0.b.x), vec2<i32>(var_0.b.x, var_0.b.x), vec2<i32>(0i, u_input.a.x))), select(vec2<bool>(true, var_0.a.c.x), select(var_0.a.c, vec2<bool>(true, var_0.a.c.x), var_0.a.c.x), any(vec3<bool>(var_0.a.c.x, true, var_0.a.c.x)))), ~select(~var_0.c, _wgslsmith_add_vec2_i32(var_0.b.xz, var_0.c), !vec2<bool>(false, var_0.a.c.x))), var_0.d);
    var var_2 = select(!(!(!(!vec4<bool>(true, var_0.a.c.x, var_0.a.c.x, var_0.a.c.x)))), vec4<bool>(!any(func_2(Struct_3(Struct_2(var_0.d, var_0.a.b, var_0.a.c), var_0.b, u_input.a, Struct_1(-179f, var_0.d.b))).c), func_2(Struct_3(Struct_2(var_0.d, -724f, vec2<bool>(false, false)), var_0.b & vec3<i32>(-2147483647i, var_0.c.x, var_0.b.x), u_input.a ^ vec2<i32>(u_input.a.x, u_input.a.x), func_2(Struct_3(Struct_2(Struct_1(var_0.a.b, var_0.a.a.b), var_0.a.b, vec2<bool>(var_0.a.c.x, var_0.a.c.x)), var_0.b, var_0.c, var_0.a.a)).a)).c.x, false, all(!vec4<bool>(false, var_0.a.c.x, false, true)) & true), var_0.a.c.x);
    let var_3 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(var_0.d.a - _wgslsmith_f_op_f32(-var_0.d.a)), var_0.a.b, 446f, 771f)));
    var var_4 = _wgslsmith_add_vec2_i32(u_input.a, u_input.a);
    var_1 = select(reverseBits(~4294967295u), abs(firstLeadingBit(var_0.d.b)), false);
    var var_5 = func_2(Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(min(-1038f, var_3.x)), var_0.a.a.b << (79930u % 32u)), var_0.a.b, select(vec2<bool>(var_2.x, false), var_2.zy, var_2.wy)), vec3<i32>(~(-2147483647i) << (var_0.d.b % 32u), 49833i, ~0i), abs(vec2<i32>(1i, u_input.a.x)), func_1(vec3<bool>(func_2(Struct_3(var_0.a, var_0.b, var_0.c, Struct_1(752f, var_0.d.b))).c.x, u_input.a.x != 3277i, false), vec2<f32>(var_0.a.a.a, _wgslsmith_f_op_f32(round(var_0.a.b)))).a)).a;
    let var_6 = vec3<f32>(_wgslsmith_f_op_f32(max(884f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.b - var_5.a))))), var_3.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -169f), _wgslsmith_f_op_f32(var_5.a * -456f))) - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-982f, -796f))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_6.x) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(2611f)), -1000f)) * -207f), -155f, vec2<u32>(var_0.a.a.b, _wgslsmith_mod_u32(firstLeadingBit(59747u), ~var_0.d.b)));
}

