struct Struct_1 {
    a: bool,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: vec4<f32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(true);

var<private> global1: array<Struct_1, 19> = array<Struct_1, 19>(Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(true), Struct_1(true), Struct_1(false), Struct_1(false), Struct_1(true), Struct_1(false));

var<private> global2: array<vec4<u32>, 28> = array<vec4<u32>, 28>(vec4<u32>(0u, 35742u, 11884u, 80808u), vec4<u32>(75047u, 10224u, 1u, 1u), vec4<u32>(34594u, 48393u, 10353u, 22012u), vec4<u32>(33683u, 1u, 4294967295u, 1u), vec4<u32>(4294967295u, 62430u, 0u, 1u), vec4<u32>(67357u, 59623u, 13570u, 16046u), vec4<u32>(4294967295u, 24294u, 1u, 4097u), vec4<u32>(57728u, 19785u, 47630u, 77625u), vec4<u32>(4294967295u, 12879u, 0u, 13106u), vec4<u32>(23272u, 50606u, 1u, 4294967295u), vec4<u32>(0u, 24727u, 23092u, 26892u), vec4<u32>(44557u, 0u, 4294967295u, 1u), vec4<u32>(0u, 18821u, 81067u, 4294967295u), vec4<u32>(1908u, 17303u, 49587u, 37882u), vec4<u32>(65461u, 36150u, 4294967295u, 22976u), vec4<u32>(3380u, 13927u, 1u, 112307u), vec4<u32>(48213u, 1u, 39244u, 0u), vec4<u32>(1u, 1u, 41689u, 27924u), vec4<u32>(4294967295u, 4294967295u, 42026u, 18601u), vec4<u32>(0u, 0u, 4294967295u, 52109u), vec4<u32>(0u, 11295u, 28221u, 39022u), vec4<u32>(0u, 2779u, 51263u, 97796u), vec4<u32>(0u, 4294967295u, 1u, 58532u), vec4<u32>(5818u, 84242u, 3027u, 57890u), vec4<u32>(0u, 4294967295u, 31168u, 4294967295u), vec4<u32>(4294967295u, 1540u, 4294967295u, 4294967295u), vec4<u32>(4294967295u, 4294967295u, 1u, 44227u), vec4<u32>(65349u, 14103u, 0u, 1u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_2(arg_0: u32, arg_1: i32, arg_2: Struct_1) -> i32 {
    var var_0 = global1[_wgslsmith_index_u32(1u, 19u)];
    var var_1 = arg_2;
    let var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(729f, 855f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(-210f, 364f, false)) * _wgslsmith_div_f32(-1000f, -2030f)), -1075f)) * _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(vec4<f32>(822f, -842f, _wgslsmith_f_op_f32(-844f - -333f), _wgslsmith_f_op_f32(floor(-686f))) + vec4<f32>(-493f, _wgslsmith_f_op_f32(-2402f - 753f), 494f, -486f)))));
    global0 = Struct_1(global0.a);
    global0 = arg_2;
    return -1i;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: i32, arg_3: i32) -> u32 {
    let var_0 = vec3<u32>(_wgslsmith_dot_vec3_u32(~countOneBits(~u_input.a), vec3<u32>(u_input.a.x, ~(~u_input.a.x), firstTrailingBit(u_input.a.x))), 4294967295u, u_input.a.x);
    global0 = global1[_wgslsmith_index_u32(var_0.x, 19u)];
    global1 = array<Struct_1, 19>();
    var var_1 = arg_0;
    var var_2 = _wgslsmith_f_op_f32(min(1602f, _wgslsmith_f_op_f32(589f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(-748f, 1000f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1158f)))))));
    return abs(22885u);
}

fn func_1() -> u32 {
    global0 = Struct_1(true);
    var var_0 = _wgslsmith_f_op_f32(abs(-1861f));
    let var_1 = vec2<u32>(u_input.a.x, u_input.a.x);
    let var_2 = ~var_1.x;
    let var_3 = var_2;
    return _wgslsmith_add_u32(~max(min(0u, _wgslsmith_mult_u32(83748u, var_3)), _wgslsmith_mult_u32(~4294967295u, ~var_2)), func_3(global1[_wgslsmith_index_u32(var_1.x, 19u)], global1[_wgslsmith_index_u32(u_input.a.x, 19u)], _wgslsmith_mod_i32(i32(-1i) * -39630i, _wgslsmith_dot_vec3_i32(vec3<i32>(0i, -40360i, u_input.b.x), vec3<i32>(u_input.b.x, 1i, u_input.b.x))), func_2(_wgslsmith_dot_vec3_u32(u_input.a, vec3<u32>(2898u, u_input.a.x, 0u)), -24463i, global1[_wgslsmith_index_u32(reverseBits(var_1.x), 19u)])) | var_3);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global1[_wgslsmith_index_u32(func_1() | 4294967295u, 19u)];
    var var_1 = select(false, !global0.a, var_0.a);
    var_1 = (_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(371f))) != _wgslsmith_f_op_f32(min(1168f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(188f - -1163f))))) || true;
    let var_2 = Struct_1(!(!var_0.a));
    let var_3 = -406f;
    global2 = array<vec4<u32>, 28>();
    let var_4 = _wgslsmith_mult_vec4_i32(-(~vec4<i32>(-u_input.b.x, -u_input.b.x, u_input.b.x << (4294967295u % 32u), u_input.b.x >> (u_input.a.x % 32u))), _wgslsmith_add_vec4_i32(~(-vec4<i32>(0i, u_input.b.x, 0i, -2147483647i)) & ~(vec4<i32>(33074i, 39178i, u_input.b.x, -58616i) | vec4<i32>(3729i, u_input.b.x, u_input.b.x, u_input.b.x)), vec4<i32>(-u_input.b.x, u_input.b.x, max(select(47384i, 2147483647i, false), -9387i), u_input.b.x << (abs(u_input.a.x) % 32u))));
    let x = u_input.a;
    s_output = StorageBuffer(~global2[_wgslsmith_index_u32(u_input.a.x, 28u)], ~(~global2[_wgslsmith_index_u32(5093u | u_input.a.x, 28u)]), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(var_3, 1477f, 1124f, var_3) - vec4<f32>(-312f, -818f, var_3, -1613f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1109f, var_3, var_3, 1003f)), var_2.a))), _wgslsmith_mod_i32(-54248i, ~(~var_4.x) << (u_input.a.x % 32u)));
}

