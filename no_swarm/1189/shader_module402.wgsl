struct Struct_1 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec3<f32>,
    c: u32,
    d: i32,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec4<u32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: vec3<i32>,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(1142f, vec4<f32>(1078f, 930f, 827f, -694f));

var<private> global1: u32 = 9515u;

var<private> global2: array<f32, 17> = array<f32, 17>(1000f, -977f, -184f, -694f, 1000f, -2008f, 800f, 1973f, -909f, -850f, 454f, 1237f, 341f, 241f, -3452f, 652f, 1689f);

var<private> global3: Struct_1;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: Struct_2, arg_1: vec3<u32>) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(835f, -150f, arg_0.b.x, 615f), vec4<f32>(1784f, global2[_wgslsmith_index_u32(11077u, 17u)], global2[_wgslsmith_index_u32(arg_0.c, 17u)], 410f))))) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1064f, -1000f, global2[_wgslsmith_index_u32(arg_0.c, 17u)], 1091f) + _wgslsmith_f_op_vec4_f32(select(vec4<f32>(global3.b.x, global3.b.x, global2[_wgslsmith_index_u32(arg_0.c, 17u)], global2[_wgslsmith_index_u32(u_input.c.x, 17u)]), vec4<f32>(-341f, global0.a, 1075f, global0.a), vec4<bool>(true, false, true, true)))))) * _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(_wgslsmith_f_op_f32(step(global3.b.x, global3.a)), 900f, global0.b.x, arg_0.a.a), _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(global3.b, vec4<f32>(130f, 1006f, global3.b.x, global0.b.x)))))) - global3.b));
    global1 = _wgslsmith_mod_u32(0u, ~u_input.b.x);
    var var_1 = vec2<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 17u)], _wgslsmith_f_op_f32(f32(-1f) * -1891f));
    global0 = arg_0.a;
    var_1 = arg_0.b.yy;
    return arg_0;
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1) -> Struct_1 {
    global0 = func_2(Struct_2(arg_0, vec3<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global3.a))), arg_0.a, -885f), ~(67589u ^ u_input.b.x), abs((-2147483647i ^ u_input.a.x) & -47257i)), _wgslsmith_div_vec3_u32(max(vec3<u32>(u_input.c.x, u_input.b.x, u_input.c.x), vec3<u32>(u_input.c.x, 4294967295u, 4294967295u)) | _wgslsmith_mod_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(4294967295u, u_input.d.x, 1u), u_input.c.wyy), u_input.c.zyw), ~u_input.c.xxw)).a;
    var var_0 = vec3<bool>(false, true, u_input.a.x < 2147483647i);
    let var_1 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-132f, 850f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(124f * global3.a), 1142f)) * arg_0.b.x), 1216f));
    var var_2 = _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(max(global0.b, vec4<f32>(_wgslsmith_div_f32(295f, 271f), _wgslsmith_f_op_f32(global0.a + global0.b.x), _wgslsmith_f_op_f32(abs(global3.a)), -677f))), arg_1.b)));
    var var_3 = u_input.c.yx;
    return Struct_1(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -302f), 381f), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1270f, arg_1.a, 713f, arg_1.a))) * arg_1.b) - _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(_wgslsmith_f_op_f32(abs(arg_1.b.x)), _wgslsmith_f_op_f32(var_2.x * global2[_wgslsmith_index_u32(4294967295u, 17u)]), -1188f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(u_input.b.x, 17u)] * -888f))))));
}

fn func_1(arg_0: f32, arg_1: Struct_2, arg_2: vec2<u32>, arg_3: vec4<i32>) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-624f)) - _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(arg_1.b.x)), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-634f)) * 1f))))));
    let var_1 = func_2(arg_1, vec3<u32>(_wgslsmith_add_u32(_wgslsmith_dot_vec3_u32(u_input.c.ywy, vec3<u32>(arg_1.c, 28756u, 41128u)), 0u), u_input.d.x, 1u) | ~u_input.c.wwx);
    var var_2 = func_3(Struct_1(-310f, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1836f, var_1.b.x, 882f, arg_0) * vec4<f32>(1507f, arg_1.b.x, arg_1.a.b.x, arg_0)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global0.b)))), Struct_1(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~arg_2.x, ~var_1.c), 17u)] + _wgslsmith_f_op_f32(global3.a - _wgslsmith_f_op_f32(-var_1.a.b.x))), vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1227f * arg_0)), 823f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(step(742f, arg_1.b.x)))), 303f)));
    global1 = _wgslsmith_div_u32(((_wgslsmith_mult_u32(u_input.b.x, 10686u) ^ 4294967295u) & 4294967295u) >> (~reverseBits(~1u) % 32u), _wgslsmith_mod_u32(34289u, firstTrailingBit(~(arg_1.c >> (u_input.c.x % 32u)))));
    var_0 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.a.a) * _wgslsmith_f_op_f32(round(1008f)))))));
    return -159f;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = ~u_input.a.xx;
    var var_1 = Struct_1(global0.a, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.b) * vec4<f32>(_wgslsmith_f_op_f32(func_1(global2[_wgslsmith_index_u32(u_input.c.x, 17u)], Struct_2(Struct_1(global3.b.x, vec4<f32>(global0.b.x, 723f, global2[_wgslsmith_index_u32(40434u, 17u)], global2[_wgslsmith_index_u32(63415u, 17u)])), vec3<f32>(-780f, 1317f, -485f), 4294967295u, u_input.a.x), u_input.c.zw, vec4<i32>(12490i, -40282i, var_0.x, u_input.a.x))), global2[_wgslsmith_index_u32(abs(u_input.b.x), 17u)], _wgslsmith_f_op_f32(trunc(-836f)), _wgslsmith_f_op_f32(f32(-1f) * -1000f))), vec4<f32>(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(select(354f, global2[_wgslsmith_index_u32(0u, 17u)], true)))), 1601f, global3.a, global3.b.x)));
    let var_2 = func_2(Struct_2(Struct_1(global3.a, vec4<f32>(_wgslsmith_f_op_f32(-global0.b.x), -482f, _wgslsmith_f_op_f32(round(1731f)), -528f)), _wgslsmith_f_op_vec3_f32(-func_2(Struct_2(Struct_1(412f, global0.b), global0.b.yxw, 6272u, var_0.x), ~u_input.c.wyy).b), _wgslsmith_mult_u32(u_input.c.x, 0u), _wgslsmith_dot_vec3_i32(u_input.a.zxy, min(u_input.a.xwz, u_input.a.wyy)) << (0u % 32u)), vec3<u32>(~(~(~u_input.c.x)), 4981u, u_input.b.x)).a;
    var var_3 = Struct_2(Struct_1(_wgslsmith_div_f32(608f, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.a)))), _wgslsmith_f_op_vec4_f32(-global3.b)), var_1.b.xyy, ~u_input.c.x | ~u_input.c.x, _wgslsmith_mod_i32(~(var_0.x ^ 1i), firstLeadingBit(~(~u_input.a.x))));
    global1 = _wgslsmith_div_u32(var_3.c << (var_3.c % 32u), var_3.c);
    let x = u_input.a;
    s_output = StorageBuffer(vec4<f32>(-377f, _wgslsmith_f_op_f32(max(-711f, var_3.a.a)), global2[_wgslsmith_index_u32(~0u, 17u)], _wgslsmith_f_op_f32(var_1.b.x * 700f)), u_input.a.wyw, -_wgslsmith_mult_i32(_wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, u_input.a.x, var_0.x), vec3<i32>(u_input.a.x, var_3.d, -2874i) & u_input.a.yyx), u_input.a.x >> (45047u % 32u)));
}

