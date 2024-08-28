struct Struct_1 {
    a: vec3<f32>,
    b: bool,
    c: i32,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<bool>,
    c: f32,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> i32 {
    var var_0 = Struct_2(Struct_1(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-618f, -328f, 1497f), vec3<f32>(-567f, 1366f, 569f), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-512f, -313f, -596f))))), all(vec3<bool>(true, true, select(false, true, false))), 1i, 0i), select(select(vec3<bool>(true, u_input.b.x != u_input.c, true), vec3<bool>(true, true, true), vec3<bool>(false, u_input.a.x >= u_input.c, all(vec3<bool>(true, false, true)))), !select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, true, false), false), true), select(true, true, _wgslsmith_f_op_f32(select(-2150f, 1091f, false)) < _wgslsmith_f_op_f32(round(1348f)))), _wgslsmith_f_op_f32(min(-514f, _wgslsmith_f_op_f32(round(929f)))));
    var var_1 = max(56921u, ~(4294967295u & (1u >> (_wgslsmith_clamp_u32(6916u, 42313u, 14504u) % 32u))));
    var var_2 = abs(reverseBits(~vec4<i32>(0i, u_input.c, ~2147483647i, min(var_0.a.d, 38889i))));
    let var_3 = vec4<u32>(max(~reverseBits(15797u), ~_wgslsmith_div_u32(firstTrailingBit(0u), _wgslsmith_sub_u32(22614u, 1u))), abs(0u), ~_wgslsmith_sub_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(39010u, 4294967295u), vec2<u32>(4294967295u, 0u)) | ~0u, ~_wgslsmith_dot_vec4_u32(vec4<u32>(73057u, 94208u, 50201u, 18608u), vec4<u32>(0u, 0u, 35985u, 4294967295u))), (firstTrailingBit(_wgslsmith_dot_vec3_u32(vec3<u32>(108672u, 0u, 25256u), vec3<u32>(30461u, 1u, 44318u))) ^ 0u) & 47766u);
    var var_4 = ~(~(~(~_wgslsmith_mult_vec4_u32(vec4<u32>(var_3.x, 4294967295u, 30376u, 4294967295u), var_3))));
    return reverseBits(u_input.b.x);
}

fn func_2() -> Struct_2 {
    let var_0 = reverseBits(func_3());
    var var_1 = true;
    let var_2 = firstTrailingBit(vec4<u32>(1u, _wgslsmith_sub_u32(_wgslsmith_div_u32(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 0u, 60016u, 83671u), vec4<u32>(0u, 1u, 100899u, 1u))), _wgslsmith_sub_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(1u, 26203u, 65943u), vec3<u32>(1u, 0u, 4294967295u)), 1u)), 50533u << (_wgslsmith_div_u32(select(94693u, 22236u, false), max(8406u, 27963u)) % 32u), 1u));
    var_1 = false || (!any(vec4<bool>(true, true, false, true)) && !(!any(vec3<bool>(true, false, false))));
    var var_3 = Struct_2(Struct_1(vec3<f32>(1f, 1f, 1f), false, _wgslsmith_dot_vec3_i32(~u_input.a.zwx, ~(~vec3<i32>(u_input.c, var_0, var_0))), abs(-2147483647i | select(var_0, 1i, false))), vec3<bool>(!(!(30536u >= var_2.x)), true, all(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), true))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(-172f, 145f)))) - 1936f));
    return Struct_2(var_3.a, select(select(!select(vec3<bool>(var_3.a.b, var_3.a.b, false), vec3<bool>(false, var_3.b.x, true), true), var_3.b, var_3.a.a.x >= -1818f), var_3.b, select(select(!var_3.b, var_3.b, !var_3.b.x), vec3<bool>(var_3.a.b, var_3.a.b && var_3.b.x, true), true)), 1000f);
}

fn func_1() -> u32 {
    let var_0 = ~max(1u, _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(select(vec2<u32>(0u, 4294967295u), vec2<u32>(0u, 4294967295u), vec2<bool>(true, true)), vec2<u32>(1u, 1u)), ~vec2<u32>(34507u, 40346u)));
    var var_1 = func_2();
    var var_2 = select(_wgslsmith_div_vec3_i32(u_input.a.zzy, vec3<i32>(u_input.a.x, u_input.a.x, 29332i)), _wgslsmith_sub_vec3_i32(select(_wgslsmith_mult_vec3_i32(~u_input.a.yyz, firstLeadingBit(u_input.a.xzz)), u_input.a.zww, false), firstLeadingBit(select(vec3<i32>(0i, var_1.a.c, -2147483647i), u_input.a.yyw, vec3<bool>(true, true, var_1.a.b))) & u_input.a.xwz), !var_1.b);
    var var_3 = ~1i;
    var_1 = Struct_2(func_2().a, vec3<bool>(all(vec3<bool>(true, false, !var_1.a.b)), var_1.a.b, all(select(select(vec4<bool>(var_1.a.b, var_1.b.x, true, var_1.b.x), vec4<bool>(var_1.b.x, var_1.a.b, var_1.b.x, true), vec4<bool>(var_1.b.x, var_1.a.b, true, false)), select(vec4<bool>(var_1.a.b, var_1.b.x, true, true), vec4<bool>(var_1.a.b, var_1.a.b, var_1.a.b, var_1.a.b), true), !vec4<bool>(true, var_1.a.b, false, false)))), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-507f - _wgslsmith_f_op_f32(ceil(var_1.a.a.x))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(549f * _wgslsmith_f_op_f32(var_1.c * var_1.a.a.x)))), false)));
    return 1u;
}

fn func_4(arg_0: bool, arg_1: Struct_2) -> Struct_1 {
    var var_0 = arg_0 && !(!all(vec2<bool>(false, true)));
    var var_1 = arg_1;
    var_0 = func_2().b.x;
    let var_2 = abs(abs(firstLeadingBit(~0u)));
    let var_3 = abs(vec2<u32>(~(~var_2 >> (_wgslsmith_mult_u32(var_2, 0u) % 32u)), 20138u));
    return Struct_1(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a.x) * arg_1.a.a.x), _wgslsmith_f_op_f32(f32(-1f) * -1248f), var_1.c), arg_1.b.x, -firstTrailingBit(_wgslsmith_mult_i32(0i, ~u_input.c)), ~2147483647i);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec3<i32>(u_input.a.x, _wgslsmith_dot_vec2_i32(vec2<i32>(-(~u_input.b.x), u_input.a.x), ~_wgslsmith_mult_vec2_i32(abs(u_input.b), u_input.b)), -923i);
    var var_1 = func_4(true & (abs(select(0u, 0u, true)) > _wgslsmith_mult_u32(1u, func_1())), func_2());
    var_0 = select(vec3<i32>(i32(-1i) * -1i, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_sub_i32(5860i, var_1.d), -45806i), vec2<i32>(~81960i, -5404i)), var_0.x), select(select(~_wgslsmith_mod_vec3_i32(vec3<i32>(13233i, 1331i, 21123i), u_input.a.wxy), -u_input.a.zzw, !select(vec3<bool>(var_1.b, false, var_1.b), vec3<bool>(false, var_1.b, var_1.b), true)), _wgslsmith_mult_vec3_i32(max(_wgslsmith_mod_vec3_i32(vec3<i32>(var_1.c, var_0.x, var_1.c), vec3<i32>(var_0.x, u_input.a.x, var_0.x)), ~u_input.a.zxz), _wgslsmith_div_vec3_i32(reverseBits(u_input.a.yzx), ~vec3<i32>(1i, 1i, -2147483647i))), !(!(!vec3<bool>(true, true, var_1.b)))), any(vec4<bool>(!(!var_1.b), select(false, var_1.b, true), !var_1.b, !var_1.b & (var_1.a.x >= 281f))));
    var var_2 = select(select(func_2().b.xy, select(!func_2().b.yx, func_2().b.yz, true), vec2<bool>(true, var_1.b | false)), !vec2<bool>(var_1.b, !(var_1.b & false)), false);
    var_0 = vec3<i32>(func_2().a.c, var_1.d, reverseBits(_wgslsmith_mod_i32(0i, ~u_input.b.x)) | u_input.a.x);
    var_2 = vec2<bool>(true, var_1.b);
    let var_3 = select(vec2<bool>(!var_2.x, true), select(vec2<bool>(!any(vec2<bool>(true, var_1.b)), false), !(!vec2<bool>(false, var_2.x)), all(vec3<bool>(true, var_2.x, var_2.x)) | !var_1.b), var_2.x);
    var_1 = func_4(true, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(select(var_1.a, _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1071f, var_1.a.x, var_1.a.x)), true)), true || var_1.b, -8503i, 30606i), vec3<bool>(var_3.x, true, all(select(vec4<bool>(false, true, var_1.b, true), vec4<bool>(true, var_1.b, false, var_2.x), var_3.x))), -786f));
    var_1 = func_4(true, Struct_2(Struct_1(_wgslsmith_f_op_vec3_f32(func_4(var_2.x, Struct_2(Struct_1(var_1.a, var_3.x, var_0.x, var_0.x), vec3<bool>(var_2.x, true, var_3.x), 182f)).a + _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_1.a.x, var_1.a.x, var_1.a.x))), var_2.x, func_4(true, func_2()).d, u_input.c), !select(!vec3<bool>(var_3.x, var_2.x, var_1.b), vec3<bool>(var_3.x, var_2.x, false), var_2.x), _wgslsmith_div_f32(_wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, var_1.a.x), _wgslsmith_div_f32(var_1.a.x, 1361f)), _wgslsmith_f_op_f32(var_1.a.x - func_4(false, Struct_2(Struct_1(var_1.a, var_1.b, u_input.c, u_input.c), vec3<bool>(false, true, var_2.x), 668f)).a.x))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(trunc(var_1.a.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x + _wgslsmith_div_f32(_wgslsmith_div_f32(var_1.a.x, -851f), _wgslsmith_f_op_f32(-var_1.a.x)))), 14580i);
}

