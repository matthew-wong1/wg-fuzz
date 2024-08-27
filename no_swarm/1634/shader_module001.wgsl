struct Struct_1 {
    a: i32,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: vec3<f32>,
}

struct Struct_3 {
    a: u32,
    b: vec2<i32>,
    c: i32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec3<f32>,
    c: u32,
    d: Struct_3,
    e: bool,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: i32,
    c: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 17>;

var<private> global1: vec4<bool>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: i32, arg_2: vec2<i32>, arg_3: vec4<u32>) -> u32 {
    let var_0 = !(!global1.x);
    global1 = vec4<bool>((true && var_0) && true, global1.x, var_0, var_0);
    global1 = !vec4<bool>(!global1.x, !select(var_0, global1.x, true) && (!var_0 & any(vec3<bool>(var_0, true, false))), !(!(!var_0)), true);
    var var_1 = Struct_1(-27997i);
    var_1 = Struct_1(arg_0.b.x);
    return 1u;
}

fn func_4(arg_0: u32, arg_1: vec3<i32>, arg_2: vec3<f32>) -> vec4<bool> {
    var var_0 = Struct_2(arg_2.x, ~_wgslsmith_sub_u32(reverseBits(~arg_0), abs(arg_0)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(-617f, -928f, -149f))) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(107f, 1784f, 1160f))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(175f, arg_2.x, arg_2.x))) + arg_2) + _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-arg_2)))));
    let var_1 = abs(vec2<u32>(_wgslsmith_add_u32(max(4294967295u, var_0.b), arg_0 & (arg_0 & 47367u)), ~40069u | arg_0));
    var var_2 = select(!vec3<bool>(select(true, all(vec3<bool>(true, global1.x, global1.x)), all(vec3<bool>(global1.x, global1.x, global1.x))), true, false), !select(!global1.ywz, global1.yzy, select(global1.x, u_input.b.x <= u_input.a, true)), global1.yyx);
    var_0 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1204f)))), var_0.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(trunc(-1348f)))), _wgslsmith_f_op_f32(select(-116f, _wgslsmith_div_f32(-1000f, 455f), global1.x)), _wgslsmith_f_op_f32(floor(arg_2.x))) * vec3<f32>(_wgslsmith_f_op_f32(min(1000f, _wgslsmith_f_op_f32(min(arg_2.x, -139f)))), arg_2.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_2.x, -614f)))));
    var_2 = global1.wxx;
    return !vec4<bool>(false, true, any(!vec2<bool>(var_2.x, global1.x)), false);
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: Struct_4) -> f32 {
    global0 = array<vec4<i32>, 17>();
    let var_0 = arg_2.d;
    global1 = func_4(min(68318u, ~func_3(var_0, arg_2.d.c, arg_2.a.zz, ~vec4<u32>(var_0.a, 0u, 1u, arg_2.d.a))), -_wgslsmith_sub_vec3_i32(u_input.b, ~vec3<i32>(var_0.c, var_0.b.x, arg_0)), vec3<f32>(_wgslsmith_f_op_f32(abs(1217f)), 334f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(select(-1133f, _wgslsmith_f_op_f32(-arg_2.b.x), arg_2.e)), 648f)));
    let var_1 = firstLeadingBit(vec4<u32>(_wgslsmith_dot_vec4_u32(abs(abs(vec4<u32>(var_0.a, 37262u, 1u, arg_2.d.a))), abs(~vec4<u32>(0u, arg_2.d.a, arg_2.c, 4294967295u))), select(select(max(var_0.a, var_0.a), 28883u, true), ~arg_2.d.a, arg_2.e), _wgslsmith_mod_u32(~(~arg_2.c), ~var_0.a), _wgslsmith_clamp_u32(~1u, 0u | (84130u << (arg_2.d.a % 32u)), ~(~var_0.a))));
    let var_2 = Struct_3(~firstLeadingBit(0u), vec2<i32>(_wgslsmith_dot_vec3_i32(-u_input.b, reverseBits(max(u_input.b, vec3<i32>(arg_0, -34888i, u_input.a)))), 0i), -arg_2.d.c);
    return _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(floor(-172f))));
}

fn func_1(arg_0: vec2<i32>, arg_1: u32) -> bool {
    var var_0 = Struct_4(u_input.b, vec3<f32>(1680f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(step(-647f, 337f))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_2(i32(-1i) * -60591i, Struct_1(u_input.a), Struct_4(u_input.b, vec3<f32>(-242f, -1624f, -1204f), 24584u, Struct_3(arg_1, vec2<i32>(0i, u_input.a), 1i), global1.x))) - _wgslsmith_f_op_f32(round(-667f)))), ~(~abs(32782u)), Struct_3(1u, ~_wgslsmith_add_vec2_i32(firstTrailingBit(u_input.b.xz), -vec2<i32>(u_input.a, -2147483647i)), _wgslsmith_add_i32(reverseBits(arg_0.x >> (arg_1 % 32u)), -arg_0.x)), true);
    var var_1 = all(select(select(select(vec2<bool>(true, true), global1.ww, vec2<bool>(var_0.e, global1.x)), global1.yy, global1.yw), vec2<bool>(func_4(arg_1, var_0.a, vec3<f32>(var_0.b.x, 328f, var_0.b.x)).x, true), global1.zz)) | !global1.x;
    var var_2 = Struct_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.b.x - -944f)), 1u, _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.b.x, 622f, 404f)), _wgslsmith_f_op_vec3_f32(floor(var_0.b))))));
    var var_3 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(var_2.c))) - var_0.b);
    var_3 = var_0.b;
    return global1.x | global1.x;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = !(!(!vec4<bool>(select(true, global1.x, global1.x), func_1(u_input.b.xy, 0u), true, false)));
    let var_0 = Struct_3(1u, vec2<i32>(u_input.b.x, _wgslsmith_mult_i32(abs(40162i), u_input.a) << (1u % 32u)), ~u_input.a >> ((_wgslsmith_dot_vec4_u32(~vec4<u32>(51113u, 7607u, 54919u, 58739u), vec4<u32>(0u, 1u, 76329u, 29764u)) ^ _wgslsmith_div_u32(4294967295u, _wgslsmith_sub_u32(4294967295u, 0u))) % 32u));
    let var_1 = var_0;
    let var_2 = ~u_input.b;
    var var_3 = ~(~(~(~vec4<u32>(0u, var_1.a, 1u, 1u)) & ~vec4<u32>(var_1.a, 123611u, var_0.a, var_1.a)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(1779f, -1331f, -890f, 166f))))) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-1003f, _wgslsmith_f_op_f32(661f * 313f), _wgslsmith_f_op_f32(abs(2416f)), _wgslsmith_f_op_f32(func_2(-1040i, Struct_1(var_0.c), Struct_4(var_2, vec3<f32>(1380f, 1381f, -1162f), 4294967295u, Struct_3(0u, vec2<i32>(var_2.x, var_1.b.x), 3715i), false)))))), _wgslsmith_sub_i32(i32(-1i) * -2859i, 0i) >> ((var_1.a ^ (_wgslsmith_sub_u32(var_0.a, var_3.x) >> (63229u % 32u))) % 32u), _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(trunc(-722f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-1125f, -978f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(780f)) * _wgslsmith_f_op_f32(f32(-1f) * -694f)), 892f) + vec4<f32>(-198f, 114f, 1f, _wgslsmith_f_op_f32(select(102f, _wgslsmith_f_op_f32(max(639f, 806f)), global1.x)))));
}

