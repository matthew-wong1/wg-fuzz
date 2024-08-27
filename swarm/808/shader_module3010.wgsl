struct Struct_1 {
    a: vec3<f32>,
    b: vec2<bool>,
    c: vec4<u32>,
    d: vec3<u32>,
    e: f32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: vec3<u32>,
    b: u32,
    c: i32,
    d: Struct_1,
    e: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec3<u32>,
    c: u32,
    d: i32,
    e: vec4<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
    d: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 27> = array<Struct_4, 27>(Struct_4(6152u), Struct_4(4294967295u), Struct_4(53950u), Struct_4(2460u), Struct_4(47291u), Struct_4(74456u), Struct_4(24326u), Struct_4(1u), Struct_4(19985u), Struct_4(91053u), Struct_4(59354u), Struct_4(53456u), Struct_4(56540u), Struct_4(47168u), Struct_4(1697u), Struct_4(36021u), Struct_4(1u), Struct_4(4294967295u), Struct_4(1u), Struct_4(32575u), Struct_4(0u), Struct_4(14559u), Struct_4(4294967295u), Struct_4(49717u), Struct_4(0u), Struct_4(0u), Struct_4(36498u));

var<private> global1: Struct_4;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3() -> bool {
    global1 = Struct_4(reverseBits(global1.a) & 61214u);
    global0 = array<Struct_4, 27>();
    var var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1000f, -971f)) + _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1000f, 455f), _wgslsmith_f_op_vec2_f32(select(vec2<f32>(-161f, -179f), vec2<f32>(261f, 895f), true))))), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(_wgslsmith_f_op_f32(ceil(1604f)), -1396f), _wgslsmith_f_op_vec2_f32(vec2<f32>(1465f, -440f) + vec2<f32>(-1871f, -2422f)))))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.x));
    let var_2 = global1.a;
    return true;
}

fn func_2(arg_0: bool) -> vec4<bool> {
    global0 = array<Struct_4, 27>();
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(-132f, 742f, 194f)))))), !select(vec2<bool>(false, arg_0), vec2<bool>(false, false), !vec2<bool>(false, arg_0)), vec4<u32>(4294967295u, ~83868u, _wgslsmith_sub_u32(~4294967295u, _wgslsmith_mult_u32(u_input.b.x, 25261u)), 0u), ~vec3<u32>(1u, ~u_input.c, global1.a), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-392f, 1000f))), 1155f))));
    global0 = array<Struct_4, 27>();
    global1 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(abs(select(44155u & (57912u >> (u_input.b.x % 32u)), firstLeadingBit(_wgslsmith_mult_u32(var_0.a.d.x, global1.a)), false)), _wgslsmith_div_u32(1u, select(global1.a, 61049u, false))), 27u)];
    global1 = global0[_wgslsmith_index_u32(countOneBits(firstTrailingBit(global1.a)), 27u)];
    return !vec4<bool>(any(select(select(vec4<bool>(false, var_0.a.b.x, var_0.a.b.x, var_0.a.b.x), vec4<bool>(false, arg_0, false, var_0.a.b.x), vec4<bool>(true, var_0.a.b.x, arg_0, var_0.a.b.x)), select(vec4<bool>(false, false, true, true), vec4<bool>(true, true, true, var_0.a.b.x), vec4<bool>(arg_0, var_0.a.b.x, false, true)), func_3())), var_0.a.b.x, arg_0, reverseBits(37847i) <= ~(~u_input.a.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: bool, arg_2: Struct_3) -> vec4<bool> {
    return func_2(true);
}

fn func_4(arg_0: vec4<u32>, arg_1: i32, arg_2: vec4<bool>) -> f32 {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(154f, 1286f, -239f), vec3<f32>(-995f, -1349f, 1000f), arg_2.x)))) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-376f, _wgslsmith_f_op_f32(abs(-1051f)), _wgslsmith_div_f32(1399f, 659f)))));
    var var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -731f), _wgslsmith_f_op_f32(max(-304f, -1000f)), var_0.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(var_0.x, 1261f, 1000f)))))) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-313f * var_0.x))), _wgslsmith_f_op_f32(round(var_0.x)), 304f)));
    var_1 = _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-272f + var_1.x), -1390f)), 723f, var_0.x)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(var_1.x + var_1.x), _wgslsmith_f_op_f32(step(756f, -970f)), _wgslsmith_f_op_f32(918f * 1000f)) * vec3<f32>(_wgslsmith_f_op_f32(637f * -688f), _wgslsmith_f_op_f32(min(105f, 974f)), var_0.x))));
    var_1 = vec3<f32>(var_1.x, 280f, -310f);
    global0 = array<Struct_4, 27>();
    return var_0.x;
}

fn func_5(arg_0: vec4<f32>) -> Struct_2 {
    var var_0 = 4294967295u;
    let var_1 = vec3<i32>(-5216i, 4042i, (-_wgslsmith_mod_i32(u_input.d, 2147483647i) << (u_input.c % 32u)) ^ -31214i);
    return Struct_2(vec3<u32>(~(~117151u), 32600u, 64208u));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-957f, -880f, -638f)))), vec2<bool>(true, true), reverseBits(_wgslsmith_mult_vec4_u32(vec4<u32>(4294967295u, global1.a, 1u, global1.a), vec4<u32>(global1.a, u_input.b.x, 9161u, global1.a) & vec4<u32>(6131u, global1.a, 24767u, 20405u))), vec3<u32>(12695u, ~4294967295u << (global1.a % 32u), u_input.b.x), -732f));
    let var_1 = true;
    let var_2 = func_5(vec4<f32>(_wgslsmith_f_op_f32(-var_0.a.a.x), _wgslsmith_f_op_f32(func_4(abs(var_0.a.c), -3388i, func_1(var_0.a.c, true, var_0))), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(trunc(var_0.a.a.x)))), _wgslsmith_f_op_f32(ceil(var_0.a.a.x))));
    var var_3 = -(~0i);
    var var_4 = Struct_3(var_0.a);
    let var_5 = Struct_4(~(~_wgslsmith_mult_u32(~var_2.a.x, u_input.c)));
    let x = u_input.a;
    s_output = StorageBuffer(~u_input.e.x, vec2<u32>(~_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b.x, var_0.a.c.x, 58526u), var_4.a.c.zxy), func_5(_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1120f, -160f, 325f, 319f))))).a.x), _wgslsmith_mult_i32(-2147483647i, firstTrailingBit(~max(75904i, u_input.d))), _wgslsmith_mod_vec3_i32(vec3<i32>(firstTrailingBit(u_input.d >> (1u % 32u)), 1i, countOneBits(1i)), _wgslsmith_mod_vec3_i32(-u_input.a.zyy, u_input.e.zyw) ^ -vec3<i32>(u_input.d, u_input.e.x, u_input.d)));
}

