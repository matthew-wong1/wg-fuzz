struct Struct_1 {
    a: i32,
    b: vec3<u32>,
}

struct Struct_2 {
    a: f32,
    b: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<u32>,
    c: i32,
    d: vec3<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: f32,
    b: u32,
    c: vec4<u32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<u32, 21> = array<u32, 21>(43183u, 0u, 59964u, 43307u, 39371u, 33847u, 39608u, 22289u, 91750u, 10525u, 1u, 22104u, 6978u, 1u, 18675u, 49978u, 1u, 0u, 51840u, 20694u, 1u);

var<private> global1: bool = false;

var<private> global2: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(Struct_2(2202f, vec3<u32>(4294967295u, 10617u, 40703u)), Struct_1(0i, vec3<u32>(65866u, 61650u, 0u))), Struct_3(Struct_2(-145f, vec3<u32>(4294967295u, 4294967295u, 48230u)), Struct_1(12706i, vec3<u32>(4294967295u, 32451u, 0u))), Struct_3(Struct_2(378f, vec3<u32>(5283u, 41928u, 57663u)), Struct_1(2147483647i, vec3<u32>(2222u, 4294967295u, 4294967295u))), Struct_3(Struct_2(201f, vec3<u32>(0u, 1321u, 24238u)), Struct_1(i32(-2147483648), vec3<u32>(0u, 0u, 45499u))), Struct_3(Struct_2(489f, vec3<u32>(4294967295u, 33902u, 66997u)), Struct_1(22932i, vec3<u32>(68883u, 1u, 14703u))), Struct_3(Struct_2(-759f, vec3<u32>(73278u, 58426u, 1u)), Struct_1(-5060i, vec3<u32>(4294967295u, 50594u, 0u))), Struct_3(Struct_2(894f, vec3<u32>(4294967295u, 0u, 25814u)), Struct_1(-34656i, vec3<u32>(0u, 22752u, 83300u))), Struct_3(Struct_2(1846f, vec3<u32>(17204u, 1u, 38105u)), Struct_1(116304i, vec3<u32>(20332u, 38476u, 72358u))), Struct_3(Struct_2(-618f, vec3<u32>(0u, 4294967295u, 24714u)), Struct_1(-4681i, vec3<u32>(4294967295u, 0u, 29033u))), Struct_3(Struct_2(-145f, vec3<u32>(1u, 77538u, 4294967295u)), Struct_1(1i, vec3<u32>(42619u, 0u, 4294967295u))), Struct_3(Struct_2(1418f, vec3<u32>(4294967295u, 19366u, 4294967295u)), Struct_1(2147483647i, vec3<u32>(4294967295u, 30481u, 1u))), Struct_3(Struct_2(289f, vec3<u32>(43734u, 6389u, 11419u)), Struct_1(-50601i, vec3<u32>(77730u, 41616u, 27957u))), Struct_3(Struct_2(-1894f, vec3<u32>(59133u, 44050u, 0u)), Struct_1(17597i, vec3<u32>(4294967295u, 4158u, 1u))), Struct_3(Struct_2(106f, vec3<u32>(54350u, 1u, 0u)), Struct_1(0i, vec3<u32>(33252u, 13315u, 4294967295u))), Struct_3(Struct_2(-1251f, vec3<u32>(28362u, 14573u, 4294967295u)), Struct_1(-1i, vec3<u32>(38314u, 46157u, 1u))), Struct_3(Struct_2(-1000f, vec3<u32>(70699u, 1u, 0u)), Struct_1(1i, vec3<u32>(1u, 0u, 61679u))), Struct_3(Struct_2(-1359f, vec3<u32>(35818u, 38415u, 49672u)), Struct_1(-30308i, vec3<u32>(6303u, 50426u, 1u))), Struct_3(Struct_2(126f, vec3<u32>(882u, 24450u, 1528u)), Struct_1(41432i, vec3<u32>(108985u, 70838u, 47962u))), Struct_3(Struct_2(-427f, vec3<u32>(1u, 3619u, 4294967295u)), Struct_1(1i, vec3<u32>(0u, 48343u, 85662u))), Struct_3(Struct_2(-847f, vec3<u32>(75243u, 3627u, 4294967295u)), Struct_1(-7650i, vec3<u32>(29276u, 83955u, 31673u))), Struct_3(Struct_2(-1149f, vec3<u32>(36450u, 0u, 15090u)), Struct_1(57108i, vec3<u32>(28582u, 1u, 4294967295u))), Struct_3(Struct_2(873f, vec3<u32>(1u, 0u, 52054u)), Struct_1(1i, vec3<u32>(1u, 3515u, 31921u))), Struct_3(Struct_2(-1313f, vec3<u32>(37601u, 0u, 4294967295u)), Struct_1(-1i, vec3<u32>(4294967295u, 10782u, 4294967295u))), Struct_3(Struct_2(-716f, vec3<u32>(1u, 24300u, 0u)), Struct_1(22426i, vec3<u32>(41895u, 26682u, 40102u))), Struct_3(Struct_2(-453f, vec3<u32>(42348u, 15907u, 4294967295u)), Struct_1(-27378i, vec3<u32>(0u, 4294967295u, 63940u))), Struct_3(Struct_2(-780f, vec3<u32>(5498u, 89322u, 4294967295u)), Struct_1(-11981i, vec3<u32>(31604u, 0u, 36924u))), Struct_3(Struct_2(-1606f, vec3<u32>(31570u, 28854u, 79190u)), Struct_1(55252i, vec3<u32>(45306u, 4294967295u, 0u))));

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: Struct_1, arg_2: vec4<i32>) -> u32 {
    var var_0 = -max(~arg_2.ww ^ arg_2.ww, arg_2.wz);
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -2143f), _wgslsmith_f_op_f32(f32(-1f) * -585f))) - -923f), u_input.a);
    global1 = select(true, any(vec2<bool>(arg_2.x == ~arg_2.x, !(581f >= var_1.a))), true);
    global2 = array<Struct_3, 27>();
    global1 = true || select(!all(vec2<bool>(false, true)), all(!select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false))), true);
    return reverseBits(_wgslsmith_mod_u32(u_input.a.x, ~4294967295u));
}

fn func_2(arg_0: bool, arg_1: f32, arg_2: vec2<i32>) -> StorageBuffer {
    var var_0 = 156f;
    global0 = array<u32, 21>();
    let var_1 = arg_2.x << (func_3(global0[_wgslsmith_index_u32(2175u, 21u)], Struct_1(~(arg_2.x & 35896i), _wgslsmith_mult_vec3_u32(u_input.b >> (u_input.b % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a.x, 1u, 4294967295u), vec3<u32>(5745u, global0[_wgslsmith_index_u32(81885u, 21u)], 53051u)))), vec4<i32>(_wgslsmith_mult_i32(-2147483647i, 1i), u_input.c, -_wgslsmith_mod_i32(-30142i, -2147483647i), max(reverseBits(1i), 1i))) % 32u);
    return StorageBuffer(arg_1, global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(reverseBits(~abs(1u)), 21u)] ^ ~global0[_wgslsmith_index_u32(~23930u, 21u)], 21u)], 21u)], vec4<u32>(~72675u, ~u_input.b.x | u_input.b.x, u_input.b.x, _wgslsmith_mod_u32(4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, u_input.b.x, u_input.b.x, global0[_wgslsmith_index_u32(18547u, 21u)]), ~vec4<u32>(u_input.b.x, 14131u, 17775u, 0u)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_1))))));
}

fn func_1() -> StorageBuffer {
    return func_2(true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1966f)), vec2<i32>(-9698i, 46914i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<u32, 21>();
    global0 = array<u32, 21>();
    let var_0 = Struct_2(-898f, ~vec3<u32>(_wgslsmith_mod_u32(~global0[_wgslsmith_index_u32(global0[_wgslsmith_index_u32(31263u, 21u)], 21u)], 1u), 14325u, _wgslsmith_div_u32(global0[_wgslsmith_index_u32(u_input.b.x, 21u)], 4294967295u)));
    global1 = select(true, true, true);
    let x = u_input.a;
    s_output = func_1();
}

