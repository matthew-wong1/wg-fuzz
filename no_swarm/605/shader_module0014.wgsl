struct Struct_1 {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
}

struct Struct_2 {
    a: i32,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
    b: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: i32,
    c: vec4<u32>,
    d: bool,
}

struct Struct_5 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec2<bool>,
    e: Struct_3,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
    c: f32,
    d: i32,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_5;

var<private> global1: Struct_5;

var<private> global2: array<vec4<i32>, 24>;

var<private> global3: vec4<bool> = vec4<bool>(false, false, false, true);

var<private> global4: Struct_4 = Struct_4(Struct_3(Struct_1(2579i, -1i, vec3<i32>(2147483647i, 1i, 30845i), vec4<u32>(29829u, 3568u, 2851u, 4294967295u)), vec4<f32>(736f, -746f, 1533f, -565f)), 51929i, vec4<u32>(1u, 4294967295u, 19832u, 4294967295u), false);

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_2(arg_0: u32, arg_1: vec3<f32>) -> Struct_3 {
    let var_0 = global3.ww;
    global1 = Struct_5(global1.e.b.x >= _wgslsmith_f_op_f32(max(-579f, arg_1.x)), Struct_2(_wgslsmith_dot_vec3_i32(-_wgslsmith_div_vec3_i32(vec3<i32>(-2147483647i, global4.a.a.b, global0.e.a.c.x), vec3<i32>(global0.e.a.b, -34598i, -69389i)), global1.b.b.c), global4.a.a, global4.a.a), arg_0, !vec2<bool>(!var_0.x && global1.d.x, _wgslsmith_div_f32(arg_1.x, -795f) < _wgslsmith_f_op_f32(-global1.e.b.x)), Struct_3(global0.b.b, vec4<f32>(global4.a.b.x, _wgslsmith_f_op_f32(210f + _wgslsmith_f_op_f32(f32(-1f) * -297f)), _wgslsmith_f_op_f32(ceil(global0.e.b.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(383f + global1.e.b.x)))));
    var var_1 = vec4<u32>(global1.c >> (_wgslsmith_dot_vec4_u32(vec4<u32>(18222u, 0u, global1.e.a.d.x, global1.c) ^ _wgslsmith_mult_vec4_u32(global1.e.a.d, global0.e.a.d), ~global4.c | global1.b.c.d) % 32u), firstLeadingBit(19114u), global1.b.b.d.x, _wgslsmith_add_u32(_wgslsmith_div_u32(arg_0, 39528u), ~global4.a.a.d.x));
    global2 = array<vec4<i32>, 24>();
    var_1 = ~global0.b.c.d;
    return Struct_3(Struct_1(-2147483647i, -314i, _wgslsmith_div_vec3_i32(max(reverseBits(global1.b.b.c), -global4.a.a.c), global4.a.a.c), ~global1.e.a.d), vec4<f32>(_wgslsmith_f_op_f32(-global1.e.b.x), 593f, -514f, global1.e.b.x));
}

fn func_1(arg_0: i32, arg_1: vec3<u32>) -> i32 {
    let var_0 = func_2(global1.e.a.d.x, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(-132f, -782f, -1496f) - _wgslsmith_f_op_vec3_f32(global4.a.b.xxw - global0.e.b.xzy))))));
    let var_1 = !select(global4.d & all(vec3<bool>(global1.d.x, global4.d, true)), all(vec4<bool>(any(vec2<bool>(global1.a, true)), global4.d, !global1.a, all(vec4<bool>(global4.d, global1.d.x, global0.a, global4.d)))), -1i <= (i32(-1i) * -global1.e.a.c.x));
    let var_2 = global1.b;
    let var_3 = global2[_wgslsmith_index_u32(_wgslsmith_mod_u32(_wgslsmith_mod_u32(_wgslsmith_add_u32(firstLeadingBit(var_2.c.d.x | 1u), ~arg_1.x), 38197u), ~_wgslsmith_clamp_u32(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, global4.a.a.d.x), 1u), ~40345u | ~u_input.b, global1.b.c.d.x)), 24u)];
    var var_4 = _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-global1.e.b.xzz)));
    return var_2.a;
}

fn func_3(arg_0: Struct_5, arg_1: vec4<u32>) -> i32 {
    let var_0 = select(!(!vec2<bool>(!global0.a, true)), global3.wx, !global0.d.x);
    let var_1 = Struct_2(_wgslsmith_dot_vec4_i32(vec4<i32>(0i | global1.b.b.c.x, -global0.e.a.c.x, func_2(u_input.a, global0.e.b.wxw).a.b, global1.e.a.b), ~global2[_wgslsmith_index_u32(arg_0.c, 24u)] & ~global2[_wgslsmith_index_u32(arg_1.x, 24u)]) & global1.e.a.c.x, arg_0.e.a, arg_0.b.b);
    let var_2 = countOneBits(var_1.a);
    let var_3 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(133f, _wgslsmith_f_op_f32(abs(_wgslsmith_div_f32(1390f, 1069f))), false))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-1410f, 729f)) + global4.a.b.x), global4.a.b.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.e.b.x + -669f) * _wgslsmith_f_op_f32(-global4.a.b.x)) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-822f * 971f) * _wgslsmith_f_op_f32(min(930f, global1.e.b.x)))) * -264f));
    var var_4 = arg_0.c;
    return ~(-global1.b.c.a);
}

fn func_4(arg_0: vec4<i32>) -> u32 {
    global2 = array<vec4<i32>, 24>();
    let var_0 = global1.d;
    let var_1 = vec2<i32>(~16966i, -6237i);
    global2 = array<vec4<i32>, 24>();
    global4 = Struct_4(global4.a, var_1.x << (_wgslsmith_div_u32(_wgslsmith_clamp_u32(reverseBits(u_input.a), ~global0.b.b.d.x, ~1u), abs(_wgslsmith_dot_vec2_u32(vec2<u32>(1u, 0u), global1.e.a.d.zw))) % 32u), vec4<u32>(abs(firstTrailingBit(0u) & global1.b.c.d.x), _wgslsmith_clamp_u32(1u, ~51086u, ~(~global0.c)), abs(1u) ^ (_wgslsmith_mod_u32(1u, global0.c) >> (~u_input.b % 32u)), reverseBits(~select(42343u, global0.b.c.d.x, global0.d.x))), !(global0.e.b.x < _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -473f)))));
    return countOneBits(1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = true;
    var var_1 = countOneBits(firstLeadingBit(_wgslsmith_mod_vec2_i32(global1.b.c.c.zx, vec2<i32>(-31722i, func_1(global1.e.a.b, vec3<u32>(global1.e.a.d.x, global1.b.b.d.x, 29781u))))));
    global4 = Struct_4(global1.e, global0.e.a.c.x, vec4<u32>(min(~(global4.a.a.d.x ^ 71946u), min(64054u, ~global4.c.x)), (global1.c >> (u_input.a % 32u)) | ~global0.e.a.d.x, _wgslsmith_dot_vec4_u32(max(vec4<u32>(41371u, global1.b.c.d.x, global4.a.a.d.x, 1u), vec4<u32>(14676u, 24463u, global1.c, 1u)), ~vec4<u32>(10817u, global1.c, u_input.a, 18291u)) & 4628u, ~reverseBits(global4.c.x) << ((reverseBits(global1.b.b.d.x) >> (~global0.e.a.d.x % 32u)) % 32u)), select(true, true, select(49029u ^ global1.c, 56386u, global3.x) > select(~17449u, global1.c, all(global3.xyx))));
    let var_2 = Struct_4(global0.e, -26442i, vec4<u32>(_wgslsmith_div_u32(_wgslsmith_dot_vec3_u32(global4.c.wzy | global1.e.a.d.zyy, vec3<u32>(global0.c, global4.c.x, 41673u) ^ vec3<u32>(global1.c, global0.b.b.d.x, u_input.b)), ~5759u | ~global4.c.x), _wgslsmith_div_u32(~1u, _wgslsmith_div_u32(~u_input.b, 71787u)), func_4(vec4<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(global0.b.a, var_1.x, -2147483647i, global1.b.c.c.x), vec4<i32>(18681i, -47667i, 18038i, global0.b.b.b)), min(global0.b.c.a, 0i), func_3(Struct_5(true, Struct_2(-31298i, global4.a.a, Struct_1(var_1.x, -2147483647i, global4.a.a.c, vec4<u32>(16870u, 48505u, global0.c, global0.e.a.d.x))), global1.b.c.d.x, global1.d, global1.e), vec4<u32>(global0.e.a.d.x, global0.c, 0u, u_input.b)), -30476i)), _wgslsmith_dot_vec2_u32(_wgslsmith_div_vec2_u32(select(global4.a.a.d.wx, global4.c.zw, global3.wx), ~global1.b.c.d.zz), max(global0.b.b.d.xz | vec2<u32>(u_input.b, 23262u), func_2(global1.b.b.d.x, global0.e.b.wxw).a.d.yw))), global0.a);
    let var_3 = var_2.d;
    let var_4 = var_2;
    var_0 = false;
    var_1 = global1.e.a.c.yy;
    var var_5 = var_2;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-var_2.a.b), u_input.b, 300f, func_1(abs(var_1.x), ~vec3<u32>(4294967295u, 1u, global0.b.c.d.x << (88563u % 32u))), vec2<i32>(func_2(50520u, vec3<f32>(895f, _wgslsmith_f_op_f32(global4.a.b.x - var_2.a.b.x), -601f)).a.c.x, 2147483647i));
}

