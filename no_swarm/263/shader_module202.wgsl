struct Struct_1 {
    a: bool,
    b: bool,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_2,
    d: bool,
}

struct Struct_4 {
    a: i32,
    b: i32,
    c: Struct_2,
}

struct Struct_5 {
    a: Struct_2,
    b: vec4<i32>,
    c: vec3<i32>,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: u32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_3(arg_0: vec2<u32>, arg_1: u32) -> i32 {
    let var_0 = vec4<bool>(any(vec3<bool>(true, false, true)) || any(vec4<bool>(all(vec4<bool>(true, true, true, true)), true, true, true)), true, true, false);
    var var_1 = _wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(~(~min(u_input.a, vec4<u32>(u_input.a.x, 1u, 0u, 4294967295u))), vec4<u32>(38482u, arg_0.x, arg_1, ~(~887u))), ~firstTrailingBit(arg_0.x));
    var_1 = _wgslsmith_add_u32(10959u, 67168u);
    let var_2 = Struct_5(Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1000f)) - _wgslsmith_f_op_f32(f32(-1f) * -1000f)), Struct_1(!(!var_0.x), false, u_input.c, var_0.x), Struct_1(true, all(!var_0.ww), 36933i, all(vec4<bool>(var_0.x, false, false, false)) && true)), ~(vec4<i32>(-1i) * -_wgslsmith_div_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, u_input.c), vec4<i32>(11413i, 26520i, 8989i, u_input.b))), _wgslsmith_add_vec3_i32(~(-vec3<i32>(-22399i, -2147483647i, u_input.b)), ~(-vec3<i32>(-1i, 1i, u_input.b))) ^ countOneBits(vec3<i32>(2147483647i, -2147483647i, countOneBits(2504i))));
    let var_3 = var_2.a.a;
    return reverseBits(~var_2.b.x);
}

fn func_2() -> Struct_3 {
    let var_0 = _wgslsmith_f_op_f32(-809f - -644f);
    var var_1 = Struct_3(Struct_1(!(_wgslsmith_add_i32(u_input.b, u_input.b) > u_input.b), select(true, true, all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, true, false, true), vec4<bool>(true, true, false, false)))), ~(u_input.b & u_input.c) >> (abs(u_input.a.x) % 32u), true), !select(!select(vec3<bool>(false, false, true), vec3<bool>(false, true, false), true), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0, _wgslsmith_f_op_f32(-var_0)))), Struct_1(false, select(true, false, all(vec3<bool>(false, true, false))), -1i, _wgslsmith_add_i32(-28269i, 1i) <= u_input.b), Struct_1(false, true, func_3(vec2<u32>(u_input.a.x, 1u), u_input.a.x), (u_input.b != u_input.b) | (4294967295u > u_input.a.x))), true);
    var_1 = Struct_3(Struct_1(any(!(!vec4<bool>(var_1.b.x, var_1.a.a, false, var_1.c.b.b))), var_1.d, abs(u_input.b) ^ _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.c.b.c, -16615i), _wgslsmith_mult_vec2_i32(vec2<i32>(0i, u_input.b), vec2<i32>(-16123i, var_1.a.c))), true), vec3<bool>(!(!any(vec3<bool>(false, var_1.a.d, var_1.a.d))), var_1.a.b, var_1.a.a), Struct_2(-798f, Struct_1(false, false, _wgslsmith_sub_i32(var_1.c.c.c, var_1.a.c), false), var_1.c.b), var_1.b.x);
    var var_2 = u_input.a.x;
    var_1 = Struct_3(var_1.a, var_1.b, var_1.c, true);
    return Struct_3(Struct_1(var_1.a.d, var_1.c.c.b, 13082i, select(var_1.b.x, false, (u_input.a.x & u_input.a.x) < 67737u)), !(!vec3<bool>(var_1.b.x, true, !var_1.b.x)), var_1.c, false);
}

fn func_4(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_1, arg_3: Struct_5) -> f32 {
    var var_0 = vec4<bool>(max(~0u, ~_wgslsmith_add_u32(4294967295u, 0u)) > u_input.a.x, true, true, any(select(select(!arg_0.b.yz, arg_0.b.zz, true), select(!arg_0.b.xy, func_2().b.xx, select(vec2<bool>(true, arg_2.b), vec2<bool>(false, arg_0.a.a), false)), select(arg_0.b.xy, arg_0.b.xx, vec2<bool>(arg_0.a.b, arg_2.b)))));
    var_0 = !(!vec4<bool>(arg_2.a, any(!arg_0.b.zz), true, all(vec3<bool>(arg_0.c.b.a, true, arg_3.a.c.b))));
    var var_1 = arg_2.d;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(1000f, arg_3.a.a)))))), func_2().a, Struct_1(!(select(u_input.a.x, 36924u, true) > select(0u, u_input.a.x, false)), (_wgslsmith_f_op_f32(floor(755f)) != _wgslsmith_f_op_f32(-arg_3.a.a)) || func_2().c.c.b, select(~max(0i, arg_1.x), ~17871i, false), !arg_0.b.x));
    let var_3 = vec2<f32>(var_2.a, -496f);
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(exp2(arg_0.c.a)), _wgslsmith_f_op_f32(arg_0.c.a - _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(906f)) * _wgslsmith_f_op_f32(min(var_3.x, arg_0.c.a))))))));
}

fn func_1(arg_0: Struct_4) -> Struct_4 {
    let var_0 = arg_0.c.a;
    let var_1 = arg_0;
    var var_2 = Struct_1(_wgslsmith_mult_u32(~(~0u), _wgslsmith_dot_vec3_u32(vec3<u32>(12836u, 4294967295u, 54933u), u_input.a.zyz)) >= ~(~(u_input.a.x << (u_input.a.x % 32u))), false, 29301i, all(vec4<bool>(all(select(vec4<bool>(var_1.c.c.a, true, var_1.c.c.a, false), vec4<bool>(var_1.c.b.a, var_1.c.b.a, true, false), false)), -arg_0.c.c.c > ~(-1983i), all(vec3<bool>(true, arg_0.c.c.d, var_1.c.c.a)), arg_0.c.c.a)));
    let var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(func_2(), vec4<i32>(-var_1.a, -37099i, ~abs(u_input.c), -4256i), Struct_1(!(var_2.c < u_input.c), false, ~max(arg_0.b, 0i), (-933f > var_0) != any(vec4<bool>(true, false, var_1.c.b.a, false))), Struct_5(func_2().c, firstLeadingBit(_wgslsmith_sub_vec4_i32(vec4<i32>(-2147483647i, 2147483647i, 25118i, 2147483647i), vec4<i32>(arg_0.c.b.c, -1i, var_1.b, 2147483647i))), select(vec3<i32>(var_2.c, var_2.c, -453i) << (u_input.a.wzz % vec3<u32>(32u)), _wgslsmith_mod_vec3_i32(vec3<i32>(var_2.c, 1i, u_input.b), vec3<i32>(arg_0.a, -3913i, -1i)), select(vec3<bool>(false, false, var_2.d), vec3<bool>(true, true, true), var_1.c.c.a))))));
    let var_4 = var_1.c.b.d;
    return Struct_4(~(~(~u_input.c & u_input.b)), arg_0.c.b.c >> (24724u % 32u), func_2().c);
}

fn func_5(arg_0: Struct_4, arg_1: vec2<i32>, arg_2: u32) -> Struct_2 {
    var var_0 = func_2().c.c.a;
    var_0 = true;
    var_0 = !(arg_2 < u_input.a.x);
    var var_1 = Struct_5(func_1(func_1(arg_0)).c, abs(firstTrailingBit(vec4<i32>(abs(u_input.b), u_input.b >> (1u % 32u), -arg_1.x, _wgslsmith_mod_i32(-2147483647i, arg_0.a)))), vec3<i32>(abs(-1i), u_input.c, firstTrailingBit(u_input.c & u_input.b)) << ((vec3<u32>(u_input.a.x, countOneBits(arg_2), u_input.a.x) | _wgslsmith_mult_vec3_u32(u_input.a.yzy, u_input.a.wyw)) % vec3<u32>(32u)));
    let var_2 = ~1u;
    return func_1(arg_0).c;
}

fn func_6(arg_0: Struct_5) -> Struct_4 {
    let var_0 = select(vec2<bool>(false, arg_0.a.b.d && arg_0.a.c.a), !vec2<bool>(-u_input.c >= arg_0.b.x, false), -1862i <= arg_0.c.x);
    var var_1 = func_1(Struct_4(reverseBits(-51682i), 9999i, Struct_2(_wgslsmith_f_op_f32(arg_0.a.a * _wgslsmith_f_op_f32(-arg_0.a.a)), Struct_1(false || arg_0.a.c.a, func_5(Struct_4(arg_0.a.c.c, 0i, arg_0.a), vec2<i32>(arg_0.c.x, u_input.b), u_input.a.x).b.d, countOneBits(arg_0.c.x), var_0.x), func_2().c.c)));
    let var_2 = func_1(Struct_4(_wgslsmith_add_i32(arg_0.b.x, 36691i | arg_0.c.x) ^ -reverseBits(1i), var_1.b & (~var_1.a ^ 2147483647i), arg_0.a));
    var var_3 = func_1(Struct_4(23048i, ~_wgslsmith_clamp_i32(-1i ^ var_1.b, func_5(Struct_4(1357i, 1i, Struct_2(var_1.c.a, Struct_1(var_0.x, false, 48031i, var_2.c.c.a), arg_0.a.c)), vec2<i32>(u_input.b, -2147483647i), 4294967295u).b.c, arg_0.c.x), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c.a) - _wgslsmith_f_op_f32(var_1.c.a + -1543f)), var_2.c.c, var_2.c.b)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1017f, var_1.c.a, 813f))))));
    return func_1(Struct_4(_wgslsmith_mod_i32(arg_0.c.x, select(var_3.c.b.c, -2147483647i, arg_0.a.c.b)) | u_input.c, var_1.c.b.c, var_3.c));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(Struct_5(func_5(func_1(Struct_4(-27654i, u_input.c, Struct_2(-681f, Struct_1(false, true, u_input.c, false), Struct_1(false, false, u_input.c, false)))), vec2<i32>(-1i & u_input.c, u_input.b), 51067u), ~(abs(vec4<i32>(u_input.c, 0i, u_input.b, u_input.b)) & countOneBits(vec4<i32>(1i, 2147483647i, -18175i, u_input.c))), firstTrailingBit(~vec3<i32>(42995i, -1i, u_input.c))));
    var var_1 = max(~u_input.a.x & ((_wgslsmith_dot_vec3_u32(u_input.a.xyx, u_input.a.yyw) >> (abs(u_input.a.x) % 32u)) | abs(u_input.a.x)), ~(_wgslsmith_sub_u32(abs(0u), ~4294967295u) & u_input.a.x));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(566f)) - var_0.c.a)), -1507f, _wgslsmith_f_op_f32(-var_0.c.a), -415f);
    let var_3 = Struct_4(-8000i, func_6(Struct_5(Struct_2(141f, var_0.c.c, Struct_1(var_0.c.b.d, false, u_input.c, var_0.c.c.d)), select(~vec4<i32>(2147483647i, -143i, 28485i, var_0.a), vec4<i32>(17586i, -2147483647i, 0i, var_0.a), var_0.c.b.b), vec3<i32>(u_input.b & 55796i, -39343i, -1i))).b, func_5(func_6(Struct_5(var_0.c, vec4<i32>(var_0.a, 2147483647i, u_input.b, -13016i), reverseBits(vec3<i32>(u_input.b, u_input.c, 13947i)))), vec2<i32>(var_0.b, select(-32013i, select(-2147483647i, u_input.c, var_0.c.b.b), func_5(Struct_4(-2147483647i, var_0.c.b.c, Struct_2(var_0.c.a, Struct_1(var_0.c.c.a, var_0.c.b.a, 2147483647i, var_0.c.c.d), Struct_1(false, true, 6630i, false))), vec2<i32>(u_input.b, 1i), u_input.a.x).b.a)), ~u_input.a.x));
    var var_4 = var_0.c;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.a.x, _wgslsmith_f_op_f32(f32(-1f) * -702f));
}

