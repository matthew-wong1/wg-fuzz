struct Struct_1 {
    a: bool,
    b: bool,
    c: vec3<i32>,
    d: vec4<i32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<i32>,
    d: Struct_2,
    e: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<u32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec3<i32>,
    c: vec2<u32>,
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

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec4<f32>, arg_1: vec4<u32>, arg_2: Struct_1, arg_3: Struct_2) -> f32 {
    let var_0 = u_input.d;
    var var_1 = -_wgslsmith_add_i32(u_input.b, -u_input.a.x);
    var var_2 = arg_2;
    var var_3 = _wgslsmith_sub_vec2_u32(abs(_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(arg_1.yyy, u_input.c.zzz), var_0 ^ var_0), firstTrailingBit(~vec2<u32>(var_0, u_input.d)))), firstLeadingBit(vec2<u32>(255u << (~u_input.c.x % 32u), firstTrailingBit(u_input.c.x << (29234u % 32u)))));
    var_3 = ~(u_input.c.zx >> (~(~_wgslsmith_mod_vec2_u32(u_input.c.wz, vec2<u32>(0u, var_0))) % vec2<u32>(32u)));
    return -127f;
}

fn func_2(arg_0: vec3<i32>, arg_1: Struct_1, arg_2: vec2<u32>, arg_3: Struct_1) -> Struct_2 {
    var var_0 = Struct_1(true, -134f < _wgslsmith_f_op_f32(func_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1402f, -664f, 513f, -1295f) * vec4<f32>(-1000f, -1278f, -625f, 417f))), ~vec4<u32>(arg_2.x, arg_2.x, 45303u, 0u), Struct_1(arg_3.b == true, arg_3.a | arg_3.b, arg_3.d.yxx ^ vec3<i32>(4573i, arg_3.c.x, 5630i), ~arg_3.d), Struct_2(Struct_1(true, true, arg_0, arg_1.d)))), ~arg_1.d.yzz, vec4<i32>(_wgslsmith_add_i32(arg_0.x, ~(arg_1.c.x << (arg_2.x % 32u))), u_input.e, min(arg_1.d.x, -1i), ~_wgslsmith_add_i32(1i, abs(u_input.b))));
    let var_1 = any(select(vec4<bool>(any(vec2<bool>(true, true)), !(!var_0.a), any(vec3<bool>(true, true, true)), false), vec4<bool>(true, arg_1.a, false, !(true | arg_3.b)), select(true, true, arg_3.a)));
    var_0 = Struct_1(true, !var_1, _wgslsmith_clamp_vec3_i32(_wgslsmith_mod_vec3_i32(arg_1.d.zyw, arg_0 | _wgslsmith_sub_vec3_i32(vec3<i32>(0i, -27894i, 47709i), vec3<i32>(3497i, arg_1.d.x, -57430i))), select(-(~u_input.a), vec3<i32>(2147483647i, u_input.b, 2147483647i), select(select(vec3<bool>(var_0.a, false, arg_1.a), vec3<bool>(true, arg_1.b, true), vec3<bool>(true, true, true)), vec3<bool>(arg_1.b, var_1, true), true)), vec3<i32>(2147483647i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(vec4<i32>(1i, 1i, arg_1.d.x, 2147483647i), var_0.d, arg_3.d), countOneBits(vec4<i32>(-44798i, arg_1.d.x, 37424i, arg_1.d.x))), max(1i, firstLeadingBit(-30771i)))), vec4<i32>(arg_1.d.x, _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(reverseBits(vec2<i32>(arg_3.c.x, 13001i)), u_input.a.xy), -_wgslsmith_clamp_vec2_i32(u_input.a.xx, arg_3.d.xy, arg_1.c.yx)), _wgslsmith_mult_i32(_wgslsmith_dot_vec2_i32(-vec2<i32>(2147483647i, u_input.a.x), vec2<i32>(arg_0.x, var_0.c.x)), arg_0.x), 0i));
    var_0 = Struct_1(arg_1.a, var_1, vec3<i32>(i32(-1i) * -10008i, arg_1.c.x, ~reverseBits(arg_1.c.x & arg_1.d.x)), -(~arg_3.d));
    var_0 = arg_3;
    return Struct_2(Struct_1(true != any(vec4<bool>(var_0.b, arg_3.a, arg_1.a, false)), any(!select(vec3<bool>(var_0.a, true, arg_1.b), vec3<bool>(true, arg_3.a, var_1), var_0.b)), ~abs(arg_0 << (u_input.c.zwy % vec3<u32>(32u))), countOneBits(_wgslsmith_clamp_vec4_i32(~arg_3.d, vec4<i32>(u_input.e, -59348i, 0i, arg_3.d.x), arg_3.d))));
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<i32>, arg_2: vec4<u32>, arg_3: u32) -> bool {
    let var_0 = Struct_1(true, !all(vec2<bool>(true, false)) || ((arg_1.x < arg_1.x) & any(vec2<bool>(true, true))), arg_1.zwx, arg_1);
    let var_1 = func_2(u_input.a | arg_1.zwz, Struct_1(_wgslsmith_div_u32(arg_2.x, arg_2.x) < 70189u, true, u_input.a, _wgslsmith_div_vec4_i32(vec4<i32>(2147483647i, u_input.e, -22447i ^ var_0.c.x, -28465i), vec4<i32>(-6676i, arg_1.x & var_0.c.x, var_0.c.x, -39745i))), arg_2.xy, var_0);
    var var_2 = !select(vec4<bool>(all(vec4<bool>(var_0.a, var_1.a.a, var_0.b, var_0.b)), false, true, var_1.a.b), vec4<bool>(var_1.a.b, var_1.a.a || true, false, any(vec4<bool>(false, var_1.a.b, var_1.a.b, var_1.a.b))), select(select(select(vec4<bool>(var_0.b, false, true, true), vec4<bool>(false, var_0.b, var_0.b, false), false), !vec4<bool>(true, false, true, var_0.b), !vec4<bool>(var_0.a, true, true, var_1.a.b)), !(!vec4<bool>(var_1.a.a, false, var_0.b, false)), select(vec4<bool>(true, var_1.a.a, var_1.a.a, false), select(vec4<bool>(var_1.a.b, true, var_1.a.a, var_1.a.b), vec4<bool>(var_1.a.b, true, var_0.b, true), var_0.b), vec4<bool>(true, var_0.b, false, var_1.a.a))));
    var_2 = !select(select(vec4<bool>(false, var_2.x, false, true), !select(vec4<bool>(false, true, var_0.a, false), vec4<bool>(false, false, false, false), var_2.x), false), !vec4<bool>(false, all(vec4<bool>(var_2.x, var_1.a.a, var_0.a, var_0.a)), var_0.a, true), vec4<bool>(var_2.x, true, true, var_0.b));
    var var_3 = Struct_2(func_2(arg_1.xwz, var_1.a, vec2<u32>(abs(arg_2.x), _wgslsmith_mult_u32(~arg_3, abs(1u))), Struct_1(var_2.x, !var_0.b, arg_1.ywy, arg_1)).a);
    return var_2.x;
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: bool) -> Struct_2 {
    let var_0 = !vec4<bool>(4294967295u == (_wgslsmith_clamp_u32(u_input.c.x, 1u, u_input.c.x) >> (u_input.d % 32u)), arg_2, false, !arg_2);
    var var_1 = ~vec4<u32>(u_input.c.x, u_input.c.x ^ (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.c.x, u_input.d, u_input.d, 72851u), vec4<u32>(3079u, u_input.d, u_input.c.x, u_input.d)) >> (~1499u % 32u)), 10746u, ~firstLeadingBit(0u >> (u_input.c.x % 32u)));
    var var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -783f), _wgslsmith_f_op_f32(arg_0 - arg_0), arg_0), vec3<f32>(arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-893f * -917f), -916f, false)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(-603f + 195f))), true))));
    var_1 = vec4<u32>(1u, min(~select(u_input.d ^ 1u, countOneBits(64498u), var_2.x >= -293f), 46543u), _wgslsmith_add_u32(_wgslsmith_div_u32(abs(_wgslsmith_add_u32(103079u, 24580u)), ~(~var_1.x)), abs(abs(1u))), u_input.c.x);
    var var_3 = arg_1.a;
    return func_2(_wgslsmith_add_vec3_i32(vec3<i32>(-arg_1.a.c.x << (~1u % 32u), _wgslsmith_mod_i32(u_input.a.x, arg_1.a.d.x), func_2(var_3.d.zzw | vec3<i32>(arg_1.a.c.x, var_3.c.x, u_input.a.x), Struct_1(arg_2, var_3.a, arg_1.a.d.yww, vec4<i32>(1i, var_3.c.x, arg_1.a.d.x, arg_1.a.c.x)), ~u_input.c.xy, func_2(arg_1.a.d.xxy, arg_1.a, vec2<u32>(4294967295u, u_input.d), Struct_1(var_0.x, var_3.a, vec3<i32>(0i, 29221i, u_input.b), vec4<i32>(u_input.a.x, u_input.a.x, -2147483647i, var_3.c.x))).a).a.c.x), _wgslsmith_clamp_vec3_i32(min(firstLeadingBit(vec3<i32>(arg_1.a.d.x, -2147483647i, arg_1.a.c.x)), var_3.d.yxw & u_input.a), max(u_input.a, var_3.c) | vec3<i32>(var_3.d.x, arg_1.a.c.x, -20869i), -_wgslsmith_add_vec3_i32(var_3.c, vec3<i32>(930i, -11014i, u_input.e)))), arg_1.a, var_1.yz, arg_1.a);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = reverseBits(u_input.c.xz);
    let var_1 = func_4(-1113f, Struct_2(Struct_1(func_1(vec3<u32>(8905u, 59585u, var_0.x), vec4<i32>(0i, 38190i, -1i, u_input.e) | vec4<i32>(0i, u_input.a.x, u_input.a.x, 31982i), ~u_input.c, var_0.x), func_2(vec3<i32>(0i, u_input.a.x, u_input.e), func_2(vec3<i32>(-1i, u_input.a.x, 32206i), Struct_1(true, false, u_input.a, vec4<i32>(u_input.e, u_input.a.x, u_input.e, -2147483647i)), var_0, Struct_1(true, false, vec3<i32>(u_input.e, 31646i, u_input.a.x), vec4<i32>(-2147483647i, u_input.e, u_input.b, 1i))).a, ~vec2<u32>(var_0.x, u_input.c.x), func_2(vec3<i32>(u_input.e, u_input.e, u_input.a.x), Struct_1(false, false, u_input.a, vec4<i32>(u_input.e, 49124i, -4036i, 4249i)), vec2<u32>(53744u, 64928u), Struct_1(false, true, vec3<i32>(u_input.b, 48377i, 0i), vec4<i32>(-2147483647i, u_input.b, -7927i, 87604i))).a).a.b, ~(~vec3<i32>(20387i, u_input.b, -16780i)), vec4<i32>(-63524i | u_input.b, _wgslsmith_div_i32(u_input.e, 801i), u_input.a.x | -36379i, -4412i))), false);
    var var_2 = Struct_3(Struct_1(618i != var_1.a.c.x, var_1.a.b, _wgslsmith_mult_vec3_i32(~(~u_input.a), var_1.a.d.wzx), (_wgslsmith_div_vec4_i32(vec4<i32>(var_1.a.c.x, var_1.a.d.x, var_1.a.d.x, u_input.e), var_1.a.d) & select(var_1.a.d, var_1.a.d, var_1.a.a)) | ~(vec4<i32>(-6306i, u_input.e, var_1.a.d.x, -14594i) >> (u_input.c % vec4<u32>(32u)))), Struct_2(Struct_1(!all(vec3<bool>(false, false, var_1.a.b)), -16725i > _wgslsmith_dot_vec2_i32(vec2<i32>(0i, -14291i), vec2<i32>(u_input.e, 56836i)), -vec3<i32>(u_input.e, 1i, 0i), ~vec4<i32>(var_1.a.d.x, var_1.a.c.x, var_1.a.d.x, var_1.a.d.x))), _wgslsmith_div_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(-32532i, -2147483647i), -21333i, abs(-u_input.e)), vec3<i32>(-1i) * -u_input.a), var_1, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(156f, -103f, -558f, -2143f) * vec4<f32>(1f, 1f, 1f, 1f))) - vec4<f32>(1f, 1f, 1f, 1f)));
    var_2 = Struct_3(var_1.a, Struct_2(func_2(vec3<i32>(var_2.a.d.x, var_2.b.a.d.x, -1i), func_4(_wgslsmith_f_op_f32(-728f * 834f), func_2(var_2.a.c, var_1.a, vec2<u32>(56945u, u_input.d), Struct_1(true, false, u_input.a, var_2.d.a.d)), !var_2.d.a.b).a, firstTrailingBit(~var_0), var_1.a).a), ~var_1.a.d.xwx, Struct_2(var_1.a), var_2.e);
    let var_3 = !vec2<bool>(true, var_1.a.b);
    var_2 = Struct_3(func_4(-323f, Struct_2(func_2(~vec3<i32>(u_input.a.x, var_1.a.d.x, -29087i), Struct_1(var_1.a.b, true, vec3<i32>(2147483647i, 1i, -9642i), vec4<i32>(var_1.a.d.x, 21158i, 26160i, 2147483647i)), select(var_0, vec2<u32>(var_0.x, var_0.x), var_3), Struct_1(var_2.b.a.b, true, vec3<i32>(-61049i, -1i, var_1.a.d.x), vec4<i32>(1i, 29001i, var_1.a.c.x, 9783i))).a), -1917i <= _wgslsmith_clamp_i32(var_2.d.a.d.x, _wgslsmith_div_i32(1i, 23079i), -2147483647i)).a, var_2.d, _wgslsmith_sub_vec3_i32(-countOneBits(vec3<i32>(-16644i, var_2.c.x, 3161i)), vec3<i32>(-var_2.c.x ^ (var_2.a.c.x >> (var_0.x % 32u)), 29985i, -2147483647i)), func_2((_wgslsmith_div_vec3_i32(vec3<i32>(1i, 43825i, u_input.b), vec3<i32>(2147483647i, u_input.b, 27298i)) ^ u_input.a) ^ abs(u_input.a), Struct_1(var_3.x, true, vec3<i32>(_wgslsmith_div_i32(-2147483647i, var_2.a.d.x), ~u_input.a.x, select(var_2.c.x, 2147483647i, var_3.x)), _wgslsmith_mod_vec4_i32(-vec4<i32>(-3223i, u_input.e, var_2.b.a.c.x, var_2.c.x), var_1.a.d)), ~countOneBits(var_0), Struct_1(true, select(true, true, select(true, true, var_3.x)), ~(-vec3<i32>(-59469i, -6803i, 0i)), max(vec4<i32>(var_2.d.a.c.x, var_2.a.c.x, 14012i, -1i), abs(vec4<i32>(var_2.a.c.x, -44858i, u_input.a.x, -15509i))))), var_2.e);
    let var_4 = -2147483647i;
    var_2 = Struct_3(var_2.d.a, var_1, _wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(var_2.d.a.c.x, var_4, 38360i) & (vec3<i32>(var_1.a.d.x, var_1.a.c.x, var_1.a.c.x) ^ var_1.a.c), var_1.a.c), vec3<i32>(var_4, _wgslsmith_add_i32(var_4, var_2.b.a.d.x), -1i)), func_4(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1646f * 1894f) - _wgslsmith_f_op_f32(min(var_2.e.x, var_2.e.x))), func_4(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(104f + var_2.e.x))), var_1, var_1.a.b), true), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1694f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.e.x - -820f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.e.x))), _wgslsmith_f_op_vec4_f32(-var_2.e))));
    let x = u_input.a;
    s_output = StorageBuffer(~47096u, u_input.a, var_0);
}

