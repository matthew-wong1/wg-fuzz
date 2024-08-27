struct Struct_1 {
    a: u32,
    b: vec4<i32>,
    c: vec3<i32>,
    d: vec4<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: vec3<bool>,
    c: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: bool,
    c: vec3<f32>,
}

struct Struct_5 {
    a: Struct_4,
    b: vec2<f32>,
    c: Struct_1,
    d: i32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn func_1() -> i32 {
    return abs(firstTrailingBit(reverseBits(1i)));
}

fn func_3(arg_0: Struct_5, arg_1: vec2<i32>) -> vec2<bool> {
    var var_0 = Struct_5(Struct_4(1u, !(_wgslsmith_f_op_f32(1000f + arg_0.b.x) <= _wgslsmith_f_op_f32(1000f + arg_0.a.c.x)), arg_0.a.c), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(trunc(-531f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-412f, 421f, false)))) * _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1527f, -850f), vec2<f32>(-270f, -819f))) + _wgslsmith_f_op_vec2_f32(arg_0.a.c.yz - vec2<f32>(arg_0.b.x, -180f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.b.x, 2439f))))), arg_0.c, 0i, arg_0.e);
    let var_1 = arg_0.e;
    var var_2 = u_input.a.x;
    var_0 = Struct_5(arg_0.a, _wgslsmith_f_op_vec2_f32(var_0.b + vec2<f32>(_wgslsmith_f_op_f32(exp2(arg_0.a.c.x)), -1091f)), Struct_1(~var_0.a.a, arg_0.c.b, arg_0.c.b.zyy, !select(vec4<bool>(var_1.a.x, var_1.a.x, false, true), vec4<bool>(true, arg_0.e.a.x, true, true), var_1.a.x), vec4<i32>(var_0.c.c.x, var_0.c.c.x, _wgslsmith_add_i32(5197i, 4568i), arg_0.d)), -18561i, var_0.e);
    let var_3 = _wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(var_0.a.c.yz))) - arg_0.a.c.yz) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-626f, -759f))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1195f, var_0.b.x)))));
    return select(!(!select(!vec2<bool>(var_0.e.a.x, true), vec2<bool>(true, var_1.a.x), select(var_1.a, vec2<bool>(true, var_1.a.x), var_0.e.a.x))), arg_0.c.d.xz, var_0.e.a);
}

fn func_2(arg_0: u32, arg_1: vec4<f32>, arg_2: vec3<i32>) -> bool {
    var var_0 = Struct_5(Struct_4(arg_0, true, _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(round(arg_1.x)), _wgslsmith_f_op_f32(trunc(-467f)), arg_1.x), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(min(vec3<f32>(-1612f, arg_1.x, arg_1.x), arg_1.yxw)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.x, 916f, arg_1.x)), vec3<bool>(false, true, false))))), arg_1.yx, Struct_1(16484u, abs(_wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(-16864i, 6082i, arg_2.x, arg_2.x), vec4<i32>(8356i, -9192i, arg_2.x, 26676i)), vec4<i32>(49503i, arg_2.x, arg_2.x, 2147483647i))), abs(~arg_2), !select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, false), false), countOneBits(abs(reverseBits(vec4<i32>(arg_2.x, -49282i, arg_2.x, 1i))))), arg_2.x, Struct_2(select(func_3(Struct_5(Struct_4(36363u, true, arg_1.xwx), arg_1.zx, Struct_1(u_input.a.x, vec4<i32>(1i, arg_2.x, arg_2.x, arg_2.x), vec3<i32>(-41628i, arg_2.x, -2147483647i), vec4<bool>(false, false, false, true), vec4<i32>(-11131i, arg_2.x, arg_2.x, 1i)), arg_2.x, Struct_2(vec2<bool>(true, true))), arg_2.xy), vec2<bool>(true, true), vec2<bool>(-973f <= arg_1.x, true))));
    var var_1 = -21309i;
    var_0 = Struct_5(Struct_4(u_input.a.x & 21169u, all(!vec4<bool>(true, var_0.e.a.x, true, var_0.c.d.x)), _wgslsmith_f_op_vec3_f32(-arg_1.yxy)), arg_1.zz, var_0.c, 1i, Struct_2(var_0.c.d.zz));
    let var_2 = var_0.c;
    var_0 = Struct_5(var_0.a, vec2<f32>(1599f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -582f)))))), var_0.c, 26263i, var_0.e);
    return false && var_2.d.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.a.x, (min(_wgslsmith_add_vec4_i32(vec4<i32>(10869i, 9227i, 1i, 1i), vec4<i32>(-16975i, -57564i, -82404i, -43699i)), vec4<i32>(1i, 1i, 1i, 1i)) >> (vec4<u32>(~u_input.a.x, ~144982u, ~0u, abs(u_input.a.x)) % vec4<u32>(32u))) ^ -vec4<i32>(~2147483647i, ~0i, 2147483647i, 1i), vec3<i32>(_wgslsmith_mult_i32(-17183i, 17868i), func_1(), -(~(~22940i))), vec4<bool>(true, true || any(vec4<bool>(true, true, true, true)), func_2(1u, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-600f, 1351f, 812f, 134f) * vec4<f32>(1237f, 1000f, -372f, -240f))), ~(-vec3<i32>(-26686i, -56381i, -8619i))), any(vec2<bool>(true, true))), _wgslsmith_sub_vec4_i32(select(_wgslsmith_div_vec4_i32(vec4<i32>(-1i, 0i, -1i, -1i), vec4<i32>(-6397i, 56913i, -2147483647i, 2147483647i)) >> (~vec4<u32>(u_input.a.x, u_input.a.x, 1u, u_input.a.x) % vec4<u32>(32u)), vec4<i32>(~(-2147483647i), 1i, 1i, 0i), vec4<bool>(true, any(vec4<bool>(true, true, false, false)), false, true)), vec4<i32>(1i, max(max(-26026i, 0i), 10295i), _wgslsmith_clamp_i32(1i, i32(-1i) * -2147483647i, max(-27863i, 64426i)), i32(-1i) * -2147483647i)));
    var_0 = Struct_1(34895u, var_0.e, -var_0.c, var_0.d, select(firstLeadingBit(var_0.b) | reverseBits(var_0.b), _wgslsmith_clamp_vec4_i32(-abs(vec4<i32>(var_0.e.x, var_0.e.x, -26380i, 18245i)), ~(var_0.b & vec4<i32>(0i, var_0.b.x, var_0.b.x, var_0.b.x)), vec4<i32>(~var_0.e.x, ~var_0.e.x, max(var_0.b.x, -24890i), _wgslsmith_mult_i32(1i, 0i))), !vec4<bool>(var_0.d.x, var_0.d.x, select(true, true, true), !var_0.d.x)));
    let var_1 = var_0.b;
    let var_2 = Struct_3(Struct_1(1u, select(select(var_0.e, vec4<i32>(var_0.b.x, 2147483647i, var_0.c.x, var_1.x), !var_0.d), var_0.e | -vec4<i32>(var_1.x, var_0.c.x, var_0.e.x, var_1.x), false), var_1.wwz, !vec4<bool>(!var_0.d.x, !var_0.d.x, var_0.d.x, var_0.d.x), -var_0.b), select(!var_0.d.zwz, vec3<bool>(true, any(vec2<bool>(var_0.d.x, true)), true), var_0.d.x), Struct_1(var_0.a, vec4<i32>(var_0.e.x, _wgslsmith_clamp_i32(var_1.x, var_0.b.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, var_0.b.x, var_0.c.x, var_0.c.x), vec4<i32>(var_0.b.x, 7176i, var_0.c.x, var_1.x))), var_0.b.x, _wgslsmith_dot_vec2_i32(_wgslsmith_clamp_vec2_i32(vec2<i32>(20009i, var_1.x), vec2<i32>(var_1.x, 2147483647i), vec2<i32>(var_0.b.x, var_0.b.x)), var_1.zz)), _wgslsmith_div_vec3_i32(firstLeadingBit(var_0.c), var_0.c), select(var_0.d, select(vec4<bool>(false, var_0.d.x, var_0.d.x, var_0.d.x), select(vec4<bool>(var_0.d.x, var_0.d.x, var_0.d.x, var_0.d.x), vec4<bool>(false, var_0.d.x, true, false), var_0.d), !vec4<bool>(var_0.d.x, false, var_0.d.x, false)), vec4<bool>(true, !var_0.d.x, true, true)), countOneBits(vec4<i32>(_wgslsmith_div_i32(var_0.c.x, var_1.x), 0i & var_0.b.x, 1i, var_0.c.x))));
    var var_3 = var_1.x;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(~reverseBits(vec4<u32>(var_0.a, 40032u, var_2.c.a, 6361u))));
}

