struct Struct_1 {
    a: vec4<f32>,
    b: vec4<f32>,
    c: vec2<bool>,
    d: vec4<i32>,
    e: i32,
}

struct Struct_2 {
    a: vec4<u32>,
    b: Struct_1,
    c: f32,
    d: bool,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<u32>,
    c: vec3<u32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: f32, arg_1: vec2<bool>) -> vec3<bool> {
    var var_0 = countOneBits(~u_input.c);
    var var_1 = -u_input.c;
    var var_2 = Struct_2(select(countOneBits(vec4<u32>(82417u, u_input.a, 58807u, u_input.a)), vec4<u32>(_wgslsmith_dot_vec2_u32(u_input.e.zz, vec2<u32>(u_input.a, 46271u)), 38527u, 1u, _wgslsmith_dot_vec2_u32(u_input.e.yx, u_input.e.zy)), !select(true, false, arg_1.x)) >> (~vec4<u32>(10524u, firstTrailingBit(u_input.a), 4294967295u, ~u_input.a) % vec4<u32>(32u)), Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, -210f, arg_0, arg_0) + vec4<f32>(-573f, -442f, -166f, arg_0)))), _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_0, 400f, 904f)))))), arg_1, firstLeadingBit(max(vec4<i32>(-1i, u_input.d.x, u_input.d.x, -45399i), firstLeadingBit(vec4<i32>(u_input.c, 2147483647i, -14349i, u_input.c)))), 18961i), 549f, (~(-2147483647i << (u_input.a % 32u)) ^ -2147483647i) > ~2147483647i);
    return vec3<bool>(var_2.b.c.x, -1000f < _wgslsmith_f_op_f32(ceil(-827f)), select(true, any(select(vec4<bool>(true, true, false, true), vec4<bool>(arg_1.x, arg_1.x, arg_1.x, arg_1.x), true)) && false, arg_1.x));
}

fn func_2(arg_0: Struct_2) -> f32 {
    var var_0 = true;
    let var_1 = arg_0;
    var_0 = any(!(!select(vec3<bool>(var_1.d, true, var_1.d), func_3(arg_0.b.b.x, vec2<bool>(false, false)), var_1.b.c.x || true)));
    let var_2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(floor(var_1.c)), 916f, var_1.b.a.x)));
    let var_3 = Struct_2(vec4<u32>(arg_0.a.x, arg_0.a.x, ((var_1.a.x & 27111u) ^ 4294967295u) << (var_1.a.x % 32u), ~_wgslsmith_add_u32(u_input.e.x, var_1.a.x) & 19366u), var_1.b, 1103f, !(!all(select(vec3<bool>(false, arg_0.b.c.x, var_1.d), vec3<bool>(arg_0.b.c.x, arg_0.d, true), arg_0.d))));
    return _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_2.x + 785f) + var_2.x) + 1f), _wgslsmith_f_op_f32(sign(var_2.x)));
}

fn func_1(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: vec4<bool>) -> Struct_1 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(arg_0.a.x, arg_0.a.x))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -265f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.a.x * -804f) + _wgslsmith_f_op_f32(arg_0.b.x * arg_0.b.x))) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(vec4<u32>(4294967295u, 13213u, u_input.b, 40497u), Struct_1(arg_0.a, arg_0.b, arg_0.c, arg_0.d, 2147483647i), arg_0.b.x, false))) * _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.b.x, 1000f)))));
    var_0 = vec3<f32>(-1696f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x)))) + _wgslsmith_f_op_f32(select(1122f, _wgslsmith_f_op_f32(f32(-1f) * -1316f), arg_0.c.x))), arg_0.b.x);
    var var_1 = ~(-_wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_mult_i32(arg_0.d.x, arg_0.e), i32(-1i) * -27483i, -2147483647i, 2147483647i), firstLeadingBit(vec4<i32>(0i, 49053i, arg_1.x, 0i))));
    var var_2 = abs(-39144i);
    var var_3 = Struct_2(firstTrailingBit(~firstTrailingBit(~vec4<u32>(u_input.a, 58440u, u_input.e.x, u_input.b))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1000f))), 687f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-var_0.x), arg_0.a.x, !arg_0.c.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -752f))), arg_0.b, select(!select(vec2<bool>(true, true), vec2<bool>(arg_0.c.x, arg_0.c.x), arg_0.c.x), !arg_0.c, !(arg_2.x || arg_0.c.x)), countOneBits(vec4<i32>(2147483647i, 12563i, ~u_input.d.x, _wgslsmith_mod_i32(u_input.c, 46331i))), _wgslsmith_sub_i32(0i, abs(_wgslsmith_add_i32(-2147483647i, 2147483647i)))), var_0.x, !any(!arg_2.wzw) | false);
    return Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(floor(-1000f)), -2014f, 282f, arg_0.a.x) * arg_0.a))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-850f, arg_0.a.x, -1695f, arg_0.a.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-934f, -356f, -504f, -246f) * vec4<f32>(632f, 1000f, arg_0.a.x, var_3.b.b.x))))), vec2<bool>(any(select(select(vec4<bool>(arg_0.c.x, true, false, false), arg_2, vec4<bool>(false, arg_2.x, false, true)), !vec4<bool>(var_3.d, false, arg_2.x, false), arg_2)), (false || arg_0.c.x) == (all(vec2<bool>(true, arg_2.x)) || true)), var_3.b.d << (max(_wgslsmith_mult_vec4_u32(abs(vec4<u32>(4294967295u, u_input.e.x, var_3.a.x, 20384u)), reverseBits(var_3.a)), ~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.a.x, 4294967295u, u_input.a, 0u), vec4<u32>(107107u, var_3.a.x, var_3.a.x, 38957u))) % vec4<u32>(32u)), -countOneBits(0i));
}

fn func_4(arg_0: f32, arg_1: vec2<bool>, arg_2: Struct_2, arg_3: Struct_2) -> u32 {
    return countOneBits(u_input.b);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(vec4<u32>(select(_wgslsmith_div_u32(select(23999u, 0u, false), 1u), u_input.a, false), ~(_wgslsmith_add_u32(1u, 48852u) & countOneBits(u_input.a)), u_input.b | ~4294967295u, func_4(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<bool>(true, true), Struct_2(_wgslsmith_clamp_vec4_u32(vec4<u32>(20736u, u_input.b, u_input.e.x, 34201u), vec4<u32>(36375u, u_input.b, u_input.a, 95349u), vec4<u32>(82643u, u_input.a, 20087u, u_input.b)), func_1(Struct_1(vec4<f32>(819f, -779f, 647f, 1557f), vec4<f32>(1672f, -2358f, 1783f, -787f), vec2<bool>(false, true), vec4<i32>(-41072i, 0i, u_input.d.x, u_input.c), 7781i), vec4<i32>(u_input.d.x, u_input.c, u_input.d.x, u_input.c), vec4<bool>(true, true, false, false)), -2594f, true), Struct_2(~vec4<u32>(5365u, u_input.a, 0u, u_input.e.x), Struct_1(vec4<f32>(-292f, -636f, -2145f, -390f), vec4<f32>(688f, 1000f, -531f, -1438f), vec2<bool>(false, false), vec4<i32>(29490i, 8894i, u_input.c, u_input.d.x), -1i), -470f, true))), func_1(Struct_1(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-815f, 2259f, 566f, -473f))), vec4<f32>(_wgslsmith_f_op_f32(911f * 120f), -1000f, _wgslsmith_f_op_f32(select(-988f, 1114f, true)), 326f), vec2<bool>(true, all(vec4<bool>(true, true, false, true))), (vec4<i32>(66073i, u_input.c, 2147483647i, 7217i) >> (vec4<u32>(1u, 32063u, 4294967295u, u_input.b) % vec4<u32>(32u))) << (~vec4<u32>(u_input.e.x, 4294967295u, u_input.b, 23955u) % vec4<u32>(32u)), firstLeadingBit(u_input.c)), vec4<i32>(2147483647i, 48169i, 1i, ~max(-2147483647i, -46692i)), !vec4<bool>(any(vec4<bool>(true, false, false, false)), true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(Struct_2(select(vec4<u32>(4294967295u, 56579u, 32874u, 1u), vec4<u32>(u_input.a, 19609u, u_input.e.x, 36423u), vec4<bool>(true, true, true, true)), Struct_1(vec4<f32>(309f, -644f, 721f, 558f), vec4<f32>(446f, -433f, -721f, -696f), vec2<bool>(false, false), vec4<i32>(u_input.d.x, 36267i, u_input.c, u_input.c), u_input.d.x), -856f, true))) * _wgslsmith_f_op_f32(step(-200f, _wgslsmith_f_op_f32(func_1(Struct_1(vec4<f32>(889f, 1095f, -1000f, 1838f), vec4<f32>(1487f, -1305f, -1787f, 960f), vec2<bool>(true, true), vec4<i32>(u_input.d.x, u_input.d.x, -635i, -1i), 2147483647i), vec4<i32>(10580i, 0i, -35038i, u_input.d.x), vec4<bool>(true, false, true, true)).a.x + 100f)))), false);
    let var_1 = func_1(Struct_1(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-919f, var_0.b.a.x, 674f, var_0.b.b.x)), vec4<f32>(var_0.b.b.x, var_0.c, var_0.b.b.x, var_0.b.a.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(-680f, var_0.b.b.x, var_0.b.b.x, var_0.c) * vec4<f32>(-515f, var_0.c, 897f, 607f)), vec4<f32>(-817f, 1f, _wgslsmith_f_op_f32(round(1077f)), var_0.c), var_0.b.c.x)), var_0.b.c, var_0.b.d, _wgslsmith_dot_vec4_i32(vec4<i32>(reverseBits(var_0.b.d.x), -24926i, var_0.b.d.x ^ -2147483647i, 1i), -abs(var_0.b.d))), vec4<i32>(var_0.b.d.x, 17561i, u_input.c, _wgslsmith_sub_i32(68395i, _wgslsmith_dot_vec3_i32(-var_0.b.d.zwy, ~vec3<i32>(var_0.b.e, -5532i, 51945i)))), select(vec4<bool>(func_1(var_0.b, var_0.b.d << (var_0.a % vec4<u32>(32u)), select(vec4<bool>(var_0.d, var_0.b.c.x, var_0.b.c.x, false), vec4<bool>(true, var_0.d, true, var_0.d), vec4<bool>(var_0.d, true, var_0.b.c.x, false))).c.x, var_0.d && (false && var_0.b.c.x), false, var_0.b.c.x), vec4<bool>(var_0.b.c.x, !var_0.b.c.x, -402f < _wgslsmith_f_op_f32(max(1409f, var_0.b.a.x)), !var_0.b.c.x), !vec4<bool>(var_0.d, all(vec2<bool>(var_0.b.c.x, var_0.d)), any(vec3<bool>(var_0.b.c.x, var_0.d, true)), all(vec3<bool>(var_0.b.c.x, var_0.d, true))))).b.yx;
    let var_2 = true;
    let var_3 = var_0.b;
    var var_4 = countOneBits(~_wgslsmith_mult_vec3_u32(var_0.a.zyx, ~(~vec3<u32>(u_input.b, u_input.b, var_0.a.x))));
    var var_5 = 228u;
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~_wgslsmith_dot_vec2_u32(u_input.e.xy, vec2<u32>(0u, 0u))) ^ _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(var_4.x, 0u), 30827u), ~4294967295u), vec2<u32>(_wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(u_input.e.x, var_4.x) >> (vec2<u32>(var_0.a.x, var_4.x) % vec2<u32>(32u))), var_0.a.yz), var_4.x), _wgslsmith_mult_vec3_u32(max(abs(_wgslsmith_mod_vec3_u32(vec3<u32>(var_0.a.x, u_input.a, 70567u), u_input.e)), ~_wgslsmith_add_vec3_u32(var_0.a.zzx, u_input.e)), ~(~var_0.a.wyw & ~var_0.a.zwy)), (var_0.a.x >> (~0u % 32u)) | _wgslsmith_add_u32(1u, 9365u), 0u);
}

