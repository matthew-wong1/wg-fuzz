struct Struct_1 {
    a: vec4<i32>,
    b: vec4<i32>,
}

struct Struct_2 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: vec3<f32>,
}

struct Struct_3 {
    a: vec2<f32>,
    b: vec4<i32>,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
}

struct Struct_5 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
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

var<private> global0: Struct_3;

var<private> global1: f32 = 952f;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn func_3(arg_0: bool) -> vec2<u32> {
    var var_0 = ~(~u_input.d);
    global1 = global0.a.x;
    var_0 = u_input.d;
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(1000f, global0.a.x));
    let var_2 = Struct_5(select(select(!select(vec3<bool>(arg_0, arg_0, false), vec3<bool>(true, true, arg_0), vec3<bool>(arg_0, false, false)), select(select(vec3<bool>(true, true, false), vec3<bool>(true, true, arg_0), vec3<bool>(true, arg_0, arg_0)), vec3<bool>(false, arg_0, true), false), true || (false || arg_0)), !vec3<bool>(select(false, false, false), all(vec4<bool>(true, arg_0, arg_0, arg_0)), arg_0), arg_0), !select(!select(vec3<bool>(arg_0, false, false), vec3<bool>(false, true, false), vec3<bool>(arg_0, arg_0, arg_0)), !select(vec3<bool>(arg_0, false, true), vec3<bool>(false, arg_0, true), vec3<bool>(true, arg_0, arg_0)), vec3<bool>(arg_0, any(vec3<bool>(true, arg_0, arg_0)), arg_0)), abs(~((u_input.c | u_input.c) >> (vec4<u32>(2131u, 79412u, 1u, 10904u) % vec4<u32>(32u)))), _wgslsmith_add_vec2_u32(_wgslsmith_div_vec2_u32(~u_input.c.zw, u_input.c.zx) ^ u_input.c.yy, vec2<u32>(~u_input.c.x | ~u_input.c.x, 4294967295u)));
    return ~(~_wgslsmith_mult_vec2_u32(vec2<u32>(u_input.d, u_input.d) >> (_wgslsmith_sub_vec2_u32(u_input.c.wy, vec2<u32>(6101u, u_input.c.x)) % vec2<u32>(32u)), _wgslsmith_add_vec2_u32(countOneBits(vec2<u32>(var_2.c.x, 44547u)), ~vec2<u32>(1u, 4294967295u))));
}

fn func_2(arg_0: vec2<bool>) -> Struct_3 {
    var var_0 = vec2<i32>(countOneBits(2147483647i), abs(max(1i ^ u_input.a.x, _wgslsmith_mult_i32(u_input.b.x, u_input.b.x)))) << (u_input.c.wx % vec2<u32>(32u));
    var var_1 = countOneBits(vec2<u32>(u_input.c.x, 55430u << (u_input.d % 32u)) & _wgslsmith_mod_vec2_u32(func_3(true), vec2<u32>(4294967295u, 1u))) & (vec2<u32>(select(~4294967295u, select(55516u, 96769u, false), false), ~u_input.c.x) ^ vec2<u32>(abs(u_input.c.x) ^ u_input.d, min(~0u, 4294967295u)));
    var_0 = u_input.a.yz;
    var var_2 = u_input.b.x;
    var var_3 = vec4<u32>(~1u << (abs(~reverseBits(var_1.x)) % 32u), firstLeadingBit(u_input.d), ~(~u_input.d), var_1.x);
    return Struct_3(global0.a, _wgslsmith_add_vec4_i32(_wgslsmith_mod_vec4_i32(vec4<i32>(var_0.x, 2147483647i, 2147483647i, var_0.x), countOneBits(global0.c.a) & ~vec4<i32>(global0.c.a.x, 12620i, 0i, u_input.b.x)), ~vec4<i32>(u_input.b.x, -u_input.a.x, -var_0.x, ~2147483647i)), global0.c, Struct_1(-select(~vec4<i32>(0i, global0.c.b.x, var_0.x, var_0.x), _wgslsmith_mod_vec4_i32(global0.c.b, vec4<i32>(32904i, 0i, 39197i, u_input.b.x)), arg_0.x), ~vec4<i32>(_wgslsmith_mod_i32(-52175i, global0.d.b.x), -36897i, 1i, 38529i)));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: Struct_3, arg_3: i32) -> Struct_3 {
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.a.x * _wgslsmith_div_f32(arg_2.a.x, 146f)))), -430f);
    let var_0 = !all(vec4<bool>(true, true, true, true));
    let var_1 = Struct_5(vec3<bool>(var_0, select(any(select(vec2<bool>(var_0, var_0), vec2<bool>(var_0, var_0), false)), true, var_0 && (var_0 || true)), var_0), !(!(!select(vec3<bool>(false, false, var_0), vec3<bool>(var_0, true, var_0), true))), ~max(_wgslsmith_clamp_vec4_u32(u_input.c, vec4<u32>(u_input.d, 18575u, u_input.c.x, 0u), vec4<u32>(1u, u_input.d, u_input.c.x, u_input.c.x)), u_input.c), ~_wgslsmith_div_vec2_u32(u_input.c.ww, u_input.c.zz));
    let var_2 = -349f;
    var var_3 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2) - _wgslsmith_f_op_f32(max(515f, arg_0.a.x))) + 1250f), _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(-601f, _wgslsmith_f_op_f32(-1000f * global0.a.x)))))));
    return arg_0;
}

fn func_1(arg_0: u32) -> Struct_1 {
    var var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1234f, global0.a.x, global0.a.x)) * _wgslsmith_f_op_vec3_f32(vec3<f32>(-1170f, 1538f, global0.a.x) * vec3<f32>(889f, global0.a.x, -2012f))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.a.x, -540f, -895f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-180f, global0.a.x, 585f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1026f, 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1629f * -490f)))), vec3<bool>(false, global0.a.x == -1240f, true)));
    global0 = func_4(func_2(select(vec2<bool>(true, true), select(vec2<bool>(false, false), select(vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true)), any(vec4<bool>(true, false, true, true))), vec2<bool>(true, true))), Struct_1(_wgslsmith_sub_vec4_i32(countOneBits(~vec4<i32>(-31127i, 2147483647i, 13488i, -31928i)), select(u_input.b, _wgslsmith_sub_vec4_i32(u_input.b, vec4<i32>(-15572i, 56838i, -2147483647i, global0.d.b.x)), vec4<bool>(true, true, false, true))), _wgslsmith_div_vec4_i32(select(select(global0.b, vec4<i32>(1i, global0.b.x, u_input.a.x, 23187i), false), vec4<i32>(30011i, 0i, -57103i, -1i), vec4<bool>(true, true, true, true)), global0.b)), Struct_3(var_0.zy, abs(~(u_input.b ^ u_input.b)), Struct_1(u_input.b, reverseBits(global0.b)), Struct_1(global0.b, ~(vec4<i32>(global0.d.a.x, u_input.b.x, global0.b.x, global0.c.b.x) >> (vec4<u32>(arg_0, 5261u, 27096u, 72710u) % vec4<u32>(32u))))), min(_wgslsmith_clamp_i32(-15075i, 1i, global0.c.b.x), -10159i) & _wgslsmith_dot_vec3_i32(vec3<i32>(22883i, u_input.a.x, reverseBits(2147483647i)), vec3<i32>(0i, min(-22924i, u_input.b.x), -28713i)));
    var var_1 = max(u_input.c.www, ~_wgslsmith_mult_vec3_u32(~vec3<u32>(arg_0, u_input.c.x, 4294967295u), max(u_input.c.xwz, u_input.c.xyz)));
    let var_2 = Struct_1(firstTrailingBit(-vec4<i32>(1i, global0.c.a.x, -710i, -1i)) >> (_wgslsmith_add_vec4_u32(vec4<u32>(u_input.c.x ^ var_1.x, _wgslsmith_dot_vec2_u32(vec2<u32>(var_1.x, var_1.x), vec2<u32>(1u, arg_0)), u_input.c.x, select(var_1.x, 1u, false)), select(abs(u_input.c), u_input.c, true)) % vec4<u32>(32u)), vec4<i32>(-12397i, global0.c.b.x, -1i, -8340i));
    var var_3 = vec2<bool>(!all(vec4<bool>(false, true, global0.b.x < 2147483647i, true)), true);
    return var_2;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = Struct_3(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-241f, _wgslsmith_f_op_f32(-global0.a.x)), _wgslsmith_f_op_vec2_f32(abs(global0.a)))), u_input.b, global0.c, func_1(0u));
    global1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.a.x + global0.a.x) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-336f))));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.a.x), _wgslsmith_f_op_f32(global0.a.x + _wgslsmith_f_op_f32(max(-492f, 605f))), global0.a.x < global0.a.x)), -1086f, global0.a.x));
    let var_1 = Struct_2(-global0.c.a, func_2(vec2<bool>((u_input.c.x >> (u_input.c.x % 32u)) < u_input.c.x, true || any(vec2<bool>(true, true)))).c, Struct_1(_wgslsmith_div_vec4_i32(-global0.d.b, vec4<i32>(~52495i, _wgslsmith_mult_i32(-1i, -24153i), ~global0.b.x, i32(-1i) * -10036i)), reverseBits(func_4(Struct_3(vec2<f32>(-415f, 322f), vec4<i32>(u_input.a.x, global0.d.a.x, -1i, 0i), Struct_1(vec4<i32>(-2147483647i, 14581i, 0i, global0.d.a.x), vec4<i32>(global0.d.a.x, u_input.b.x, -2147483647i, 41495i)), Struct_1(vec4<i32>(0i, u_input.a.x, global0.b.x, 0i), global0.b)), func_2(vec2<bool>(true, true)).d, Struct_3(var_0.yz, vec4<i32>(global0.d.b.x, 2147483647i, global0.c.a.x, u_input.b.x), Struct_1(vec4<i32>(-1i, -2147483647i, -2147483647i, -1i), vec4<i32>(global0.b.x, u_input.a.x, -29467i, 7548i)), global0.d), 2147483647i).d.b)), Struct_1(vec4<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(-2147483647i, global0.b.x, -516i), vec3<i32>(global0.d.a.x, global0.b.x, u_input.b.x)), -23184i & _wgslsmith_add_i32(2147483647i, u_input.a.x), global0.b.x, u_input.a.x), ~(~(-global0.c.b))), vec3<f32>(_wgslsmith_div_f32(-665f, _wgslsmith_f_op_f32(max(-1571f, -552f))), var_0.x, 569f));
    var var_2 = Struct_2(vec4<i32>(var_1.c.a.x, global0.b.x, _wgslsmith_dot_vec3_i32(var_1.c.b.xzw, var_1.b.b.wzx), -(~1i)), global0.d, Struct_1(-max(vec4<i32>(0i, var_1.a.x, u_input.a.x, -2147483647i), u_input.b), var_1.d.a), func_4(func_2(select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false)), select(vec2<bool>(false, true), vec2<bool>(true, true), false), vec2<bool>(true, true))), Struct_1(_wgslsmith_mult_vec4_i32(vec4<i32>(var_1.b.a.x, 0i, -2147483647i, global0.b.x), var_1.d.b), func_2(select(vec2<bool>(false, false), vec2<bool>(true, true), false)).b), func_4(func_2(vec2<bool>(true, false)), Struct_1(vec4<i32>(-30641i, global0.b.x, u_input.a.x, u_input.a.x), _wgslsmith_div_vec4_i32(u_input.b, vec4<i32>(0i, global0.d.b.x, global0.d.a.x, u_input.b.x))), Struct_3(_wgslsmith_f_op_vec2_f32(global0.a * vec2<f32>(var_0.x, 419f)), _wgslsmith_mod_vec4_i32(vec4<i32>(u_input.a.x, -37277i, 13761i, -5241i), vec4<i32>(u_input.b.x, -24180i, u_input.a.x, u_input.a.x)), global0.d, Struct_1(vec4<i32>(1i, var_1.d.a.x, -1i, -1i), u_input.b)), _wgslsmith_mod_i32(-14991i, _wgslsmith_clamp_i32(47726i, var_1.b.a.x, -8764i))), 0i).c, _wgslsmith_f_op_vec3_f32(var_1.e - vec3<f32>(var_0.x, -1603f, _wgslsmith_f_op_f32(min(475f, _wgslsmith_f_op_f32(628f - global0.a.x))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.a.x, _wgslsmith_f_op_f32(-var_1.e.x), 625f))), vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(abs(485f)), 1323f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))) * var_2.e.x), 719f), select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true))));
    var_2 = var_1;
    var var_4 = abs(max(~vec3<u32>(4294967295u, ~13265u, u_input.c.x), min(~vec3<u32>(u_input.c.x, 53876u, 1u), firstTrailingBit(u_input.c.yzx) | _wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.d, u_input.c.x), vec3<u32>(0u, 23772u, 1u)))));
    let var_5 = -vec2<i32>(select(var_2.d.b.x ^ 76921i, abs(-7081i) >> (u_input.d % 32u), true), _wgslsmith_dot_vec2_i32(min(select(u_input.a.xx, var_2.a.wz, vec2<bool>(false, true)), _wgslsmith_mod_vec2_i32(vec2<i32>(u_input.a.x, 41994i), vec2<i32>(var_1.b.b.x, u_input.a.x))), _wgslsmith_mult_vec2_i32(var_1.b.b.ww, firstTrailingBit(vec2<i32>(var_1.b.b.x, global0.b.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_5.x);
}

