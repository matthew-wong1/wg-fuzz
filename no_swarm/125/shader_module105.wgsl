struct Struct_1 {
    a: i32,
    b: vec4<bool>,
    c: u32,
    d: vec3<i32>,
    e: vec2<f32>,
}

struct Struct_2 {
    a: vec2<u32>,
}

struct Struct_3 {
    a: vec3<f32>,
    b: Struct_1,
    c: i32,
}

struct Struct_4 {
    a: Struct_1,
    b: Struct_2,
    c: vec3<u32>,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<i32>,
    c: vec4<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: vec3<u32>,
    d: i32,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 8>;

var<private> global1: array<f32, 7> = array<f32, 7>(-831f, 257f, 332f, -1561f, 277f, -725f, -1626f);

var<private> global2: vec4<f32>;

var<private> global3: array<vec3<f32>, 31> = array<vec3<f32>, 31>(vec3<f32>(292f, -524f, 338f), vec3<f32>(807f, -672f, 258f), vec3<f32>(-231f, -1039f, -1130f), vec3<f32>(-770f, 788f, -760f), vec3<f32>(208f, 449f, 110f), vec3<f32>(-1003f, 1000f, 993f), vec3<f32>(-314f, -910f, -592f), vec3<f32>(-217f, 386f, -302f), vec3<f32>(1000f, -1825f, -922f), vec3<f32>(-1509f, -1000f, -665f), vec3<f32>(-738f, -1436f, -703f), vec3<f32>(1973f, 181f, 1444f), vec3<f32>(275f, 672f, -432f), vec3<f32>(145f, 259f, 2126f), vec3<f32>(654f, -1389f, -368f), vec3<f32>(-846f, -1611f, 823f), vec3<f32>(-345f, 165f, -193f), vec3<f32>(-2141f, -1953f, -854f), vec3<f32>(-797f, 261f, 794f), vec3<f32>(905f, -179f, -1000f), vec3<f32>(2221f, 1210f, 903f), vec3<f32>(-1975f, 1281f, -771f), vec3<f32>(268f, 539f, 2012f), vec3<f32>(1167f, 285f, 982f), vec3<f32>(-1179f, 800f, -236f), vec3<f32>(-2173f, 195f, -255f), vec3<f32>(146f, 144f, -230f), vec3<f32>(2086f, 912f, -1500f), vec3<f32>(1000f, -942f, -1000f), vec3<f32>(-943f, -517f, -724f), vec3<f32>(-662f, 192f, -306f));

var<private> global4: array<Struct_2, 2> = array<Struct_2, 2>(Struct_2(vec2<u32>(48391u, 60357u)), Struct_2(vec2<u32>(1u, 1u)));

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: Struct_4) -> bool {
    let var_0 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(trunc(global2.xyx))), vec3<f32>(188f, -288f, -339f)), vec3<f32>(-630f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(global2.x + 1403f), _wgslsmith_f_op_f32(-arg_0.e)), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(912f))))), !arg_0.d.b.b.xxw)) - vec3<f32>(495f, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(global2.x)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-182f - 1062f)))));
    global3 = array<vec3<f32>, 31>();
    let var_1 = arg_0.a;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-274f, 672f), _wgslsmith_div_f32(-1000f, global1[_wgslsmith_index_u32(u_input.d.x, 7u)]), all(select(var_1.b.ywz, vec3<bool>(true, true, arg_0.a.b.x), vec3<bool>(!arg_0.a.b.x, !arg_0.a.b.x, arg_0.a.b.x)))));
    let var_3 = arg_0;
    return !var_3.a.b.x;
}

fn func_2(arg_0: u32, arg_1: vec2<bool>) -> Struct_3 {
    var var_0 = !(!select(select(select(arg_1, vec2<bool>(false, true), true), vec2<bool>(false, arg_1.x), func_3(Struct_4(Struct_1(-28528i, vec4<bool>(false, false, false, arg_1.x), 68077u, u_input.c.zyx, global2.zy), global4[_wgslsmith_index_u32(arg_0, 2u)], vec3<u32>(u_input.d.x, arg_0, arg_0), Struct_3(vec3<f32>(357f, 413f, 205f), Struct_1(u_input.a.x, vec4<bool>(arg_1.x, false, arg_1.x, arg_1.x), arg_0, vec3<i32>(-1i, u_input.c.x, u_input.a.x), vec2<f32>(global2.x, 232f)), u_input.b.x), global1[_wgslsmith_index_u32(u_input.d.x, 7u)]))), !select(vec2<bool>(false, true), vec2<bool>(arg_1.x, true), true), arg_1));
    global0 = array<vec4<u32>, 8>();
    global0 = array<vec4<u32>, 8>();
    global2 = vec4<f32>(global2.x, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-360f * global2.x)))), -1416f, _wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -144f) - global1[_wgslsmith_index_u32(u_input.d.x, 7u)]), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.x, -584f))))));
    var var_1 = global4[_wgslsmith_index_u32(arg_0, 2u)];
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.x) - -280f), _wgslsmith_f_op_f32(global2.x + 1f), _wgslsmith_f_op_f32(round(-149f))), Struct_1(abs(max(-u_input.a.x, 1i)), vec4<bool>(!(global2.x < 104f), false, false, (u_input.c.x < u_input.b.x) != (u_input.a.x <= -1i)), ~3916u, vec3<i32>(firstTrailingBit(0i), (-24601i ^ u_input.c.x) << (var_1.a.x % 32u), ~u_input.b.x), vec2<f32>(_wgslsmith_f_op_f32(global2.x + -223f), -1198f)), _wgslsmith_mod_i32(2147483647i, _wgslsmith_sub_i32(u_input.b.x, _wgslsmith_dot_vec2_i32(reverseBits(u_input.c.zx), abs(vec2<i32>(u_input.a.x, u_input.a.x))))));
}

fn func_4(arg_0: bool, arg_1: Struct_4, arg_2: Struct_4, arg_3: vec2<i32>) -> Struct_4 {
    let var_0 = _wgslsmith_add_u32(58473u, u_input.d.x);
    let var_1 = -(~_wgslsmith_add_vec4_i32(vec4<i32>(~arg_3.x, func_2(arg_1.c.x, vec2<bool>(false, arg_0)).b.d.x, 27645i, -1i), firstLeadingBit(u_input.a)));
    global2 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_div_vec4_f32(vec4<f32>(-2000f, arg_2.d.b.e.x, arg_2.e, global2.x), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(247f, global1[_wgslsmith_index_u32(var_0, 7u)], global2.x, arg_1.a.e.x) * _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(386f, 126f, arg_1.e, arg_1.e)))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(global2.x, 412f, global2.x, arg_2.a.e.x))), _wgslsmith_f_op_vec4_f32(vec4<f32>(464f, arg_2.a.e.x, global2.x, 2053f) - vec4<f32>(arg_1.e, 507f, 1000f, -1000f)))), true)))));
    var var_2 = arg_3;
    var_2 = -vec2<i32>(~(u_input.c.x << (98578u % 32u)) << ((~33863u << (min(1u, arg_2.b.a.x) % 32u)) % 32u), _wgslsmith_sub_i32(u_input.a.x >> (1u % 32u), arg_3.x) << (u_input.d.x % 32u));
    return arg_1;
}

fn func_1(arg_0: i32) -> f32 {
    let var_0 = any(vec2<bool>(!(-263f > _wgslsmith_div_f32(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], global2.x)), false));
    global3 = array<vec3<f32>, 31>();
    var var_1 = func_4(false, Struct_4(Struct_1(_wgslsmith_mod_i32(arg_0, ~2147483647i), vec4<bool>(true, true, !var_0, !var_0), 1u, u_input.a.wwx, global2.xw), Struct_2(vec2<u32>(37661u, u_input.d.x)), ~vec3<u32>(21663u, u_input.d.x, abs(u_input.d.x)), func_2(_wgslsmith_clamp_u32(0u, u_input.d.x, 4294967295u) & 44287u, !select(vec2<bool>(var_0, var_0), vec2<bool>(true, false), vec2<bool>(var_0, true))), global2.x), Struct_4(func_2(_wgslsmith_dot_vec4_u32(~global0[_wgslsmith_index_u32(8681u, 8u)], vec4<u32>(u_input.d.x, 42264u, 0u, 0u)), select(select(vec2<bool>(false, var_0), vec2<bool>(var_0, false), vec2<bool>(true, false)), !vec2<bool>(var_0, var_0), select(vec2<bool>(false, var_0), vec2<bool>(false, var_0), vec2<bool>(var_0, var_0)))).b, Struct_2(_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.d.x), max(u_input.d, vec2<u32>(u_input.d.x, u_input.d.x)))), _wgslsmith_add_vec3_u32(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, 40365u, u_input.d.x), vec3<u32>(0u, 69503u, u_input.d.x)), vec3<u32>(u_input.d.x, _wgslsmith_sub_u32(u_input.d.x, u_input.d.x), abs(u_input.d.x))), func_2(max(u_input.d.x, abs(30321u)), func_2(firstLeadingBit(u_input.d.x), vec2<bool>(var_0, false)).b.b.xw), 887f), u_input.c.xx);
    var var_2 = Struct_3(global3[_wgslsmith_index_u32(countOneBits((var_1.a.c ^ u_input.d.x) << (0u % 32u)), 31u)], func_2(~_wgslsmith_mult_u32(~var_1.b.a.x, var_1.d.b.c), func_4(var_0, Struct_4(func_4(false, Struct_4(Struct_1(var_1.a.a, vec4<bool>(var_0, true, false, var_0), u_input.d.x, var_1.d.b.d, vec2<f32>(1446f, 1849f)), Struct_2(u_input.d), vec3<u32>(var_1.d.b.c, var_1.d.b.c, 0u), var_1.d, global2.x), Struct_4(var_1.d.b, Struct_2(vec2<u32>(4783u, 35934u)), var_1.c, Struct_3(global3[_wgslsmith_index_u32(59496u, 31u)], var_1.a, arg_0), global1[_wgslsmith_index_u32(u_input.d.x, 7u)]), var_1.d.b.d.yx).d.b, Struct_2(vec2<u32>(u_input.d.x, u_input.d.x)), abs(vec3<u32>(122772u, var_1.c.x, u_input.d.x)), func_4(var_0, Struct_4(var_1.d.b, var_1.b, vec3<u32>(87829u, u_input.d.x, 0u), Struct_3(vec3<f32>(509f, global2.x, -1161f), var_1.d.b, 93946i), 173f), Struct_4(var_1.d.b, var_1.b, var_1.c, Struct_3(global3[_wgslsmith_index_u32(var_1.a.c, 31u)], var_1.a, arg_0), -348f), u_input.c.wy).d, 494f), Struct_4(Struct_1(var_1.a.d.x, vec4<bool>(var_1.d.b.b.x, var_0, var_1.a.b.x, var_1.d.b.b.x), u_input.d.x, var_1.d.b.d, var_1.a.e), func_4(var_0, Struct_4(var_1.d.b, global4[_wgslsmith_index_u32(18527u, 2u)], var_1.c, var_1.d, var_1.e), Struct_4(Struct_1(var_1.a.a, var_1.a.b, var_1.b.a.x, var_1.a.d, vec2<f32>(1325f, var_1.d.b.e.x)), var_1.b, vec3<u32>(var_1.a.c, var_1.a.c, var_1.a.c), var_1.d, global1[_wgslsmith_index_u32(4294967295u, 7u)]), u_input.a.zw).b, ~vec3<u32>(14559u, 4294967295u, 44591u), var_1.d, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), vec2<i32>(2147483647i, -17331i)).d.b.b.zx).b, select(countOneBits(1i << ((u_input.d.x & u_input.d.x) % 32u)), i32(-1i) * -(-1i << (0u % 32u)), (var_0 == var_0) == select(any(var_1.d.b.b), true, true)));
    global0 = array<vec4<u32>, 8>();
    return _wgslsmith_f_op_f32(var_2.b.e.x - _wgslsmith_f_op_f32(ceil(func_4(var_2.b.b.x, func_4(var_1.a.b.x, func_4(var_0, Struct_4(Struct_1(36573i, vec4<bool>(var_1.d.b.b.x, false, var_0, true), 12345u, var_1.a.d, var_1.d.a.xz), Struct_2(vec2<u32>(var_1.b.a.x, var_1.b.a.x)), vec3<u32>(var_2.b.c, 0u, var_1.c.x), var_1.d, global2.x), Struct_4(Struct_1(var_2.b.a, vec4<bool>(false, var_0, true, true), 10458u, var_1.a.d, var_2.b.e), global4[_wgslsmith_index_u32(u_input.d.x, 2u)], vec3<u32>(46401u, 67602u, var_1.c.x), Struct_3(global2.wyy, Struct_1(var_1.d.c, vec4<bool>(var_2.b.b.x, false, true, var_2.b.b.x), 35771u, vec3<i32>(2147483647i, -28188i, 1i), vec2<f32>(-248f, var_1.a.e.x)), -1i), 1334f), u_input.b.xy), func_4(var_0, Struct_4(Struct_1(0i, vec4<bool>(var_2.b.b.x, true, var_1.a.b.x, true), u_input.d.x, vec3<i32>(var_2.b.a, -1998i, -14137i), var_1.a.e), Struct_2(vec2<u32>(33504u, u_input.d.x)), var_1.c, var_1.d, global2.x), Struct_4(var_2.b, Struct_2(u_input.d), vec3<u32>(u_input.d.x, var_2.b.c, u_input.d.x), Struct_3(vec3<f32>(1263f, 361f, var_2.a.x), Struct_1(var_2.c, vec4<bool>(var_0, false, var_0, var_2.b.b.x), var_2.b.c, var_1.d.b.d, var_2.b.e), arg_0), var_1.e), var_2.b.d.yy), u_input.c.zz), func_4(var_1.d.b.b.x && false, Struct_4(Struct_1(1i, var_2.b.b, var_1.b.a.x, var_2.b.d, var_1.a.e), global4[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(u_input.d.x, var_2.b.c, 4294967295u), var_1.d, global1[_wgslsmith_index_u32(0u, 7u)]), Struct_4(Struct_1(0i, var_1.d.b.b, 4294967295u, vec3<i32>(1i, u_input.b.x, var_2.c), vec2<f32>(-645f, var_2.b.e.x)), global4[_wgslsmith_index_u32(var_2.b.c, 2u)], var_1.c, Struct_3(global3[_wgslsmith_index_u32(u_input.d.x, 31u)], var_2.b, -1i), 2368f), select(vec2<i32>(-2147483647i, u_input.b.x), var_2.b.d.zx, var_1.a.b.yx)), var_1.a.d.xy).a.e.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(_wgslsmith_f_op_f32(func_1(u_input.a.x)), global1[_wgslsmith_index_u32(4294967295u, 7u)], 1060f)));
    var var_1 = _wgslsmith_f_op_vec4_f32(select(vec4<f32>(var_0.x, global1[_wgslsmith_index_u32(35485u, 7u)], _wgslsmith_f_op_f32(f32(-1f) * -825f), var_0.x), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.x, -838f, var_0.x, global1[_wgslsmith_index_u32(u_input.d.x, 7u)]) + vec4<f32>(global2.x, 325f, -322f, global2.x)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(-1295f, global2.x, var_0.x, var_0.x) - vec4<f32>(1462f, global1[_wgslsmith_index_u32(4294967295u, 7u)], -1000f, 886f)))))), !(!any(vec4<bool>(true, true, true, true)))));
    var_0 = _wgslsmith_f_op_vec3_f32(vec3<f32>(1360f, 150f, -1143f) * _wgslsmith_f_op_vec3_f32(var_1.xyy + vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global2.x))), _wgslsmith_div_f32(func_4(false, Struct_4(Struct_1(3297i, vec4<bool>(true, true, false, false), u_input.d.x, vec3<i32>(u_input.a.x, u_input.a.x, -16738i), vec2<f32>(-108f, 930f)), global4[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(u_input.d.x, 70111u, 8922u), Struct_3(var_1.zzx, Struct_1(-24188i, vec4<bool>(true, true, false, true), 1u, vec3<i32>(1i, u_input.a.x, 2147483647i), var_0.yz), u_input.a.x), 1571f), Struct_4(Struct_1(u_input.a.x, vec4<bool>(false, false, true, true), u_input.d.x, vec3<i32>(u_input.b.x, 11472i, u_input.b.x), global2.wy), Struct_2(u_input.d), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), Struct_3(var_1.zyw, Struct_1(u_input.b.x, vec4<bool>(true, true, false, false), 45945u, vec3<i32>(u_input.b.x, 2147483647i, u_input.b.x), vec2<f32>(global1[_wgslsmith_index_u32(41150u, 7u)], -852f)), u_input.b.x), 736f), u_input.c.zy).d.b.e.x, _wgslsmith_f_op_f32(1860f * var_1.x)), -251f)));
    var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(-675f, 790f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(224f + var_0.x)))));
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global2.xzy))) * func_2(1u, vec2<bool>(true, true)).a) + _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(global3[_wgslsmith_index_u32(u_input.d.x, 31u)] + _wgslsmith_f_op_vec3_f32(global2.zxw * global3[_wgslsmith_index_u32(u_input.d.x, 31u)])), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(814f, -1038f, var_0.x)) - vec3<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], var_0.x, global2.x)))));
    var_1 = vec4<f32>(func_4(_wgslsmith_dot_vec2_u32(~vec2<u32>(4701u, u_input.d.x), vec2<u32>(u_input.d.x, 0u)) < abs(0u), func_4(false, func_4(true, Struct_4(Struct_1(22189i, vec4<bool>(true, true, false, true), u_input.d.x, u_input.c.xyw, var_1.zx), global4[_wgslsmith_index_u32(u_input.d.x, 2u)], vec3<u32>(u_input.d.x, u_input.d.x, 61978u), Struct_3(vec3<f32>(var_0.x, -350f, var_1.x), Struct_1(2147483647i, vec4<bool>(true, true, false, true), 11929u, u_input.b.wzw, var_0.yz), u_input.c.x), global2.x), func_4(true, Struct_4(Struct_1(u_input.a.x, vec4<bool>(false, true, true, false), u_input.d.x, vec3<i32>(u_input.b.x, u_input.a.x, u_input.b.x), var_1.ww), global4[_wgslsmith_index_u32(u_input.d.x, 2u)], vec3<u32>(4978u, u_input.d.x, 25345u), Struct_3(global2.xzz, Struct_1(1i, vec4<bool>(false, false, true, false), 4294967295u, u_input.c.zwz, global2.xw), u_input.b.x), global1[_wgslsmith_index_u32(u_input.d.x, 7u)]), Struct_4(Struct_1(-7721i, vec4<bool>(false, true, false, true), 0u, u_input.a.yxw, global2.ww), global4[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(1u, 1359u, u_input.d.x), Struct_3(global3[_wgslsmith_index_u32(0u, 31u)], Struct_1(u_input.a.x, vec4<bool>(false, false, false, true), u_input.d.x, u_input.a.yzy, vec2<f32>(var_0.x, 1572f)), -1i), 282f), u_input.a.xw), u_input.a.ww), func_4(true, func_4(true, Struct_4(Struct_1(2277i, vec4<bool>(true, false, false, false), u_input.d.x, u_input.b.wzz, vec2<f32>(global1[_wgslsmith_index_u32(4294967295u, 7u)], -1000f)), global4[_wgslsmith_index_u32(u_input.d.x, 2u)], vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), Struct_3(vec3<f32>(var_0.x, 342f, -848f), Struct_1(25372i, vec4<bool>(true, false, true, true), 0u, vec3<i32>(u_input.b.x, -4544i, -762i), var_1.zz), 0i), var_1.x), Struct_4(Struct_1(-13628i, vec4<bool>(false, true, true, true), 4294967295u, u_input.a.wxz, var_0.zz), global4[_wgslsmith_index_u32(0u, 2u)], vec3<u32>(44424u, u_input.d.x, u_input.d.x), Struct_3(vec3<f32>(790f, -384f, var_0.x), Struct_1(1i, vec4<bool>(true, true, true, true), u_input.d.x, u_input.c.xxz, vec2<f32>(1000f, 684f)), 25495i), global2.x), vec2<i32>(29405i, u_input.b.x)), func_4(false, Struct_4(Struct_1(29734i, vec4<bool>(true, true, true, true), 0u, vec3<i32>(-1i, u_input.b.x, 13323i), vec2<f32>(global1[_wgslsmith_index_u32(u_input.d.x, 7u)], var_1.x)), Struct_2(u_input.d), vec3<u32>(u_input.d.x, u_input.d.x, u_input.d.x), Struct_3(vec3<f32>(var_1.x, var_0.x, global1[_wgslsmith_index_u32(u_input.d.x, 7u)]), Struct_1(u_input.a.x, vec4<bool>(false, true, true, true), 74712u, vec3<i32>(-25097i, u_input.c.x, u_input.c.x), vec2<f32>(var_1.x, 754f)), u_input.b.x), var_1.x), Struct_4(Struct_1(-20581i, vec4<bool>(true, true, true, true), 48707u, u_input.b.zxz, var_0.xy), global4[_wgslsmith_index_u32(u_input.d.x, 2u)], vec3<u32>(1u, 9206u, 4294967295u), Struct_3(vec3<f32>(var_1.x, global2.x, -963f), Struct_1(-1i, vec4<bool>(true, false, false, true), u_input.d.x, vec3<i32>(u_input.c.x, u_input.a.x, 47408i), var_0.yy), 1i), -1011f), u_input.c.yz), vec2<i32>(u_input.c.x, u_input.a.x) | u_input.b.xw), _wgslsmith_sub_vec2_i32(u_input.a.ww, u_input.b.wy)), func_4(true, Struct_4(Struct_1(u_input.c.x, vec4<bool>(false, true, true, false), 58561u, vec3<i32>(u_input.b.x, u_input.a.x, u_input.a.x), var_0.xz), func_4(false, Struct_4(Struct_1(1i, vec4<bool>(true, false, true, true), 45808u, u_input.b.xxz, var_1.yy), global4[_wgslsmith_index_u32(u_input.d.x, 2u)], vec3<u32>(49101u, 0u, u_input.d.x), Struct_3(vec3<f32>(var_1.x, 1171f, -112f), Struct_1(-1i, vec4<bool>(false, true, false, false), 62565u, vec3<i32>(u_input.b.x, 0i, u_input.a.x), vec2<f32>(-850f, var_0.x)), 30834i), 1198f), Struct_4(Struct_1(u_input.a.x, vec4<bool>(true, false, true, false), 4294967295u, u_input.b.zyx, vec2<f32>(var_1.x, 728f)), global4[_wgslsmith_index_u32(u_input.d.x, 2u)], vec3<u32>(u_input.d.x, 21932u, u_input.d.x), Struct_3(vec3<f32>(global2.x, var_0.x, var_0.x), Struct_1(1i, vec4<bool>(true, true, false, false), u_input.d.x, vec3<i32>(-1i, u_input.a.x, -38745i), vec2<f32>(global2.x, global2.x)), 0i), global2.x), vec2<i32>(u_input.a.x, 1i)).b, ~vec3<u32>(29381u, u_input.d.x, u_input.d.x), func_2(u_input.d.x, vec2<bool>(false, false)), 1f), Struct_4(func_2(0u, vec2<bool>(true, false)).b, func_4(true, Struct_4(Struct_1(u_input.b.x, vec4<bool>(true, false, true, true), 2061u, u_input.a.xzy, var_0.xz), Struct_2(vec2<u32>(1u, 1u)), vec3<u32>(40627u, 0u, u_input.d.x), Struct_3(global2.xzw, Struct_1(u_input.b.x, vec4<bool>(false, false, true, false), 4294967295u, u_input.a.xww, var_0.yy), 2147483647i), -1223f), Struct_4(Struct_1(u_input.c.x, vec4<bool>(false, true, false, true), u_input.d.x, u_input.b.wxx, vec2<f32>(var_1.x, var_1.x)), Struct_2(u_input.d), vec3<u32>(17191u, u_input.d.x, u_input.d.x), Struct_3(vec3<f32>(var_0.x, -243f, -1000f), Struct_1(1i, vec4<bool>(false, true, false, true), u_input.d.x, u_input.b.yzx, vec2<f32>(-632f, -1762f)), u_input.c.x), global2.x), u_input.b.zw).b, firstLeadingBit(vec3<u32>(4294967295u, u_input.d.x, u_input.d.x)), Struct_3(global3[_wgslsmith_index_u32(4294967295u, 31u)], Struct_1(-1i, vec4<bool>(true, false, false, true), u_input.d.x, vec3<i32>(-7826i, 2147483647i, u_input.c.x), vec2<f32>(var_0.x, -290f)), 17473i), _wgslsmith_f_op_f32(-151f - var_1.x)), max(u_input.b.xx ^ u_input.b.xz, u_input.b.wy | vec2<i32>(u_input.a.x, 1i))), firstLeadingBit(vec2<i32>(countOneBits(u_input.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(u_input.c.x, u_input.a.x), u_input.b.yy)))).e, _wgslsmith_f_op_f32(exp2(global2.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(347f)) - _wgslsmith_f_op_f32(max(1057f, -157f))))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, u_input.d.x, _wgslsmith_mult_vec3_u32(abs(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(1u, u_input.d.x, u_input.d.x)), ~vec3<u32>(60345u, u_input.d.x, 0u))), ~abs(vec3<u32>(62796u, u_input.d.x, 4455u))), -28831i, global0[_wgslsmith_index_u32(firstTrailingBit(~(~u_input.d.x)), 8u)]);
}

