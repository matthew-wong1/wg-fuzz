struct Struct_1 {
    a: vec4<f32>,
    b: i32,
    c: vec3<u32>,
    d: i32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: Struct_1,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: vec4<u32>,
    b: Struct_1,
    c: vec2<f32>,
    d: Struct_1,
    e: u32,
}

struct Struct_5 {
    a: vec4<f32>,
    b: f32,
    c: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec2<i32>,
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

var<private> global0: Struct_2;

var<private> global1: array<vec2<bool>, 19> = array<vec2<bool>, 19>(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false));

var<private> global2: vec3<i32>;

var<private> global3: Struct_1;

var<private> global4: vec3<f32> = vec3<f32>(505f, 761f, -840f);

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn func_3() -> vec3<u32> {
    var var_0 = _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-global0.a.a.wz), _wgslsmith_f_op_vec2_f32(-global4.zz)));
    let var_1 = Struct_2(Struct_1(global3.a, ~0i, global0.a.c, global0.b.b), Struct_1(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1276f, _wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(round(global0.b.a.x)), global4.x)), _wgslsmith_div_i32(firstLeadingBit(-global2.x), global0.c.d), global0.b.c, _wgslsmith_clamp_i32(_wgslsmith_div_i32(-global2.x, ~u_input.b), global3.d, u_input.e.x)), global0.a);
    global2 = _wgslsmith_mod_vec3_i32(vec3<i32>(global2.x, _wgslsmith_mult_i32(-select(-5973i, 0i, true), global0.b.b), global0.b.b >> (~61785u % 32u)), min(vec3<i32>(0i, reverseBits(_wgslsmith_mult_i32(11661i, global3.b)), -18569i), ~firstTrailingBit(min(vec3<i32>(-2147483647i, u_input.e.x, global2.x), vec3<i32>(var_1.b.b, global0.c.d, global2.x)))));
    let var_2 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) * _wgslsmith_div_f32(-2728f, _wgslsmith_f_op_f32(var_1.a.a.x * var_0.x)))), _wgslsmith_f_op_f32(ceil(-263f)), global4.x, global4.x);
    global3 = global0.a;
    return _wgslsmith_clamp_vec3_u32(global0.a.c, var_1.a.c, abs(~(~vec3<u32>(54223u, 1u, 4294967295u))) >> (((vec3<u32>(global0.c.c.x, 0u, 87621u) << (global3.c % vec3<u32>(32u))) >> (vec3<u32>(0u, abs(1u), u_input.d) % vec3<u32>(32u))) % vec3<u32>(32u)));
}

fn func_2(arg_0: f32) -> Struct_5 {
    var var_0 = any(!select(select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), true), select(vec3<bool>(true, true, true), vec3<bool>(false, false, false), select(vec3<bool>(false, false, false), vec3<bool>(false, false, false), vec3<bool>(false, true, false))), vec3<bool>(true, any(vec3<bool>(false, true, true)), global0.c.a.x < arg_0)));
    var var_1 = abs(global0.c.c.x);
    let var_2 = Struct_1(_wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global4.x, _wgslsmith_div_f32(-1102f, 1656f), _wgslsmith_f_op_f32(-1357f + 598f), _wgslsmith_f_op_f32(-global0.b.a.x)), _wgslsmith_f_op_vec4_f32(-global0.c.a), false)))), firstTrailingBit(max(_wgslsmith_dot_vec2_i32(global2.zy, ~vec2<i32>(global0.c.d, global3.d)), 9724i)), abs(select(~func_3(), global0.a.c, !select(false, false, false))), max(abs(global0.c.b), firstLeadingBit(_wgslsmith_clamp_i32(abs(-2147483647i), abs(-1i), -9186i))));
    let var_3 = select(_wgslsmith_sub_vec3_i32(firstTrailingBit(max(vec3<i32>(-2147483647i, -1i, global0.c.b), vec3<i32>(global3.b, global3.b, global0.a.d))) | ~(vec3<i32>(26939i, -1i, u_input.c) << (global3.c % vec3<u32>(32u))), reverseBits(~abs(vec3<i32>(u_input.b, -1i, -27504i)))), vec3<i32>(_wgslsmith_sub_i32(_wgslsmith_dot_vec4_i32(~vec4<i32>(global3.b, global0.b.d, -31971i, global2.x), vec4<i32>(var_2.b, -14622i, global3.d, u_input.e.x) | vec4<i32>(global3.d, 19002i, 1i, global2.x)), global0.b.b), var_2.d, _wgslsmith_mod_i32(global3.d, -firstTrailingBit(46327i))), select(select(select(vec3<bool>(true, true, true), vec3<bool>(false, true, false), vec3<bool>(true, true, true)), !select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), ~global0.c.c.x > global0.b.c.x), !vec3<bool>(any(vec2<bool>(true, true)), true, true), _wgslsmith_dot_vec3_i32(max(vec3<i32>(var_2.d, -1i, u_input.e.x), vec3<i32>(global2.x, u_input.e.x, 28584i)), vec3<i32>(0i, -2147483647i, global2.x) ^ vec3<i32>(-1i, u_input.c, global3.d)) != global2.x));
    let var_4 = Struct_3(Struct_2(global0.a, var_2, var_2));
    return Struct_5(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(var_4.a.c.a.x, 204f, 1000f, 513f), global0.b.a)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-750f, 2473f, global3.a.x, global3.a.x))))), -1409f, _wgslsmith_div_f32(var_4.a.c.a.x, _wgslsmith_f_op_f32(abs(var_4.a.c.a.x))));
}

fn func_1() -> Struct_5 {
    var var_0 = func_2(813f);
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(global0.b.a))), countOneBits(~2147483647i), global3.c, -u_input.e.x);
    global0 = Struct_2(global0.a, global0.a, global0.c);
    global3 = Struct_1(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(var_0.a))) + func_2(global3.a.x).a), _wgslsmith_sub_i32(~(-1i), _wgslsmith_clamp_i32(0i, global3.d, _wgslsmith_clamp_i32(global3.b, u_input.b, u_input.b)) >> (~(~0u) % 32u)), vec3<u32>(~u_input.a, ~(~global0.c.c.x) ^ _wgslsmith_mod_u32(~global3.c.x, _wgslsmith_mult_u32(54267u, global3.c.x)), u_input.a), -30269i);
    var var_1 = Struct_3(Struct_2(Struct_1(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1723f, 338f, global0.b.a.x, 1000f)))), u_input.c, vec3<u32>(global0.a.c.x, u_input.d << (22006u % 32u), _wgslsmith_add_u32(global0.a.c.x, u_input.a)), abs(-35705i)), global0.a, global0.c));
    return Struct_5(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(var_0.b * 2431f) * _wgslsmith_f_op_f32(global3.a.x - -979f))), 929f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(global4.x, var_0.c, true))), -958f, !select(true, true, true))), _wgslsmith_f_op_f32(-1240f + _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -1185f))))), _wgslsmith_f_op_f32(-352f - _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1306f * 1425f) * _wgslsmith_f_op_f32(global3.a.x - global4.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.a.x) + 395f)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    var_0 = func_1();
    global3 = global0.c;
    let var_1 = ~(~max(vec4<u32>(1u, u_input.a, 0u ^ global0.b.c.x, global0.b.c.x), _wgslsmith_sub_vec4_u32(vec4<u32>(global3.c.x, u_input.d, u_input.a, global3.c.x), ~vec4<u32>(1u, 85994u, 109138u, 4294967295u))));
    var var_2 = global0.c.a;
    var var_3 = global0.c;
    var_0 = func_2(_wgslsmith_f_op_f32(-global3.a.x));
    let x = u_input.a;
    s_output = StorageBuffer(-396f);
}

