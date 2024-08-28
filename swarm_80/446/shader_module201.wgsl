struct Struct_1 {
    a: u32,
    b: vec4<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec2<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: bool,
    c: bool,
    d: vec4<f32>,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<bool>,
    c: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<i32>,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0u, vec4<u32>(28623u, 31001u, 44881u, 50603u));

var<private> global1: array<vec3<f32>, 17> = array<vec3<f32>, 17>(vec3<f32>(-1207f, 1626f, -1006f), vec3<f32>(-1267f, 2034f, 770f), vec3<f32>(378f, -1007f, 1000f), vec3<f32>(-609f, 736f, -1472f), vec3<f32>(-529f, -1847f, -1242f), vec3<f32>(-995f, -1626f, 862f), vec3<f32>(-114f, -412f, -871f), vec3<f32>(827f, 447f, 1198f), vec3<f32>(944f, 1000f, -244f), vec3<f32>(778f, 1376f, -1000f), vec3<f32>(1389f, -304f, 1032f), vec3<f32>(1000f, -1075f, -548f), vec3<f32>(174f, 182f, -648f), vec3<f32>(1000f, -1375f, -2441f), vec3<f32>(1000f, -774f, 392f), vec3<f32>(647f, 230f, 1000f), vec3<f32>(200f, -807f, -232f));

var<private> global2: vec4<bool>;

var<private> global3: array<Struct_2, 31>;

var<private> global4: f32 = -723f;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_3() -> vec3<i32> {
    global1 = array<vec3<f32>, 17>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1f) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_div_f32(559f, _wgslsmith_f_op_f32(max(-1344f, -989f))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1000f, -1000f, global2.x)))) + _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-1195f)) - 252f)))));
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(440f, var_0, 1389f, -233f))))))) - vec4<f32>(_wgslsmith_f_op_f32(floor(var_0)), 352f, -1000f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(var_0)), _wgslsmith_f_op_f32(-695f - -1000f))))));
    var var_2 = abs(~u_input.b);
    var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, var_0, 1000f, var_1.x)) + _wgslsmith_f_op_vec4_f32(-vec4<f32>(-748f, -1042f, 685f, var_0)))) + _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(-var_0), 1000f, _wgslsmith_f_op_f32(1000f * 1102f), _wgslsmith_f_op_f32(max(-1757f, 1344f))), vec4<f32>(_wgslsmith_f_op_f32(select(var_1.x, var_1.x, false)), _wgslsmith_f_op_f32(267f + var_1.x), _wgslsmith_div_f32(-987f, -1627f), _wgslsmith_f_op_f32(-var_1.x))))));
    return u_input.c.ywz;
}

fn func_2(arg_0: i32) -> vec4<u32> {
    let var_0 = Struct_4(Struct_1(35453u, ~vec4<u32>(1u, abs(global0.b.x), ~0u, abs(11070u))), global2.yz, u_input.c.x);
    let var_1 = ~((select(vec3<u32>(u_input.b, 1u, var_0.a.a), var_0.a.b.yzw, false) ^ vec3<u32>(41069u, var_0.a.a, 1u)) << (global0.b.xxy % vec3<u32>(32u))) | vec3<u32>(global0.a, ~u_input.e, ~(_wgslsmith_dot_vec4_u32(var_0.a.b, vec4<u32>(var_0.a.b.x, global0.a, var_0.a.b.x, 0u)) ^ 27030u));
    let var_2 = _wgslsmith_mod_vec3_i32(countOneBits(u_input.c.wzx), _wgslsmith_mod_vec3_i32(-func_3(), _wgslsmith_sub_vec3_i32(u_input.c.yyz, u_input.c.xxy) << (~(vec3<u32>(global0.b.x, var_1.x, global0.b.x) >> (vec3<u32>(var_1.x, var_1.x, var_0.a.a) % vec3<u32>(32u))) % vec3<u32>(32u))));
    let var_3 = Struct_3(var_0.a, true, (true && var_0.b.x) | true, vec4<f32>(_wgslsmith_f_op_f32(-1023f - _wgslsmith_div_f32(401f, -543f)), _wgslsmith_f_op_f32(trunc(454f)), 1f, _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(1f - -441f), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(280f))))))));
    let var_4 = 1058f;
    return global0.b;
}

fn func_1(arg_0: vec3<u32>, arg_1: vec4<f32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-arg_1.x);
    var var_1 = global2.x;
    global1 = array<vec3<f32>, 17>();
    let var_2 = Struct_3(Struct_1(1u | _wgslsmith_add_u32(~global0.b.x, 36877u), ~func_2(1i)), (global2.x & true) & true, any(select(vec3<bool>(true, true, true), !vec3<bool>(global2.x, false, false), true)), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x + _wgslsmith_f_op_f32(select(-686f, 848f, true)))), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1142f + var_0)), arg_1.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(var_0)) - _wgslsmith_f_op_f32(floor(-1888f))), 767f));
    let var_3 = ~vec3<u32>(~(_wgslsmith_dot_vec2_u32(var_2.a.b.yw, arg_0.xz) & arg_0.x), _wgslsmith_clamp_u32(22929u | select(74172u, 3718u, false), var_2.a.b.x, ~4294967295u), 51346u);
    return var_2.a;
}

fn func_4(arg_0: i32, arg_1: Struct_4) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-388f, -539f, -654f, -182f))) - vec4<f32>(1f, 1f, 1f, 1f)))))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(869f, _wgslsmith_f_op_f32(sign(1012f)), -127f, _wgslsmith_f_op_f32(f32(-1f) * -815f)))), arg_1.b.x));
    var var_1 = ~(~17799u);
    global1 = array<vec3<f32>, 17>();
    var var_2 = true;
    var_1 = ~(_wgslsmith_mult_u32(u_input.e, 34369u) | 1u);
    return arg_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_u32(~global0.a, 411u, 29090u) < 1u;
    let var_1 = global2.x;
    global3 = array<Struct_2, 31>();
    let var_2 = -849f;
    var var_3 = func_4(-27396i ^ u_input.a.x, Struct_4(func_1(_wgslsmith_div_vec3_u32(select(vec3<u32>(0u, u_input.b, global0.a), vec3<u32>(u_input.e, u_input.e, 0u), false), abs(global0.b.xxz)), _wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-183f, var_2, -536f, -1726f), vec4<f32>(-2065f, var_2, -2210f, var_2)) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1744f, -107f, var_2, 2787f), vec4<f32>(-1012f, var_2, 1542f, -1446f), vec4<bool>(var_0, false, false, true))))), select(vec2<bool>(!var_0, !var_0), !select(global2.xz, global2.wz, global2.yz), select(!global2.zx, select(vec2<bool>(true, global2.x), vec2<bool>(global2.x, global2.x), global2.xw), true)), select(-(1i << (global0.b.x % 32u)), 1i, true)));
    let var_4 = global0.b.xzy;
    let x = u_input.a;
    s_output = StorageBuffer(u_input.d, var_4.x);
}

