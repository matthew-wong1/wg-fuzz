struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: u32,
    d: bool,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: Struct_1,
    c: bool,
    d: vec4<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec3<u32>,
    c: vec2<i32>,
    d: Struct_2,
}

struct Struct_4 {
    a: i32,
    b: i32,
}

struct Struct_5 {
    a: Struct_1,
    b: bool,
}

struct UniformBuffer {
    a: i32,
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

var<private> global0: array<u32, 18>;

var<private> global1: array<Struct_5, 16> = array<Struct_5, 16>(Struct_5(Struct_1(vec2<u32>(1683u, 0u), vec2<f32>(1184f, -1270f), 4294967295u, true, vec2<u32>(97130u, 35283u)), true), Struct_5(Struct_1(vec2<u32>(4294967295u, 24324u), vec2<f32>(271f, 558f), 29140u, false, vec2<u32>(101091u, 4294967295u)), true), Struct_5(Struct_1(vec2<u32>(9240u, 1u), vec2<f32>(-1000f, -765f), 1u, true, vec2<u32>(4294967295u, 0u)), true), Struct_5(Struct_1(vec2<u32>(4294967295u, 112u), vec2<f32>(1768f, 681f), 29905u, false, vec2<u32>(1u, 1u)), true), Struct_5(Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(410f, -773f), 50737u, true, vec2<u32>(14787u, 893u)), false), Struct_5(Struct_1(vec2<u32>(5517u, 4294967295u), vec2<f32>(117f, 774f), 4274u, false, vec2<u32>(11003u, 43431u)), false), Struct_5(Struct_1(vec2<u32>(28264u, 156u), vec2<f32>(-355f, -1179f), 1u, true, vec2<u32>(20110u, 4294967295u)), true), Struct_5(Struct_1(vec2<u32>(4294967295u, 1u), vec2<f32>(-787f, -139f), 18167u, true, vec2<u32>(4294967295u, 1u)), true), Struct_5(Struct_1(vec2<u32>(0u, 0u), vec2<f32>(-640f, -728f), 34168u, false, vec2<u32>(40858u, 82962u)), true), Struct_5(Struct_1(vec2<u32>(11454u, 61376u), vec2<f32>(-1417f, -197f), 1u, true, vec2<u32>(4294967295u, 1u)), false), Struct_5(Struct_1(vec2<u32>(0u, 0u), vec2<f32>(894f, -1085f), 40231u, true, vec2<u32>(0u, 74504u)), false), Struct_5(Struct_1(vec2<u32>(0u, 53680u), vec2<f32>(664f, -502f), 21247u, true, vec2<u32>(11208u, 1u)), true), Struct_5(Struct_1(vec2<u32>(55583u, 0u), vec2<f32>(-484f, 1883f), 0u, true, vec2<u32>(37379u, 132088u)), false), Struct_5(Struct_1(vec2<u32>(4294967295u, 67633u), vec2<f32>(527f, 137f), 1u, true, vec2<u32>(38327u, 0u)), true), Struct_5(Struct_1(vec2<u32>(4294967295u, 40843u), vec2<f32>(-1759f, 732f), 4294967295u, true, vec2<u32>(5907u, 43444u)), true), Struct_5(Struct_1(vec2<u32>(61966u, 5550u), vec2<f32>(-531f, 740f), 278u, true, vec2<u32>(22986u, 33629u)), false));

var<private> global2: array<Struct_5, 20> = array<Struct_5, 20>(Struct_5(Struct_1(vec2<u32>(1u, 0u), vec2<f32>(197f, -381f), 0u, false, vec2<u32>(78423u, 35228u)), false), Struct_5(Struct_1(vec2<u32>(17925u, 1u), vec2<f32>(-2123f, 309f), 4294967295u, true, vec2<u32>(1u, 4294967295u)), false), Struct_5(Struct_1(vec2<u32>(27185u, 38397u), vec2<f32>(1025f, -499f), 17526u, true, vec2<u32>(0u, 132u)), true), Struct_5(Struct_1(vec2<u32>(31587u, 0u), vec2<f32>(1000f, -1396f), 33425u, true, vec2<u32>(21016u, 0u)), true), Struct_5(Struct_1(vec2<u32>(0u, 9932u), vec2<f32>(1000f, 816f), 4294967295u, false, vec2<u32>(0u, 1u)), false), Struct_5(Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(-241f, 1201f), 0u, true, vec2<u32>(1u, 140869u)), false), Struct_5(Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(1806f, -1145f), 21616u, true, vec2<u32>(0u, 66015u)), true), Struct_5(Struct_1(vec2<u32>(47506u, 0u), vec2<f32>(1057f, 648f), 0u, false, vec2<u32>(57327u, 1u)), true), Struct_5(Struct_1(vec2<u32>(1u, 0u), vec2<f32>(1352f, 386f), 4294967295u, false, vec2<u32>(15988u, 30599u)), true), Struct_5(Struct_1(vec2<u32>(35055u, 0u), vec2<f32>(-1374f, 2083f), 4294967295u, false, vec2<u32>(4294967295u, 60531u)), true), Struct_5(Struct_1(vec2<u32>(70266u, 9550u), vec2<f32>(2007f, -966f), 1u, true, vec2<u32>(4294967295u, 0u)), false), Struct_5(Struct_1(vec2<u32>(4294967295u, 0u), vec2<f32>(2112f, 1000f), 46731u, false, vec2<u32>(58956u, 0u)), false), Struct_5(Struct_1(vec2<u32>(0u, 76252u), vec2<f32>(-1000f, 2045f), 15772u, true, vec2<u32>(0u, 0u)), false), Struct_5(Struct_1(vec2<u32>(6165u, 1u), vec2<f32>(-1000f, -1000f), 5297u, false, vec2<u32>(110234u, 4294967295u)), true), Struct_5(Struct_1(vec2<u32>(1u, 12782u), vec2<f32>(1000f, -209f), 46221u, true, vec2<u32>(4294967295u, 0u)), true), Struct_5(Struct_1(vec2<u32>(14734u, 56555u), vec2<f32>(1060f, 182f), 34827u, false, vec2<u32>(1u, 13130u)), false), Struct_5(Struct_1(vec2<u32>(1u, 8515u), vec2<f32>(1957f, 126f), 23287u, false, vec2<u32>(0u, 4294967295u)), true), Struct_5(Struct_1(vec2<u32>(1u, 22602u), vec2<f32>(-1000f, 1000f), 10683u, false, vec2<u32>(0u, 0u)), true), Struct_5(Struct_1(vec2<u32>(0u, 4294967295u), vec2<f32>(-344f, 1485f), 4294967295u, false, vec2<u32>(71311u, 20712u)), true), Struct_5(Struct_1(vec2<u32>(23686u, 5858u), vec2<f32>(215f, -2252f), 74573u, false, vec2<u32>(0u, 82804u)), false));

var<private> global3: f32;

var<private> global4: Struct_3 = Struct_3(56577u, vec3<u32>(33421u, 198u, 0u), vec2<i32>(0i, -1i), Struct_2(vec2<f32>(952f, -274f), Struct_1(vec2<u32>(1u, 20748u), vec2<f32>(-118f, 407f), 1u, true, vec2<u32>(1u, 12265u)), true, vec4<f32>(140f, -508f, -826f, 627f)));

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3() -> i32 {
    global1 = array<Struct_5, 16>();
    global4 = Struct_3(~(~(~(~global0[_wgslsmith_index_u32(global4.a, 18u)]))), countOneBits(abs(vec3<u32>(17829u, 1u, 4294967295u) & select(global4.b, global4.b, vec3<bool>(false, true, global4.d.b.d)))), firstTrailingBit(global4.c) << (~_wgslsmith_mod_vec2_u32(~global4.b.yz, ~vec2<u32>(global0[_wgslsmith_index_u32(6031u, 18u)], 65252u)) % vec2<u32>(32u)), global4.d);
    global4 = Struct_3(5971u, _wgslsmith_mult_vec3_u32(~vec3<u32>(14534u, 1u, 116377u) >> ((_wgslsmith_add_vec3_u32(global4.b, vec3<u32>(global4.b.x, global0[_wgslsmith_index_u32(global4.b.x, 18u)], 4294967295u)) & _wgslsmith_add_vec3_u32(global4.b, global4.b)) % vec3<u32>(32u)), ~(_wgslsmith_clamp_vec3_u32(vec3<u32>(global4.d.b.e.x, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(27660u, 18u)], 18u)], 18u)], 9309u), global4.b, global4.b) ^ global4.b)), global4.c, global4.d);
    global2 = array<Struct_5, 20>();
    var var_0 = global0[_wgslsmith_index_u32(12508u, 18u)];
    return global4.c.x;
}

fn func_2(arg_0: Struct_5) -> Struct_4 {
    var var_0 = _wgslsmith_mult_i32(global4.c.x, -u_input.a);
    let var_1 = vec4<i32>(u_input.a, _wgslsmith_div_i32(max(~(~global4.c.x), firstTrailingBit(global4.c.x)), ~(-2147483647i)), _wgslsmith_dot_vec3_i32(max(_wgslsmith_add_vec3_i32(vec3<i32>(-2147483647i, 2147483647i, global4.c.x) >> (global4.b % vec3<u32>(32u)), vec3<i32>(global4.c.x, u_input.a, global4.c.x)), vec3<i32>(global4.c.x | 22511i, 1i, -16534i)), vec3<i32>(countOneBits(_wgslsmith_mod_i32(global4.c.x, 2147483647i)), -1i, firstTrailingBit(21818i))), -_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.a, 1i, -18199i) & vec3<i32>(92436i, global4.c.x, 2147483647i)), firstLeadingBit(~vec3<i32>(29437i, u_input.a, global4.c.x))));
    global0 = array<u32, 18>();
    var var_2 = _wgslsmith_mod_i32(-func_3(), i32(-1i) * -u_input.a) >= -32641i;
    let var_3 = countOneBits(~abs(~(~global4.b)));
    return Struct_4(17342i, 2147483647i);
}

fn func_4(arg_0: u32, arg_1: Struct_4) -> i32 {
    var var_0 = Struct_4(-func_2(global1[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(~vec3<u32>(0u, 1u, 0u), vec3<u32>(7493u, arg_0, 36290u)), 16u)]).b, global4.c.x);
    return arg_1.a;
}

fn func_1(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = global4.d.b;
    var_0 = global4.d.b;
    let var_1 = Struct_1(reverseBits(~select(_wgslsmith_div_vec2_u32(vec2<u32>(global0[_wgslsmith_index_u32(var_0.c, 18u)], 15226u), global4.b.xz), vec2<u32>(var_0.c, 16715u), select(vec2<bool>(false, true), vec2<bool>(true, false), global4.d.b.d))), var_0.b, var_0.e.x, var_0.d, global4.b.xx);
    let var_2 = Struct_4(-19466i, i32(-1i) * -func_4(104764u, func_2(Struct_5(global4.d.b, var_0.d))));
    return vec2<bool>(global4.d.c, false);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = select(vec2<bool>(false, !all(vec2<bool>(true, false))), select(select(select(!vec2<bool>(global4.d.c, true), !vec2<bool>(global4.d.b.d, false), all(vec4<bool>(global4.d.c, false, global4.d.c, global4.d.c))), !select(vec2<bool>(global4.d.b.d, true), vec2<bool>(true, global4.d.b.d), vec2<bool>(true, global4.d.c)), !(!vec2<bool>(global4.d.b.d, false))), select(select(vec2<bool>(false, global4.d.c), vec2<bool>(true, true), false & global4.d.b.d), vec2<bool>(global4.d.c, !global4.d.b.d), vec2<bool>(global4.d.c, global4.d.c)), select(vec2<bool>(true, true), !vec2<bool>(global4.d.c, false), global4.d.b.d)), !(!(!func_1(Struct_4(global4.c.x, global4.c.x)))));
    global0 = array<u32, 18>();
    global2 = array<Struct_5, 20>();
    let var_1 = Struct_3(4294967295u, ~vec3<u32>(global4.d.b.c, ~62558u, ~global0[_wgslsmith_index_u32(6161u, 18u)]), vec2<i32>(-1i) * -(select(global4.c, global4.c, true) >> ((vec2<u32>(4294967295u, 55046u) ^ vec2<u32>(global0[_wgslsmith_index_u32(1u, 18u)], global4.b.x)) % vec2<u32>(32u))), Struct_2(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global4.d.a - global4.d.a) + global4.d.a), Struct_1(vec2<u32>(42831u, 36502u), _wgslsmith_f_op_vec2_f32(-vec2<f32>(2722f, 1994f)), ~(~global4.a), true, vec2<u32>(~0u, global4.d.b.e.x)), true, global4.d.d));
    var var_2 = global4.d;
    global3 = -709f;
    global3 = _wgslsmith_f_op_f32(-var_1.d.b.b.x);
    let var_3 = var_1.d.b.d | !(!all(vec2<bool>(true, true)));
    let x = u_input.a;
    s_output = StorageBuffer(~(~global0[_wgslsmith_index_u32(17477u, 18u)]));
}

