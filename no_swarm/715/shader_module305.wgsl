struct Struct_1 {
    a: vec3<u32>,
    b: bool,
}

struct Struct_2 {
    a: bool,
    b: Struct_1,
    c: vec3<bool>,
    d: vec3<bool>,
}

struct Struct_3 {
    a: u32,
    b: f32,
    c: vec4<u32>,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_2,
    d: f32,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
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

var<private> global0: i32 = -1i;

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn func_3(arg_0: Struct_1) -> bool {
    var var_0 = Struct_2(true & arg_0.b, Struct_1(~_wgslsmith_mult_vec3_u32(vec3<u32>(arg_0.a.x, u_input.a.x, 81905u), vec3<u32>(31224u, 0u, 4294967295u)) | ((arg_0.a >> (vec3<u32>(1u, 4294967295u, 47809u) % vec3<u32>(32u))) >> (u_input.a % vec3<u32>(32u))), arg_0.b), !vec3<bool>(true, arg_0.b, !any(vec4<bool>(arg_0.b, false, arg_0.b, arg_0.b))), select(select(select(!vec3<bool>(false, arg_0.b, arg_0.b), select(vec3<bool>(arg_0.b, true, false), vec3<bool>(true, arg_0.b, arg_0.b), vec3<bool>(false, true, arg_0.b)), vec3<bool>(arg_0.b, true, arg_0.b)), vec3<bool>(false, true, all(vec4<bool>(arg_0.b, false, arg_0.b, true))), true), vec3<bool>(arg_0.b, all(vec2<bool>(arg_0.b, arg_0.b)) || all(vec2<bool>(arg_0.b, false)), arg_0.b), vec3<bool>(true, true, all(!vec3<bool>(false, arg_0.b, arg_0.b)))));
    var var_1 = vec3<bool>(all(select(var_0.c.yz, select(select(vec2<bool>(arg_0.b, true), vec2<bool>(false, true), vec2<bool>(false, var_0.d.x)), !var_0.c.zz, !var_0.c.xy), any(vec3<bool>(arg_0.b, arg_0.b, arg_0.b)))), all(select(!vec2<bool>(arg_0.b, var_0.c.x), select(var_0.c.yy, !var_0.c.xz, true), var_0.c.xz)), !all(vec3<bool>(arg_0.b, !arg_0.b, arg_0.a.x != 1u)));
    global0 = reverseBits(_wgslsmith_mod_i32(u_input.b.x, firstLeadingBit(~1i << (_wgslsmith_dot_vec3_u32(u_input.a, arg_0.a) % 32u))));
    global0 = _wgslsmith_dot_vec4_i32(vec4<i32>(_wgslsmith_mult_i32((u_input.b.x >> (32000u % 32u)) | u_input.b.x, -10122i), firstTrailingBit(~(-u_input.b.x)), select(-33283i, -10669i << (max(1u, var_0.b.a.x) % 32u), ~33782u < arg_0.a.x), 1i), -vec4<i32>(1i, ~firstLeadingBit(-17613i), -_wgslsmith_div_i32(u_input.b.x, u_input.b.x), ~firstTrailingBit(-22599i)));
    var var_2 = Struct_3(~firstTrailingBit(~_wgslsmith_mod_u32(arg_0.a.x, 0u)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -331f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -188f) - -203f))))), _wgslsmith_sub_vec4_u32(~(~(~vec4<u32>(var_0.b.a.x, 6941u, var_0.b.a.x, var_0.b.a.x))), ~(~abs(vec4<u32>(arg_0.a.x, arg_0.a.x, arg_0.a.x, var_0.b.a.x)))), Struct_1(vec3<u32>(var_0.b.a.x, 23656u << (1u % 32u), var_0.b.a.x >> (9778u % 32u)) & firstLeadingBit(~vec3<u32>(1u, var_0.b.a.x, u_input.a.x)), any(!vec4<bool>(arg_0.b, false, var_0.c.x, false))));
    return var_1.x;
}

fn func_2(arg_0: Struct_4, arg_1: Struct_1) -> Struct_2 {
    return Struct_2(!(!(!any(vec2<bool>(true, arg_0.b.b)))), Struct_1(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, arg_1.a.x, u_input.a.x), vec3<u32>(u_input.a.x, 14113u, arg_0.b.a.x) ^ vec3<u32>(45480u, 42119u, u_input.a.x)) & select(countOneBits(arg_1.a), ~vec3<u32>(46008u, arg_1.a.x, 0u), func_3(Struct_1(arg_0.c.b.a, arg_1.b))), any(arg_0.c.c.yy)), vec3<bool>(!any(vec4<bool>(arg_1.b, true, arg_1.b, false)), true, !all(arg_0.c.c)), arg_0.c.d);
}

fn func_4(arg_0: u32, arg_1: vec3<f32>, arg_2: Struct_2) -> Struct_3 {
    global0 = reverseBits(min(_wgslsmith_clamp_i32(-_wgslsmith_mod_i32(u_input.b.x, 15621i), -3502i, countOneBits(2147483647i & u_input.b.x)), ~2147483647i));
    let var_0 = vec2<u32>(u_input.a.x, 25895u);
    let var_1 = arg_1.xz;
    var var_2 = Struct_3(_wgslsmith_dot_vec3_u32(vec3<u32>(firstLeadingBit(1u), ~_wgslsmith_sub_u32(4294967295u, 4294967295u), _wgslsmith_sub_u32(1u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a.x, arg_0), arg_2.b.a))), vec3<u32>(arg_2.b.a.x, select(4294967295u, _wgslsmith_sub_u32(var_0.x, u_input.a.x), var_1.x < arg_1.x), arg_2.b.a.x)), arg_1.x, ~vec4<u32>(_wgslsmith_sub_u32(~28088u, 63586u), countOneBits(62202u | arg_2.b.a.x), 14877u, _wgslsmith_dot_vec3_u32(abs(arg_2.b.a), u_input.a)), func_2(Struct_4(-_wgslsmith_sub_vec4_i32(vec4<i32>(11791i, 1i, u_input.b.x, -1i), vec4<i32>(u_input.b.x, 0i, u_input.b.x, u_input.b.x)), arg_2.b, func_2(Struct_4(vec4<i32>(38033i, 4646i, u_input.b.x, u_input.b.x), Struct_1(u_input.a, arg_2.a), Struct_2(arg_2.d.x, arg_2.b, arg_2.c, arg_2.d), arg_1.x), arg_2.b), _wgslsmith_f_op_f32(f32(-1f) * -293f)), func_2(Struct_4(vec4<i32>(39702i, 12315i, u_input.b.x, u_input.b.x), arg_2.b, func_2(Struct_4(vec4<i32>(u_input.b.x, -37955i, u_input.b.x, u_input.b.x), Struct_1(arg_2.b.a, arg_2.b.b), Struct_2(false, arg_2.b, vec3<bool>(arg_2.a, arg_2.c.x, arg_2.b.b), vec3<bool>(true, arg_2.b.b, true)), var_1.x), arg_2.b), 799f), arg_2.b).b).b);
    let var_3 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(-721f, _wgslsmith_f_op_f32(-var_1.x), _wgslsmith_f_op_f32(step(-194f, _wgslsmith_f_op_f32(var_2.b * 1194f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(1000f)), _wgslsmith_f_op_f32(1058f - arg_1.x)))))));
    return Struct_3(reverseBits(70631u), 879f, _wgslsmith_div_vec4_u32(select(vec4<u32>(var_2.d.a.x, var_2.d.a.x, 20424u, _wgslsmith_clamp_u32(17437u, var_2.d.a.x, arg_0)), _wgslsmith_div_vec4_u32(vec4<u32>(80576u, var_2.d.a.x, var_2.a, 0u), vec4<u32>(1u, 50823u, 1u, 59119u)) << ((var_2.c ^ vec4<u32>(1u, u_input.a.x, arg_0, 1u)) % vec4<u32>(32u)), select(vec4<bool>(true, var_2.d.b, arg_2.b.b, false), vec4<bool>(true, true, true, true), true)), vec4<u32>(~(~4294967295u), var_0.x, 1u, var_2.c.x)), Struct_1(vec3<u32>(min(u_input.a.x, _wgslsmith_sub_u32(arg_0, arg_2.b.a.x)), arg_2.b.a.x, min(~39430u, arg_2.b.a.x)), func_3(func_2(Struct_4(vec4<i32>(u_input.b.x, -39103i, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(4294967295u, var_0.x, arg_2.b.a.x), true), arg_2, -298f), arg_2.b).b) | func_3(func_2(Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, 0i, u_input.b.x), var_2.d, arg_2, arg_1.x), Struct_1(vec3<u32>(arg_2.b.a.x, 17432u, 4294967295u), var_2.d.b)).b)));
}

fn func_5(arg_0: vec2<u32>, arg_1: vec4<u32>, arg_2: Struct_3) -> Struct_2 {
    global0 = 20517i;
    global0 = u_input.b.x;
    var var_0 = -132f;
    let var_1 = 61436u;
    let var_2 = _wgslsmith_sub_i32(firstLeadingBit(-1i), select(2158i, 1i, all(!select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(arg_2.d.b, true)))));
    return Struct_2(any(vec3<bool>(!arg_2.d.b || true, u_input.b.x > var_2, any(vec3<bool>(arg_2.d.b, true, arg_2.d.b)) && any(vec2<bool>(false, true)))), arg_2.d, select(select(vec3<bool>(arg_2.d.b, func_4(var_1, vec3<f32>(arg_2.b, arg_2.b, arg_2.b), Struct_2(true, arg_2.d, vec3<bool>(arg_2.d.b, true, arg_2.d.b), vec3<bool>(true, false, arg_2.d.b))).d.b, !arg_2.d.b), vec3<bool>(arg_2.b != 633f, arg_2.d.b | false, any(vec2<bool>(false, arg_2.d.b))), false), select(select(vec3<bool>(true, true, arg_2.d.b), !vec3<bool>(arg_2.d.b, false, arg_2.d.b), vec3<bool>(arg_2.d.b, true, false)), vec3<bool>(arg_2.d.b, !arg_2.d.b, all(vec4<bool>(arg_2.d.b, arg_2.d.b, arg_2.d.b, true))), !vec3<bool>(arg_2.d.b, false, false)), any(select(!vec2<bool>(arg_2.d.b, arg_2.d.b), select(vec2<bool>(arg_2.d.b, arg_2.d.b), vec2<bool>(true, false), true), arg_2.d.b))), vec3<bool>(!arg_2.d.b, arg_2.d.b, false));
}

fn func_1() -> bool {
    let var_0 = Struct_4(_wgslsmith_div_vec4_i32(vec4<i32>(~(~u_input.b.x), select(-u_input.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b.x, u_input.b.x, -2147483647i, u_input.b.x), vec4<i32>(2147483647i, -16994i, 14880i, 9717i)), all(vec3<bool>(false, false, true))), u_input.b.x, 1i), firstLeadingBit(_wgslsmith_sub_vec4_i32(-vec4<i32>(-2147483647i, 4136i, 26790i, u_input.b.x), ~vec4<i32>(1i, u_input.b.x, u_input.b.x, u_input.b.x)))), Struct_1(~u_input.a, all(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true)))), func_5(~(~min(u_input.a.xy, vec2<u32>(4294967295u, u_input.a.x))), ~(~_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, u_input.a.x, u_input.a.x), vec4<u32>(4294967295u, u_input.a.x, 52397u, 90052u))), func_4(u_input.a.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(776f, 1496f, 592f) - vec3<f32>(-1032f, -514f, 817f))), func_2(Struct_4(vec4<i32>(12819i, u_input.b.x, 1i, -50516i), Struct_1(vec3<u32>(36903u, u_input.a.x, 17167u), true), Struct_2(false, Struct_1(vec3<u32>(4294967295u, 28966u, u_input.a.x), true), vec3<bool>(false, false, false), vec3<bool>(true, true, false)), 1046f), Struct_1(u_input.a, true)))), -1000f);
    let var_1 = var_0.c.b;
    let var_2 = 0u;
    let var_3 = u_input.b.x;
    var var_4 = var_0.c.b;
    return all(select(vec4<bool>(all(vec2<bool>(false, var_0.c.c.x)), (328f < var_0.d) && !var_4.b, true, func_4(var_2, vec3<f32>(1767f, var_0.d, var_0.d), func_5(vec2<u32>(9629u, var_0.c.b.a.x), vec4<u32>(0u, 1u, var_4.a.x, var_1.a.x), Struct_3(var_0.b.a.x, 655f, vec4<u32>(1u, var_0.c.b.a.x, 17997u, 0u), var_0.b))).d.b), !vec4<bool>(func_4(11818u, vec3<f32>(var_0.d, -335f, var_0.d), Struct_2(true, Struct_1(vec3<u32>(1u, var_1.a.x, 1u), var_1.b), vec3<bool>(var_1.b, var_4.b, false), var_0.c.c)).d.b, var_1.b, true, true), vec4<bool>(~40730u > ~var_1.a.x, var_0.b.b, true, func_4(min(var_2, 19676u), vec3<f32>(var_0.d, -810f, -892f), var_0.c).d.b)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    global0 = u_input.b.x;
    var var_1 = -((~u_input.b.x | 0i) ^ -61444i);
    var var_2 = vec4<u32>(select(_wgslsmith_dot_vec2_u32(u_input.a.yz, _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(u_input.a.xz, vec2<u32>(u_input.a.x, u_input.a.x)), reverseBits(u_input.a.zz))), 0u, !(reverseBits(47231i) >= (u_input.b.x | u_input.b.x))), 536u, _wgslsmith_mod_u32(~u_input.a.x, ~4294967295u << (~u_input.a.x % 32u)) | (u_input.a.x | _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.a.x, 0u, 0u), u_input.a ^ vec3<u32>(55048u, 36521u, u_input.a.x))), func_2(Struct_4(vec4<i32>(~u_input.b.x, ~u_input.b.x, -1i, select(2147483647i, u_input.b.x, true)), Struct_1(select(u_input.a, u_input.a, true), true), func_2(Struct_4(vec4<i32>(23031i, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x), false), Struct_2(true, Struct_1(u_input.a, false), vec3<bool>(false, false, true), vec3<bool>(true, false, false)), -459f), func_5(u_input.a.yx, vec4<u32>(u_input.a.x, 0u, 1u, 28097u), Struct_3(u_input.a.x, 913f, vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, 44915u), Struct_1(u_input.a, true))).b), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -881f))), func_5(firstLeadingBit(u_input.a.zz), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 43729u, 10968u) << (vec4<u32>(u_input.a.x, u_input.a.x, u_input.a.x, u_input.a.x) % vec4<u32>(32u)), ~vec4<u32>(u_input.a.x, 41053u, u_input.a.x, u_input.a.x), abs(vec4<u32>(u_input.a.x, 0u, u_input.a.x, u_input.a.x))), Struct_3(_wgslsmith_dot_vec2_u32(vec2<u32>(49164u, 0u), u_input.a.zx), 682f, vec4<u32>(57806u, 1u, u_input.a.x, u_input.a.x) & vec4<u32>(u_input.a.x, 27171u, 14669u, 115164u), func_2(Struct_4(vec4<i32>(u_input.b.x, u_input.b.x, u_input.b.x, 1i), Struct_1(u_input.a, false), Struct_2(true, Struct_1(u_input.a, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), -864f), Struct_1(u_input.a, true)).b)).b).b.a.x);
    let var_3 = vec3<i32>(~u_input.b.x, -u_input.b.x, -2147483647i);
    var var_4 = _wgslsmith_mult_i32(~(~u_input.b.x), -42935i);
    var var_5 = Struct_3(_wgslsmith_div_u32(7104u, firstTrailingBit(1u >> (0u % 32u)) & 0u), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -407f)), _wgslsmith_f_op_f32(step(_wgslsmith_div_f32(-1334f, -159f), -947f)))), _wgslsmith_sub_vec4_u32(select(max(vec4<u32>(var_2.x, 1u, 1u, var_2.x), _wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, u_input.a.x, 16027u, 1u), vec4<u32>(38583u, u_input.a.x, var_2.x, 4294967295u))), ~(~vec4<u32>(u_input.a.x, u_input.a.x, 48236u, 0u)), true), _wgslsmith_clamp_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(u_input.a.x, 4294967295u, 167570u, 20290u), vec4<u32>(1u, 55444u, 30375u, 13510u)), func_4(u_input.a.x, _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1000f, 482f, 180f), vec3<f32>(-961f, 241f, -443f))), Struct_2(true, Struct_1(vec3<u32>(1u, 29568u, var_2.x), false), vec3<bool>(true, false, false), vec3<bool>(true, false, false))).c, _wgslsmith_add_vec4_u32(vec4<u32>(107570u, var_2.x, u_input.a.x, var_2.x), firstLeadingBit(vec4<u32>(0u, 4294967295u, 53501u, var_2.x))))), func_4(~var_2.x, _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-171f, 751f, 459f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(171f, -835f, 1341f)))))), Struct_2(true, Struct_1(vec3<u32>(74504u, 43963u, 0u), true), vec3<bool>(true, true, true), vec3<bool>(all(vec2<bool>(true, false)), true, true))).d);
    var_4 = -78615i >> (((0u & u_input.a.x) >> (_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(var_5.d.a.x, u_input.a.x, var_2.x, var_5.a), var_5.c), var_5.d.a.x) % 32u)) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(-15216i)) | _wgslsmith_add_i32(0i, var_3.x));
}

