struct Struct_1 {
    a: vec3<i32>,
    b: vec4<f32>,
    c: vec3<u32>,
    d: vec2<f32>,
    e: vec2<bool>,
}

struct Struct_2 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<i32>,
    c: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: u32;

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3() -> i32 {
    global0 = Struct_1(-(global0.a & u_input.b.zwy), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(global0.b, global0.b)))), reverseBits(_wgslsmith_sub_vec3_u32(countOneBits(vec3<u32>(global0.c.x, 0u, 4294967295u)), global0.c >> (vec3<u32>(global0.c.x, 4294967295u, 1u) % vec3<u32>(32u)))) >> (global0.c % vec3<u32>(32u)), vec2<f32>(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(-global0.d.x), _wgslsmith_f_op_f32(f32(-1f) * -835f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -989f) - global0.d.x)), vec2<bool>(any(vec4<bool>(global0.e.x | global0.e.x, false, any(vec4<bool>(global0.e.x, false, true, false)), !global0.e.x)), ~global0.c.x >= 0u));
    global0 = Struct_1(countOneBits(vec3<i32>(11597i, ~(-26210i), _wgslsmith_add_i32(u_input.c, 64827i) & 1i)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(331f, global0.d.x, -1404f, _wgslsmith_f_op_f32(select(635f, global0.d.x, false))))), min(global0.c, global0.c), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global0.b.x, global0.d.x))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(global0.d.x, global0.b.x) + vec2<f32>(-1590f, 124f)))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(global0.d + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(global0.b.x, global0.d.x)))))), global0.e);
    let var_0 = _wgslsmith_f_op_f32(global0.b.x + global0.d.x);
    global0 = Struct_1(global0.a, vec4<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(var_0)) - global0.d.x), _wgslsmith_div_f32(-261f, var_0)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(global0.d.x)))))), _wgslsmith_f_op_f32(f32(-1f) * -221f), _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.b.x + 539f), _wgslsmith_f_op_f32(-global0.b.x)), 301f, _wgslsmith_f_op_f32(step(-407f, 1748f)) == -785f))), abs(_wgslsmith_mod_vec3_u32(vec3<u32>(~global0.c.x, 21488u ^ global0.c.x, firstTrailingBit(global0.c.x)), global0.c)), _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(trunc(global0.b.wz)))), _wgslsmith_f_op_vec2_f32(-global0.d), select(global0.d.x == global0.b.x, global0.e.x, true))), global0.b.zz)), vec2<bool>(!(!any(vec2<bool>(true, global0.e.x))), global0.e.x));
    global1 = global0.c.x;
    return 0i;
}

fn func_2() -> Struct_2 {
    global0 = Struct_1(vec3<i32>(func_3(), select(global0.a.x ^ 0i, 0i, !global0.e.x) ^ firstLeadingBit(1i), u_input.b.x), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(global0.d.x, -247f))), 1000f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(374f, -1000f) + _wgslsmith_f_op_f32(trunc(global0.d.x))), _wgslsmith_f_op_f32(select(-657f, _wgslsmith_f_op_f32(-global0.d.x), global0.e.x)))), global0.c, vec2<f32>(-2084f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1081f * _wgslsmith_div_f32(global0.b.x, 1121f)) - _wgslsmith_f_op_f32(abs(global0.b.x)))), vec2<bool>(all(vec3<bool>(!global0.e.x, global0.e.x, global0.b.x > global0.d.x)), global0.e.x));
    var var_0 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(sign(-2021f)), 312f));
    global0 = Struct_1(vec3<i32>(_wgslsmith_dot_vec3_i32(u_input.b.zyz, -vec3<i32>(19532i, 2147483647i, 20459i)), global0.a.x, _wgslsmith_add_i32(~(-7139i), -1i) ^ global0.a.x), _wgslsmith_f_op_vec4_f32(min(vec4<f32>(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(global0.d.x + global0.d.x))), 316f, -481f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(ceil(var_0.x))))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0.x, var_0.x, 1094f, var_0.x))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.b.x, -929f, global0.d.x, -525f) - vec4<f32>(467f, global0.b.x, var_0.x, global0.d.x)), global0.b, all(vec3<bool>(true, true, global0.e.x)))), any(global0.e))))), vec3<u32>(~70305u, 1u, 4294967295u), global0.b.zy, global0.e);
    global0 = Struct_1(u_input.b.xyx, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(vec4<f32>(-2824f, var_0.x, var_0.x, -906f) - vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x))) - _wgslsmith_f_op_vec4_f32(global0.b + _wgslsmith_div_vec4_f32(global0.b, global0.b)))), vec3<u32>(_wgslsmith_sub_u32(global0.c.x, _wgslsmith_mult_u32(abs(3027u), global0.c.x)), _wgslsmith_mod_u32(global0.c.x, ~global0.c.x), 1u << (~global0.c.x % 32u)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, 1184f)) - _wgslsmith_div_vec2_f32(global0.b.zw, vec2<f32>(var_0.x, -1504f))) * _wgslsmith_div_vec2_f32(global0.d, global0.d)), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b.xz * global0.b.wy) + vec2<f32>(-1567f, -1000f)))))), global0.e);
    var var_1 = vec2<f32>(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(global0.d.x, -1440f))))), _wgslsmith_f_op_f32(f32(-1f) * -954f));
    return Struct_2(~select(_wgslsmith_div_vec4_u32(vec4<u32>(global0.c.x, u_input.a, u_input.a, 70885u), vec4<u32>(1u, 4294967295u, u_input.a, global0.c.x)), _wgslsmith_add_vec4_u32(countOneBits(vec4<u32>(0u, u_input.a, 4294967295u, global0.c.x)), vec4<u32>(global0.c.x, 54231u, 1u, 4294967295u)), !select(vec4<bool>(global0.e.x, true, global0.e.x, false), vec4<bool>(false, global0.e.x, false, true), false)));
}

fn func_4(arg_0: f32, arg_1: Struct_2, arg_2: vec4<i32>, arg_3: vec3<f32>) -> Struct_2 {
    let var_0 = ~(-(~vec4<i32>(-5846i, -16252i, 22079i, u_input.c)) << (reverseBits(~vec4<u32>(4294967295u, global0.c.x, arg_1.a.x, 1u)) % vec4<u32>(32u)));
    global0 = Struct_1(var_0.ywx, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(505f + arg_0), 834f, -748f, arg_0)) * _wgslsmith_f_op_vec4_f32(global0.b - _wgslsmith_f_op_vec4_f32(step(global0.b, _wgslsmith_f_op_vec4_f32(-vec4<f32>(-717f, 638f, -642f, -1000f)))))), abs(vec3<u32>(max(0u, u_input.a) & (global0.c.x | global0.c.x), _wgslsmith_mult_u32(16163u, firstTrailingBit(u_input.a)), ~_wgslsmith_clamp_u32(arg_1.a.x, 1u, arg_1.a.x))), vec2<f32>(_wgslsmith_f_op_f32(floor(730f)), _wgslsmith_div_f32(arg_0, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(global0.b.x)))))), global0.e);
    global0 = Struct_1(global0.a, _wgslsmith_f_op_vec4_f32(-global0.b), global0.c, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(358f, -564f) - global0.d) - vec2<f32>(_wgslsmith_f_op_f32(abs(-2044f)), _wgslsmith_f_op_f32(1000f * -1000f)))), !(!global0.e));
    var var_1 = Struct_1(select(abs(-vec3<i32>(arg_2.x, global0.a.x, 39239i) | vec3<i32>(-73294i, 0i, u_input.b.x)), vec3<i32>(arg_2.x, 1i, var_0.x), select(select(vec3<bool>(true, global0.e.x, global0.e.x), select(vec3<bool>(true, true, global0.e.x), vec3<bool>(global0.e.x, false, global0.e.x), global0.e.x), true), select(vec3<bool>(global0.e.x, true, global0.e.x), vec3<bool>(true, global0.e.x, global0.e.x), true), !all(vec4<bool>(global0.e.x, global0.e.x, false, global0.e.x)))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_div_vec4_f32(vec4<f32>(-783f, arg_3.x, arg_0, 944f), _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_0, global0.b.x, global0.b.x, 652f) * global0.b)), vec4<f32>(global0.d.x, _wgslsmith_f_op_f32(select(arg_3.x, arg_0, true)), _wgslsmith_f_op_f32(max(184f, arg_3.x)), _wgslsmith_f_op_f32(max(global0.d.x, 108f))))), arg_1.a.wwy, _wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0, -1619f) + arg_3.xx), _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_3.x, 163f)), global0.d, 3968i > u_input.b.x))), vec2<f32>(global0.b.x, _wgslsmith_f_op_f32(-898f - _wgslsmith_div_f32(-540f, global0.d.x))))), vec2<bool>(true, all(!(!global0.e))));
    let var_2 = arg_1;
    return Struct_2(vec4<u32>(~(~_wgslsmith_div_u32(32227u, arg_1.a.x)), firstTrailingBit(global0.c.x), 14189u, ~(~global0.c.x)));
}

fn func_1(arg_0: bool) -> StorageBuffer {
    let var_0 = func_4(global0.d.x, func_2(), u_input.b, global0.b.wyw);
    global0 = Struct_1(select(vec3<i32>(-42385i, u_input.c, func_3()) ^ global0.a, global0.a, vec3<bool>(arg_0, !any(global0.e), arg_0 | global0.e.x)), global0.b, max(global0.c, vec3<u32>(~69042u, func_2().a.x, ~var_0.a.x)) & ~vec3<u32>(_wgslsmith_mult_u32(global0.c.x, 1u), u_input.a, var_0.a.x), _wgslsmith_f_op_vec2_f32(-global0.d), vec2<bool>(arg_0, global0.e.x));
    var var_1 = vec3<bool>(global0.e.x, global0.e.x, any(select(select(vec3<bool>(false, true, global0.e.x), !vec3<bool>(false, global0.e.x, true), global0.e.x), vec3<bool>(arg_0, select(arg_0, arg_0, arg_0), false), false)));
    var var_2 = global0.b.x;
    global0 = Struct_1(u_input.b.xzx, _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-global0.b.x))), global0.d.x, -343f, global0.d.x)), _wgslsmith_clamp_vec3_u32(vec3<u32>(global0.c.x, ~1u, _wgslsmith_dot_vec4_u32(var_0.a, vec4<u32>(var_0.a.x, u_input.a, u_input.a, var_0.a.x) << (vec4<u32>(var_0.a.x, 9498u, u_input.a, 88658u) % vec4<u32>(32u)))), ~vec3<u32>(u_input.a, 4294967295u, var_0.a.x), ~select(vec3<u32>(u_input.a, u_input.a, global0.c.x), firstTrailingBit(vec3<u32>(global0.c.x, 19230u, 0u)), vec3<bool>(arg_0, arg_0, false))), vec2<f32>(512f, _wgslsmith_f_op_f32(-global0.d.x)), vec2<bool>(true, global0.e.x));
    return StorageBuffer(_wgslsmith_dot_vec4_i32(u_input.b, countOneBits(~max(vec4<i32>(global0.a.x, -1i, global0.a.x, u_input.b.x), vec4<i32>(30081i, 28820i, u_input.c, global0.a.x)))), ~_wgslsmith_dot_vec2_i32(global0.a.xy, global0.a.zy), vec4<i32>(global0.a.x, global0.a.x, ~abs(u_input.b.x), global0.a.x), vec2<f32>(-360f, global0.b.x));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = -1527f;
    var var_1 = u_input.a;
    let x = u_input.a;
    s_output = func_1(true);
}

