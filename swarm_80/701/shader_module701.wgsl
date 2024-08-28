struct Struct_1 {
    a: bool,
    b: u32,
    c: vec3<u32>,
    d: f32,
    e: u32,
}

struct Struct_2 {
    a: u32,
    b: bool,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
    b: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: u32,
    d: vec2<u32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<bool, 14>;

var<private> global1: array<bool, 32>;

var<private> global2: Struct_3 = Struct_3(12748u, Struct_1(true, 1u, vec3<u32>(0u, 35725u, 0u), 1277f, 1u));

var<private> global3: array<vec3<f32>, 5> = array<vec3<f32>, 5>(vec3<f32>(-334f, 988f, -1318f), vec3<f32>(1391f, 1008f, 379f), vec3<f32>(-150f, 162f, -295f), vec3<f32>(1000f, 290f, 209f), vec3<f32>(-842f, -803f, 1572f));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> u32 {
    var var_0 = global2.b;
    let var_1 = global2.b.d;
    var var_2 = 1368f;
    var var_3 = Struct_1(false, _wgslsmith_mod_u32(~countOneBits(min(1u, u_input.c)), global2.a), ~vec3<u32>(global2.b.e, global2.a, ~119943u), var_0.d, 4294967295u);
    global2 = Struct_3(4294967295u, global2.b);
    return ~firstLeadingBit(firstTrailingBit(max(~global2.a, 0u)));
}

fn func_2() -> Struct_1 {
    var var_0 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.d, global2.b.d)))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.b.d, -270f))))), vec2<f32>(_wgslsmith_f_op_f32(-global2.b.d), _wgslsmith_f_op_f32(min(global2.b.d, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global2.b.d + 248f), -753f))))));
    var var_1 = Struct_1(!(!(!(global2.b.a & global0[_wgslsmith_index_u32(global2.a, 14u)]))), 3968u, ~u_input.e, global2.b.d, u_input.d.x);
    let var_2 = ~12218u;
    let var_3 = Struct_1(global2.b.a, 2871u, global2.b.c, _wgslsmith_f_op_f32(-global2.b.d), var_2);
    let var_4 = global2.b;
    return Struct_1(true, global2.b.c.x, ~(~(~(vec3<u32>(var_1.e, 13556u, var_1.c.x) ^ vec3<u32>(var_3.e, 1u, 4294967295u)))), _wgslsmith_f_op_f32(-var_3.d), func_3(~_wgslsmith_mod_i32(~(-10483i), abs(15935i))));
}

fn func_4(arg_0: i32, arg_1: Struct_1) -> Struct_3 {
    var var_0 = abs(_wgslsmith_clamp_vec3_i32(min(_wgslsmith_mult_vec3_i32(vec3<i32>(arg_0, arg_0, -112586i), vec3<i32>(arg_0, 2147483647i, 0i)), _wgslsmith_mult_vec3_i32(vec3<i32>(7419i, 5678i, -11608i), vec3<i32>(arg_0, 1i, arg_0))), vec3<i32>(_wgslsmith_add_i32(26056i, -15602i), _wgslsmith_div_i32(arg_0, -4895i), ~(-1i)), _wgslsmith_div_vec3_i32(max(vec3<i32>(arg_0, -71625i, arg_0), vec3<i32>(15677i, 7343i, arg_0)), firstTrailingBit(vec3<i32>(-2147483647i, arg_0, arg_0))))) ^ min(vec3<i32>(~0i, -10618i, arg_0), _wgslsmith_add_vec3_i32(select(vec3<i32>(arg_0, 2147483647i, 7551i) & vec3<i32>(-27556i, arg_0, 7906i), _wgslsmith_div_vec3_i32(vec3<i32>(0i, -22169i, 28329i), vec3<i32>(-15236i, -35494i, 50170i)), any(vec4<bool>(false, arg_1.a, global1[_wgslsmith_index_u32(4294967295u, 32u)], false))), ~vec3<i32>(arg_0, arg_0, 0i)));
    global1 = array<bool, 32>();
    var var_1 = true;
    global0 = array<bool, 14>();
    let var_2 = Struct_3(_wgslsmith_mod_u32(~_wgslsmith_dot_vec2_u32(vec2<u32>(0u, arg_1.b) >> (arg_1.c.yy % vec2<u32>(32u)), ~global2.b.c.xz), ~u_input.a), func_2());
    return Struct_3(u_input.d.x, var_2.b);
}

fn func_1(arg_0: Struct_1, arg_1: f32, arg_2: vec4<f32>) -> vec2<u32> {
    global2 = func_4(-46403i, func_2());
    var var_0 = _wgslsmith_mod_i32(37920i, -_wgslsmith_dot_vec4_i32(vec4<i32>(-28735i, 21722i, 2147483647i, 28278i) << (vec4<u32>(global2.b.b, global2.a, u_input.b, 2505u) % vec4<u32>(32u)), ~vec4<i32>(-2147483647i, -48881i, -16513i, 0i)) ^ 2147483647i);
    global0 = array<bool, 14>();
    global2 = func_4(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), vec3<i32>(1i, _wgslsmith_div_i32(1i, _wgslsmith_dot_vec2_i32(vec2<i32>(52636i, -232i), vec2<i32>(0i, 2147483647i))), i32(-1i) * -42796i)), global2.b);
    let var_1 = vec2<f32>(global2.b.d, _wgslsmith_f_op_f32(-1080f * 1245f));
    return _wgslsmith_mult_vec2_u32(arg_0.c.yz, ~(~(vec2<u32>(global2.b.b, 0u) ^ vec2<u32>(1u, global2.b.c.x)) << (_wgslsmith_add_vec2_u32(countOneBits(global2.b.c.yx), vec2<u32>(1u, 4294967295u)) % vec2<u32>(32u))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_div_vec3_f32(global3[_wgslsmith_index_u32(countOneBits(_wgslsmith_mult_u32(1290u, global2.b.e)), 5u)], _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.b.d, global2.b.d, global2.b.d)))))));
    let var_1 = global2.b;
    var var_2 = _wgslsmith_mod_vec2_u32(_wgslsmith_mod_vec2_u32(~_wgslsmith_sub_vec2_u32(func_1(Struct_1(var_1.a, 41097u, vec3<u32>(var_1.c.x, 46769u, 28076u), var_0.x, global2.b.e), 166f, vec4<f32>(-745f, 617f, var_0.x, -239f)), global2.b.c.zz), global2.b.c.xy), vec2<u32>(~1u, 15497u << (_wgslsmith_clamp_u32(u_input.e.x, 72876u, var_1.c.x) % 32u)));
    global0 = array<bool, 14>();
    let var_3 = func_4(i32(-1i) * -3047i, global2.b);
    global0 = array<bool, 14>();
    let var_4 = global2.b.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.b.d) * var_1.d)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -107f), _wgslsmith_f_op_f32(exp2(var_3.b.d)), _wgslsmith_f_op_f32(f32(-1f) * -454f), _wgslsmith_div_f32(-1432f, 1349f))) * _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(vec4<f32>(116f, 889f, var_1.d, 889f) * vec4<f32>(109f, 107f, var_0.x, var_3.b.d))))));
}

