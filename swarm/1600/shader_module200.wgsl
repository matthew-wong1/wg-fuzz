struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<u32>,
    c: vec2<u32>,
    d: i32,
}

struct StorageBuffer {
    a: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec4<f32>;

var<private> global1: array<u32, 7> = array<u32, 7>(1u, 4294967295u, 0u, 4294967295u, 15973u, 4294967295u, 26681u);

var<private> global2: array<vec4<f32>, 28> = array<vec4<f32>, 28>(vec4<f32>(-606f, 184f, -251f, 1255f), vec4<f32>(-484f, -822f, -194f, -919f), vec4<f32>(-350f, -705f, -1205f, 992f), vec4<f32>(-1399f, -1820f, 560f, 1000f), vec4<f32>(1813f, -581f, 465f, -637f), vec4<f32>(820f, 375f, -517f, -297f), vec4<f32>(-1103f, -154f, -948f, 181f), vec4<f32>(1871f, -944f, -1971f, -623f), vec4<f32>(-1355f, 1000f, -1213f, -847f), vec4<f32>(1678f, 230f, 405f, -185f), vec4<f32>(1123f, -117f, -660f, -762f), vec4<f32>(158f, -538f, 1486f, 486f), vec4<f32>(1327f, 1625f, 436f, -1050f), vec4<f32>(633f, -886f, -923f, 1112f), vec4<f32>(2463f, -272f, 1000f, -768f), vec4<f32>(249f, 1000f, 535f, -128f), vec4<f32>(-943f, -1000f, -1827f, 1486f), vec4<f32>(424f, -678f, -1000f, 1797f), vec4<f32>(1349f, -529f, 1625f, -1086f), vec4<f32>(658f, 945f, -2613f, -951f), vec4<f32>(398f, 411f, -2207f, -804f), vec4<f32>(1171f, -175f, -566f, 801f), vec4<f32>(902f, -216f, 2464f, -1381f), vec4<f32>(1343f, -1208f, -448f, -2784f), vec4<f32>(-781f, 187f, -401f, 429f), vec4<f32>(1140f, 236f, -614f, 253f), vec4<f32>(-455f, 378f, -711f, 626f), vec4<f32>(-1085f, -674f, -1000f, -1000f));

var<private> global3: Struct_1 = Struct_1(1u);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
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

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_2(arg_0: vec4<u32>, arg_1: f32, arg_2: vec4<f32>) -> Struct_1 {
    var var_0 = 3745i;
    var var_1 = ~_wgslsmith_sub_u32(101161u, ~(arg_0.x | 41266u));
    let var_2 = -963f;
    var var_3 = Struct_1(global3.a);
    let var_4 = select(_wgslsmith_mod_vec3_u32(vec3<u32>(global1[_wgslsmith_index_u32(26281u, 7u)], ~max(1u, arg_0.x), ~(arg_0.x ^ global3.a)), arg_0.yzy), ~arg_0.zwz, false);
    return Struct_1(21780u >> (abs(global1[_wgslsmith_index_u32((var_4.x ^ arg_0.x) ^ u_input.b.x, 7u)]) % 32u));
}

fn func_3(arg_0: Struct_1, arg_1: f32) -> Struct_1 {
    let var_0 = vec2<i32>(_wgslsmith_div_i32(-u_input.d, 1i), u_input.d);
    global1 = array<u32, 7>();
    global2 = array<vec4<f32>, 28>();
    global1 = array<u32, 7>();
    global3 = func_2(vec4<u32>(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_dot_vec4_u32(u_input.b, vec4<u32>(u_input.b.x, 4294967295u, global3.a, global1[_wgslsmith_index_u32(arg_0.a, 7u)])), 0u), global1[_wgslsmith_index_u32(~65571u, 7u)]), 1984u, func_2(~firstLeadingBit(vec4<u32>(arg_0.a, arg_0.a, 26018u, global3.a)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(846f + 366f)), global2[_wgslsmith_index_u32(~(u_input.c.x << (arg_0.a % 32u)), 28u)]).a, ~firstTrailingBit(15946u)), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(2162f, _wgslsmith_f_op_f32(round(1000f)))), _wgslsmith_div_f32(arg_1, -2837f), true)), global0.x)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(432f, 422f, arg_1, arg_1))))));
    return Struct_1(~(~66379u));
}

fn func_4(arg_0: vec4<f32>, arg_1: vec2<f32>, arg_2: Struct_1, arg_3: vec3<f32>) -> Struct_1 {
    let var_0 = true;
    let var_1 = ~_wgslsmith_mod_i32(-select(u_input.d >> (arg_2.a % 32u), u_input.d, any(vec4<bool>(true, false, true, var_0))), -1i);
    global2 = array<vec4<f32>, 28>();
    global1 = array<u32, 7>();
    var var_2 = arg_2;
    return arg_2;
}

fn func_1(arg_0: Struct_1) -> vec4<f32> {
    global2 = array<vec4<f32>, 28>();
    let var_0 = func_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(arg_0.a, 28u)])), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global0.x, -304f)), func_3(func_2(vec4<u32>(arg_0.a, 0u, ~4294967295u, global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.c.x, 7u)], 7u)], 7u)] & arg_0.a), _wgslsmith_div_f32(-1268f, _wgslsmith_f_op_f32(ceil(global0.x))), global2[_wgslsmith_index_u32(~_wgslsmith_mod_u32(59773u, 9896u), 28u)]), global0.x), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global0.www + _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global0.xyy) * vec3<f32>(global0.x, 372f, global0.x))) - global0.zwx));
    let var_1 = vec3<bool>((~func_3(Struct_1(var_0.a), global0.x).a << (arg_0.a % 32u)) >= u_input.b.x, false, any(select(select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), select(true, false, false)), select(vec4<bool>(true, true, true, true), vec4<bool>(true, true, true, true), any(vec3<bool>(true, true, true))), all(vec3<bool>(true, true, true)))));
    var var_2 = vec4<i32>(-1i, _wgslsmith_add_i32(~32369i, ~_wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.d, 2147483647i, -25631i), vec3<i32>(u_input.d, u_input.a.x, u_input.d)), ~vec3<i32>(-1i, 2147483647i, -8824i))), i32(-1i) * -u_input.a.x, ~1i | countOneBits(u_input.a.x));
    global0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(global0.x + 168f), var_1.x)))), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-318f)), 1342f)))) + _wgslsmith_div_f32(global0.x, global0.x)), _wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1458f, global0.x)) + _wgslsmith_f_op_f32(-global0.x)), !all(!vec3<bool>(true, var_1.x, var_1.x)))));
    return _wgslsmith_f_op_vec4_f32(step(global2[_wgslsmith_index_u32(global3.a, 28u)], _wgslsmith_f_op_vec4_f32(-global2[_wgslsmith_index_u32(func_3(Struct_1(global1[_wgslsmith_index_u32(~4294967295u, 7u)]), global0.x).a, 28u)])));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(func_1(Struct_1(0u << (~global1[_wgslsmith_index_u32(global1[_wgslsmith_index_u32(u_input.b.x, 7u)], 7u)] % 32u)))));
    var var_0 = Struct_1(u_input.c.x);
    var var_1 = u_input.b;
    let var_2 = func_2(vec4<u32>(~48368u, abs(_wgslsmith_add_u32(global3.a, _wgslsmith_mult_u32(var_0.a, 0u))), global1[_wgslsmith_index_u32(~(~39754u), 7u)], 50919u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(min(global0.x, global0.x)))) * 790f)), _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(_wgslsmith_f_op_f32(select(659f, _wgslsmith_f_op_f32(global0.x + global0.x), true)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(global0.x, global0.x, true)) + -304f), _wgslsmith_div_f32(_wgslsmith_div_f32(global0.x, global0.x), _wgslsmith_f_op_f32(global0.x * 1000f)), 911f))));
    let var_3 = ~u_input.b.yyx;
    let var_4 = vec2<f32>(_wgslsmith_f_op_f32(round(617f)), global0.x);
    let x = u_input.a;
    s_output = StorageBuffer(~reverseBits(-u_input.a));
}

