struct Struct_1 {
    a: vec4<u32>,
    b: vec2<i32>,
    c: u32,
    d: vec4<f32>,
    e: vec2<f32>,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: f32,
    c: u32,
    d: u32,
    e: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1;

var<private> global2: u32 = 1u;

var<private> global3: array<vec4<u32>, 9> = array<vec4<u32>, 9>(vec4<u32>(4294967295u, 28665u, 52632u, 4294967295u), vec4<u32>(4294967295u, 52986u, 42811u, 4294967295u), vec4<u32>(23089u, 5274u, 39141u, 0u), vec4<u32>(1u, 58364u, 1u, 1u), vec4<u32>(15663u, 37846u, 4294967295u, 1u), vec4<u32>(71718u, 0u, 905u, 1u), vec4<u32>(25544u, 4294967295u, 0u, 1u), vec4<u32>(0u, 62974u, 1u, 39021u), vec4<u32>(4294967295u, 10373u, 61798u, 105027u));

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> f32 {
    global1 = Struct_1(~vec4<u32>(_wgslsmith_mod_u32(min(1u, global1.a.x), ~13887u), u_input.b, global1.a.x, _wgslsmith_div_u32(~u_input.e, ~u_input.b)), vec2<i32>(~max(u_input.a, 13158i), i32(-1i) * -(~(-19461i))), u_input.e, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global1.e.x, -1476f, -1000f, -442f)))))), vec2<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d.x * global1.e.x) - global1.d.x))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(465f)), _wgslsmith_f_op_f32(max(-747f, global1.d.x)))));
    let var_0 = _wgslsmith_dot_vec4_i32(~(~(-firstLeadingBit(u_input.c))), ~(firstLeadingBit(~vec4<i32>(-2147483647i, u_input.d, 2147483647i, u_input.a)) ^ vec4<i32>(_wgslsmith_mod_i32(global1.b.x, u_input.d), _wgslsmith_mod_i32(20326i, u_input.d), global1.b.x, max(25486i, -1i))));
    let var_1 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(-1000f)), _wgslsmith_f_op_f32(-968f + 723f)), _wgslsmith_f_op_f32(step(global1.e.x, _wgslsmith_f_op_f32(global1.e.x + global1.e.x)))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.d.x, -526f)), vec2<f32>(global1.e.x, global1.d.x)))) + _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global1.d.yx * vec2<f32>(global1.e.x, 810f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.d.x, -532f))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, global1.e.x) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, global1.d.x)))), 0i > abs(~global1.b.x))));
    var var_2 = -2147483647i;
    var var_3 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_div_f32(991f, _wgslsmith_f_op_f32(-var_1.x)), _wgslsmith_f_op_f32(ceil(global1.d.x)))), _wgslsmith_f_op_f32(ceil(383f))));
    return -852f;
}

fn func_2() -> Struct_1 {
    var var_0 = Struct_1(((global1.a | vec4<u32>(1u, 0u, global1.a.x, 1u)) ^ (vec4<u32>(10423u, 4294967295u, 1u, global1.c) >> (~global3[_wgslsmith_index_u32(global1.c, 9u)] % vec4<u32>(32u)))) ^ vec4<u32>(99986u, ~abs(u_input.e), _wgslsmith_div_u32(4294967295u, _wgslsmith_clamp_u32(2591u, 25595u, u_input.b)), 13028u), vec2<i32>(global1.b.x, global1.b.x), ~(~_wgslsmith_dot_vec4_u32(vec4<u32>(global1.c, global1.c, u_input.e, 20749u), vec4<u32>(49403u, 1u, u_input.b, u_input.b))) << (_wgslsmith_sub_u32(u_input.b, u_input.b >> (~u_input.e % 32u)) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global1.d.x, global1.d.x)), global1.e.x, _wgslsmith_f_op_f32(func_3()), _wgslsmith_div_f32(global1.d.x, global1.e.x)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(min(global1.e.x, -1188f)), global1.d.x, _wgslsmith_f_op_f32(global1.e.x - -619f), _wgslsmith_f_op_f32(min(659f, 791f))) * vec4<f32>(523f, global1.d.x, global1.e.x, _wgslsmith_f_op_f32(trunc(-350f))))), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(global1.d.zz * vec2<f32>(114f, global1.e.x)), _wgslsmith_f_op_vec2_f32(vec2<f32>(global1.e.x, -279f) + vec2<f32>(-994f, global1.d.x)), select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true))))), _wgslsmith_f_op_vec2_f32(vec2<f32>(1070f, _wgslsmith_f_op_f32(select(global1.e.x, -350f, false))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-global1.d.zx))))));
    let var_1 = _wgslsmith_f_op_f32(global1.e.x + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(max(global1.d.x, 1000f)), var_0.e.x)), _wgslsmith_f_op_f32(sign(var_0.e.x)), true)) - 1000f));
    var var_2 = Struct_1(~vec4<u32>(4294967295u, ~min(8799u, 59762u), (75263u << (1u % 32u)) | ~var_0.c, ~1u), reverseBits(~(~select(global1.b, global1.b, true))), ~(~(~var_0.c)) ^ ~1u, _wgslsmith_f_op_vec4_f32(var_0.d * _wgslsmith_f_op_vec4_f32(-var_0.d)), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(select(var_0.e, _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.e.x, var_1)), all(vec2<bool>(false, false)))), vec2<f32>(241f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1) + -575f))));
    var var_3 = abs(var_0.a.zx) >> (_wgslsmith_sub_vec2_u32(global1.a.xz, ~(~(~var_0.a.xz))) % vec2<u32>(32u));
    global0 = 22279u;
    return Struct_1(global3[_wgslsmith_index_u32(~min(~(1u | u_input.b), var_2.c), 9u)], _wgslsmith_clamp_vec2_i32(min(_wgslsmith_clamp_vec2_i32(max(var_2.b, var_0.b), -vec2<i32>(-1i, -2147483647i), var_0.b), abs(-global1.b)), var_0.b, ~(firstTrailingBit(var_0.b) << (_wgslsmith_div_vec2_u32(vec2<u32>(var_3.x, 37282u), var_2.a.yw) % vec2<u32>(32u)))), ~var_0.c, _wgslsmith_f_op_vec4_f32(-global1.d), var_0.d.wx);
}

fn func_1() -> Struct_1 {
    var var_0 = func_2();
    let var_1 = _wgslsmith_div_u32(~_wgslsmith_dot_vec4_u32(var_0.a, countOneBits(var_0.a) ^ _wgslsmith_div_vec4_u32(global3[_wgslsmith_index_u32(1u, 9u)], vec4<u32>(46913u, u_input.b, var_0.a.x, u_input.e))), 1012u);
    let var_2 = !(!vec3<bool>(!(1000f != global1.d.x), !(u_input.d > -15700i), select(all(vec4<bool>(false, false, true, false)), true, true)));
    global3 = array<vec4<u32>, 9>();
    var var_3 = var_0.d.yyy;
    return func_2();
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.c.yxx;
    var var_1 = func_1();
    let var_2 = var_1.a.x;
    let var_3 = global1.d.x;
    let var_4 = ~4294967295u & u_input.e;
    global0 = global1.a.x;
    let var_5 = _wgslsmith_mult_vec4_i32(select(abs(vec4<i32>(abs(1i), _wgslsmith_dot_vec4_i32(u_input.c, vec4<i32>(global1.b.x, u_input.a, -2147483647i, 33489i)), -12494i, var_1.b.x)), vec4<i32>(_wgslsmith_mult_i32(u_input.c.x, 39332i), -2147483647i, -58487i & reverseBits(global1.b.x), 2147483647i), select(vec4<bool>(true, true, true, true), vec4<bool>(any(vec3<bool>(true, true, true)), true, true, all(vec2<bool>(false, true))), select(select(vec4<bool>(true, false, true, false), vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false)), vec4<bool>(true, true, true, true), select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, true, false), vec4<bool>(false, true, false, false))))), vec4<i32>(-_wgslsmith_dot_vec3_i32(u_input.c.zwz, ~u_input.c.wxz), 2147483647i, select(-1i, -23036i, false), var_0.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d << ((var_4 | 0u) % 32u), global1.e.x, 15683u, global1.c, reverseBits(-firstLeadingBit(var_5) & var_5));
}

