struct Struct_1 {
    a: bool,
    b: u32,
}

struct Struct_2 {
    a: vec2<i32>,
    b: Struct_1,
    c: bool,
    d: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: i32,
    c: i32,
    d: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32> = vec3<f32>(-1108f, -365f, -1000f);

var<private> global1: Struct_1;

var<private> global2: f32 = -748f;

var<private> global3: array<Struct_2, 27> = array<Struct_2, 27>(Struct_2(vec2<i32>(-1181i, -29983i), Struct_1(true, 1u), true, vec3<f32>(891f, -1170f, -714f)), Struct_2(vec2<i32>(25570i, -52262i), Struct_1(false, 42026u), true, vec3<f32>(259f, 1027f, 332f)), Struct_2(vec2<i32>(-1i, 1i), Struct_1(true, 4294967295u), true, vec3<f32>(377f, 825f, -340f)), Struct_2(vec2<i32>(-1i, 1050i), Struct_1(true, 4294967295u), true, vec3<f32>(1616f, 882f, 107f)), Struct_2(vec2<i32>(-1i, 60231i), Struct_1(true, 0u), false, vec3<f32>(-149f, -680f, -978f)), Struct_2(vec2<i32>(i32(-2147483648), 0i), Struct_1(true, 14693u), false, vec3<f32>(386f, -1395f, -195f)), Struct_2(vec2<i32>(-48919i, -1i), Struct_1(true, 30359u), true, vec3<f32>(-557f, 1167f, -1000f)), Struct_2(vec2<i32>(-29246i, -1i), Struct_1(false, 72236u), false, vec3<f32>(224f, -1000f, -1574f)), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(true, 87327u), true, vec3<f32>(-979f, 1000f, -654f)), Struct_2(vec2<i32>(0i, 25448i), Struct_1(false, 1u), true, vec3<f32>(-292f, -534f, 261f)), Struct_2(vec2<i32>(-10346i, -20435i), Struct_1(true, 1u), false, vec3<f32>(-1052f, 138f, -265f)), Struct_2(vec2<i32>(62292i, 34571i), Struct_1(true, 0u), true, vec3<f32>(272f, -262f, -1543f)), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(false, 0u), false, vec3<f32>(-2495f, 1855f, 422f)), Struct_2(vec2<i32>(2147483647i, 10606i), Struct_1(false, 1u), true, vec3<f32>(-161f, 3031f, -1415f)), Struct_2(vec2<i32>(14054i, 2147483647i), Struct_1(false, 4294967295u), false, vec3<f32>(-1759f, 794f, 959f)), Struct_2(vec2<i32>(-63834i, 43534i), Struct_1(false, 1u), false, vec3<f32>(114f, -998f, 2199f)), Struct_2(vec2<i32>(-2412i, 2147483647i), Struct_1(true, 4294967295u), false, vec3<f32>(724f, -1040f, -1000f)), Struct_2(vec2<i32>(61561i, i32(-2147483648)), Struct_1(false, 0u), true, vec3<f32>(-1000f, -1112f, -849f)), Struct_2(vec2<i32>(-35233i, 2147483647i), Struct_1(false, 1u), true, vec3<f32>(-1062f, -1066f, 195f)), Struct_2(vec2<i32>(36428i, 0i), Struct_1(true, 4294967295u), false, vec3<f32>(376f, -112f, 1161f)), Struct_2(vec2<i32>(38023i, -33560i), Struct_1(false, 91143u), false, vec3<f32>(-967f, 1774f, 147f)), Struct_2(vec2<i32>(57004i, -1996i), Struct_1(false, 26244u), false, vec3<f32>(-396f, 189f, -168f)), Struct_2(vec2<i32>(0i, -6616i), Struct_1(true, 60660u), true, vec3<f32>(905f, -1215f, -877f)), Struct_2(vec2<i32>(-22190i, 2147483647i), Struct_1(true, 1u), false, vec3<f32>(-1897f, 963f, 165f)), Struct_2(vec2<i32>(2147483647i, -1i), Struct_1(true, 63499u), false, vec3<f32>(1000f, 229f, -1160f)), Struct_2(vec2<i32>(41733i, 2147483647i), Struct_1(false, 4904u), true, vec3<f32>(-252f, -1474f, -215f)), Struct_2(vec2<i32>(-89282i, 2147483647i), Struct_1(true, 0u), true, vec3<f32>(-222f, 1902f, -1560f)));

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: vec2<u32>, arg_1: bool) -> vec2<i32> {
    var var_0 = _wgslsmith_clamp_i32(u_input.b, 0i, _wgslsmith_div_i32(1i, 1i)) << (global1.b % 32u);
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-199f, global0.x)), _wgslsmith_f_op_f32(-346f + 1355f))) - 1150f) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.x)), -1682f)) + -548f));
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(f32(-1f) * -2183f)));
    global2 = -142f;
    let var_2 = -1199i;
    return ~u_input.a.xx;
}

fn func_2(arg_0: vec3<f32>) -> vec3<i32> {
    let var_0 = reverseBits(~vec2<u32>(_wgslsmith_div_u32(92183u, 0u >> (global1.b % 32u)), _wgslsmith_mult_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 1u), vec2<u32>(global1.b, u_input.d.x)), 1u)));
    let var_1 = Struct_2(-(_wgslsmith_sub_vec2_i32(func_3(var_0, true), -u_input.a.xx) & ~min(vec2<i32>(-831i, u_input.a.x), vec2<i32>(21627i, 0i))), Struct_1(global1.a, ~0u), global1.a, arg_0);
    let var_2 = _wgslsmith_add_u32(~max(u_input.d.x, 96125u), global1.b);
    global2 = _wgslsmith_f_op_f32(f32(-1f) * -920f);
    var var_3 = vec4<i32>(u_input.c, u_input.c & ~abs(-18315i), ~(-10378i), var_1.a.x) >> (_wgslsmith_sub_vec4_u32(~u_input.d, _wgslsmith_mod_vec4_u32(~vec4<u32>(var_0.x, 34748u, 4966u, 4294967295u), _wgslsmith_add_vec4_u32(u_input.d, u_input.d))) % vec4<u32>(32u));
    return _wgslsmith_mod_vec3_i32(vec3<i32>(max(var_3.x, _wgslsmith_mod_i32(abs(13281i), ~var_3.x)), var_3.x, 78469i & (var_3.x >> (~var_1.b.b % 32u))), -var_3.zxy);
}

fn func_1(arg_0: Struct_2) -> Struct_2 {
    let var_0 = func_2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(-arg_0.d.x)), arg_0.d, vec3<bool>(arg_0.c, true, true)))));
    var var_1 = select(!select(select(vec2<bool>(global1.a, true), !vec2<bool>(global1.a, false), true), select(vec2<bool>(arg_0.c, true), vec2<bool>(true, true), select(vec2<bool>(global1.a, arg_0.c), vec2<bool>(true, arg_0.c), global1.a)), vec2<bool>(true, true)), vec2<bool>(global1.a, false | arg_0.b.a), !select(!select(vec2<bool>(false, global1.a), vec2<bool>(arg_0.b.a, global1.a), arg_0.b.a), select(select(vec2<bool>(false, global1.a), vec2<bool>(arg_0.b.a, true), global1.a), !vec2<bool>(global1.a, true), vec2<bool>(arg_0.c, global1.a)), select(!arg_0.b.a, select(true, true, false), false)));
    return global3[_wgslsmith_index_u32(u_input.d.x, 27u)];
}

fn func_4(arg_0: vec4<i32>, arg_1: vec4<f32>, arg_2: Struct_2) -> u32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(arg_2.d)));
    let var_1 = all(!vec4<bool>(select(all(vec4<bool>(global1.a, global1.a, global1.a, true)), true, !global1.a), all(vec4<bool>(global1.a, true, global1.a, arg_2.c)) == (arg_2.c & global1.a), arg_2.c, arg_2.b.a & global1.a));
    var var_2 = countOneBits(-(~(~(-8053i))));
    var var_3 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.x * arg_1.x), 860f) - _wgslsmith_f_op_f32(min(-720f, _wgslsmith_f_op_f32(1291f - _wgslsmith_f_op_f32(f32(-1f) * -1667f))))) - global0.x);
    let var_4 = _wgslsmith_sub_i32(-(-22814i | _wgslsmith_sub_i32(1i, arg_0.x >> (u_input.d.x % 32u))), arg_0.x);
    return abs(firstTrailingBit(~(~_wgslsmith_mult_u32(global1.b, global1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-479f + 383f)) * _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), 690f)), global0.x, 941f);
    var var_0 = _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.d.x, ~71619u, global1.b, ~(4522u >> (~u_input.d.x % 32u))), u_input.d, vec4<u32>(func_4(vec4<i32>(-1i) * -u_input.a, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(678f, 1128f, global0.x, -1218f)) * _wgslsmith_f_op_vec4_f32(vec4<f32>(905f, global0.x, global0.x, global0.x) + vec4<f32>(global0.x, global0.x, global0.x, global0.x))), func_1(Struct_2(vec2<i32>(u_input.b, -52211i), Struct_1(global1.a, global1.b), true, vec3<f32>(-266f, global0.x, 963f)))), func_4(~reverseBits(vec4<i32>(-1i, u_input.b, -1i, u_input.a.x)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -852f, global0.x, global0.x)), global3[_wgslsmith_index_u32(u_input.d.x, 27u)]), _wgslsmith_mod_u32(32506u, _wgslsmith_dot_vec3_u32(u_input.d.xyw, u_input.d.www)), 1u));
    var var_1 = func_1(Struct_2(vec2<i32>(_wgslsmith_add_i32(u_input.c, -356i) ^ abs(-31873i), _wgslsmith_dot_vec3_i32(-vec3<i32>(u_input.b, u_input.b, u_input.c), abs(vec3<i32>(0i, -19650i, -5161i)))), func_1(Struct_2(abs(u_input.a.zw), Struct_1(global1.a, global1.b), u_input.b != -52575i, _wgslsmith_div_vec3_f32(vec3<f32>(global0.x, global0.x, 1115f), vec3<f32>(-1636f, global0.x, 1498f)))).b, global1.a, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-764f, global0.x, 236f)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(856f, -1036f, global0.x)))))).b;
    var var_2 = ~vec4<u32>(3216u, var_0.x, 3512u, 0u);
    let var_3 = Struct_2(_wgslsmith_mod_vec2_i32(func_3(~var_0.wx, (-1i << (0u % 32u)) >= ~u_input.c), ~select(~vec2<i32>(u_input.b, 21876i), u_input.a.xw, true)), Struct_1(var_1.a, reverseBits(~var_2.x) >> (reverseBits(global1.b) % 32u)), all(vec2<bool>(-1178f > _wgslsmith_f_op_f32(-global0.x), false)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, _wgslsmith_f_op_f32(abs(-1253f))) * _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global0.x, 1765f, 910f)), _wgslsmith_f_op_vec3_f32(max(vec3<f32>(933f, -343f, 1381f), vec3<f32>(-351f, 1185f, -202f))))), vec3<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(step(-238f, global0.x)), _wgslsmith_f_op_f32(global0.x - -1034f)))));
    let x = u_input.a;
    s_output = StorageBuffer(var_1.b);
}

