struct Struct_1 {
    a: bool,
    b: bool,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<bool>,
    d: u32,
}

struct Struct_3 {
    a: f32,
    b: vec2<i32>,
    c: Struct_2,
    d: vec2<i32>,
    e: vec2<f32>,
}

struct Struct_4 {
    a: vec4<f32>,
    b: bool,
    c: vec3<i32>,
    d: Struct_2,
    e: Struct_3,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_3(arg_0: vec2<i32>, arg_1: vec2<bool>, arg_2: i32) -> vec3<bool> {
    var var_0 = select(min(~29778u, 14605u), u_input.b.x, any(select(select(!vec3<bool>(true, false, arg_1.x), !vec3<bool>(arg_1.x, true, arg_1.x), select(arg_1.x, true, arg_1.x)), vec3<bool>(arg_1.x, false, false), true)));
    let var_1 = -min(vec4<i32>(u_input.c, firstTrailingBit(arg_0.x >> (u_input.b.x % 32u)), _wgslsmith_sub_i32(59310i, 41771i), arg_0.x), _wgslsmith_mult_vec4_i32(vec4<i32>(-1i, 7088i, 9471i, 2147483647i) << (~vec4<u32>(u_input.b.x, 1u, u_input.b.x, u_input.b.x) % vec4<u32>(32u)), -(~vec4<i32>(u_input.d.x, -1i, 2147483647i, u_input.a))));
    var var_2 = Struct_1(!arg_1.x, arg_1.x, !all(!arg_1) != arg_1.x, min(_wgslsmith_div_u32(0u, 33563u), _wgslsmith_add_u32(~u_input.b.x, u_input.b.x)));
    var_2 = Struct_1(_wgslsmith_add_u32(0u, var_2.d) >= ~firstLeadingBit(_wgslsmith_mult_u32(1u, 54791u)), false, !any(select(select(vec4<bool>(true, var_2.a, false, true), vec4<bool>(true, false, true, true), true), !vec4<bool>(var_2.a, true, var_2.b, arg_1.x), !vec4<bool>(false, arg_1.x, false, var_2.a))), u_input.b.x);
    return !vec3<bool>(true, arg_1.x, var_2.b);
}

fn func_2() -> Struct_1 {
    var var_0 = countOneBits(firstTrailingBit(-(~(-33670i))));
    let var_1 = vec3<i32>(select(-_wgslsmith_clamp_i32(u_input.a, -40514i, ~(-32610i)), reverseBits(2147483647i), true), u_input.c, u_input.c >> (54432u % 32u));
    let var_2 = ~(~(~min(vec4<u32>(u_input.b.x, u_input.b.x, 3920u, 4294967295u) & vec4<u32>(u_input.b.x, 50047u, 33913u, u_input.b.x), vec4<u32>(28677u, u_input.b.x, 38851u, u_input.b.x))));
    var var_3 = Struct_2(Struct_1(all(vec4<bool>(true, true, any(vec3<bool>(false, true, false)), true)), select(false, true, true), true, 1u), 1u, vec2<bool>(false, all(func_3(vec2<i32>(u_input.a, 29940i), vec2<bool>(true, true), u_input.c))), var_2.x);
    var_3 = Struct_2(Struct_1(any(select(vec3<bool>(var_3.a.c, false, var_3.c.x), select(vec3<bool>(var_3.a.c, var_3.a.c, var_3.a.a), vec3<bool>(var_3.c.x, var_3.c.x, false), vec3<bool>(true, var_3.a.b, var_3.c.x)), vec3<bool>(var_3.c.x, false, false))), all(vec3<bool>(!var_3.c.x, false && var_3.a.a, all(vec3<bool>(var_3.a.c, false, false)))), var_3.c.x, var_3.b), 1u, select(vec2<bool>(false, var_3.a.a), !select(func_3(u_input.d.yz, vec2<bool>(true, true), 58895i).zx, !vec2<bool>(var_3.c.x, true), all(vec3<bool>(var_3.a.c, var_3.a.c, false))), all(vec2<bool>(true, true))), 1u);
    return Struct_1(!var_3.c.x, any(!(!select(var_3.c, vec2<bool>(var_3.a.b, false), var_3.c))), var_3.a.b, var_3.a.d);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: i32) -> Struct_4 {
    let var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1046f, -1006f, -1601f) - _wgslsmith_f_op_vec3_f32(vec3<f32>(1035f, arg_0.e.x, arg_0.e.x) * vec3<f32>(519f, arg_0.a, -424f))))))));
    var var_1 = arg_0.e;
    let var_2 = Struct_3(_wgslsmith_f_op_f32(-arg_0.a), _wgslsmith_mod_vec2_i32(-_wgslsmith_div_vec2_i32(vec2<i32>(arg_0.d.x, -48776i), -vec2<i32>(-1i, arg_0.b.x)), -vec2<i32>(~arg_0.b.x, arg_2 | 0i)), arg_0.c, -(vec2<i32>(arg_2, -u_input.a) ^ vec2<i32>(reverseBits(-1i), 7782i)), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(floor(var_0.yz)))));
    let var_3 = arg_1;
    var var_4 = -28748i;
    return Struct_4(vec4<f32>(var_2.e.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(1103f)), var_1.x), var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(var_2.a))))), any(func_3(reverseBits(u_input.d.yx), !(!var_3.c), reverseBits(arg_2)).zx), min(~(-(u_input.d ^ vec3<i32>(23264i, arg_2, u_input.a))), vec3<i32>(1i, -(~33384i), u_input.a)), arg_1, arg_0);
}

fn func_1(arg_0: f32) -> Struct_4 {
    return func_4(Struct_3(_wgslsmith_f_op_f32(min(-118f, -410f)), u_input.d.yy, Struct_2(func_2(), u_input.b.x, select(select(vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false)), vec2<bool>(false, true), select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), 43371u), vec2<i32>(~8736i, _wgslsmith_dot_vec3_i32(u_input.d, u_input.d | u_input.d)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1628f, 513f), vec2<f32>(arg_0, -472f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(322f, -959f) + vec2<f32>(613f, -956f))) + vec2<f32>(-592f, _wgslsmith_f_op_f32(343f * 122f)))), Struct_2(Struct_1(true, true, !(-425f < arg_0), ~func_2().d), _wgslsmith_dot_vec4_u32(vec4<u32>(~23902u, 76141u, _wgslsmith_sub_u32(39983u, u_input.b.x), _wgslsmith_dot_vec2_u32(u_input.b.yx, vec2<u32>(u_input.b.x, u_input.b.x))), abs(~vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x))), func_3(u_input.d.xz, vec2<bool>(arg_0 > arg_0, u_input.a < 31753i), ~u_input.a ^ min(u_input.d.x, u_input.d.x)).yy, u_input.b.x), _wgslsmith_mult_i32(-(i32(-1i) * -2147483647i), _wgslsmith_sub_i32(_wgslsmith_add_i32(i32(-1i) * -1289i, abs(-25656i)), u_input.c)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(2384f);
    let var_1 = false;
    var_0 = func_4(Struct_3(1f, -u_input.d.xx, var_0.d, var_0.c.xz, _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(sign(var_0.e.e))))), var_0.e.c, 2147483647i);
    var_0 = Struct_4(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(1234f, 123f, var_0.a.x, 1426f), vec4<f32>(-1389f, var_0.e.a, var_0.e.e.x, var_0.a.x), true)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(2457f, var_0.a.x, var_0.a.x, var_0.a.x))))), all(select(vec4<bool>(var_0.b, var_0.e.c.a.a, var_1, false), vec4<bool>(var_1, !var_1, true, true), !(!vec4<bool>(var_0.b, var_0.e.c.a.b, var_1, true)))), vec3<i32>(select(firstLeadingBit(5111i), var_0.e.d.x, func_4(Struct_3(var_0.e.e.x, var_0.e.b, var_0.e.c, var_0.c.zy, var_0.a.xy), var_0.d, -37013i).b) << (u_input.b.x % 32u), 27359i, _wgslsmith_dot_vec4_i32(firstLeadingBit(-vec4<i32>(28028i, u_input.c, u_input.c, 6280i)), -reverseBits(vec4<i32>(-2147483647i, u_input.a, 0i, -44661i)))), func_4(func_4(var_0.e, func_1(-596f).e.c, reverseBits(min(15871i, 2147483647i))).e, func_4(Struct_3(_wgslsmith_f_op_f32(var_0.a.x + var_0.a.x), var_0.e.b, var_0.e.c, u_input.d.yx, _wgslsmith_div_vec2_f32(vec2<f32>(615f, var_0.a.x), var_0.e.e)), Struct_2(var_0.e.c.a, u_input.b.x, var_0.e.c.c, 72296u), -10293i).e.c, _wgslsmith_clamp_i32(1i, abs(var_0.c.x), ~(-1i))).e.c, var_0.e);
    let var_2 = true;
    var var_3 = Struct_4(vec4<f32>(_wgslsmith_f_op_f32(-var_0.e.a), 599f, -904f, 1f), func_3(~vec2<i32>(i32(-1i) * -5223i, _wgslsmith_mult_i32(var_0.e.d.x, u_input.c)), vec2<bool>(true, true), i32(-1i) * -2147483647i).x, ~u_input.d, func_4(Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -642f), _wgslsmith_mult_vec2_i32(-vec2<i32>(var_0.e.d.x, 2147483647i), _wgslsmith_clamp_vec2_i32(var_0.e.d, vec2<i32>(5659i, 17252i), vec2<i32>(u_input.a, 2147483647i))), func_1(var_0.a.x).d, vec2<i32>(firstTrailingBit(-2147483647i), countOneBits(var_0.e.b.x)), vec2<f32>(101f, var_0.a.x)), var_0.e.c, abs(-2147483647i)).e.c, Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1000f)) * _wgslsmith_f_op_f32(sign(var_0.e.e.x)))), -vec2<i32>(min(-1091i, var_0.c.x), 1i & var_0.c.x), var_0.d, ~(-vec2<i32>(-63027i, var_0.e.b.x)), var_0.e.e));
    var var_4 = firstLeadingBit(firstTrailingBit(52062u));
    let x = u_input.a;
    s_output = StorageBuffer(~(-(i32(-1i) * -42871i)));
}

