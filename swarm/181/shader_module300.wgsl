struct Struct_1 {
    a: vec3<i32>,
    b: vec2<i32>,
    c: vec3<i32>,
    d: vec2<f32>,
    e: vec4<f32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<bool>,
    c: vec3<i32>,
    d: vec2<bool>,
    e: u32,
}

struct Struct_4 {
    a: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: Struct_4,
    c: Struct_2,
    d: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec3<u32>,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_5, 30> = array<Struct_5, 30>(Struct_5(50000u, Struct_4(vec3<bool>(true, true, false)), Struct_2(vec4<i32>(0i, 34759i, 5968i, i32(-2147483648))), 1u), Struct_5(4294967295u, Struct_4(vec3<bool>(false, false, false)), Struct_2(vec4<i32>(32023i, -1i, -28993i, 57214i)), 23350u), Struct_5(1u, Struct_4(vec3<bool>(true, false, false)), Struct_2(vec4<i32>(i32(-2147483648), -72904i, 1i, 4653i)), 4294967295u), Struct_5(1u, Struct_4(vec3<bool>(true, true, true)), Struct_2(vec4<i32>(0i, 1i, -47874i, -40594i)), 0u), Struct_5(4294967295u, Struct_4(vec3<bool>(true, true, true)), Struct_2(vec4<i32>(31950i, -22708i, 1i, -1i)), 1u), Struct_5(694u, Struct_4(vec3<bool>(true, false, true)), Struct_2(vec4<i32>(-53376i, -74057i, -1i, 5448i)), 0u), Struct_5(1u, Struct_4(vec3<bool>(true, false, true)), Struct_2(vec4<i32>(46795i, 31615i, 0i, i32(-2147483648))), 1u), Struct_5(23591u, Struct_4(vec3<bool>(false, false, true)), Struct_2(vec4<i32>(97530i, i32(-2147483648), 1i, -34476i)), 1u), Struct_5(72195u, Struct_4(vec3<bool>(false, true, true)), Struct_2(vec4<i32>(i32(-2147483648), 1i, -47962i, 2147483647i)), 1u), Struct_5(16806u, Struct_4(vec3<bool>(false, false, true)), Struct_2(vec4<i32>(-2285i, 0i, 0i, -51463i)), 20246u), Struct_5(91082u, Struct_4(vec3<bool>(false, false, false)), Struct_2(vec4<i32>(i32(-2147483648), -1i, 25614i, -21368i)), 34807u), Struct_5(71890u, Struct_4(vec3<bool>(true, false, false)), Struct_2(vec4<i32>(-1i, -8066i, -29622i, 1i)), 4294967295u), Struct_5(31983u, Struct_4(vec3<bool>(true, false, false)), Struct_2(vec4<i32>(i32(-2147483648), 1i, 0i, 2147483647i)), 74579u), Struct_5(15179u, Struct_4(vec3<bool>(true, false, true)), Struct_2(vec4<i32>(1i, i32(-2147483648), -1i, -71583i)), 75995u), Struct_5(41354u, Struct_4(vec3<bool>(false, false, true)), Struct_2(vec4<i32>(2147483647i, 1i, 15909i, -11808i)), 4294967295u), Struct_5(0u, Struct_4(vec3<bool>(false, true, false)), Struct_2(vec4<i32>(-12878i, 80757i, 1i, 1i)), 46217u), Struct_5(11342u, Struct_4(vec3<bool>(true, true, false)), Struct_2(vec4<i32>(-51614i, 0i, 0i, -23119i)), 15806u), Struct_5(1u, Struct_4(vec3<bool>(false, false, true)), Struct_2(vec4<i32>(-1i, -1i, -90015i, 11128i)), 5718u), Struct_5(1u, Struct_4(vec3<bool>(true, true, false)), Struct_2(vec4<i32>(i32(-2147483648), -1i, -50083i, -30617i)), 64537u), Struct_5(13242u, Struct_4(vec3<bool>(false, false, true)), Struct_2(vec4<i32>(-45960i, i32(-2147483648), 0i, 21429i)), 91353u), Struct_5(76766u, Struct_4(vec3<bool>(true, true, false)), Struct_2(vec4<i32>(-15710i, -14194i, 1i, 2147483647i)), 1u), Struct_5(24255u, Struct_4(vec3<bool>(true, false, false)), Struct_2(vec4<i32>(i32(-2147483648), 25941i, -8463i, 0i)), 0u), Struct_5(38948u, Struct_4(vec3<bool>(false, true, false)), Struct_2(vec4<i32>(i32(-2147483648), 21080i, -1i, 0i)), 38372u), Struct_5(0u, Struct_4(vec3<bool>(true, false, false)), Struct_2(vec4<i32>(2147483647i, 55284i, 5052i, -7138i)), 37202u), Struct_5(27523u, Struct_4(vec3<bool>(false, true, false)), Struct_2(vec4<i32>(2147483647i, -26008i, 5669i, 0i)), 4294967295u), Struct_5(28810u, Struct_4(vec3<bool>(false, false, false)), Struct_2(vec4<i32>(2147483647i, -27374i, 1i, 2147483647i)), 64204u), Struct_5(1u, Struct_4(vec3<bool>(true, true, false)), Struct_2(vec4<i32>(1i, -68820i, -64801i, -1i)), 4294967295u), Struct_5(26485u, Struct_4(vec3<bool>(false, true, true)), Struct_2(vec4<i32>(406i, 25486i, i32(-2147483648), 0i)), 4294967295u), Struct_5(1u, Struct_4(vec3<bool>(false, true, false)), Struct_2(vec4<i32>(-945i, 32461i, 0i, 35869i)), 4294967295u), Struct_5(4294967295u, Struct_4(vec3<bool>(true, false, false)), Struct_2(vec4<i32>(1i, -5355i, 23005i, 1i)), 0u));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: f32) -> vec3<i32> {
    global0 = array<Struct_5, 30>();
    var var_0 = select(select(!vec2<bool>(any(vec2<bool>(arg_1, false)), u_input.d > u_input.d), select(select(select(vec2<bool>(false, true), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1)), select(vec2<bool>(true, true), vec2<bool>(arg_1, false), arg_1), all(vec4<bool>(true, true, arg_1, arg_1))), !vec2<bool>(arg_1, arg_1), !select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1))), arg_0 <= arg_0), !select(!vec2<bool>(arg_1, true), !vec2<bool>(arg_1, arg_1), vec2<bool>(any(vec2<bool>(true, arg_1)), any(vec3<bool>(arg_1, arg_1, arg_1)))), vec2<bool>(arg_1, select(!arg_1, false, true)));
    var var_1 = Struct_1(~countOneBits(vec3<i32>(u_input.a, u_input.d, 1i)), vec2<i32>(~(-25031i), 1i), abs(_wgslsmith_sub_vec3_i32(reverseBits(_wgslsmith_mod_vec3_i32(vec3<i32>(810i, 12723i, -98173i), vec3<i32>(u_input.a, -2147483647i, 29787i))), vec3<i32>(58951i, ~u_input.d, u_input.a))), vec2<f32>(arg_0, _wgslsmith_f_op_f32(-1247f + -665f)), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(vec4<f32>(1953f, arg_2, 286f, -785f), vec4<f32>(arg_2, -722f, 858f, arg_0))))))));
    var_1 = Struct_1(~vec3<i32>(var_1.c.x, min(u_input.a, ~(-10959i)), 16057i), firstTrailingBit(select(vec2<i32>(-2147483647i, abs(var_1.b.x)), firstLeadingBit(var_1.c.yz) | reverseBits(vec2<i32>(2147483647i, 0i)), vec2<bool>(arg_1, true))), reverseBits(~(~vec3<i32>(u_input.d, -1i, 1i))), var_1.d, vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(845f, var_1.e.x, false)), _wgslsmith_f_op_f32(abs(-184f))))), arg_0, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(616f * 323f)), arg_0, var_0.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0, arg_0)))));
    var_0 = !(!vec2<bool>(!arg_1, true));
    return vec3<i32>((~(~u_input.d) | _wgslsmith_dot_vec2_i32(-vec2<i32>(11688i, u_input.d), var_1.b)) ^ -27998i, _wgslsmith_mod_i32(countOneBits(-var_1.c.x), -1i), 15141i);
}

fn func_4(arg_0: u32, arg_1: Struct_1) -> vec4<bool> {
    global0 = array<Struct_5, 30>();
    var var_0 = Struct_5(u_input.c, Struct_4(vec3<bool>(true, true, true)), Struct_2(vec4<i32>(arg_1.b.x, ~(-14757i), arg_1.b.x, u_input.d) << (vec4<u32>(~u_input.c, arg_0, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, arg_0, 0u), vec3<u32>(4294967295u, arg_0, 4294967295u)), firstLeadingBit(arg_0)) % vec4<u32>(32u))), u_input.c & u_input.c);
    let var_1 = Struct_3(0u, select(select(select(vec4<bool>(true, var_0.b.a.x, true, var_0.b.a.x), select(vec4<bool>(var_0.b.a.x, false, false, var_0.b.a.x), vec4<bool>(true, true, true, var_0.b.a.x), vec4<bool>(false, false, true, true)), !vec4<bool>(false, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), !(!vec4<bool>(var_0.b.a.x, false, true, var_0.b.a.x)), true), select(vec4<bool>(true, var_0.b.a.x, var_0.b.a.x, all(vec4<bool>(false, true, var_0.b.a.x, true))), vec4<bool>(select(var_0.b.a.x, false, true), true, var_0.b.a.x, var_0.b.a.x | false), true), select(!select(vec4<bool>(true, true, var_0.b.a.x, false), vec4<bool>(false, true, var_0.b.a.x, var_0.b.a.x), vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), !(!vec4<bool>(var_0.b.a.x, var_0.b.a.x, var_0.b.a.x, var_0.b.a.x)), !vec4<bool>(false, var_0.b.a.x, true, var_0.b.a.x))), vec3<i32>(u_input.a >> (24693u % 32u), var_0.c.a.x, -1i), var_0.b.a.xz, ~arg_0);
    var var_2 = u_input.b.zx;
    var var_3 = select(vec2<i32>(~_wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_1.c.xy, vec2<i32>(-80355i, -1i)), countOneBits(-8033i)), 34007i), (countOneBits(vec2<i32>(54287i, 0i)) ^ _wgslsmith_clamp_vec2_i32(vec2<i32>(u_input.d, -39977i), -arg_1.a.xy, -var_0.c.a.zw)) >> (~u_input.b.xy % vec2<u32>(32u)), select(vec2<bool>(true, false), var_1.b.zz, select(!(!var_1.d), !var_0.b.a.zx, select(!var_1.b.yx, vec2<bool>(var_1.b.x, var_1.d.x), var_0.b.a.x))));
    return select(var_1.b, var_1.b, any(!var_1.b));
}

fn func_2(arg_0: bool) -> Struct_3 {
    return Struct_3(~(u_input.b.x << (75774u % 32u)), func_4(u_input.b.x & ~u_input.b.x, Struct_1(firstTrailingBit(abs(vec3<i32>(u_input.d, -1i, -1i))), min(vec2<i32>(887i, 0i), vec2<i32>(-2147483647i, u_input.a) | vec2<i32>(u_input.a, -9368i)), _wgslsmith_sub_vec3_i32(func_3(-246f, false, -1000f), vec3<i32>(2147483647i, -1i, -16054i)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-1183f, 1340f), vec2<f32>(-1419f, 839f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(320f, 515f))), vec4<f32>(_wgslsmith_div_f32(-1450f, 1127f), -229f, -207f, -290f))), reverseBits(vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(16206i, 22055i, u_input.a), vec3<i32>(u_input.d, u_input.d, 32997i)), u_input.a, _wgslsmith_mult_i32(1419i, -28422i))) >> (~abs(vec3<u32>(u_input.b.x, 10167u, 9312u)) % vec3<u32>(32u)), func_4(_wgslsmith_dot_vec2_u32(abs(u_input.b.xy), u_input.b.yx), Struct_1(~_wgslsmith_add_vec3_i32(vec3<i32>(-32594i, u_input.d, u_input.a), vec3<i32>(-20251i, -2147483647i, -2147483647i)), ~vec2<i32>(0i, 2147483647i), abs(vec3<i32>(-2147483647i, u_input.d, u_input.d)), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-217f, 661f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-581f, -1698f)), select(vec2<bool>(arg_0, arg_0), vec2<bool>(true, arg_0), vec2<bool>(true, false)))), _wgslsmith_div_vec4_f32(vec4<f32>(-674f, -385f, 1138f, 1164f), vec4<f32>(-308f, -1018f, -1052f, -846f)))).zy, ~_wgslsmith_clamp_u32(select(1u, _wgslsmith_mod_u32(230u, u_input.c), false), 4294967295u, u_input.c));
}

fn func_1(arg_0: f32, arg_1: i32, arg_2: f32) -> bool {
    global0 = array<Struct_5, 30>();
    var var_0 = func_2(true);
    var var_1 = Struct_1(var_0.c, _wgslsmith_div_vec2_i32(abs(abs(-vec2<i32>(arg_1, 2147483647i))), var_0.c.xy), vec3<i32>(-1i, var_0.c.x, -_wgslsmith_dot_vec4_i32(select(vec4<i32>(-11575i, 2147483647i, u_input.a, var_0.c.x), vec4<i32>(46636i, -20481i, 27260i, 8154i), var_0.b.x), _wgslsmith_mult_vec4_i32(vec4<i32>(arg_1, 10167i, u_input.d, -2147483647i), vec4<i32>(u_input.d, u_input.a, var_0.c.x, u_input.a)))), _wgslsmith_f_op_vec2_f32(floor(vec2<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(arg_0 * arg_0))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(188f)), _wgslsmith_f_op_f32(arg_0 + arg_0))))), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(arg_0, arg_2, _wgslsmith_f_op_f32(arg_0 - -754f), _wgslsmith_f_op_f32(step(arg_2, 354f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2, -1186f, -1436f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0, arg_2, arg_2, 117f)), vec4<bool>(var_0.d.x, true, true, var_0.b.x))), !(!vec4<bool>(var_0.b.x, false, false, false)))))));
    global0 = array<Struct_5, 30>();
    var var_2 = Struct_4(var_0.b.wyy);
    return false;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = all(vec3<bool>(true, true, !func_1(_wgslsmith_f_op_f32(sign(823f)), firstTrailingBit(u_input.d), _wgslsmith_f_op_f32(max(856f, -1000f)))));
    var var_1 = ((2147483647i ^ _wgslsmith_clamp_i32(-81005i ^ u_input.d, func_2(false).c.x, _wgslsmith_dot_vec4_i32(vec4<i32>(-21216i, u_input.a, u_input.a, -2147483647i), vec4<i32>(u_input.a, u_input.d, 31475i, u_input.a)))) >= ~48539i) | (1u > reverseBits(_wgslsmith_add_u32(1u, u_input.c) | u_input.c));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(685f, -1533f, 659f, -453f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1084f, 1000f, -373f, -579f)), true))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(1661f, -1810f, 1568f, 519f) + vec4<f32>(-399f, -1148f, -1167f, -634f))))));
    global0 = array<Struct_5, 30>();
    var var_3 = Struct_2(max(reverseBits(vec4<i32>(abs(-29768i), firstLeadingBit(u_input.a), ~1891i, func_2(false).c.x)), vec4<i32>(-54759i, u_input.d, -37061i | _wgslsmith_mod_i32(u_input.d, u_input.a), -2147483647i)));
    var_0 = false;
    var var_4 = vec3<f32>(_wgslsmith_div_f32(171f, -1503f), _wgslsmith_f_op_f32(select(1108f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1134f + var_2.x) + _wgslsmith_f_op_f32(exp2(var_2.x))), !(!select(true, false, true)))), _wgslsmith_f_op_f32(sign(-1337f)));
    var_3 = Struct_2(var_3.a);
    let var_5 = -1026f;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_vec3_u32(firstTrailingBit(~_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c, 1u, u_input.b.x), vec3<u32>(17664u, 0u, 8595u))), ~vec3<u32>(u_input.b.x, 4294967295u, u_input.b.x) >> (_wgslsmith_sub_vec3_u32(u_input.b, select(u_input.b, u_input.b, true)) % vec3<u32>(32u))), var_4.xx);
}

