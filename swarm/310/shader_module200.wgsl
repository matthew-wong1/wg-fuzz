struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<u32>,
    d: vec2<i32>,
    e: Struct_1,
}

struct Struct_4 {
    a: f32,
    b: u32,
}

struct Struct_5 {
    a: Struct_4,
    b: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn func_2(arg_0: Struct_2, arg_1: vec3<i32>, arg_2: vec4<bool>, arg_3: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_2(arg_0.a);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(round(var_0.a.a))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1526f) - _wgslsmith_f_op_f32(f32(-1f) * -356f)))) + 1868f);
    var var_2 = Struct_5(Struct_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(arg_0.a.a, 279f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.a * -753f))), 67075u), -_wgslsmith_clamp_i32(_wgslsmith_sub_i32(min(-2147483647i, arg_1.x), 17747i), -2394i, ~_wgslsmith_dot_vec4_i32(vec4<i32>(-40360i, 24165i, -10445i, 70475i), vec4<i32>(23362i, arg_1.x, 2147483647i, 19063i))));
    var_0 = arg_0;
    var_0 = arg_0;
    return var_2.a;
}

fn func_3(arg_0: vec4<bool>, arg_1: Struct_4, arg_2: i32, arg_3: u32) -> i32 {
    return -17514i;
}

fn func_4(arg_0: bool, arg_1: vec3<u32>, arg_2: i32) -> Struct_4 {
    let var_0 = vec2<bool>(arg_0, arg_0);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_f32(796f - _wgslsmith_f_op_f32(sign(-1895f))), select(vec2<bool>(var_0.x, true), select(var_0, var_0, var_0), true), !vec3<bool>(var_0.x, arg_0, arg_0))), _wgslsmith_dot_vec2_u32(select(~(~vec2<u32>(30059u, 0u)), abs(firstLeadingBit(vec2<u32>(0u, arg_1.x))), arg_2 != -18249i), abs(firstLeadingBit(_wgslsmith_clamp_vec2_u32(u_input.a, arg_1.yy, vec2<u32>(u_input.a.x, u_input.a.x))))), vec3<u32>(_wgslsmith_dot_vec2_u32(arg_1.xz, vec2<u32>(abs(18168u), 1u)), ~u_input.a.x, u_input.a.x), -_wgslsmith_clamp_vec2_i32(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(u_input.d.x, u_input.e.x), vec2<i32>(-6019i, u_input.c), arg_0), min(u_input.b.yy, vec2<i32>(34570i, -2147483647i)), _wgslsmith_div_vec2_i32(vec2<i32>(58682i, -34898i), vec2<i32>(15555i, u_input.b.x))), _wgslsmith_clamp_vec2_i32(u_input.b.yx & u_input.d.yy, firstTrailingBit(u_input.d.zz), u_input.b.xx >> (vec2<u32>(1725u, 38518u) % vec2<u32>(32u))), u_input.b.wy), Struct_1(_wgslsmith_f_op_f32(abs(1246f)), var_0, vec3<bool>(var_0.x, true, true)));
    var_1 = Struct_3(Struct_2(var_1.a.a), _wgslsmith_sub_u32(_wgslsmith_sub_u32(~65310u, _wgslsmith_mult_u32(arg_1.x, 0u)) & ~4294967295u, _wgslsmith_div_u32(1u, ~reverseBits(arg_1.x))), vec3<u32>(0u, ~firstLeadingBit(1u), _wgslsmith_mult_u32(_wgslsmith_mod_u32(~u_input.a.x, 15585u >> (u_input.a.x % 32u)), _wgslsmith_mod_u32(~59300u, 4294967295u))), vec2<i32>(abs(1i), u_input.e.x), var_1.e);
    var var_2 = ((u_input.b.x ^ ((i32(-1i) * -30100i) >> (_wgslsmith_mod_u32(0u, 33808u) % 32u))) >> (~40307u % 32u)) >> (u_input.a.x % 32u);
    let var_3 = !all(vec4<bool>(arg_0, true, true, var_0.x));
    return func_2(Struct_2(var_1.e), u_input.b.wyx, vec4<bool>(false, true, !(var_3 | var_1.e.b.x), countOneBits(1u) > _wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(41850u, arg_1.x))), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, select(1u, u_input.a.x, var_0.x) ^ 1u), var_1.c.yy));
}

fn func_1(arg_0: vec2<bool>, arg_1: Struct_2) -> Struct_3 {
    var var_0 = func_4(arg_0.x, vec3<u32>(~u_input.a.x | u_input.a.x, ~(4294967295u << (0u % 32u)) ^ ~u_input.a.x, ~firstLeadingBit(u_input.a.x)), max(-func_3(!vec4<bool>(arg_0.x, true, arg_0.x, arg_0.x), func_2(Struct_2(Struct_1(-741f, vec2<bool>(true, false), vec3<bool>(arg_1.a.c.x, true, false))), u_input.d, vec4<bool>(arg_0.x, arg_0.x, arg_0.x, true), u_input.a), select(-2147483647i, -1i, arg_0.x), 1u), -countOneBits(1i)));
    var var_1 = Struct_2(arg_1.a);
    let var_2 = _wgslsmith_sub_u32(22691u & max(countOneBits(func_4(var_1.a.b.x, vec3<u32>(var_0.b, var_0.b, var_0.b), 43643i).b), 24476u), ~((~var_0.b ^ ~55103u) & abs(68854u)));
    let var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-func_2(arg_1, u_input.d, vec4<bool>(arg_0.x, arg_1.a.b.x, arg_1.a.c.x, true), countOneBits(vec2<u32>(u_input.a.x, 32063u))).a), var_0.a));
    var var_4 = Struct_5(func_2(Struct_2(Struct_1(_wgslsmith_f_op_f32(ceil(545f)), !arg_1.a.b, select(arg_1.a.c, vec3<bool>(var_1.a.c.x, arg_1.a.c.x, false), arg_1.a.c))), abs(vec3<i32>(u_input.c & u_input.d.x, u_input.b.x, u_input.b.x | u_input.c)), vec4<bool>(1u < u_input.a.x, arg_0.x, (arg_0.x || arg_1.a.b.x) || var_1.a.c.x, true), u_input.a), firstTrailingBit(-(~_wgslsmith_clamp_i32(-48990i, 1i, u_input.b.x))));
    return Struct_3(arg_1, countOneBits(_wgslsmith_mod_u32(var_2, 1u)), abs(~vec3<u32>(60278u ^ u_input.a.x, var_0.b, 4294967295u)), firstLeadingBit(reverseBits(~u_input.e.zz)) >> (~(~min(u_input.a, vec2<u32>(var_2, 4294967295u))) % vec2<u32>(32u)), Struct_1(_wgslsmith_f_op_f32(f32(-1f) * -639f), !select(!var_1.a.b, !arg_0, vec2<bool>(arg_0.x, true)), select(select(arg_1.a.c, !vec3<bool>(true, arg_0.x, false), var_1.a.c.x), !vec3<bool>(false, arg_1.a.c.x, false), !arg_1.a.c)));
}

fn func_5(arg_0: Struct_3, arg_1: Struct_5, arg_2: u32, arg_3: u32) -> u32 {
    let var_0 = _wgslsmith_f_op_f32(floor(arg_1.a.a));
    let var_1 = _wgslsmith_f_op_f32(f32(-1f) * -570f);
    let var_2 = firstTrailingBit(_wgslsmith_dot_vec3_i32(u_input.b.wzy, u_input.d));
    var var_3 = select(vec3<u32>(761u, 11044u, max(max(_wgslsmith_mult_u32(arg_2, 42667u), 63225u >> (arg_2 % 32u)), ~4294967295u)), _wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(_wgslsmith_add_vec3_u32(~arg_0.c, arg_0.c), vec3<u32>(~66027u, min(0u, 44150u), arg_3)), ~arg_0.c, select(~arg_0.c, ~(arg_0.c & arg_0.c), select(!arg_0.a.a.c, select(vec3<bool>(false, false, arg_0.a.a.c.x), arg_0.e.c, arg_0.a.a.c.x), false))), select(arg_0.a.a.c, !select(select(arg_0.a.a.c, vec3<bool>(arg_0.a.a.c.x, arg_0.e.c.x, true), arg_0.a.a.c), arg_0.a.a.c, true), arg_0.e.c));
    var var_4 = Struct_5(arg_1.a, -2147483647i);
    return ~_wgslsmith_sub_u32(0u, u_input.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<i32>(50890i, -1i);
    var var_1 = Struct_4(796f, ~_wgslsmith_sub_u32(_wgslsmith_div_u32(54239u, u_input.a.x), func_5(func_1(vec2<bool>(false, false), Struct_2(Struct_1(-589f, vec2<bool>(true, true), vec3<bool>(false, true, false)))), Struct_5(Struct_4(-1151f, 4294967295u), -35278i), u_input.a.x ^ u_input.a.x, ~u_input.a.x)));
    let var_2 = _wgslsmith_clamp_u32(var_1.b, 29613u, _wgslsmith_div_u32(~u_input.a.x, ~(~func_2(Struct_2(Struct_1(var_1.a, vec2<bool>(true, false), vec3<bool>(true, true, false))), vec3<i32>(-2147483647i, u_input.d.x, var_0.x), vec4<bool>(false, false, true, false), u_input.a).b)));
    let var_3 = ~(vec3<u32>(~4294967295u, var_1.b, _wgslsmith_dot_vec2_u32(~u_input.a, u_input.a << (vec2<u32>(58795u, u_input.a.x) % vec2<u32>(32u)))) ^ ~_wgslsmith_mult_vec3_u32(~vec3<u32>(var_2, var_1.b, u_input.a.x), vec3<u32>(2505u, 0u, var_2)));
    var var_4 = _wgslsmith_mult_vec4_u32(countOneBits(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, var_1.b, 0u, 0u), min(vec4<u32>(var_3.x, var_2, var_2, 6302u), vec4<u32>(var_2, var_3.x, 1u, 33539u)))) ^ select(~_wgslsmith_add_vec4_u32(vec4<u32>(var_2, 1u, 38161u, 4294967295u), vec4<u32>(var_1.b, var_2, var_1.b, var_2)), ~vec4<u32>(74760u, u_input.a.x, u_input.a.x, var_3.x) | firstLeadingBit(vec4<u32>(28426u, u_input.a.x, u_input.a.x, u_input.a.x)), !select(vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, true), vec4<bool>(false, false, false, false))), ~min(~vec4<u32>(u_input.a.x, 4294967295u, 4294967295u, 0u) << (~vec4<u32>(var_2, var_3.x, 0u, 1u) % vec4<u32>(32u)), vec4<u32>(var_2, _wgslsmith_add_u32(u_input.a.x, var_3.x), u_input.a.x & 53681u, var_3.x)));
    var var_5 = func_1(!vec2<bool>(true, select(true, true, true)), func_1(select(vec2<bool>(true, true), !select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true)), all(func_1(vec2<bool>(false, false), Struct_2(Struct_1(var_1.a, vec2<bool>(true, false), vec3<bool>(true, false, true)))).e.c)), Struct_2(Struct_1(_wgslsmith_f_op_f32(trunc(-1000f)), select(vec2<bool>(false, true), vec2<bool>(false, false), false), vec3<bool>(true, true, true)))).a).a;
    var_4 = vec4<u32>(~0u, u_input.a.x, countOneBits(_wgslsmith_sub_u32(var_1.b, _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, var_4.x, 4294967295u) & var_3, vec3<u32>(u_input.a.x, 1u, var_2)))), 30296u);
    var var_6 = func_1(vec2<bool>(any(var_5.a.c), true), Struct_2(func_1(!(!var_5.a.b), func_1(func_1(vec2<bool>(var_5.a.c.x, var_5.a.b.x), Struct_2(var_5.a)).e.b, Struct_2(var_5.a)).a).a.a)).a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_vec4_u32(~(vec4<u32>(var_1.b, u_input.a.x, var_3.x, var_1.b) >> (abs(vec4<u32>(u_input.a.x, 55850u, 0u, 41787u)) % vec4<u32>(32u))), ~vec4<u32>(_wgslsmith_mult_u32(var_4.x, 1u), ~23682u, ~var_2, _wgslsmith_mult_u32(1u, var_4.x))), _wgslsmith_add_vec4_u32(~(~(vec4<u32>(56148u, var_1.b, var_1.b, u_input.a.x) >> (vec4<u32>(var_3.x, var_2, 0u, u_input.a.x) % vec4<u32>(32u)))), ~max(firstLeadingBit(vec4<u32>(var_4.x, 4294967295u, u_input.a.x, 1u)), ~vec4<u32>(4294967295u, var_1.b, var_4.x, u_input.a.x))), ~(~var_4.x) << (~_wgslsmith_div_u32(var_3.x, ~var_4.x) % 32u));
}

