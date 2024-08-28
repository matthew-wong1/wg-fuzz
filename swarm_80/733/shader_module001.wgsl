struct Struct_1 {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
}

struct Struct_2 {
    a: vec4<bool>,
    b: bool,
    c: Struct_1,
    d: Struct_1,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec4<f32>,
    b: i32,
    c: Struct_2,
    d: vec2<u32>,
}

struct Struct_5 {
    a: u32,
    b: Struct_1,
    c: vec3<i32>,
    d: Struct_4,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: vec3<i32>;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: i32, arg_3: bool) -> i32 {
    return 2147483647i;
}

fn func_3(arg_0: vec3<u32>) -> vec3<u32> {
    let var_0 = -global1.xx;
    global1 = -_wgslsmith_mult_vec3_i32(u_input.b.wyy, ~u_input.b.xxz);
    global1 = _wgslsmith_clamp_vec3_i32(-(~min(u_input.b.zwy, ~u_input.b.xyy)), vec3<i32>(~15342i, -func_1(true, _wgslsmith_f_op_vec4_f32(floor(vec4<f32>(global0.x, global0.x, global0.x, -177f))), 0i, true), select(var_0.x, _wgslsmith_mult_i32(1i, -15674i), false)), -vec3<i32>(global1.x, _wgslsmith_mod_i32(2147483647i, min(var_0.x, 0i)), -var_0.x));
    var var_1 = vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(abs(306f)), 1043f))) + global0.x), global0.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(1922f))))) + -430f), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.x - -217f) * _wgslsmith_f_op_f32(global0.x - -902f)))));
    global1 = countOneBits(u_input.b.zxz);
    return ~_wgslsmith_div_vec3_u32(~(~vec3<u32>(u_input.a, u_input.a, u_input.a)) << (arg_0 % vec3<u32>(32u)), vec3<u32>(~4294967295u, ~0u, u_input.a));
}

fn func_2(arg_0: i32, arg_1: vec3<bool>, arg_2: vec4<i32>, arg_3: vec2<u32>) -> Struct_3 {
    let var_0 = !vec4<bool>(true, true, true, true || arg_1.x);
    var var_1 = ~0i;
    let var_2 = Struct_1(vec2<u32>(1u, 1u), ~_wgslsmith_sub_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(18882u, 1220u, u_input.a) >> (vec3<u32>(arg_3.x, 0u, 0u) % vec3<u32>(32u)), ~vec3<u32>(u_input.a, u_input.a, 1872u)), _wgslsmith_div_vec3_u32(func_3(vec3<u32>(31074u, 102160u, 21590u)), reverseBits(vec3<u32>(u_input.a, arg_3.x, arg_3.x)))), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(u_input.b.wyw, vec3<i32>(global1.x << (arg_3.x % 32u), 1i, 2147483647i)), countOneBits(-(~vec3<i32>(7021i, u_input.b.x, u_input.b.x))), vec3<i32>(-2147483647i, 19460i, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(arg_2, vec4<i32>(u_input.b.x, arg_2.x, -1i, arg_0), vec4<i32>(arg_0, 1i, arg_0, arg_0)), u_input.b ^ u_input.b))));
    let var_3 = arg_1.x;
    let var_4 = firstLeadingBit(_wgslsmith_mod_u32(_wgslsmith_mod_u32(~0u, u_input.a) >> (var_2.a.x % 32u), 1u));
    return Struct_3(var_2);
}

@compute
@workgroup_size(1)
fn main() {
    global1 = -u_input.b.wzx;
    var var_0 = func_2(~func_1(any(vec2<bool>(true, true)), vec4<f32>(global0.x, _wgslsmith_f_op_f32(global0.x + global0.x), global0.x, global0.x), ~37033i, all(vec3<bool>(true, true, true))), vec3<bool>((firstTrailingBit(u_input.a) <= u_input.a) & true, any(select(select(vec3<bool>(true, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, false)), select(vec3<bool>(true, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false)), 1130f > global0.x)), true), u_input.b | select(abs(_wgslsmith_mult_vec4_i32(u_input.b, vec4<i32>(global1.x, 26539i, 1i, -2147483647i))), countOneBits(_wgslsmith_add_vec4_i32(vec4<i32>(global1.x, u_input.b.x, 2147483647i, u_input.b.x), vec4<i32>(global1.x, u_input.b.x, global1.x, 0i))), vec4<bool>(true, true, true, true)), ~(reverseBits(~vec2<u32>(u_input.a, 79064u)) ^ (~vec2<u32>(1u, u_input.a) | vec2<u32>(24077u, 70887u))));
    var var_1 = Struct_3(func_2(_wgslsmith_div_i32(_wgslsmith_add_i32(var_0.a.c.x, i32(-1i) * -1690i), _wgslsmith_sub_i32(func_2(13169i, vec3<bool>(false, true, true), u_input.b, vec2<u32>(u_input.a, 18066u)).a.c.x, countOneBits(-34228i))), !vec3<bool>(0u >= u_input.a, false, true), u_input.b, select(func_3(vec3<u32>(0u, var_0.a.b.x, 4294967295u)).yy | ~var_0.a.b.xy, vec2<u32>(~0u, 30154u), vec2<bool>(true, true))).a);
    global0 = vec3<f32>(global0.x, _wgslsmith_div_f32(global0.x, -285f), global0.x);
    global0 = _wgslsmith_f_op_vec3_f32(floor(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(1000f, global0.x, 1000f)))));
    let var_2 = Struct_4(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(global0.x, global0.x, -829f, global0.x))), vec4<f32>(global0.x, global0.x, 638f, global0.x))) * _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1979f, global0.x, global0.x, 1108f)), _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1000f, global0.x, 168f, global0.x))), true)))), -max(_wgslsmith_dot_vec3_i32(vec3<i32>(var_1.a.c.x, 20765i, var_0.a.c.x) | u_input.b.yxy, -u_input.b.wwz), ~(~var_1.a.c.x)), Struct_2(vec4<bool>(true, !any(vec3<bool>(false, false, false)), -886f >= _wgslsmith_f_op_f32(step(-357f, global0.x)), all(vec4<bool>(true, true, true, true))), (true && (global0.x != global0.x)) & !(-415f != global0.x), func_2(max(10641i & var_0.a.c.x, _wgslsmith_div_i32(u_input.b.x, u_input.b.x)), vec3<bool>(true, false, true), u_input.b, (var_1.a.b.yx | var_0.a.a) ^ var_1.a.b.yx).a, func_2(-40991i, !select(vec3<bool>(false, false, false), vec3<bool>(false, true, false), vec3<bool>(true, false, true)), _wgslsmith_clamp_vec4_i32(u_input.b, -u_input.b, u_input.b | u_input.b), var_0.a.a).a), abs(abs(var_1.a.b.zy)));
    global0 = _wgslsmith_f_op_vec3_f32(-var_2.a.zwx);
    global1 = ~var_0.a.c;
    let x = u_input.a;
    s_output = StorageBuffer(var_2.c.c.a.x, global1.x, vec2<u32>(~func_2(u_input.b.x, select(var_2.c.a.ywz, vec3<bool>(false, true, var_2.c.b), true), _wgslsmith_clamp_vec4_i32(u_input.b, u_input.b, u_input.b), vec2<u32>(0u, 0u)).a.a.x, _wgslsmith_sub_u32(~func_3(var_0.a.b).x, var_2.c.d.b.x & ~56870u)));
}

