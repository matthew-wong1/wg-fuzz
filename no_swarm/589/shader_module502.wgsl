struct Struct_1 {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct Struct_2 {
    a: vec4<i32>,
}

struct Struct_3 {
    a: Struct_1,
    b: i32,
    c: u32,
}

struct Struct_4 {
    a: Struct_2,
    b: Struct_1,
    c: vec4<f32>,
    d: i32,
    e: Struct_1,
}

struct Struct_5 {
    a: Struct_3,
    b: vec4<f32>,
    c: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: Struct_4;

var<private> global2: bool = true;

var<private> global3: Struct_3;

var<private> global4: i32 = 27256i;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32) -> vec2<bool> {
    var var_0 = Struct_5(Struct_3(Struct_1(_wgslsmith_mult_vec2_u32(vec2<u32>(global3.c, u_input.a), global0.yz), global1.e.b), countOneBits(max(2147483647i, -25523i)), u_input.a), _wgslsmith_f_op_vec4_f32(-global1.c), _wgslsmith_f_op_vec3_f32(-global1.c.yyx));
    var var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(ceil(-2335f)), 950f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(143f + var_0.b.x) * _wgslsmith_f_op_f32(f32(-1f) * -195f)));
    global4 = _wgslsmith_div_i32(u_input.b, (var_0.a.b >> (abs(0u) % 32u)) << (global1.b.a.x % 32u)) << (_wgslsmith_mod_u32(50546u, var_0.a.c) % 32u);
    var var_2 = Struct_4(Struct_2(abs(-max(vec4<i32>(global3.b, 1i, global1.a.a.x, 1i), global1.a.a))), var_0.a.a, _wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-var_0.b) * vec4<f32>(_wgslsmith_f_op_f32(var_0.c.x - -135f), -285f, var_0.c.x, var_0.c.x)))), global1.d, var_0.a.a);
    var var_3 = select(vec2<bool>(!(_wgslsmith_f_op_f32(min(global1.c.x, var_2.c.x)) == _wgslsmith_f_op_f32(f32(-1f) * -815f)), any(vec3<bool>(true, true, true))), vec2<bool>(!any(vec4<bool>(true, true, false, false)), false), abs(_wgslsmith_dot_vec3_i32(~var_2.a.a.zyz, ~global1.a.a.zyz)) >= 15623i);
    return vec2<bool>(var_0.a.b <= (i32(-1i) * -2147483647i), !all(select(!vec3<bool>(var_3.x, false, var_3.x), select(vec3<bool>(true, true, false), vec3<bool>(var_3.x, false, var_3.x), vec3<bool>(false, var_3.x, false)), !vec3<bool>(true, var_3.x, false))));
}

fn func_2(arg_0: vec2<u32>) -> bool {
    global4 = u_input.b;
    let var_0 = global1.c.zzw;
    global2 = var_0.x == _wgslsmith_f_op_f32(select(global1.c.x, _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_0.x))), !(!any(vec4<bool>(true, false, true, false)))));
    global4 = -global1.a.a.x;
    global3 = Struct_3(global1.e, global1.a.a.x, abs(_wgslsmith_dot_vec4_u32(vec4<u32>(global0.x, _wgslsmith_add_u32(46499u, global1.e.a.x), ~46722u, select(global0.x, global0.x, false)), min(_wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.a, 1u, global1.b.b.x, 472u), vec4<u32>(29432u, 1u, 1u, 1u), vec4<u32>(arg_0.x, 0u, 35624u, 28189u)), abs(vec4<u32>(global3.a.a.x, global1.e.a.x, 10409u, global1.e.a.x))))));
    return select(global1.c.x < var_0.x, !any(vec4<bool>(true, true, true, true)), all(select(vec2<bool>(true, true), vec2<bool>(true, true), func_3(0i)))) | true;
}

fn func_1(arg_0: vec3<u32>, arg_1: i32, arg_2: Struct_2, arg_3: i32) -> vec3<f32> {
    let var_0 = !select(vec3<bool>((25070u << (u_input.a % 32u)) > arg_0.x, all(vec3<bool>(true, true, true)), any(vec4<bool>(true, true, true, true))), !vec3<bool>(u_input.a != u_input.a, any(vec3<bool>(false, true, true)), false), func_2(global1.b.a));
    let var_1 = _wgslsmith_f_op_f32(sign(-1400f));
    global4 = 0i & -countOneBits(global3.b);
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(214f, _wgslsmith_f_op_f32(-820f - var_1), 130f)) + _wgslsmith_f_op_vec3_f32(-global1.c.ywz)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = true;
    global0 = ~vec3<u32>(10184u, _wgslsmith_mult_u32(global0.x, (1u >> (u_input.a % 32u)) ^ ~global3.a.a.x), 1u);
    let var_1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.c.x, -1000f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(global1.c.x)) - 1014f)) - _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_div_vec3_u32(select(vec3<u32>(1u, 0u, global3.c), vec3<u32>(3521u, global1.e.b.x, global1.b.b.x), vec3<bool>(true, var_0, var_0)), vec3<u32>(u_input.a, 72431u, global0.x)), global3.b, global1.a, 37965i))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-global1.c.wyy) + _wgslsmith_f_op_vec3_f32(max(vec3<f32>(1000f, 908f, global1.c.x), _wgslsmith_f_op_vec3_f32(vec3<f32>(-1668f, -868f, global1.c.x) - vec3<f32>(global1.c.x, -481f, 756f))))) + vec3<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(762f - global1.c.x), _wgslsmith_f_op_f32(floor(673f)))), _wgslsmith_f_op_f32(max(global1.c.x, _wgslsmith_f_op_f32(global1.c.x - 733f))), _wgslsmith_f_op_vec3_f32(func_1(_wgslsmith_mult_vec3_u32(vec3<u32>(125260u, 8478u, u_input.a), vec3<u32>(21261u, global3.a.a.x, global3.c)), global3.b, Struct_2(global1.a.a), 30240i)).x)));
    var var_2 = Struct_4(global1.a, global1.e, vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-global1.c.x), -499f)), -1135f, var_0)), _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(ceil(294f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -750f) + -1437f), 1i < countOneBits(global3.b))), _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-var_1.x))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(-476f)) * -691f) - _wgslsmith_f_op_f32(global1.c.x - -844f))), ~(-global1.a.a.x), global3.a);
    global2 = any(select(vec3<bool>(false, !all(vec3<bool>(true, var_0, true)), all(vec4<bool>(false, true, false, true))), !vec3<bool>(true, var_0 || var_0, true), true && !(var_2.d != u_input.b)));
    var_2 = Struct_4(var_2.a, var_2.e, _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(step(global1.c, var_2.c)), _wgslsmith_f_op_vec4_f32(vec4<f32>(158f, 1000f, global1.c.x, var_1.x) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(var_2.c.x, 1261f, -448f, -407f))))), vec4<f32>(-1375f, _wgslsmith_f_op_f32(round(var_2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.c.x)) + _wgslsmith_f_op_f32(sign(global1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(327f))))), (-1i >> (_wgslsmith_mult_u32(_wgslsmith_mult_u32(39234u, 23506u), abs(u_input.a)) % 32u)) | ((21838i & (global1.a.a.x >> (0u % 32u))) >> (abs(var_2.b.a.x) % 32u)), global3.a);
    let var_3 = Struct_4(global1.a, Struct_1(firstLeadingBit(reverseBits(~vec2<u32>(4294967295u, global0.x))), firstTrailingBit(abs(~var_2.e.a))), vec4<f32>(var_1.x, -234f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(global1.c.x, var_2.c.x) + _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(1000f)), 1590f))), var_2.c.x), _wgslsmith_add_i32(global3.b & ((global1.d & -8021i) ^ abs(global1.a.a.x)), 2147483647i), Struct_1(~global1.e.b, max(~vec2<u32>(var_2.b.a.x, global1.e.a.x), global1.e.b)));
    global2 = select(true, var_0 || ((var_0 && (var_1.x > global1.c.x)) || any(vec4<bool>(var_0, var_0, true, var_0))), global1.c.x == _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)))));
    let x = u_input.a;
    s_output = StorageBuffer(4294967295u);
}

