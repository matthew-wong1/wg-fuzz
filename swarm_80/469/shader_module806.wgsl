struct Struct_1 {
    a: vec2<i32>,
    b: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec2<u32>,
}

struct Struct_4 {
    a: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 9> = array<Struct_2, 9>(Struct_2(Struct_1(vec2<i32>(1i, 10854i), i32(-2147483648)), vec4<i32>(i32(-2147483648), -15850i, i32(-2147483648), 18803i), Struct_1(vec2<i32>(0i, -80623i), 64933i)), Struct_2(Struct_1(vec2<i32>(2147483647i, -23369i), -38911i), vec4<i32>(11058i, -9672i, 0i, 25841i), Struct_1(vec2<i32>(-30238i, -1i), -51718i)), Struct_2(Struct_1(vec2<i32>(56729i, -1i), 1i), vec4<i32>(-1i, 26954i, 16932i, -1i), Struct_1(vec2<i32>(i32(-2147483648), 0i), -77536i)), Struct_2(Struct_1(vec2<i32>(-1i, 46029i), -69819i), vec4<i32>(35985i, 7036i, 0i, 15857i), Struct_1(vec2<i32>(0i, -14366i), i32(-2147483648))), Struct_2(Struct_1(vec2<i32>(29698i, 167i), -17957i), vec4<i32>(-18204i, -13563i, i32(-2147483648), 11643i), Struct_1(vec2<i32>(22838i, 2147483647i), 10185i)), Struct_2(Struct_1(vec2<i32>(39404i, -1i), -1i), vec4<i32>(2147483647i, 0i, 2147483647i, -12522i), Struct_1(vec2<i32>(-1i, -1i), -44137i)), Struct_2(Struct_1(vec2<i32>(2147483647i, 2147483647i), -1i), vec4<i32>(15795i, 2147483647i, 1i, -12991i), Struct_1(vec2<i32>(-30981i, -1i), 0i)), Struct_2(Struct_1(vec2<i32>(1i, 2147483647i), 1i), vec4<i32>(1i, -1i, 0i, -13904i), Struct_1(vec2<i32>(i32(-2147483648), -2531i), -38590i)), Struct_2(Struct_1(vec2<i32>(2147483647i, i32(-2147483648)), 1i), vec4<i32>(4878i, 2147483647i, 1i, 0i), Struct_1(vec2<i32>(30674i, -48190i), 867i)));

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 10> = array<Struct_1, 10>(Struct_1(vec2<i32>(0i, 2147483647i), -39125i), Struct_1(vec2<i32>(11207i, 1920i), 20703i), Struct_1(vec2<i32>(i32(-2147483648), i32(-2147483648)), i32(-2147483648)), Struct_1(vec2<i32>(1i, 1i), 16435i), Struct_1(vec2<i32>(59091i, 2147483647i), -1i), Struct_1(vec2<i32>(24949i, i32(-2147483648)), 39958i), Struct_1(vec2<i32>(1i, 1i), -16932i), Struct_1(vec2<i32>(-6542i, 15980i), -31983i), Struct_1(vec2<i32>(1i, i32(-2147483648)), -1i), Struct_1(vec2<i32>(-17166i, 2147483647i), i32(-2147483648)));

var<private> global3: Struct_3 = Struct_3(vec2<u32>(0u, 19365u), Struct_1(vec2<i32>(-5583i, 1i), 3692i), vec2<u32>(38235u, 4294967295u));

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: Struct_2, arg_3: vec3<bool>) -> vec2<i32> {
    return -vec2<i32>(-36629i, 22271i);
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_add_vec4_i32(~_wgslsmith_mod_vec4_i32(-global1.b, firstTrailingBit(global1.b)) >> (~(_wgslsmith_mult_vec4_u32(vec4<u32>(u_input.a, u_input.a, global3.c.x, u_input.a), vec4<u32>(global3.c.x, 1u, global3.c.x, u_input.a)) & _wgslsmith_mult_vec4_u32(vec4<u32>(global3.c.x, u_input.a, u_input.a, 27899u), vec4<u32>(1u, 1u, global3.a.x, global3.a.x))) % vec4<u32>(32u)), -(max(vec4<i32>(global1.a.a.x, global1.c.b, global3.b.a.x, global3.b.a.x), reverseBits(vec4<i32>(15553i, 20109i, -6719i, 10131i))) << (vec4<u32>(~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(global3.a.x, 4294967295u, u_input.a, global3.c.x), vec4<u32>(43073u, 4294967295u, 19173u, 49905u)), _wgslsmith_dot_vec2_u32(global3.a, vec2<u32>(1u, u_input.a)), 1u) % vec4<u32>(32u))));
    global2 = array<Struct_1, 10>();
    global1 = Struct_2(Struct_1(select(vec2<i32>(global1.b.x, _wgslsmith_div_i32(var_0.x, global1.a.a.x)), func_3(vec3<f32>(770f, -1000f, 1346f), Struct_1(global3.b.a, 44076i), Struct_2(Struct_1(global3.b.a, 1i), global1.b, Struct_1(var_0.zz, global3.b.b)), vec3<bool>(false, false, true)) >> (global3.a % vec2<u32>(32u)), true), ~13285i), global1.b, global2[_wgslsmith_index_u32(global3.c.x, 10u)]);
    let var_1 = abs(global1.b);
    let var_2 = global2[_wgslsmith_index_u32(_wgslsmith_add_u32(_wgslsmith_mult_u32(u_input.a << (_wgslsmith_clamp_u32(~1384u, _wgslsmith_mod_u32(4294967295u, u_input.a), 4294967295u) % 32u), ~(~1u)), firstLeadingBit(global3.a.x) << (global3.a.x % 32u)), 10u)];
    return global3.c.x;
}

fn func_4(arg_0: vec4<bool>, arg_1: i32) -> Struct_2 {
    var var_0 = Struct_4(global0[_wgslsmith_index_u32(67348u, 9u)]);
    let var_1 = true;
    let var_2 = Struct_1(func_3(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-885f, 1769f, 414f), vec3<f32>(1000f, -939f, -875f))), _wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(147f, -122f, -1845f))), true)) + vec3<f32>(-918f, _wgslsmith_f_op_f32(round(729f)), -1111f)), global2[_wgslsmith_index_u32(0u, 10u)], var_0.a, !vec3<bool>(true, false, !arg_0.x)), 0i);
    let var_3 = Struct_1(vec2<i32>(~min(global1.b.x << (4294967295u % 32u), -var_0.a.c.a.x), _wgslsmith_dot_vec2_i32(vec2<i32>(~global1.b.x, max(arg_1, -23702i)), vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(var_0.a.a.b, arg_1, var_0.a.b.x), var_0.a.b.yzy), arg_1))), 0i);
    var var_4 = Struct_3(_wgslsmith_mod_vec2_u32(~(global3.a & countOneBits(vec2<u32>(0u, u_input.a))), global3.c >> (global3.a % vec2<u32>(32u))), Struct_1(vec2<i32>(max(_wgslsmith_sub_i32(26688i, arg_1), _wgslsmith_clamp_i32(global3.b.a.x, -24796i, global1.c.a.x)), _wgslsmith_add_i32(-var_2.a.x, -1i)), arg_1), vec2<u32>(13698u, _wgslsmith_mult_u32(_wgslsmith_add_u32(_wgslsmith_add_u32(global3.a.x, 0u), 1u), _wgslsmith_mod_u32(55070u, ~85724u))));
    return Struct_2(Struct_1(vec2<i32>(global3.b.a.x, 24856i), countOneBits(~(~(-43590i)))), _wgslsmith_add_vec4_i32(~global1.b, global1.b), Struct_1(_wgslsmith_div_vec2_i32(min(_wgslsmith_sub_vec2_i32(var_4.b.a, vec2<i32>(var_4.b.a.x, var_0.a.c.b)), global1.c.a), vec2<i32>(-15616i, var_3.b)), -1i));
}

fn func_1(arg_0: i32, arg_1: bool) -> vec4<bool> {
    let var_0 = func_4(vec4<bool>(true, all(select(vec2<bool>(true, arg_1), vec2<bool>(arg_1, arg_1), vec2<bool>(false, true))) && true, func_2() <= 4294967295u, select(false, true, true | arg_1) | (-763i >= _wgslsmith_div_i32(arg_0, 2147483647i))), 1i);
    var var_1 = 545f;
    global3 = Struct_3(~global3.a, global2[_wgslsmith_index_u32(~u_input.a, 10u)], global3.c);
    return vec4<bool>(!any(select(select(vec2<bool>(arg_1, true), vec2<bool>(true, arg_1), arg_1), vec2<bool>(arg_1, arg_1), false)), any(vec4<bool>(true, true, true, true)), arg_1, !(global3.a.x < (firstLeadingBit(global3.c.x) >> (~4294967295u % 32u))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = Struct_3(global3.c, global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(min(min(vec4<u32>(1u, u_input.a, u_input.a, global3.c.x), vec4<u32>(4294967295u, 4294967295u, 45660u, 38190u)) << (~vec4<u32>(1u, global3.a.x, global3.c.x, 4294967295u) % vec4<u32>(32u)), vec4<u32>(4294967295u ^ u_input.a, ~global3.c.x, _wgslsmith_mod_u32(u_input.a, 4294967295u), _wgslsmith_clamp_u32(global3.a.x, 1u, 70409u))), select(_wgslsmith_sub_vec4_u32(vec4<u32>(u_input.a, 1u, global3.c.x, u_input.a), vec4<u32>(global3.a.x, u_input.a, global3.c.x, 29066u)) << (firstLeadingBit(vec4<u32>(1u, 0u, 117576u, global3.c.x)) % vec4<u32>(32u)), vec4<u32>(6976u, 53671u, 0u | u_input.a, _wgslsmith_dot_vec2_u32(global3.a, global3.a)), true)), 10u)], global3.c);
    let var_0 = select(func_1(0i, any(vec4<bool>(true, true, true, true)) & true), select(vec4<bool>(true, false, true, 14778u == u_input.a), select(select(vec4<bool>(false, false, true, false), vec4<bool>(false, false, true, false), true), select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, true), any(vec3<bool>(false, true, false))), vec4<bool>(true, true, true, true)), true), (all(vec3<bool>(true, true, true)) & true) & false);
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(_wgslsmith_add_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(0u, 6178u, global3.a.x, global3.c.x), vec4<u32>(u_input.a, 0u, u_input.a, 1u)), max(vec4<u32>(u_input.a, u_input.a, global3.a.x, global3.a.x), vec4<u32>(global3.c.x, 55418u, 4294967295u, u_input.a))), countOneBits(~vec4<u32>(1u, 20605u, 8482u, global3.c.x))), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(global3.c.x, 9445u), global3.a.x, 7642u, abs(49523u)), ~(~vec4<u32>(global3.a.x, 4294967295u, 1u, global3.c.x))))), 9u)];
    var var_1 = Struct_3(vec2<u32>(min(global3.c.x, 87204u), 0u), global2[_wgslsmith_index_u32(~(~0u), 10u)], ~(~(~vec2<u32>(13835u, global3.a.x))) ^ ~vec2<u32>(~global3.a.x, ~u_input.a));
    let var_2 = Struct_3(min(vec2<u32>(u_input.a, 42533u) | vec2<u32>(0u, _wgslsmith_mod_u32(1u, var_1.a.x)), ~select(select(global3.c, vec2<u32>(1u, global3.a.x), false), _wgslsmith_mult_vec2_u32(var_1.a, vec2<u32>(u_input.a, global3.a.x)), var_0.wx)), func_4(func_1(1i, true), ((i32(-1i) * -1i) >> (1u % 32u)) & _wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(var_1.b.a, var_1.b.a), reverseBits(global3.b.a))).a, ~var_1.c);
    var var_3 = var_2.b.a;
    var var_4 = func_4(func_1(~(-1i), true), _wgslsmith_add_i32(~reverseBits(-var_3.x), abs(var_2.b.a.x))).a;
    let x = u_input.a;
    s_output = StorageBuffer(~(-vec3<i32>(-2149i, var_4.a.x, var_2.b.b)), _wgslsmith_sub_u32(_wgslsmith_clamp_u32(_wgslsmith_mod_u32(~4294967295u, u_input.a), 26178u, select(1u, 4294967295u, var_0.x == false)), min(var_1.a.x, 0u)));
}

