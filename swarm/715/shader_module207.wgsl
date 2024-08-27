struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec3<u32>,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_2,
    d: Struct_1,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec4<f32>,
    c: u32,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
    c: vec2<f32>,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: u32;

var<private> global2: array<Struct_3, 22>;

var<private> global3: vec3<f32>;

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32, arg_1: vec2<u32>) -> vec2<bool> {
    global1 = _wgslsmith_add_u32(40297u, _wgslsmith_div_u32(_wgslsmith_add_u32(arg_0, u_input.c.x), arg_0 << (u_input.c.x % 32u)));
    global1 = arg_0;
    var var_0 = _wgslsmith_mult_vec4_i32(firstLeadingBit(~vec4<i32>(_wgslsmith_add_i32(-1i, u_input.b.x), 1i, u_input.a, _wgslsmith_mult_i32(u_input.b.x, u_input.d.x))), u_input.b);
    var var_1 = firstLeadingBit(_wgslsmith_add_vec4_u32(vec4<u32>(countOneBits(0u), ~0u, min(arg_0, _wgslsmith_sub_u32(u_input.c.x, arg_0)), _wgslsmith_sub_u32(u_input.c.x, arg_0) & arg_0), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_0, ~u_input.c.x, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, arg_0), u_input.c), abs(4294967295u)), vec4<u32>(_wgslsmith_mod_u32(arg_1.x, 84538u), arg_0 << (4294967295u % 32u), reverseBits(50144u), select(4294967295u, 1u, false)), vec4<u32>(max(arg_1.x, 1u), arg_1.x & arg_0, max(u_input.c.x, 13676u), ~0u))));
    let var_2 = !(!vec2<bool>(!any(vec2<bool>(true, true)), any(vec4<bool>(true, false, true, false))));
    return select(!select(vec2<bool>(false & var_2.x, all(var_2)), !select(vec2<bool>(false, false), var_2, var_2), any(var_2)), !select(var_2, var_2, var_2.x), !select(vec2<bool>(true, true), vec2<bool>(var_0.x != 0i, all(vec4<bool>(var_2.x, false, true, var_2.x))), true));
}

fn func_2() -> Struct_2 {
    var var_0 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1034f), _wgslsmith_f_op_f32(global0.x * _wgslsmith_div_f32(global0.x, global3.x)), -705f);
    let var_1 = vec4<bool>(var_0.x == 655f, true, all(!select(func_3(29587u, u_input.c), vec2<bool>(true, false), false)), any(select(vec4<bool>(false, select(true, true, false), true, select(false, false, true)), vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true))));
    let var_2 = select(-1i, firstTrailingBit(u_input.b.x), !any(vec2<bool>(!var_1.x, false)));
    var var_3 = u_input.d;
    global2 = array<Struct_3, 22>();
    return Struct_2(Struct_1(max(~0u, u_input.c.x), !var_1.xx, vec3<u32>(18115u, 0u, ~u_input.c.x << (~u_input.c.x % 32u)), u_input.c.x, vec3<f32>(-1242f, -1000f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1177f), _wgslsmith_f_op_f32(f32(-1f) * -1273f), true)))), Struct_1(51149u ^ u_input.c.x, var_1.yw, countOneBits(reverseBits(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 64426u, 83863u), vec3<u32>(u_input.c.x, 0u, u_input.c.x)))), u_input.c.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.x, global3.x, global0.x))))), Struct_1(~u_input.c.x, var_1.wx, _wgslsmith_mult_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, 1u)), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) << (~_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x), vec3<u32>(u_input.c.x, u_input.c.x, u_input.c.x)) % vec3<u32>(32u)), 1u, vec3<f32>(global3.x, -817f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.x) + _wgslsmith_f_op_f32(global3.x * var_0.x)))), Struct_1(u_input.c.x, vec2<bool>(true, all(!var_1.yy)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.c.x, 0u, 1u) << (vec3<u32>(3705u, u_input.c.x, u_input.c.x) % vec3<u32>(32u)), max(vec3<u32>(u_input.c.x, u_input.c.x, 37984u), vec3<u32>(u_input.c.x, 4294967295u, u_input.c.x)), abs(vec3<u32>(26857u, 51340u, 4294967295u))), _wgslsmith_sub_u32(u_input.c.x, _wgslsmith_mod_u32(~u_input.c.x, _wgslsmith_dot_vec2_u32(u_input.c, u_input.c))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(global3.x, global0.x, 582f) + vec3<f32>(1530f, -104f, global3.x))) - vec3<f32>(-1012f, 1f, _wgslsmith_f_op_f32(global3.x * -315f)))), -_wgslsmith_mult_i32(var_2, abs(23837i)));
}

fn func_4(arg_0: Struct_2) -> f32 {
    let var_0 = arg_0.e;
    let var_1 = Struct_4(vec4<bool>(~(u_input.b.x << (104476u % 32u)) != firstLeadingBit(0i), true, (arg_0.d.b.x | false) && !(arg_0.c.d < 36045u), any(!vec3<bool>(arg_0.d.b.x, true, arg_0.b.b.x))), vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0.c.e.x + 1524f) - func_2().c.e.x), arg_0.a.e.x, arg_0.c.e.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global0.x))))), 0u);
    var var_2 = Struct_2(func_2().c, Struct_1(~u_input.c.x, select(!arg_0.a.b, vec2<bool>(true, true), all(arg_0.d.b)), abs(~arg_0.d.c), firstTrailingBit(~(var_1.c << (u_input.c.x % 32u))), vec3<f32>(_wgslsmith_f_op_f32(-global3.x), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-arg_0.b.e.x))), var_1.b.x)), Struct_1(firstTrailingBit(var_1.c), vec2<bool>(true, func_2().d.b.x), arg_0.c.c, _wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(35809u, 4294967295u, arg_0.b.c.x, 85649u), ~vec4<u32>(u_input.c.x, 1u, 0u, var_1.c), vec4<u32>(arg_0.c.c.x, var_1.c, 13760u, u_input.c.x)), ~(vec4<u32>(u_input.c.x, u_input.c.x, 4294967295u, u_input.c.x) ^ vec4<u32>(arg_0.d.a, var_1.c, 0u, u_input.c.x))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(var_1.b.xyz, vec3<f32>(var_1.b.x, -1064f, var_1.b.x))))), Struct_1(0u, arg_0.d.b, vec3<u32>(var_1.c, ~(~var_1.c), u_input.c.x), 5395u, _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(vec3<f32>(-1000f, arg_0.a.e.x, 210f) - _wgslsmith_f_op_vec3_f32(var_1.b.zww + vec3<f32>(-840f, arg_0.b.e.x, global3.x)))))), 36116i);
    global1 = 17751u;
    var var_3 = vec4<i32>(abs(_wgslsmith_dot_vec3_i32(~u_input.b.zyx, u_input.b.wxx)), -min(~u_input.a, arg_0.e ^ var_0), var_0, 0i);
    return arg_0.b.e.x;
}

fn func_1(arg_0: Struct_4) -> Struct_3 {
    global3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, _wgslsmith_f_op_f32(func_4(func_2())), _wgslsmith_f_op_f32(global0.x - _wgslsmith_f_op_f32(1000f - global0.x))) + arg_0.b.wxy) - arg_0.b.zyw);
    let var_0 = Struct_4(!(!vec4<bool>(false, any(arg_0.a.yw), func_3(19156u, u_input.c).x, true)), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(1319f * arg_0.b.x), _wgslsmith_f_op_f32(-arg_0.b.x), _wgslsmith_f_op_f32(round(629f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x - 534f))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(sign(arg_0.b)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-arg_0.b) * arg_0.b), (u_input.c.x < 0u) || true)), all(!select(vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), vec4<bool>(true, true, arg_0.a.x, arg_0.a.x), arg_0.a)))), abs(~_wgslsmith_div_u32(func_2().a.d, _wgslsmith_mult_u32(0u, 73976u))));
    let var_1 = func_2().a;
    let var_2 = Struct_3(Struct_2(func_2().d, func_2().c, Struct_1(firstLeadingBit(~411u), !(!arg_0.a.zz), var_1.c >> (var_1.c % vec3<u32>(32u)), ~0u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1456f), var_1.e.x, _wgslsmith_f_op_f32(346f * 101f))), func_2().d, ~(-2625i) ^ ~(~u_input.d.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().d.e.x))), Struct_2(Struct_1(max(var_0.c, _wgslsmith_sub_u32(arg_0.c, u_input.c.x)), var_1.b, var_1.c, 70802u, vec3<f32>(_wgslsmith_f_op_f32(-303f + -563f), 681f, arg_0.b.x)), Struct_1(1u & _wgslsmith_clamp_u32(arg_0.c, 0u, 4294967295u), var_0.a.zz, ~firstTrailingBit(vec3<u32>(25415u, 0u, 1u)), 96802u, _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.b.x, -380f, 1000f), var_0.b.xwz))), var_1, func_2().b, ~u_input.d.x), var_1);
    let var_3 = !arg_0.a.x;
    return Struct_3(var_2.c, 220f, Struct_2(var_2.c.d, Struct_1(~4294967295u, vec2<bool>(false, true), var_2.a.a.c, 46229u, _wgslsmith_f_op_vec3_f32(-var_0.b.zwz)), func_2().b, func_2().c, firstLeadingBit(max(u_input.a, 0i))), Struct_1(_wgslsmith_sub_u32(_wgslsmith_mod_u32(0u, 1u), 0u) << (0u % 32u), vec2<bool>(true, var_0.a.x), _wgslsmith_div_vec3_u32(~(~var_1.c), abs(~vec3<u32>(u_input.c.x, var_1.a, var_0.c))), ~(~1u), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(global0.x - -879f), _wgslsmith_f_op_f32(-var_1.e.x), -250f)))));
}

fn func_5(arg_0: i32, arg_1: Struct_3) -> bool {
    var var_0 = Struct_3(Struct_2(func_1(Struct_4(select(vec4<bool>(arg_1.d.b.x, true, false, true), vec4<bool>(false, arg_1.c.a.b.x, arg_1.d.b.x, arg_1.d.b.x), vec4<bool>(arg_1.d.b.x, false, arg_1.d.b.x, arg_1.c.b.b.x)), vec4<f32>(arg_1.b, -511f, -929f, -263f), 16431u << (u_input.c.x % 32u))).d, arg_1.a.c, arg_1.c.a, func_2().c, min(_wgslsmith_add_i32(func_1(Struct_4(vec4<bool>(false, arg_1.a.d.b.x, false, arg_1.d.b.x), vec4<f32>(global0.x, global0.x, 1899f, 1052f), u_input.c.x)).a.e, max(arg_0, arg_0)), _wgslsmith_mod_i32(u_input.a, _wgslsmith_add_i32(arg_1.c.e, -1i)))), _wgslsmith_f_op_f32(min(arg_1.a.b.e.x, 1472f)), arg_1.a, arg_1.c.d);
    global3 = vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1052f), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(sign(1361f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(4294967295u, vec2<bool>(arg_1.a.b.b.x, true), vec3<u32>(var_0.a.a.a, 1u, u_input.c.x), 1u, vec3<f32>(arg_1.d.e.x, global0.x, -1523f)), arg_1.a.c, Struct_1(u_input.c.x, var_0.d.b, arg_1.c.a.c, 0u, vec3<f32>(-738f, arg_1.b, global3.x)), arg_1.d, 1i))))), false)), -106f);
    var var_1 = vec2<i32>(10042i, min(~(i32(-1i) * -2147483647i) ^ arg_1.c.e, _wgslsmith_mod_i32(countOneBits(arg_1.a.e) >> (var_0.a.c.c.x % 32u), reverseBits(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.c.e, arg_1.c.e), vec2<i32>(1i, arg_1.a.e))))));
    let var_2 = arg_1.a.d;
    global1 = u_input.c.x;
    return var_2.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_4(!vec4<bool>(true, func_5(1i, func_1(Struct_4(vec4<bool>(false, false, true, false), vec4<f32>(-164f, 443f, global0.x, global0.x), 1u))), 817f == _wgslsmith_f_op_f32(-global3.x), false), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_4(Struct_2(Struct_1(u_input.c.x, vec2<bool>(false, true), vec3<u32>(0u, u_input.c.x, 0u), 4294967295u, vec3<f32>(global0.x, -355f, 1000f)), Struct_1(46279u, vec2<bool>(true, true), vec3<u32>(u_input.c.x, 5836u, u_input.c.x), u_input.c.x, vec3<f32>(global3.x, 300f, global3.x)), Struct_1(71382u, vec2<bool>(true, true), vec3<u32>(u_input.c.x, u_input.c.x, 0u), 0u, vec3<f32>(735f, global3.x, global3.x)), Struct_1(1u, vec2<bool>(false, true), vec3<u32>(1u, u_input.c.x, 0u), 62096u, vec3<f32>(1000f, global3.x, -1539f)), u_input.b.x))) + _wgslsmith_f_op_f32(-global3.x)), -1022f, _wgslsmith_f_op_f32(floor(-223f)), _wgslsmith_f_op_f32(global0.x - global3.x))), 91889u);
    global0 = vec2<f32>(235f, var_0.b.x);
    let var_1 = i32(-1i) * -2147483647i;
    let var_2 = Struct_3(Struct_2(func_2().b, Struct_1(_wgslsmith_add_u32(_wgslsmith_clamp_u32(1u, 24954u, 27749u), 0u), vec2<bool>(!var_0.a.x, true), ~(~vec3<u32>(1u, 0u, u_input.c.x)), 0u, vec3<f32>(_wgslsmith_f_op_f32(var_0.b.x - global0.x), _wgslsmith_f_op_f32(473f + var_0.b.x), var_0.b.x)), func_1(var_0).a.b, func_2().c, ~(~(~(-1i)))), _wgslsmith_f_op_f32(global3.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(var_0.b.x))))), func_2(), Struct_1(_wgslsmith_mult_u32(var_0.c, 593u), vec2<bool>(any(!var_0.a.yx), true), ~(vec3<u32>(0u, var_0.c, 22363u) << (~vec3<u32>(170u, 0u, 47746u) % vec3<u32>(32u))), 41355u, vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -561f), _wgslsmith_f_op_f32(f32(-1f) * -595f), _wgslsmith_div_f32(491f, _wgslsmith_f_op_f32(global0.x * -599f)))));
    let var_3 = Struct_3(Struct_2(Struct_1(~u_input.c.x, select(func_2().b.b, vec2<bool>(var_0.a.x, var_2.c.a.b.x), select(var_2.c.c.b, var_0.a.yy, var_0.a.x)), var_2.a.d.c, 0u, _wgslsmith_f_op_vec3_f32(exp2(var_2.c.c.e))), Struct_1(~var_0.c & var_0.c, func_1(var_0).c.d.b, ~firstLeadingBit(var_2.a.b.c), var_2.d.a, vec3<f32>(765f, _wgslsmith_f_op_f32(min(-1300f, 1612f)), _wgslsmith_f_op_f32(-var_2.c.b.e.x))), func_2().d, func_1(var_0).c.b, 0i), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2().c.e.x + global3.x)), func_2(), Struct_1(~(~var_2.d.c.x), !func_2().d.b, var_2.d.c, select(var_2.c.b.c.x, var_2.c.a.d ^ countOneBits(var_2.a.b.a), var_2.c.d.b.x), func_2().c.e));
    let var_4 = ~_wgslsmith_dot_vec2_i32(~(-vec2<i32>(u_input.b.x, u_input.b.x) >> (u_input.c % vec2<u32>(32u))), u_input.d.yy);
    global1 = select(_wgslsmith_dot_vec2_u32(vec2<u32>(var_0.c, u_input.c.x), u_input.c | func_1(Struct_4(var_0.a, vec4<f32>(123f, 1044f, -933f, -614f), 11364u)).c.d.c.yx), _wgslsmith_div_u32(34395u, _wgslsmith_sub_u32(var_3.c.c.c.x, var_0.c)) << (var_0.c % 32u), func_5(var_4, Struct_3(var_3.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-236f + var_2.b) - -1494f), func_1(var_0).a, Struct_1(1u, vec2<bool>(false, var_3.a.a.b.x), ~vec3<u32>(u_input.c.x, 5574u, 4294967295u), abs(1u), var_3.a.b.e))));
    let var_5 = var_0;
    let x = u_input.a;
    s_output = StorageBuffer(~select(~var_2.a.a.c.yx, _wgslsmith_sub_vec2_u32(vec2<u32>(113020u, 54972u), vec2<u32>(44613u, 11273u)), true), 47835i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(var_2.a.d.e.x, -995f), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.x, global3.x) * var_3.a.b.e.xy)), !var_5.a.x)))), _wgslsmith_sub_i32(firstLeadingBit(~(-18014i)), var_1), -390f);
}

