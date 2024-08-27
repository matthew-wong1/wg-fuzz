struct Struct_1 {
    a: bool,
    b: i32,
    c: vec2<f32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
    c: Struct_1,
    d: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_3 = Struct_3(Struct_2(Struct_1(false, -1i, vec2<f32>(504f, 520f), vec4<u32>(46700u, 0u, 0u, 0u), vec4<u32>(4294967295u, 1u, 17214u, 4294967295u))), -199f, Struct_1(true, 0i, vec2<f32>(139f, 1000f), vec4<u32>(63848u, 47130u, 41496u, 48352u), vec4<u32>(12519u, 1u, 36663u, 4294967295u)), -561f);

var<private> global2: array<Struct_1, 32> = array<Struct_1, 32>(Struct_1(false, -36021i, vec2<f32>(204f, -813f), vec4<u32>(134878u, 1u, 4294967295u, 0u), vec4<u32>(60098u, 0u, 4294967295u, 54968u)), Struct_1(true, 1i, vec2<f32>(-200f, 1796f), vec4<u32>(1u, 36938u, 0u, 4294967295u), vec4<u32>(5090u, 62729u, 41545u, 48510u)), Struct_1(false, -1i, vec2<f32>(2121f, 1000f), vec4<u32>(4294967295u, 40231u, 4294967295u, 0u), vec4<u32>(81504u, 0u, 23337u, 1u)), Struct_1(true, -1i, vec2<f32>(-1808f, -450f), vec4<u32>(4294967295u, 0u, 4294967295u, 1u), vec4<u32>(83060u, 23751u, 8942u, 1u)), Struct_1(false, 2147483647i, vec2<f32>(-429f, 407f), vec4<u32>(13179u, 86963u, 4294967295u, 73088u), vec4<u32>(0u, 25103u, 29676u, 0u)), Struct_1(true, 1i, vec2<f32>(1000f, -277f), vec4<u32>(1u, 21700u, 95733u, 27003u), vec4<u32>(32462u, 1u, 1u, 1u)), Struct_1(true, 1i, vec2<f32>(-1306f, -258f), vec4<u32>(81317u, 0u, 36270u, 4294967295u), vec4<u32>(4294967295u, 0u, 0u, 0u)), Struct_1(true, 327i, vec2<f32>(-977f, 1000f), vec4<u32>(98038u, 13012u, 4294967295u, 4294967295u), vec4<u32>(0u, 0u, 42455u, 1u)), Struct_1(true, -3933i, vec2<f32>(1338f, 312f), vec4<u32>(5600u, 16135u, 1u, 38651u), vec4<u32>(4294967295u, 1u, 6501u, 19664u)), Struct_1(true, -25447i, vec2<f32>(297f, 272f), vec4<u32>(55756u, 0u, 62500u, 4294967295u), vec4<u32>(59658u, 0u, 0u, 1u)), Struct_1(false, -5053i, vec2<f32>(1634f, -1450f), vec4<u32>(1u, 0u, 4294967295u, 0u), vec4<u32>(51719u, 4294967295u, 0u, 1u)), Struct_1(false, -61592i, vec2<f32>(1057f, -1000f), vec4<u32>(36012u, 4294967295u, 1u, 46220u), vec4<u32>(15693u, 23572u, 1u, 1u)), Struct_1(false, 50455i, vec2<f32>(1365f, 1000f), vec4<u32>(4294967295u, 97531u, 0u, 1u), vec4<u32>(15001u, 63779u, 4353u, 1u)), Struct_1(true, -37835i, vec2<f32>(-1000f, -131f), vec4<u32>(0u, 4294967295u, 1u, 179u), vec4<u32>(0u, 4294967295u, 39853u, 43721u)), Struct_1(false, 0i, vec2<f32>(-284f, -882f), vec4<u32>(74751u, 1u, 4294967295u, 0u), vec4<u32>(20881u, 4294967295u, 25966u, 0u)), Struct_1(true, -1i, vec2<f32>(1352f, 1033f), vec4<u32>(4021u, 74574u, 15733u, 30341u), vec4<u32>(0u, 4294967295u, 8546u, 16912u)), Struct_1(true, -4124i, vec2<f32>(-1000f, -1250f), vec4<u32>(71529u, 0u, 0u, 1u), vec4<u32>(1200u, 27028u, 1u, 73315u)), Struct_1(false, -1i, vec2<f32>(265f, 1324f), vec4<u32>(58700u, 4294967295u, 4294967295u, 63252u), vec4<u32>(59577u, 23562u, 4294967295u, 47460u)), Struct_1(false, i32(-2147483648), vec2<f32>(1058f, -407f), vec4<u32>(0u, 3646u, 1u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 4294967295u, 30621u)), Struct_1(false, 2147483647i, vec2<f32>(1064f, -836f), vec4<u32>(1u, 4294967295u, 1u, 4294967295u), vec4<u32>(48217u, 12615u, 0u, 34164u)), Struct_1(false, 0i, vec2<f32>(-1038f, 1000f), vec4<u32>(0u, 34923u, 12368u, 1u), vec4<u32>(4294967295u, 23319u, 0u, 38555u)), Struct_1(false, 0i, vec2<f32>(-844f, 1374f), vec4<u32>(45362u, 0u, 4294967295u, 29747u), vec4<u32>(19620u, 11877u, 9664u, 32050u)), Struct_1(true, i32(-2147483648), vec2<f32>(1000f, 172f), vec4<u32>(1u, 93716u, 11649u, 43424u), vec4<u32>(76291u, 1u, 24385u, 7353u)), Struct_1(true, -54009i, vec2<f32>(1421f, 248f), vec4<u32>(0u, 58274u, 1u, 20158u), vec4<u32>(1u, 1u, 4294967295u, 36041u)), Struct_1(false, i32(-2147483648), vec2<f32>(114f, -342f), vec4<u32>(1u, 0u, 23938u, 4294967295u), vec4<u32>(0u, 20624u, 6159u, 15525u)), Struct_1(false, 15330i, vec2<f32>(-430f, 172f), vec4<u32>(21864u, 58146u, 1u, 4294967295u), vec4<u32>(24167u, 4294967295u, 17051u, 55017u)), Struct_1(false, i32(-2147483648), vec2<f32>(1294f, 179f), vec4<u32>(41u, 27357u, 12066u, 4294967295u), vec4<u32>(1u, 1u, 29215u, 17157u)), Struct_1(false, 56992i, vec2<f32>(308f, -1015f), vec4<u32>(13806u, 34400u, 4294967295u, 57169u), vec4<u32>(4294967295u, 5221u, 4294967295u, 1u)), Struct_1(true, 17039i, vec2<f32>(-2603f, -1150f), vec4<u32>(0u, 62782u, 0u, 4420u), vec4<u32>(1103u, 4294967295u, 6020u, 19337u)), Struct_1(false, 1i, vec2<f32>(-962f, -2479f), vec4<u32>(0u, 7207u, 1u, 0u), vec4<u32>(4294967295u, 0u, 4294967295u, 38873u)), Struct_1(false, 0i, vec2<f32>(989f, -644f), vec4<u32>(1u, 180u, 0u, 0u), vec4<u32>(53719u, 6625u, 56288u, 11492u)), Struct_1(true, 54519i, vec2<f32>(-343f, -248f), vec4<u32>(1u, 4294967295u, 4294967295u, 101816u), vec4<u32>(0u, 0u, 1u, 28603u)));

var<private> global3: Struct_1 = Struct_1(true, 0i, vec2<f32>(1152f, -1684f), vec4<u32>(28323u, 27008u, 7039u, 40939u), vec4<u32>(22744u, 5368u, 1u, 0u));

var<private> global4: i32 = 6700i;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3(arg_0: Struct_3, arg_1: vec4<i32>, arg_2: Struct_3, arg_3: vec2<i32>) -> u32 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-global3.c.x), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(470f, global1.d)), _wgslsmith_f_op_f32(arg_0.c.c.x - global0.a.c.x)), 696f, global1.d) + _wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_0.a.a.c.x, -492f, global3.c.x, global1.a.a.c.x))))), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-281f, -919f, 422f, 1371f) - _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global0.a.c.x, global0.a.c.x, -1695f, arg_0.d)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, -871f, global3.c.x, arg_0.c.c.x))))), _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-441f, arg_0.a.a.c.x, global1.d, 460f)) * vec4<f32>(arg_2.c.c.x, -223f, 513f, global1.c.c.x)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-600f, arg_2.d, arg_2.d, arg_2.c.c.x))))))), !arg_2.a.a.a));
    var var_1 = _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global3.c.x, arg_0.c.c.x, false)))));
    let var_2 = any(vec2<bool>(!select(select(true, true, arg_0.c.a), true, arg_2.a.a.a), true));
    let var_3 = 30980i;
    let var_4 = arg_0.c.a;
    return ~(~0u);
}

fn func_4(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec4<i32>) -> f32 {
    var var_0 = ~vec2<i32>(-31215i, global0.a.b);
    let var_1 = arg_1;
    var_0 = vec2<i32>(var_0.x, min(-arg_2.x, global0.a.b)) << ((~vec2<u32>(u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a, u_input.a), u_input.e.xz)) << (vec2<u32>(countOneBits(min(0u, 4294967295u)), arg_0.e.x) % vec2<u32>(32u))) % vec2<u32>(32u));
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(arg_1.c.x)) + _wgslsmith_f_op_f32(-global1.c.c.x))) * _wgslsmith_f_op_f32(-400f - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(var_1.c.x, 603f))))));
    let var_3 = arg_1;
    return 1296f;
}

fn func_2(arg_0: vec4<i32>, arg_1: f32) -> Struct_2 {
    var var_0 = Struct_3(global1.a, _wgslsmith_f_op_f32(-arg_1), Struct_1(true, ~(-42069i), vec2<f32>(global0.a.c.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(global3.c.x, -106f)) - arg_1)), ~(~(~global1.c.d)), vec4<u32>(38264u, 57930u, u_input.a, global1.a.a.d.x << (_wgslsmith_div_u32(global1.a.a.d.x, 18746u) % 32u))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(global1.d)), _wgslsmith_f_op_f32(func_4(Struct_1(any(vec4<bool>(global1.a.a.a, global3.a, global3.a, global3.a)), _wgslsmith_add_i32(35106i, 8248i), global0.a.c, vec4<u32>(44815u, global1.a.a.d.x, 9104u, global0.a.e.x), global0.a.e), global2[_wgslsmith_index_u32(~func_3(Struct_3(global1.a, global0.a.c.x, global0.a, 979f), vec4<i32>(1i, global0.a.b, 24646i, 54254i), Struct_3(Struct_2(Struct_1(false, global1.a.a.b, vec2<f32>(global3.c.x, 1451f), vec4<u32>(global3.d.x, u_input.e.x, 106439u, u_input.a), vec4<u32>(global0.a.d.x, global3.e.x, 0u, 7679u))), 2023f, global2[_wgslsmith_index_u32(54541u, 32u)], 1073f), u_input.c.zy), 32u)], vec4<i32>(-1i) * -arg_0))));
    global4 = global1.c.b;
    var var_1 = (var_0.c.d.wy >> (~vec2<u32>(~u_input.a, ~28126u) % vec2<u32>(32u))) & (u_input.e.zx >> (~vec2<u32>(~u_input.e.x, _wgslsmith_mod_u32(4294967295u, 4294967295u)) % vec2<u32>(32u)));
    let var_2 = global3.c.x;
    global4 = (23780i ^ firstTrailingBit(select(var_0.c.b, 0i, var_1.x == 1u))) & _wgslsmith_sub_i32(global3.b | _wgslsmith_add_i32(_wgslsmith_div_i32(-9940i, global1.c.b), i32(-1i) * -2147483647i), 29348i);
    return Struct_2(global0.a);
}

fn func_1(arg_0: bool) -> Struct_2 {
    global1 = Struct_3(func_2(~(vec4<i32>(-1i) * -vec4<i32>(-1i, global3.b, global3.b, global0.a.b)), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(361f + _wgslsmith_f_op_f32(global3.c.x * global0.a.c.x))))), 1688f, global2[_wgslsmith_index_u32(global3.e.x, 32u)], _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.c.x) + _wgslsmith_f_op_f32(-global3.c.x)))));
    global3 = func_2(~abs(min(vec4<i32>(global3.b, u_input.b, -7250i, -1i), vec4<i32>(2147483647i, global3.b, 9485i, 1232i)) >> (global3.e % vec4<u32>(32u))), _wgslsmith_f_op_f32(global3.c.x + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-419f + -723f))))).a;
    let var_0 = 2147483647i;
    var var_1 = Struct_3(func_2(_wgslsmith_mod_vec4_i32(_wgslsmith_div_vec4_i32(-vec4<i32>(global3.b, 1i, 2147483647i, -13228i), ~vec4<i32>(0i, u_input.c.x, global0.a.b, u_input.b)), abs(select(vec4<i32>(global0.a.b, global0.a.b, -29889i, global3.b), vec4<i32>(global0.a.b, global3.b, 1i, global0.a.b), true))), global0.a.c.x), global0.a.c.x, func_2(_wgslsmith_add_vec4_i32(abs(vec4<i32>(-24667i, 53553i, 2147483647i, -1746i)), _wgslsmith_add_vec4_i32(vec4<i32>(-1351i, -1i, -8299i, 13664i) << (global3.e % vec4<u32>(32u)), vec4<i32>(u_input.b, global3.b, global1.c.b, 1i))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(1271f, -355f)))).a, _wgslsmith_f_op_f32(-global3.c.x));
    let var_2 = global0.a.a || true;
    return var_1.a;
}

fn func_5(arg_0: Struct_2, arg_1: u32, arg_2: Struct_2) -> i32 {
    var var_0 = !vec2<bool>(((14334u >> (u_input.e.x % 32u)) | ~1u) == arg_0.a.e.x, global0.a.a && !(!arg_0.a.a));
    global1 = Struct_3(arg_0, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.c.x)), Struct_1(!any(!vec3<bool>(global0.a.a, global1.a.a.a, global3.a)), 4718i, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1048f, global0.a.c.x) * arg_2.a.c)), ~global3.e, arg_0.a.d), -1112f);
    let var_1 = -194f;
    var var_2 = _wgslsmith_mult_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, global1.a.a.e.x, 2960u) >> (_wgslsmith_mult_vec3_u32(func_1(var_0.x).a.e.yxw, max(vec3<u32>(4294967295u, 17930u, 15390u), global0.a.d.wxx)) % vec3<u32>(32u)), select(~arg_0.a.d.yxz, ~_wgslsmith_mod_vec3_u32(arg_0.a.d.xwy, global0.a.d.wzw), !(!vec3<bool>(arg_0.a.a, false, false)))), 4294967295u);
    let var_3 = func_1(arg_2.a.a);
    return global1.c.b;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = select(!vec4<bool>(global3.a, true && (u_input.e.x > 55685u), true, any(!vec3<bool>(false, global0.a.a, true))), vec4<bool>(~max(0i, -2147483647i) >= func_5(Struct_2(global2[_wgslsmith_index_u32(global1.c.d.x, 32u)]), ~global0.a.d.x, func_1(global1.a.a.a)), !(!(!global1.c.a)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 1u, global1.a.a.e.x), global3.e.zzz ^ vec3<u32>(1u, u_input.a, global1.c.e.x)) <= _wgslsmith_add_u32(func_3(Struct_3(global1.a, global0.a.c.x, global1.c, global3.c.x), vec4<i32>(global0.a.b, 41718i, global0.a.b, global3.b), Struct_3(global1.a, global0.a.c.x, global1.c, global1.c.c.x), vec2<i32>(global0.a.b, -1i)), ~38803u), !(_wgslsmith_f_op_f32(step(global0.a.c.x, global3.c.x)) >= -161f)), global1.a.a.a);
    let var_1 = func_2(-(abs(vec4<i32>(global0.a.b, u_input.d, global1.a.a.b, global0.a.b)) >> (vec4<u32>(~18732u, 12235u, ~1u, ~global1.a.a.e.x) % vec4<u32>(32u))), 302f);
    var var_2 = global0.a.c.x;
    let var_3 = _wgslsmith_f_op_f32(-global0.a.c.x);
    let x = u_input.a;
    s_output = StorageBuffer(-abs(vec4<i32>(_wgslsmith_mod_i32(var_1.a.b, global3.b), u_input.d, 22532i, ~var_1.a.b)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(max(global0.a.c.x, -803f)), _wgslsmith_f_op_f32(f32(-1f) * -283f)) - _wgslsmith_f_op_f32(-257f + _wgslsmith_f_op_f32(step(2021f, var_3))))));
}

