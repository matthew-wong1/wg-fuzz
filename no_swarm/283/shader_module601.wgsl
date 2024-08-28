struct Struct_1 {
    a: vec4<u32>,
    b: vec2<f32>,
    c: vec3<f32>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: i32,
    e: vec2<i32>,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: i32,
    c: i32,
    d: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: i32,
    d: i32,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn func_3(arg_0: vec4<f32>, arg_1: Struct_2) -> u32 {
    let var_0 = !(!vec4<bool>(true, false, false, !(arg_1.c == arg_1.c)));
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-380f - _wgslsmith_f_op_f32(max(arg_0.x, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_1.a.b.x, 675f))))));
    var var_2 = !vec3<bool>(all(!var_0.xx) | true, false, (_wgslsmith_clamp_i32(arg_1.e.x, 55173i, arg_1.e.x) < _wgslsmith_dot_vec2_i32(vec2<i32>(17527i, -1i), vec2<i32>(-2147483647i, arg_1.e.x))) & false);
    var var_3 = var_0.x;
    let var_4 = arg_1;
    return abs(countOneBits(_wgslsmith_add_u32(countOneBits(max(21768u, 4294967295u)), ~firstTrailingBit(4294967295u))));
}

fn func_2(arg_0: i32, arg_1: Struct_1, arg_2: vec3<u32>, arg_3: vec2<f32>) -> Struct_2 {
    let var_0 = Struct_2(arg_1, Struct_1(_wgslsmith_mult_vec4_u32(arg_1.a, vec4<u32>(~u_input.a.x, 1u, func_3(vec4<f32>(696f, arg_3.x, -478f, arg_1.b.x), Struct_2(arg_1, arg_1, false, 1i, vec2<i32>(u_input.d.x, u_input.c))), ~u_input.a.x)), arg_1.c.yy, vec3<f32>(arg_3.x, _wgslsmith_div_f32(_wgslsmith_div_f32(1226f, 430f), _wgslsmith_div_f32(-180f, arg_3.x)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(arg_1.c.x, arg_3.x, false))))), !(!(false | (u_input.d.x < 4018i))), 1i, min(~u_input.d.yy, _wgslsmith_mod_vec2_i32(u_input.d.xz, -select(vec2<i32>(34778i, 0i), u_input.d.yx, vec2<bool>(true, false)))));
    var var_1 = countOneBits(_wgslsmith_div_i32(-20532i, 7840i));
    var_1 = -_wgslsmith_add_i32(_wgslsmith_dot_vec3_i32(u_input.d ^ -u_input.d, u_input.d), _wgslsmith_add_i32(reverseBits(i32(-1i) * -18699i), -abs(u_input.c)));
    var_1 = _wgslsmith_mod_i32(-2147483647i, u_input.d.x);
    var var_2 = _wgslsmith_sub_u32(arg_2.x, countOneBits(~(~arg_2.x) | 1u));
    return Struct_2(var_0.b, var_0.b, false || (-869f <= arg_3.x), abs(-2456i), ~var_0.e);
}

fn func_1() -> StorageBuffer {
    let var_0 = ~u_input.b;
    let var_1 = func_2(-_wgslsmith_sub_i32(-1i, 1i), Struct_1(_wgslsmith_div_vec4_u32(vec4<u32>(~u_input.a.x, 8224u ^ u_input.a.x, ~1u, 43429u), vec4<u32>(11533u, u_input.a.x, 36435u, u_input.a.x) >> (max(vec4<u32>(4294967295u, 0u, 4294967295u, 59596u), vec4<u32>(40257u, u_input.a.x, u_input.a.x, 1u)) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(-2041f, -344f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -512f), -662f, 2324f) * _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(vec3<f32>(-741f, 1050f, -937f) - vec3<f32>(-995f, -1000f, 1048f)))))), ~(~u_input.a), _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-583f, 1756f))))));
    let var_2 = ~(~_wgslsmith_div_u32(func_2(_wgslsmith_sub_i32(-7883i, 25966i), Struct_1(var_1.b.a, var_1.b.b, vec3<f32>(1432f, 246f, var_1.b.b.x)), ~u_input.a, var_1.a.c.zz).a.a.x, _wgslsmith_dot_vec2_u32(_wgslsmith_clamp_vec2_u32(var_1.a.a.yy, u_input.a.zx, vec2<u32>(u_input.a.x, 4294967295u)), ~vec2<u32>(u_input.a.x, 67744u))));
    let var_3 = _wgslsmith_f_op_f32(f32(-1f) * -180f);
    let var_4 = func_2(_wgslsmith_mod_i32(countOneBits(abs(1i)), firstTrailingBit(-1i)), func_2(var_0, func_2(_wgslsmith_div_i32(2147483647i, var_0) >> (~4294967295u % 32u), func_2(~u_input.d.x, var_1.b, u_input.a, var_1.b.c.yx).a, ~_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, var_2, 1u), u_input.a), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-var_1.b.b) + _wgslsmith_div_vec2_f32(vec2<f32>(var_1.a.b.x, -586f), var_1.b.c.xz))).b, ~min(var_1.a.a.wyx, ~vec3<u32>(u_input.a.x, 0u, var_1.a.a.x)), _wgslsmith_f_op_vec2_f32(max(vec2<f32>(var_3, _wgslsmith_f_op_f32(-var_3)), func_2(u_input.b, Struct_1(vec4<u32>(var_1.b.a.x, var_2, var_2, 1349u), var_1.a.b, vec3<f32>(-942f, 1111f, 245f)), ~var_1.a.a.zwy, vec2<f32>(-1243f, 238f)).b.b))).a, var_1.a.a.wxx ^ var_1.b.a.zyy, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(step(var_1.b.c.yx, _wgslsmith_f_op_vec2_f32(-vec2<f32>(var_1.a.c.x, -2411f)))), func_2(u_input.b, var_1.a, vec3<u32>(var_2, var_1.b.a.x, 50353u), _wgslsmith_f_op_vec2_f32(step(vec2<f32>(-966f, 315f), var_1.a.b))).b.b)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-var_1.a.c.x), -1175f)))).b;
    return StorageBuffer(~var_4.a.yx, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(abs(2010f)))), abs(-1i), -2147483647i, 571f);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -902f) * _wgslsmith_f_op_f32(f32(-1f) * -655f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -454f))));
    let var_1 = false;
    var var_2 = vec2<u32>(17368u, u_input.a.x);
    var_2 = countOneBits(_wgslsmith_mult_vec2_u32(min(vec2<u32>(u_input.a.x, ~54138u), u_input.a.zy), abs(_wgslsmith_mult_vec2_u32(u_input.a.zx, vec2<u32>(var_2.x, 14704u)) >> (u_input.a.xz % vec2<u32>(32u)))));
    var var_3 = ~vec3<u32>(firstLeadingBit(13098u), 4294967295u, 1u);
    let x = u_input.a;
    s_output = func_1();
}

