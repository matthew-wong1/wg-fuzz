struct Struct_1 {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<u32>,
    d: vec3<bool>,
    e: f32,
}

struct Struct_3 {
    a: vec4<i32>,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec4<u32>,
    d: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: vec4<f32>,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: vec2<bool>) -> i32 {
    var var_0 = u_input.d.x;
    var var_1 = Struct_2(Struct_1(vec3<i32>(_wgslsmith_mult_i32(_wgslsmith_mult_i32(-22367i, u_input.d.x), 2147483647i >> (0u % 32u)), _wgslsmith_mult_i32(~0i, u_input.d.x), u_input.a.x), u_input.d.x, min(firstLeadingBit(vec3<i32>(1i, 1i, -1i)), ~vec3<i32>(u_input.d.x, u_input.a.x, 30838i)) & _wgslsmith_sub_vec3_i32(vec3<i32>(-34136i, u_input.a.x, u_input.a.x), vec3<i32>(1i, -1i, u_input.d.x) >> (u_input.c.yzx % vec3<u32>(32u)))), Struct_1(-(firstTrailingBit(vec3<i32>(u_input.a.x, u_input.d.x, u_input.d.x)) >> (u_input.c.wzx % vec3<u32>(32u))), u_input.a.x, (~vec3<i32>(1i, u_input.a.x, u_input.d.x) >> (_wgslsmith_add_vec3_u32(u_input.b.wxx, u_input.b.wzw) % vec3<u32>(32u))) | vec3<i32>(~3688i, -u_input.a.x, _wgslsmith_div_i32(40105i, 1i))), u_input.b.wx, vec3<bool>(!(true & arg_1.x), any(!select(vec4<bool>(true, true, arg_1.x, arg_1.x), vec4<bool>(false, true, true, false), vec4<bool>(false, arg_1.x, false, true))), arg_1.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0.x) * 266f)) * _wgslsmith_f_op_f32(-1691f * arg_0.x)));
    let var_2 = -456f;
    var_1 = Struct_2(Struct_1(-var_1.b.c, 54857i, max(-(vec3<i32>(u_input.d.x, var_1.a.a.x, var_1.a.b) >> (u_input.c.yzx % vec3<u32>(32u))), firstTrailingBit(vec3<i32>(-1i, 3541i, -1i)))), Struct_1(max(firstLeadingBit(var_1.a.c), var_1.b.c << (~vec3<u32>(40811u, 17825u, 51014u) % vec3<u32>(32u))), abs(~select(-47474i, u_input.a.x, var_1.d.x)), var_1.b.c), ~select(vec2<u32>(67643u, 0u), vec2<u32>(_wgslsmith_dot_vec2_u32(u_input.b.yy, u_input.c.yy), ~34814u), !var_1.d.xx), vec3<bool>(arg_1.x, any(var_1.d), all(select(vec2<bool>(true, var_1.d.x), vec2<bool>(arg_1.x, true), var_1.d.x))), var_2);
    let var_3 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1263f, _wgslsmith_f_op_f32(trunc(1430f)))) - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.x), 644f))));
    return -22083i;
}

fn func_2(arg_0: vec4<f32>) -> i32 {
    var var_0 = Struct_1(vec3<i32>(1i, u_input.d.x, 18542i), select(~(~func_3(vec4<f32>(arg_0.x, arg_0.x, 556f, arg_0.x), vec2<bool>(false, false))), u_input.d.x, false), vec3<i32>(countOneBits(u_input.d.x), i32(-1i) * -_wgslsmith_dot_vec4_i32(vec4<i32>(0i, u_input.d.x, u_input.a.x, -17860i), vec4<i32>(0i, u_input.d.x, u_input.a.x, 0i)), max(_wgslsmith_mult_i32(1i, select(u_input.a.x, u_input.a.x, false)), -13689i)));
    let var_1 = Struct_4(Struct_1(max(-vec3<i32>(-38466i, u_input.a.x, u_input.d.x), var_0.c), _wgslsmith_mult_i32(-u_input.d.x, _wgslsmith_mult_i32(u_input.d.x, 3474i)), var_0.c), Struct_3(firstLeadingBit(_wgslsmith_mult_vec4_i32(_wgslsmith_div_vec4_i32(vec4<i32>(var_0.b, var_0.a.x, u_input.a.x, -5057i), vec4<i32>(-2147483647i, u_input.a.x, 2147483647i, u_input.a.x)), _wgslsmith_mod_vec4_i32(vec4<i32>(var_0.b, var_0.a.x, var_0.c.x, -2147483647i), vec4<i32>(0i, var_0.c.x, var_0.b, -52018i)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(arg_0.x, -1923f)), arg_0.x)), true, _wgslsmith_f_op_vec3_f32(-vec3<f32>(1455f, 1744f, _wgslsmith_f_op_f32(arg_0.x * 697f))), Struct_1(var_0.a, _wgslsmith_add_i32(var_0.a.x, var_0.b & var_0.c.x), ~vec3<i32>(u_input.d.x, u_input.a.x, 17794i) | vec3<i32>(var_0.c.x, var_0.c.x, u_input.a.x))));
    var_0 = Struct_1(-abs(abs(~vec3<i32>(var_0.b, var_0.c.x, var_0.c.x))), var_1.a.a.x, min(~(vec3<i32>(var_0.b, 0i, u_input.a.x) & var_1.b.a.zxx), vec3<i32>(_wgslsmith_clamp_i32(-63514i, var_0.b, ~1i), select(~0i, var_0.c.x, var_1.b.c), -20599i)));
    var_0 = var_1.b.e;
    var var_2 = var_1.b.c;
    return 2147483647i;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> bool {
    let var_0 = Struct_1(arg_1.e.a, arg_1.e.b, arg_1.e.c);
    let var_1 = _wgslsmith_f_op_f32(select(-322f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(303f - arg_1.d.x)), false));
    let var_2 = var_1;
    let var_3 = Struct_1(countOneBits(abs(countOneBits(~arg_1.e.c))), 24553i, vec3<i32>(-2147483647i, func_2(vec4<f32>(var_2, var_2, -186f, -1000f)), -2147483647i) ^ arg_1.a.zzy);
    let var_4 = vec4<i32>(var_3.b, ~max(-11354i, countOneBits(-2147483647i)), var_3.c.x, var_0.b);
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(2333f, 239f, false)));
    let var_1 = firstTrailingBit(u_input.a.x);
    var var_2 = !(!select(select(vec3<bool>(false, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, true), vec3<bool>(false, true, true)), true), !select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), true), true & func_1(false, Struct_3(vec4<i32>(u_input.d.x, 1025i, -2147483647i, u_input.d.x), -246f, false, vec3<f32>(-173f, var_0, 502f), Struct_1(vec3<i32>(51836i, var_1, var_1), var_1, vec3<i32>(u_input.a.x, -4465i, var_1))))));
    var_2 = select(vec3<bool>(false | any(vec3<bool>(var_2.x, true, var_2.x)), false, all(!select(var_2.xy, var_2.xz, true))), vec3<bool>(!(!var_2.x), false | select(var_2.x, !var_2.x, var_2.x), false), select(select(vec3<bool>(1i <= u_input.a.x, var_2.x || var_2.x, false), select(vec3<bool>(false, var_2.x, var_2.x), vec3<bool>(false, true, var_2.x), !vec3<bool>(false, var_2.x, var_2.x)), all(!vec3<bool>(var_2.x, true, var_2.x))), select(!select(vec3<bool>(false, var_2.x, false), vec3<bool>(false, var_2.x, true), false), select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, false, true), false), select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(false, true, var_2.x)), !vec3<bool>(var_2.x, true, var_2.x)), !var_2.x), var_2.x));
    var_2 = select(select(vec3<bool>(var_2.x, true, true), !vec3<bool>(var_2.x, u_input.b.x >= u_input.b.x, var_2.x), var_2.x), vec3<bool>(any(select(select(vec2<bool>(true, var_2.x), var_2.zy, false), vec2<bool>(var_2.x, true), var_2.zz)), var_2.x, ~(-36076i) < var_1), func_1(838f != _wgslsmith_f_op_f32(sign(var_0)), Struct_3(vec4<i32>(48117i, u_input.a.x, func_2(vec4<f32>(var_0, -814f, var_0, var_0)), u_input.a.x), var_0, true, vec3<f32>(_wgslsmith_f_op_f32(var_0 * var_0), var_0, var_0), Struct_1(vec3<i32>(var_1, var_1, u_input.a.x), abs(u_input.d.x), ~vec3<i32>(-9574i, u_input.d.x, var_1)))));
    let var_3 = Struct_2(Struct_1(-abs(vec3<i32>(u_input.d.x, var_1, -11156i)), _wgslsmith_div_i32(_wgslsmith_div_i32(~0i, abs(var_1)), _wgslsmith_mult_i32(_wgslsmith_mod_i32(var_1, var_1), select(u_input.d.x, -2147483647i, var_2.x))), select(-abs(vec3<i32>(1i, var_1, var_1)), vec3<i32>(u_input.d.x, 1i, ~1i), select(!vec3<bool>(true, var_2.x, var_2.x), vec3<bool>(var_2.x, false, true), select(vec3<bool>(true, false, var_2.x), vec3<bool>(false, false, true), vec3<bool>(false, var_2.x, var_2.x))))), Struct_1(vec3<i32>(112800i, var_1, -48715i), _wgslsmith_div_i32(-84419i, 1i), select(min(~vec3<i32>(u_input.d.x, var_1, u_input.d.x), max(vec3<i32>(-1i, var_1, 32137i), vec3<i32>(-58206i, -2147483647i, 1i))), -vec3<i32>(7453i, 0i, var_1), select(select(vec3<bool>(var_2.x, var_2.x, var_2.x), vec3<bool>(var_2.x, var_2.x, var_2.x), true), vec3<bool>(true, true, true), var_2.x | true))), vec2<u32>(countOneBits(u_input.c.x), u_input.c.x << (3203u % 32u)), vec3<bool>(!all(!var_2.xx), var_2.x, !(u_input.b.x == (u_input.c.x >> (u_input.c.x % 32u)))), 686f);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-vec2<f32>(405f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_3.e) * _wgslsmith_f_op_f32(var_3.e + -586f)))), u_input.c.x, vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_0, -573f))))), _wgslsmith_f_op_f32(abs(var_3.e)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-865f + _wgslsmith_f_op_f32(-var_0)))), _wgslsmith_f_op_f32(var_0 * var_0)), _wgslsmith_div_f32(var_0, var_3.e), var_3.b.b);
}

