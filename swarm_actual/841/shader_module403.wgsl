struct Struct_1 {
    a: vec2<f32>,
    b: u32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<u32>,
    b: Struct_1,
}

struct Struct_3 {
    a: vec4<f32>,
    b: i32,
    c: vec2<u32>,
    d: vec3<f32>,
    e: bool,
}

struct Struct_4 {
    a: vec2<f32>,
    b: Struct_3,
    c: Struct_3,
    d: u32,
    e: vec3<bool>,
}

struct Struct_5 {
    a: i32,
    b: Struct_2,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<u32>, 20> = array<vec4<u32>, 20>(vec4<u32>(12695u, 61389u, 50317u, 0u), vec4<u32>(0u, 311u, 24956u, 0u), vec4<u32>(26795u, 3617u, 0u, 0u), vec4<u32>(43342u, 9377u, 4294967295u, 7998u), vec4<u32>(17528u, 1u, 4294967295u, 4152u), vec4<u32>(4294967295u, 26114u, 12555u, 4294967295u), vec4<u32>(28826u, 4294967295u, 39672u, 1u), vec4<u32>(14386u, 4294967295u, 0u, 4369u), vec4<u32>(4294967295u, 0u, 40332u, 1u), vec4<u32>(6329u, 29610u, 17996u, 4294967295u), vec4<u32>(25975u, 2547u, 74223u, 51311u), vec4<u32>(4294967295u, 10167u, 4294967295u, 4294967295u), vec4<u32>(56587u, 5154u, 29943u, 7904u), vec4<u32>(1u, 0u, 0u, 13665u), vec4<u32>(40939u, 54574u, 0u, 8202u), vec4<u32>(4294967295u, 0u, 4294967295u, 23531u), vec4<u32>(84075u, 0u, 0u, 96934u), vec4<u32>(95029u, 35189u, 1u, 1u), vec4<u32>(2785u, 1u, 68240u, 0u), vec4<u32>(0u, 16442u, 0u, 1u));

var<private> global1: array<Struct_1, 29>;

var<private> global2: array<vec2<bool>, 22> = array<vec2<bool>, 22>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(true, true));

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: i32, arg_1: Struct_4, arg_2: Struct_3) -> u32 {
    let var_0 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-331f, _wgslsmith_f_op_f32(sign(arg_1.b.a.x))) * _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-1389f, 1923f), _wgslsmith_f_op_f32(893f * arg_1.b.d.x), arg_2.a.x <= arg_2.a.x))))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-arg_1.b.a.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_2.d.x - -2404f)))))));
    var var_1 = Struct_5(-(~min(~arg_0, abs(arg_2.b))), Struct_2(vec3<u32>(_wgslsmith_mult_u32(abs(arg_2.c.x), u_input.a ^ 39200u), 18841u, arg_1.d), Struct_1(vec2<f32>(arg_1.a.x, 1170f), ~(~arg_1.d), arg_1.b.a.wx)));
    var var_2 = u_input.a == ~(~u_input.a);
    let var_3 = 11321i;
    var var_4 = vec3<i32>(38295i & arg_2.b, _wgslsmith_dot_vec3_i32(firstLeadingBit(reverseBits(vec3<i32>(13616i, -21754i, -15409i) << (vec3<u32>(u_input.a, 4294967295u, arg_1.d) % vec3<u32>(32u)))), abs(_wgslsmith_mult_vec3_i32(vec3<i32>(-1925i, -2147483647i, 0i), _wgslsmith_mod_vec3_i32(vec3<i32>(-29683i, 0i, arg_1.c.b), vec3<i32>(arg_0, -1i, var_3))))), arg_1.b.b);
    return u_input.a;
}

fn func_2(arg_0: Struct_3, arg_1: Struct_3) -> vec3<i32> {
    global2 = array<vec2<bool>, 22>();
    let var_0 = !arg_1.e;
    global0 = array<vec4<u32>, 20>();
    global2 = array<vec2<bool>, 22>();
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(arg_1.d.yy - arg_1.a.wx))), func_3(-29520i, Struct_4(_wgslsmith_f_op_vec2_f32(-arg_1.a.yw), Struct_3(vec4<f32>(arg_0.d.x, arg_1.d.x, -1429f, arg_1.a.x), -arg_0.b, countOneBits(arg_0.c), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-181f, arg_1.d.x, arg_0.a.x)), true), arg_1, u_input.a, vec3<bool>(true, true, true)), arg_0), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1444f, arg_0.d.x) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.d.x, 1000f))) + _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(arg_1.d.xx + arg_1.d.zx), _wgslsmith_f_op_vec2_f32(arg_1.d.zx + arg_0.a.wy))))));
    return ~vec3<i32>(arg_0.b ^ arg_0.b, firstTrailingBit(-2147483647i) | arg_1.b, arg_0.b);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_5, arg_2: Struct_2) -> StorageBuffer {
    global0 = array<vec4<u32>, 20>();
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-657f, arg_1.b.b.a.x, true))))));
    let var_1 = _wgslsmith_dot_vec2_i32(arg_0.yz, vec2<i32>(1i & (-25762i & _wgslsmith_div_i32(arg_1.a, -68913i)), -2147483647i));
    let var_2 = vec4<i32>(_wgslsmith_mult_i32(arg_1.a ^ -51620i, _wgslsmith_add_i32(_wgslsmith_add_i32(0i, 0i) & -arg_0.x, arg_0.x ^ max(-2147483647i, 34671i))), arg_1.a, var_1, arg_1.a);
    var var_3 = ~var_2.x;
    return StorageBuffer(arg_0, -var_2.xy);
}

fn func_1() -> StorageBuffer {
    return func_4(_wgslsmith_div_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-1i, 92151i, reverseBits(19856i)), vec3<i32>(1i, -5319i, -2147483647i)), max(vec3<i32>(~2147483647i, 1i, 1i << (u_input.a % 32u)), _wgslsmith_add_vec3_i32(~vec3<i32>(100623i, 8340i, -2086i), func_2(Struct_3(vec4<f32>(-493f, -274f, 718f, 948f), -10489i, vec2<u32>(u_input.a, u_input.a), vec3<f32>(1445f, -552f, -1261f), true), Struct_3(vec4<f32>(-223f, -122f, 1000f, 552f), 0i, vec2<u32>(27538u, 38509u), vec3<f32>(-331f, -1342f, 1109f), true))))), Struct_5(-2147483647i, Struct_2(max(vec3<u32>(58924u, u_input.a, u_input.a), _wgslsmith_add_vec3_u32(vec3<u32>(35474u, u_input.a, 11722u), vec3<u32>(0u, 7753u, u_input.a))), global1[_wgslsmith_index_u32(_wgslsmith_mult_u32(~u_input.a, 93246u), 29u)])), Struct_2(_wgslsmith_mult_vec3_u32(~(vec3<u32>(0u, 32026u, 48495u) >> (vec3<u32>(u_input.a, u_input.a, 8152u) % vec3<u32>(32u))), ~vec3<u32>(u_input.a, 81963u, u_input.a)), Struct_1(vec2<f32>(1f, 1f), u_input.a, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(748f, 1689f))))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~1u;
    let x = u_input.a;
    s_output = func_1();
}

