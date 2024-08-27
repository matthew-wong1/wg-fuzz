struct Struct_1 {
    a: vec4<bool>,
    b: f32,
    c: vec3<i32>,
    d: vec3<f32>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: i32,
    b: u32,
    c: i32,
    d: vec3<i32>,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: bool) -> i32 {
    let var_0 = arg_0;
    let var_1 = Struct_2(~u_input.e.x);
    let var_2 = vec2<i32>(_wgslsmith_add_i32(firstLeadingBit(-1i), u_input.d.x ^ _wgslsmith_div_i32(u_input.a << (arg_1 % 32u), 40377i << (u_input.e.x % 32u))), ~firstTrailingBit(var_0.c.x));
    let var_3 = Struct_2(~max(0u, u_input.b));
    var var_4 = select(!select(vec4<bool>(true, true, true, var_0.a.x), vec4<bool>(true, false, any(vec4<bool>(var_0.a.x, arg_0.a.x, var_0.a.x, var_0.a.x)), arg_0.a.x), var_0.a.x), select(select(vec4<bool>(true, true, arg_2, -1070f != arg_0.d.x), var_0.a, true), vec4<bool>(arg_0.a.x, all(vec2<bool>(false, false)), !arg_0.a.x, any(!arg_0.a.zy)), select(var_0.a, arg_0.a, arg_0.a.x || true)), select(true, var_2.x >= _wgslsmith_mod_i32(-16205i, 50288i), arg_0.a.x));
    return ~countOneBits(_wgslsmith_dot_vec2_i32(var_2, var_2));
}

fn func_2(arg_0: Struct_2) -> Struct_2 {
    var var_0 = vec4<u32>(0u, arg_0.a, arg_0.a, u_input.b);
    var var_1 = 1i;
    let var_2 = -13191i;
    var_1 = _wgslsmith_add_i32(_wgslsmith_mult_i32(func_3(Struct_1(select(vec4<bool>(false, true, false, false), vec4<bool>(false, true, true, true), true), 1915f, _wgslsmith_mod_vec3_i32(vec3<i32>(u_input.a, u_input.c, u_input.a), vec3<i32>(17950i, 0i, 0i)), _wgslsmith_f_op_vec3_f32(vec3<f32>(-808f, -1462f, 311f) - vec3<f32>(1000f, -1000f, 758f))), 20193u, true), 0i), u_input.a);
    var var_3 = Struct_2(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.e.x, arg_0.a), select(vec2<u32>(64506u, 45616u), vec2<u32>(var_0.x, 8614u), vec2<bool>(true, true))) & 56478u, arg_0.a ^ 36793u));
    return arg_0;
}

fn func_1(arg_0: bool) -> Struct_1 {
    let var_0 = func_2(Struct_2(u_input.e.x));
    let var_1 = vec4<u32>(~_wgslsmith_mod_u32(62290u, ~_wgslsmith_clamp_u32(1u, 0u, 32161u)), 1u, 0u, _wgslsmith_mod_u32(u_input.b, var_0.a));
    var var_2 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -290f) + _wgslsmith_f_op_f32(floor(-339f))), _wgslsmith_f_op_f32(294f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-162f, -612f)))), -976f));
    var_2 = _wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_2.x, 390f, var_2.x), vec3<f32>(var_2.x, var_2.x, 2167f))))))))));
    let var_3 = u_input.e.x;
    return Struct_1(!vec4<bool>(any(vec4<bool>(true, true, true, true)), true, true, arg_0), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -200f))), _wgslsmith_f_op_f32(f32(-1f) * -1412f)))), u_input.d, _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1185f, var_2.x, _wgslsmith_div_f32(_wgslsmith_f_op_f32(round(1926f)), _wgslsmith_f_op_f32(round(var_2.x)))))));
}

fn func_4(arg_0: i32, arg_1: Struct_1, arg_2: u32, arg_3: Struct_1) -> vec4<bool> {
    let var_0 = 1i;
    let var_1 = arg_1.a.x;
    let var_2 = false;
    var var_3 = vec3<f32>(arg_1.b, arg_3.d.x, 1000f);
    var_3 = arg_1.d;
    return arg_1.a;
}

fn func_5(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: vec4<bool>) -> Struct_2 {
    var var_0 = func_1(arg_2.x);
    var_0 = Struct_1(vec4<bool>(!any(select(vec4<bool>(false, true, false, var_0.a.x), var_0.a, var_0.a)), any(var_0.a.yzx), _wgslsmith_div_f32(var_0.b, _wgslsmith_f_op_f32(exp2(var_0.b))) >= -1354f, arg_2.x), var_0.d.x, arg_0, vec3<f32>(-603f, _wgslsmith_f_op_f32(floor(var_0.b)), 1183f));
    var var_1 = _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.b, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0.d.x))), var_0.d.x, _wgslsmith_f_op_f32(abs(var_0.d.x)))))));
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.x * 1329f));
    var_1 = _wgslsmith_f_op_vec4_f32(abs(vec4<f32>(717f, _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(439f)), 1214f))), _wgslsmith_f_op_f32(-var_0.b), _wgslsmith_f_op_f32(-var_2))));
    return func_2(func_2(Struct_2(~(arg_1.x | u_input.b))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = u_input.b | u_input.b;
    let var_1 = func_5(-u_input.d, _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, ~min(var_0, u_input.e.x), ~_wgslsmith_div_u32(91687u, var_0)), select(vec3<u32>(u_input.e.x, _wgslsmith_dot_vec3_u32(u_input.e, vec3<u32>(35788u, 0u, 21451u)), ~var_0), u_input.e, vec3<bool>(true, true, true))), select(vec4<bool>(true, true, true, true), select(vec4<bool>(false, 1u < var_0, false, true), vec4<bool>(false, true, false, true), func_4(u_input.c << (4294967295u % 32u), func_1(true), 0u, func_1(true))), func_1(true).a.x));
    let var_2 = var_1;
    let var_3 = true;
    let var_4 = vec2<u32>(45862u, abs(4294967295u));
    var var_5 = Struct_1(!func_1(true).a, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-316f * _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f - -1602f), _wgslsmith_f_op_f32(ceil(1216f)), !var_3))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1531f, -1426f))), _wgslsmith_mod_vec3_i32(u_input.d, vec3<i32>(u_input.a, u_input.d.x, _wgslsmith_div_i32(0i, 1i)) ^ (u_input.d >> (firstTrailingBit(vec3<u32>(26041u, 43028u, var_0)) % vec3<u32>(32u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_div_vec3_f32(vec3<f32>(2377f, -1000f, 472f), vec3<f32>(1256f, 669f, -1018f)))))));
    var var_6 = select(!select(var_5.a.wwx, !select(vec3<bool>(false, var_5.a.x, true), vec3<bool>(var_3, var_3, var_5.a.x), vec3<bool>(var_3, false, var_5.a.x)), vec3<bool>(var_3, var_5.a.x || true, var_3)), var_5.a.wyx, var_5.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_u32(firstTrailingBit(~(4294967295u << (0u % 32u))), ~((22172u << (var_1.a % 32u)) << (~var_4.x % 32u))), vec2<i32>((u_input.d.x >> (1u % 32u)) << (func_5(-u_input.d, _wgslsmith_sub_vec3_u32(u_input.e, u_input.e), func_4(var_5.c.x, Struct_1(var_5.a, -138f, u_input.d, var_5.d), 0u, Struct_1(var_5.a, 469f, u_input.d, var_5.d))).a % 32u), var_5.c.x));
}

