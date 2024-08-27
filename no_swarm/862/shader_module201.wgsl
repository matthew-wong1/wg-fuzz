struct Struct_1 {
    a: f32,
    b: i32,
    c: u32,
    d: vec2<bool>,
    e: vec4<i32>,
}

struct Struct_2 {
    a: f32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: Struct_3,
    b: u32,
    c: bool,
    d: f32,
    e: u32,
}

struct Struct_5 {
    a: u32,
    b: vec4<f32>,
    c: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<i32>,
    c: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 22> = array<vec2<f32>, 22>(vec2<f32>(1053f, -575f), vec2<f32>(-1000f, -146f), vec2<f32>(941f, -728f), vec2<f32>(113f, -775f), vec2<f32>(1282f, 113f), vec2<f32>(-1000f, 952f), vec2<f32>(-643f, -1702f), vec2<f32>(2524f, 744f), vec2<f32>(1200f, 628f), vec2<f32>(-1806f, -1884f), vec2<f32>(-1103f, -208f), vec2<f32>(-1053f, 566f), vec2<f32>(684f, -844f), vec2<f32>(-402f, 788f), vec2<f32>(1619f, 1390f), vec2<f32>(350f, -107f), vec2<f32>(1387f, 715f), vec2<f32>(540f, -351f), vec2<f32>(379f, -1000f), vec2<f32>(1832f, -984f), vec2<f32>(-860f, 1430f), vec2<f32>(104f, 993f));

var<private> global1: vec4<bool> = vec4<bool>(true, true, false, false);

var<private> global2: u32 = 4294967295u;

var<private> global3: Struct_2;

var<private> global4: array<i32, 11>;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_4, arg_1: vec3<f32>) -> bool {
    global0 = array<vec2<f32>, 22>();
    var var_0 = arg_0.a;
    let var_1 = vec3<bool>(select(all(select(vec4<bool>(false, arg_0.c, arg_0.c, global1.x), !vec4<bool>(false, global1.x, global1.x, arg_0.c), !vec4<bool>(arg_0.a.a, true, arg_0.a.a, false))), true, true), !var_0.a, true);
    var var_2 = Struct_3(any(global1.xzy));
    return var_0.a && (abs(reverseBits(u_input.b.x)) <= ~_wgslsmith_add_i32(~u_input.b.x, ~98929i));
}

fn func_2(arg_0: bool, arg_1: vec2<bool>, arg_2: f32) -> Struct_3 {
    var var_0 = ~u_input.a.yxy;
    global4 = array<i32, 11>();
    var var_1 = Struct_5(~(~(~u_input.c)), _wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(ceil(591f)), global3.a, _wgslsmith_f_op_f32(arg_2 + -279f), _wgslsmith_f_op_f32(-1000f * 393f)) * vec4<f32>(global3.a, _wgslsmith_f_op_f32(arg_2 + 676f), _wgslsmith_f_op_f32(round(1603f)), -568f)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.a, -483f, global3.a, global3.a)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2, -813f, 1046f, -102f) * vec4<f32>(-1000f, 227f, -650f, -543f))))))), (firstTrailingBit(_wgslsmith_div_u32(u_input.c, u_input.c)) >= select(~u_input.c, 1u, 718f >= global3.a)) == all(vec3<bool>(arg_1.x, !global1.x, false)));
    var var_2 = Struct_3(true);
    global0 = array<vec2<f32>, 22>();
    return Struct_3((~(var_1.a ^ 0u) < _wgslsmith_add_u32(0u, _wgslsmith_add_u32(u_input.c, var_1.a))) | func_3(Struct_4(Struct_3(var_2.a), ~var_1.a, any(vec4<bool>(var_2.a, true, false, true)), _wgslsmith_f_op_f32(-1602f + -1120f), u_input.c), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.b.yyz - vec3<f32>(global3.a, arg_2, arg_2)) * _wgslsmith_f_op_vec3_f32(var_1.b.ywy * var_1.b.wyz))));
}

fn func_4(arg_0: vec3<f32>, arg_1: vec3<bool>, arg_2: Struct_3) -> bool {
    var var_0 = u_input.a.zwy;
    var var_1 = Struct_2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(-664f)))) + global3.a));
    let var_2 = _wgslsmith_add_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(-(0i >> (u_input.c % 32u)), -2147483647i, -21863i, 1i), firstTrailingBit(countOneBits(vec4<i32>(u_input.b.x, var_0.x, 24806i, var_0.x) ^ u_input.a))), _wgslsmith_dot_vec3_i32(countOneBits(~_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, 61074i, var_0.x), u_input.a.xxx)), _wgslsmith_sub_vec3_i32(-reverseBits(vec3<i32>(u_input.b.x, u_input.b.x, global4[_wgslsmith_index_u32(46461u, 11u)])), ~(~u_input.a.yzw))));
    var var_3 = Struct_4(arg_2, u_input.c >> (u_input.c % 32u), true, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(ceil(var_1.a)))), select(u_input.c, 54884u, !(!(!arg_2.a))));
    global4 = array<i32, 11>();
    return arg_2.a;
}

fn func_1(arg_0: bool, arg_1: Struct_3) -> vec3<u32> {
    global3 = Struct_2(global3.a);
    var var_0 = vec3<bool>(global1.x, !func_4(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(1710f, -981f, global3.a) - vec3<f32>(global3.a, global3.a, global3.a))), vec3<bool>(!arg_1.a, all(global1.ww), global1.x), func_2(arg_1.a, !global1.xw, global3.a)), true);
    var var_1 = vec4<u32>(0u, _wgslsmith_clamp_u32(u_input.c, _wgslsmith_div_u32(~countOneBits(u_input.c), ~abs(u_input.c)), u_input.c), u_input.c, u_input.c << (_wgslsmith_div_u32(~u_input.c, _wgslsmith_mult_u32(_wgslsmith_add_u32(u_input.c, u_input.c), 1u)) % 32u));
    var var_2 = var_1.x;
    var var_3 = _wgslsmith_add_u32(countOneBits(u_input.c), var_1.x);
    return var_1.ywx;
}

fn func_5(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<f32>, arg_3: vec3<u32>) -> bool {
    var var_0 = _wgslsmith_dot_vec2_i32(~_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.a.x, arg_1), ~vec2<i32>(0i, -2147483647i)), vec2<i32>(_wgslsmith_mult_i32(reverseBits(_wgslsmith_add_i32(global4[_wgslsmith_index_u32(arg_3.x, 11u)], u_input.b.x)), abs(0i)), firstLeadingBit(arg_1)));
    let var_1 = 20589u & max(~2558u, _wgslsmith_dot_vec3_u32(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.c, 0u, 0u), arg_3 | arg_3), _wgslsmith_clamp_vec3_u32(_wgslsmith_add_vec3_u32(arg_3, arg_3), select(arg_3, vec3<u32>(u_input.c, u_input.c, 4294967295u), true), vec3<u32>(0u, 4294967295u, u_input.c))));
    let var_2 = u_input.c;
    global0 = array<vec2<f32>, 22>();
    var_0 = _wgslsmith_mult_i32(~global4[_wgslsmith_index_u32(30887u, 11u)], arg_1);
    return !global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_5(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-528f + global3.a), global3.a, _wgslsmith_f_op_f32(f32(-1f) * -202f), _wgslsmith_f_op_f32(-global3.a))) + _wgslsmith_div_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(-318f + 316f), _wgslsmith_f_op_f32(-global3.a), _wgslsmith_f_op_f32(global3.a + global3.a), _wgslsmith_f_op_f32(748f - global3.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(2210f, global3.a, global3.a, global3.a), vec4<f32>(global3.a, 104f, 302f, 1619f))))), u_input.a.x, vec2<f32>(_wgslsmith_f_op_f32(floor(-575f)), global3.a), ~func_1(any(global1.yzy), Struct_3(true)));
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(_wgslsmith_div_f32(global3.a, global3.a), _wgslsmith_f_op_f32(-439f - -1000f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1795f)) + _wgslsmith_f_op_f32(round(global3.a))), global3.a), 22204i);
}

