struct Struct_1 {
    a: vec4<bool>,
}

struct Struct_2 {
    a: vec2<f32>,
    b: i32,
    c: Struct_1,
    d: vec2<bool>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
}

struct Struct_4 {
    a: u32,
    b: vec3<f32>,
}

struct Struct_5 {
    a: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: f32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_1 = Struct_1(vec4<bool>(false, false, true, false));

var<private> global2: array<vec2<bool>, 6> = array<vec2<bool>, 6>(vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, false));

var<private> global3: Struct_2 = Struct_2(vec2<f32>(-1024f, -678f), 1i, Struct_1(vec4<bool>(true, true, true, true)), vec2<bool>(false, false));

var<private> global4: array<Struct_3, 24>;

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
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

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn func_3(arg_0: vec3<f32>, arg_1: vec4<u32>, arg_2: vec4<f32>, arg_3: i32) -> i32 {
    var var_0 = -vec4<i32>(reverseBits(arg_3) >> (u_input.b % 32u), -1i, arg_3, 595i) | _wgslsmith_mod_vec4_i32(firstLeadingBit(vec4<i32>(global3.b, arg_3 >> (u_input.b % 32u), u_input.a.x, u_input.a.x)), vec4<i32>(~(-5286i), -arg_3, firstLeadingBit(global3.b), ~_wgslsmith_add_i32(u_input.a.x, global3.b)));
    var_0 = -select(vec4<i32>(global3.b & abs(-21370i), u_input.a.x ^ ~arg_3, ~(~var_0.x), -5449i << ((u_input.b ^ u_input.b) % 32u)), vec4<i32>(-(arg_3 ^ -8072i), -2147483647i, 1i, 13069i), vec4<bool>(true, !global3.c.a.x & !global1.a.x, global1.a.x, global3.c.a.x));
    var var_1 = vec2<i32>(~_wgslsmith_add_i32(min(_wgslsmith_clamp_i32(global3.b, arg_3, arg_3), 0i), 28446i), -_wgslsmith_dot_vec3_i32(-(var_0.zxx & var_0.ywx), ~(var_0.zwy & vec3<i32>(-39123i, 1013i, -1i))));
    var var_2 = Struct_4(~firstTrailingBit(arg_1.x), _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-global3.a.x), _wgslsmith_f_op_f32(-arg_2.x), 1266f))));
    let var_3 = ~_wgslsmith_mod_u32(~arg_1.x, 28834u);
    return ~select(select(~(-var_0.x), _wgslsmith_div_i32(1i, -2147483647i), any(global1.a.wy)), _wgslsmith_div_i32(global3.b << (51890u % 32u), ~(-1i)), true);
}

fn func_2() -> Struct_2 {
    let var_0 = Struct_4(select(_wgslsmith_sub_u32(_wgslsmith_div_u32(~u_input.b, ~u_input.b), _wgslsmith_dot_vec2_u32(~vec2<u32>(u_input.b, 30932u), firstLeadingBit(vec2<u32>(u_input.b, u_input.b)))), _wgslsmith_clamp_u32(u_input.b, u_input.b >> (29851u % 32u), u_input.b), _wgslsmith_div_i32(func_3(vec3<f32>(534f, global3.a.x, global3.a.x), vec4<u32>(u_input.b, 1u, 7390u, 111219u), vec4<f32>(global3.a.x, global3.a.x, 1036f, global3.a.x), global3.b), -19187i) <= global3.b), vec3<f32>(-1031f, global3.a.x, global3.a.x));
    let var_1 = Struct_3(global3.c, Struct_1(!global3.c.a));
    global1 = var_1.a;
    global0 = _wgslsmith_add_u32(var_0.a, _wgslsmith_dot_vec2_u32(vec2<u32>(~_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.b, var_0.a), vec2<u32>(var_0.a, 282u)), 1u), vec2<u32>(64759u, 11281u)));
    var var_2 = Struct_1(!(!global1.a));
    return Struct_2(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(floor(var_0.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -194f))))), _wgslsmith_mult_i32(_wgslsmith_mult_i32(1i, _wgslsmith_dot_vec3_i32(vec3<i32>(-4826i, 0i, -7677i), vec3<i32>(-34059i, -1i, global3.b))), -max(u_input.a.x, 18488i)) >> (u_input.b % 32u), Struct_1(vec4<bool>(true, select(-1i <= u_input.a.x, true, true), true, true)), global1.a.xz);
}

fn func_4(arg_0: Struct_2, arg_1: Struct_3, arg_2: bool) -> vec4<bool> {
    global4 = array<Struct_3, 24>();
    let var_0 = _wgslsmith_mod_vec2_u32(vec2<u32>(~1u, _wgslsmith_dot_vec4_u32(select(~vec4<u32>(82134u, 68150u, 4294967295u, u_input.b), _wgslsmith_mult_vec4_u32(vec4<u32>(37874u, u_input.b, 0u, 29716u), vec4<u32>(0u, u_input.b, 0u, 22272u)), !vec4<bool>(arg_0.c.a.x, arg_0.d.x, true, false)), ~vec4<u32>(32554u, 66787u, u_input.b, 66673u) | (vec4<u32>(u_input.b, 4294967295u, u_input.b, u_input.b) ^ vec4<u32>(40620u, u_input.b, 15871u, 39595u)))), ~_wgslsmith_mult_vec2_u32(_wgslsmith_sub_vec2_u32(~vec2<u32>(u_input.b, u_input.b), vec2<u32>(23544u, u_input.b)), vec2<u32>(u_input.b, firstTrailingBit(u_input.b))));
    global1 = func_2().c;
    let var_1 = _wgslsmith_clamp_u32(u_input.b, _wgslsmith_dot_vec4_u32(~vec4<u32>(14441u, ~u_input.b, max(u_input.b, 11540u), 1u), ~vec4<u32>(~u_input.b, _wgslsmith_mult_u32(var_0.x, 49040u), u_input.b << (var_0.x % 32u), _wgslsmith_dot_vec4_u32(vec4<u32>(var_0.x, var_0.x, 1u, 63627u), vec4<u32>(45642u, var_0.x, 1u, u_input.b)))), ~65249u);
    let var_2 = _wgslsmith_add_u32(~var_0.x, 1u);
    return func_2().c.a;
}

fn func_1(arg_0: vec3<f32>) -> bool {
    let var_0 = select(vec4<bool>(all(!global3.c.a.www), false, global3.d.x, any(func_4(func_2(), Struct_3(Struct_1(global3.c.a), global3.c), false))), !vec4<bool>(true, true, select(all(vec2<bool>(false, global3.c.a.x)), true, !global1.a.x), (global1.a.x & global1.a.x) && func_2().d.x), global3.d.x);
    var var_1 = Struct_4(1u >> (abs(u_input.b) % 32u), vec3<f32>(_wgslsmith_f_op_f32(-593f * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(min(1254f, -1223f)), -448f))), 194f, global3.a.x));
    global3 = func_2();
    global3 = func_2();
    let var_2 = vec2<f32>(-464f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(694f - var_1.b.x)) - func_2().a.x) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_1.b.x) - 780f)));
    return any(!vec3<bool>(global1.a.x, true, any(vec3<bool>(var_0.x, global3.d.x, global3.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(-194f, global3.a.x, 417f))) * _wgslsmith_f_op_vec3_f32(exp2(vec3<f32>(1000f, global3.a.x, global3.a.x)))))) || any(global3.c.a.yx);
    let var_1 = func_4(Struct_2(vec2<f32>(global3.a.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(step(global3.a.x, 1050f)), global3.a.x)), u_input.a.x | global3.b, global3.c, global3.d), Struct_3(Struct_1(global1.a), global3.c), global1.a.x).xy;
    var var_2 = vec4<bool>(func_2().d.x, var_1.x, all(func_4(func_2(), Struct_3(global3.c, func_2().c), true).wxx), func_4(func_2(), global4[_wgslsmith_index_u32(abs(~u_input.b), 24u)], true).x);
    let var_3 = vec2<u32>(u_input.b, u_input.b);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, ~(~45195u)), ~(~(~(~0u))), firstLeadingBit(_wgslsmith_div_u32(firstTrailingBit(0u), ~_wgslsmith_div_u32(26433u, var_3.x))), global3.a.x, global3.b | 2147483647i);
}

