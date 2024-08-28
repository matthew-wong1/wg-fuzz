struct Struct_1 {
    a: vec4<u32>,
    b: bool,
    c: vec2<i32>,
    d: u32,
}

struct Struct_2 {
    a: i32,
    b: vec4<f32>,
    c: i32,
    d: u32,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
    c: vec4<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: f32, arg_3: vec3<i32>) -> bool {
    let var_0 = arg_0.c.x;
    var var_1 = false;
    let var_2 = 0u;
    var_1 = true;
    var var_3 = Struct_2(1i, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(arg_2 * 492f), _wgslsmith_f_op_f32(abs(arg_2)), _wgslsmith_f_op_f32(1000f * -771f), _wgslsmith_f_op_f32(trunc(1515f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1513f, 586f, 555f, arg_2))) + vec4<f32>(-826f, _wgslsmith_f_op_f32(arg_2 - arg_2), arg_2, -801f))), var_0, arg_1, arg_0);
    return all(!select(vec2<bool>(var_3.e.b, false), select(vec2<bool>(true, var_3.e.b), !vec2<bool>(false, var_3.e.b), !var_3.e.b), var_3.e.b));
}

fn func_2() -> vec2<i32> {
    let var_0 = select(vec4<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), any(vec4<bool>(true, false, false, true)))), true, true, false), select(vec4<bool>(false, true, true, func_3(Struct_1(vec4<u32>(30035u, 1243u, 4294967295u, u_input.b.x), true, u_input.c.wz, u_input.b.x), 1u, 462f, max(u_input.c.www, u_input.c.ywz))), vec4<bool>(select(all(vec2<bool>(true, true)), true, true), !all(vec2<bool>(true, true)), true, true), false), vec4<bool>(true, !any(vec3<bool>(true, true, true)), any(vec3<bool>(true, true, true)), !any(vec4<bool>(false, false, false, true))));
    var var_1 = min(19072u, ~firstLeadingBit(u_input.b.x));
    let var_2 = 29813u;
    var_1 = var_2;
    var var_3 = Struct_2(u_input.a.x, _wgslsmith_div_vec4_f32(vec4<f32>(509f, 374f, -1216f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-128f, 1000f)))), vec4<f32>(1000f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1091f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-1699f, -523f))), _wgslsmith_f_op_f32(f32(-1f) * -830f))), -(~(_wgslsmith_dot_vec2_i32(u_input.a, u_input.a) & -32092i)), ~_wgslsmith_add_u32(countOneBits(16408u | u_input.b.x), min(u_input.b.x, 1u)), Struct_1(~_wgslsmith_mult_vec4_u32(~vec4<u32>(u_input.b.x, u_input.b.x, var_2, u_input.b.x), countOneBits(vec4<u32>(39534u, var_2, u_input.b.x, 10699u))), var_0.x, _wgslsmith_add_vec2_i32(~_wgslsmith_mod_vec2_i32(u_input.a, u_input.c.yx), max(u_input.c.xx, u_input.c.wx) & ~u_input.a), ~_wgslsmith_mult_u32(u_input.b.x, select(29316u, 1u, false))));
    return ~vec2<i32>(-_wgslsmith_mod_i32(-u_input.a.x, -2147483647i), firstTrailingBit(_wgslsmith_add_i32(28386i << (1u % 32u), u_input.a.x)));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<f32>) -> f32 {
    var var_0 = vec3<i32>(41696i, min(~(-(993i >> (1u % 32u))), arg_1.c.x), i32(-1i) * -_wgslsmith_add_i32(1i, _wgslsmith_dot_vec2_i32(arg_1.c, vec2<i32>(-6626i, arg_1.c.x))));
    let var_1 = Struct_2(u_input.a.x, _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(386f, arg_2.x, _wgslsmith_f_op_f32(-arg_2.x), _wgslsmith_f_op_f32(f32(-1f) * -773f)))), u_input.a.x, max(firstLeadingBit(4069u), ~min(arg_1.d, arg_1.d) | 0u), Struct_1(~arg_1.a, arg_1.b, max(-(~vec2<i32>(16342i, -2147483647i)), -func_2()), _wgslsmith_dot_vec4_u32(vec4<u32>(~0u, 30401u, u_input.b.x, ~arg_0), ~min(arg_1.a, arg_1.a))));
    var var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -530f) + _wgslsmith_f_op_f32(round(-416f)));
    var_2 = _wgslsmith_f_op_f32(arg_2.x * -2400f);
    var var_3 = Struct_1(vec4<u32>(min(_wgslsmith_sub_u32(arg_0, u_input.b.x), u_input.b.x), abs(_wgslsmith_sub_u32(~arg_1.a.x, firstTrailingBit(arg_0))), _wgslsmith_mult_u32(1u, ~max(1u, 51852u)), var_1.d), select(!(var_1.e.b || true), !all(select(vec2<bool>(true, false), vec2<bool>(true, arg_1.b), vec2<bool>(true, var_1.e.b))), false), vec2<i32>(abs(2147483647i), 2147483647i), ~(~1u));
    return _wgslsmith_f_op_f32(round(737f));
}

fn func_4(arg_0: vec4<f32>, arg_1: i32) -> Struct_1 {
    var var_0 = select(select(vec3<bool>(true, true, true), select(select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, false), true), select(vec3<bool>(false, false, true), vec3<bool>(false, false, true), true), vec3<bool>(true, false, false)), vec3<bool>(true, true, true), vec3<bool>(true, true, true)), u_input.b.x > ~_wgslsmith_sub_u32(46703u, 15632u)), vec3<bool>(true, any(vec4<bool>(arg_0.x == arg_0.x, true, any(vec4<bool>(false, false, true, false)), all(vec4<bool>(true, false, true, false)))), true), select(vec3<bool>(select(select(true, true, true), true, true), all(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), false)), true), select(vec3<bool>(true, true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(true, false, false), vec3<bool>(false, true, false)), vec3<bool>(false, false, true), true), -u_input.a.x < -arg_1), !select(select(vec3<bool>(false, false, true), vec3<bool>(true, true, true), vec3<bool>(false, true, false)), vec3<bool>(false, true, false), select(false, false, true))));
    var_0 = vec3<bool>(all(!vec3<bool>(all(vec3<bool>(var_0.x, true, var_0.x)), false, true)), var_0.x, var_0.x);
    var var_1 = 1u > u_input.b.x;
    var var_2 = Struct_2(select(~func_2().x, i32(-1i) * -(arg_1 >> (26727u % 32u)), -11713i > (1i << (u_input.b.x % 32u))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(-1000f, arg_0.x, arg_0.x, arg_0.x) - _wgslsmith_f_op_vec4_f32(-arg_0)) * vec4<f32>(-1381f, -512f, _wgslsmith_f_op_f32(-arg_0.x), -527f))), 20782i, ~_wgslsmith_div_u32(0u, u_input.b.x), Struct_1(~(~(vec4<u32>(4294967295u, 19465u, 15048u, 4294967295u) | vec4<u32>(1462u, u_input.b.x, 0u, u_input.b.x))), !var_0.x, vec2<i32>(-u_input.c.x, arg_1) >> ((u_input.b >> (u_input.b % vec2<u32>(32u))) % vec2<u32>(32u)), _wgslsmith_div_u32(~min(0u, 1u), 1u)));
    var_1 = !select(!any(vec3<bool>(false, var_2.e.b, var_0.x)), true, select(false | all(vec4<bool>(var_2.e.b, true, var_2.e.b, false)), var_2.e.b && var_0.x, var_0.x));
    return var_2.e;
}

fn func_5(arg_0: Struct_1) -> Struct_2 {
    let var_0 = arg_0.b;
    let var_1 = vec2<i32>(-2147483647i, _wgslsmith_mult_i32(-arg_0.c.x, arg_0.c.x));
    var var_2 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-832f))) * 1f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(867f - 1000f) - -235f))), _wgslsmith_f_op_f32(min(1381f, -412f))), -1081f);
    var_2 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(-734f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(var_2.x, _wgslsmith_f_op_f32(sign(-1000f)), var_0 != true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(u_input.b.x, arg_0, vec2<f32>(var_2.x, var_2.x))) - _wgslsmith_f_op_f32(var_2.x - var_2.x)))), var_2.x), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(423f, var_2.x, var_2.x))))) - _wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(vec3<f32>(1000f, -1498f, -665f), vec3<f32>(var_2.x, var_2.x, -444f)), vec3<f32>(-258f, 1266f, var_2.x), true))))));
    let var_3 = _wgslsmith_add_vec2_i32(-func_2(), arg_0.c);
    return Struct_2(var_3.x, vec4<f32>(_wgslsmith_div_f32(var_2.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(-1101f)), var_2.x))), -1160f, var_2.x, -324f), max(_wgslsmith_mod_i32(-_wgslsmith_mod_i32(var_1.x, var_3.x), countOneBits(0i ^ arg_0.c.x)), u_input.a.x & func_4(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1188f, var_2.x, var_2.x, var_2.x)), _wgslsmith_div_i32(arg_0.c.x, -13723i)).c.x), arg_0.a.x, Struct_1(arg_0.a, any(!vec4<bool>(true, var_0, arg_0.b, arg_0.b)) && func_3(arg_0, _wgslsmith_add_u32(arg_0.a.x, 24573u), _wgslsmith_f_op_f32(f32(-1f) * -1000f), select(u_input.c.zyw, vec3<i32>(-30551i, arg_0.c.x, 26566i), vec3<bool>(false, arg_0.b, false))), var_1 << (arg_0.a.yz % vec2<u32>(32u)), 47206u));
}

fn func_6(arg_0: Struct_2, arg_1: f32, arg_2: f32, arg_3: f32) -> Struct_2 {
    var var_0 = Struct_2(arg_0.c, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(arg_0.b)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-arg_0.b))), any(!vec3<bool>(arg_0.e.b, false, false))))), _wgslsmith_clamp_i32(arg_0.a, arg_0.c, -14142i), arg_0.e.a.x, func_4(_wgslsmith_f_op_vec4_f32(arg_0.b + arg_0.b), u_input.c.x));
    var var_1 = arg_0;
    var_0 = Struct_2(i32(-1i) * -1i, var_0.b, 0i | var_0.a, ~0u >> (arg_0.e.a.x % 32u), var_1.e);
    var_1 = arg_0;
    var_1 = arg_0;
    return func_5(var_0.e);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_6(func_5(func_4(vec4<f32>(_wgslsmith_f_op_f32(func_1(90282u, Struct_1(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, 59751u), true, vec2<i32>(u_input.c.x, u_input.a.x), u_input.b.x), vec2<f32>(205f, 176f))), _wgslsmith_f_op_f32(-630f + 1989f), -253f, 168f), _wgslsmith_add_i32(countOneBits(-1i), _wgslsmith_add_i32(-624i, u_input.a.x)))), _wgslsmith_f_op_f32(-func_5(func_5(func_4(vec4<f32>(213f, 1143f, -1254f, -945f), -2147483647i)).e).b.x), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-126f - _wgslsmith_f_op_f32(1000f * -576f))))), 1f);
    var var_1 = var_0.e;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.b.x));
    let var_3 = Struct_2(max(~min(u_input.a.x, 1i), 1i << (var_1.a.x % 32u)), _wgslsmith_f_op_vec4_f32(var_0.b + vec4<f32>(var_0.b.x, -1141f, var_0.b.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-2184f + 158f), 511f))), _wgslsmith_mult_i32(_wgslsmith_div_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.c.x, _wgslsmith_sub_i32(u_input.a.x, -1i))), ~(-u_input.a.x) & _wgslsmith_dot_vec4_i32(u_input.c ^ vec4<i32>(u_input.a.x, 1i, 19407i, 0i), vec4<i32>(0i, -15025i, var_0.c, 0i))), ~min(~1u, var_0.d & ~1u), func_5(var_0.e).e);
    let var_4 = var_3;
    let var_5 = Struct_2(-72603i, var_3.b, -var_1.c.x, var_3.d, var_3.e);
    var_0 = func_5(var_4.e);
    let var_6 = Struct_1(func_6(Struct_2(-28558i, var_4.b, -var_3.a, ~1u, Struct_1(vec4<u32>(var_5.d, 4294967295u, 1u, 91787u), var_0.e.b, var_0.e.c, var_5.d)), _wgslsmith_f_op_f32(1f * 1194f), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -116f)), _wgslsmith_f_op_f32(var_5.b.x * -402f)).e.a >> (~var_5.e.a % vec4<u32>(32u)), var_3.e.b, var_0.e.c, countOneBits(_wgslsmith_add_u32(_wgslsmith_sub_u32(reverseBits(0u), ~var_3.e.a.x), var_0.e.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(max(vec4<u32>(firstLeadingBit(func_6(var_4, var_0.b.x, var_5.b.x, var_4.b.x).d), 29511u, ~(~var_6.d), abs(1u) << (var_0.e.d % 32u)), firstLeadingBit(~var_3.e.a)), vec2<u32>(countOneBits(var_5.e.a.x), ~_wgslsmith_sub_u32(58068u & var_5.e.d, 85999u >> (var_3.d % 32u))));
}

