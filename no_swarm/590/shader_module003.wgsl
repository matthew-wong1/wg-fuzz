struct Struct_1 {
    a: i32,
    b: bool,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
}

struct Struct_4 {
    a: Struct_1,
    b: i32,
    c: vec4<u32>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec4<bool>,
    c: vec2<i32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
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

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-875f - _wgslsmith_f_op_f32(ceil(-1574f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1098f)))) * 842f)));
    let var_1 = !vec2<bool>(all(vec2<bool>(true, true)) && select(true, true, any(vec3<bool>(true, false, false))), true);
    let var_2 = true;
    var var_3 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-817f, 554f, -585f))))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(289f, -1641f, 661f) * vec3<f32>(-125f, -1000f, 912f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(2356f, -547f, -312f), vec3<f32>(-864f, -296f, -1698f), vec3<bool>(true, var_2, false))))), select(select(vec3<bool>(var_2, var_1.x, true), select(vec3<bool>(true, var_2, var_1.x), vec3<bool>(false, false, true), vec3<bool>(var_1.x, var_1.x, false)), vec3<bool>(true, false, var_1.x)), vec3<bool>(all(vec3<bool>(var_2, true, var_2)), any(vec4<bool>(true, var_2, var_2, var_2)), true), vec3<bool>(true, !var_1.x, true)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(1000f)) + -1385f) * _wgslsmith_f_op_f32(min(1000f, _wgslsmith_div_f32(-817f, 599f)))), _wgslsmith_div_f32(-1628f, -887f), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(-257f)), -772f)))));
    var var_4 = Struct_5(select(vec3<bool>(var_1.x, var_2, true), vec3<bool>(true, var_1.x, var_2), vec3<bool>(any(!vec3<bool>(true, var_2, true)), false, any(!vec3<bool>(false, false, var_1.x)))), vec4<bool>(!any(var_1) && ((1u != u_input.a) != true), all(vec3<bool>(!var_1.x, var_2, any(vec3<bool>(true, true, var_2)))), -807f < var_3.x, var_2 && var_1.x), max(vec2<i32>(43870i, reverseBits(abs(0i))), -vec2<i32>(1i, 1i)));
    return vec3<u32>(_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(1u, u_input.a, 70808u, 1u) | ~vec4<u32>(4294967295u, u_input.a, 4294967295u, 99747u)), abs(_wgslsmith_add_vec4_u32(vec4<u32>(40094u, u_input.a, 0u, u_input.a) & vec4<u32>(u_input.a, u_input.a, 79945u, u_input.a), max(vec4<u32>(45166u, 0u, u_input.a, 4294967295u), vec4<u32>(4294967295u, 1u, u_input.a, 39630u))))), max(15052u, _wgslsmith_sub_u32(~u_input.a, ~u_input.a)), _wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.a, 0u), u_input.a));
}

fn func_2() -> Struct_4 {
    let var_0 = Struct_3(firstLeadingBit(u_input.a), Struct_2(Struct_1(max(~21197i, _wgslsmith_sub_i32(9229i, 2147483647i)), true)));
    let var_1 = _wgslsmith_add_vec3_u32(min(vec3<u32>(4294967295u, countOneBits(var_0.a), ~0u), _wgslsmith_sub_vec3_u32(vec3<u32>(28634u, u_input.a, var_0.a), vec3<u32>(var_0.a, var_0.a, u_input.a)) >> ((vec3<u32>(45946u, 20922u, 7297u) >> (vec3<u32>(1u, 30745u, u_input.a) % vec3<u32>(32u))) % vec3<u32>(32u))) | func_3(), max(~vec3<u32>(var_0.a, 6919u, 1u), abs(~vec3<u32>(54910u, 7072u, 71127u))) & _wgslsmith_mult_vec3_u32(countOneBits(~vec3<u32>(var_0.a, var_0.a, 4294967295u)), vec3<u32>(1u, abs(var_0.a), u_input.a)));
    var var_2 = vec3<i32>(17043i, var_0.b.a.a, firstTrailingBit(0i));
    var var_3 = _wgslsmith_sub_vec3_i32(abs(reverseBits(vec3<i32>(var_0.b.a.a, var_0.b.a.a, 18645i) | vec3<i32>(var_0.b.a.a, -2147483647i, -2147483647i))), -_wgslsmith_mult_vec3_i32(~vec3<i32>(11889i, -2147483647i, -8241i), _wgslsmith_div_vec3_i32(vec3<i32>(var_2.x, var_0.b.a.a, 0i), vec3<i32>(var_2.x, 70262i, var_0.b.a.a)))) << (vec3<u32>(~min(var_1.x << (14575u % 32u), 4294967295u), ~u_input.a, 0u & ((var_1.x ^ var_0.a) | _wgslsmith_dot_vec2_u32(var_1.zz, var_1.yx))) % vec3<u32>(32u));
    var_2 = _wgslsmith_add_vec3_i32(_wgslsmith_clamp_vec3_i32(((vec3<i32>(var_2.x, -27524i, var_2.x) << (vec3<u32>(3076u, 18967u, 0u) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_i32(vec3<i32>(var_3.x, 0i, var_2.x), vec3<i32>(var_3.x, var_0.b.a.a, var_2.x))) << (var_1 % vec3<u32>(32u)), vec3<i32>(~var_2.x, -36522i, select(var_2.x, ~var_3.x, any(vec2<bool>(false, true)))), (vec3<i32>(-1i) * -vec3<i32>(-15608i, 60242i, var_2.x)) | (vec3<i32>(var_3.x, var_0.b.a.a, var_2.x) << (var_1 % vec3<u32>(32u)))), _wgslsmith_mult_vec3_i32(~vec3<i32>(~(-45841i), ~var_2.x, select(var_2.x, 4522i, var_0.b.a.b)), min(min(-vec3<i32>(49721i, 1i, 19883i), _wgslsmith_mult_vec3_i32(vec3<i32>(var_2.x, var_0.b.a.a, 34231i), vec3<i32>(var_2.x, var_2.x, 0i))), vec3<i32>(_wgslsmith_dot_vec2_i32(var_2.yx, var_3.xy), select(var_3.x, -25597i, var_0.b.a.b), max(27119i, -2147483647i)))));
    return Struct_4(Struct_1(_wgslsmith_add_i32((var_2.x ^ -2171i) | abs(1i), -3271i), false), ~(i32(-1i) * -select(var_3.x, var_0.b.a.a, false)), ~vec4<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(73162u, 71270u), var_1.zy), u_input.a, u_input.a, _wgslsmith_mult_u32(0u, _wgslsmith_dot_vec4_u32(vec4<u32>(34290u, var_0.a, 0u, var_0.a), vec4<u32>(u_input.a, 19158u, 1u, var_0.a)))), (0i | -_wgslsmith_clamp_i32(var_0.b.a.a, 1i, var_2.x)) & min(_wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, var_3.x, var_3.x, var_2.x), _wgslsmith_sub_vec4_i32(vec4<i32>(2147483647i, var_0.b.a.a, var_0.b.a.a, 2002i), vec4<i32>(-5723i, -2147483647i, -3429i, -1i))), -60660i), var_0.b.a);
}

fn func_1(arg_0: Struct_1, arg_1: vec2<i32>, arg_2: u32) -> Struct_4 {
    let var_0 = func_2();
    var var_1 = ~(~vec4<u32>(arg_2, 1u, 24051u, ~firstLeadingBit(24800u)));
    let var_2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(-1416f)))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1156f)) + _wgslsmith_f_op_f32(select(-126f, -1200f, var_0.e.b))))) - 1f);
    var_1 = var_0.c;
    var_1 = _wgslsmith_mod_vec4_u32(var_0.c, ~(firstTrailingBit(vec4<u32>(0u, 2206u, 0u, 17810u)) << (var_0.c % vec4<u32>(32u))));
    return func_2();
}

fn func_4(arg_0: f32, arg_1: f32, arg_2: Struct_4, arg_3: f32) -> StorageBuffer {
    return StorageBuffer(-(abs(vec4<i32>(arg_2.b, -1343i, arg_2.a.a, arg_2.e.a)) | _wgslsmith_add_vec4_i32(_wgslsmith_mult_vec4_i32(vec4<i32>(-1i, arg_2.e.a, 1i, 2147483647i), vec4<i32>(arg_2.d, arg_2.e.a, arg_2.d, arg_2.e.a)), vec4<i32>(0i, arg_2.b, 2147483647i, arg_2.d))), -791f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    let x = u_input.a;
    s_output = func_4(_wgslsmith_f_op_f32(ceil(-554f)), 1237f, func_1(Struct_1(34933i, true), firstTrailingBit(firstLeadingBit(vec2<i32>(1i, 1i))), abs(u_input.a)), _wgslsmith_f_op_f32(-1730f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(f32(-1f) * -1866f))))));
}

