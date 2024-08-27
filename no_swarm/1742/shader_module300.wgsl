struct Struct_1 {
    a: u32,
    b: f32,
    c: vec3<i32>,
    d: i32,
    e: vec3<bool>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
}

struct Struct_3 {
    a: vec3<u32>,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: f32,
    c: u32,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_3, 27> = array<Struct_3, 27>(Struct_3(vec3<u32>(0u, 4294967295u, 1u), 1i, Struct_1(0u, -301f, vec3<i32>(-16273i, 0i, i32(-2147483648)), 2147483647i, vec3<bool>(true, true, false))), Struct_3(vec3<u32>(4294967295u, 0u, 53402u), 58465i, Struct_1(54487u, 1816f, vec3<i32>(19479i, 53047i, -13843i), 1i, vec3<bool>(true, true, true))), Struct_3(vec3<u32>(4294967295u, 44295u, 53682u), -1i, Struct_1(34991u, -557f, vec3<i32>(-1i, 1i, 43149i), -1i, vec3<bool>(true, true, false))), Struct_3(vec3<u32>(64756u, 11342u, 1u), 2147483647i, Struct_1(0u, -335f, vec3<i32>(0i, 2147483647i, -59085i), 12929i, vec3<bool>(false, false, false))), Struct_3(vec3<u32>(1u, 19602u, 14531u), -52275i, Struct_1(0u, -540f, vec3<i32>(-1i, i32(-2147483648), i32(-2147483648)), 39207i, vec3<bool>(false, false, false))), Struct_3(vec3<u32>(1u, 140953u, 23684u), i32(-2147483648), Struct_1(550u, 1810f, vec3<i32>(-33755i, -70799i, 2147483647i), 22728i, vec3<bool>(true, false, true))), Struct_3(vec3<u32>(25422u, 20192u, 20558u), 1i, Struct_1(0u, -348f, vec3<i32>(1i, -15814i, -1i), -42883i, vec3<bool>(false, true, true))), Struct_3(vec3<u32>(56989u, 1u, 0u), 19600i, Struct_1(0u, -1359f, vec3<i32>(-24003i, 0i, 0i), -24898i, vec3<bool>(true, false, false))), Struct_3(vec3<u32>(4294967295u, 0u, 2161u), i32(-2147483648), Struct_1(18917u, 2161f, vec3<i32>(2147483647i, -30641i, i32(-2147483648)), -71551i, vec3<bool>(false, true, false))), Struct_3(vec3<u32>(0u, 47378u, 0u), 44627i, Struct_1(4294967295u, 750f, vec3<i32>(26738i, -7263i, 13134i), 1i, vec3<bool>(true, true, false))), Struct_3(vec3<u32>(4294967295u, 26062u, 1u), i32(-2147483648), Struct_1(1u, 500f, vec3<i32>(-27927i, -11281i, -1i), 31543i, vec3<bool>(false, true, false))), Struct_3(vec3<u32>(27930u, 1u, 4294967295u), 2147483647i, Struct_1(4294967295u, -166f, vec3<i32>(i32(-2147483648), 2147483647i, 2147483647i), 2147483647i, vec3<bool>(false, false, false))), Struct_3(vec3<u32>(0u, 171u, 0u), -300i, Struct_1(1u, 159f, vec3<i32>(25798i, 1516i, 1i), 18075i, vec3<bool>(false, false, true))), Struct_3(vec3<u32>(1u, 3457u, 0u), 0i, Struct_1(1u, 1785f, vec3<i32>(31249i, i32(-2147483648), 0i), -1i, vec3<bool>(true, true, false))), Struct_3(vec3<u32>(13257u, 1715u, 4294967295u), i32(-2147483648), Struct_1(0u, -1000f, vec3<i32>(6437i, -1486i, 0i), i32(-2147483648), vec3<bool>(false, true, true))), Struct_3(vec3<u32>(29939u, 1u, 4294967295u), 9913i, Struct_1(1u, -1305f, vec3<i32>(0i, 22280i, -22959i), 12291i, vec3<bool>(true, false, false))), Struct_3(vec3<u32>(11402u, 4294967295u, 0u), -67437i, Struct_1(1u, -662f, vec3<i32>(-1i, 0i, -41893i), 19133i, vec3<bool>(false, true, false))), Struct_3(vec3<u32>(12490u, 4262u, 6016u), -300i, Struct_1(1u, -262f, vec3<i32>(-1i, -1i, -43628i), 20034i, vec3<bool>(true, false, false))), Struct_3(vec3<u32>(4294967295u, 48838u, 57069u), -69313i, Struct_1(4294967295u, -1438f, vec3<i32>(1i, 0i, 2147483647i), 0i, vec3<bool>(false, true, false))), Struct_3(vec3<u32>(52783u, 0u, 0u), -50326i, Struct_1(39453u, 808f, vec3<i32>(-3279i, -1i, -83350i), 41570i, vec3<bool>(true, false, true))), Struct_3(vec3<u32>(1u, 0u, 0u), 1i, Struct_1(19207u, -753f, vec3<i32>(-59767i, 0i, 22490i), -27537i, vec3<bool>(true, false, true))), Struct_3(vec3<u32>(39554u, 29349u, 4294967295u), 1i, Struct_1(0u, 1437f, vec3<i32>(0i, i32(-2147483648), -14166i), 84804i, vec3<bool>(false, false, false))), Struct_3(vec3<u32>(6646u, 4294967295u, 1u), 12523i, Struct_1(25294u, 904f, vec3<i32>(-24877i, 1i, -20748i), -10889i, vec3<bool>(true, false, false))), Struct_3(vec3<u32>(34904u, 55590u, 62838u), 7065i, Struct_1(13390u, -491f, vec3<i32>(1i, 2147483647i, i32(-2147483648)), -8198i, vec3<bool>(false, false, true))), Struct_3(vec3<u32>(4294967295u, 0u, 4294967295u), -1i, Struct_1(0u, -572f, vec3<i32>(868i, i32(-2147483648), -1i), i32(-2147483648), vec3<bool>(false, false, true))), Struct_3(vec3<u32>(64220u, 10382u, 1u), 12041i, Struct_1(0u, 816f, vec3<i32>(9880i, 0i, 0i), 2147483647i, vec3<bool>(true, false, false))), Struct_3(vec3<u32>(1u, 6000u, 0u), 2147483647i, Struct_1(64457u, 1332f, vec3<i32>(-1i, 2147483647i, 0i), 2147483647i, vec3<bool>(true, false, false))));

var<private> global1: array<Struct_3, 24>;

var<private> global2: u32 = 34322u;

var<private> global3: array<Struct_2, 12> = array<Struct_2, 12>(Struct_2(i32(-2147483648), Struct_1(1u, 1458f, vec3<i32>(-47905i, 2147483647i, -27474i), 48060i, vec3<bool>(true, true, false))), Struct_2(-1i, Struct_1(1u, -549f, vec3<i32>(-11231i, 12168i, i32(-2147483648)), i32(-2147483648), vec3<bool>(true, false, false))), Struct_2(-16272i, Struct_1(0u, -498f, vec3<i32>(-51879i, 65326i, -27002i), 8001i, vec3<bool>(true, true, true))), Struct_2(-1i, Struct_1(0u, -536f, vec3<i32>(68252i, 1i, 49255i), -44227i, vec3<bool>(false, true, true))), Struct_2(2147483647i, Struct_1(4294967295u, -616f, vec3<i32>(-27799i, -1i, 31341i), -33338i, vec3<bool>(true, false, true))), Struct_2(-70406i, Struct_1(66262u, -1524f, vec3<i32>(-1i, 2147483647i, i32(-2147483648)), -1i, vec3<bool>(true, true, true))), Struct_2(-23579i, Struct_1(39223u, -855f, vec3<i32>(-1i, i32(-2147483648), -31650i), -3937i, vec3<bool>(false, false, false))), Struct_2(-30798i, Struct_1(699u, 1865f, vec3<i32>(i32(-2147483648), i32(-2147483648), 7239i), 0i, vec3<bool>(false, false, false))), Struct_2(i32(-2147483648), Struct_1(1u, -385f, vec3<i32>(-41814i, 1i, 0i), i32(-2147483648), vec3<bool>(false, false, true))), Struct_2(2147483647i, Struct_1(53606u, 659f, vec3<i32>(0i, 39447i, -34211i), -69107i, vec3<bool>(false, false, true))), Struct_2(1i, Struct_1(26292u, -968f, vec3<i32>(0i, 10169i, 8953i), 2147483647i, vec3<bool>(false, false, false))), Struct_2(-24010i, Struct_1(48789u, -548f, vec3<i32>(-3149i, 0i, -1i), -20306i, vec3<bool>(false, true, true))));

var<private> global4: u32;

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = i32(-1i) * -2147483647i;
    let var_1 = u_input.b;
    global1 = array<Struct_3, 24>();
    let var_2 = global3[_wgslsmith_index_u32(var_1.x, 12u)];
    let var_3 = Struct_2(~(~_wgslsmith_div_i32(abs(u_input.c), u_input.a)), var_2.b);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(vec2<f32>(-532f, var_2.b.b) - vec2<f32>(var_2.b.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b)))), 1283f, _wgslsmith_dot_vec2_u32(var_1, ~_wgslsmith_mod_vec2_u32(abs(var_1), u_input.b)), select(vec4<i32>(2147483647i, select(-2147483647i, select(1195i, var_3.a, var_3.b.e.x), var_3.b.b == var_2.b.b), -_wgslsmith_mult_i32(-84i, var_3.b.c.x), ~_wgslsmith_clamp_i32(var_2.a, u_input.c, 22504i)), ~_wgslsmith_add_vec4_i32(vec4<i32>(13177i, var_2.b.c.x, u_input.a, 3129i) | vec4<i32>(u_input.a, var_3.b.c.x, -1i, -39268i), vec4<i32>(var_3.a, var_2.a, var_3.a, var_2.b.c.x) >> (vec4<u32>(1u, var_3.b.a, 4294967295u, 22413u) % vec4<u32>(32u))), select(select(vec4<bool>(true, true, true, true), select(vec4<bool>(true, var_2.b.e.x, false, var_2.b.e.x), vec4<bool>(true, false, false, true), vec4<bool>(var_3.b.e.x, false, var_2.b.e.x, false)), vec4<bool>(false, false, false, var_3.b.e.x)), vec4<bool>(true, true, true, true), vec4<bool>(true, 2147483647i > u_input.c, true, !var_2.b.e.x))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.b.b)))));
}

