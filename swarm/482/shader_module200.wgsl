struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: i32,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<u32>,
    b: vec2<bool>,
}

struct Struct_4 {
    a: i32,
}

struct Struct_5 {
    a: bool,
    b: Struct_4,
    c: vec2<u32>,
    d: f32,
    e: Struct_2,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: u32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool = true;

var<private> global1: Struct_5 = Struct_5(true, Struct_4(0i), vec2<u32>(20939u, 4294967295u), -1532f, Struct_2(Struct_1(false), i32(-2147483648), vec4<f32>(375f, 503f, -188f, 793f), Struct_1(false)));

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn func_3(arg_0: vec2<i32>) -> i32 {
    var var_0 = vec3<i32>(_wgslsmith_div_i32(firstTrailingBit(1715i), -30241i), ~arg_0.x >> (20339u % 32u), _wgslsmith_dot_vec4_i32(abs(_wgslsmith_clamp_vec4_i32(countOneBits(vec4<i32>(global1.b.a, global1.e.b, 37954i, 1i)), ~vec4<i32>(u_input.a.x, 11586i, 0i, -2147483647i), _wgslsmith_mult_vec4_i32(vec4<i32>(0i, -1i, arg_0.x, 0i), vec4<i32>(arg_0.x, arg_0.x, 7049i, u_input.d)))), vec4<i32>(~(-1i), -2147483647i, _wgslsmith_add_i32(16221i, -25196i), firstLeadingBit(u_input.d)) ^ (-vec4<i32>(50003i, -2147483647i, -1i, u_input.a.x) >> (vec4<u32>(20764u, u_input.c, 0u, global1.c.x) % vec4<u32>(32u)))));
    var var_1 = global1.d;
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1000f * global1.d))), global1.e.c.x)), -1000f);
    var_1 = _wgslsmith_f_op_f32(global1.d + _wgslsmith_f_op_f32(global1.e.c.x * _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(abs(-136f))))));
    var_0 = u_input.a;
    return abs(global1.b.a);
}

fn func_2(arg_0: vec3<f32>, arg_1: u32, arg_2: u32) -> f32 {
    global0 = false;
    var var_0 = global1.e.c.x;
    var var_1 = Struct_4(~global1.e.b);
    global0 = false;
    var var_2 = Struct_5(false, Struct_4(-((global1.e.b | var_1.a) >> (~4294967295u % 32u))), reverseBits(global1.c), 120f, Struct_2(Struct_1(true), ~_wgslsmith_mult_i32(func_3(u_input.a.zz), 2147483647i), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global1.e.c)))), global1.e.d));
    return _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(select(1110f, _wgslsmith_div_f32(arg_0.x, _wgslsmith_f_op_f32(_wgslsmith_div_f32(1025f, 382f) - -2971f)), true)), global1.d));
}

fn func_1(arg_0: i32) -> Struct_3 {
    let var_0 = global1.c.x;
    let var_1 = vec3<i32>(u_input.a.x, 0i, abs(0i));
    global1 = Struct_5(global1.a, global1.b, global1.c, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(abs(2013f)))), Struct_2(Struct_1(true), 45732i, vec4<f32>(global1.e.c.x, _wgslsmith_f_op_f32(func_2(_wgslsmith_f_op_vec3_f32(-global1.e.c.zwx), firstTrailingBit(0u), 14464u)), _wgslsmith_f_op_f32(step(-936f, -1051f)), global1.e.c.x), global1.e.a));
    let var_2 = !(!any(vec3<bool>(true, global1.e.d.a, global1.e.a.a)) | all(!(!vec2<bool>(true, global1.a))));
    global0 = all(vec4<bool>(!any(select(vec3<bool>(true, global1.e.d.a, var_2), vec3<bool>(var_2, false, false), true)), true, all(vec3<bool>(false, true, global1.e.d.a)), !(var_2 || global1.a)));
    return Struct_3(countOneBits(vec2<u32>(global1.c.x | 1u, 6057u | u_input.c)), select(select(!select(vec2<bool>(true, var_2), vec2<bool>(global1.a, true), global1.a), !(!vec2<bool>(true, global1.a)), u_input.c < u_input.b.x), select(vec2<bool>(var_2, var_2 & global1.a), vec2<bool>(global1.a, true), select(select(vec2<bool>(var_2, false), vec2<bool>(false, true), vec2<bool>(var_2, global1.a)), select(vec2<bool>(global1.e.d.a, false), vec2<bool>(false, true), false), vec2<bool>(false, global1.e.d.a))), vec2<bool>(true, true)));
}

fn func_4(arg_0: vec3<bool>, arg_1: Struct_3, arg_2: i32, arg_3: vec3<u32>) -> vec2<bool> {
    var var_0 = func_1(global1.e.b);
    return select(vec2<bool>(!func_1(func_3(u_input.a.xz)).b.x, !any(!vec3<bool>(true, var_0.b.x, false))), arg_0.xy, arg_1.b);
}

fn func_5(arg_0: u32, arg_1: vec2<bool>, arg_2: u32) -> bool {
    global1 = Struct_5(!arg_1.x, Struct_4(-global1.b.a), max(_wgslsmith_sub_vec2_u32(abs(vec2<u32>(global1.c.x, 44624u)), ~u_input.e), global1.c), global1.d, Struct_2(global1.e.d, u_input.a.x, global1.e.c, Struct_1(func_1(_wgslsmith_mod_i32(u_input.a.x, u_input.d)).b.x)));
    var var_0 = global1.b;
    var var_1 = Struct_1(true);
    let var_2 = true;
    let var_3 = arg_1;
    return reverseBits(_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(_wgslsmith_clamp_vec4_u32(u_input.b, vec4<u32>(arg_0, 10080u, u_input.c, 8455u), u_input.b), countOneBits(u_input.b)), _wgslsmith_clamp_u32(0u, global1.c.x, global1.c.x))) == u_input.b.x;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_5(global1.c.x, select(vec2<bool>(any(select(vec2<bool>(false, global1.e.d.a), vec2<bool>(false, global1.e.a.a), vec2<bool>(false, global1.a))), _wgslsmith_mult_i32(1i, global1.e.b) >= _wgslsmith_div_i32(u_input.d, u_input.a.x)), func_4(vec3<bool>(all(vec3<bool>(false, global1.e.d.a, global1.e.a.a)), false, global1.e.a.a), func_1(global1.b.a), -2147483647i, ~(~vec3<u32>(1u, 21818u, global1.c.x))), !(!(!vec2<bool>(true, global1.e.d.a)))), countOneBits(_wgslsmith_sub_u32(_wgslsmith_clamp_u32(global1.c.x, 15411u, countOneBits(0u)), 30361u)));
    var var_1 = (u_input.b.wx ^ vec2<u32>(1u, 1u)) & ~global1.c;
    var var_2 = Struct_5(_wgslsmith_f_op_f32(-1334f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1.d * global1.d) * _wgslsmith_f_op_f32(floor(-351f)))) < _wgslsmith_f_op_f32(-635f * _wgslsmith_f_op_f32(global1.d - _wgslsmith_f_op_f32(-global1.d))), global1.b, vec2<u32>(0u, global1.c.x), 1132f, global1.e);
    var_0 = false;
    var_1 = ~global1.c;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(global1.e.c.wzy - _wgslsmith_f_op_vec3_f32(-vec3<f32>(870f, -154f, -824f)))))));
    var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(var_2.e.c.x, var_2.d, 337f) * vec3<f32>(-3068f, var_3.x, var_3.x)))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(exp2(global1.e.c.xwx)), var_2.e.c.zwz)))), vec3<bool>(any(!vec2<bool>(var_2.a, var_2.a)), global1.e.a.a, false == !var_2.e.a.a))));
    let var_4 = vec4<i32>(0i, var_2.b.a, 16479i | abs(firstLeadingBit(2147483647i) >> (_wgslsmith_dot_vec4_u32(vec4<u32>(var_1.x, 39307u, global1.c.x, 32291u), vec4<u32>(0u, 29016u, u_input.b.x, 77602u)) % 32u)), -9871i);
    let x = u_input.a;
    s_output = StorageBuffer(vec2<f32>(var_2.d, _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.d, var_2.d) * _wgslsmith_f_op_f32(802f * var_2.e.c.x))))), select(~(~(~var_1.x)), u_input.e.x, global1.e.d.a || false), var_4.x);
}

