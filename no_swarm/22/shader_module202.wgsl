struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: f32,
    d: f32,
}

struct Struct_2 {
    a: f32,
    b: vec2<f32>,
    c: u32,
    d: Struct_1,
    e: vec3<u32>,
}

struct Struct_3 {
    a: Struct_2,
    b: f32,
}

struct Struct_4 {
    a: Struct_2,
    b: vec2<u32>,
    c: Struct_2,
    d: bool,
}

struct Struct_5 {
    a: vec3<f32>,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: u32,
    b: u32,
    c: f32,
    d: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3 = Struct_3(Struct_2(-1041f, vec2<f32>(-680f, -1247f), 4194u, Struct_1(vec3<i32>(17584i, -27611i, -19025i), 3509f, -252f, 1178f), vec3<u32>(1u, 4294967295u, 4294967295u)), -1039f);

var<private> global1: Struct_4 = Struct_4(Struct_2(533f, vec2<f32>(322f, -625f), 4294967295u, Struct_1(vec3<i32>(i32(-2147483648), 46271i, 13146i), -639f, -847f, -192f), vec3<u32>(60213u, 1u, 4294967295u)), vec2<u32>(0u, 1u), Struct_2(1364f, vec2<f32>(-192f, 153f), 14162u, Struct_1(vec3<i32>(-14233i, 0i, 0i), 1716f, 1404f, 713f), vec3<u32>(1u, 1u, 32809u)), true);

var<private> global2: array<vec3<f32>, 22> = array<vec3<f32>, 22>(vec3<f32>(785f, 1170f, 809f), vec3<f32>(240f, -458f, -614f), vec3<f32>(489f, 1686f, -540f), vec3<f32>(-1889f, 432f, -813f), vec3<f32>(-1131f, -1046f, 1188f), vec3<f32>(1075f, -648f, -231f), vec3<f32>(173f, -1868f, -282f), vec3<f32>(-398f, 860f, -781f), vec3<f32>(127f, 159f, 737f), vec3<f32>(-809f, 970f, -475f), vec3<f32>(-1186f, -1139f, -1929f), vec3<f32>(762f, 1826f, 727f), vec3<f32>(-420f, 120f, -544f), vec3<f32>(-1908f, 1662f, -1077f), vec3<f32>(2552f, 279f, 1039f), vec3<f32>(-770f, 964f, -731f), vec3<f32>(683f, -1141f, 1058f), vec3<f32>(-1649f, -1800f, 891f), vec3<f32>(-299f, -720f, 1753f), vec3<f32>(-1000f, -1000f, 435f), vec3<f32>(-599f, 493f, 547f), vec3<f32>(-1161f, -863f, 152f));

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: bool) -> bool {
    var var_0 = global0.a.e;
    var var_1 = vec4<i32>(_wgslsmith_sub_i32(firstTrailingBit(46897i), 1i), 2147483647i, u_input.a.x, global0.a.d.a.x);
    var_0 = ~global1.a.e;
    let var_2 = ~(_wgslsmith_div_vec4_u32(~(vec4<u32>(1u, 28820u, var_0.x, 9813u) & vec4<u32>(0u, 0u, var_0.x, var_0.x)), vec4<u32>(global1.c.e.x, global0.a.c, global1.a.c, var_0.x) & vec4<u32>(global0.a.e.x, global1.b.x, global1.c.c, 0u)) >> ((~(~vec4<u32>(0u, global0.a.e.x, global1.a.e.x, var_0.x)) | firstLeadingBit(countOneBits(vec4<u32>(global1.a.c, global1.b.x, 134537u, global1.b.x)))) % vec4<u32>(32u)));
    var var_3 = abs(vec2<i32>(~global1.a.d.a.x, ~(-16478i))) | (vec2<i32>(_wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, 0i, u_input.a.x, global1.a.d.a.x), vec4<i32>(34812i, -2147483647i, 2147483647i, u_input.a.x)), 2147483647i, _wgslsmith_mod_i32(u_input.a.x, var_1.x)), _wgslsmith_clamp_i32(1i, firstTrailingBit(u_input.a.x), u_input.a.x & var_1.x)) >> (vec2<u32>(select(var_0.x, _wgslsmith_dot_vec2_u32(var_2.yw, vec2<u32>(var_2.x, 4294967295u)), arg_0 && true), firstLeadingBit(33452u)) % vec2<u32>(32u)));
    return false;
}

fn func_2(arg_0: bool) -> f32 {
    var var_0 = -652f;
    global0 = Struct_3(global1.a, global0.a.d.c);
    var var_1 = global1.c.d;
    global1 = Struct_4(Struct_2(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(exp2(global1.c.b.x)), -660f)), global0.a.b, abs(~4294967295u) | max(51972u ^ global1.a.e.x, global0.a.c), Struct_1(global0.a.d.a, -2239f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global0.b), global1.c.a)), -874f), select(min(firstTrailingBit(global1.c.e), vec3<u32>(95034u, global0.a.e.x, global1.a.e.x)), reverseBits(vec3<u32>(87061u, global1.b.x, global0.a.c)), vec3<bool>(func_3(true), true & arg_0, global1.d))), global1.a.e.xy, global0.a, _wgslsmith_f_op_f32(floor(-1493f)) < _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -217f))))));
    var var_2 = vec3<f32>(var_1.c, -1581f, 1f);
    return 971f;
}

fn func_1() -> Struct_4 {
    global2 = array<vec3<f32>, 22>();
    var var_0 = 32096u;
    let var_1 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(abs(~global1.a.c), 22u)]) + global2[_wgslsmith_index_u32(~(4294967295u ^ global1.a.c), 22u)]), global0.a.d, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(global0.a.d.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(global0.b)) + _wgslsmith_f_op_f32(f32(-1f) * -567f)), global1.a.d.c, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-global0.a.d.b))))));
    return Struct_4(Struct_2(var_1.c.x, _wgslsmith_f_op_vec2_f32(max(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global1.c.b * vec2<f32>(global1.a.a, -438f))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-1327f, -356f)))), global1.a.c, Struct_1(abs(global1.a.d.a ^ global0.a.d.a), 152f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1678f * var_1.b.d), _wgslsmith_f_op_f32(func_2(false)), all(vec2<bool>(true, global1.d)))), _wgslsmith_f_op_f32(-global0.b)), vec3<u32>(1u, _wgslsmith_div_u32(1u, 41256u) << (min(4294967295u, global1.c.e.x) % 32u), min(5660u << (global1.b.x % 32u), 40732u))), global0.a.e.xz, global1.c, true);
}

fn func_4(arg_0: Struct_4, arg_1: vec2<f32>, arg_2: vec3<i32>, arg_3: Struct_4) -> u32 {
    var var_0 = arg_0.c.b.x;
    let var_1 = _wgslsmith_clamp_vec4_u32(~vec4<u32>(_wgslsmith_mod_u32(~global0.a.e.x, 30024u), ~arg_3.b.x, global0.a.e.x, _wgslsmith_clamp_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, arg_3.b.x, 0u), vec4<u32>(22270u, arg_0.a.e.x, 1u, 0u)), countOneBits(4294967295u), abs(arg_3.c.e.x))), abs(vec4<u32>(global0.a.e.x ^ ~global0.a.e.x, ~abs(global0.a.c), _wgslsmith_sub_u32(1u, ~global1.c.e.x), _wgslsmith_dot_vec3_u32(vec3<u32>(13200u, 34227u, arg_3.a.e.x), vec3<u32>(arg_0.c.c, arg_3.b.x, global1.c.c)) >> (global1.b.x % 32u))), _wgslsmith_clamp_vec4_u32(countOneBits(~(~vec4<u32>(2069u, global0.a.c, 4294967295u, global1.b.x))), vec4<u32>(global1.b.x, ~_wgslsmith_div_u32(35801u, arg_0.c.c), _wgslsmith_clamp_u32(max(arg_0.b.x, 0u), 41919u, ~global1.a.c), ~reverseBits(0u)), max(_wgslsmith_sub_vec4_u32(~vec4<u32>(51955u, 0u, 0u, 4294967295u), _wgslsmith_mod_vec4_u32(vec4<u32>(global1.b.x, 4294967295u, arg_0.c.c, global1.a.c), vec4<u32>(global0.a.e.x, arg_3.c.c, global0.a.e.x, global0.a.c))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, 9718u, global0.a.e.x, arg_0.a.c) >> (vec4<u32>(37611u, 4294967295u, global1.a.c, arg_3.c.e.x) % vec4<u32>(32u)), reverseBits(vec4<u32>(4294967295u, 1u, 59414u, arg_0.b.x))))));
    var var_2 = arg_3.d;
    var var_3 = arg_0;
    var var_4 = Struct_5(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(arg_3.a.b.x + global1.a.b.x), global0.b, 1f) + _wgslsmith_f_op_vec3_f32(-global2[_wgslsmith_index_u32(global0.a.c, 22u)])) * global2[_wgslsmith_index_u32(~1u, 22u)]), arg_3.c.d, _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(2285f, arg_0.a.b.x, arg_1.x, arg_3.c.a))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-395f, var_3.c.a, -141f, 657f) * vec4<f32>(global0.b, -1565f, arg_3.c.a, -1000f)))))));
    return max(abs(69036u), var_3.b.x);
}

@compute
@workgroup_size(1)
fn main() {
    global2 = array<vec3<f32>, 22>();
    let var_0 = func_4(func_1(), global1.a.b, -(min(_wgslsmith_sub_vec3_i32(vec3<i32>(u_input.a.x, -1i, -40071i), vec3<i32>(u_input.a.x, global1.c.d.a.x, global1.c.d.a.x)), select(global0.a.d.a, vec3<i32>(global0.a.d.a.x, 32128i, -18216i), global1.d)) & _wgslsmith_sub_vec3_i32(~vec3<i32>(global0.a.d.a.x, 11676i, global0.a.d.a.x), ~global1.a.d.a)), func_1());
    let var_1 = Struct_1(global0.a.d.a, _wgslsmith_f_op_f32(global0.a.d.c - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-948f - 229f)), global0.a.b.x))), global1.c.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.c.b.x + -1535f)));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1000f + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-318f * -972f)) + global1.c.b.x)));
    global1 = Struct_4(func_1().a, _wgslsmith_mod_vec2_u32(vec2<u32>(~(~var_0), 19074u ^ ~var_0), ~global0.a.e.zz), Struct_2(_wgslsmith_div_f32(_wgslsmith_div_f32(global1.c.b.x, -1000f), _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(floor(1081f))))), _wgslsmith_f_op_vec2_f32(-global0.a.b), _wgslsmith_div_u32(global1.a.e.x, 1946u), Struct_1(global1.c.d.a | vec3<i32>(2147483647i, 37715i, 1i), 156f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1376f)), -1608f), vec3<u32>(~_wgslsmith_dot_vec3_u32(vec3<u32>(26047u, 4294967295u, global1.c.e.x), global0.a.e), ~var_0, 40041u)), all(!vec4<bool>(global1.d, global1.d, global1.d, true)) & func_3(select(global1.d, all(vec4<bool>(global1.d, false, true, global1.d)), global1.d)));
    var var_3 = !global1.d;
    let x = u_input.a;
    s_output = StorageBuffer(~func_1().a.c | ~0u, ~func_4(Struct_4(Struct_2(var_1.c, vec2<f32>(global0.a.b.x, global0.b), global1.c.e.x, global0.a.d, vec3<u32>(global1.c.c, var_0, 14406u)), global0.a.e.zx, global0.a, true), vec2<f32>(_wgslsmith_f_op_f32(step(var_1.c, var_2)), _wgslsmith_div_f32(global0.a.d.b, -232f)), vec3<i32>(global1.c.d.a.x, firstTrailingBit(var_1.a.x), -1i), Struct_4(func_1().c, global1.b, func_1().a, func_3(false))), _wgslsmith_f_op_f32(func_2(true)), 1548f);
}

