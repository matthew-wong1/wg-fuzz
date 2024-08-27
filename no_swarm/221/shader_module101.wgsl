struct Struct_1 {
    a: bool,
    b: u32,
    c: bool,
    d: vec2<u32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
    b: Struct_1,
    c: Struct_2,
}

struct Struct_4 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
}

struct StorageBuffer {
    a: f32,
    b: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4 = Struct_4(vec2<bool>(false, true));

var<private> global1: array<vec4<f32>, 19>;

var<private> global2: array<Struct_3, 31> = array<Struct_3, 31>(Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 1u), Struct_1(false, 63436u, false, vec2<u32>(21593u, 8339u))), Struct_1(false, 6685u, true, vec2<u32>(0u, 21510u)), Struct_2(vec3<u32>(91478u, 65277u, 32726u), Struct_1(false, 47947u, false, vec2<u32>(0u, 1240u)))), Struct_3(Struct_2(vec3<u32>(50932u, 1u, 0u), Struct_1(false, 49221u, false, vec2<u32>(4294967295u, 42020u))), Struct_1(false, 35874u, true, vec2<u32>(1u, 45295u)), Struct_2(vec3<u32>(0u, 69242u, 0u), Struct_1(true, 3701u, false, vec2<u32>(17445u, 1u)))), Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 4294967295u), Struct_1(false, 41753u, true, vec2<u32>(1u, 0u))), Struct_1(true, 1u, true, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<u32>(1u, 79292u, 84604u), Struct_1(true, 52720u, false, vec2<u32>(20715u, 49149u)))), Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 1u), Struct_1(false, 51009u, true, vec2<u32>(1u, 1u))), Struct_1(true, 24502u, true, vec2<u32>(0u, 37956u)), Struct_2(vec3<u32>(4428u, 35441u, 22128u), Struct_1(false, 4294967295u, false, vec2<u32>(22246u, 1u)))), Struct_3(Struct_2(vec3<u32>(31444u, 41760u, 26893u), Struct_1(true, 43157u, false, vec2<u32>(4294967295u, 19332u))), Struct_1(false, 8999u, true, vec2<u32>(53985u, 29241u)), Struct_2(vec3<u32>(1u, 1u, 0u), Struct_1(false, 25492u, true, vec2<u32>(1u, 4294967295u)))), Struct_3(Struct_2(vec3<u32>(18403u, 25801u, 4294967295u), Struct_1(true, 1u, false, vec2<u32>(24294u, 37616u))), Struct_1(false, 1u, false, vec2<u32>(0u, 88916u)), Struct_2(vec3<u32>(32956u, 19583u, 31775u), Struct_1(true, 18738u, false, vec2<u32>(59349u, 1u)))), Struct_3(Struct_2(vec3<u32>(41186u, 49847u, 1u), Struct_1(true, 40465u, true, vec2<u32>(44690u, 1u))), Struct_1(false, 4294967295u, true, vec2<u32>(1u, 3064u)), Struct_2(vec3<u32>(80259u, 65305u, 1u), Struct_1(false, 8432u, true, vec2<u32>(4294967295u, 12170u)))), Struct_3(Struct_2(vec3<u32>(4294967295u, 0u, 26817u), Struct_1(true, 1u, false, vec2<u32>(0u, 4294967295u))), Struct_1(true, 4294967295u, false, vec2<u32>(0u, 86862u)), Struct_2(vec3<u32>(0u, 5511u, 26985u), Struct_1(true, 40704u, false, vec2<u32>(4294967295u, 0u)))), Struct_3(Struct_2(vec3<u32>(0u, 0u, 4294967295u), Struct_1(false, 0u, false, vec2<u32>(4294967295u, 16764u))), Struct_1(false, 5535u, false, vec2<u32>(0u, 0u)), Struct_2(vec3<u32>(6722u, 4294967295u, 349u), Struct_1(false, 1u, true, vec2<u32>(22745u, 33795u)))), Struct_3(Struct_2(vec3<u32>(0u, 74145u, 1u), Struct_1(false, 4169u, true, vec2<u32>(29074u, 123426u))), Struct_1(true, 775u, true, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<u32>(1u, 4294967295u, 4294967295u), Struct_1(false, 0u, true, vec2<u32>(4294967295u, 66292u)))), Struct_3(Struct_2(vec3<u32>(4294967295u, 2993u, 9691u), Struct_1(false, 1u, false, vec2<u32>(4294967295u, 53146u))), Struct_1(true, 0u, true, vec2<u32>(41780u, 0u)), Struct_2(vec3<u32>(19617u, 4294967295u, 0u), Struct_1(false, 82580u, false, vec2<u32>(4294967295u, 7453u)))), Struct_3(Struct_2(vec3<u32>(30528u, 4294967295u, 4272u), Struct_1(true, 54945u, false, vec2<u32>(1u, 25235u))), Struct_1(true, 0u, true, vec2<u32>(3403u, 11837u)), Struct_2(vec3<u32>(7392u, 1u, 0u), Struct_1(true, 1u, true, vec2<u32>(0u, 59414u)))), Struct_3(Struct_2(vec3<u32>(1u, 4294967295u, 25700u), Struct_1(false, 0u, false, vec2<u32>(4294967295u, 0u))), Struct_1(true, 4294967295u, false, vec2<u32>(54855u, 633u)), Struct_2(vec3<u32>(46266u, 4294967295u, 1u), Struct_1(false, 74167u, false, vec2<u32>(0u, 4294967295u)))), Struct_3(Struct_2(vec3<u32>(0u, 28137u, 9260u), Struct_1(false, 1u, false, vec2<u32>(4294967295u, 34360u))), Struct_1(false, 4294967295u, true, vec2<u32>(0u, 1u)), Struct_2(vec3<u32>(1u, 7253u, 1u), Struct_1(true, 80006u, true, vec2<u32>(4294967295u, 0u)))), Struct_3(Struct_2(vec3<u32>(1u, 49401u, 0u), Struct_1(false, 37351u, true, vec2<u32>(0u, 1u))), Struct_1(false, 6381u, true, vec2<u32>(1u, 55323u)), Struct_2(vec3<u32>(1u, 53251u, 0u), Struct_1(false, 57474u, false, vec2<u32>(0u, 13176u)))), Struct_3(Struct_2(vec3<u32>(0u, 35644u, 1u), Struct_1(false, 22006u, true, vec2<u32>(54172u, 1u))), Struct_1(false, 7737u, false, vec2<u32>(26676u, 106559u)), Struct_2(vec3<u32>(77497u, 4294967295u, 0u), Struct_1(false, 15547u, true, vec2<u32>(1u, 41306u)))), Struct_3(Struct_2(vec3<u32>(100875u, 1u, 0u), Struct_1(true, 1u, false, vec2<u32>(22950u, 0u))), Struct_1(false, 1u, false, vec2<u32>(11185u, 0u)), Struct_2(vec3<u32>(3309u, 13065u, 0u), Struct_1(false, 48222u, true, vec2<u32>(33224u, 0u)))), Struct_3(Struct_2(vec3<u32>(3445u, 1u, 35839u), Struct_1(false, 43173u, false, vec2<u32>(0u, 1u))), Struct_1(true, 4294967295u, true, vec2<u32>(17289u, 1u)), Struct_2(vec3<u32>(4294967295u, 2461u, 43042u), Struct_1(true, 4294967295u, true, vec2<u32>(51997u, 0u)))), Struct_3(Struct_2(vec3<u32>(0u, 4294967295u, 29714u), Struct_1(true, 24257u, true, vec2<u32>(40626u, 4294967295u))), Struct_1(true, 28652u, true, vec2<u32>(0u, 0u)), Struct_2(vec3<u32>(1u, 78623u, 30828u), Struct_1(false, 4294967295u, false, vec2<u32>(28540u, 55293u)))), Struct_3(Struct_2(vec3<u32>(4294967295u, 98159u, 4294967295u), Struct_1(true, 45064u, true, vec2<u32>(30685u, 19521u))), Struct_1(true, 0u, true, vec2<u32>(1u, 0u)), Struct_2(vec3<u32>(1u, 1u, 4294967295u), Struct_1(true, 1u, true, vec2<u32>(61124u, 1u)))), Struct_3(Struct_2(vec3<u32>(99526u, 46128u, 34401u), Struct_1(true, 28998u, true, vec2<u32>(50298u, 17275u))), Struct_1(false, 9035u, true, vec2<u32>(1u, 1u)), Struct_2(vec3<u32>(0u, 1u, 26916u), Struct_1(true, 58314u, true, vec2<u32>(4294967295u, 17218u)))), Struct_3(Struct_2(vec3<u32>(52578u, 0u, 32937u), Struct_1(true, 1u, true, vec2<u32>(4294967295u, 1u))), Struct_1(true, 4294967295u, true, vec2<u32>(45064u, 39512u)), Struct_2(vec3<u32>(0u, 0u, 0u), Struct_1(false, 0u, false, vec2<u32>(44815u, 76413u)))), Struct_3(Struct_2(vec3<u32>(1067u, 15785u, 1u), Struct_1(true, 0u, true, vec2<u32>(1u, 0u))), Struct_1(true, 22774u, false, vec2<u32>(4294967295u, 4294967295u)), Struct_2(vec3<u32>(21756u, 1u, 1u), Struct_1(false, 4294967295u, true, vec2<u32>(1u, 0u)))), Struct_3(Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(false, 45234u, false, vec2<u32>(0u, 1u))), Struct_1(false, 56131u, true, vec2<u32>(1u, 86315u)), Struct_2(vec3<u32>(1u, 0u, 0u), Struct_1(false, 22131u, false, vec2<u32>(91232u, 23521u)))), Struct_3(Struct_2(vec3<u32>(4132u, 42147u, 4294967295u), Struct_1(true, 37130u, true, vec2<u32>(37946u, 2567u))), Struct_1(true, 40476u, false, vec2<u32>(52339u, 82430u)), Struct_2(vec3<u32>(1u, 28951u, 19248u), Struct_1(false, 4294967295u, false, vec2<u32>(1u, 1u)))), Struct_3(Struct_2(vec3<u32>(21213u, 55957u, 4294967295u), Struct_1(true, 74117u, true, vec2<u32>(9310u, 4294967295u))), Struct_1(true, 1u, true, vec2<u32>(5635u, 0u)), Struct_2(vec3<u32>(19659u, 1u, 0u), Struct_1(false, 4294967295u, false, vec2<u32>(1u, 67238u)))), Struct_3(Struct_2(vec3<u32>(0u, 1u, 0u), Struct_1(true, 4294967295u, false, vec2<u32>(15070u, 4294967295u))), Struct_1(true, 1u, false, vec2<u32>(19471u, 2188u)), Struct_2(vec3<u32>(15964u, 4294967295u, 18317u), Struct_1(true, 0u, true, vec2<u32>(38319u, 0u)))), Struct_3(Struct_2(vec3<u32>(4294967295u, 27168u, 0u), Struct_1(false, 0u, true, vec2<u32>(13102u, 1u))), Struct_1(true, 0u, false, vec2<u32>(1u, 51877u)), Struct_2(vec3<u32>(1u, 1u, 0u), Struct_1(false, 4226u, true, vec2<u32>(4294967295u, 5220u)))), Struct_3(Struct_2(vec3<u32>(19896u, 34959u, 12417u), Struct_1(true, 0u, true, vec2<u32>(1u, 1u))), Struct_1(true, 35573u, false, vec2<u32>(4294967295u, 40863u)), Struct_2(vec3<u32>(4294967295u, 0u, 35637u), Struct_1(false, 1u, true, vec2<u32>(1u, 144095u)))), Struct_3(Struct_2(vec3<u32>(21706u, 1u, 69277u), Struct_1(true, 4294967295u, false, vec2<u32>(544u, 51829u))), Struct_1(true, 1u, false, vec2<u32>(36862u, 31252u)), Struct_2(vec3<u32>(7327u, 0u, 4294967295u), Struct_1(false, 67083u, false, vec2<u32>(1u, 1u)))), Struct_3(Struct_2(vec3<u32>(4294967295u, 4294967295u, 4294967295u), Struct_1(true, 17935u, true, vec2<u32>(0u, 124132u))), Struct_1(false, 1u, false, vec2<u32>(49085u, 32128u)), Struct_2(vec3<u32>(0u, 0u, 1u), Struct_1(false, 4294967295u, true, vec2<u32>(0u, 73237u)))));

var<private> global3: array<Struct_1, 8>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_3, arg_1: vec3<i32>) -> u32 {
    global2 = array<Struct_3, 31>();
    var var_0 = -vec2<i32>(1i, 47544i);
    let var_1 = global2[_wgslsmith_index_u32(_wgslsmith_dot_vec4_u32(~(vec4<u32>(1u, 9422u, arg_0.c.b.d.x, arg_0.c.b.d.x) & _wgslsmith_div_vec4_u32(vec4<u32>(1u, 5858u, arg_0.b.b, arg_0.a.b.d.x), vec4<u32>(arg_0.b.d.x, 44647u, arg_0.b.b, 15774u))), _wgslsmith_clamp_vec4_u32(~vec4<u32>(1u, arg_0.a.a.x, 4294967295u, 104283u), vec4<u32>(arg_0.b.d.x, ~arg_0.b.d.x, select(arg_0.c.b.d.x, arg_0.b.b, global0.a.x), arg_0.a.a.x), ~vec4<u32>(21271u, arg_0.a.b.b, 4294967295u, arg_0.c.a.x))) >> (~_wgslsmith_dot_vec3_u32(arg_0.a.a, countOneBits(abs(vec3<u32>(arg_0.c.a.x, arg_0.a.b.b, 41636u)))) % 32u), 31u)];
    let var_2 = _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(175f)) - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(1490f)) - -1257f)), 806f)));
    global3 = array<Struct_1, 8>();
    return 17130u;
}

fn func_2(arg_0: vec3<u32>, arg_1: vec3<f32>) -> Struct_4 {
    var var_0 = Struct_2(arg_0, global3[_wgslsmith_index_u32(~select(_wgslsmith_clamp_u32(abs(arg_0.x), 1996u, select(29220u, arg_0.x, false)), 28452u, any(!global0.a)), 8u)]);
    let var_1 = Struct_3(Struct_2(vec3<u32>(var_0.b.b, 40452u, 17529u), Struct_1(var_0.b.a, 4294967295u | _wgslsmith_add_u32(arg_0.x, var_0.a.x), func_3(Struct_3(Struct_2(vec3<u32>(1774u, var_0.a.x, 52194u), Struct_1(false, arg_0.x, var_0.b.a, arg_0.zy)), Struct_1(true, 1u, global0.a.x, vec2<u32>(var_0.b.d.x, arg_0.x)), Struct_2(var_0.a, Struct_1(var_0.b.c, 4294967295u, false, arg_0.yy))), vec3<i32>(1i, u_input.a, u_input.b)) >= reverseBits(arg_0.x), vec2<u32>(_wgslsmith_div_u32(23135u, var_0.b.b), _wgslsmith_dot_vec3_u32(vec3<u32>(var_0.b.d.x, 30020u, arg_0.x), arg_0)))), Struct_1(all(!select(vec3<bool>(false, var_0.b.c, false), vec3<bool>(true, var_0.b.c, true), true)), ~var_0.a.x, !global0.a.x, vec2<u32>(37794u, 1u)), Struct_2(_wgslsmith_mod_vec3_u32(min(_wgslsmith_mult_vec3_u32(var_0.a, arg_0), vec3<u32>(4294967295u, arg_0.x, 1u)), ~(var_0.a >> (vec3<u32>(3960u, var_0.b.d.x, arg_0.x) % vec3<u32>(32u)))), global3[_wgslsmith_index_u32(arg_0.x, 8u)]));
    let var_2 = vec2<u32>(var_0.b.b | 99537u, 1u & firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_div_u32(0u, var_1.c.a.x), max(arg_0.x, 0u))));
    global1 = array<vec4<f32>, 19>();
    return Struct_4(vec2<bool>(!(_wgslsmith_add_i32(u_input.b, 17270i) < 82302i), any(vec3<bool>(all(vec4<bool>(false, var_0.b.c, false, var_0.b.a)), !var_0.b.c, any(vec3<bool>(global0.a.x, true, true))))));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_4, arg_2: u32) -> Struct_1 {
    var var_0 = true;
    let var_1 = arg_2;
    global0 = arg_1;
    let var_2 = arg_1;
    let var_3 = ~(~_wgslsmith_add_vec3_u32(vec3<u32>(~var_1, arg_2 | 0u, ~4294967295u), reverseBits(vec3<u32>(arg_2, var_1, var_1) | vec3<u32>(4294967295u, arg_2, 0u))));
    return global3[_wgslsmith_index_u32(_wgslsmith_mod_u32(1u, var_3.x) ^ _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(0u, 28540u, arg_2), ~var_3) ^ var_3, var_3 ^ var_3), 8u)];
}

fn func_1() -> Struct_3 {
    global3 = array<Struct_1, 8>();
    var var_0 = global0.a.x;
    global3 = array<Struct_1, 8>();
    var var_1 = Struct_3(Struct_2(_wgslsmith_mod_vec3_u32(vec3<u32>(1u, 1u, 1u), vec3<u32>(1u, ~1u, 1u)), func_4(global1[_wgslsmith_index_u32(1u, 19u)], func_2(~vec3<u32>(15869u, 1u, 41192u), vec3<f32>(-885f, -749f, 1075f)), 1u)), Struct_1(!(!global0.a.x), firstTrailingBit(0u), func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(-592f, 339f, -1284f, -2364f) + global1[_wgslsmith_index_u32(113605u, 19u)]), func_2(vec3<u32>(1u, 1u, 21740u), vec3<f32>(-1071f, 467f, 768f)), 39368u | _wgslsmith_dot_vec4_u32(vec4<u32>(59714u, 0u, 21625u, 57285u), vec4<u32>(13136u, 4294967295u, 1u, 1u))).a, reverseBits(vec2<u32>(1u, 56027u))), Struct_2(~abs(min(vec3<u32>(0u, 18585u, 67472u), vec3<u32>(15958u, 2038u, 10542u))), Struct_1(true, 106079u, true, vec2<u32>(1u, 1u))));
    var_0 = all(select(select(select(vec3<bool>(false, var_1.b.a, true), select(vec3<bool>(true, global0.a.x, false), vec3<bool>(false, var_1.c.b.c, var_1.a.b.c), global0.a.x), true), !vec3<bool>(true, true, global0.a.x), func_4(_wgslsmith_f_op_vec4_f32(-global1[_wgslsmith_index_u32(var_1.b.b, 19u)]), Struct_4(global0.a), 5972u).c), vec3<bool>(global0.a.x, var_1.b.c & global0.a.x, false), select(vec3<bool>(all(vec4<bool>(global0.a.x, true, var_1.b.a, false)), global0.a.x != global0.a.x, true), select(vec3<bool>(var_1.c.b.a, false, false), vec3<bool>(false, true, var_1.a.b.a), false), global0.a.x)));
    return global2[_wgslsmith_index_u32(~0u, 31u)];
}

fn func_5(arg_0: Struct_3, arg_1: vec3<bool>, arg_2: i32, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = Struct_3(Struct_2(vec3<u32>(arg_0.a.b.d.x, 0u, arg_3.x), func_4(global1[_wgslsmith_index_u32(_wgslsmith_div_u32(arg_0.a.a.x, _wgslsmith_mult_u32(arg_0.a.b.d.x, 0u)), 19u)], func_2(~vec3<u32>(24190u, 0u, arg_0.c.a.x), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1042f, -1678f, -904f))), _wgslsmith_sub_u32(abs(arg_0.b.b), ~arg_0.a.b.d.x))), func_1().a.b, arg_0.a);
    let var_1 = _wgslsmith_mult_i32(-u_input.b, countOneBits(abs(u_input.b)));
    var var_2 = func_2(arg_0.a.a, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-828f * 1665f), _wgslsmith_f_op_f32(f32(-1f) * -1795f), -1000f))));
    global3 = array<Struct_1, 8>();
    let var_3 = vec2<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(32663i, var_1, arg_2, -2147483647i), max(vec4<i32>(var_1, var_1, var_1, -2147483647i), vec4<i32>(u_input.a, var_1, 1i, arg_2))), 22264i) ^ -_wgslsmith_clamp_vec2_i32(_wgslsmith_mult_vec2_i32(vec2<i32>(var_1, -36999i), vec2<i32>(var_1, 0i)) | (vec2<i32>(var_1, arg_2) & vec2<i32>(var_1, var_1)), (vec2<i32>(-2147483647i, -35111i) << (arg_0.c.b.d % vec2<u32>(32u))) ^ vec2<i32>(var_1, 21991i), abs(-vec2<i32>(2147483647i, var_1)));
    return global2[_wgslsmith_index_u32(0u, 31u)];
}

fn func_6(arg_0: i32, arg_1: Struct_3) -> u32 {
    global1 = array<vec4<f32>, 19>();
    global3 = array<Struct_1, 8>();
    var var_0 = func_2(_wgslsmith_sub_vec3_u32(vec3<u32>(arg_1.b.d.x | arg_1.a.b.b, func_4(global1[_wgslsmith_index_u32(29561u, 19u)], Struct_4(global0.a), arg_1.c.a.x).b, 1u), ~arg_1.a.a ^ arg_1.c.a) & ~_wgslsmith_add_vec3_u32(vec3<u32>(arg_1.a.b.b, 1u, arg_1.c.b.d.x), vec3<u32>(11137u, 4294967295u, arg_1.a.b.b)), vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1114f, -1993f) + _wgslsmith_f_op_f32(max(1073f, -867f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2346f))), 373f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1422f)) * 1081f)));
    var var_1 = Struct_4(select(!vec2<bool>(var_0.a.x | true, false), vec2<bool>(!any(global0.a), true), !vec2<bool>(false, any(vec2<bool>(true, arg_1.b.c)))));
    let var_2 = func_2(~select(_wgslsmith_mod_vec3_u32(arg_1.a.a, vec3<u32>(9326u, arg_1.c.b.d.x, arg_1.c.b.b)) >> (select(arg_1.a.a, arg_1.a.a, global0.a.x) % vec3<u32>(32u)), reverseBits(~vec3<u32>(arg_1.b.d.x, arg_1.a.a.x, 4294967295u)), !(!vec3<bool>(true, var_1.a.x, false))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-502f, -103f)))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(881f, _wgslsmith_f_op_f32(round(205f)))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1795f + _wgslsmith_f_op_f32(-812f + -2168f)) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1224f)))));
    return 1u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_u32(~1u >> (func_6(u_input.b, func_5(func_1(), select(vec3<bool>(false, true, global0.a.x), vec3<bool>(global0.a.x, true, global0.a.x), vec3<bool>(false, false, global0.a.x)), 44726i, vec2<u32>(1u, 1u))) % 32u), 48770u);
    global3 = array<Struct_1, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(-1401f, min(vec2<u32>(var_0, 1u), ~firstLeadingBit(countOneBits(vec2<u32>(47092u, 40215u)))));
}

