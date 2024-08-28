struct Struct_1 {
    a: u32,
    b: i32,
    c: i32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<u32>,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: Struct_2,
    d: vec3<f32>,
    e: Struct_1,
}

struct Struct_5 {
    a: vec3<f32>,
    b: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: i32,
    d: vec2<i32>,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: u32 = 737u;

var<private> global2: array<Struct_3, 18> = array<Struct_3, 18>(Struct_3(Struct_2(vec3<bool>(true, true, true), vec3<u32>(17980u, 111u, 0u), Struct_1(1u, 11820i, i32(-2147483648), false, 47371u), false)), Struct_3(Struct_2(vec3<bool>(true, true, true), vec3<u32>(4294967295u, 4294967295u, 19550u), Struct_1(83396u, 2147483647i, -1i, false, 16982u), true)), Struct_3(Struct_2(vec3<bool>(true, false, true), vec3<u32>(69203u, 1u, 0u), Struct_1(1u, 1i, 58539i, true, 1u), false)), Struct_3(Struct_2(vec3<bool>(false, false, true), vec3<u32>(4294967295u, 0u, 24175u), Struct_1(6499u, -25845i, -28916i, false, 4294967295u), false)), Struct_3(Struct_2(vec3<bool>(false, true, false), vec3<u32>(13248u, 4294967295u, 4294967295u), Struct_1(7336u, 34272i, 28592i, false, 47172u), true)), Struct_3(Struct_2(vec3<bool>(true, true, false), vec3<u32>(50088u, 4294967295u, 18572u), Struct_1(16017u, -1i, 2147483647i, true, 1u), true)), Struct_3(Struct_2(vec3<bool>(true, false, false), vec3<u32>(50840u, 1u, 1u), Struct_1(1u, i32(-2147483648), -12477i, true, 0u), true)), Struct_3(Struct_2(vec3<bool>(false, false, false), vec3<u32>(0u, 95719u, 0u), Struct_1(6390u, 0i, -2211i, false, 0u), true)), Struct_3(Struct_2(vec3<bool>(false, true, true), vec3<u32>(4294967295u, 28453u, 0u), Struct_1(4294967295u, 31113i, -19044i, true, 1u), false)), Struct_3(Struct_2(vec3<bool>(true, false, false), vec3<u32>(4294967295u, 1u, 18567u), Struct_1(4294967295u, 1i, 0i, false, 0u), false)), Struct_3(Struct_2(vec3<bool>(true, true, false), vec3<u32>(46550u, 24871u, 0u), Struct_1(73405u, -15221i, 23981i, true, 0u), false)), Struct_3(Struct_2(vec3<bool>(false, false, true), vec3<u32>(0u, 49208u, 1u), Struct_1(26467u, -3352i, -34428i, false, 8880u), true)), Struct_3(Struct_2(vec3<bool>(true, false, false), vec3<u32>(0u, 0u, 0u), Struct_1(36448u, -8989i, -70324i, true, 0u), false)), Struct_3(Struct_2(vec3<bool>(false, false, false), vec3<u32>(4294967295u, 9850u, 71344u), Struct_1(1u, 1i, 1i, true, 9901u), true)), Struct_3(Struct_2(vec3<bool>(true, true, false), vec3<u32>(49962u, 1u, 30252u), Struct_1(4294967295u, 2147483647i, 46752i, true, 1u), false)), Struct_3(Struct_2(vec3<bool>(false, true, true), vec3<u32>(32051u, 3743u, 4294967295u), Struct_1(44712u, -46514i, -54430i, false, 4294967295u), false)), Struct_3(Struct_2(vec3<bool>(true, true, true), vec3<u32>(47820u, 10794u, 17097u), Struct_1(0u, -6978i, -18357i, false, 75490u), true)), Struct_3(Struct_2(vec3<bool>(false, false, false), vec3<u32>(0u, 0u, 144278u), Struct_1(1u, 1i, 51389i, false, 0u), true)));

var<private> global3: array<vec3<u32>, 27> = array<vec3<u32>, 27>(vec3<u32>(0u, 1u, 4294967295u), vec3<u32>(4294967295u, 70623u, 1u), vec3<u32>(18572u, 63050u, 81546u), vec3<u32>(10737u, 74296u, 0u), vec3<u32>(4294967295u, 4294967295u, 5153u), vec3<u32>(1u, 0u, 0u), vec3<u32>(10091u, 57518u, 4294967295u), vec3<u32>(1u, 5897u, 0u), vec3<u32>(4294967295u, 22316u, 38349u), vec3<u32>(35895u, 73543u, 0u), vec3<u32>(4294967295u, 4294967295u, 0u), vec3<u32>(4294967295u, 4294967295u, 4294967295u), vec3<u32>(23717u, 4294967295u, 23389u), vec3<u32>(4651u, 49412u, 29225u), vec3<u32>(0u, 0u, 39008u), vec3<u32>(0u, 42309u, 21152u), vec3<u32>(72350u, 4294967295u, 4294967295u), vec3<u32>(1u, 4294967295u, 68932u), vec3<u32>(41119u, 988u, 1u), vec3<u32>(43544u, 4294967295u, 1u), vec3<u32>(4294967295u, 1u, 27463u), vec3<u32>(4294967295u, 1u, 19233u), vec3<u32>(26580u, 20358u, 1u), vec3<u32>(23746u, 0u, 8015u), vec3<u32>(32488u, 1u, 0u), vec3<u32>(58744u, 4294967295u, 4294967295u), vec3<u32>(22478u, 97903u, 8983u));

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_2() -> u32 {
    var var_0 = _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1270f), _wgslsmith_f_op_f32(trunc(789f)))))), -462f));
    global1 = countOneBits(reverseBits(_wgslsmith_div_u32(min(~u_input.a.x, abs(35699u)), ~u_input.a.x)));
    global0 = u_input.d;
    global2 = array<Struct_3, 18>();
    var_0 = 1730f;
    return u_input.a.x;
}

fn func_1() -> StorageBuffer {
    global2 = array<Struct_3, 18>();
    global3 = array<vec3<u32>, 27>();
    global1 = _wgslsmith_dot_vec3_u32(global3[_wgslsmith_index_u32(~u_input.a.x, 27u)], vec3<u32>(48865u, ~0u ^ u_input.a.x, 1u)) & func_2();
    var var_0 = true;
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-245f, 1444f, 1473f)))), _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(998f, -1124f, 281f), vec3<f32>(761f, 1730f, -100f), vec3<bool>(true, false, false))), _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1284f, 633f, -383f))), true)), true))), u_input.a.x == u_input.a.x);
    return StorageBuffer(_wgslsmith_clamp_i32(_wgslsmith_mult_i32(u_input.c, _wgslsmith_div_i32(u_input.c, u_input.e.x)), _wgslsmith_mod_i32(u_input.b, _wgslsmith_dot_vec3_i32(u_input.e, -vec3<i32>(global0.x, u_input.e.x, -48065i))), -(~(~(-52657i)))), abs(_wgslsmith_div_i32(-_wgslsmith_sub_i32(-1i, 14440i), -u_input.d.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = false;
    var var_1 = ~_wgslsmith_add_vec4_i32(vec4<i32>(-1i) * -vec4<i32>(global0.x, u_input.c, 3861i, u_input.d.x), _wgslsmith_sub_vec4_i32(~vec4<i32>(u_input.c, -32575i, 44170i, -1i), vec4<i32>(u_input.b, u_input.b, 0i, global0.x))) << (vec4<u32>(_wgslsmith_add_u32(6695u, 8758u), 0u, u_input.a.x, abs(0u)) % vec4<u32>(32u));
    global0 = -u_input.e.zz;
    var var_2 = max(u_input.a, abs(reverseBits(_wgslsmith_mult_vec4_u32(~vec4<u32>(0u, u_input.a.x, 4294967295u, 1u), select(u_input.a, u_input.a, vec4<bool>(false, false, true, true))))));
    var_1 = min(firstLeadingBit(vec4<i32>(~(-44961i), _wgslsmith_add_i32(4407i, -global0.x), -48538i, var_1.x)), vec4<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec3_i32(u_input.e, vec3<i32>(global0.x, u_input.c, var_1.x)), global0.x) ^ (global0.x | 1i), u_input.b, u_input.b, u_input.b));
    let x = u_input.a;
    s_output = func_1();
}

