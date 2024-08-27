struct Struct_1 {
    a: u32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32 = 1u;

var<private> global1: Struct_2;

var<private> global2: array<vec3<f32>, 19> = array<vec3<f32>, 19>(vec3<f32>(-576f, 2117f, -978f), vec3<f32>(-1000f, -302f, 820f), vec3<f32>(890f, 1379f, -1144f), vec3<f32>(1285f, 183f, -664f), vec3<f32>(290f, 819f, 1872f), vec3<f32>(-244f, -296f, 900f), vec3<f32>(-1091f, -1309f, -1403f), vec3<f32>(-938f, 354f, -471f), vec3<f32>(-1446f, -559f, -531f), vec3<f32>(-1000f, -125f, 490f), vec3<f32>(-1285f, 1000f, 638f), vec3<f32>(-249f, 1284f, -711f), vec3<f32>(-953f, 1007f, -167f), vec3<f32>(-269f, 1816f, 975f), vec3<f32>(727f, -721f, 495f), vec3<f32>(-806f, 1000f, -148f), vec3<f32>(2069f, 423f, -884f), vec3<f32>(-165f, -1772f, 1739f), vec3<f32>(996f, -698f, -1613f));

var<private> global3: vec3<i32> = vec3<i32>(0i, i32(-2147483648), 2147483647i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = Struct_3(!arg_1.a);
    global1 = Struct_2(global1.c.b.x, global1.b, Struct_1(_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, 2270u, 37980u) & _wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.b, arg_0.b.x, arg_0.b.x), vec3<u32>(arg_0.b.x, u_input.b, u_input.b), vec3<u32>(arg_0.b.x, u_input.b, arg_0.b.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(1u, u_input.b, 0u), firstLeadingBit(vec3<u32>(23714u, arg_0.b.x, arg_0.b.x)), vec3<u32>(u_input.b, 26784u, u_input.b))), global1.c.b));
    var var_1 = arg_0.c;
    var var_2 = Struct_3(select(arg_1.a, !select(select(arg_1.a, var_0.a, arg_1.a.x), !vec4<bool>(arg_0.a, arg_1.a.x, var_1.b.x, true), false), true | !any(global1.c.b)));
    var_0 = Struct_3(select(var_2.a, var_0.a, !all(vec4<bool>(false, arg_1.a.x, true, true))));
    return vec4<bool>(select(!arg_1.a.x, global1.c.b.x || all(select(vec3<bool>(var_1.b.x, var_1.b.x, arg_0.c.b.x), global1.c.b, arg_0.c.b.x)), any(var_2.a.zw)), !(all(select(arg_1.a, vec4<bool>(var_1.b.x, true, false, false), vec4<bool>(var_1.b.x, true, false, true))) && true), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1262f, 996f) - -757f)) < _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(1f, 438f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-2006f)) * -180f)), any(vec2<bool>(true, !all(arg_1.a))));
}

fn func_2() -> Struct_3 {
    global2 = array<vec3<f32>, 19>();
    let var_0 = Struct_3(select(func_3(Struct_2(true, select(vec2<u32>(global1.c.a, 4294967295u), global1.b, global1.c.b.x), global1.c), Struct_3(vec4<bool>(global1.c.b.x, true, true, false))), vec4<bool>(global1.c.b.x, false, false, global3.x <= (global3.x >> (u_input.a % 32u))), all(global1.c.b)));
    let var_1 = _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(sign(-417f)), _wgslsmith_f_op_f32(round(-804f)), _wgslsmith_f_op_f32(514f * 1395f), -423f), vec4<f32>(_wgslsmith_f_op_f32(1427f - -669f), _wgslsmith_f_op_f32(trunc(1221f)), 1f, _wgslsmith_f_op_f32(step(-1282f, -2255f))), vec4<bool>(var_0.a.x, true, true, !var_0.a.x)))))));
    let var_2 = Struct_3(vec4<bool>(all(var_0.a.ww), any(vec4<bool>(global1.b.x >= global1.c.a, var_0.a.x, true, global1.a)), global1.c.b.x, (true == global1.c.b.x) != false));
    var var_3 = -24812i;
    return var_0;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_3) -> u32 {
    global1 = Struct_2(true, countOneBits(vec2<u32>(0u, reverseBits(global1.c.a))) | reverseBits(countOneBits(global1.b)), global1.c);
    var var_0 = Struct_1(global1.b.x, global1.c.b);
    let var_1 = ~_wgslsmith_mult_vec4_u32(~(min(vec4<u32>(var_0.a, global1.c.a, var_0.a, var_0.a), vec4<u32>(53547u, global1.b.x, u_input.a, global1.c.a)) & ~vec4<u32>(var_0.a, global1.c.a, 0u, global1.b.x)), vec4<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 67193u, u_input.a, 4294967295u) | vec4<u32>(46772u, var_0.a, 0u, 0u), vec4<u32>(global1.c.a, 1u, global1.b.x, var_0.a)), select(abs(global1.b.x), 24243u, true | arg_1.a.x), reverseBits(4294967295u), global1.c.a));
    global2 = array<vec3<f32>, 19>();
    let var_2 = var_0.b.x;
    return 7769u;
}

fn func_5(arg_0: vec2<f32>, arg_1: vec3<bool>, arg_2: f32, arg_3: Struct_1) -> Struct_3 {
    var var_0 = arg_3.a;
    let var_1 = -(~(-(vec4<i32>(-15737i, global3.x, 0i, global3.x) >> (~vec4<u32>(4294967295u, 1u, 0u, 4294967295u) % vec4<u32>(32u)))));
    var var_2 = select(1u, firstLeadingBit(_wgslsmith_dot_vec3_u32(select(max(vec3<u32>(arg_3.a, 4294967295u, 25984u), vec3<u32>(1u, 0u, u_input.a)), abs(vec3<u32>(1u, 40599u, arg_3.a)), vec3<bool>(arg_3.b.x, true, arg_1.x)), vec3<u32>(~33211u, 1u, reverseBits(global1.c.a)))), arg_1.x);
    let var_3 = Struct_2(false && !arg_1.x, vec2<u32>(u_input.b, ~firstLeadingBit(arg_3.a) << (_wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(48771u, global1.b.x, u_input.a, 73259u)), _wgslsmith_div_vec4_u32(vec4<u32>(1u, global1.c.a, arg_3.a, arg_3.a), vec4<u32>(0u, u_input.a, 0u, 31731u))) % 32u)), arg_3);
    global0 = global1.c.a;
    return func_2();
}

fn func_1() -> vec4<u32> {
    global0 = 33177u;
    let var_0 = func_5(vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -348f), -563f), !select(!vec3<bool>(false, global1.c.b.x, true), vec3<bool>(global1.c.b.x, any(global1.c.b.xy), global1.c.b.x), !global1.c.b.x), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-433f - _wgslsmith_f_op_f32(f32(-1f) * -175f)) * _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-1452f - -1187f), _wgslsmith_f_op_f32(464f + 875f)))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -551f))), Struct_1(select(_wgslsmith_add_u32(countOneBits(u_input.b), 1u), func_4(vec3<f32>(1901f, -308f, 731f), func_2()), true), global1.c.b));
    global1 = Struct_2(true, ~_wgslsmith_sub_vec2_u32(global1.b, firstTrailingBit(~global1.b)), Struct_1(max(firstTrailingBit(_wgslsmith_mult_u32(0u, 19475u)), min(_wgslsmith_mod_u32(0u, global1.b.x), _wgslsmith_add_u32(u_input.b, 1u))), !global1.c.b));
    global1 = Struct_2(true, global1.b, Struct_1(~min(firstTrailingBit(52558u), u_input.a << (u_input.b % 32u)), !var_0.a.zyz));
    global1 = Struct_2(!(!(1i != _wgslsmith_add_i32(15082i, global3.x))), vec2<u32>(reverseBits(global1.b.x ^ (4294967295u >> (0u % 32u))), ~(~u_input.a)), global1.c);
    return abs(~(_wgslsmith_div_vec4_u32(abs(vec4<u32>(u_input.b, 19112u, 7590u, 33148u)), select(vec4<u32>(43205u, 0u, 1u, global1.b.x), vec4<u32>(1u, u_input.b, global1.b.x, global1.c.a), vec4<bool>(true, var_0.a.x, false, var_0.a.x))) & _wgslsmith_sub_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(35390u, global1.c.a, 4294967295u, u_input.b), vec4<u32>(global1.b.x, 0u, global1.c.a, 0u), vec4<u32>(u_input.a, u_input.a, 4294967295u, 32715u)), abs(vec4<u32>(56418u, u_input.a, 25272u, 4294967295u)))));
}

fn func_6(arg_0: u32, arg_1: vec3<u32>, arg_2: vec4<u32>, arg_3: vec3<i32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-558f))), 1f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(809f + -607f))), -579f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(335f * -689f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f * -373f)), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -899f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-252f)) + 754f)) - vec4<f32>(-991f, -801f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(585f - -1001f) + _wgslsmith_f_op_f32(-171f * 1253f)))));
    global3 = firstTrailingBit(-(-countOneBits(arg_3) >> (arg_2.yxy % vec3<u32>(32u))));
    let var_1 = select(vec3<bool>(false, all(select(vec3<bool>(false, true, global1.a), global1.c.b, global1.c.b)) & true, global1.a), vec3<bool>(true, func_3(Struct_2(false, global1.b, global1.c), func_2()).x | false, all(select(!vec2<bool>(global1.c.b.x, false), select(vec2<bool>(global1.a, false), vec2<bool>(global1.c.b.x, false), false), vec2<bool>(false, false)))), !vec3<bool>(false, true, !(!global1.c.b.x)));
    let var_2 = global1.c.b.x;
    var var_3 = ~u_input.b;
    return Struct_2(!(!var_1.x), reverseBits(vec2<u32>(87138u, max(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, u_input.b, arg_1.x, arg_1.x), arg_2), 0u))), Struct_1(arg_0, func_5(_wgslsmith_f_op_vec2_f32(round(vec2<f32>(var_0.x, -323f))), !global1.c.b, _wgslsmith_div_f32(_wgslsmith_div_f32(var_0.x, var_0.x), _wgslsmith_f_op_f32(trunc(var_0.x))), Struct_1(global1.c.a, select(var_1, vec3<bool>(true, global1.a, true), global1.c.b.x))).a.zxw));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1.c;
    global1 = func_6(1u, max(~vec3<u32>(u_input.b, 0u, reverseBits(var_0.a)), vec3<u32>(0u << (_wgslsmith_mod_u32(var_0.a, global1.b.x) % 32u), _wgslsmith_mod_u32(~global1.b.x, _wgslsmith_add_u32(8169u, u_input.b)), ~1u)), ~vec4<u32>(_wgslsmith_clamp_u32(var_0.a, 18137u, global1.b.x), 1u, _wgslsmith_clamp_u32(14680u, u_input.b, u_input.a), global1.b.x) << (func_1() % vec4<u32>(32u)), ~vec3<i32>(firstLeadingBit(1768i), 0i, abs(global3.x)) ^ vec3<i32>(~global3.x, _wgslsmith_div_i32(-global3.x, reverseBits(56695i)), 0i));
    global1 = func_6(u_input.a, countOneBits(vec3<u32>(87900u, 4294967295u, 126256u)), vec4<u32>(firstTrailingBit(0u), u_input.a, 1u, 65753u) >> (vec4<u32>(~4294967295u, select(~5629u, ~global1.c.a, false), u_input.b >> (_wgslsmith_dot_vec3_u32(vec3<u32>(var_0.a, var_0.a, 4294967295u), vec3<u32>(var_0.a, 31775u, var_0.a)) % 32u), global1.b.x) % vec4<u32>(32u)), ~vec3<i32>(-39011i, _wgslsmith_mod_i32(-global3.x, max(0i, -70092i)), ~firstLeadingBit(0i)));
    global3 = _wgslsmith_mod_vec3_i32(~(~select(vec3<i32>(2147483647i, 2147483647i, global3.x), vec3<i32>(global3.x, -1i, global3.x), global1.c.b) | max(select(vec3<i32>(-7797i, global3.x, 2147483647i), vec3<i32>(0i, -34449i, global3.x), var_0.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-18984i, global3.x, global3.x), vec3<i32>(44244i, global3.x, 73131i)))), -countOneBits(~(~vec3<i32>(1i, 16370i, global3.x))));
    var var_1 = Struct_3(!(!func_2().a));
    var var_2 = -63281i;
    global0 = max(~50533u, u_input.a) >> ((36231u >> (abs(global1.c.a) % 32u)) % 32u);
    let var_3 = vec4<bool>(true, all(!vec4<bool>(!var_1.a.x, var_0.b.x, true, func_2().a.x)), (abs(global3.x | 1i) < global3.x) && true, global1.a);
    global1 = func_6(countOneBits(~global1.b.x), reverseBits(vec3<u32>(u_input.a, (4294967295u | global1.b.x) >> (~3995u % 32u), _wgslsmith_mod_u32(countOneBits(global1.b.x), reverseBits(var_0.a)))), max(~max(vec4<u32>(56559u, 1u, var_0.a, 14417u), vec4<u32>(4294967295u, 4294967295u, u_input.b, 1u)) << (vec4<u32>(~u_input.a, _wgslsmith_mod_u32(var_0.a, u_input.a), global1.c.a, ~1u) % vec4<u32>(32u)), ~vec4<u32>(0u, _wgslsmith_dot_vec2_u32(global1.b, vec2<u32>(43203u, global1.b.x)), max(global1.c.a, 4924u), ~u_input.a)), min(vec3<i32>(~47246i, -global3.x << (~var_0.a % 32u), 16700i << (~global1.b.x % 32u)), vec3<i32>(-1i, _wgslsmith_add_i32(~global3.x, 1i), (1i & global3.x) ^ countOneBits(0i))));
    let x = u_input.a;
    s_output = StorageBuffer(global1.b);
}

