struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<i32>,
    d: vec2<u32>,
}

struct Struct_2 {
    a: u32,
    b: f32,
}

struct Struct_3 {
    a: Struct_2,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: i32, arg_3: i32) -> vec3<bool> {
    let var_0 = Struct_1(true, u_input.c.x >> (0u % 32u), abs(_wgslsmith_div_vec3_i32(min(vec3<i32>(arg_3, arg_2, 1i), -u_input.d.wzy), arg_0.c)), vec2<u32>(_wgslsmith_dot_vec2_u32(abs(arg_1), vec2<u32>(0u, 1u)) ^ abs(1u), 1u));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1613f, 1f)))));
    var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -653f)), _wgslsmith_f_op_f32(select(-2025f, _wgslsmith_f_op_f32(-809f + -2596f), var_0.d.x > 78685u))) + -877f) + 659f);
    let var_2 = arg_0;
    let var_3 = vec3<f32>(1545f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(630f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-863f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-430f + -351f) + _wgslsmith_f_op_f32(floor(873f))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(-1763f)) + _wgslsmith_f_op_f32(f32(-1f) * -627f))));
    return select(!vec3<bool>(false, !all(vec3<bool>(true, var_2.a, false)), false), select(select(vec3<bool>(true || var_2.a, any(vec4<bool>(true, true, arg_0.a, true)), true), select(select(vec3<bool>(false, arg_0.a, var_0.a), vec3<bool>(false, var_2.a, arg_0.a), true), !vec3<bool>(arg_0.a, var_2.a, false), !vec3<bool>(var_2.a, true, true)), !all(vec3<bool>(var_0.a, arg_0.a, false))), select(select(!vec3<bool>(var_0.a, var_2.a, true), !vec3<bool>(true, arg_0.a, var_0.a), var_2.a), vec3<bool>(true, true, arg_0.b != arg_0.d.x), select(select(vec3<bool>(true, var_0.a, false), vec3<bool>(false, arg_0.a, var_2.a), vec3<bool>(false, var_0.a, false)), vec3<bool>(false, false, var_2.a), var_0.a)), vec3<bool>(true, true, true)), true && (arg_0.a || arg_0.a));
}

fn func_2(arg_0: vec3<bool>) -> vec2<u32> {
    let var_0 = arg_0.x;
    var var_1 = -_wgslsmith_div_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, u_input.a, u_input.d.x), max(u_input.d.yxw, u_input.b.xwx)), ~2147483647i);
    var var_2 = vec2<u32>(reverseBits(~(~u_input.c.x)), max(min(61979u, 1u), 1795u)) >> (_wgslsmith_clamp_vec2_u32(u_input.c.yy, _wgslsmith_mod_vec2_u32(u_input.c.ww, vec2<u32>(4294967295u, _wgslsmith_mult_u32(u_input.c.x, u_input.c.x))), ~(_wgslsmith_mod_vec2_u32(vec2<u32>(107795u, u_input.c.x), u_input.c.xx) & u_input.c.zy)) % vec2<u32>(32u));
    var var_3 = _wgslsmith_div_vec4_i32(vec4<i32>(~countOneBits(~(-1i)), 11770i, -1i, _wgslsmith_dot_vec3_i32(select(~vec3<i32>(0i, u_input.b.x, 43050i), vec3<i32>(1i, 0i, u_input.a), func_3(Struct_1(true, 1u, vec3<i32>(u_input.a, u_input.a, u_input.b.x), u_input.c.wz), u_input.c.zw, u_input.d.x, 5779i)), _wgslsmith_add_vec3_i32(~u_input.d.xzw, u_input.b.wzz))), u_input.b);
    var_1 = u_input.d.x;
    return _wgslsmith_sub_vec2_u32(~vec2<u32>(countOneBits(var_2.x >> (var_2.x % 32u)), firstLeadingBit(~4294967295u)), ~u_input.c.yw);
}

fn func_1(arg_0: Struct_3, arg_1: f32) -> Struct_2 {
    var var_0 = arg_0.c.c.x;
    var_0 = -35863i;
    var_0 = -2147483647i;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(arg_1)));
    let var_2 = Struct_1(false, arg_0.c.d.x, vec3<i32>(4523i, _wgslsmith_mod_i32(firstLeadingBit(arg_0.c.c.x), _wgslsmith_add_i32(u_input.b.x << (arg_0.a.a % 32u), 0i)), ~2147483647i | _wgslsmith_mod_i32(reverseBits(u_input.d.x), _wgslsmith_sub_i32(u_input.a, u_input.a))), func_2(!vec3<bool>(!arg_0.c.a, all(vec4<bool>(arg_0.c.a, true, true, arg_0.c.a)), u_input.c.x >= arg_0.a.a)));
    return arg_0.a;
}

fn func_4(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> Struct_3 {
    let var_0 = -min(min(u_input.a, u_input.d.x), firstTrailingBit(u_input.d.x | u_input.b.x));
    var var_1 = !(!select(select(vec2<bool>(false, false), func_3(Struct_1(false, 88799u, u_input.b.yzy, u_input.c.xx), u_input.c.yz, 1i, var_0).zx, select(vec2<bool>(false, false), vec2<bool>(true, true), false)), vec2<bool>(99015u != u_input.c.x, true), vec2<bool>(true, true)));
    var var_2 = Struct_3(func_1(Struct_3(func_1(Struct_3(Struct_2(4294967295u, arg_0.b), 0i, Struct_1(false, 4294967295u, u_input.b.xxx, u_input.c.wz)), arg_2.b), countOneBits(-18737i), Struct_1(false, _wgslsmith_div_u32(1u, 4294967295u), vec3<i32>(arg_1, -1i, arg_1), u_input.c.zx | vec2<u32>(arg_0.a, 4294967295u))), -1918f), _wgslsmith_clamp_i32(u_input.d.x, _wgslsmith_sub_i32(-20569i, -_wgslsmith_dot_vec3_i32(u_input.b.yxw, vec3<i32>(-70651i, arg_1, 2147483647i))), 6581i), Struct_1(false, _wgslsmith_mod_u32(func_1(Struct_3(Struct_2(91456u, arg_0.b), -1i, Struct_1(var_1.x, arg_2.a, vec3<i32>(0i, arg_1, -26638i), vec2<u32>(arg_2.a, arg_2.a))), _wgslsmith_f_op_f32(f32(-1f) * -134f)).a, _wgslsmith_mod_u32(~1u, arg_2.a)), u_input.b.www, u_input.c.zx));
    let var_3 = var_0;
    var var_4 = (_wgslsmith_sub_vec4_i32(u_input.d, firstLeadingBit(vec4<i32>(-26191i, 2147483647i, var_3, var_3) | vec4<i32>(arg_1, var_0, arg_1, 25961i))) | vec4<i32>(_wgslsmith_add_i32(var_0, -1i), arg_1, ~countOneBits(var_2.c.c.x), _wgslsmith_dot_vec2_i32(~vec2<i32>(var_2.b, 1411i), vec2<i32>(-36968i, var_0) >> (var_2.c.d % vec2<u32>(32u))))) & -(~vec4<i32>(0i | arg_1, -1i, -2147483647i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_2.c.c.x, var_3, 34875i), var_2.c.c)));
    return Struct_3(var_2.a, _wgslsmith_add_i32(var_4.x, _wgslsmith_div_i32(u_input.d.x ^ -2147483647i, ~(-1i))) ^ 1815i, Struct_1(select(!any(vec2<bool>(var_2.c.a, true)), var_1.x, true && var_2.c.a), ~u_input.c.x, ~(-var_2.c.c), vec2<u32>(~(u_input.c.x >> (arg_0.a % 32u)), arg_2.a)));
}

fn func_5(arg_0: Struct_2, arg_1: Struct_3) -> Struct_2 {
    return arg_0;
}

fn func_6(arg_0: Struct_2) -> Struct_2 {
    let var_0 = ~(max(u_input.b.x & -45573i, 2147483647i & u_input.a) ^ 20593i) | _wgslsmith_sub_i32(-_wgslsmith_div_i32(_wgslsmith_add_i32(u_input.b.x, u_input.d.x), min(u_input.b.x, u_input.b.x)), 0i);
    let var_1 = func_4(arg_0, _wgslsmith_mult_i32(u_input.d.x, 2147483647i), func_4(func_4(arg_0, -17660i, arg_0).a, _wgslsmith_dot_vec3_i32(u_input.b.yyw, _wgslsmith_mod_vec3_i32(~vec3<i32>(-40901i, u_input.d.x, var_0), u_input.d.zzy)), func_5(Struct_2(50542u, _wgslsmith_f_op_f32(-arg_0.b)), func_4(arg_0, var_0 << (u_input.c.x % 32u), Struct_2(arg_0.a, arg_0.b)))).a);
    var var_2 = select(vec2<bool>(true, (_wgslsmith_f_op_f32(var_1.a.b + arg_0.b) > _wgslsmith_f_op_f32(-arg_0.b)) & var_1.c.a), vec2<bool>(true, !(_wgslsmith_add_i32(var_0, 9905i) > min(var_1.c.c.x, 15700i))), vec2<bool>(true, true));
    var var_3 = func_4(func_1(func_4(arg_0, ~firstLeadingBit(50168i), arg_0), _wgslsmith_f_op_f32(func_1(func_4(var_1.a, var_0, var_1.a), _wgslsmith_f_op_f32(-arg_0.b)).b - -407f)), u_input.d.x, Struct_2(arg_0.a, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_0.b, -1000f) - _wgslsmith_f_op_f32(var_1.a.b - 1510f)), _wgslsmith_f_op_f32(var_1.a.b - 639f))))).c;
    let var_4 = _wgslsmith_div_vec4_i32(vec4<i32>(var_3.c.x, i32(-1i) * -_wgslsmith_dot_vec3_i32(var_3.c, vec3<i32>(var_1.b, var_1.c.c.x, 0i)), _wgslsmith_add_i32(_wgslsmith_div_i32(u_input.b.x, var_1.b), i32(-1i) * -1i), var_1.b), -u_input.b | reverseBits(vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0, var_0), vec2<i32>(var_3.c.x, -2147483647i)), _wgslsmith_dot_vec4_i32(u_input.b, vec4<i32>(-1i, u_input.d.x, -36157i, -20233i)), -var_1.b, countOneBits(-1i))));
    return func_5(func_5(func_1(Struct_3(var_1.a, var_1.b, Struct_1(false, arg_0.a, var_3.c, vec2<u32>(var_3.b, u_input.c.x))), arg_0.b), Struct_3(Struct_2(54366u >> (u_input.c.x % 32u), _wgslsmith_f_op_f32(-arg_0.b)), -var_0, Struct_1(any(vec4<bool>(true, false, var_2.x, var_3.a)), ~32519u, ~vec3<i32>(8159i, -6935i, -15902i), ~u_input.c.zw))), Struct_3(var_1.a, 1i, var_1.c));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_6(func_5(Struct_2(4294967295u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2114f))), func_4(func_1(Struct_3(Struct_2(0u, -120f), -2147483647i, Struct_1(true, 1u, vec3<i32>(u_input.a, -47815i, -18244i), vec2<u32>(u_input.c.x, u_input.c.x))), 1f), abs(~0i), func_1(Struct_3(Struct_2(u_input.c.x, -1503f), u_input.a, Struct_1(false, u_input.c.x, vec3<i32>(u_input.a, u_input.d.x, 1i), vec2<u32>(u_input.c.x, 419u))), _wgslsmith_f_op_f32(floor(-434f))))));
    var var_1 = vec2<bool>(true, true);
    var_1 = vec2<bool>(_wgslsmith_mult_i32(-u_input.b.x, _wgslsmith_mod_i32(_wgslsmith_dot_vec2_i32(u_input.d.zx, u_input.d.xw), min(0i, u_input.d.x))) != 23433i, true & !(0u >= ~var_0.a));
    var_1 = vec2<bool>(var_1.x, !(!(144f == _wgslsmith_f_op_f32(var_0.b * -1000f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-1592f, 1000f))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b, var_2.x) * vec2<f32>(-702f, 919f)) * _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(-326f, var_0.b))))) * vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1002f), var_2.x)));
}

