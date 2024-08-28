struct Struct_1 {
    a: vec2<u32>,
    b: u32,
    c: f32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
}

struct Struct_3 {
    a: vec2<f32>,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: f32,
    c: u32,
    d: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_3, arg_1: Struct_3, arg_2: bool) -> vec2<f32> {
    let var_0 = Struct_2(Struct_1(min(~(vec2<u32>(1u, 1u) ^ vec2<u32>(27124u, u_input.b)), ~_wgslsmith_sub_vec2_u32(vec2<u32>(1u, u_input.b), vec2<u32>(u_input.b, 4655u))), ~9422u, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-148f - _wgslsmith_f_op_f32(f32(-1f) * -1597f)))), Struct_1((~vec2<u32>(u_input.b, 4294967295u) << (abs(vec2<u32>(u_input.b, 0u)) % vec2<u32>(32u))) >> (~_wgslsmith_mult_vec2_u32(vec2<u32>(4294967295u, u_input.b), vec2<u32>(13099u, u_input.b)) % vec2<u32>(32u)), _wgslsmith_mod_u32(41788u, firstLeadingBit(1u)), -667f), any(!vec2<bool>(!arg_2, select(true, true, false))));
    let var_1 = arg_0;
    var var_2 = Struct_3(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(-504f, -1018f), vec2<f32>(-279f, -552f)))))), vec2<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(var_1.a.x * var_1.a.x))), _wgslsmith_f_op_f32(round(var_0.b.c)))));
    var_2 = arg_0;
    var var_3 = max(-(vec3<i32>(abs(-1i), _wgslsmith_clamp_i32(u_input.a.x, u_input.a.x, 2147483647i), 1i) ^ select(vec3<i32>(32836i, u_input.a.x, 0i), -u_input.a.xyx, any(vec4<bool>(arg_2, arg_2, arg_2, true)))), vec3<i32>(max(~26045i & _wgslsmith_mult_i32(-25707i, u_input.a.x), u_input.a.x), u_input.a.x, u_input.a.x));
    return _wgslsmith_div_vec2_f32(var_1.a, var_2.a);
}

fn func_2() -> Struct_2 {
    var var_0 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_3(Struct_3(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(vec2<f32>(1073f, -1024f) * vec2<f32>(-391f, -536f)), vec2<f32>(-1453f, -1617f)))), Struct_3(_wgslsmith_f_op_vec2_f32(vec2<f32>(-554f, 175f) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(-671f, -323f)))), any(vec2<bool>(true, select(false, true, true))))) + vec2<f32>(_wgslsmith_f_op_f32(round(-1050f)), _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -421f), -642f)))));
    let var_1 = _wgslsmith_f_op_f32(ceil(var_0.x));
    var_0 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1334f, 1743f)))))));
    var var_2 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(1265f, var_0.x, 1593f, 431f), vec4<f32>(-134f, 782f, var_1, -1427f))), _wgslsmith_f_op_vec4_f32(max(vec4<f32>(-841f, 151f, -554f, -597f), vec4<f32>(-1664f, 758f, var_0.x, var_1))), true)))) + _wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(224f, var_0.x, 263f, var_0.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-390f, var_1, var_1, var_1))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1000f, 1079f, var_0.x, var_0.x)))), _wgslsmith_f_op_vec4_f32(sign(vec4<f32>(var_0.x, 1703f, _wgslsmith_f_op_f32(-var_1), var_0.x)))));
    var var_3 = ~u_input.a.wyx;
    return Struct_2(Struct_1(min(vec2<u32>(4294967295u | u_input.b, _wgslsmith_add_u32(0u, u_input.b)), _wgslsmith_sub_vec2_u32(max(vec2<u32>(4294967295u, 1u), vec2<u32>(u_input.b, 4294967295u)), vec2<u32>(u_input.b, 0u) | vec2<u32>(4294967295u, u_input.b))), 50106u, var_0.x), Struct_1(~(~max(vec2<u32>(4335u, u_input.b), vec2<u32>(u_input.b, u_input.b))), 0u, 755f), abs(_wgslsmith_sub_i32(0i, ~u_input.a.x)) > (_wgslsmith_sub_i32(-1i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_3.x, -2147483647i, var_3.x), vec3<i32>(-46852i, var_3.x, 2147483647i))) & var_3.x));
}

fn func_1(arg_0: vec4<u32>, arg_1: vec3<u32>) -> i32 {
    var var_0 = vec4<bool>(all(vec2<bool>(false, !all(vec2<bool>(true, false)))), !(~u_input.b >= ~arg_1.x) & all(vec4<bool>(all(vec3<bool>(false, false, true)), true, u_input.a.x <= -2147483647i, true)), true, true);
    let var_1 = func_2();
    let var_2 = ~func_2().a.b >= 68796u;
    let var_3 = true;
    var var_4 = all(select(vec4<bool>(var_0.x, false, true, true), select(vec4<bool>(16461u < arg_0.x, false, all(vec4<bool>(true, var_3, false, var_2)), all(vec4<bool>(var_2, true, false, var_2))), vec4<bool>(all(vec2<bool>(var_2, var_0.x)), select(var_1.c, var_1.c, var_1.c), var_0.x, true), false), var_0.x));
    return -2147483647i;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = firstLeadingBit(func_1(_wgslsmith_div_vec4_u32(reverseBits(vec4<u32>(u_input.b, 17274u, 31741u, u_input.b)), vec4<u32>(1u, ~u_input.b, reverseBits(53049u), 1u)), _wgslsmith_clamp_vec3_u32(reverseBits(~vec3<u32>(u_input.b, 1u, u_input.b)), ~_wgslsmith_mult_vec3_u32(vec3<u32>(0u, u_input.b, 4294967295u), vec3<u32>(u_input.b, u_input.b, 6483u)), vec3<u32>(firstLeadingBit(71241u), ~u_input.b, ~4294967295u))));
    var var_1 = vec4<u32>(u_input.b, firstTrailingBit(4294967295u), select(u_input.b, _wgslsmith_mult_u32(~(~u_input.b), firstLeadingBit(~u_input.b)), false), _wgslsmith_mult_u32(4294967295u, 1u));
    var_1 = _wgslsmith_add_vec4_u32(vec4<u32>(58466u, ~4294967295u, func_2().b.a.x, var_1.x), _wgslsmith_add_vec4_u32(vec4<u32>(74330u, ~_wgslsmith_sub_u32(u_input.b, 0u), var_1.x, countOneBits(var_1.x & 4294967295u)), ~vec4<u32>(u_input.b, 1u, ~u_input.b, 1u)));
    var var_2 = !vec4<bool>(select(any(vec2<bool>(true, true)), true, true), !any(vec4<bool>(true, false, false, true)) && false, any(vec2<bool>(true, true)), true);
    var var_3 = !select(var_2.wy, !select(vec2<bool>(true, true), vec2<bool>(var_2.x, false), !var_2.zy), var_2.zw);
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1250f + -1508f))))), _wgslsmith_f_op_f32(exp2(_wgslsmith_div_f32(_wgslsmith_div_f32(2224f, -722f), _wgslsmith_f_op_f32(floor(-1000f))))))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_vec3_u32(var_1.xzw, var_1.zzx) >> (firstLeadingBit(var_1.zyy) % vec3<u32>(32u)), func_2().a.c, firstLeadingBit(var_1.x ^ u_input.b), vec3<u32>(u_input.b, _wgslsmith_clamp_u32(_wgslsmith_div_u32(99105u, var_1.x << (var_1.x % 32u)), u_input.b, var_1.x), var_1.x));
}

