struct Struct_1 {
    a: u32,
    b: i32,
    c: f32,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: bool,
    c: Struct_1,
    d: u32,
    e: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_2,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
    c: vec4<u32>,
    d: u32,
    e: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: vec2<bool>;

var<private> global2: array<Struct_1, 3>;

var<private> global3: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> vec3<bool> {
    global1 = vec2<bool>(!all(vec2<bool>(arg_0.c.d, all(vec4<bool>(arg_0.c.d, false, arg_0.e.d, global1.x)))), arg_0.a.d);
    let var_0 = arg_0.c;
    global3 = _wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(select(vec2<u32>(var_0.a, global3.x), _wgslsmith_clamp_vec2_u32(vec2<u32>(52102u, 0u), vec2<u32>(var_0.a, global3.x), vec2<u32>(0u, var_0.a)), select(vec2<bool>(false, false), vec2<bool>(false, global1.x), global1.x)), ~vec2<u32>(0u, var_0.a)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(0u, global3.x) >> (vec2<u32>(24609u, 48092u) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, arg_0.c.a), vec2<u32>(global3.x, 4294967295u)))) << (reverseBits(firstTrailingBit(_wgslsmith_add_vec2_u32(vec2<u32>(var_0.a, global3.x), countOneBits(vec2<u32>(arg_0.a.a, 10427u))))) % vec2<u32>(32u));
    var var_1 = var_0;
    let var_2 = arg_0.a.a | global3.x;
    return !vec3<bool>(_wgslsmith_clamp_i32(var_1.b, ~var_0.b, -44164i) < u_input.a.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-var_0.c))) == arg_0.c.c, ~arg_0.e.b == u_input.a.x);
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_2(global2[_wgslsmith_index_u32(abs(firstTrailingBit(1u)), 3u)], false, Struct_1(4294967295u, max(1i, -1i << ((global3.x << (1u % 32u)) % 32u)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(537f - global0.x)))), global1.x || !(global1.x != global1.x)), ~(~(~1u) & ((8516u | global3.x) ^ (global3.x & global3.x))), Struct_1(~1u, _wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(u_input.a.x, u_input.a.x, 1i), u_input.a.wxy), ~u_input.a.wwy), global0.x, true));
    let var_1 = -u_input.a;
    var var_2 = reverseBits(abs(firstTrailingBit(min(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.x, var_0.e.a), vec2<u32>(1u, 12738u)), ~vec2<u32>(global3.x, global3.x)))));
    let var_3 = all(func_3(Struct_2(global2[_wgslsmith_index_u32(var_2.x, 3u)], !global1.x, var_0.a, _wgslsmith_dot_vec2_u32(~vec2<u32>(global3.x, var_0.c.a), vec2<u32>(var_0.a.a, 39935u)), Struct_1(global3.x, var_1.x, global0.x, any(vec4<bool>(false, false, var_0.e.d, global1.x)))), global1.x));
    let var_4 = select(select(vec4<bool>(all(vec2<bool>(global1.x, false)), var_0.b, true, select(any(vec4<bool>(false, false, true, global1.x)), true, 0i < var_1.x)), vec4<bool>(true, !(6706u <= var_2.x), all(vec2<bool>(false, var_0.b)), true), select(any(vec4<bool>(true, true, var_3, var_0.b)), var_3, 0u <= var_0.a.a) & any(select(vec2<bool>(var_0.b, false), vec2<bool>(global1.x, true), var_0.b))), !(!(!vec4<bool>(global1.x, global1.x, true, var_3))), vec4<bool>(func_3(var_0, !(!var_3)).x, false, false, 122852u > ~min(var_2.x, 106983u)));
    return Struct_1(0u, _wgslsmith_mod_i32(-var_0.c.b, firstLeadingBit(-21054i) >> (abs(var_0.c.a) % 32u)), global0.x, var_0.e.d);
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>) -> Struct_1 {
    let var_0 = vec2<i32>(-1i) * -u_input.a.xx;
    global1 = vec2<bool>(true, false);
    var var_1 = firstTrailingBit(vec4<i32>(arg_0.c.b, max(33992i, abs(~(-1i))), -arg_0.e.b, ~_wgslsmith_dot_vec4_i32(abs(vec4<i32>(26511i, arg_0.e.b, var_0.x, u_input.a.x)), abs(vec4<i32>(-21239i, var_0.x, var_0.x, 2147483647i)))));
    let var_2 = func_2();
    var var_3 = func_2();
    return global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~49546u, _wgslsmith_mod_u32(arg_0.e.a, _wgslsmith_dot_vec2_u32(firstTrailingBit(~vec2<u32>(arg_0.e.a, 0u)), abs(vec2<u32>(var_3.a, global3.x))))), 3u)];
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-global0.x), -832f, _wgslsmith_f_op_f32(ceil(func_1(Struct_2(global2[_wgslsmith_index_u32(~62527u, 3u)], true, Struct_1(arg_0.a, u_input.a.x, 137f, arg_0.b.e.d), ~global3.x, func_1(Struct_2(Struct_1(666u, u_input.a.x, arg_0.b.c.c, true), arg_0.b.a.d, Struct_1(arg_0.b.e.a, 2147483647i, arg_0.b.a.c, false), global3.x, Struct_1(1u, 0i, global0.x, global1.x)), vec2<f32>(global0.x, 614f))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(arg_0.c.yy)), vec2<f32>(global0.x, -820f))).c)));
    var var_1 = _wgslsmith_mult_vec2_u32(abs(~vec2<u32>(100090u, 1u)), ~(firstLeadingBit(vec2<u32>(1u, arg_0.a)) << (~(~vec2<u32>(30334u, 140784u)) % vec2<u32>(32u))));
    global3 = ~(~vec2<u32>(max(4294967295u, ~global3.x), ~(global3.x | 1u)));
    var_1 = vec2<u32>(firstTrailingBit(4294967295u), 24250u);
    let var_2 = arg_0.b;
    return arg_0.b;
}

fn func_5(arg_0: Struct_2) -> vec2<bool> {
    var var_0 = func_1(Struct_2(global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(~4294967295u, 47723u, _wgslsmith_dot_vec2_u32(vec2<u32>(arg_0.a.a, 28389u), vec2<u32>(35987u, 0u)), _wgslsmith_mod_u32(global3.x, global3.x)), ~vec4<u32>(global3.x, global3.x, 1u, global3.x)), 3u)], arg_0.c.d, Struct_1(~(~4294967295u), _wgslsmith_dot_vec2_i32(vec2<i32>(12152i, 55539i), firstTrailingBit(vec2<i32>(arg_0.c.b, arg_0.a.b))), func_4(Struct_3(global3.x, Struct_2(global2[_wgslsmith_index_u32(global3.x, 3u)], false, arg_0.a, 11327u, Struct_1(global3.x, 17238i, -1000f, true)), vec3<f32>(global0.x, 344f, -1490f))).c.c, true), max(firstTrailingBit(1u) >> (global3.x % 32u), 1u), Struct_1(~arg_0.d, arg_0.a.b, _wgslsmith_f_op_f32(-421f - -601f), all(vec2<bool>(global1.x, true)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(904f, global0.x) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, arg_0.a.c))) + _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.c, arg_0.c.c))))))).d;
    var var_1 = _wgslsmith_f_op_f32(-arg_0.e.c);
    let var_2 = vec3<bool>(~4294967295u != _wgslsmith_mult_u32(global3.x, 1841u), !select(func_4(Struct_3(63692u, Struct_2(arg_0.e, true, arg_0.a, 1u, global2[_wgslsmith_index_u32(global3.x, 3u)]), vec3<f32>(-1427f, 878f, -1524f))).a.d, !any(vec3<bool>(global1.x, true, arg_0.e.d)), func_4(Struct_3(global3.x, Struct_2(arg_0.a, true, arg_0.a, 95821u, Struct_1(0u, u_input.a.x, -1645f, false)), vec3<f32>(-2427f, arg_0.a.c, 1000f))).e.d), !(arg_0.c.d && all(!vec4<bool>(arg_0.c.d, true, false, true))));
    var var_3 = (vec3<i32>(-19074i, -2147483647i | u_input.a.x, _wgslsmith_mult_i32(-arg_0.a.b, 39322i & u_input.a.x)) ^ _wgslsmith_mod_vec3_i32(u_input.a.www, u_input.a.wzw)) >> (~min(countOneBits(firstTrailingBit(vec3<u32>(21287u, global3.x, arg_0.e.a))), min(vec3<u32>(arg_0.e.a, 7117u, arg_0.a.a), vec3<u32>(1u, 15807u, 33954u)) & (vec3<u32>(3948u, arg_0.a.a, global3.x) >> (vec3<u32>(4294967295u, arg_0.c.a, arg_0.a.a) % vec3<u32>(32u)))) % vec3<u32>(32u));
    let var_4 = Struct_3(global3.x, arg_0, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(max(vec3<f32>(1785f, -1071f, global0.x), vec3<f32>(global0.x, -1324f, 380f))), _wgslsmith_div_vec3_f32(vec3<f32>(1296f, 185f, -170f), vec3<f32>(293f, 1411f, arg_0.a.c)))))));
    return !select(select(select(!var_2.zz, select(var_2.zx, vec2<bool>(arg_0.c.d, global1.x), var_2.yz), var_2.yy), vec2<bool>(global1.x, false | var_2.x), var_2.zy), select(var_2.zx, select(func_3(Struct_2(global2[_wgslsmith_index_u32(4294967295u, 3u)], false, var_4.b.c, 5598u, Struct_1(59087u, u_input.a.x, 444f, var_4.b.b)), true).xx, vec2<bool>(false, global1.x), !vec2<bool>(var_2.x, true)), true), !(!var_2.x) & arg_0.a.d);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_5(func_4(Struct_3(~global3.x, Struct_2(func_1(Struct_2(Struct_1(9268u, 6307i, -446f, global1.x), global1.x, global2[_wgslsmith_index_u32(global3.x, 3u)], global3.x, Struct_1(global3.x, -2147483647i, global0.x, false)), vec2<f32>(global0.x, 463f)), func_1(Struct_2(global2[_wgslsmith_index_u32(global3.x, 3u)], false, global2[_wgslsmith_index_u32(global3.x, 3u)], 1u, Struct_1(global3.x, u_input.a.x, 1923f, true)), vec2<f32>(global0.x, global0.x)).d, global2[_wgslsmith_index_u32(16872u, 3u)], _wgslsmith_div_u32(global3.x, global3.x), func_2()), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global0.x, global0.x, global0.x) + vec3<f32>(global0.x, global0.x, global0.x)) - _wgslsmith_f_op_vec3_f32(round(vec3<f32>(global0.x, 478f, -518f)))))));
    global0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(vec2<f32>(-2150f, -1183f), vec2<f32>(global0.x, global0.x)))))), vec2<f32>(-397f, _wgslsmith_f_op_f32(f32(-1f) * -1727f)), global1.x));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.x + global0.x)), (_wgslsmith_mod_vec2_u32(vec2<u32>(global3.x, 32702u), vec2<u32>(1u, 1u)) << (~abs(vec2<u32>(0u, 4294967295u)) % vec2<u32>(32u))) | vec2<u32>(global3.x, _wgslsmith_add_u32(global3.x, 27123u)), ~(~_wgslsmith_mod_vec4_u32(vec4<u32>(global3.x, global3.x, global3.x, 82355u), vec4<u32>(global3.x, global3.x, 71185u, global3.x)) ^ (_wgslsmith_mod_vec4_u32(vec4<u32>(6191u, global3.x, global3.x, global3.x), vec4<u32>(global3.x, global3.x, 1u, 0u)) & reverseBits(vec4<u32>(global3.x, 0u, global3.x, 4294967295u)))), _wgslsmith_add_u32(global3.x, global3.x), max(_wgslsmith_mod_vec2_u32(~abs(vec2<u32>(0u, global3.x)), firstTrailingBit(vec2<u32>(57658u, global3.x) << (vec2<u32>(global3.x, 4294967295u) % vec2<u32>(32u)))), _wgslsmith_div_vec2_u32(select(vec2<u32>(global3.x, global3.x), ~vec2<u32>(global3.x, 6516u), !vec2<bool>(global1.x, global1.x)), select(vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(21899u, 0u), true))));
}

