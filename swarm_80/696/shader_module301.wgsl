struct Struct_1 {
    a: u32,
    b: vec4<bool>,
    c: bool,
    d: vec4<u32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: vec4<u32>,
    c: Struct_1,
    d: i32,
    e: u32,
}

struct Struct_3 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: vec3<i32>,
}

struct Struct_4 {
    a: vec4<bool>,
}

struct Struct_5 {
    a: bool,
    b: vec2<u32>,
    c: vec3<u32>,
    d: f32,
    e: Struct_3,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec4<i32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<f32>;

var<private> global1: u32 = 1u;

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn func_3() -> vec2<u32> {
    global0 = vec3<f32>(-1598f, global0.x, _wgslsmith_f_op_f32(-global0.x));
    var var_0 = false;
    var_0 = _wgslsmith_dot_vec4_u32(~(~(~vec4<u32>(8673u, 0u, 1u, 102723u))), ~(~countOneBits(vec4<u32>(0u, 41305u, 1u, 4294967295u)))) > ~abs(1u);
    let var_1 = countOneBits(u_input.b.x);
    var_0 = (~(~1u) << (1u % 32u)) == abs(~(0u & _wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 79561u, 12099u), vec4<u32>(5156u, 0u, 4294967295u, 24581u))));
    return vec2<u32>(~_wgslsmith_dot_vec3_u32(~(~vec3<u32>(14788u, 69u, 870u)), abs(vec3<u32>(4294967295u, 0u, 89151u))), _wgslsmith_dot_vec4_u32(countOneBits(abs(firstLeadingBit(vec4<u32>(4294967295u, 1u, 4294967295u, 1u)))), ~_wgslsmith_mult_vec4_u32(_wgslsmith_clamp_vec4_u32(vec4<u32>(4294967295u, 28860u, 0u, 61124u), vec4<u32>(0u, 0u, 30718u, 1u), vec4<u32>(72645u, 4294967295u, 1u, 52176u)), _wgslsmith_mult_vec4_u32(vec4<u32>(1u, 4294967295u, 20138u, 9065u), vec4<u32>(87452u, 0u, 0u, 4020u)))));
}

fn func_2(arg_0: Struct_1, arg_1: u32) -> i32 {
    let var_0 = _wgslsmith_f_op_vec2_f32(sign(global0.xy));
    let var_1 = arg_0.a;
    var var_2 = Struct_5(~select(-42122i, _wgslsmith_dot_vec4_i32(u_input.b, u_input.b), !arg_0.c) < -33816i, _wgslsmith_div_vec2_u32(~arg_0.d.yw, ~func_3()), ~vec3<u32>(~(~4294967295u), _wgslsmith_sub_u32(~44979u, arg_1), _wgslsmith_mod_u32(arg_0.d.x, _wgslsmith_dot_vec4_u32(vec4<u32>(arg_1, 28247u, 18723u, 93986u), vec4<u32>(var_1, 1u, arg_1, 4294967295u)))), 621f, Struct_3(_wgslsmith_mult_u32(var_1, _wgslsmith_dot_vec2_u32(arg_0.d.yy, vec2<u32>(1u, var_1))), select(arg_1 | 1u, ~1u << (~arg_0.d.x % 32u), !(!arg_0.c)), Struct_1(24221u, !vec4<bool>(true, false, arg_0.e.x, arg_0.c), false, ~vec4<u32>(arg_0.a, arg_0.d.x, 68263u, 23449u), select(select(vec2<bool>(arg_0.c, false), arg_0.e, arg_0.e), select(vec2<bool>(false, arg_0.e.x), arg_0.b.xx, arg_0.b.zy), true)), vec3<i32>(u_input.a.x, u_input.b.x, i32(-1i) * -26490i)));
    var var_3 = Struct_5(!(680f <= _wgslsmith_f_op_f32(exp2(var_2.d))), _wgslsmith_clamp_vec2_u32(arg_0.d.xy & arg_0.d.yx, vec2<u32>(1u, ~(~arg_0.a)), arg_0.d.yx), vec3<u32>(arg_0.d.x, var_1, ~71863u), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.x) - _wgslsmith_f_op_f32(min(var_0.x, _wgslsmith_f_op_f32(abs(var_0.x))))), var_2.e);
    var var_4 = var_2.c;
    return 1i;
}

fn func_1(arg_0: bool, arg_1: i32) -> i32 {
    global1 = reverseBits(_wgslsmith_sub_u32(~_wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(1u, 16233u, 28889u)), 1497u));
    var var_0 = vec2<i32>(u_input.a.x, _wgslsmith_clamp_i32(-2147483647i, min(_wgslsmith_clamp_i32(2147483647i, 1i, -1i) << (abs(4294967295u) % 32u), 57073i), 2147483647i));
    let var_1 = -abs(_wgslsmith_sub_i32(~func_2(Struct_1(21078u, vec4<bool>(true, false, arg_0, arg_0), arg_0, vec4<u32>(0u, 0u, 1u, 0u), vec2<bool>(false, arg_0)), 120646u), _wgslsmith_mult_i32(-arg_1, var_0.x ^ 1i)));
    var var_2 = false;
    var_0 = vec2<i32>(abs(var_1), _wgslsmith_dot_vec2_i32(firstLeadingBit(~u_input.a) | vec2<i32>(arg_1, abs(var_1)), _wgslsmith_div_vec2_i32(u_input.a, ~(~vec2<i32>(1i, var_0.x)))));
    return _wgslsmith_dot_vec3_i32(~(~firstLeadingBit(vec3<i32>(arg_1, var_0.x, u_input.b.x)) ^ reverseBits(vec3<i32>(-1i, -1i, 1i))), _wgslsmith_sub_vec3_i32(abs(-u_input.b.zyx), _wgslsmith_clamp_vec3_i32(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, -2147483647i, 0i), u_input.b.www), (u_input.b.wzz & vec3<i32>(u_input.a.x, -21785i, u_input.b.x)) ^ select(vec3<i32>(var_1, var_0.x, 7224i), u_input.b.zxw, vec3<bool>(arg_0, true, arg_0)), -(~vec3<i32>(var_0.x, -2147483647i, 2147483647i)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_div_vec4_i32(~select(vec4<i32>(_wgslsmith_clamp_i32(u_input.b.x, 60990i, -25848i), i32(-1i) * -11653i, u_input.b.x, reverseBits(-6746i)), _wgslsmith_sub_vec4_i32(_wgslsmith_div_vec4_i32(u_input.b, u_input.b), min(u_input.b, vec4<i32>(55894i, 2147483647i, 0i, u_input.a.x))), true), vec4<i32>(min(reverseBits(55900i), u_input.b.x) ^ u_input.a.x, abs(~(-u_input.b.x)), 0i, max(u_input.b.x | func_1(false, u_input.b.x), u_input.a.x)));
    let var_1 = select(!vec3<bool>(false, false, all(vec2<bool>(true, false))), !select(select(vec3<bool>(true, true, true), select(vec3<bool>(true, false, false), vec3<bool>(true, false, false), vec3<bool>(true, false, true)), true), select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), select(vec3<bool>(false, true, true), vec3<bool>(true, true, false), vec3<bool>(false, true, false))), true), all(!select(vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(true, false))) && !(!all(vec2<bool>(false, true))));
    let var_2 = 32191i;
    var var_3 = ~41299u;
    let x = u_input.a;
    s_output = StorageBuffer(vec3<i32>(var_0.x, i32(-1i) * -(var_2 >> (1184u % 32u)), var_2), ~(~16727i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(global0.x, -297f, global0.x, -106f)) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, global0.x, global0.x, global0.x) - vec4<f32>(2184f, -465f, 583f, 1363f)))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global0.x, global0.x, global0.x, global0.x), vec4<f32>(global0.x, global0.x, 1955f, -2297f))), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, global0.x, -735f, -935f)))))) - vec4<f32>(_wgslsmith_f_op_f32(-global0.x), _wgslsmith_f_op_f32(select(-2392f, global0.x, !var_1.x)), global0.x, _wgslsmith_f_op_f32(max(-1479f, _wgslsmith_f_op_f32(-1720f * global0.x))))));
}

