struct Struct_1 {
    a: bool,
    b: i32,
    c: f32,
    d: u32,
    e: vec3<f32>,
}

struct Struct_2 {
    a: vec3<i32>,
    b: vec2<i32>,
}

struct Struct_3 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(12787i, 2147483647i, 33861i);

var<private> global1: array<vec2<f32>, 27> = array<vec2<f32>, 27>(vec2<f32>(-1665f, 305f), vec2<f32>(-935f, -1411f), vec2<f32>(-298f, 915f), vec2<f32>(-589f, 1000f), vec2<f32>(124f, 497f), vec2<f32>(1000f, -744f), vec2<f32>(-1751f, -1572f), vec2<f32>(-298f, -1336f), vec2<f32>(-1602f, -111f), vec2<f32>(428f, -563f), vec2<f32>(-442f, -1029f), vec2<f32>(1286f, 762f), vec2<f32>(-359f, -2056f), vec2<f32>(-1057f, -1373f), vec2<f32>(-463f, -1000f), vec2<f32>(634f, 472f), vec2<f32>(280f, 462f), vec2<f32>(-278f, 1507f), vec2<f32>(2486f, 159f), vec2<f32>(998f, -617f), vec2<f32>(-1000f, 2036f), vec2<f32>(1727f, -1000f), vec2<f32>(156f, -1594f), vec2<f32>(-817f, -1149f), vec2<f32>(2269f, -786f), vec2<f32>(-1000f, 678f), vec2<f32>(1387f, -1085f));

var<private> global2: Struct_1 = Struct_1(false, -48261i, 2485f, 0u, vec3<f32>(-1913f, -1203f, 520f));

var<private> global3: array<vec3<f32>, 31>;

var<private> global4: array<vec4<i32>, 13> = array<vec4<i32>, 13>(vec4<i32>(520i, -33335i, 1i, 1i), vec4<i32>(9704i, -1i, 28578i, 10157i), vec4<i32>(i32(-2147483648), -18812i, 2147483647i, 585i), vec4<i32>(-1652i, 30912i, 18432i, 43188i), vec4<i32>(-1i, 6435i, 1i, 26828i), vec4<i32>(0i, -44345i, 1i, -1i), vec4<i32>(2147483647i, -22507i, 29358i, -1i), vec4<i32>(i32(-2147483648), 11412i, -21743i, 31137i), vec4<i32>(i32(-2147483648), i32(-2147483648), 22376i, 5538i), vec4<i32>(-42035i, 2147483647i, 50143i, 0i), vec4<i32>(-58669i, 2147483647i, 1i, 2147483647i), vec4<i32>(28114i, -16818i, i32(-2147483648), 14679i), vec4<i32>(2147483647i, -3624i, 52483i, 2147483647i));

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: bool) -> f32 {
    return global2.c;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> f32 {
    var var_0 = arg_1.a;
    var var_1 = any(vec4<bool>(true | all(vec4<bool>(true, arg_0, arg_0, arg_0)), all(select(vec3<bool>(false, global2.a, true), vec3<bool>(true, false, false), arg_0)), select(!arg_0, true, true), all(vec4<bool>(arg_0, true, arg_0, arg_0)))) != select(false, true, true);
    let var_2 = _wgslsmith_clamp_u32(arg_1.a.x & ((global2.d << (global2.d % 32u)) << (_wgslsmith_dot_vec4_u32(arg_1.a, arg_1.a) % 32u)), 4294967295u >> (~global2.d % 32u), _wgslsmith_add_u32(_wgslsmith_mult_u32(4294967295u, arg_1.a.x) >> (14770u % 32u), ~u_input.c.x)) >= var_0.x;
    let var_3 = abs(49234u);
    global3 = array<vec3<f32>, 31>();
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(global2.a)) - 124f);
}

fn func_3() -> vec4<f32> {
    var var_0 = vec2<i32>(~(i32(-1i) * -global2.b), -_wgslsmith_mod_i32(-1i, countOneBits(1i)));
    let var_1 = Struct_3(~abs(abs(~vec4<u32>(40702u, 4294967295u, global2.d, 39134u))));
    let var_2 = _wgslsmith_dot_vec3_i32(vec3<i32>(u_input.a, ~u_input.a, i32(-1i) * -(global0.x << (64334u % 32u))), -(-vec3<i32>(-49870i, 46727i, u_input.a) << (vec3<u32>(abs(4294967295u), abs(u_input.c.x), _wgslsmith_mult_u32(4294967295u, var_1.a.x)) % vec3<u32>(32u))));
    let var_3 = abs(0u);
    global2 = Struct_1(!(!(!global2.a & global2.a)), i32(-1i) * -1i, global2.c, reverseBits(_wgslsmith_mult_u32(countOneBits(countOneBits(var_1.a.x)), firstTrailingBit(~var_1.a.x))), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1(global2.a, var_1))), global2.e.x, global2.c));
    return _wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(129f, global2.e.x, global2.c, 328f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(vec4<f32>(741f, 1244f, global2.c, _wgslsmith_f_op_f32(414f * global2.c)) - vec4<f32>(global2.c, -723f, 1000f, _wgslsmith_f_op_f32(func_1(global2.a, Struct_3(vec4<u32>(45318u, global2.d, 3915u, 1u)))))))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(func_3()) + _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(-1385f, 1265f, -164f, 309f)))))));
    global2 = Struct_1(true, _wgslsmith_dot_vec2_i32(~min(vec2<i32>(2147483647i, -1i), u_input.b.xy >> (u_input.c.zy % vec2<u32>(32u))), _wgslsmith_mult_vec2_i32(_wgslsmith_add_vec2_i32(reverseBits(u_input.b.zx), vec2<i32>(global0.x, global0.x) | u_input.b.xz), max(global0.yz, select(u_input.b.xy, vec2<i32>(-62656i, global0.x), vec2<bool>(true, global2.a))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-1718f))), global2.d, global3[_wgslsmith_index_u32(max(~_wgslsmith_dot_vec4_u32(vec4<u32>(9898u, u_input.c.x, u_input.c.x, 1u), vec4<u32>(global2.d, 91621u, global2.d, u_input.c.x)), abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global2.d, 0u, u_input.c.x, 4294967295u), vec4<u32>(106473u, 23995u, global2.d, global2.d)))) ^ global2.d, 31u)]);
    var var_1 = !(!select(vec3<bool>(global2.a, !global2.a, 69085u != global2.d), vec3<bool>(all(vec4<bool>(global2.a, global2.a, global2.a, true)), select(global2.a, true, global2.a), 111f >= var_0.x), all(select(vec3<bool>(global2.a, global2.a, global2.a), vec3<bool>(global2.a, global2.a, true), vec3<bool>(true, global2.a, true)))));
    let var_2 = global3[_wgslsmith_index_u32(countOneBits(reverseBits(global2.d)), 31u)];
    global3 = array<vec3<f32>, 31>();
    global3 = array<vec3<f32>, 31>();
    var var_3 = _wgslsmith_f_op_vec3_f32(trunc(var_0.zzw));
    var_1 = !select(vec3<bool>(484f > _wgslsmith_f_op_f32(floor(var_2.x)), global2.a, any(vec4<bool>(true, false, var_1.x, global2.a))), vec3<bool>(true, global2.a, true), true);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mod_i32(1i, -1i));
}

