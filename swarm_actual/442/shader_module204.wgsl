struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: vec2<bool>,
    b: u32,
    c: u32,
    d: vec2<i32>,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: vec4<f32>,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1i);

var<private> global1: array<vec4<bool>, 20> = array<vec4<bool>, 20>(vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true), vec4<bool>(false, false, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, false, true, true), vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(false, true, true, true), vec4<bool>(true, false, true, true), vec4<bool>(false, true, true, true), vec4<bool>(false, true, true, false), vec4<bool>(false, false, false, false), vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(false, false, true, false));

var<private> global2: array<Struct_2, 28> = array<Struct_2, 28>(Struct_2(vec2<bool>(false, false), 1u, 23921u, vec2<i32>(0i, 2147483647i)), Struct_2(vec2<bool>(false, false), 4294967295u, 0u, vec2<i32>(14152i, 1i)), Struct_2(vec2<bool>(true, true), 4294967295u, 0u, vec2<i32>(-1i, -3023i)), Struct_2(vec2<bool>(true, false), 8706u, 17664u, vec2<i32>(2147483647i, 41537i)), Struct_2(vec2<bool>(true, true), 31288u, 29616u, vec2<i32>(0i, 6078i)), Struct_2(vec2<bool>(true, false), 4294967295u, 4294967295u, vec2<i32>(24254i, 0i)), Struct_2(vec2<bool>(true, false), 52639u, 0u, vec2<i32>(1i, 0i)), Struct_2(vec2<bool>(true, false), 4698u, 53654u, vec2<i32>(0i, 0i)), Struct_2(vec2<bool>(true, true), 62403u, 0u, vec2<i32>(2147483647i, -1i)), Struct_2(vec2<bool>(false, false), 0u, 44068u, vec2<i32>(29002i, -27639i)), Struct_2(vec2<bool>(false, true), 20804u, 4294967295u, vec2<i32>(0i, -54574i)), Struct_2(vec2<bool>(true, false), 0u, 4464u, vec2<i32>(2147483647i, 1i)), Struct_2(vec2<bool>(false, false), 28891u, 4294967295u, vec2<i32>(i32(-2147483648), i32(-2147483648))), Struct_2(vec2<bool>(true, true), 1u, 4294967295u, vec2<i32>(-1i, 27815i)), Struct_2(vec2<bool>(false, true), 4294967295u, 0u, vec2<i32>(66874i, -1i)), Struct_2(vec2<bool>(false, true), 0u, 1u, vec2<i32>(-68605i, -22749i)), Struct_2(vec2<bool>(false, false), 14486u, 122065u, vec2<i32>(2147483647i, -47948i)), Struct_2(vec2<bool>(false, false), 36013u, 1u, vec2<i32>(-11981i, 0i)), Struct_2(vec2<bool>(false, true), 0u, 13305u, vec2<i32>(1i, 2147483647i)), Struct_2(vec2<bool>(false, false), 1u, 1u, vec2<i32>(0i, 21344i)), Struct_2(vec2<bool>(false, false), 57530u, 4294967295u, vec2<i32>(0i, 0i)), Struct_2(vec2<bool>(true, false), 76628u, 137502u, vec2<i32>(-42961i, -35228i)), Struct_2(vec2<bool>(true, true), 1u, 55862u, vec2<i32>(-20381i, 1i)), Struct_2(vec2<bool>(true, false), 1u, 3888u, vec2<i32>(18390i, 9869i)), Struct_2(vec2<bool>(true, false), 57101u, 0u, vec2<i32>(22773i, 29941i)), Struct_2(vec2<bool>(false, true), 48950u, 0u, vec2<i32>(15670i, -21040i)), Struct_2(vec2<bool>(true, false), 9249u, 1u, vec2<i32>(-57563i, -1i)), Struct_2(vec2<bool>(false, false), 7989u, 1u, vec2<i32>(i32(-2147483648), 6215i)));

var<private> global3: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-787f, -1062f), vec2<f32>(2250f, -1000f), vec2<f32>(840f, 1359f), vec2<f32>(2585f, 510f), vec2<f32>(411f, -457f), vec2<f32>(195f, 2439f), vec2<f32>(2152f, -1680f), vec2<f32>(1259f, -1496f), vec2<f32>(-129f, 1286f), vec2<f32>(-1000f, -1082f), vec2<f32>(-591f, 320f), vec2<f32>(-790f, 1644f));

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_1(arg_0: vec2<u32>) -> u32 {
    global3 = array<vec2<f32>, 12>();
    var var_0 = 43684u;
    var_0 = arg_0.x;
    global3 = array<vec2<f32>, 12>();
    global0 = Struct_1(-7656i);
    return arg_0.x;
}

fn func_3() -> vec2<bool> {
    global2 = array<Struct_2, 28>();
    global0 = Struct_1(_wgslsmith_sub_i32(0i, _wgslsmith_add_i32(~_wgslsmith_add_i32(21544i, 70162i), select(_wgslsmith_div_i32(global0.a, 6966i), u_input.a.x, false))));
    global2 = array<Struct_2, 28>();
    global1 = array<vec4<bool>, 20>();
    let var_0 = Struct_3(0u, _wgslsmith_add_vec4_i32(countOneBits(-(vec4<i32>(global0.a, global0.a, -34634i, -46748i) | vec4<i32>(0i, -2147483647i, -2147483647i, 1i))), vec4<i32>(_wgslsmith_clamp_i32(u_input.a.x, -4032i, _wgslsmith_mult_i32(global0.a, u_input.a.x)), _wgslsmith_mult_i32(i32(-1i) * -1i, global0.a), firstTrailingBit(2147483647i), countOneBits(~global0.a))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1357f, 428f)), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1012f) * _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(round(480f))))))), _wgslsmith_dot_vec2_i32(u_input.a << (vec2<u32>(1u, 1u) % vec2<u32>(32u)), abs(u_input.a)));
    return vec2<bool>(true, true);
}

fn func_2(arg_0: Struct_1) -> f32 {
    global1 = array<vec4<bool>, 20>();
    var var_0 = Struct_2(select(func_3(), vec2<bool>(true, any(vec4<bool>(true, true, false, true)) & true), true), 1u, _wgslsmith_div_u32(~func_1(vec2<u32>(33299u, 34017u)), ~57523u), u_input.a);
    return _wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(1f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-412f - _wgslsmith_f_op_f32(-232f + 483f)), 1304f)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(0u < _wgslsmith_div_u32(func_1(~vec2<u32>(0u, 23398u)), _wgslsmith_dot_vec2_u32(vec2<u32>(43559u, 44883u), vec2<u32>(1u, 1u))), all(vec2<bool>(true, any(vec2<bool>(true, false)))));
    let var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-656f, _wgslsmith_f_op_f32(max(254f, 725f)), _wgslsmith_f_op_f32(func_2(Struct_1(-1i))), _wgslsmith_f_op_f32(-2471f + 2184f)))), vec4<f32>(-576f, 793f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-386f * -199f) * _wgslsmith_div_f32(-706f, 1039f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-684f - -881f))), func_3().x)));
    var var_2 = var_0.x;
    var var_3 = countOneBits(~select(vec2<u32>(~1u, 1u), firstTrailingBit(firstTrailingBit(vec2<u32>(0u, 102506u))), !vec2<bool>(var_0.x, false)));
    let var_4 = _wgslsmith_f_op_f32(var_1.x - -1363f);
    var var_5 = false;
    let var_6 = vec4<i32>(-(-_wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, 1i, 4295i), vec3<i32>(2147483647i, u_input.a.x, 1i)) | -43418i), firstTrailingBit((firstLeadingBit(-67503i) << ((var_3.x << (21368u % 32u)) % 32u)) | (-8692i >> ((2787u | var_3.x) % 32u))), global0.a | (global0.a | u_input.a.x), ~0i);
    var var_7 = !global1[_wgslsmith_index_u32(~(~countOneBits(countOneBits(1u))), 20u)];
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(var_1.x, -2129f, var_1.x, _wgslsmith_f_op_f32(-var_1.x)), ~_wgslsmith_div_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(global0.a, 2147483647i, -74042i), vec3<i32>(var_6.x, u_input.a.x, 0i)), firstTrailingBit(-vec3<i32>(-2147483647i, -29147i, global0.a))), var_1, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(1000f, var_4)))));
}

