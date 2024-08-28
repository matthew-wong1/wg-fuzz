struct Struct_1 {
    a: i32,
    b: bool,
    c: vec4<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec4<bool>,
}

struct Struct_3 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn func_3(arg_0: Struct_2) -> vec3<i32> {
    let var_0 = firstLeadingBit(vec4<i32>(1i << (_wgslsmith_sub_u32(_wgslsmith_add_u32(13956u, u_input.b.x), u_input.b.x) % 32u), _wgslsmith_mult_i32(1i, _wgslsmith_add_i32(~18768i, -arg_0.b.a)), arg_0.a.a, 0i));
    let var_1 = Struct_3(arg_0);
    let var_2 = _wgslsmith_f_op_f32(-2958f - _wgslsmith_div_f32(1729f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2207f * 995f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1410f)), false))));
    var var_3 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_2, 1155f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(2450f, -1000f) + vec2<f32>(262f, var_2))))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(var_2, var_2) + vec2<f32>(-343f, 326f))) * vec2<f32>(_wgslsmith_f_op_f32(-var_2), _wgslsmith_f_op_f32(round(-688f))))), vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(925f)))) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_2 - var_2), _wgslsmith_f_op_f32(trunc(var_2)))), var_2)));
    var var_4 = !(!arg_0.a.c.zx);
    return _wgslsmith_div_vec3_i32(~min(max(var_0.wzw, _wgslsmith_mod_vec3_i32(var_0.zzx, vec3<i32>(var_0.x, var_1.a.b.a, -27613i))), ~abs(var_0.wzw)), max(var_0.xzx, var_0.xyx));
}

fn func_2(arg_0: vec2<i32>, arg_1: u32) -> Struct_2 {
    var var_0 = _wgslsmith_sub_u32(arg_1 | _wgslsmith_clamp_u32(arg_1, _wgslsmith_add_u32(u_input.b.x, arg_1), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.b.x, arg_1), u_input.b.x << (0u % 32u))), 0u);
    let var_1 = Struct_1(arg_0.x, false, !vec4<bool>(false, any(select(vec4<bool>(false, false, false, false), vec4<bool>(false, false, false, false), vec4<bool>(true, false, true, true))), arg_0.x > abs(u_input.a), select(all(vec2<bool>(false, false)), true, false)));
    var var_2 = _wgslsmith_mod_vec3_i32(vec3<i32>(11689i, 1i, var_1.a), func_3(Struct_2(var_1, var_1, !var_1.c)) ^ select(_wgslsmith_div_vec3_i32(vec3<i32>(-29407i, -37022i, -252i), vec3<i32>(arg_0.x, -21606i, -25360i)), _wgslsmith_mod_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(0i, 2147483647i, arg_0.x), vec3<i32>(var_1.a, var_1.a, u_input.a), vec3<i32>(arg_0.x, u_input.a, 4942i)), _wgslsmith_mod_vec3_i32(vec3<i32>(0i, arg_0.x, arg_0.x), vec3<i32>(u_input.a, arg_0.x, 14257i))), false));
    var_0 = 54033u;
    let var_3 = 1i;
    return Struct_2(Struct_1(2261i, 2147483647i > (countOneBits(var_3) & u_input.a), select(var_1.c, vec4<bool>(!var_1.b, var_1.b, true, all(vec4<bool>(var_1.b, false, false, var_1.c.x))), var_1.b)), Struct_1(_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec2_i32(arg_0, vec2<i32>(arg_0.x, -38956i)), var_1.a, 1i), vec3<i32>(u_input.a, ~var_2.x, _wgslsmith_clamp_i32(var_2.x, arg_0.x, u_input.a))), false, vec4<bool>(_wgslsmith_f_op_f32(f32(-1f) * -2225f) >= _wgslsmith_f_op_f32(step(163f, -503f)), var_1.b, all(select(vec2<bool>(true, true), var_1.c.zx, true)), false)), var_1.c);
}

fn func_1(arg_0: i32, arg_1: i32, arg_2: vec3<u32>, arg_3: u32) -> Struct_2 {
    return func_2(vec2<i32>(select(_wgslsmith_mod_i32(u_input.a, u_input.a), arg_0, true | any(vec3<bool>(true, true, true))), ~arg_1), firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 1u, 44267u), _wgslsmith_mult_vec3_u32(vec3<u32>(81070u, 0u, arg_2.x) | u_input.b.xwz, ~vec3<u32>(arg_3, u_input.b.x, arg_3)))));
}

fn func_4(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~firstTrailingBit(vec2<u32>(u_input.b.x, abs(u_input.b.x | u_input.b.x)));
    var var_1 = Struct_2(Struct_1(-24230i ^ ~(~u_input.a), arg_0.c.x, select(vec4<bool>(any(arg_0.a.c.xy), arg_0.b.a != u_input.a, true, any(arg_0.c.ywy)), !(!arg_0.a.c), arg_0.c)), func_1(_wgslsmith_mod_i32(2147483647i, countOneBits(arg_0.a.a)), -5447i, vec3<u32>(_wgslsmith_clamp_u32(_wgslsmith_add_u32(var_0.x, 15777u), 63992u >> (var_0.x % 32u), _wgslsmith_mod_u32(1u, 1u)), u_input.b.x, 19016u), ~0u).a, func_2(_wgslsmith_div_vec2_i32(_wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(-1i, u_input.a), vec2<i32>(-43188i, arg_0.a.a)), _wgslsmith_add_vec2_i32(vec2<i32>(1i, u_input.a), vec2<i32>(-4703i, arg_0.b.a)), min(vec2<i32>(arg_0.a.a, arg_0.a.a), vec2<i32>(u_input.a, arg_0.b.a))), vec2<i32>(u_input.a | arg_0.a.a, abs(arg_0.b.a))), ~_wgslsmith_mod_u32(~var_0.x, ~4294967295u)).c);
    var_1 = func_2(vec2<i32>(_wgslsmith_dot_vec2_i32(-vec2<i32>(u_input.a, var_1.b.a) << (~vec2<u32>(var_0.x, 23006u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_i32(vec2<i32>(u_input.a, 20897i), vec2<i32>(0i, -15775i)) ^ ~vec2<i32>(2147483647i, 2574i)), ~(_wgslsmith_sub_i32(0i, -2147483647i) | -u_input.a)), var_0.x & (_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(var_0.x, u_input.b.x, 70407u, 26715u)), vec4<u32>(0u, u_input.b.x, var_0.x, u_input.b.x)) & 1u));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-244f * 1349f), 739f)) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-665f + 759f)) + 1255f)));
    var var_3 = reverseBits(~(~vec4<u32>(var_0.x, countOneBits(3912u), 28052u << (0u % 32u), ~var_0.x)));
    return arg_0;
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> Struct_1 {
    var var_0 = select(!(!vec3<bool>(!arg_1.a.b.b, arg_1.a.c.x, any(vec3<bool>(arg_1.a.b.b, arg_1.a.b.c.x, true)))), !func_2(vec2<i32>(~arg_0, _wgslsmith_dot_vec2_i32(vec2<i32>(arg_1.a.a.a, -2147483647i), vec2<i32>(u_input.a, 34832i))), 0u).a.c.zzy, !arg_1.a.b.b | arg_1.a.b.b);
    var var_1 = ~(vec3<i32>(-1i) * -(~reverseBits(vec3<i32>(-2147483647i, -2147483647i, -988i))));
    var var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-1000f))), -1666f)), _wgslsmith_f_op_f32(f32(-1f) * -1776f));
    let var_3 = func_4(Struct_2(func_2(-vec2<i32>(var_1.x, 38178i), _wgslsmith_mod_u32(64725u, u_input.b.x)).a, Struct_1(var_1.x, !any(arg_1.a.b.c.zy), vec4<bool>(var_0.x, false, any(arg_1.a.c.yw), false)), !arg_1.a.a.c)).a;
    let var_4 = vec4<u32>(0u, 12674u, u_input.b.x, u_input.b.x);
    return func_2(min(var_1.yy, var_1.xx), firstLeadingBit(u_input.b.x)).a;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(func_5(2147483647i, Struct_3(func_4(func_1(u_input.a, -11595i, vec3<u32>(25032u, u_input.b.x, u_input.b.x), 4294967295u)))), func_1(_wgslsmith_mod_i32(-u_input.a >> (u_input.b.x % 32u), ~u_input.a), _wgslsmith_div_i32(u_input.a, u_input.a << (u_input.b.x % 32u)) >> (u_input.b.x % 32u), vec3<u32>(~(u_input.b.x >> (56271u % 32u)), u_input.b.x, 4294967295u), max(firstLeadingBit(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.zz)), 1u)).a, !(!(!func_1(22083i, u_input.a, u_input.b.xxx, 0u).b.c)));
    let var_1 = Struct_2(func_5(~_wgslsmith_mod_i32(0i, 2147483647i), Struct_3(func_4(func_4(Struct_2(var_0.b, Struct_1(u_input.a, var_0.b.b, var_0.c), vec4<bool>(false, false, true, var_0.b.c.x)))))), func_1(_wgslsmith_mult_i32(var_0.a.a, 29176i), var_0.b.a, firstTrailingBit(~u_input.b.wwx) & (vec3<u32>(u_input.b.x, u_input.b.x, 1u) >> (u_input.b.wxx % vec3<u32>(32u))), abs(u_input.b.x)).b, select(!vec4<bool>(func_2(vec2<i32>(-35415i, -17033i), u_input.b.x).c.x, func_2(vec2<i32>(1553i, 2147483647i), 1u).b.b, func_1(var_0.b.a, var_0.b.a, vec3<u32>(0u, u_input.b.x, u_input.b.x), u_input.b.x).c.x, !var_0.c.x), var_0.b.c, select(true, var_0.c.x, all(func_1(var_0.a.a, u_input.a, u_input.b.xyy, 45259u).a.c.yxw))));
    var var_2 = _wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(~19771u, ~reverseBits(u_input.b.x), _wgslsmith_add_u32(~u_input.b.x, ~80627u)), abs(vec3<u32>(~u_input.b.x, u_input.b.x, u_input.b.x))), _wgslsmith_div_u32(~30867u, u_input.b.x));
    let var_3 = _wgslsmith_div_u32(_wgslsmith_mod_u32(u_input.b.x, 0u), u_input.b.x);
    var_0 = Struct_2(Struct_1(var_1.b.a, all(var_1.c), var_0.b.c), var_0.a, select(var_0.a.c, var_1.a.c, func_2(~vec2<i32>(u_input.a, 23571i) ^ vec2<i32>(-66501i, 2147483647i), var_3).c));
    var_2 = 0u << (1u % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(~(~1u), vec3<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(50032u, 1u, u_input.b.x), vec3<u32>(_wgslsmith_div_u32(1u, u_input.b.x), ~0u, 4294967295u & u_input.b.x)), min(~u_input.b.x | ~4294967295u, max(u_input.b.x >> (1u % 32u), 4294967295u)), u_input.b.x));
}

