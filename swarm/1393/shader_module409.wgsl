struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: vec4<i32>,
    b: bool,
    c: i32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
    c: vec3<f32>,
}

struct Struct_4 {
    a: i32,
    b: vec3<f32>,
    c: u32,
}

struct Struct_5 {
    a: vec2<u32>,
    b: Struct_1,
    c: Struct_3,
    d: vec3<u32>,
    e: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: i32,
    c: i32,
    d: i32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: vec2<i32> = vec2<i32>(-15898i, 0i);

var<private> global2: vec4<i32>;

var<private> global3: array<f32, 5>;

var<private> global4: array<f32, 24>;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: vec3<u32>) -> vec3<f32> {
    global3 = array<f32, 5>();
    global0 = Struct_4(-1i, _wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(971f, global3[_wgslsmith_index_u32(global0.c, 5u)], global0.b.x))), _wgslsmith_f_op_vec3_f32(vec3<f32>(1000f, global4[_wgslsmith_index_u32(global0.c, 24u)], 1040f) - vec3<f32>(global4[_wgslsmith_index_u32(arg_0.x, 24u)], -247f, -386f))), vec3<f32>(_wgslsmith_f_op_f32(-1075f * global0.b.x), global0.b.x, 409f)) + vec3<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global3[_wgslsmith_index_u32(arg_0.x, 5u)]))), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(~128594u, 24u)] - _wgslsmith_f_op_f32(max(478f, global3[_wgslsmith_index_u32(global0.c, 5u)]))), _wgslsmith_div_f32(735f, global0.b.x))), 40223u);
    global0 = Struct_4(-select(-_wgslsmith_mult_i32(-16974i, -15699i), ~global2.x << ((u_input.e.x << (u_input.a.x % 32u)) % 32u), global0.c <= ~3456u), vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1406f, global4[_wgslsmith_index_u32(arg_0.x, 24u)])), _wgslsmith_f_op_f32(-354f * _wgslsmith_f_op_f32(-244f + 654f)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(-184f)))), 341f), countOneBits(min(~global0.c, ~4294967295u)) ^ ~_wgslsmith_sub_u32(0u, global0.c ^ 23620u));
    global1 = -(_wgslsmith_sub_vec2_i32(vec2<i32>(u_input.b >> (u_input.e.x % 32u), -2147483647i), select(vec2<i32>(global1.x, global1.x), global2.yy, select(vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true)))) >> (max(arg_0.xx, firstLeadingBit(vec2<u32>(u_input.a.x, arg_0.x) << (vec2<u32>(u_input.a.x, 23583u) % vec2<u32>(32u)))) % vec2<u32>(32u)));
    let var_0 = Struct_5(u_input.a, Struct_1(!all(vec3<bool>(true, true, false)) & select(global2.x <= -1i, select(false, false, true), true)), Struct_3(vec2<u32>(arg_0.x, _wgslsmith_mod_u32(u_input.e.x, _wgslsmith_dot_vec4_u32(u_input.e, u_input.e))), Struct_1(true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(-1374f, -1910f, global0.b.x))) + global0.b) + _wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(floor(global0.b))))), ~abs(~(vec3<u32>(global0.c, 4294967295u, 97803u) & vec3<u32>(global0.c, 1018u, arg_0.x))), vec4<i32>(1i, _wgslsmith_mod_i32(select(select(global2.x, global2.x, false), 1i, all(vec3<bool>(false, false, true))), global2.x), -_wgslsmith_add_i32(-2147483647i, u_input.d) << (29290u % 32u), min(_wgslsmith_clamp_i32(global1.x & 1i, 0i, global0.a), ~_wgslsmith_dot_vec3_i32(global2.zyy, vec3<i32>(-1i, -1i, 31124i)))));
    return _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global4[_wgslsmith_index_u32(32103u, 24u)], -605f, global0.b.x) * vec3<f32>(456f, 1079f, global3[_wgslsmith_index_u32(global0.c, 5u)])), var_0.c.c)) * _wgslsmith_f_op_vec3_f32(trunc(var_0.c.c)))));
}

fn func_2(arg_0: vec2<f32>, arg_1: f32, arg_2: u32) -> f32 {
    global4 = array<f32, 24>();
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.b.x, -1645f, false)), _wgslsmith_f_op_f32(arg_0.x + arg_0.x))))));
    var var_1 = vec2<bool>(true, true);
    var var_2 = Struct_4(2147483647i, _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(1172f, 939f, global3[_wgslsmith_index_u32(global0.c, 5u)]) * _wgslsmith_f_op_vec3_f32(func_3(vec3<u32>(4294967295u, 4294967295u, global0.c)))))), ~_wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(68529u, u_input.e.x, 0u, 0u) >> (u_input.e % vec4<u32>(32u)), _wgslsmith_add_vec4_u32(u_input.e, vec4<u32>(257u, 4294967295u, arg_2, arg_2))), abs(~global0.c), firstLeadingBit(56793u)));
    var_1 = !vec2<bool>(true, all(vec4<bool>(var_1.x, all(vec2<bool>(var_1.x, true)), true, true)));
    return _wgslsmith_f_op_vec3_f32(func_3(~(~select(u_input.e.zzw ^ u_input.e.yyw, ~u_input.e.xxy, vec3<bool>(var_1.x, var_1.x, false))))).x;
}

fn func_1() -> vec2<u32> {
    var var_0 = vec2<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-3214f + -1000f)), _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec2_f32(round(global0.b.yz)), -190f, global0.c))))), global0.b.x);
    global1 = _wgslsmith_sub_vec2_i32(vec2<i32>(-5387i, -abs(_wgslsmith_dot_vec3_i32(global2.xyw, global2.xww))), vec2<i32>(~(~abs(global0.a)), -2147483647i));
    let var_1 = ~_wgslsmith_mod_vec2_u32(vec2<u32>(_wgslsmith_sub_u32(_wgslsmith_mod_u32(u_input.e.x, 4294967295u), u_input.e.x), _wgslsmith_dot_vec3_u32(u_input.e.zwy, u_input.e.xww ^ u_input.e.yyz)), ~vec2<u32>(abs(u_input.a.x), _wgslsmith_mult_u32(0u, 4294967295u)));
    let var_2 = u_input.e.xxw;
    global0 = Struct_4(select(0i, _wgslsmith_sub_i32(min(global0.a, global1.x), firstTrailingBit(global2.x)), !all(vec3<bool>(true, false, true))) >> (1u % 32u), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(floor(global3[_wgslsmith_index_u32(var_1.x, 5u)])), _wgslsmith_f_op_f32(global4[_wgslsmith_index_u32(4294967295u, 24u)] - -241f), _wgslsmith_f_op_f32(step(global3[_wgslsmith_index_u32(global0.c, 5u)], global0.b.x))))), global0.b), ~_wgslsmith_dot_vec2_u32(~_wgslsmith_mult_vec2_u32(var_1, u_input.e.zy), ~var_2.xy));
    return ~(~var_2.xz) | ~(~u_input.e.ww >> (vec2<u32>(abs(var_2.x), _wgslsmith_sub_u32(var_2.x, u_input.e.x)) % vec2<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(abs(func_1() ^ u_input.e.ww), Struct_1(true), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_div_vec3_f32(global0.b, _wgslsmith_f_op_vec3_f32(round(vec3<f32>(2280f, -356f, global4[_wgslsmith_index_u32(31966u, 24u)])))) + global0.b)));
    var var_1 = Struct_5(((~vec2<u32>(827u, global0.c) | (u_input.a << (vec2<u32>(u_input.e.x, 1u) % vec2<u32>(32u)))) & vec2<u32>(var_0.a.x & var_0.a.x, global0.c)) & vec2<u32>(var_0.a.x, 22993u), Struct_1(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(3093u, 5u)] + -261f))) > _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global3[_wgslsmith_index_u32(1u, 5u)] - -1334f) - -1224f)), Struct_3(u_input.e.yy, Struct_1(all(!vec4<bool>(var_0.b.a, true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(max(var_0.c, vec3<f32>(global4[_wgslsmith_index_u32(35504u, 24u)], var_0.c.x, global3[_wgslsmith_index_u32(1u, 5u)]))))))), _wgslsmith_sub_vec3_u32(vec3<u32>(u_input.a.x, global0.c, countOneBits(4294967295u)), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(var_0.a.x, var_0.a.x, u_input.a.x), _wgslsmith_mod_vec3_u32(u_input.e.zzy, vec3<u32>(u_input.e.x, u_input.e.x, 37046u)), vec3<u32>(global0.c, u_input.e.x, global0.c))), firstTrailingBit(vec4<i32>(u_input.c, 1i, firstLeadingBit(max(-42149i, global0.a)), ~global0.a)));
    let x = u_input.a;
    s_output = StorageBuffer(58683i);
}

