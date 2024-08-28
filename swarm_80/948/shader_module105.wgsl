struct Struct_1 {
    a: vec2<f32>,
}

struct Struct_2 {
    a: i32,
    b: vec3<i32>,
    c: bool,
    d: vec3<u32>,
    e: vec4<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: u32,
    c: vec4<i32>,
    d: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
    d: vec4<u32>,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 28> = array<Struct_3, 28>(Struct_3(vec2<i32>(-28892i, 2518i), Struct_1(vec2<f32>(362f, 909f))), Struct_3(vec2<i32>(2147483647i, 1348i), Struct_1(vec2<f32>(-1205f, 834f))), Struct_3(vec2<i32>(0i, 27321i), Struct_1(vec2<f32>(-1740f, 810f))), Struct_3(vec2<i32>(-68610i, 1i), Struct_1(vec2<f32>(580f, -1187f))), Struct_3(vec2<i32>(1i, 0i), Struct_1(vec2<f32>(-700f, -1598f))), Struct_3(vec2<i32>(i32(-2147483648), -1i), Struct_1(vec2<f32>(-2275f, -2092f))), Struct_3(vec2<i32>(-71051i, -9409i), Struct_1(vec2<f32>(-257f, 341f))), Struct_3(vec2<i32>(1i, -55439i), Struct_1(vec2<f32>(-2165f, -600f))), Struct_3(vec2<i32>(5955i, 1i), Struct_1(vec2<f32>(1024f, 708f))), Struct_3(vec2<i32>(1i, -42830i), Struct_1(vec2<f32>(263f, -1000f))), Struct_3(vec2<i32>(-1i, -29168i), Struct_1(vec2<f32>(-812f, -1104f))), Struct_3(vec2<i32>(-4582i, -14314i), Struct_1(vec2<f32>(-1216f, -203f))), Struct_3(vec2<i32>(0i, -1i), Struct_1(vec2<f32>(798f, 1000f))), Struct_3(vec2<i32>(2147483647i, 68633i), Struct_1(vec2<f32>(269f, 645f))), Struct_3(vec2<i32>(22094i, 32067i), Struct_1(vec2<f32>(935f, -318f))), Struct_3(vec2<i32>(465i, -12076i), Struct_1(vec2<f32>(1189f, -1000f))), Struct_3(vec2<i32>(19769i, -3203i), Struct_1(vec2<f32>(232f, 609f))), Struct_3(vec2<i32>(i32(-2147483648), -1i), Struct_1(vec2<f32>(1000f, 745f))), Struct_3(vec2<i32>(i32(-2147483648), -38935i), Struct_1(vec2<f32>(324f, -1583f))), Struct_3(vec2<i32>(2147483647i, -33848i), Struct_1(vec2<f32>(-1000f, 1977f))), Struct_3(vec2<i32>(-48544i, -1i), Struct_1(vec2<f32>(669f, -153f))), Struct_3(vec2<i32>(-1i, 1i), Struct_1(vec2<f32>(354f, -537f))), Struct_3(vec2<i32>(-13575i, 0i), Struct_1(vec2<f32>(-479f, 503f))), Struct_3(vec2<i32>(-1i, 19662i), Struct_1(vec2<f32>(-333f, 644f))), Struct_3(vec2<i32>(10278i, -1i), Struct_1(vec2<f32>(637f, -1000f))), Struct_3(vec2<i32>(-807i, 15773i), Struct_1(vec2<f32>(-1722f, -4129f))), Struct_3(vec2<i32>(49929i, 42156i), Struct_1(vec2<f32>(328f, -1676f))), Struct_3(vec2<i32>(1i, 13792i), Struct_1(vec2<f32>(-733f, -210f))));

var<private> global1: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(vec2<i32>(1i, -41677i), Struct_1(vec2<f32>(-2701f, -168f))), Struct_3(vec2<i32>(i32(-2147483648), -35478i), Struct_1(vec2<f32>(424f, 1094f))), Struct_3(vec2<i32>(-1i, 0i), Struct_1(vec2<f32>(-500f, 965f))), Struct_3(vec2<i32>(1i, i32(-2147483648)), Struct_1(vec2<f32>(426f, 621f))), Struct_3(vec2<i32>(i32(-2147483648), -38964i), Struct_1(vec2<f32>(-856f, 563f))), Struct_3(vec2<i32>(-8649i, 1i), Struct_1(vec2<f32>(-1000f, -231f))), Struct_3(vec2<i32>(i32(-2147483648), -5863i), Struct_1(vec2<f32>(-764f, 1908f))), Struct_3(vec2<i32>(i32(-2147483648), i32(-2147483648)), Struct_1(vec2<f32>(-507f, 272f))), Struct_3(vec2<i32>(1i, 7884i), Struct_1(vec2<f32>(1299f, 623f))), Struct_3(vec2<i32>(2147483647i, -16328i), Struct_1(vec2<f32>(-758f, 481f))), Struct_3(vec2<i32>(-3916i, -1i), Struct_1(vec2<f32>(1000f, 522f))), Struct_3(vec2<i32>(-2609i, 0i), Struct_1(vec2<f32>(-513f, 1336f))), Struct_3(vec2<i32>(-23636i, 0i), Struct_1(vec2<f32>(-1422f, 378f))), Struct_3(vec2<i32>(29334i, -71522i), Struct_1(vec2<f32>(-824f, 713f))), Struct_3(vec2<i32>(2147483647i, i32(-2147483648)), Struct_1(vec2<f32>(-1808f, -1976f))), Struct_3(vec2<i32>(57675i, 0i), Struct_1(vec2<f32>(-815f, 958f))), Struct_3(vec2<i32>(2147483647i, -1i), Struct_1(vec2<f32>(872f, 2406f))), Struct_3(vec2<i32>(31146i, 0i), Struct_1(vec2<f32>(1020f, 1780f))));

var<private> global2: Struct_3 = Struct_3(vec2<i32>(35374i, 0i), Struct_1(vec2<f32>(-733f, -213f)));

var<private> global3: array<bool, 7> = array<bool, 7>(true, false, true, true, true, true, true);

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3() -> vec4<f32> {
    let var_0 = Struct_2(max(27883i, min(0i, global2.a.x)), u_input.c.wyz, ((true | all(vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], true))) & global3[_wgslsmith_index_u32(u_input.a.x, 7u)]) | !any(select(vec4<bool>(global3[_wgslsmith_index_u32(0u, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(7965u, 7u)], global3[_wgslsmith_index_u32(77283u, 7u)]), vec4<bool>(false, global3[_wgslsmith_index_u32(1u, 7u)], false, global3[_wgslsmith_index_u32(4294967295u, 7u)]), vec4<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)], false))), _wgslsmith_sub_vec3_u32(u_input.a.ywy, _wgslsmith_mult_vec3_u32(~vec3<u32>(u_input.d, u_input.d, 49629u), u_input.a.ywx) ^ vec3<u32>(u_input.a.x, ~u_input.a.x, min(4294967295u, 100084u))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-563f, _wgslsmith_f_op_f32(ceil(577f)), -282f, _wgslsmith_f_op_f32(exp2(global2.b.a.x)))));
    var var_1 = Struct_3(countOneBits(~abs(u_input.c.xz)), global2.b);
    let var_2 = var_1.b;
    global0 = array<Struct_3, 28>();
    var var_3 = Struct_2(min((_wgslsmith_mult_i32(var_0.b.x, var_1.a.x) ^ abs(var_1.a.x)) >> (var_0.d.x % 32u), -55531i), abs(firstTrailingBit(vec3<i32>(~var_0.b.x, _wgslsmith_sub_i32(24523i, 1i), -59933i))), !global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(~39389u, ~var_0.d.x) ^ _wgslsmith_add_u32(abs(4294967295u), var_0.d.x), 7u)], ~(~_wgslsmith_div_vec3_u32(var_0.d, vec3<u32>(87969u, 156817u, 0u))), var_0.e);
    return var_3.e;
}

fn func_2(arg_0: Struct_3, arg_1: i32, arg_2: Struct_1, arg_3: vec2<i32>) -> Struct_2 {
    let var_0 = Struct_3(global2.a, Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(vec2<f32>(global2.b.a.x, 307f) * global2.b.a))))));
    return Struct_2(-_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(u_input.c.xyx, u_input.c.xwz), ~(-1i)) & -2147483647i, u_input.c.ywz, all(vec2<bool>(all(vec4<bool>(false, global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(8751u, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)])), global3[_wgslsmith_index_u32(countOneBits(29689u), 7u)])) & (true && global3[_wgslsmith_index_u32(1u, 7u)]), u_input.a.wwy, _wgslsmith_f_op_vec4_f32(func_3()));
}

fn func_4(arg_0: Struct_2) -> Struct_1 {
    let var_0 = ~_wgslsmith_mult_vec3_u32(u_input.a.yyw & arg_0.d, u_input.a.wyw);
    global0 = array<Struct_3, 28>();
    let var_1 = Struct_2(_wgslsmith_clamp_i32(-48348i, _wgslsmith_add_i32(-1i, 4001i >> (0u % 32u)), max(min(41801i, -98i), ~global2.a.x)) ^ -(~(-35879i)), select(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0.a, 2147483647i, u_input.c.x), _wgslsmith_sub_vec3_i32(vec3<i32>(-2147483647i, -1i, -2147483647i), arg_0.b)) << (vec3<u32>(_wgslsmith_sub_u32(u_input.b, u_input.b), ~30952u, 71391u) % vec3<u32>(32u)), countOneBits(~(-u_input.c.yww)), true), global3[_wgslsmith_index_u32(max(max(91434u, _wgslsmith_sub_u32(u_input.d ^ u_input.a.x, arg_0.d.x)), 21464u), 7u)], var_0, _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(_wgslsmith_f_op_f32(ceil(-2545f)), global2.b.a.x, _wgslsmith_f_op_f32(floor(arg_0.e.x)), -722f))));
    global1 = array<Struct_3, 18>();
    let var_2 = arg_0.e.zyz;
    return global2.b;
}

fn func_1() -> i32 {
    global0 = array<Struct_3, 28>();
    var var_0 = func_4(func_2(Struct_3(_wgslsmith_sub_vec2_i32(global2.a, vec2<i32>(1i, -47060i)), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.b.a))), reverseBits(global2.a.x), global2.b, vec2<i32>(0i, 2147483647i)));
    let var_1 = 7457i;
    global2 = global0[_wgslsmith_index_u32(u_input.a.x, 28u)];
    let var_2 = select(select(!vec2<bool>(global3[_wgslsmith_index_u32(~u_input.b, 7u)], all(vec3<bool>(true, true, global3[_wgslsmith_index_u32(4294967295u, 7u)]))), select(select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 7u)], false), vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], true), vec2<bool>(global3[_wgslsmith_index_u32(24701u, 7u)], global3[_wgslsmith_index_u32(45782u, 7u)])), vec2<bool>(global3[_wgslsmith_index_u32(u_input.b ^ 0u, 7u)], false), global3[_wgslsmith_index_u32(0u | u_input.d, 7u)]), !select(select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 7u)]), vec2<bool>(global3[_wgslsmith_index_u32(4294967295u, 7u)], global3[_wgslsmith_index_u32(4294967295u, 7u)]), global3[_wgslsmith_index_u32(u_input.d, 7u)]), vec2<bool>(true, false), global3[_wgslsmith_index_u32(~u_input.d, 7u)])), select(select(!(!vec2<bool>(global3[_wgslsmith_index_u32(26822u, 7u)], true)), vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 7u)]), vec2<bool>(false, any(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)])))), select(select(!vec2<bool>(false, global3[_wgslsmith_index_u32(2524u, 7u)]), select(vec2<bool>(global3[_wgslsmith_index_u32(u_input.a.x, 7u)], true), vec2<bool>(false, global3[_wgslsmith_index_u32(0u, 7u)]), false), select(vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 7u)]), vec2<bool>(global3[_wgslsmith_index_u32(u_input.d, 7u)], false), vec2<bool>(false, global3[_wgslsmith_index_u32(46848u, 7u)]))), !(!vec2<bool>(global3[_wgslsmith_index_u32(u_input.b, 7u)], global3[_wgslsmith_index_u32(u_input.a.x, 7u)])), true), all(!(!vec2<bool>(true, global3[_wgslsmith_index_u32(u_input.b, 7u)])))), !(!global3[_wgslsmith_index_u32(~u_input.a.x, 7u)]) | global3[_wgslsmith_index_u32(32878u, 7u)]);
    return u_input.c.x;
}

fn func_5(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>, arg_3: i32) -> f32 {
    global2 = Struct_3((_wgslsmith_sub_vec2_i32(arg_2.yx, -global2.a) | _wgslsmith_add_vec2_i32(_wgslsmith_clamp_vec2_i32(arg_2.yy, arg_2.zz, vec2<i32>(u_input.c.x, global2.a.x)), global2.a)) | -(u_input.c.yx ^ ~vec2<i32>(global2.a.x, arg_2.x)), func_4(func_2(global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.b, firstTrailingBit(u_input.d)), 18u)], countOneBits(u_input.c.x), Struct_1(_wgslsmith_f_op_vec2_f32(-global2.b.a)), ~_wgslsmith_sub_vec2_i32(arg_2.xx, arg_2.yy))));
    global0 = array<Struct_3, 28>();
    global1 = array<Struct_3, 18>();
    var var_0 = Struct_3(_wgslsmith_div_vec2_i32(_wgslsmith_mult_vec2_i32(~vec2<i32>(u_input.c.x, global2.a.x), vec2<i32>(arg_3, 2147483647i)), -(~global2.a)) | select(vec2<i32>(-23668i, 1i), -u_input.c.xz, vec2<bool>(any(vec4<bool>(false, false, global3[_wgslsmith_index_u32(u_input.d, 7u)], global3[_wgslsmith_index_u32(u_input.b, 7u)])), any(vec3<bool>(true, global3[_wgslsmith_index_u32(u_input.d, 7u)], global3[_wgslsmith_index_u32(58986u, 7u)])))), Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-arg_1.a)))));
    global0 = array<Struct_3, 28>();
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_0.a.x))));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_3, 28>();
    let var_0 = _wgslsmith_f_op_f32(func_5(global2.b, Struct_1(_wgslsmith_f_op_vec2_f32(-global2.b.a)), vec3<i32>(func_1(), u_input.c.x, _wgslsmith_dot_vec4_i32(u_input.c | select(vec4<i32>(0i, -28498i, -60745i, -50390i), u_input.c, vec4<bool>(false, false, true, global3[_wgslsmith_index_u32(1u, 7u)])), vec4<i32>(-1i) * -u_input.c)), u_input.c.x));
    var var_1 = _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_0)))));
    global2 = global0[_wgslsmith_index_u32(countOneBits(reverseBits(~(select(u_input.a.x, 81072u, false) | u_input.b))), 28u)];
    var var_2 = Struct_2(u_input.c.x, _wgslsmith_mult_vec3_i32(func_2(global1[_wgslsmith_index_u32(abs(~u_input.b), 18u)], 29002i, func_4(Struct_2(u_input.c.x, vec3<i32>(20244i, 0i, -1i), false, vec3<u32>(4294967295u, u_input.d, 4294967295u), vec4<f32>(var_0, var_0, -695f, var_0))), func_2(Struct_3(u_input.c.wy, global2.b), min(-45895i, global2.a.x), global2.b, -u_input.c.xw).b.xy).b, vec3<i32>(_wgslsmith_sub_i32(abs(global2.a.x), firstLeadingBit(global2.a.x)), -24419i, 1i)), func_2(global0[_wgslsmith_index_u32(u_input.d, 28u)], _wgslsmith_mult_i32(global2.a.x, 20117i | global2.a.x) ^ (-u_input.c.x & -u_input.c.x), func_4(Struct_2(8111i, u_input.c.zxx, !global3[_wgslsmith_index_u32(u_input.d, 7u)], vec3<u32>(u_input.d, 1u, 46757u), _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, var_0, -1187f, 909f)))), _wgslsmith_mod_vec2_i32(global2.a, -u_input.c.yz)).c, vec3<u32>(~61769u, abs(1u), _wgslsmith_clamp_u32(u_input.d, abs(_wgslsmith_sub_u32(u_input.a.x, u_input.b)), u_input.d)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(318f, var_0, -909f, 1278f) * _wgslsmith_div_vec4_f32(vec4<f32>(-1800f, var_0, 462f, var_0), vec4<f32>(-684f, var_0, global2.b.a.x, -1452f))))));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, _wgslsmith_f_op_vec2_f32(min(_wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(min(-1401f, var_0)), -1369f), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-global2.b.a), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.a.x, var_2.e.x)))), _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(abs(-229f)), var_2.e.x) + global2.b.a))), ~select(~func_2(Struct_3(vec2<i32>(var_2.a, 41258i), Struct_1(vec2<f32>(global2.b.a.x, 1521f))), global2.a.x, global2.b, vec2<i32>(2147483647i, global2.a.x)).d.x, _wgslsmith_mult_u32(var_2.d.x, firstLeadingBit(var_2.d.x)), (18239u > u_input.b) | (global2.a.x != 2147483647i)), u_input.a & u_input.a, -1i);
}

