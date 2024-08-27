struct Struct_1 {
    a: vec2<u32>,
}

struct Struct_2 {
    a: vec2<f32>,
}

struct Struct_3 {
    a: vec2<i32>,
    b: f32,
}

struct Struct_4 {
    a: vec4<bool>,
    b: u32,
    c: f32,
    d: vec3<bool>,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_3 = Struct_3(vec2<i32>(19329i, -43586i), -1065f);

var<private> global2: array<Struct_1, 1>;

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_2(arg_0: vec4<i32>) -> Struct_3 {
    var var_0 = ~firstTrailingBit(~vec3<u32>(17656u, u_input.a.x, u_input.b.x) ^ u_input.a);
    return Struct_3(~(~min(vec2<i32>(1i, 1i), global1.a)), _wgslsmith_f_op_f32(-431f - _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.b, _wgslsmith_f_op_f32(sign(185f))) - global1.b)));
}

fn func_3(arg_0: vec2<bool>, arg_1: vec3<bool>, arg_2: f32, arg_3: f32) -> u32 {
    var var_0 = Struct_1(_wgslsmith_add_vec2_u32(vec2<u32>(_wgslsmith_mod_u32(max(25678u, u_input.b.x), 1u), 28918u), u_input.a.zy));
    var var_1 = vec4<i32>(_wgslsmith_mod_i32(countOneBits(firstTrailingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(global1.a.x, -14271i, 0i, u_input.d), vec4<i32>(u_input.c, global1.a.x, 1i, -1i)))), global1.a.x), _wgslsmith_div_i32(~max(_wgslsmith_dot_vec2_i32(global1.a, global1.a), global1.a.x ^ u_input.c), 52211i), -2147483647i, _wgslsmith_dot_vec3_i32(~max(vec3<i32>(-49403i, -9584i, u_input.c), vec3<i32>(12359i, 2147483647i, -1i)) >> (vec3<u32>(_wgslsmith_mult_u32(4294967295u, var_0.a.x), u_input.a.x, _wgslsmith_add_u32(u_input.b.x, 712u)) % vec3<u32>(32u)), -(~(vec3<i32>(-23584i, u_input.c, u_input.d) << (u_input.a % vec3<u32>(32u))))));
    global1 = Struct_3(var_1.wz, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3 * arg_3))), arg_3, true)));
    var_1 = vec4<i32>(~2147483647i, 20702i, ~(~_wgslsmith_dot_vec2_i32(global1.a, vec2<i32>(u_input.d, u_input.c))), var_1.x) | _wgslsmith_clamp_vec4_i32(-vec4<i32>(_wgslsmith_mult_i32(u_input.d, var_1.x), i32(-1i) * -2147483647i, _wgslsmith_add_i32(-1i, u_input.c), func_2(vec4<i32>(11893i, -54892i, 24688i, 0i)).a.x), vec4<i32>(-u_input.c >> ((1u | u_input.a.x) % 32u), var_1.x, ~_wgslsmith_sub_i32(global1.a.x, u_input.c), var_1.x), ~_wgslsmith_add_vec4_i32(firstLeadingBit(vec4<i32>(2147483647i, u_input.c, u_input.c, -2147483647i)), _wgslsmith_mod_vec4_i32(vec4<i32>(37960i, var_1.x, -58350i, u_input.c), vec4<i32>(-1i, 1875i, u_input.c, global1.a.x))));
    var var_2 = ~_wgslsmith_mult_vec4_u32(vec4<u32>(19979u, ~min(0u, 56122u), 36254u, (0u & u_input.a.x) >> (_wgslsmith_mult_u32(u_input.a.x, 4294967295u) % 32u)), ~vec4<u32>(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), var_0.a.x, ~91923u, ~4294967295u));
    return ~var_0.a.x;
}

fn func_4(arg_0: bool, arg_1: Struct_1, arg_2: vec4<i32>, arg_3: Struct_2) -> Struct_3 {
    global2 = array<Struct_1, 1>();
    var var_0 = vec4<bool>(arg_0, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_3.a.x * arg_3.a.x)), _wgslsmith_f_op_f32(arg_3.a.x * _wgslsmith_f_op_f32(f32(-1f) * -754f)))) != _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(global1.b)), _wgslsmith_f_op_f32(-arg_3.a.x)) + 1000f), !(!arg_0 | !(!arg_0)), true);
    var var_1 = global1.a;
    var var_2 = _wgslsmith_sub_vec3_i32(max(arg_2.www, countOneBits(_wgslsmith_sub_vec3_i32(vec3<i32>(0i, var_1.x, u_input.d), arg_2.wxw))), reverseBits(_wgslsmith_mod_vec3_i32(-vec3<i32>(-10321i, 1i, 1i), _wgslsmith_clamp_vec3_i32(vec3<i32>(u_input.d, 0i, global1.a.x), arg_2.yxx, vec3<i32>(1i, 16390i, 2147483647i)))));
    var var_3 = arg_2.zy;
    return func_2(vec4<i32>(-min(var_1.x ^ 1i, _wgslsmith_mod_i32(var_2.x, var_2.x)), var_3.x, -var_2.x, 2147483647i));
}

fn func_1() -> Struct_3 {
    global1 = func_2(min(-vec4<i32>(2147483647i << (0u % 32u), 18844i << (u_input.a.x % 32u), 1i | global1.a.x, max(2147483647i, 2147483647i)), abs(vec4<i32>(u_input.c, u_input.d, 2883i, u_input.c | 0i))));
    global0 = select(_wgslsmith_div_u32(_wgslsmith_add_u32(u_input.b.x, 0u ^ u_input.a.x), _wgslsmith_mod_u32(u_input.b.x, 1u)), u_input.a.x, true);
    let var_0 = u_input.b;
    let var_1 = _wgslsmith_sub_i32(min(-12549i, 1i), ~global1.a.x);
    global2 = array<Struct_1, 1>();
    return func_4(any(select(vec3<bool>(true, false, false), vec3<bool>(true, true, true), vec3<bool>(true, true, true))) & (any(vec4<bool>(false, false, false, false)) | true), Struct_1(vec2<u32>(1u, var_0.x)), vec4<i32>(~(global1.a.x & 1i), var_1, u_input.c, ~(u_input.d | u_input.d)) >> (vec4<u32>((var_0.x & 38371u) ^ var_0.x, func_3(vec2<bool>(true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), _wgslsmith_f_op_f32(f32(-1f) * -244f), _wgslsmith_f_op_f32(-294f + -583f)), var_0.x, u_input.a.x) % vec4<u32>(32u)), Struct_2(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(490f * 918f), global1.b))));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = func_1();
    let var_0 = ~(-(-10690i >> (select(_wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.a.xy), 0u, true) % 32u)));
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(max(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global1.b, global1.b)))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.b, global1.b))))), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(-249f, 2068f), vec2<f32>(1000f, -1747f))))))))));
    global0 = func_3(vec2<bool>(select(false, true, true), any(vec3<bool>(false, false, true))), select(vec3<bool>(true, false, all(vec3<bool>(true, true, false))), vec3<bool>(any(vec4<bool>(true, false, true, false)), true, true), select(select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false)), vec3<bool>(true, false, true), vec3<bool>(true, true, true))), func_2(_wgslsmith_div_vec4_i32(vec4<i32>(u_input.c, 45293i, -28292i, 20671i), max(vec4<i32>(var_0, 1i, 32045i, 39412i), vec4<i32>(-48163i, var_0, 2147483647i, 33632i)))).b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1125f, 970f)) + _wgslsmith_f_op_f32(-1682f + 1885f)))) ^ (~_wgslsmith_sub_u32(u_input.a.x & 4294967295u, u_input.a.x) ^ _wgslsmith_dot_vec3_u32(vec3<u32>(u_input.b.x ^ u_input.b.x, select(u_input.a.x, u_input.a.x, true), ~u_input.a.x), vec3<u32>(9416u, ~u_input.b.x, 4294967295u)));
    var var_2 = global2[_wgslsmith_index_u32(1u, 1u)];
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(func_4(true, global2[_wgslsmith_index_u32(u_input.b.x, 1u)], vec4<i32>(var_0, -1i, global1.a.x, u_input.d), Struct_2(var_1.a)).b)))));
}

