struct Struct_1 {
    a: vec3<bool>,
    b: vec2<u32>,
    c: i32,
    d: vec2<bool>,
    e: vec2<i32>,
}

struct Struct_2 {
    a: bool,
    b: vec2<f32>,
    c: f32,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
    d: u32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_2, arg_1: vec2<u32>) -> vec4<u32> {
    let var_0 = _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-1227f, _wgslsmith_f_op_f32(arg_0.b.x + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0.c)))), arg_0.b.x, _wgslsmith_f_op_f32(sign(1806f)))));
    let var_1 = Struct_2(false, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.x, -2236f) - _wgslsmith_f_op_vec2_f32(trunc(arg_0.b))) * _wgslsmith_f_op_vec2_f32(-var_0.ww))), _wgslsmith_f_op_f32(arg_0.b.x - var_0.x), ~_wgslsmith_mod_vec2_u32(arg_1, countOneBits(_wgslsmith_mod_vec2_u32(u_input.c.yy, arg_0.d))));
    let var_2 = countOneBits(~(reverseBits(u_input.a) & -1678i));
    let var_3 = var_1.a;
    var var_4 = ~_wgslsmith_div_i32(u_input.a ^ _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.b, u_input.a, u_input.a, 2147483647i), vec4<i32>(2147483647i, -1i, -1i, 2147483647i), vec4<i32>(0i, 0i, u_input.b, u_input.a)), -vec4<i32>(2147483647i, -38476i, u_input.b, u_input.a)), _wgslsmith_clamp_i32(~reverseBits(var_2), -1i, ~_wgslsmith_sub_i32(var_2, var_2)));
    return vec4<u32>(_wgslsmith_mult_u32(firstLeadingBit(~(1u ^ arg_1.x)), firstLeadingBit(_wgslsmith_clamp_u32(46584u, u_input.c.x, u_input.d))), ~abs(abs(4294967295u)), 4294967295u, var_1.d.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec4<u32>, arg_2: Struct_2) -> Struct_2 {
    var var_0 = arg_2;
    var var_1 = ~min(func_3(Struct_2(!var_0.a, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_2.c, 842f) + vec2<f32>(-1024f, var_0.b.x)), arg_2.c, ~arg_1.yw), vec2<u32>(29860u, 4294967295u)), ~min(vec4<u32>(1u, arg_1.x, var_0.d.x, 1u), ~vec4<u32>(10420u, u_input.d, 0u, u_input.d)));
    let var_2 = vec4<i32>(select(22608i, u_input.a, false), 2147483647i, 1938i, 5262i);
    let var_3 = _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-258f * _wgslsmith_f_op_f32(-arg_2.b.x)), 870f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-1610f)) + _wgslsmith_f_op_f32(1833f - arg_2.b.x))), _wgslsmith_f_op_f32(step(179f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(856f))))), var_0.b.x), vec4<f32>(558f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1101f)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-arg_2.c))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.b.x - arg_2.b.x))))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_2.b.x, arg_2.b.x) * _wgslsmith_f_op_f32(-var_0.b.x)))))));
    var var_4 = reverseBits(arg_0.xy);
    return arg_2;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> bool {
    let var_0 = Struct_1(vec3<bool>(true, true, true), max(_wgslsmith_sub_vec2_u32(_wgslsmith_sub_vec2_u32(arg_0.b, u_input.c.yx), u_input.c.xy), ~u_input.c.xy ^ vec2<u32>(4294967295u, 1u)) | vec2<u32>(~u_input.d, 1u ^ ~u_input.d), _wgslsmith_clamp_i32(12723i, abs(~arg_0.e.x) >> (u_input.d % 32u), _wgslsmith_mult_i32(1i, min(~(-33822i), u_input.a))), vec2<bool>(countOneBits(-2147483647i) <= (~u_input.a >> (~12966u % 32u)), false), ~(~(vec2<i32>(-2147483647i, u_input.a) & vec2<i32>(2147483647i, u_input.b))) & countOneBits(_wgslsmith_clamp_vec2_i32(_wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a, u_input.b), vec2<i32>(arg_0.e.x, u_input.a)), arg_0.e << (vec2<u32>(120861u, arg_0.b.x) % vec2<u32>(32u)), max(vec2<i32>(-1i, arg_0.c), arg_0.e))));
    var var_1 = !(!vec2<bool>(true, var_0.a.x));
    let var_2 = var_0;
    var_1 = arg_0.d;
    var_1 = !(!(!(!vec2<bool>(false, arg_1.a))));
    return !select(arg_0.a.x, all(vec2<bool>(all(vec4<bool>(true, false, arg_0.a.x, arg_0.a.x)), true)), true);
}

fn func_5(arg_0: f32, arg_1: bool, arg_2: f32, arg_3: Struct_1) -> Struct_1 {
    let var_0 = Struct_1(vec3<bool>(any(vec3<bool>(true | arg_1, arg_1, -21794i <= u_input.a)), arg_3.e.x < ~firstLeadingBit(1i), true), arg_3.b, arg_3.e.x, select(vec2<bool>(any(select(arg_3.d, vec2<bool>(false, arg_1), vec2<bool>(arg_3.a.x, true))), true), select(arg_3.a.xy, !(!vec2<bool>(true, arg_1)), !(!vec2<bool>(false, arg_1))), arg_3.a.xz), vec2<i32>(8023i, max(i32(-1i) * -2147483647i, 1914i)));
    let var_1 = Struct_2(false, vec2<f32>(_wgslsmith_f_op_f32(-1079f + -1118f), -2717f), 622f, ~(~(~select(arg_3.b, vec2<u32>(var_0.b.x, u_input.c.x), var_0.a.yx))));
    var var_2 = !func_4(var_0, var_1, true);
    let var_3 = Struct_1(var_0.a, _wgslsmith_sub_vec2_u32(u_input.c.xx, u_input.c.yx), 30507i, vec2<bool>(all(vec4<bool>(true, true, true, true)), true), vec2<i32>(-(max(-30747i, arg_3.e.x) ^ -2147483647i), 2147483647i));
    var_2 = true;
    return arg_3;
}

fn func_1(arg_0: Struct_1, arg_1: i32, arg_2: vec4<bool>, arg_3: i32) -> Struct_1 {
    return func_5(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * _wgslsmith_f_op_f32(1262f - -1074f)) - _wgslsmith_f_op_f32(step(809f, -1400f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1262f - 408f))))), arg_2.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(-1436f, _wgslsmith_f_op_f32(f32(-1f) * -445f))), _wgslsmith_f_op_f32(round(-885f)), any(arg_2.yx))), Struct_1(vec3<bool>(arg_2.x, arg_2.x, func_4(arg_0, func_2(vec3<i32>(-1908i, arg_3, u_input.a), vec4<u32>(u_input.c.x, 1u, u_input.c.x, 4294967295u), Struct_2(false, vec2<f32>(1932f, 893f), 132f, vec2<u32>(41304u, 1u))), arg_2.x)), arg_0.b, firstTrailingBit(-26644i), !arg_0.a.zz, arg_0.e));
}

fn func_6(arg_0: Struct_1) -> Struct_1 {
    var var_0 = arg_0.d.x;
    var_0 = arg_0.d.x;
    var_0 = !(arg_0.a.x || arg_0.a.x);
    var var_1 = !((any(!vec2<bool>(arg_0.d.x, arg_0.d.x)) != arg_0.d.x) && !arg_0.a.x);
    var var_2 = arg_0;
    return func_5(-452f, true, 1192f, arg_0);
}

fn func_7(arg_0: vec2<u32>, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: i32) -> bool {
    let var_0 = func_1(func_1(Struct_1(!func_1(arg_1, -35668i, vec4<bool>(arg_1.a.x, false, false, arg_1.d.x), 1i).a, _wgslsmith_mult_vec2_u32(vec2<u32>(51762u, 0u), u_input.c.yx), func_6(Struct_1(arg_1.a, arg_1.b, -7412i, arg_1.a.zy, arg_1.e)).e.x, vec2<bool>(false, all(vec2<bool>(arg_1.d.x, arg_1.d.x))), vec2<i32>(arg_3, _wgslsmith_dot_vec3_i32(vec3<i32>(33416i, -2147483647i, u_input.b), vec3<i32>(0i, 15687i, arg_3)))), _wgslsmith_clamp_i32(u_input.a, u_input.b, min(arg_3, -2569i) >> ((0u | arg_1.b.x) % 32u)), select(select(select(vec4<bool>(false, arg_1.d.x, true, false), vec4<bool>(false, arg_1.a.x, arg_1.d.x, arg_1.d.x), false), !vec4<bool>(arg_1.d.x, arg_1.a.x, arg_1.a.x, false), func_5(982f, arg_1.a.x, -815f, Struct_1(arg_1.a, vec2<u32>(u_input.c.x, 0u), 19935i, vec2<bool>(true, true), vec2<i32>(-1i, arg_1.c))).a.x), vec4<bool>(arg_1.a.x & arg_1.d.x, arg_1.a.x, true, arg_1.d.x != false), any(!vec4<bool>(false, true, arg_1.d.x, false))), arg_1.e.x), ~(-21399i), select(select(!vec4<bool>(arg_1.d.x, arg_1.a.x, true, false), vec4<bool>(true, any(vec2<bool>(false, arg_1.d.x)), false, true), vec4<bool>(func_1(arg_1, -1i, vec4<bool>(false, false, arg_1.a.x, true), -2147483647i).d.x, arg_1.d.x | false, true, true)), !select(select(vec4<bool>(arg_1.a.x, arg_1.a.x, false, arg_1.a.x), vec4<bool>(true, arg_1.a.x, false, false), vec4<bool>(true, false, true, true)), !vec4<bool>(arg_1.d.x, arg_1.a.x, arg_1.d.x, arg_1.a.x), true), vec4<bool>(all(func_6(Struct_1(arg_1.a, arg_0, u_input.a, vec2<bool>(arg_1.a.x, arg_1.d.x), vec2<i32>(21619i, arg_1.c))).a.zz), true, false, true)), _wgslsmith_sub_i32(18266i, _wgslsmith_dot_vec4_i32(~vec4<i32>(arg_1.e.x, arg_1.e.x, 0i, -1i), vec4<i32>(2147483647i, 5305i, u_input.a, 2147483647i)) | func_6(func_5(-805f, true, 1083f, arg_1)).e.x)).b.x;
    var var_1 = reverseBits(-abs(~vec4<i32>(1i, 42168i, -24736i, arg_1.c) | vec4<i32>(arg_1.e.x, 27864i, arg_3, arg_3)));
    var var_2 = vec2<bool>(all(vec4<bool>(u_input.c.x <= arg_2.x, false, 17375u > arg_2.x, arg_1.d.x & (arg_1.c > -31514i))), func_1(arg_1, arg_1.c, !(!vec4<bool>(true, true, arg_1.d.x, arg_1.a.x)), -91808i).d.x);
    var var_3 = firstTrailingBit(abs(reverseBits(vec3<i32>(reverseBits(7881i), -5293i, 9897i))));
    var_1 = max(vec4<i32>(~u_input.a, _wgslsmith_sub_i32(min(-1i, var_1.x), 1i), ~1i, 0i), _wgslsmith_div_vec4_i32(vec4<i32>(~(-1i), 2147483647i, firstTrailingBit(min(arg_1.e.x, -48285i)), abs(var_3.x)), max(vec4<i32>(arg_1.e.x, ~(-63961i), _wgslsmith_dot_vec3_i32(var_1.xzw, var_1.zxx), func_5(1000f, true, -1112f, arg_1).e.x), vec4<i32>(min(var_1.x, -12126i), -1i, var_3.x, func_1(arg_1, -4163i, vec4<bool>(arg_1.d.x, true, true, var_2.x), var_3.x).c))));
    return func_5(_wgslsmith_f_op_f32(f32(-1f) * -490f), !var_2.x, -490f, arg_1).d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(true, vec2<f32>(1728f, _wgslsmith_f_op_f32(min(227f, _wgslsmith_f_op_f32(-295f + _wgslsmith_f_op_f32(220f * -979f))))), 1039f, ~(~(vec2<u32>(u_input.d, u_input.c.x) ^ vec2<u32>(0u, u_input.c.x))));
    let var_1 = Struct_2(func_7(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.c.x, u_input.d), var_0.d) << (u_input.c.yz % vec2<u32>(32u)), func_6(func_1(Struct_1(vec3<bool>(true, true, var_0.a), vec2<u32>(var_0.d.x, 25049u), -5837i, vec2<bool>(false, var_0.a), vec2<i32>(1i, 0i)), firstLeadingBit(u_input.b), vec4<bool>(false, false, var_0.a, var_0.a), ~u_input.b)), vec3<u32>(var_0.d.x, 51314u, _wgslsmith_add_u32(var_0.d.x, var_0.d.x) | 0u), _wgslsmith_mod_i32(u_input.b, -19901i)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.b.x, 105f))) - vec2<f32>(-154f, -674f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_0.b.x) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.c)))), _wgslsmith_mod_vec2_u32(~(~vec2<u32>(u_input.c.x, 1u)) & u_input.c.zx, var_0.d));
    var_0 = var_1;
    var var_2 = vec3<bool>(!(!(var_0.a && var_1.a)), !select(~83555u > (u_input.c.x >> (var_1.d.x % 32u)), func_7(vec2<u32>(1u, 15810u), Struct_1(vec3<bool>(var_1.a, false, var_0.a), vec2<u32>(var_0.d.x, 4294967295u), u_input.b, vec2<bool>(true, false), vec2<i32>(u_input.b, u_input.b)), u_input.c, func_5(var_1.c, var_0.a, 553f, Struct_1(vec3<bool>(var_0.a, false, var_1.a), vec2<u32>(var_0.d.x, u_input.d), 2147483647i, vec2<bool>(true, var_1.a), vec2<i32>(u_input.b, u_input.a))).e.x), true), func_2(abs(vec3<i32>(-1i, max(u_input.b, -1i), 2147483647i)), firstLeadingBit(reverseBits(~vec4<u32>(u_input.c.x, 0u, var_0.d.x, 4294967295u))), func_2(vec3<i32>(-38218i, u_input.a | -11179i, i32(-1i) * -46123i), ~vec4<u32>(1u, 51627u, 6337u, var_0.d.x) | ~vec4<u32>(59459u, var_0.d.x, 10843u, var_1.d.x), func_2(vec3<i32>(u_input.b, u_input.b, -1i), ~vec4<u32>(4410u, 80941u, var_0.d.x, 0u), var_1))).a);
    var_0 = func_2(~(firstLeadingBit(vec3<i32>(u_input.a, -1i, u_input.a)) | max(vec3<i32>(u_input.b, u_input.a, 2147483647i), _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.b, -6570i, 69311i), vec3<i32>(u_input.a, 89212i, -30630i)))), (vec4<u32>(~4294967295u, ~var_0.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, 0u, var_0.d.x, var_0.d.x), vec4<u32>(u_input.c.x, var_0.d.x, var_0.d.x, var_0.d.x)), ~1u) ^ firstTrailingBit(vec4<u32>(var_0.d.x, u_input.c.x, var_1.d.x, var_0.d.x))) ^ _wgslsmith_mod_vec4_u32(vec4<u32>(u_input.d, 0u, 0u, var_0.d.x) & func_3(Struct_2(false, var_1.b, var_0.b.x, var_0.d), var_0.d), ~(vec4<u32>(0u, var_0.d.x, 39385u, var_1.d.x) ^ vec4<u32>(u_input.c.x, var_1.d.x, var_1.d.x, 61866u))), func_2(vec3<i32>(-u_input.a, 27688i, u_input.a), vec4<u32>(~(~var_1.d.x), 1u << (func_5(-1111f, var_1.a, var_1.b.x, Struct_1(vec3<bool>(var_0.a, true, var_1.a), u_input.c.yx, u_input.a, var_2.zy, vec2<i32>(-18801i, u_input.b))).b.x % 32u), ~u_input.d, ~_wgslsmith_div_u32(u_input.c.x, 16681u)), Struct_2(func_2(min(vec3<i32>(u_input.b, u_input.a, -1i), vec3<i32>(u_input.a, u_input.b, u_input.b)), vec4<u32>(var_1.d.x, 28078u, var_1.d.x, 4294967295u), Struct_2(var_0.a, var_0.b, -1000f, u_input.c.yz)).a, var_0.b, -468f, _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.d, var_0.d.x), var_1.d), ~var_0.d))));
    var_2 = vec3<bool>(var_2.x, any(vec4<bool>(func_4(Struct_1(vec3<bool>(var_2.x, var_1.a, var_1.a), u_input.c.zz, u_input.b, vec2<bool>(var_1.a, false), vec2<i32>(u_input.a, 2147483647i)), var_1, true), var_0.a, func_5(-1169f, true, -1158f, func_6(Struct_1(vec3<bool>(false, true, var_0.a), var_1.d, 0i, vec2<bool>(var_2.x, false), vec2<i32>(u_input.a, -1i)))).a.x, false)), true);
    let var_3 = _wgslsmith_f_op_f32(-735f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_1.b.x)) - -227f));
    let var_4 = func_2(vec3<i32>(-1i) * -_wgslsmith_mod_vec3_i32(~vec3<i32>(-39706i, u_input.b, u_input.a), vec3<i32>(35056i, 3243i, u_input.b)), _wgslsmith_div_vec4_u32(~_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_0.d.x, u_input.d, 4459u, 0u)), countOneBits(vec4<u32>(var_0.d.x, 35573u, var_1.d.x, 4294967295u))), vec4<u32>(~max(53093u, var_0.d.x), 95826u, 12794u, 4294967295u)), Struct_2(u_input.a == _wgslsmith_sub_i32(_wgslsmith_mult_i32(-17621i, u_input.a), -1557i << (var_0.d.x % 32u)), vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(var_3)), var_3), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(var_3, var_1.c))))), var_0.b.x, var_1.d));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<i32>(u_input.a, 1i));
}

