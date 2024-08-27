struct Struct_1 {
    a: vec3<bool>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: i32,
}

struct Struct_2 {
    a: i32,
    b: vec3<f32>,
    c: vec4<i32>,
    d: u32,
}

struct Struct_3 {
    a: bool,
}

struct Struct_4 {
    a: u32,
    b: vec3<u32>,
    c: vec3<f32>,
    d: Struct_3,
    e: vec3<bool>,
}

struct Struct_5 {
    a: u32,
    b: i32,
    c: Struct_2,
    d: u32,
    e: u32,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: Struct_1;

var<private> global2: array<Struct_3, 12> = array<Struct_3, 12>(Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(false), Struct_3(true), Struct_3(true), Struct_3(true), Struct_3(true));

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_3(arg_0: f32, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_vec3_f32(-arg_1.b);
    global2 = array<Struct_3, 12>();
    let var_1 = ~arg_1.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(165f - 557f)) - 1134f));
    var var_3 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(792f, _wgslsmith_f_op_f32(trunc(1f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(var_0.yx - _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-arg_1.b.yz)))) * _wgslsmith_f_op_vec2_f32(var_0.zy - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(var_0.xz)) * _wgslsmith_f_op_vec2_f32(vec2<f32>(-1029f, -152f) - var_0.yx)))));
    return reverseBits(~vec3<u32>(min(var_1, arg_1.d), global0.d, 0u)) >> (~vec3<u32>(arg_1.d, 35542u >> (_wgslsmith_mult_u32(var_1, 8625u) % 32u), var_1) % vec3<u32>(32u));
}

fn func_2(arg_0: bool) -> Struct_2 {
    let var_0 = Struct_3(global1.a.x);
    global0 = Struct_2(abs(_wgslsmith_dot_vec3_i32(global0.c.yxy, global0.c.xww)), global0.b, vec4<i32>(global0.a, global1.b.x, u_input.a, reverseBits(u_input.a)), ~global0.d);
    global0 = Struct_2(u_input.a, global0.b, global0.c, countOneBits(_wgslsmith_dot_vec3_u32(vec3<u32>(41003u, global0.d, global0.d) << (vec3<u32>(21578u, global0.d, 14702u) % vec3<u32>(32u)), func_3(-1186f, Struct_2(global1.b.x, global0.b, global0.c, global0.d)))) << (~12897u % 32u));
    let var_1 = Struct_4(_wgslsmith_mult_u32(33861u, 17597u), _wgslsmith_sub_vec3_u32(vec3<u32>(_wgslsmith_mult_u32(~global0.d, _wgslsmith_mod_u32(92581u, 57311u)), 0u, 4294967295u), ~vec3<u32>(~4294967295u, global0.d, abs(global0.d))), _wgslsmith_f_op_vec3_f32(-global0.b), Struct_3(all(select(select(vec4<bool>(var_0.a, true, var_0.a, global1.a.x), vec4<bool>(true, true, true, var_0.a), vec4<bool>(false, var_0.a, global1.a.x, arg_0)), select(vec4<bool>(arg_0, true, var_0.a, var_0.a), vec4<bool>(global1.a.x, false, true, var_0.a), var_0.a), !vec4<bool>(false, var_0.a, false, var_0.a)))), vec3<bool>(!all(!global1.a.yz), _wgslsmith_div_u32(global0.d, global0.d) < 21284u, arg_0));
    var var_2 = _wgslsmith_f_op_f32(var_1.c.x * -1415f);
    return Struct_2(select(global1.d, 0i, var_0.a), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-var_1.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-114f * -773f)), _wgslsmith_f_op_f32(min(global1.c.x, _wgslsmith_f_op_f32(var_1.c.x + var_1.c.x)))), vec3<f32>(global0.b.x, -459f, _wgslsmith_f_op_f32(-813f - 1f))), global0.c, ~_wgslsmith_dot_vec2_u32(vec2<u32>(max(1u, var_1.b.x), 0u), var_1.b.zz));
}

fn func_1() -> f32 {
    global0 = func_2(select(((global1.a.x && false) & global1.a.x) | false, any(vec4<bool>(true, !global1.a.x, true, any(vec3<bool>(global1.a.x, true, global1.a.x)))), true));
    global0 = func_2(all(select(select(global1.a, global1.a, vec3<bool>(global1.a.x, global1.a.x, false)), !global1.a, global1.a.x)));
    let var_0 = global0.d;
    global0 = Struct_2(-(~1132i), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(651f - global0.b.x), global1.c.x, 176f) - vec3<f32>(_wgslsmith_f_op_f32(global0.b.x * -175f), _wgslsmith_f_op_f32(-1327f * global1.c.x), _wgslsmith_f_op_f32(max(global0.b.x, -582f)))) - _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.c.x, global0.b.x, global0.b.x))))), _wgslsmith_clamp_vec4_i32(global0.c, vec4<i32>(countOneBits(global0.a), global0.c.x, select(9036i, global0.a, global1.a.x), 1i), _wgslsmith_mult_vec4_i32(min(vec4<i32>(global0.c.x, -31179i, global1.b.x, global0.a), global0.c), -global0.c)) & -select(-global0.c, global0.c, global1.a.x), firstLeadingBit(_wgslsmith_clamp_u32(~global0.d, global0.d, ~global0.d)) & ~(~abs(global0.d)));
    global0 = func_2(global1.a.x);
    return _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -(~global0.c.zxx);
    let var_1 = _wgslsmith_add_vec4_i32(global0.c, vec4<i32>(_wgslsmith_sub_i32(global1.b.x, abs(var_0.x) ^ (var_0.x << (global0.d % 32u))), ~reverseBits(0i), u_input.a, _wgslsmith_div_i32(firstTrailingBit(countOneBits(var_0.x)), global1.b.x)));
    global1 = Struct_1(vec3<bool>(~_wgslsmith_add_u32(global0.d, global0.d) > firstLeadingBit(global0.d), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_1())) < _wgslsmith_div_f32(func_2(global1.a.x).b.x, _wgslsmith_f_op_f32(select(-582f, global1.c.x, false))), global1.a.x), vec2<i32>(_wgslsmith_mult_i32(min(61156i, -2147483647i), _wgslsmith_dot_vec2_i32(vec2<i32>(-1i, 1i), vec2<i32>(-12377i, 2147483647i))), -19135i) >> ((_wgslsmith_add_vec2_u32(firstLeadingBit(vec2<u32>(global0.d, global0.d)), firstTrailingBit(vec2<u32>(global0.d, global0.d))) & ~select(vec2<u32>(4294967295u, global0.d), vec2<u32>(global0.d, 122549u), vec2<bool>(false, global1.a.x))) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.c) + vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global1.c.x)), 221f)), _wgslsmith_dot_vec4_i32(var_1, var_1 | vec4<i32>(-2147483647i, var_0.x, -4020i, 1i)));
    let var_2 = _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-448f, global1.c.x, _wgslsmith_f_op_f32(global1.c.x * global1.c.x), global1.c.x)))))));
    global0 = Struct_2(-_wgslsmith_mult_i32(i32(-1i) * -var_0.x, ~(~u_input.a)), _wgslsmith_f_op_vec3_f32(-global0.b), global0.c & firstTrailingBit(var_1), 38100u);
    global1 = Struct_1(select(select(global1.a, global1.a, vec3<bool>(all(global1.a), all(vec4<bool>(true, false, true, false)), false)), select(global1.a, vec3<bool>(false, global1.a.x, false), select(global1.a, global1.a, !global1.a)), !global1.a), var_0.zx, global1.c, -1i & _wgslsmith_mod_i32(_wgslsmith_mult_i32(-global1.b.x, _wgslsmith_mult_i32(-35677i, 0i)), u_input.a));
    let var_3 = var_1.x;
    global1 = Struct_1(!select(global1.a, !global1.a, !select(global1.a, vec3<bool>(false, global1.a.x, false), false)), var_0.yx, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, -1424f) + vec2<f32>(_wgslsmith_f_op_f32(-global0.b.x), 1000f))), var_3);
    let x = u_input.a;
    s_output = StorageBuffer(~_wgslsmith_div_u32(global0.d, ~abs(1894u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-var_2.zz))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(var_2.zx)) - vec2<f32>(func_2(global1.a.x).b.x, _wgslsmith_f_op_f32(f32(-1f) * -1625f))))), ~global0.d);
}

