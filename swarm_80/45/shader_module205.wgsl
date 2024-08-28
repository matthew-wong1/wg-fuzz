struct Struct_1 {
    a: vec2<i32>,
    b: i32,
    c: u32,
    d: bool,
    e: u32,
}

struct Struct_2 {
    a: i32,
    b: u32,
    c: Struct_1,
}

struct Struct_3 {
    a: vec3<bool>,
    b: bool,
    c: vec4<u32>,
    d: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: i32,
    c: Struct_3,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
    b: vec2<f32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6>;

var<private> global1: vec4<u32> = vec4<u32>(42823u, 1u, 1u, 0u);

var<private> global2: f32 = -178f;

var<private> global3: vec3<u32>;

var<private> global4: array<vec4<i32>, 3>;

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: vec3<i32>, arg_3: Struct_1) -> bool {
    var var_0 = global1.x << ((~_wgslsmith_sub_u32(firstLeadingBit(global1.x), u_input.a.x) ^ _wgslsmith_dot_vec2_u32(_wgslsmith_mod_vec2_u32(~vec2<u32>(36604u, global1.x), vec2<u32>(arg_3.e, 1u) & vec2<u32>(1u, 40392u)), firstTrailingBit(countOneBits(vec2<u32>(4457u, global1.x))))) % 32u);
    var var_1 = max(abs(arg_3.e), 24855u);
    var var_2 = ~_wgslsmith_clamp_u32(global3.x, arg_0.c.e, _wgslsmith_mult_u32(~arg_0.c.e, global3.x) >> (u_input.a.x % 32u));
    var_1 = global3.x;
    let var_3 = arg_0;
    return all(vec2<bool>(false, true)) | !all(vec3<bool>(true, var_3.c.d, true & arg_3.d));
}

fn func_2() -> Struct_3 {
    let var_0 = true;
    var var_1 = ~_wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_dot_vec3_u32(vec3<u32>(global3.x, global3.x, global1.x) ^ vec3<u32>(0u, 4294967295u, 57909u), ~global1.zxx), _wgslsmith_div_u32(4294967295u, ~u_input.b.x)), global3.x);
    var var_2 = true;
    let var_3 = vec4<bool>(all(vec3<bool>(global1.x <= 53980u, var_0, true)), _wgslsmith_f_op_f32(ceil(-800f)) < -700f, all(!select(vec2<bool>(var_0, true), vec2<bool>(var_0, var_0), true)) | var_0, func_3(Struct_2(_wgslsmith_sub_i32(_wgslsmith_sub_i32(19894i, -1i), -32400i), 0u, Struct_1(vec2<i32>(7269i, 0i), 38121i >> (global1.x % 32u), _wgslsmith_div_u32(u_input.b.x, global1.x), true, global3.x)), abs(-1i), -firstLeadingBit(~vec3<i32>(0i, -1i, -5944i)), Struct_1(vec2<i32>(6378i, -69203i), -7677i, abs(u_input.b.x) & u_input.a.x, var_0, ~_wgslsmith_div_u32(1u, 1u))));
    global0 = array<Struct_4, 6>();
    return Struct_3(select(var_3.www, var_3.wxw, !any(var_3)), false, vec4<u32>(global3.x, 1u, ~u_input.b.x, u_input.b.x), _wgslsmith_dot_vec4_u32(vec4<u32>(abs(1u), ~4294967295u, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.b.x, u_input.a.x, global3.x, 21842u), vec4<u32>(59562u, global1.x, 22538u, 4294967295u)), ~(global3.x ^ 5542u)), _wgslsmith_add_vec4_u32(~_wgslsmith_clamp_vec4_u32(vec4<u32>(1u, global3.x, global1.x, global1.x), vec4<u32>(4294967295u, global1.x, 0u, 32574u), vec4<u32>(1u, 47306u, u_input.b.x, u_input.a.x)), abs(~vec4<u32>(global3.x, 57656u, 45562u, global3.x)))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_4, arg_2: f32) -> Struct_3 {
    global1 = ~countOneBits(_wgslsmith_add_vec4_u32(vec4<u32>(_wgslsmith_sub_u32(0u, global1.x), arg_0.e, min(58372u, arg_1.c.d), 101083u), arg_1.c.c));
    global0 = array<Struct_4, 6>();
    let var_0 = 6188i;
    global3 = _wgslsmith_div_vec3_u32(global1.zxx, ~_wgslsmith_mult_vec3_u32(~min(vec3<u32>(4294967295u, u_input.a.x, global1.x), global1.yzy), global1.xwz));
    return func_2();
}

fn func_4(arg_0: Struct_3) -> u32 {
    let var_0 = !arg_0.a.x;
    var var_1 = arg_0;
    var var_2 = Struct_2(select(0i, _wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(1i, 1i, 1i), firstTrailingBit(vec3<i32>(38934i, 27607i, 2147483647i))), ~13390i), false), 1u, Struct_1(~(~vec2<i32>(0i, 1504i)), -abs(1i), arg_0.d, var_1.b, firstTrailingBit(42758u)));
    var_1 = func_1(var_2.c, Struct_4(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1f, 1f)), select(abs(abs(0i)), _wgslsmith_mod_i32(0i, var_2.c.b), !(!arg_0.a.x)), arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(-707f))))) + -315f));
    global3 = abs(_wgslsmith_sub_vec3_u32(firstTrailingBit(abs(vec3<u32>(1u, 1u, u_input.a.x))), abs(vec3<u32>(_wgslsmith_mult_u32(var_1.c.x, 24243u), global3.x, countOneBits(1u)))));
    return var_1.d;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = ~(~vec4<u32>(firstTrailingBit(global3.x), func_4(func_1(Struct_1(vec2<i32>(-28147i, 21347i), 0i, 0u, true, u_input.a.x), global0[_wgslsmith_index_u32(1u, 6u)], -1251f)), func_2().c.x, countOneBits(_wgslsmith_dot_vec3_u32(global1.zzy, global1.yxx))));
    var var_0 = any(func_2().a.yx);
    let var_1 = -1304f;
    let x = u_input.a;
    s_output = StorageBuffer(1i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, -1271f) * vec2<f32>(232f, var_1)) * _wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(-1583f, var_1)))) * _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, 1000f) * vec2<f32>(var_1, 584f)), vec2<f32>(var_1, -1035f))) * _wgslsmith_f_op_vec2_f32(vec2<f32>(var_1, _wgslsmith_f_op_f32(f32(-1f) * -490f)) - _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(-1662f, var_1), vec2<f32>(-433f, 307f)) - vec2<f32>(var_1, -1340f)))), firstTrailingBit(~_wgslsmith_mod_i32(1i, _wgslsmith_add_i32(0i, -483i))));
}

