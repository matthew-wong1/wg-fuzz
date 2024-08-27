struct Struct_1 {
    a: u32,
    b: vec2<bool>,
    c: vec4<f32>,
    d: i32,
}

struct Struct_2 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: i32,
    b: vec3<i32>,
    c: vec2<u32>,
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

var<private> global0: vec2<i32>;

var<private> global1: Struct_2 = Struct_2(vec2<f32>(-1223f, 219f), vec3<f32>(-794f, -126f, -645f));

var<private> global2: Struct_1;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: i32, arg_1: u32) -> vec2<i32> {
    let var_0 = vec2<u32>(~u_input.c.x, 28527u);
    let var_1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(1100f - global1.a.x))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -379f), -796f))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(global1.a)))), global1.b);
    let var_2 = Struct_1(_wgslsmith_sub_u32(u_input.c.x & ~0u, 0u), !select(global2.b, select(vec2<bool>(global2.b.x, true), vec2<bool>(global2.b.x, global2.b.x), !global2.b.x), any(!vec4<bool>(global2.b.x, global2.b.x, global2.b.x, global2.b.x))), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(_wgslsmith_f_op_f32(ceil(-315f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(1986f))), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-1326f, global2.c.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(854f)) * _wgslsmith_f_op_f32(870f + 524f))))), ~1i);
    var var_3 = vec3<i32>(_wgslsmith_mod_i32(firstLeadingBit(-19454i), var_2.d), -1i, -2147483647i);
    let var_4 = -22126i;
    return var_3.yy;
}

fn func_3() -> u32 {
    var var_0 = select(vec2<bool>(false && all(!vec2<bool>(global2.b.x, global2.b.x)), global2.b.x), global2.b, select(!(!select(global2.b, global2.b, true)), global2.b, true));
    var var_1 = firstLeadingBit(_wgslsmith_dot_vec2_u32(u_input.c, abs(u_input.c)));
    global0 = func_2(-25166i, _wgslsmith_sub_u32(countOneBits(1u), global2.a));
    global2 = Struct_1(u_input.c.x, global2.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(_wgslsmith_f_op_f32(f32(-1f) * -675f), _wgslsmith_f_op_f32(ceil(global1.b.x)), _wgslsmith_f_op_f32(1135f * global2.c.x), global2.c.x) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(global2.c.x, global1.b.x, -2093f, global1.a.x), global2.c))) + _wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(global2.c.x, 395f, global1.b.x, global2.c.x))))), abs(abs((u_input.b.x << (1u % 32u)) >> (global2.a % 32u))));
    let var_2 = true || any(!vec4<bool>(false, !var_0.x, true, true));
    return global2.a;
}

fn func_1(arg_0: vec2<f32>, arg_1: Struct_1) -> Struct_1 {
    let var_0 = func_2(~u_input.a, ~_wgslsmith_add_u32(18386u | arg_1.a, ~(arg_1.a & 4294967295u)));
    global1 = Struct_2(global1.a, _wgslsmith_f_op_vec3_f32(max(global1.b, global1.b)));
    let var_1 = arg_1;
    var var_2 = Struct_1(func_3(), vec2<bool>(global2.b.x, arg_1.b.x), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(arg_1.c * _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.b.x, 1169f, 1276f, -1133f) + global2.c))) + _wgslsmith_f_op_vec4_f32(arg_1.c + _wgslsmith_f_op_vec4_f32(vec4<f32>(862f, global1.b.x, -438f, var_1.c.x) - vec4<f32>(var_1.c.x, global2.c.x, arg_1.c.x, var_1.c.x)))), _wgslsmith_dot_vec2_i32(vec2<i32>(global0.x, select(-8556i, -1i, true) >> (_wgslsmith_add_u32(u_input.c.x, 1u) % 32u)), u_input.b.zx & vec2<i32>(arg_1.d & global2.d, firstLeadingBit(-2147483647i))));
    let var_3 = ~reverseBits(vec3<u32>(0u, var_1.a >> (1u % 32u), _wgslsmith_div_u32(19773u, 12430u)) & ~_wgslsmith_mult_vec3_u32(vec3<u32>(var_1.a, 4294967295u, arg_1.a), vec3<u32>(u_input.c.x, u_input.c.x, 0u)));
    return arg_1;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_sub_u32(~18635u, 80957u);
    global2 = func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(global1.a.x, global2.c.x))) + vec2<f32>(global2.c.x, global2.c.x))))), Struct_1(firstLeadingBit(~1u), vec2<bool>(true, any(!vec4<bool>(global2.b.x, global2.b.x, true, true))), global2.c, _wgslsmith_clamp_i32(global0.x, -u_input.b.x, _wgslsmith_div_i32(-2147483647i, 1i))));
    let var_1 = Struct_2(global2.c.yw, _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(sign(global1.a.x)), global2.c.x, _wgslsmith_f_op_f32(-403f - 1136f)))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(global2.c.ywx + vec3<f32>(324f, -1149f, global2.c.x)) - _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(global1.b.x, -1858f, -1522f))))));
    global1 = Struct_2(_wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1096f + 2086f)), _wgslsmith_f_op_f32(trunc(1f))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-global1.a) + _wgslsmith_f_op_vec2_f32(-global1.b.xz))), vec3<f32>(_wgslsmith_f_op_f32(-global1.b.x), _wgslsmith_f_op_f32(-global1.b.x), func_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-1177f, 276f), global2.c.wz, global2.b.x))), func_1(_wgslsmith_f_op_vec2_f32(global1.b.zx + vec2<f32>(-495f, var_1.b.x)), Struct_1(global2.a, global2.b, vec4<f32>(global2.c.x, global2.c.x, 672f, -484f), -28609i))).c.x));
    let var_2 = false;
    global2 = func_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-710f * -1000f), 2187f)), func_1(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(1485f, -1248f), global1.a, false)), vec2<f32>(1f, 1f), vec2<bool>(global2.b.x, global2.b.x))))), func_1(_wgslsmith_f_op_vec2_f32(var_1.a - _wgslsmith_div_vec2_f32(vec2<f32>(var_1.b.x, global2.c.x), vec2<f32>(var_1.b.x, global1.a.x))), Struct_1(u_input.c.x & var_0, !vec2<bool>(var_2, var_2), _wgslsmith_f_op_vec4_f32(-vec4<f32>(583f, -2234f, global1.b.x, var_1.a.x)), ~(-19281i)))));
    global0 = vec2<i32>(-abs(firstTrailingBit(~(-58525i))), ~(-countOneBits(~u_input.b.x)));
    var var_3 = global2.c.x;
    let var_4 = Struct_1(global2.a, vec2<bool>(true, true), _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(exp2(global2.c.x)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global2.c.x) - _wgslsmith_f_op_f32(var_1.a.x - global1.b.x)), _wgslsmith_f_op_f32(-global2.c.x), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1.a.x * -783f)))), _wgslsmith_dot_vec2_i32(countOneBits(u_input.b.zz) | max(_wgslsmith_add_vec2_i32(vec2<i32>(-29473i, -7981i), vec2<i32>(1116i, u_input.a)), vec2<i32>(-1i, 70141i)), vec2<i32>(u_input.b.x >> (u_input.c.x % 32u), global0.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_4.c.x * -797f)));
}

