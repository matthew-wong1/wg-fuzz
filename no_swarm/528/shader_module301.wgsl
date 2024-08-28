struct Struct_1 {
    a: bool,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: Struct_1,
    c: i32,
    d: Struct_1,
    e: i32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: vec2<bool>,
    b: i32,
    c: vec2<u32>,
    d: vec4<bool>,
    e: bool,
}

struct Struct_5 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_2,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: vec4<u32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 24>;

var<private> global1: array<Struct_5, 14> = array<Struct_5, 14>(Struct_5(Struct_1(true, vec3<u32>(12600u, 1u, 45588u)), Struct_2(397f, Struct_1(true, vec3<u32>(1731u, 24873u, 4294967295u)), -36327i, Struct_1(true, vec3<u32>(0u, 589u, 68308u)), -1i), Struct_2(260f, Struct_1(true, vec3<u32>(8916u, 56187u, 1u)), -4237i, Struct_1(false, vec3<u32>(46688u, 23351u, 37957u)), 2147483647i), Struct_3(true)), Struct_5(Struct_1(true, vec3<u32>(1u, 14767u, 746u)), Struct_2(791f, Struct_1(false, vec3<u32>(4294967295u, 103094u, 37480u)), i32(-2147483648), Struct_1(true, vec3<u32>(1u, 1u, 4294967295u)), 1i), Struct_2(-955f, Struct_1(false, vec3<u32>(48604u, 4262u, 97402u)), 1i, Struct_1(false, vec3<u32>(10459u, 38335u, 16485u)), -1i), Struct_3(true)), Struct_5(Struct_1(false, vec3<u32>(41164u, 37649u, 12264u)), Struct_2(-1045f, Struct_1(true, vec3<u32>(40597u, 4294967295u, 4778u)), i32(-2147483648), Struct_1(false, vec3<u32>(4294967295u, 0u, 13770u)), 2147483647i), Struct_2(1439f, Struct_1(true, vec3<u32>(4294967295u, 83166u, 9098u)), -73725i, Struct_1(false, vec3<u32>(4294967295u, 1u, 1u)), i32(-2147483648)), Struct_3(false)), Struct_5(Struct_1(false, vec3<u32>(63240u, 2388u, 23559u)), Struct_2(102f, Struct_1(false, vec3<u32>(6916u, 1u, 16031u)), 23933i, Struct_1(true, vec3<u32>(18245u, 17047u, 4294967295u)), 2147483647i), Struct_2(517f, Struct_1(false, vec3<u32>(25464u, 41913u, 27989u)), 26173i, Struct_1(false, vec3<u32>(17915u, 0u, 4294967295u)), i32(-2147483648)), Struct_3(true)), Struct_5(Struct_1(true, vec3<u32>(1242u, 1u, 4294967295u)), Struct_2(-481f, Struct_1(false, vec3<u32>(4294967295u, 33556u, 6639u)), 2832i, Struct_1(false, vec3<u32>(9777u, 0u, 12450u)), 20010i), Struct_2(-202f, Struct_1(true, vec3<u32>(999u, 4294967295u, 0u)), -1i, Struct_1(false, vec3<u32>(0u, 0u, 9491u)), 1351i), Struct_3(true)), Struct_5(Struct_1(true, vec3<u32>(4294967295u, 57695u, 18277u)), Struct_2(-2268f, Struct_1(true, vec3<u32>(14622u, 4294967295u, 7715u)), 2147483647i, Struct_1(true, vec3<u32>(19318u, 52541u, 0u)), i32(-2147483648)), Struct_2(1000f, Struct_1(false, vec3<u32>(4294967295u, 35258u, 4294967295u)), -9392i, Struct_1(false, vec3<u32>(1u, 4294967295u, 24340u)), -1i), Struct_3(true)), Struct_5(Struct_1(false, vec3<u32>(0u, 4294967295u, 4294967295u)), Struct_2(739f, Struct_1(false, vec3<u32>(4294967295u, 64254u, 65740u)), -36299i, Struct_1(false, vec3<u32>(4294967295u, 30506u, 5783u)), i32(-2147483648)), Struct_2(-976f, Struct_1(false, vec3<u32>(1u, 3017u, 1u)), 35558i, Struct_1(false, vec3<u32>(2885u, 1u, 4294967295u)), -31336i), Struct_3(true)), Struct_5(Struct_1(false, vec3<u32>(0u, 43412u, 4294967295u)), Struct_2(665f, Struct_1(false, vec3<u32>(0u, 7118u, 19654u)), -64862i, Struct_1(true, vec3<u32>(43849u, 1u, 0u)), 1i), Struct_2(2198f, Struct_1(false, vec3<u32>(30330u, 65155u, 59975u)), 30726i, Struct_1(true, vec3<u32>(0u, 62282u, 1u)), 21274i), Struct_3(true)), Struct_5(Struct_1(true, vec3<u32>(0u, 0u, 4294967295u)), Struct_2(500f, Struct_1(true, vec3<u32>(1u, 11802u, 1u)), -6629i, Struct_1(true, vec3<u32>(24493u, 48741u, 4294967295u)), -1i), Struct_2(-2083f, Struct_1(true, vec3<u32>(244u, 1u, 35780u)), 2147483647i, Struct_1(false, vec3<u32>(6892u, 1u, 4294967295u)), 70782i), Struct_3(false)), Struct_5(Struct_1(false, vec3<u32>(45986u, 0u, 10917u)), Struct_2(-519f, Struct_1(false, vec3<u32>(29493u, 0u, 4294967295u)), -37000i, Struct_1(true, vec3<u32>(92807u, 39444u, 112702u)), -1i), Struct_2(693f, Struct_1(false, vec3<u32>(53209u, 44229u, 1u)), -29708i, Struct_1(true, vec3<u32>(23838u, 0u, 4294967295u)), -6178i), Struct_3(true)), Struct_5(Struct_1(false, vec3<u32>(63139u, 55918u, 1172u)), Struct_2(-1000f, Struct_1(false, vec3<u32>(0u, 0u, 1u)), 38931i, Struct_1(true, vec3<u32>(61452u, 67561u, 1u)), -19756i), Struct_2(1695f, Struct_1(false, vec3<u32>(1u, 10582u, 2158u)), i32(-2147483648), Struct_1(true, vec3<u32>(0u, 4294967295u, 4294967295u)), -54027i), Struct_3(false)), Struct_5(Struct_1(false, vec3<u32>(28996u, 21033u, 4294967295u)), Struct_2(-816f, Struct_1(false, vec3<u32>(4294967295u, 1u, 0u)), -9220i, Struct_1(false, vec3<u32>(1u, 9718u, 1u)), -4185i), Struct_2(1077f, Struct_1(false, vec3<u32>(3494u, 4294967295u, 0u)), 0i, Struct_1(false, vec3<u32>(8848u, 49672u, 44638u)), 10389i), Struct_3(false)), Struct_5(Struct_1(false, vec3<u32>(1u, 19354u, 0u)), Struct_2(-2032f, Struct_1(false, vec3<u32>(0u, 1u, 55813u)), -41983i, Struct_1(false, vec3<u32>(0u, 1u, 23589u)), 44605i), Struct_2(-190f, Struct_1(false, vec3<u32>(0u, 90107u, 11478u)), 30897i, Struct_1(false, vec3<u32>(3283u, 11803u, 0u)), -13033i), Struct_3(false)), Struct_5(Struct_1(false, vec3<u32>(1u, 80014u, 1u)), Struct_2(449f, Struct_1(true, vec3<u32>(0u, 17215u, 4294967295u)), -1i, Struct_1(true, vec3<u32>(4294967295u, 1u, 9384u)), 1i), Struct_2(1815f, Struct_1(true, vec3<u32>(1u, 21806u, 3894u)), -6113i, Struct_1(true, vec3<u32>(1u, 55999u, 38513u)), 0i), Struct_3(true)));

var<private> global2: vec3<u32> = vec3<u32>(0u, 53926u, 5806u);

var<private> global3: array<Struct_3, 21>;

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3(arg_0: vec4<u32>, arg_1: Struct_4) -> bool {
    global0 = array<vec4<f32>, 24>();
    let var_0 = Struct_2(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-564f + -952f), -469f))), -559f)), Struct_1(all(vec3<bool>(true, all(arg_1.d), all(vec4<bool>(arg_1.d.x, arg_1.d.x, arg_1.d.x, arg_1.e)))), ~(arg_0.yxy | arg_0.ywy) & vec3<u32>(42320u, arg_1.c.x ^ 1u, 85102u)), -(~arg_1.b), Struct_1(!(!all(vec2<bool>(arg_1.a.x, false))), _wgslsmith_add_vec3_u32(vec3<u32>(0u, global2.x, 88047u), arg_0.xyy ^ vec3<u32>(u_input.b.x, 1u, arg_0.x)) << (vec3<u32>(arg_1.c.x << (0u % 32u), arg_1.c.x, firstLeadingBit(40436u)) % vec3<u32>(32u))), ~arg_1.b);
    var var_1 = ~arg_0 ^ arg_0;
    var var_2 = false;
    let var_3 = Struct_4(vec2<bool>(any(!(!vec4<bool>(false, true, arg_1.d.x, true))), true), 25464i, var_0.b.b.yy, vec4<bool>(false, firstLeadingBit(var_0.d.b.x) > ~min(14851u, 0u), var_0.d.a, true), all(!vec2<bool>(!arg_1.d.x, var_0.a == var_0.a)));
    return any(!select(vec2<bool>(!var_0.d.a, !var_0.d.a), vec2<bool>(false, true), 19295u <= u_input.a.x));
}

fn func_2(arg_0: u32) -> vec2<u32> {
    var var_0 = global1[_wgslsmith_index_u32(~_wgslsmith_clamp_u32(arg_0, 0u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, global2.x, u_input.b.x, arg_0) << (vec4<u32>(4294967295u, u_input.b.x, 35028u, 0u) % vec4<u32>(32u)), abs(vec4<u32>(arg_0, u_input.b.x, u_input.a.x, 8366u))) << (~(~u_input.b.x) % 32u)), 14u)];
    let var_1 = var_0.c.d.b.zx;
    let var_2 = firstTrailingBit(~(~vec4<u32>(u_input.b.x, 4294967295u, 1u, 0u) ^ ~(~vec4<u32>(0u, u_input.a.x, 34057u, var_0.c.b.b.x))));
    let var_3 = select(select(select(select(vec4<bool>(var_0.b.d.a, false, var_0.b.b.a, var_0.b.d.a), vec4<bool>(true, var_0.c.d.a, var_0.a.a, var_0.b.b.a), vec4<bool>(var_0.d.a, true, var_0.b.b.a, true)), !(!vec4<bool>(false, true, var_0.b.b.a, false)), true), !(!(!vec4<bool>(var_0.d.a, true, true, true))), false), vec4<bool>(!(!(var_0.c.b.a && true)), true, !var_0.c.b.a, !(!var_0.c.b.a)), vec4<bool>((var_0.c.a == 369f) & func_3(~vec4<u32>(46850u, var_1.x, 4294967295u, arg_0), Struct_4(vec2<bool>(true, true), var_0.b.c, vec2<u32>(43707u, arg_0), vec4<bool>(var_0.c.b.a, var_0.d.a, var_0.a.a, var_0.a.a), true)), select(var_0.b.b.a, true | (var_0.b.b.a != true), any(vec2<bool>(false, true))), true == (var_0.b.b.a || true), false));
    let var_4 = firstLeadingBit(_wgslsmith_sub_vec2_i32(vec2<i32>(var_0.b.c, i32(-1i) * -5702i), -vec2<i32>(1i, var_0.c.c)));
    return _wgslsmith_mult_vec2_u32(_wgslsmith_clamp_vec2_u32(~var_0.b.b.b.zx, abs(~(~vec2<u32>(arg_0, 4294967295u))), vec2<u32>(~_wgslsmith_add_u32(1u, 16029u), var_2.x)), _wgslsmith_clamp_vec2_u32(_wgslsmith_div_vec2_u32(vec2<u32>(var_0.c.d.b.x, 1u), vec2<u32>(firstTrailingBit(58848u), ~24722u)), vec2<u32>((var_0.b.b.b.x ^ var_0.a.b.x) | (0u | var_0.a.b.x), _wgslsmith_sub_u32(13288u >> (1u % 32u), _wgslsmith_clamp_u32(var_0.b.d.b.x, arg_0, 48662u))), select(vec2<u32>(var_0.b.b.b.x, 0u), ~(~vec2<u32>(15297u, u_input.b.x)), !var_0.d.a)));
}

fn func_1() -> vec4<i32> {
    global2 = vec3<u32>(u_input.b.x, u_input.a.x, ~u_input.b.x);
    global0 = array<vec4<f32>, 24>();
    var var_0 = -163f;
    var var_1 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(~(vec2<u32>(_wgslsmith_mult_u32(global2.x, 7110u), 59793u) | min(~vec2<u32>(15297u, 1u), _wgslsmith_mult_vec2_u32(u_input.a, vec2<u32>(global2.x, 4294967295u)))), func_2(~global2.x)), 14u)];
    var var_2 = var_1.c;
    return vec4<i32>(max(abs(abs(~(-1i))), 10469i), _wgslsmith_div_i32(reverseBits(-1i), abs(37724i)) | select(var_1.b.e, -(-9990i << (var_1.c.b.b.x % 32u)), true), -44312i, var_2.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_4, arg_2: vec4<i32>) -> Struct_2 {
    var var_0 = Struct_2(_wgslsmith_f_op_f32(1f * 576f), Struct_1(func_3(abs(~vec4<u32>(0u, arg_1.c.x, global2.x, 19345u)), Struct_4(vec2<bool>(arg_1.d.x, false), _wgslsmith_mult_i32(arg_1.b, -31784i), u_input.a | vec2<u32>(global2.x, 0u), !arg_1.d, !arg_1.d.x)), firstTrailingBit(firstTrailingBit(vec3<u32>(arg_1.c.x, 2482u, arg_1.c.x)))), arg_0.x, Struct_1(arg_1.d.x, max((vec3<u32>(global2.x, u_input.b.x, global2.x) << (vec3<u32>(0u, 34113u, arg_1.c.x) % vec3<u32>(32u))) & select(vec3<u32>(0u, arg_1.c.x, global2.x), vec3<u32>(arg_1.c.x, global2.x, 0u), vec3<bool>(true, false, arg_1.a.x)), vec3<u32>(global2.x, u_input.a.x, 4294967295u) << (firstLeadingBit(vec3<u32>(32354u, arg_1.c.x, 29714u)) % vec3<u32>(32u)))), arg_0.x);
    var var_1 = arg_1.d.x;
    var var_2 = var_0.d.b.x;
    var var_3 = vec3<u32>(~(~_wgslsmith_mod_u32(1u, u_input.a.x)), ~(~(~(~arg_1.c.x))), _wgslsmith_mod_u32(1u, var_0.b.b.x));
    var var_4 = _wgslsmith_f_op_f32(var_0.a - _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(550f, var_0.a))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_0.a, var_0.a)))));
    return Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a, 367f) * _wgslsmith_f_op_f32(625f * var_0.a)))), Struct_1(32124u == u_input.b.x, _wgslsmith_add_vec3_u32(vec3<u32>(46700u, global2.x, var_3.x) << (_wgslsmith_mod_vec3_u32(vec3<u32>(91351u, 4294967295u, var_3.x), var_0.d.b) % vec3<u32>(32u)), vec3<u32>(arg_1.c.x, arg_1.c.x, var_3.x) | _wgslsmith_div_vec3_u32(vec3<u32>(arg_1.c.x, arg_1.c.x, 9291u), var_0.d.b))), -45262i, var_0.d, ~arg_2.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_5(Struct_1(false, ~select(vec3<u32>(global2.x, global2.x, 1u), abs(vec3<u32>(u_input.a.x, 14341u, u_input.a.x)), any(vec2<bool>(false, true)))), func_4(vec2<i32>(1i, _wgslsmith_clamp_i32(~(-6117i), firstLeadingBit(2147483647i), min(-14405i, -2147483647i))), Struct_4(vec2<bool>(true, true), 44498i, vec2<u32>(1u, ~1u), vec4<bool>(true, true, true, true), all(vec4<bool>(false, false, false, false))), firstTrailingBit(-func_1())), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(341f - -2457f)) * _wgslsmith_f_op_f32(step(-1000f, _wgslsmith_div_f32(902f, 1000f)))), func_4(vec2<i32>(1i, 1i), Struct_4(vec2<bool>(false, false), 0i, ~u_input.a, vec4<bool>(true, true, true, false), true), abs(countOneBits(vec4<i32>(-1i, -1555i, -17899i, -1i)))).b, -(-13290i >> (~global2.x % 32u)), func_4(max(vec2<i32>(-34008i, -1i), vec2<i32>(0i, 0i)), Struct_4(vec2<bool>(true, true), _wgslsmith_mod_i32(1i, -33630i), global2.zz, vec4<bool>(true, true, false, false), true), vec4<i32>(1i, 1i, 1i, 1i)).d, _wgslsmith_div_i32(reverseBits(func_4(vec2<i32>(-1i, -16066i), Struct_4(vec2<bool>(true, true), 1i, u_input.a, vec4<bool>(false, true, true, true), false), vec4<i32>(-2147483647i, -1i, -32665i, 17962i)).c), func_4(_wgslsmith_div_vec2_i32(vec2<i32>(62798i, -2147483647i), vec2<i32>(-2481i, 12435i)), Struct_4(vec2<bool>(true, true), -5149i, vec2<u32>(global2.x, global2.x), vec4<bool>(true, true, false, true), true), reverseBits(vec4<i32>(-31355i, 1i, 0i, 30102i))).e)), global3[_wgslsmith_index_u32(global2.x, 21u)]);
    let var_1 = var_0.c;
    global0 = array<vec4<f32>, 24>();
    var var_2 = var_0;
    let var_3 = func_3(reverseBits(_wgslsmith_clamp_vec4_u32(~_wgslsmith_mod_vec4_u32(vec4<u32>(var_1.d.b.x, 4294967295u, 1u, 67682u), vec4<u32>(var_1.b.b.x, 1u, 0u, 4294967295u)), ~min(vec4<u32>(var_1.d.b.x, 28409u, var_0.a.b.x, var_2.b.d.b.x), vec4<u32>(4294967295u, 51253u, u_input.b.x, var_2.b.d.b.x)), vec4<u32>(u_input.b.x, 0u, 1u, ~21518u))), Struct_4(vec2<bool>(all(!vec3<bool>(var_2.b.d.a, false, false)), _wgslsmith_f_op_f32(var_1.a + 2168f) == _wgslsmith_f_op_f32(1887f + var_1.a)), 6466i, ~(~vec2<u32>(var_2.a.b.x, 0u)) | vec2<u32>(var_0.c.d.b.x, ~var_2.a.b.x), !select(select(vec4<bool>(true, false, var_1.b.a, var_1.d.a), vec4<bool>(var_0.c.b.a, var_1.b.a, var_1.d.a, var_0.b.d.a), false), vec4<bool>(false, true, var_2.c.d.a, false), !vec4<bool>(var_2.a.a, var_1.d.a, false, var_2.c.d.a)), true));
    let x = u_input.a;
    s_output = StorageBuffer(1056f, vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + var_0.c.a)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-319f + 1055f), _wgslsmith_f_op_f32(f32(-1f) * -714f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_div_f32(var_0.c.a, var_1.a))) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(var_1.a, 1320f)))), _wgslsmith_f_op_f32(min(766f, _wgslsmith_f_op_f32(f32(-1f) * -403f)))), vec4<u32>(min(var_1.d.b.x, global2.x) >> (_wgslsmith_add_u32(~4294967295u, var_1.b.b.x) % 32u), firstTrailingBit(36408u) << (~4294967295u % 32u), 0u, abs(u_input.b.x)), var_1.c);
}

