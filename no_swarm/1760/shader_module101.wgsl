struct Struct_1 {
    a: vec4<bool>,
    b: bool,
    c: bool,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: vec3<bool>,
    c: Struct_1,
    d: f32,
    e: Struct_1,
}

struct Struct_3 {
    a: i32,
    b: vec3<u32>,
    c: vec4<f32>,
}

struct Struct_4 {
    a: Struct_3,
    b: f32,
    c: bool,
    d: vec3<f32>,
    e: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: u32,
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

var<private> global0: Struct_3;

var<private> global1: i32;

var<private> global2: Struct_4;

var<private> global3: vec2<i32>;

var<private> global4: bool = false;

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_3(arg_0: i32, arg_1: Struct_2, arg_2: Struct_1) -> u32 {
    global1 = _wgslsmith_dot_vec2_i32(-abs(~abs(vec2<i32>(2147483647i, arg_1.e.e))), vec2<i32>(0i, _wgslsmith_clamp_i32(~global2.a.a ^ (1i ^ arg_1.c.e), abs(arg_0), -(global2.a.a >> (1u % 32u)))));
    let var_0 = ~u_input.a;
    var var_1 = Struct_2(!select(vec3<bool>(arg_2.b, !arg_2.c, !arg_1.b.x), vec3<bool>(false, arg_1.e.c, true), select(!arg_1.e.a.wwx, !vec3<bool>(true, true, arg_1.b.x), arg_1.b.x || false)), arg_2.a.www, arg_1.e, _wgslsmith_f_op_f32(select(arg_1.d, _wgslsmith_f_op_f32(arg_1.d * -247f), any(select(!arg_2.a.xz, vec2<bool>(arg_2.c, false), arg_1.a.yx)))), arg_2);
    global0 = global2.a;
    global4 = arg_2.b;
    return 16057u;
}

fn func_2(arg_0: Struct_3, arg_1: vec2<bool>, arg_2: bool) -> vec4<i32> {
    global2 = Struct_4(global2.a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(_wgslsmith_div_f32(-1000f, -1658f), _wgslsmith_f_op_f32(f32(-1f) * -2482f))), _wgslsmith_f_op_f32(min(689f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(291f)) - -300f)))), !(_wgslsmith_clamp_u32(56253u, ~global2.a.b.x, arg_0.b.x) < func_3(0i, Struct_2(vec3<bool>(global2.c, arg_1.x, false), vec3<bool>(false, arg_2, true), Struct_1(vec4<bool>(global2.c, global2.c, true, arg_2), global2.c, global2.c, arg_1.x, 5806i), global0.c.x, Struct_1(vec4<bool>(global2.c, arg_1.x, true, false), true, arg_1.x, arg_2, 2147483647i)), Struct_1(vec4<bool>(arg_2, false, global2.c, true), true, false, false, 2147483647i))), _wgslsmith_f_op_vec3_f32(abs(arg_0.c.yzx)), ~(~_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(91342u, global2.a.b.x), global0.b.yz), u_input.c | 40923u)));
    let var_0 = min(_wgslsmith_mod_u32(global0.b.x, arg_0.b.x), ~(~0u)) | _wgslsmith_add_u32(~4294967295u, 58484u);
    var var_1 = Struct_1(vec4<bool>(true, true, true && any(!vec4<bool>(true, global2.c, true, false)), false || all(vec3<bool>(true, false, false))), (14425i >> (reverseBits(_wgslsmith_sub_u32(20597u, u_input.c)) % 32u)) >= 1i, true, -1202f < _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.c.x, arg_0.c.x)), -1i);
    return ~vec4<i32>(firstLeadingBit(-(~var_1.e)), ~(arg_0.a >> (max(global0.b.x, global2.a.b.x) % 32u)), 5946i << (~_wgslsmith_dot_vec2_u32(global0.b.yy, arg_0.b.zy) % 32u), -countOneBits(-20670i | global0.a));
}

fn func_1() -> vec3<bool> {
    var var_0 = reverseBits(vec2<i32>(~37390i, _wgslsmith_dot_vec4_i32(-func_2(global2.a, vec2<bool>(true, global2.c), false), ~abs(vec4<i32>(global2.a.a, u_input.b, u_input.b, 7107i)))));
    global2 = Struct_4(global2.a, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(global2.b))))), _wgslsmith_f_op_f32(f32(-1f) * -1154f))), false, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(196f, -1000f, global2.a.c.x), global0.c.yzz)))), 4294967295u);
    var var_1 = Struct_3(~_wgslsmith_div_i32(abs(_wgslsmith_sub_i32(global3.x, global3.x)), _wgslsmith_mult_i32(0i, -23236i)), global2.a.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(abs(global0.c.x)), _wgslsmith_f_op_f32(-global0.c.x), 743f, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1000f + 522f)))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-620f, global0.c.x, -966f, -812f)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(474f, -230f, 1006f, 619f)))) - _wgslsmith_f_op_vec4_f32(select(vec4<f32>(-1443f, global2.b, global0.c.x, 1285f), _wgslsmith_f_op_vec4_f32(vec4<f32>(190f, global0.c.x, 870f, global2.a.c.x) + vec4<f32>(-409f, global0.c.x, 237f, global2.d.x)), !global2.c))))));
    let var_2 = true;
    var var_3 = Struct_4(global2.a, -346f, var_2, global2.a.c.xxy, 35505u);
    return select(!(!(!select(vec3<bool>(false, false, true), vec3<bool>(var_3.c, global2.c, true), vec3<bool>(false, global2.c, true)))), !(!select(select(vec3<bool>(false, var_3.c, var_3.c), vec3<bool>(var_3.c, var_2, false), false), !vec3<bool>(true, true, var_2), !vec3<bool>(true, false, global2.c))), !(-select(u_input.b, var_0.x, global2.c) <= 64574i));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = global2.a.a;
    let var_1 = func_1();
    var var_2 = vec2<i32>(global0.a, (global3.x ^ ~global3.x) ^ _wgslsmith_mult_i32(reverseBits(global2.a.a ^ -36073i), max(_wgslsmith_mod_i32(-35381i, -5598i), min(global3.x, global0.a))));
    let var_3 = global0.a ^ (global0.a >> (~_wgslsmith_sub_u32(1u, min(global0.b.x, u_input.a)) % 32u));
    var_2 = ~(~(~(-vec2<i32>(0i, 91059i)))) | ~(-_wgslsmith_mult_vec2_i32(min(vec2<i32>(-1i, global0.a), vec2<i32>(u_input.b, 76505i)), vec2<i32>(global0.a, global0.a)));
    let var_4 = ~(~u_input.c | 48667u);
    var_2 = vec2<i32>(27407i, _wgslsmith_mod_i32(min(1i, _wgslsmith_add_i32(_wgslsmith_mod_i32(-9025i, 49783i), var_3)), 1i));
    var_2 = min(-_wgslsmith_add_vec2_i32(~vec2<i32>(u_input.b, -2147483647i) ^ vec2<i32>(1i, 1i), vec2<i32>(1i, u_input.b) | firstTrailingBit(vec2<i32>(u_input.b, 26733i))), _wgslsmith_sub_vec2_i32(abs(min(vec2<i32>(14913i, 1i) ^ vec2<i32>(var_2.x, global0.a), _wgslsmith_mod_vec2_i32(vec2<i32>(-1i, global0.a), vec2<i32>(global2.a.a, global3.x)))), abs(~reverseBits(vec2<i32>(0i, -49465i)))));
    var var_5 = Struct_3(29895i, global2.a.b, _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -742f), _wgslsmith_f_op_f32(-1040f - 340f), !global2.c)), global0.c.x, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global0.c.x + global0.c.x), _wgslsmith_f_op_f32(trunc(global2.d.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.d.x) * _wgslsmith_f_op_f32(select(global0.c.x, global2.b, var_1.x)))), _wgslsmith_f_op_vec4_f32(select(vec4<f32>(_wgslsmith_f_op_f32(step(global2.d.x, 286f)), global2.d.x, 485f, _wgslsmith_f_op_f32(global2.a.c.x + 453f)), vec4<f32>(_wgslsmith_f_op_f32(sign(105f)), global0.c.x, -266f, _wgslsmith_div_f32(1000f, global0.c.x)), !vec4<bool>(false, false, var_1.x, true))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_div_u32(_wgslsmith_dot_vec4_u32(~_wgslsmith_div_vec4_u32(vec4<u32>(56669u, 4294967295u, global0.b.x, 4294967295u), vec4<u32>(0u, 1u, 65729u, var_5.b.x)), _wgslsmith_clamp_vec4_u32(~vec4<u32>(u_input.a, 1u, global0.b.x, 62897u), vec4<u32>(1084u, 0u, 46570u, var_5.b.x), countOneBits(vec4<u32>(global2.e, 26444u, 76135u, 18012u)))), u_input.c));
}

