struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: vec3<f32>,
    c: vec3<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: bool,
    b: i32,
    c: u32,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: vec4<i32>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<u32>,
    c: vec2<i32>,
    d: i32,
    e: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<i32>,
    b: vec2<u32>,
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_5, arg_1: vec3<f32>, arg_2: i32, arg_3: Struct_3) -> bool {
    var var_0 = Struct_1(true, 1746i, vec2<u32>(3378u, arg_3.b.c.x));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(_wgslsmith_div_f32(arg_1.x, _wgslsmith_f_op_f32(-arg_1.x)), _wgslsmith_f_op_f32(f32(-1f) * -402f), -245f, arg_0.a.x))), arg_0.a, select(!vec4<bool>(var_0.a, any(vec3<bool>(var_0.a, true, false)), select(var_0.a, true, true), var_0.a), !(!(!vec4<bool>(var_0.a, var_0.a, arg_3.b.a, true))), select(vec4<bool>(arg_3.b.a, arg_3.b.a, arg_2 <= var_0.b, true != arg_3.b.a), !select(vec4<bool>(var_0.a, arg_3.b.a, true, false), vec4<bool>(var_0.a, arg_3.b.a, var_0.a, false), var_0.a), abs(u_input.b.x) <= var_0.c.x))));
    var var_2 = Struct_1(false, -(~_wgslsmith_mult_i32(var_0.b, _wgslsmith_add_i32(-37299i, 2147483647i))), select(~abs(_wgslsmith_add_vec2_u32(vec2<u32>(49791u, u_input.b.x), u_input.b.wy)), arg_3.a.wx, select(vec2<bool>(var_0.a, all(vec2<bool>(true, arg_3.b.a))), vec2<bool>(true, false), select(select(vec2<bool>(true, true), vec2<bool>(arg_3.b.a, false), arg_3.b.a), vec2<bool>(false, var_0.a), !var_0.a))));
    var var_3 = !var_0.a;
    var var_4 = arg_3.b;
    return any(vec4<bool>(!var_4.a, true, !(true != select(var_4.a, false, var_4.a)), _wgslsmith_f_op_f32(step(1224f, _wgslsmith_f_op_f32(-var_1.x))) == var_1.x));
}

fn func_2() -> bool {
    var var_0 = Struct_4(!(_wgslsmith_f_op_f32(trunc(-1000f)) >= -1123f), _wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(firstTrailingBit(vec3<i32>(u_input.d, -2147483647i, u_input.d) ^ vec3<i32>(u_input.a, -32594i, 0i)), vec3<i32>(1i, u_input.e.x, u_input.e.x) ^ _wgslsmith_add_vec3_i32(vec3<i32>(25013i, -2147483647i, u_input.c.x), vec3<i32>(u_input.e.x, u_input.d, 1i))), vec3<i32>(u_input.d >> (u_input.b.x % 32u), i32(-1i) * -2147483647i, _wgslsmith_add_i32(u_input.c.x, i32(-1i) * -1i))), 57979u, Struct_1(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(2325f, -472f, -2503f, -1342f), vec4<f32>(1060f, 1000f, 1906f, 605f))), -vec4<i32>(u_input.c.x, u_input.c.x, u_input.d, 30601i)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1816f, 1302f, 1624f)), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(700f, 564f, -138f), vec3<f32>(-708f, 1419f, -604f), true))), ~(-2147483647i), Struct_3(vec4<u32>(u_input.b.x, u_input.b.x, u_input.b.x, u_input.b.x), Struct_1(false, 71897i, vec2<u32>(4294967295u, u_input.b.x)))), 781i, _wgslsmith_clamp_vec2_u32(u_input.b.yy, min(u_input.b.xw, vec2<u32>(u_input.b.x, 4294967295u)) ^ vec2<u32>(u_input.b.x, u_input.b.x), u_input.b.xx >> (u_input.b.wy % vec2<u32>(32u)))), ~(1977u ^ _wgslsmith_mod_u32(u_input.b.x << (1u % 32u), 0u)));
    var_0 = Struct_4(var_0.d.a, 1i, _wgslsmith_clamp_u32(132892u, _wgslsmith_div_u32(~var_0.e, ~(~u_input.b.x)), firstLeadingBit(1u) ^ _wgslsmith_dot_vec4_u32(_wgslsmith_mult_vec4_u32(u_input.b, vec4<u32>(var_0.c, 34911u, var_0.d.c.x, 0u)), vec4<u32>(107275u, var_0.e, 0u, 4294967295u))), Struct_1(var_0.d.a & false, u_input.e.x, ~vec2<u32>(_wgslsmith_dot_vec3_u32(u_input.b.yzz, u_input.b.ywz), ~57948u)), _wgslsmith_div_u32(reverseBits(var_0.e), firstTrailingBit(26134u)));
    var var_1 = vec3<f32>(-1143f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-654f - 577f), _wgslsmith_f_op_f32(floor(-624f))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(-1535f, -248f)) - -1155f))), -482f);
    let var_2 = -8541i;
    let var_3 = abs(~vec4<u32>(abs(_wgslsmith_dot_vec3_u32(vec3<u32>(4684u, 17786u, 15213u), vec3<u32>(var_0.c, 28952u, 8800u))), (u_input.b.x >> (10176u % 32u)) | reverseBits(23103u), u_input.b.x, ~4294967295u));
    return true;
}

fn func_1() -> bool {
    var var_0 = vec4<i32>((i32(-1i) * -(~u_input.e.x)) ^ abs(-select(u_input.e.x, 2147483647i, true)), firstLeadingBit(1i), _wgslsmith_mult_i32(u_input.d, ~(~firstTrailingBit(u_input.a))), _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, u_input.e.x, _wgslsmith_mult_i32(_wgslsmith_clamp_i32(2147483647i, u_input.e.x, u_input.e.x), _wgslsmith_dot_vec3_i32(vec3<i32>(1i, u_input.e.x, u_input.d), vec3<i32>(0i, 7204i, 1i)))), _wgslsmith_sub_vec3_i32(vec3<i32>(2147483647i, ~u_input.a, -u_input.e.x), ~vec3<i32>(-1i, u_input.a, u_input.e.x) << (_wgslsmith_mod_vec3_u32(u_input.b.zwz, u_input.b.yxz) % vec3<u32>(32u)))));
    var_0 = select(vec4<i32>(-1i, firstLeadingBit(~(~u_input.a)), _wgslsmith_dot_vec3_i32(~(-vec3<i32>(-37232i, 0i, 18043i)), ~vec3<i32>(u_input.e.x, -2147483647i, -53481i)), _wgslsmith_mult_i32(u_input.d, min(_wgslsmith_mult_i32(var_0.x, u_input.e.x), -1i & u_input.a))), abs(abs(_wgslsmith_div_vec4_i32(~vec4<i32>(-2147483647i, var_0.x, 23803i, -2147483647i), vec4<i32>(0i, 28096i, u_input.d, -2147483647i)))), select(vec4<bool>(true, false, func_2(), true), select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), true), vec4<bool>(true, true, all(vec4<bool>(false, true, false, true)), u_input.b.x == 13838u), false), vec4<bool>(all(select(vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true))), any(vec4<bool>(true, true, true, true)), true, true)));
    var var_1 = vec3<bool>(false, true, any(select(select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true)), vec3<bool>(false, true, true))));
    var_0 = vec4<i32>(~var_0.x, _wgslsmith_add_i32(var_0.x, ~countOneBits(-u_input.a)), 5963i, firstLeadingBit(var_0.x));
    var var_2 = -firstLeadingBit(abs(max(vec3<i32>(0i, -25292i, var_0.x), var_0.yzx)) ^ min(var_0.zyy ^ vec3<i32>(0i, u_input.c.x, -2147483647i), min(vec3<i32>(var_0.x, u_input.d, u_input.e.x), vec3<i32>(var_0.x, var_0.x, 17734i))));
    return var_1.x || select(u_input.c.x < var_0.x, var_1.x, (u_input.b.x & 0u) < max(1u, ~1u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(func_1(), ~u_input.e.x, u_input.b.zx);
    let var_1 = all(!select(!(!vec4<bool>(var_0.a, true, var_0.a, false)), vec4<bool>(!var_0.a, var_0.a, true, var_0.a), vec4<bool>(all(vec4<bool>(var_0.a, false, true, true)), !var_0.a, false, false)));
    var var_2 = Struct_4(select(func_3(Struct_5(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1592f, 1019f, 960f, -1034f)), vec4<i32>(-54800i, u_input.e.x, u_input.c.x, u_input.e.x)), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(988f, 1148f, 973f) * vec3<f32>(-379f, 148f, -1000f)), vec3<f32>(1000f, -1686f, 351f)), abs(i32(-1i) * -12893i), Struct_3(abs(u_input.b), Struct_1(var_1, 1i, vec2<u32>(0u, 42658u)))), false == var_1, func_3(Struct_5(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-1000f, 1000f, -197f, -866f), vec4<f32>(117f, -231f, -295f, -105f))), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.e.x, var_0.b, 39863i, var_0.b), vec4<i32>(-1i, var_0.b, -1i, u_input.e.x))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1775f, -182f, -615f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1432f, -866f, 549f))), abs(_wgslsmith_div_i32(u_input.c.x, 45292i)), Struct_3(vec4<u32>(var_0.c.x, u_input.b.x, 1u, var_0.c.x), var_0))), _wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(select(reverseBits(vec3<i32>(var_0.b, var_0.b, var_0.b)), _wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, u_input.d), vec3<i32>(1i, -1i, 1i), vec3<i32>(u_input.a, 2147483647i, 0i)), var_0.a), firstTrailingBit(~vec3<i32>(var_0.b, -47141i, 43638i)), _wgslsmith_sub_vec3_i32(abs(vec3<i32>(-40200i, 0i, u_input.e.x)), vec3<i32>(var_0.b, var_0.b, -26617i))), firstTrailingBit(abs(~vec3<i32>(u_input.d, var_0.b, -1i)))), 0u, Struct_1(any(vec4<bool>(!var_0.a, true, var_0.a, any(vec4<bool>(var_0.a, true, var_1, true)))), _wgslsmith_div_i32(-2147483647i, u_input.d), ~(~u_input.b.xz)), var_0.c.x);
    let var_3 = reverseBits(u_input.b.wzy);
    let var_4 = ~var_2.d.c.x;
    let var_5 = abs(vec2<u32>(~(var_4 ^ u_input.b.x), select(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b.x, 43320u), vec2<u32>(u_input.b.x, var_3.x)), ~_wgslsmith_mod_u32(var_2.e, 4407u), true)));
    var_2 = Struct_4(any(select(select(vec2<bool>(var_2.d.a, true), vec2<bool>(true, true), true), vec2<bool>(var_2.a || true, false), any(vec4<bool>(false, var_1, true, true)))), _wgslsmith_dot_vec2_i32(-min(u_input.c, u_input.e), u_input.e), var_4, Struct_1(var_0.c.x <= countOneBits(~var_5.x), _wgslsmith_mod_i32(59383i, -2147483647i), ~countOneBits(var_5)), 1u);
    let var_6 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1847f))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(211f - -601f), _wgslsmith_f_op_f32(f32(-1f) * -729f))), 1f))) + vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(449f)))), 518f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1f + _wgslsmith_f_op_f32(f32(-1f) * -1535f)))));
    var var_7 = ~var_0.c.x;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e, (abs(reverseBits(var_0.c)) ^ vec2<u32>(var_0.c.x ^ 1672u, abs(1u))) | ~abs(vec2<u32>(0u, 4294967295u)));
}

