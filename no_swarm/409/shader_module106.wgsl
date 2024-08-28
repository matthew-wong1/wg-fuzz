struct Struct_1 {
    a: bool,
    b: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec3<f32>,
    d: u32,
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

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn func_3() -> i32 {
    var var_0 = _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-2551f, _wgslsmith_div_f32(679f, -147f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-1748f, -686f), vec2<f32>(-919f, 701f))))), vec2<f32>(1419f, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(abs(250f))))))));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(var_0.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-var_0.x)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(2025f, -1000f)))))));
    var var_1 = firstTrailingBit(~_wgslsmith_sub_vec4_u32(reverseBits(vec4<u32>(u_input.b, u_input.c, 24068u, 4294967295u)), abs(~vec4<u32>(u_input.c, 1u, u_input.c, 0u))));
    var var_2 = vec3<bool>(false, (u_input.a > -_wgslsmith_sub_i32(-21054i, 1i)) || (all(vec4<bool>(true, true, false, false)) & true), true);
    var_2 = !vec3<bool>((_wgslsmith_f_op_f32(-var_0.x) <= var_0.x) || false, true, true);
    return -u_input.a;
}

fn func_2(arg_0: vec4<f32>) -> vec3<u32> {
    let var_0 = ~0u;
    var var_1 = Struct_2(Struct_1(true, vec3<i32>(-func_3(), ~_wgslsmith_sub_i32(-34662i, u_input.a), max(~2147483647i, max(2147483647i, -13561i)))));
    var_1 = Struct_2(Struct_1(true, reverseBits(~var_1.a.b)));
    return firstTrailingBit(vec3<u32>(24012u, 60191u, ~max(var_0, 1u)));
}

fn func_1() -> vec3<i32> {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>((0u | u_input.c) ^ min(u_input.c, u_input.b), 1u & max(u_input.c, 18028u), _wgslsmith_dot_vec3_u32(vec3<u32>(45642u, 0u, u_input.c), vec3<u32>(u_input.c, u_input.c, 0u) & vec3<u32>(u_input.c, u_input.c, u_input.b))), ~func_2(vec4<f32>(-188f, -211f, 280f, 1000f))), vec3<u32>(u_input.b, 50679u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.c), vec2<u32>(1u, 1u))));
    var_0 = (_wgslsmith_clamp_vec3_u32(firstTrailingBit(vec3<u32>(var_0.x, var_0.x, var_0.x)) ^ (vec3<u32>(u_input.c, u_input.c, var_0.x) >> (vec3<u32>(1u, u_input.c, 13336u) % vec3<u32>(32u))), vec3<u32>(28801u, ~1u, 145934u), vec3<u32>(87162u, 54866u, u_input.b)) << ((~_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.x, var_0.x), vec3<u32>(u_input.b, 4294967295u, var_0.x)) << (func_2(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-532f, 2294f, 708f, 1000f))) % vec3<u32>(32u))) % vec3<u32>(32u))) & select(vec3<u32>(~firstTrailingBit(u_input.b), _wgslsmith_dot_vec2_u32(var_0.xx, _wgslsmith_mod_vec2_u32(vec2<u32>(4294967295u, 1u), var_0.zz)), ~abs(11561u)), min(vec3<u32>(u_input.b, 4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(10797u, 1u, var_0.x, u_input.c), vec4<u32>(var_0.x, var_0.x, 21577u, 89557u))), ~(vec3<u32>(u_input.b, var_0.x, 22526u) & vec3<u32>(4294967295u, u_input.b, 1u))), true);
    let var_1 = _wgslsmith_div_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.a, u_input.a, u_input.a, u_input.a), abs(vec4<i32>(1i, u_input.a, u_input.a, u_input.a)), vec4<i32>(u_input.a, u_input.a, -1i, -17839i) << (vec4<u32>(22700u, 1u, 33181u, var_0.x) % vec4<u32>(32u))) << (_wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, var_0.x, var_0.x, var_0.x), firstTrailingBit(vec4<u32>(var_0.x, var_0.x, 0u, 24926u))) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_i32(abs(vec4<i32>(u_input.a, -11572i, 1i, -10814i)) ^ vec4<i32>(1i, u_input.a, -14412i, -1729i), reverseBits(_wgslsmith_sub_vec4_i32(vec4<i32>(u_input.a, -2794i, u_input.a, u_input.a), vec4<i32>(-2147483647i, u_input.a, 6149i, u_input.a))), min(firstTrailingBit(vec4<i32>(u_input.a, u_input.a, 55895i, u_input.a)), vec4<i32>(-1i, 123875i, u_input.a, 0i)))) & ~(abs(vec4<i32>(u_input.a, u_input.a, 0i, u_input.a) << (vec4<u32>(u_input.c, u_input.b, 1u, var_0.x) % vec4<u32>(32u))) | ((vec4<i32>(-12158i, -2450i, -19977i, u_input.a) | vec4<i32>(u_input.a, -52509i, u_input.a, 1442i)) ^ (vec4<i32>(u_input.a, -5047i, u_input.a, u_input.a) | vec4<i32>(u_input.a, -2147483647i, -28212i, u_input.a))));
    let var_2 = vec2<bool>(true, false);
    return vec3<i32>(-u_input.a, firstLeadingBit(~(_wgslsmith_dot_vec4_i32(vec4<i32>(-3173i, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, u_input.a)) >> (4294967295u % 32u))), -u_input.a);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_2, arg_2: bool) -> i32 {
    let var_0 = vec4<u32>(u_input.c, u_input.b, 52705u, ~u_input.c);
    let var_1 = -_wgslsmith_mult_vec3_i32(-(~vec3<i32>(arg_1.a.b.x, arg_0.b.x, 17804i) & ~arg_0.b), -arg_1.a.b);
    var var_2 = var_0.x;
    var_2 = 45424u;
    let var_3 = -(var_1.x << (4294967295u % 32u));
    return _wgslsmith_sub_i32(2147483647i, min(976i, u_input.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -reverseBits(u_input.a);
    let var_1 = var_0;
    let var_2 = Struct_1(true, vec3<i32>(func_4(Struct_1(any(vec2<bool>(false, true)), func_1()), Struct_2(Struct_1(true, vec3<i32>(2147483647i, 2147483647i, u_input.a))), select(true, false, true)), 3622i, max(u_input.a, (var_1 & -1i) >> (4294967295u % 32u))));
    let var_3 = var_2.b;
    var var_4 = !select(vec4<bool>(!any(vec4<bool>(var_2.a, true, var_2.a, var_2.a)), false, (var_3.x <= u_input.a) && var_2.a, true), select(select(select(vec4<bool>(var_2.a, true, true, false), vec4<bool>(var_2.a, false, var_2.a, true), vec4<bool>(true, false, false, var_2.a)), select(vec4<bool>(var_2.a, var_2.a, true, false), vec4<bool>(var_2.a, var_2.a, var_2.a, false), true), vec4<bool>(var_2.a, var_2.a, false, var_2.a)), select(!vec4<bool>(var_2.a, true, var_2.a, var_2.a), select(vec4<bool>(var_2.a, var_2.a, false, var_2.a), vec4<bool>(false, true, var_2.a, var_2.a), vec4<bool>(var_2.a, var_2.a, var_2.a, false)), !var_2.a), var_2.a), vec4<bool>(var_2.a, true, !var_2.a, true));
    var_4 = select(vec4<bool>(all(select(select(vec4<bool>(true, var_2.a, false, var_2.a), vec4<bool>(false, var_2.a, var_4.x, false), true), vec4<bool>(false, var_2.a, false, var_2.a), var_4.x && false)), !(!var_4.x), all(vec2<bool>(all(vec4<bool>(true, false, false, var_2.a)), true)), all(vec4<bool>(var_2.a, true, false, true))), vec4<bool>(false, all(var_4.zwy), true, !var_4.x), select(select(!(!vec4<bool>(var_4.x, var_4.x, var_4.x, true)), vec4<bool>(false, var_2.a, select(false, var_4.x, var_2.a), var_4.x), !any(var_4.xzz)), select(vec4<bool>(true, true, any(vec3<bool>(false, var_2.a, true)), !var_4.x), select(select(vec4<bool>(true, var_4.x, false, true), vec4<bool>(false, var_4.x, var_2.a, true), vec4<bool>(false, var_4.x, var_4.x, false)), !vec4<bool>(true, var_4.x, false, var_2.a), select(vec4<bool>(false, var_2.a, var_4.x, var_2.a), vec4<bool>(var_4.x, true, true, false), var_2.a)), any(var_4.ww) == !var_2.a), vec4<bool>(true, true, true, true)));
    var var_5 = select(vec4<bool>(var_4.x, !var_2.a, var_2.a, ~u_input.c != ~(~4102u)), !(!(!(!vec4<bool>(false, false, var_2.a, false)))), false);
    let var_6 = u_input.c << ((u_input.b ^ func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-344f, 321f, -1634f, 260f))))).x) % 32u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(1i, var_2.b.x), ~(vec4<u32>(1u, 0u, 1u, _wgslsmith_sub_u32(u_input.c, 1u)) | _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(u_input.c, 82170u, var_6, var_6), vec4<u32>(var_6, u_input.c, 0u, 1u)), ~vec4<u32>(1u, 1u, 98010u, u_input.b))), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(-1365f, 449f, -1000f))), u_input.c);
}

