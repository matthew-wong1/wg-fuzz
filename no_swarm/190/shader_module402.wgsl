struct Struct_1 {
    a: u32,
    b: u32,
}

struct Struct_2 {
    a: f32,
    b: vec4<i32>,
    c: u32,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
    c: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: i32,
    c: u32,
    d: vec3<u32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 19>;

var<private> global1: array<Struct_3, 6> = array<Struct_3, 6>(Struct_3(Struct_1(1u, 0u), Struct_2(1090f, vec4<i32>(31890i, 2147483647i, -7683i, 79509i), 35840u, -2823f, Struct_1(20270u, 12214u)), Struct_1(51357u, 20038u)), Struct_3(Struct_1(4294967295u, 15587u), Struct_2(1012f, vec4<i32>(0i, -19520i, -12096i, 1i), 1u, -248f, Struct_1(46821u, 28u)), Struct_1(0u, 4294967295u)), Struct_3(Struct_1(0u, 104867u), Struct_2(106f, vec4<i32>(9701i, -30765i, 0i, i32(-2147483648)), 1u, 1068f, Struct_1(42716u, 1u)), Struct_1(4294967295u, 18308u)), Struct_3(Struct_1(57276u, 58052u), Struct_2(282f, vec4<i32>(1i, 0i, 0i, -44010i), 0u, 337f, Struct_1(1u, 1u)), Struct_1(1u, 4294967295u)), Struct_3(Struct_1(20381u, 34606u), Struct_2(272f, vec4<i32>(-45308i, i32(-2147483648), 1i, i32(-2147483648)), 16623u, -1000f, Struct_1(4294967295u, 90995u)), Struct_1(4294967295u, 74331u)), Struct_3(Struct_1(43116u, 1u), Struct_2(-574f, vec4<i32>(1i, 1i, 0i, 5695i), 0u, 588f, Struct_1(5566u, 5603u)), Struct_1(30113u, 532u)));

var<private> global2: array<u32, 3> = array<u32, 3>(0u, 4294967295u, 4294967295u);

var<private> global3: vec3<bool> = vec3<bool>(false, true, false);

var<private> global4: Struct_1;

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_2() -> Struct_1 {
    let var_0 = !global3.x || !(any(vec4<bool>(global3.x, global3.x, global3.x, true)) || !global3.x);
    var var_1 = global0[_wgslsmith_index_u32(global4.a, 19u)];
    let var_2 = ~((vec3<i32>(59984i, -57422i, 1i) & var_1.b.wxw) >> (vec3<u32>(_wgslsmith_mult_u32(global2[_wgslsmith_index_u32(84434u, 3u)] << (4294967295u % 32u), u_input.b >> (2401u % 32u)), firstTrailingBit(~u_input.b), ~1u) % vec3<u32>(32u)));
    global4 = var_1.e;
    var var_3 = 322u ^ ~_wgslsmith_mult_u32(global4.a, 38168u);
    return var_1.e;
}

fn func_1() -> vec2<u32> {
    var var_0 = _wgslsmith_div_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(abs(vec3<u32>(4294967295u, 0u, 4294967295u)), vec3<u32>(1u, 1u, 1u)), _wgslsmith_sub_u32(0u >> (global4.a % 32u), reverseBits(u_input.c))), _wgslsmith_mod_u32(select(102551u, global2[_wgslsmith_index_u32(global4.b, 3u)], global3.x) << ((4294967295u ^ u_input.c) % 32u), (u_input.c ^ 56608u) << (_wgslsmith_dot_vec2_u32(vec2<u32>(global4.a, global4.a), vec2<u32>(115767u, global2[_wgslsmith_index_u32(global2[_wgslsmith_index_u32(24107u, 3u)], 3u)])) % 32u))) | global4.b;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(695f - _wgslsmith_f_op_f32(f32(-1f) * -854f)));
    var var_2 = vec3<bool>(true, true, true);
    var var_3 = u_input.c;
    let var_4 = Struct_3(func_2(), Struct_2(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(trunc(1404f)), -196f)))), max(vec4<i32>(-2147483647i, ~0i, -22189i, 34480i >> (global2[_wgslsmith_index_u32(4294967295u, 3u)] % 32u)), vec4<i32>(~(-12663i), i32(-1i) * -26234i, _wgslsmith_sub_i32(u_input.d, u_input.d), 0i)), 0u, 590f, func_2()), Struct_1(40085u, u_input.b >> (global4.a % 32u)));
    return countOneBits(vec2<u32>(global4.a, ~_wgslsmith_dot_vec3_u32(vec3<u32>(0u, global4.b, 79360u), vec3<u32>(global2[_wgslsmith_index_u32(1u, 3u)], 0u, global2[_wgslsmith_index_u32(var_4.c.a, 3u)]) & vec3<u32>(global4.a, 1u, global2[_wgslsmith_index_u32(55753u, 3u)]))));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: bool) -> i32 {
    var var_0 = Struct_3(Struct_1(0u, _wgslsmith_dot_vec2_u32(~(~vec2<u32>(0u, 101200u)), ~(vec2<u32>(0u, 7975u) | vec2<u32>(u_input.a, 6064u)))), Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2947f * 1000f)) - _wgslsmith_f_op_f32(floor(618f))), _wgslsmith_mult_vec4_i32(~(vec4<i32>(arg_1, u_input.d, u_input.d, 17896i) | vec4<i32>(-1i, u_input.d, 35796i, u_input.d)), vec4<i32>(u_input.d, u_input.d, _wgslsmith_mod_i32(10539i, u_input.d), ~(-5829i))), firstLeadingBit(4294967295u), -1172f, arg_0), arg_0);
    global4 = func_2();
    global2 = array<u32, 3>();
    var var_1 = var_0.b;
    var var_2 = Struct_3(func_2(), global0[_wgslsmith_index_u32(4294967295u, 19u)], var_0.b.e);
    return -1i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(select(func_1(), reverseBits(reverseBits(firstLeadingBit(vec2<u32>(global2[_wgslsmith_index_u32(0u, 3u)], 4294967295u)))), !global3.x), ~(~(vec2<u32>(u_input.a, u_input.c) & min(vec2<u32>(3016u, global4.b), vec2<u32>(u_input.b, global4.a))))), 6u)];
    global2 = array<u32, 3>();
    global1 = array<Struct_3, 6>();
    var var_1 = global4.b;
    var var_2 = Struct_3(func_2(), Struct_2(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(353f - -600f))), vec4<i32>(var_0.b.b.x, var_0.b.b.x, u_input.d, func_3(Struct_1(4294967295u, var_0.a.a), var_0.b.b.x, false) | ~(-1i)), u_input.b, _wgslsmith_f_op_f32(abs(var_0.b.d)), var_0.a), var_0.c);
    global0 = array<Struct_2, 19>();
    var var_3 = true;
    global0 = array<Struct_2, 19>();
    let x = u_input.a;
    s_output = StorageBuffer(~vec4<u32>(_wgslsmith_add_u32(firstLeadingBit(var_2.a.a), 4266u), ~30929u, ~var_2.b.e.a, global2[_wgslsmith_index_u32(5758u, 3u)]), _wgslsmith_dot_vec3_i32(~var_0.b.b.xzx, _wgslsmith_clamp_vec3_i32(-_wgslsmith_add_vec3_i32(var_0.b.b.zww, var_0.b.b.yzw), max(firstLeadingBit(var_0.b.b.wwy), max(vec3<i32>(var_0.b.b.x, u_input.d, 1i), vec3<i32>(-28128i, 2147483647i, var_0.b.b.x))), var_2.b.b.yxy)), 16134u, countOneBits(vec3<u32>(1u, 1u, global4.b) ^ vec3<u32>(_wgslsmith_dot_vec2_u32(vec2<u32>(51209u, 31677u), vec2<u32>(global4.b, var_2.a.b)), u_input.b, min(var_2.a.b, 29538u))), vec2<i32>(reverseBits(u_input.d), abs(u_input.d >> (4294967295u % 32u))) ^ select(~var_2.b.b.yz, _wgslsmith_div_vec2_i32(min(vec2<i32>(-30400i, -22140i), var_0.b.b.ww), vec2<i32>(2147483647i, 1i)), any(vec4<bool>(global3.x, global3.x, true, global3.x))));
}

