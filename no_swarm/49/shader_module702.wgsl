struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<u32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: u32,
    b: vec2<u32>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<i32>,
    d: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<u32>,
    d: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<bool>;

var<private> global1: array<Struct_2, 26> = array<Struct_2, 26>(Struct_2(Struct_1(vec2<u32>(68767u, 0u)), vec2<u32>(1u, 4294967295u), Struct_1(vec2<u32>(1u, 26605u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u)), vec2<u32>(45699u, 4294967295u), Struct_1(vec2<u32>(49148u, 59318u))), Struct_2(Struct_1(vec2<u32>(15392u, 4294967295u)), vec2<u32>(1u, 1u), Struct_1(vec2<u32>(13878u, 13621u))), Struct_2(Struct_1(vec2<u32>(1u, 54750u)), vec2<u32>(4294967295u, 4294967295u), Struct_1(vec2<u32>(41748u, 37223u))), Struct_2(Struct_1(vec2<u32>(16020u, 4294967295u)), vec2<u32>(48123u, 41658u), Struct_1(vec2<u32>(0u, 122138u))), Struct_2(Struct_1(vec2<u32>(33101u, 4294967295u)), vec2<u32>(38009u, 4294967295u), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 116643u)), vec2<u32>(126957u, 38550u), Struct_1(vec2<u32>(18344u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(1u, 29569u)), vec2<u32>(4294967295u, 0u), Struct_1(vec2<u32>(4294967295u, 1u))), Struct_2(Struct_1(vec2<u32>(0u, 59743u)), vec2<u32>(63134u, 41844u), Struct_1(vec2<u32>(0u, 22549u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 0u)), vec2<u32>(8413u, 64688u), Struct_1(vec2<u32>(90146u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 4294967295u)), vec2<u32>(4294967295u, 16709u), Struct_1(vec2<u32>(0u, 1u))), Struct_2(Struct_1(vec2<u32>(3413u, 1u)), vec2<u32>(18224u, 3671u), Struct_1(vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec2<u32>(146475u, 4294967295u)), vec2<u32>(4294967295u, 68773u), Struct_1(vec2<u32>(4294967295u, 30755u))), Struct_2(Struct_1(vec2<u32>(2697u, 116535u)), vec2<u32>(336u, 50931u), Struct_1(vec2<u32>(4294967295u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(0u, 1u)), vec2<u32>(44325u, 4294967295u), Struct_1(vec2<u32>(40058u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 16990u)), vec2<u32>(16387u, 0u), Struct_1(vec2<u32>(0u, 1564u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 8614u)), vec2<u32>(86860u, 85001u), Struct_1(vec2<u32>(44225u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(13238u, 1u)), vec2<u32>(42550u, 36385u), Struct_1(vec2<u32>(31949u, 0u))), Struct_2(Struct_1(vec2<u32>(0u, 4294967295u)), vec2<u32>(1u, 0u), Struct_1(vec2<u32>(0u, 4294967295u))), Struct_2(Struct_1(vec2<u32>(29623u, 54178u)), vec2<u32>(4294967295u, 11247u), Struct_1(vec2<u32>(1u, 638u))), Struct_2(Struct_1(vec2<u32>(97014u, 4294967295u)), vec2<u32>(1u, 43557u), Struct_1(vec2<u32>(1u, 1u))), Struct_2(Struct_1(vec2<u32>(54098u, 4294967295u)), vec2<u32>(13676u, 0u), Struct_1(vec2<u32>(0u, 49143u))), Struct_2(Struct_1(vec2<u32>(35474u, 71634u)), vec2<u32>(33158u, 14735u), Struct_1(vec2<u32>(1699u, 6645u))), Struct_2(Struct_1(vec2<u32>(0u, 58974u)), vec2<u32>(58954u, 0u), Struct_1(vec2<u32>(34953u, 1u))), Struct_2(Struct_1(vec2<u32>(4294967295u, 10716u)), vec2<u32>(0u, 0u), Struct_1(vec2<u32>(85115u, 48218u))), Struct_2(Struct_1(vec2<u32>(37798u, 1u)), vec2<u32>(0u, 1u), Struct_1(vec2<u32>(1u, 4294967295u))));

var<private> global2: array<bool, 21> = array<bool, 21>(false, true, true, false, false, false, true, false, false, false, true, true, true, true, false, true, false, true, true, false, false);

var<private> global3: vec4<i32> = vec4<i32>(0i, 0i, -36395i, -49232i);

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3() -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(-229f)) + _wgslsmith_f_op_f32(-482f * -794f)), _wgslsmith_f_op_f32(-339f - -116f)) + _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1531f), -1000f))));
    global2 = array<bool, 21>();
    global1 = array<Struct_2, 26>();
    var var_1 = ~(~select(0u, ~firstTrailingBit(u_input.a), any(global0.yx)));
    let var_2 = Struct_1(~vec2<u32>(1u >> (1u % 32u), u_input.a));
    return vec3<bool>(!all(global0.yx), any(vec3<bool>(true, true, global0.x)), (select(global2[_wgslsmith_index_u32(var_2.a.x, 21u)] | global0.x, any(vec4<bool>(global0.x, true, global0.x, false)), !global0.x) & any(vec4<bool>(global0.x, true, global0.x, global0.x))) || true);
}

fn func_2(arg_0: i32, arg_1: vec4<u32>, arg_2: bool) -> u32 {
    global1 = array<Struct_2, 26>();
    let var_0 = !(!global0.x);
    global0 = !func_3();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-169f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-543f, -725f))))) - _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -699f))));
    var var_2 = _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_div_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1027f, var_1))) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(-454f, 729f)))))));
    return firstLeadingBit(~(u_input.a | arg_1.x));
}

fn func_1(arg_0: vec3<bool>, arg_1: vec2<i32>, arg_2: bool, arg_3: bool) -> Struct_1 {
    global2 = array<bool, 21>();
    var var_0 = !arg_0.xx;
    var var_1 = any(!select(!(!arg_0.yx), arg_0.xy, arg_3));
    var_1 = true;
    var var_2 = u_input.a;
    return Struct_1(vec2<u32>(func_2(u_input.d.x, vec4<u32>(min(u_input.a, u_input.a), ~0u, _wgslsmith_clamp_u32(u_input.a, 20307u, u_input.a), _wgslsmith_div_u32(u_input.a, 0u)), true), ~u_input.a));
}

fn func_4(arg_0: i32, arg_1: f32, arg_2: Struct_2, arg_3: Struct_1) -> Struct_4 {
    global3 = u_input.d & vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.b, max(-39985i, global3.x), _wgslsmith_div_i32(arg_0, u_input.b), firstLeadingBit(-1i)), ~u_input.d), min(-1i, global3.x << (arg_3.a.x % 32u)) >> (arg_2.c.a.x % 32u), -u_input.b, -28739i);
    let var_0 = Struct_3(firstTrailingBit(vec4<u32>(u_input.a | u_input.a, countOneBits(arg_3.a.x), _wgslsmith_mult_u32(u_input.a, arg_3.a.x), reverseBits(66933u)) | (_wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_2.c.a.x, u_input.a, u_input.a), vec4<u32>(4294967295u, arg_2.a.a.x, arg_2.c.a.x, 45466u)) >> (vec4<u32>(u_input.a, 16298u, arg_3.a.x, 0u) % vec4<u32>(32u)))), ~vec3<i32>(_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(global3.yzy, u_input.d.zzy), 11671i), _wgslsmith_sub_i32(global3.x, global3.x), firstLeadingBit(_wgslsmith_clamp_i32(u_input.c.x, u_input.d.x, -1i))), arg_1, 51330u & arg_3.a.x);
    let var_1 = -2147483647i;
    let var_2 = var_0;
    global0 = !(!(!select(select(vec3<bool>(true, global2[_wgslsmith_index_u32(arg_2.a.a.x, 21u)], true), vec3<bool>(true, global2[_wgslsmith_index_u32(1u, 21u)], true), global2[_wgslsmith_index_u32(var_0.d, 21u)]), !vec3<bool>(global0.x, global0.x, global0.x), global3.x <= 40651i)));
    return Struct_4(firstTrailingBit(arg_3.a.x), _wgslsmith_clamp_vec2_u32(_wgslsmith_mult_vec2_u32(var_2.a.yw, vec2<u32>(1u, 0u)) & _wgslsmith_clamp_vec2_u32(~vec2<u32>(u_input.a, 0u), vec2<u32>(4294967295u, 4294967295u), ~vec2<u32>(var_0.d, 0u)), ~vec2<u32>(66815u | arg_2.a.a.x, arg_3.a.x), vec2<u32>(1u, 6650u)), vec4<u32>(_wgslsmith_mult_u32(var_2.a.x, 0u), _wgslsmith_div_u32(11371u, ~(4294967295u >> (arg_3.a.x % 32u))), 0u, abs(0u)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(_wgslsmith_div_i32(-_wgslsmith_div_i32(-2147483647i, global3.x), select(1i, global3.x >> (2081u % 32u), select(global0.x, true, global2[_wgslsmith_index_u32(4401u, 21u)]))) | max(~(~u_input.b), abs(_wgslsmith_mult_i32(global3.x, -50986i))), 468f, Struct_2(func_1(vec3<bool>(true, true, true), ~(~global3.ww), global2[_wgslsmith_index_u32(u_input.a, 21u)], global0.x), _wgslsmith_sub_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(u_input.a, 1u), firstLeadingBit(vec2<u32>(44179u, 38386u))), vec2<u32>(~4294967295u, 46595u)), func_1(vec3<bool>(!global2[_wgslsmith_index_u32(u_input.a, 21u)], true, any(global0.xz)), -(vec2<i32>(global3.x, u_input.b) | u_input.d.wy), global0.x, true)), Struct_1(vec2<u32>(u_input.a, reverseBits(u_input.a & 13360u))));
    var var_1 = func_4(-(~(~_wgslsmith_dot_vec4_i32(vec4<i32>(40948i, 4785i, u_input.d.x, global3.x), u_input.d))), -399f, Struct_2(Struct_1(~var_0.b), var_0.c.yx, func_1(select(!vec3<bool>(global0.x, true, false), vec3<bool>(global0.x, global2[_wgslsmith_index_u32(u_input.a, 21u)], global0.x), vec3<bool>(true, true, global0.x)), ~(~vec2<i32>(global3.x, global3.x)), global0.x || global0.x, !global2[_wgslsmith_index_u32(~51041u, 21u)])), func_1(!(!vec3<bool>(global2[_wgslsmith_index_u32(var_0.b.x, 21u)], global2[_wgslsmith_index_u32(var_0.b.x, 21u)], global0.x)), firstLeadingBit(u_input.d.xx), global0.x, any(vec4<bool>(all(global0.xz), u_input.a <= u_input.a, global0.x && global0.x, global0.x))));
    var var_2 = Struct_2(func_1(vec3<bool>(true, !global2[_wgslsmith_index_u32(var_1.b.x, 21u)] & global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(u_input.a, 1u), 21u)], global2[_wgslsmith_index_u32(22597u, 21u)]), vec2<i32>(global3.x, _wgslsmith_sub_i32(min(u_input.b, 34422i), _wgslsmith_mod_i32(1i, global3.x))), true || !any(vec4<bool>(false, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(var_1.a, 21u)], global2[_wgslsmith_index_u32(var_0.b.x, 21u)])), !(!global0.x)), vec2<u32>(_wgslsmith_add_u32(var_0.b.x ^ 35218u, 14164u) & 4294967295u, var_0.b.x), Struct_1(func_4(u_input.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -621f))), Struct_2(func_1(vec3<bool>(global2[_wgslsmith_index_u32(20473u, 21u)], true, global2[_wgslsmith_index_u32(58590u, 21u)]), u_input.d.wy, false, false), ~var_0.c.yw, func_1(vec3<bool>(global0.x, global0.x, false), vec2<i32>(u_input.b, global3.x), global2[_wgslsmith_index_u32(var_0.b.x, 21u)], global0.x)), Struct_1(_wgslsmith_sub_vec2_u32(vec2<u32>(70837u, var_0.c.x), var_1.b))).b));
    var_0 = Struct_4(_wgslsmith_mod_u32(27785u, ~u_input.a), func_1(!(!(!vec3<bool>(global2[_wgslsmith_index_u32(0u, 21u)], global0.x, false))), vec2<i32>(~u_input.d.x, _wgslsmith_dot_vec2_i32(global3.zz, global3.wz) << (var_2.b.x % 32u)), func_3().x, all(select(vec4<bool>(global0.x, false, global2[_wgslsmith_index_u32(1u, 21u)], global2[_wgslsmith_index_u32(1u, 21u)]), !vec4<bool>(true, true, global2[_wgslsmith_index_u32(var_2.b.x, 21u)], global2[_wgslsmith_index_u32(u_input.a, 21u)]), select(vec4<bool>(global0.x, global0.x, global0.x, true), vec4<bool>(global0.x, true, true, global0.x), global2[_wgslsmith_index_u32(u_input.a, 21u)])))).a, vec4<u32>(~firstTrailingBit(var_2.b.x), 4294967295u, 1u, ~func_2(~u_input.d.x, _wgslsmith_mult_vec4_u32(var_0.c, vec4<u32>(var_1.b.x, var_1.c.x, 47538u, var_1.b.x)), any(vec3<bool>(false, true, true)))));
    let var_3 = select(select(vec2<bool>(true, true), vec2<bool>(true, !(!global0.x)), any(vec4<bool>(global2[_wgslsmith_index_u32(max(var_0.b.x, 25772u), 21u)], !global0.x, any(vec3<bool>(false, global0.x, false)), all(vec4<bool>(global2[_wgslsmith_index_u32(var_0.c.x, 21u)], global0.x, global0.x, global2[_wgslsmith_index_u32(0u, 21u)]))))), vec2<bool>(!(!global0.x), any(vec4<bool>(!global2[_wgslsmith_index_u32(var_2.b.x, 21u)], global2[_wgslsmith_index_u32(118837u, 21u)] && global2[_wgslsmith_index_u32(31433u, 21u)], any(vec4<bool>(global0.x, global0.x, false, true)), true))), any(vec4<bool>(true & global0.x, true, -2147483647i <= _wgslsmith_sub_i32(u_input.d.x, 19531i), false)));
    var var_4 = !select(vec4<bool>(func_3().x || !global0.x, !any(vec4<bool>(false, global0.x, true, global2[_wgslsmith_index_u32(var_1.b.x, 21u)])), !select(true, var_3.x, true), global2[_wgslsmith_index_u32(countOneBits(abs(var_1.a)), 21u)]), vec4<bool>(all(select(vec3<bool>(true, true, false), vec3<bool>(global0.x, global0.x, global0.x), vec3<bool>(true, false, false))), !global2[_wgslsmith_index_u32(var_2.a.a.x, 21u)], !all(vec3<bool>(global0.x, false, var_3.x)), !func_3().x), select(!(!vec4<bool>(true, global0.x, global2[_wgslsmith_index_u32(u_input.a, 21u)], false)), !select(vec4<bool>(global2[_wgslsmith_index_u32(var_2.b.x, 21u)], false, false, false), vec4<bool>(false, false, true, global2[_wgslsmith_index_u32(var_0.b.x, 21u)]), false), var_3.x));
    let var_5 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-109f)) - _wgslsmith_f_op_f32(616f * _wgslsmith_f_op_f32(sign(-367f))));
    let x = u_input.a;
    s_output = StorageBuffer(firstTrailingBit(~u_input.d.x), 1i, ~abs(select(vec2<u32>(var_0.c.x, 15394u), vec2<u32>(0u, var_2.c.a.x), var_3.x)) << (var_2.b % vec2<u32>(32u)), func_1(!(!var_4.zxz), u_input.d.wy, any(vec4<bool>(global0.x, global2[_wgslsmith_index_u32(1u, 21u)], var_4.x, true)) || ((var_0.a << (var_2.a.a.x % 32u)) != var_0.a), !((var_1.a << (1u % 32u)) != _wgslsmith_div_u32(var_0.b.x, 8553u))).a.x);
}

