struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
}

struct Struct_3 {
    a: Struct_2,
    b: u32,
    c: vec3<bool>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<i32>,
    c: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: i32 = 5184i;

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_3) -> bool {
    var var_0 = u_input.a.x;
    var var_1 = vec4<i32>(~(-_wgslsmith_dot_vec4_i32(vec4<i32>(-1i, arg_1.b.x, 56332i, u_input.a.x), vec4<i32>(-1i, u_input.a.x, 1i, 38072i) & vec4<i32>(arg_1.b.x, u_input.a.x, -1i, 7762i))), -arg_3.a.a.b.x << (_wgslsmith_dot_vec4_u32(vec4<u32>(62335u, 0u, 0u & arg_0, 33360u | arg_3.b), ~firstLeadingBit(vec4<u32>(51360u, 91911u, arg_3.b, 0u))) % 32u), -1i, abs(0i));
    global1 = arg_1.b.x;
    var var_2 = arg_3.a.b.x;
    var var_3 = -reverseBits(vec4<i32>(-1i) * -vec4<i32>(1i, 2147483647i, -15619i, u_input.a.x));
    return select(arg_3.c.x, false, -2469f <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_3.a.a.c, -1000f) - arg_3.d.c) - _wgslsmith_f_op_f32(f32(-1f) * -1166f)));
}

fn func_3(arg_0: bool, arg_1: Struct_1, arg_2: Struct_2, arg_3: Struct_2) -> vec3<f32> {
    global0 = _wgslsmith_f_op_f32(select(-1022f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(631f - _wgslsmith_f_op_f32(-arg_3.b.x))), all(select(select(vec4<bool>(true, arg_2.a.a.x, true, arg_2.a.d), vec4<bool>(arg_2.a.d, true, arg_1.a.x, true), arg_0), vec4<bool>(true, false, arg_1.d, true), vec4<bool>(false, arg_3.a.a.x, arg_2.a.d, arg_1.a.x))))) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-1308f - _wgslsmith_div_f32(-510f, 1226f)), _wgslsmith_f_op_f32(-213f - _wgslsmith_f_op_f32(-arg_3.b.x))));
    let var_0 = arg_1;
    var var_1 = Struct_1(arg_1.a, _wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, 15148i), -(~_wgslsmith_mult_vec2_i32(var_0.b, vec2<i32>(42256i, 1i)))), _wgslsmith_div_f32(162f, 180f), arg_0);
    let var_2 = min(u_input.b.wx, max(u_input.b.yy | ~u_input.b.xw, u_input.b.xz)) ^ ~select(u_input.b.wz, abs(reverseBits(vec2<u32>(4294967295u, 1u))), !(!var_1.a.xx));
    let var_3 = arg_2.a;
    return arg_2.b;
}

fn func_2() -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(false, Struct_1(vec3<bool>(true, false, true), u_input.a.yx & u_input.a.xx, _wgslsmith_f_op_f32(-991f + -439f), true), Struct_2(Struct_1(vec3<bool>(false, false, false), u_input.a.xx, 948f, false), _wgslsmith_f_op_vec3_f32(round(vec3<f32>(-242f, -1031f, -1745f)))), Struct_2(Struct_1(vec3<bool>(false, true, false), u_input.a.yx, -1000f, false), vec3<f32>(-996f, -1000f, 269f)))))));
    let var_1 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-2669f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(-var_0.x)), var_0.x)));
    let var_2 = Struct_2(Struct_1(select(vec3<bool>(all(vec4<bool>(false, true, true, true)), any(vec3<bool>(true, true, true)), var_1.x <= var_0.x), vec3<bool>(false, select(true, false, false), 77290i == u_input.a.x), all(vec2<bool>(true, false))), countOneBits(reverseBits(min(vec2<i32>(-4419i, u_input.a.x), u_input.a.yy))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1200f * _wgslsmith_f_op_f32(floor(var_1.x))) + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_vec3_f32(func_3(true, Struct_1(vec3<bool>(true, true, true), u_input.a.xz, var_0.x, false), Struct_2(Struct_1(vec3<bool>(true, true, false), vec2<i32>(u_input.a.x, 34160i), 1126f, false), var_1), Struct_2(Struct_1(vec3<bool>(false, true, false), vec2<i32>(u_input.a.x, u_input.a.x), var_0.x, true), vec3<f32>(-288f, var_0.x, var_1.x)))).x, var_1.x))), true), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, 1109f, 1238f)), _wgslsmith_f_op_vec3_f32(exp2(var_0)), true)));
    let var_3 = countOneBits(~_wgslsmith_mult_vec4_i32(vec4<i32>(var_2.a.b.x, _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.a.x, 71278i), vec2<i32>(2147483647i, u_input.a.x)), ~var_2.a.b.x, select(49237i, u_input.a.x, var_2.a.d)), ~firstTrailingBit(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, u_input.a.x))));
    let var_4 = var_1.x;
    return var_2.a;
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: Struct_3) -> bool {
    var var_0 = _wgslsmith_mult_vec4_u32(vec4<u32>(arg_2.b, 30568u, firstLeadingBit(u_input.b.x), 69396u), ~(~vec4<u32>(0u, u_input.b.x >> (4294967295u % 32u), countOneBits(u_input.b.x), 14902u | arg_2.b)));
    var var_1 = abs(u_input.b);
    global0 = arg_1.d;
    let var_2 = arg_2.a;
    var var_3 = Struct_1(vec3<bool>(func_2().a.x, false, arg_2.c.x || any(vec4<bool>(true, false, arg_0.d, arg_1.a.x))), arg_0.b, -2286f, arg_1.d);
    return !arg_2.a.a.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(Struct_1(vec3<bool>(any(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, false, true))), 76914i < firstLeadingBit(u_input.a.x), any(vec4<bool>(true, true, true, true))), vec2<i32>(abs(51173i), 2147483647i), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1288f), -2060f))), func_1(_wgslsmith_sub_u32(1u, u_input.b.x), Struct_1(vec3<bool>(true, true, true), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 17290i), vec2<i32>(u_input.a.x, -32353i)), _wgslsmith_f_op_f32(f32(-1f) * -745f), true), abs(firstTrailingBit(u_input.b.zw)), Struct_3(Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<i32>(u_input.a.x, 0i), 2468f, true), vec3<f32>(-397f, -845f, -373f)), u_input.b.x & 4294967295u, select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), Struct_1(vec3<bool>(false, false, false), vec2<i32>(1i, u_input.a.x), -1000f, true)))), func_2(), Struct_3(Struct_2(Struct_1(select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, true, true)), u_input.a.zx, -146f, any(vec3<bool>(false, false, false))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(450f, -170f, -638f))) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(-449f, -215f, -1427f), vec3<f32>(372f, -1293f, -325f))))), u_input.b.x, vec3<bool>(true, all(vec2<bool>(true, true)), false), Struct_1(vec3<bool>(false, true, true), _wgslsmith_add_vec2_i32(vec2<i32>(u_input.a.x, 39268i), select(u_input.a.zy, vec2<i32>(46203i, 1286i), vec2<bool>(false, false))), -481f, true)));
    var var_0 = Struct_2(Struct_1(vec3<bool>((-5666i | u_input.a.x) < u_input.a.x, !func_2().d, true), _wgslsmith_clamp_vec2_i32(-vec2<i32>(-2147483647i, u_input.a.x), u_input.a.xz, ~vec2<i32>(38415i, u_input.a.x)) << (reverseBits(vec2<u32>(u_input.b.x, u_input.b.x)) % vec2<u32>(32u)), _wgslsmith_f_op_f32(f32(-1f) * -1773f), true), vec3<f32>(-1027f, _wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(select(988f, _wgslsmith_f_op_f32(sign(-294f)), true))));
    let var_1 = var_0.a;
    global1 = var_1.b.x;
    var var_2 = reverseBits(_wgslsmith_div_vec3_u32(max(~u_input.b.zzy, firstTrailingBit(vec3<u32>(10984u, 16501u, 4294967295u))) ^ u_input.b.zxx, vec3<u32>(~(~u_input.b.x), u_input.b.x, u_input.b.x)));
    var_2 = vec3<u32>(firstTrailingBit(4294967295u >> (var_2.x % 32u)), u_input.b.x, countOneBits(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(vec4<u32>(34982u, var_2.x, 14695u, u_input.b.x), u_input.b), ~u_input.b)) << (var_2.x % 32u));
    let var_3 = Struct_2(func_2(), vec3<f32>(1207f, _wgslsmith_f_op_f32(min(1127f, _wgslsmith_f_op_f32(var_0.a.c + _wgslsmith_div_f32(var_0.b.x, var_1.c)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(var_1.c)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.c) + _wgslsmith_div_f32(var_0.a.c, -727f)))));
    let var_4 = Struct_1(vec3<bool>(var_1.a.x, false, 25376i > _wgslsmith_sub_i32(min(2147483647i, var_0.a.b.x), _wgslsmith_add_i32(1i, var_0.a.b.x))), vec2<i32>(_wgslsmith_clamp_i32(6716i & var_3.a.b.x, _wgslsmith_dot_vec4_i32(~vec4<i32>(u_input.a.x, var_1.b.x, -27012i, var_1.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, 0i), vec4<i32>(var_0.a.b.x, u_input.a.x, u_input.a.x, var_0.a.b.x))), _wgslsmith_dot_vec3_i32(vec3<i32>(2147483647i, 47718i, -67068i), u_input.a)), 29751i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_3.a.c, -589f))), !select(all(vec4<bool>(true, true, var_0.a.d, var_1.a.x)), var_1.d, true));
    var var_5 = var_4.c;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_dot_vec2_u32(var_2.yy, vec2<u32>(var_2.x, 4294967295u) << (u_input.b.yy % vec2<u32>(32u)))), -countOneBits(firstLeadingBit(vec4<i32>(var_4.b.x, -2147483647i, -70107i, var_3.a.b.x))), var_4.c);
}

