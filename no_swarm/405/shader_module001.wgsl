struct Struct_1 {
    a: f32,
    b: i32,
    c: i32,
    d: bool,
    e: vec2<i32>,
}

struct Struct_2 {
    a: u32,
    b: i32,
    c: Struct_1,
}

struct Struct_3 {
    a: u32,
}

struct Struct_4 {
    a: vec2<f32>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
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

var<private> global0: array<Struct_4, 14>;

var<private> global1: array<vec4<u32>, 31> = array<vec4<u32>, 31>(vec4<u32>(0u, 1u, 3574u, 1u), vec4<u32>(4294967295u, 69432u, 11008u, 30706u), vec4<u32>(18035u, 1u, 0u, 33031u), vec4<u32>(0u, 1u, 58238u, 20975u), vec4<u32>(44867u, 4294967295u, 4294967295u, 4294967295u), vec4<u32>(0u, 22279u, 1u, 42302u), vec4<u32>(4294967295u, 3347u, 1u, 1u), vec4<u32>(4294967295u, 0u, 57428u, 83452u), vec4<u32>(1u, 1u, 1u, 69537u), vec4<u32>(30537u, 0u, 4294967295u, 0u), vec4<u32>(1u, 17172u, 0u, 28904u), vec4<u32>(4294967295u, 49544u, 4294967295u, 66365u), vec4<u32>(1u, 0u, 4294967295u, 87130u), vec4<u32>(0u, 10575u, 0u, 25028u), vec4<u32>(4294967295u, 1u, 41030u, 0u), vec4<u32>(1u, 0u, 4294967295u, 1u), vec4<u32>(1u, 76697u, 4294967295u, 4294967295u), vec4<u32>(474u, 10818u, 30896u, 18093u), vec4<u32>(1u, 16593u, 0u, 0u), vec4<u32>(980u, 0u, 11569u, 4294967295u), vec4<u32>(13426u, 4294967295u, 66463u, 4294967295u), vec4<u32>(1337u, 8471u, 1u, 1u), vec4<u32>(53680u, 4294967295u, 100700u, 1u), vec4<u32>(7178u, 1u, 0u, 1u), vec4<u32>(40371u, 1773u, 4294967295u, 4294967295u), vec4<u32>(0u, 1u, 0u, 0u), vec4<u32>(4294967295u, 1u, 79868u, 42042u), vec4<u32>(56457u, 2755u, 1u, 4294967295u), vec4<u32>(0u, 4294967295u, 0u, 81680u), vec4<u32>(4294967295u, 4294967295u, 1u, 60991u), vec4<u32>(21960u, 32765u, 0u, 47665u));

var<private> global2: array<Struct_3, 12>;

var<private> global3: array<Struct_2, 12>;

var<private> global4: Struct_1 = Struct_1(1000f, 3337i, -13889i, false, vec2<i32>(-1i, i32(-2147483648)));

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: u32, arg_1: i32) -> i32 {
    let var_0 = Struct_2(arg_0, -reverseBits(abs(_wgslsmith_mult_i32(arg_1, arg_1))), Struct_1(global4.a, 1i, -_wgslsmith_mod_i32(-6637i, -1i), global4.d, global4.e));
    return global4.c;
}

fn func_2(arg_0: vec3<i32>, arg_1: u32, arg_2: vec3<f32>) -> u32 {
    var var_0 = -vec2<i32>(~global4.c, func_3(80699u, 0i));
    return u_input.a.x;
}

fn func_4(arg_0: u32, arg_1: u32) -> vec2<bool> {
    let var_0 = Struct_2(u_input.a.x, global4.e.x, Struct_1(_wgslsmith_f_op_f32(-1213f + -1154f), -global4.c, _wgslsmith_clamp_i32(global4.b, abs(-global4.e.x), ~global4.b), global4.e.x <= _wgslsmith_mult_i32(0i, global4.b), ~_wgslsmith_sub_vec2_i32(global4.e, abs(global4.e))));
    return vec2<bool>(532f < _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(var_0.c.a + _wgslsmith_f_op_f32(-255f - var_0.c.a)), global4.a)), true);
}

fn func_1(arg_0: i32, arg_1: bool) -> Struct_4 {
    let var_0 = !select(select(vec2<bool>(u_input.a.x < 16905u, true), vec2<bool>(!global4.d, false), arg_1 || false), vec2<bool>(all(vec2<bool>(true, arg_1)), global4.d), func_4(1269u, func_2(vec3<i32>(global4.c, 2147483647i, global4.b), abs(u_input.a.x), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(-875f, -1385f, global4.a))))));
    var var_1 = 502f;
    var var_2 = -1157f;
    var var_3 = global0[_wgslsmith_index_u32(abs(_wgslsmith_sub_u32(~61240u << (select(select(29118u, 1u, var_0.x), u_input.a.x, true) % 32u), ~_wgslsmith_mult_u32(20605u, _wgslsmith_div_u32(9285u, 55769u)))), 14u)];
    var var_4 = ~max(var_3.c, u_input.a.yy);
    return Struct_4(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(exp2(vec2<f32>(_wgslsmith_f_op_f32(sign(548f)), -2304f))) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(vec2<f32>(453f, -1000f), vec2<f32>(global4.a, global4.a)) - var_3.a))), _wgslsmith_f_op_vec3_f32(var_3.b * vec3<f32>(var_3.d.a, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(649f * -140f))), var_3.b.x)), vec2<u32>(12957u, ~(~var_4.x) >> (var_4.x % 32u)), Struct_1(global4.a, -52920i, ~arg_0, any(select(select(vec3<bool>(true, true, false), vec3<bool>(false, arg_1, false), false), vec3<bool>(false, false, var_0.x), true)), _wgslsmith_div_vec2_i32(-vec2<i32>(-44342i, arg_0), global4.e) & (global4.e << (_wgslsmith_div_vec2_u32(u_input.a.xx, vec2<u32>(45186u, var_3.c.x)) % vec2<u32>(32u)))));
}

fn func_5(arg_0: Struct_4) -> Struct_1 {
    var var_0 = Struct_3(u_input.a.x);
    let var_1 = func_1(global4.b, true).d;
    global3 = array<Struct_2, 12>();
    var var_2 = func_4(~(~var_0.a), _wgslsmith_clamp_u32(92232u, ~0u, var_0.a));
    let var_3 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-558f, _wgslsmith_f_op_f32(-arg_0.a.x)) * _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(round(var_1.a)))));
    return Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-2156f))) * _wgslsmith_f_op_f32(-func_1(var_1.c, var_1.d).a.x))), var_1.c, -1i, global4.d, vec2<i32>(max(reverseBits(0i), 2147483647i), _wgslsmith_dot_vec4_i32(_wgslsmith_div_vec4_i32(select(vec4<i32>(-2147483647i, 304i, -3688i, global4.b), vec4<i32>(var_1.b, 1i, arg_0.d.b, global4.b), vec4<bool>(var_2.x, true, false, arg_0.d.d)), vec4<i32>(var_1.b, var_1.e.x, global4.c, -2147483647i)), _wgslsmith_clamp_vec4_i32(~vec4<i32>(arg_0.d.b, arg_0.d.b, -1i, global4.e.x), _wgslsmith_clamp_vec4_i32(vec4<i32>(var_1.c, arg_0.d.b, 11351i, 49298i), vec4<i32>(var_1.b, -35848i, 1i, 62089i), vec4<i32>(var_1.b, -1836i, -27240i, var_1.c)), vec4<i32>(-1i, global4.b, 0i, global4.b) | vec4<i32>(8331i, -2147483647i, global4.e.x, 52232i)))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(global4.a - -1637f);
    global1 = array<vec4<u32>, 31>();
    let var_1 = func_5(func_1(_wgslsmith_add_i32(max(global4.e.x, -2147483647i), _wgslsmith_mod_i32(global4.c >> (72028u % 32u), -128155i)), any(!(!vec2<bool>(global4.d, global4.d)))));
    var var_2 = global3[_wgslsmith_index_u32(u_input.a.x ^ u_input.a.x, 12u)];
    global3 = array<Struct_2, 12>();
    var var_3 = 1u;
    var var_4 = var_2.c.e ^ firstTrailingBit(-(-vec2<i32>(global4.e.x, 18607i) ^ vec2<i32>(1642i, var_1.c)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(f32(-1f) * -421f));
}

