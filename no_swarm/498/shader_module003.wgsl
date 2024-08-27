struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: f32,
    b: vec3<i32>,
}

struct Struct_4 {
    a: vec2<bool>,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_5 {
    a: vec2<bool>,
    b: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<f32>,
    c: vec2<u32>,
    d: vec2<u32>,
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: Struct_1, arg_1: Struct_4) -> Struct_4 {
    let var_0 = arg_0.b.x;
    let var_1 = Struct_5(!arg_1.a, Struct_3(_wgslsmith_f_op_f32(var_0 + _wgslsmith_f_op_f32(1000f - _wgslsmith_f_op_f32(arg_0.b.x - -1799f))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_add_i32(31938i, -2147483647i), firstTrailingBit(arg_1.b.x), countOneBits(arg_1.b.x)), (arg_1.b.ywz ^ arg_1.b.xxy) ^ firstTrailingBit(vec3<i32>(arg_1.b.x, arg_1.b.x, -105029i)))));
    let var_2 = Struct_2(arg_1.c);
    let var_3 = var_2.a;
    var var_4 = arg_1.c.a.x;
    return Struct_4(var_1.a, vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(~(-2147483647i), _wgslsmith_mult_i32(0i, 1i)), ~(var_1.b.b.zx | arg_1.b.wz)), arg_1.b.x, _wgslsmith_mod_i32(-1i, _wgslsmith_sub_i32(-16490i, ~8227i)), var_1.b.b.x), Struct_1(_wgslsmith_mod_vec3_u32(u_input.b.yxw, vec3<u32>(1u, u_input.a, 1u)) << (arg_1.c.a % vec3<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(702f, -179f), vec2<f32>(-466f, 1118f))) * _wgslsmith_f_op_vec2_f32(min(vec2<f32>(635f, 1195f), _wgslsmith_div_vec2_f32(vec2<f32>(-1317f, -1672f), vec2<f32>(var_1.b.a, 2132f)))))));
}

fn func_3(arg_0: Struct_2, arg_1: bool, arg_2: Struct_4, arg_3: Struct_3) -> bool {
    var var_0 = Struct_2(func_2(Struct_1(_wgslsmith_mod_vec3_u32(arg_2.c.a, ~vec3<u32>(arg_2.c.a.x, arg_0.a.a.x, 0u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-866f, -311f) - arg_2.c.b))), func_2(Struct_1(select(vec3<u32>(arg_0.a.a.x, arg_2.c.a.x, 1u), arg_0.a.a, vec3<bool>(arg_2.a.x, false, false)), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_2.c.b.x, 1118f))), Struct_4(arg_2.a, vec4<i32>(40498i, 26209i, arg_3.b.x, arg_3.b.x), Struct_1(vec3<u32>(u_input.a, 1u, arg_2.c.a.x), arg_2.c.b)))).c);
    let var_1 = vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(arg_2.c.b.x + 1506f), -488f, true)) * -258f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(330f - _wgslsmith_f_op_f32(arg_0.a.b.x - _wgslsmith_div_f32(113f, 471f))) * _wgslsmith_f_op_f32(-arg_2.c.b.x)), 1480f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1751f)));
    let var_2 = Struct_2(var_0.a);
    var var_3 = any(vec3<bool>(select((arg_2.a.x && true) | true, !arg_1, true), true, select(arg_2.a.x, arg_1, all(select(vec3<bool>(arg_1, true, true), vec3<bool>(arg_1, true, arg_2.a.x), false)))));
    let var_4 = arg_1;
    return false;
}

fn func_1(arg_0: i32, arg_1: i32) -> vec2<bool> {
    let var_0 = 247f;
    var var_1 = Struct_2(Struct_1(select(u_input.b.wzx, ~select(u_input.b.yyy, vec3<u32>(u_input.b.x, 4294967295u, u_input.a), true), func_3(Struct_2(Struct_1(u_input.b.yxx, vec2<f32>(-539f, 1000f))), any(vec2<bool>(true, true)), func_2(Struct_1(u_input.b.xxw, vec2<f32>(var_0, 214f)), Struct_4(vec2<bool>(true, false), vec4<i32>(-12958i, arg_1, -37753i, -2147483647i), Struct_1(vec3<u32>(u_input.b.x, 23565u, u_input.b.x), vec2<f32>(717f, var_0)))), Struct_3(var_0, vec3<i32>(arg_0, 2147483647i, 11409i)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0, -1161f)) + _wgslsmith_f_op_vec2_f32(vec2<f32>(-908f, var_0) + vec2<f32>(-565f, var_0))))));
    var_1 = Struct_2(Struct_1(var_1.a.a, vec2<f32>(var_1.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0 * var_0) + _wgslsmith_f_op_f32(sign(1144f))))));
    var var_2 = Struct_5(select(vec2<bool>(any(vec2<bool>(false, true)) && any(vec2<bool>(false, false)), any(vec2<bool>(true, true))), func_2(var_1.a, Struct_4(select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, false)), -vec4<i32>(-713i, -2147483647i, 2147483647i, arg_0), Struct_1(vec3<u32>(var_1.a.a.x, 0u, 1002u), var_1.a.b))).a, true), Struct_3(_wgslsmith_f_op_f32(-var_1.a.b.x), vec3<i32>(~17540i | ~arg_1, -30726i, _wgslsmith_div_i32(firstTrailingBit(arg_1), ~0i))));
    var var_3 = 1i;
    return !func_2(Struct_1(~vec3<u32>(var_1.a.a.x, var_1.a.a.x, var_1.a.a.x), vec2<f32>(_wgslsmith_f_op_f32(exp2(var_1.a.b.x)), -284f)), func_2(func_2(var_1.a, func_2(var_1.a, Struct_4(vec2<bool>(var_2.a.x, false), vec4<i32>(-1i, arg_1, 24833i, arg_1), Struct_1(vec3<u32>(22275u, u_input.b.x, 41340u), var_1.a.b)))).c, func_2(Struct_1(var_1.a.a, var_1.a.b), func_2(var_1.a, Struct_4(vec2<bool>(var_2.a.x, var_2.a.x), vec4<i32>(25992i, arg_0, -2147483647i, arg_1), Struct_1(vec3<u32>(25123u, u_input.a, 0u), var_1.a.b)))))).a;
}

fn func_4(arg_0: vec2<u32>, arg_1: u32, arg_2: Struct_4, arg_3: Struct_1) -> Struct_4 {
    var var_0 = arg_0.x;
    var var_1 = _wgslsmith_f_op_vec2_f32(-arg_3.b);
    var_1 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)), -1000f);
    let var_2 = vec3<f32>(_wgslsmith_f_op_f32(1236f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x + _wgslsmith_f_op_f32(trunc(644f))))), arg_3.b.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_3.b.x)));
    var var_3 = -_wgslsmith_dot_vec2_i32(~arg_2.b.zz, ~arg_2.b.ww);
    return func_2(arg_3, Struct_4(vec2<bool>(arg_2.a.x, all(vec3<bool>(false, arg_2.a.x, arg_2.a.x))), _wgslsmith_clamp_vec4_i32(arg_2.b | ~vec4<i32>(15331i, 1i, arg_2.b.x, arg_2.b.x), _wgslsmith_div_vec4_i32(firstLeadingBit(vec4<i32>(arg_2.b.x, arg_2.b.x, arg_2.b.x, 2147483647i)), arg_2.b), vec4<i32>(i32(-1i) * -2147483647i, -26390i, _wgslsmith_mod_i32(arg_2.b.x, arg_2.b.x), arg_2.b.x)), arg_2.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_vec3_f32(min(vec3<f32>(_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1178f * 1591f))), 369f, _wgslsmith_f_op_f32(1331f * -609f)), vec3<f32>(_wgslsmith_div_f32(-636f, -1935f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-838f * 462f) + _wgslsmith_f_op_f32(1813f + -217f))), -985f)));
    let var_1 = func_4(vec2<u32>(54284u, _wgslsmith_dot_vec4_u32(vec4<u32>(~u_input.a, u_input.b.x ^ u_input.b.x, _wgslsmith_div_u32(14154u, u_input.b.x), u_input.b.x), vec4<u32>(firstLeadingBit(0u), select(61604u, u_input.a, false), 1u, u_input.a))), u_input.a, Struct_4(!(!func_1(-6232i, 1i)), -select(vec4<i32>(-1i, -25125i, -37724i, 1i), -vec4<i32>(-27445i, -4539i, -3798i, 0i), vec4<bool>(true, true, true, false)), func_2(func_2(func_2(Struct_1(vec3<u32>(0u, 4294967295u, u_input.a), var_0.xy), Struct_4(vec2<bool>(false, false), vec4<i32>(22951i, 477i, 56702i, -53950i), Struct_1(vec3<u32>(35723u, u_input.a, u_input.a), var_0.yy))).c, func_2(Struct_1(vec3<u32>(u_input.b.x, 4294967295u, u_input.a), var_0.yz), Struct_4(vec2<bool>(true, true), vec4<i32>(1i, -1i, -8148i, -26449i), Struct_1(u_input.b.wzw, var_0.zy)))).c, Struct_4(vec2<bool>(true, true), vec4<i32>(1i, 1i, 1i, 1i), Struct_1(u_input.b.wzw, var_0.yx))).c), Struct_1(vec3<u32>(abs(_wgslsmith_div_u32(1u, u_input.b.x)), _wgslsmith_add_u32(~0u, _wgslsmith_dot_vec4_u32(u_input.b, u_input.b)), 29824u << (0u % 32u)), var_0.xx));
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, 399f, var_1.c.b.x, var_1.c.b.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(max(var_1.c.b.x, _wgslsmith_f_op_f32(-306f + -740f))), _wgslsmith_f_op_f32(var_0.x - _wgslsmith_f_op_f32(ceil(var_0.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(var_0.x))), _wgslsmith_f_op_f32(f32(-1f) * -1084f))));
    let var_3 = vec4<u32>(0u, func_4(~_wgslsmith_add_vec2_u32(vec2<u32>(var_1.c.a.x, var_1.c.a.x) | vec2<u32>(var_1.c.a.x, u_input.b.x), vec2<u32>(u_input.b.x, 4294967295u)), u_input.a, Struct_4(vec2<bool>(var_1.a.x, 51790u > var_1.c.a.x), var_1.b, func_4(abs(vec2<u32>(4396u, var_1.c.a.x)), u_input.b.x, func_2(var_1.c, var_1), func_2(Struct_1(var_1.c.a, vec2<f32>(1412f, var_2.x)), Struct_4(vec2<bool>(true, var_1.a.x), vec4<i32>(var_1.b.x, var_1.b.x, 2147483647i, var_1.b.x), Struct_1(var_1.c.a, vec2<f32>(var_2.x, 324f)))).c).c), func_4(vec2<u32>(~u_input.b.x, 21130u), 4294967295u, var_1, var_1.c).c).c.a.x, _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(var_1.c.a, ~vec3<u32>(40253u, u_input.b.x, u_input.a)), u_input.b.xxz) >> (0u % 32u), ~(var_1.c.a.x & max(var_1.c.a.x, u_input.a & 4294967295u)));
    var var_4 = func_2(var_1.c, var_1).a.x;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(920f - -667f), _wgslsmith_f_op_f32(var_0.x - var_1.c.b.x), _wgslsmith_f_op_f32(exp2(var_1.c.b.x))) - vec3<f32>(_wgslsmith_f_op_f32(ceil(var_1.c.b.x)), _wgslsmith_f_op_f32(var_1.c.b.x + 599f), _wgslsmith_f_op_f32(-var_0.x))) - var_0), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(293f, 274f, 417f, var_0.x))))), var_1.c.a.xz, firstTrailingBit(~vec2<u32>(var_1.c.a.x, ~u_input.a)));
}

