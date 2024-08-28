struct Struct_1 {
    a: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: f32,
    c: f32,
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

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: vec3<f32>, arg_1: Struct_2) -> vec2<f32> {
    var var_0 = -(vec2<i32>(-3594i >> (1u % 32u), _wgslsmith_dot_vec3_i32(vec3<i32>(10720i, -7560i, 382i), vec3<i32>(-2147483647i, u_input.c, 2147483647i)) | u_input.c) & ~(-vec2<i32>(-2147483647i, u_input.c)));
    var var_1 = any(vec4<bool>(true, arg_1.a.a.x, all(select(vec3<bool>(true, arg_1.a.a.x, arg_1.a.a.x), vec3<bool>(arg_1.a.a.x, true, arg_1.a.a.x), vec3<bool>(true, arg_1.a.a.x, arg_1.a.a.x))) && !(arg_1.a.a.x && false), arg_1.a.a.x));
    let var_2 = 1614f;
    let var_3 = Struct_2(arg_1.a);
    var_1 = var_3.a.a.x;
    return _wgslsmith_f_op_vec2_f32(select(arg_0.xx, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_div_vec2_f32(arg_0.yx, vec2<f32>(arg_0.x, arg_0.x)), _wgslsmith_f_op_vec2_f32(-arg_0.zx)) + arg_0.zy) + arg_0.yz), !arg_1.a.a.x));
}

fn func_2(arg_0: bool, arg_1: i32) -> u32 {
    var var_0 = Struct_2(Struct_1(select(select(select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), true), select(vec2<bool>(arg_0, true), vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false)), true), !vec2<bool>(arg_0, false), select(vec2<bool>(arg_0, true), select(vec2<bool>(true, true), vec2<bool>(arg_0, true), vec2<bool>(arg_0, false)), select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), true)))));
    var var_1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(785f, -843f))), vec2<f32>(-641f, _wgslsmith_f_op_f32(f32(-1f) * -211f)), vec2<bool>(true, true)))));
    var_1 = _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(386f, -582f))) + vec2<f32>(_wgslsmith_f_op_f32(floor(-1165f)), _wgslsmith_f_op_f32(f32(-1f) * -1621f))) + _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(805f, var_1.x)) + vec2<f32>(var_1.x, var_1.x)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(func_3(vec3<f32>(var_1.x, 696f, var_1.x), Struct_2(var_0.a)))))), _wgslsmith_f_op_vec2_f32(min(vec2<f32>(1f, _wgslsmith_f_op_f32(var_1.x - var_1.x)), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(577f, 1863f) - vec2<f32>(var_1.x, -2146f)) * vec2<f32>(721f, -1939f)) * _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(vec2<f32>(1314f, -1000f) - vec2<f32>(845f, -328f)), _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-1320f, var_1.x))), var_0.a.a.x))))));
    var_0 = Struct_2(Struct_1(vec2<bool>(!all(var_0.a.a), !(172f <= var_1.x))));
    return 54799u;
}

fn func_1(arg_0: vec3<bool>) -> Struct_2 {
    let var_0 = max(countOneBits(~u_input.b.zy), u_input.b.xz);
    let var_1 = ~vec2<u32>(_wgslsmith_clamp_u32(firstLeadingBit(4294967295u), var_0.x, ~var_0.x), (var_0.x | 0u) ^ u_input.d) >> (vec2<u32>(4294967295u, 14623u) % vec2<u32>(32u));
    let var_2 = vec3<u32>(func_2(arg_0.x, countOneBits(0i)) | abs(abs(~u_input.d)), firstTrailingBit(_wgslsmith_dot_vec4_u32(~countOneBits(vec4<u32>(0u, 72080u, 43371u, u_input.a)), reverseBits(max(vec4<u32>(1u, 4256u, 0u, 0u), vec4<u32>(var_0.x, u_input.a, 47780u, var_1.x))))), 1u);
    var var_3 = Struct_1(vec2<bool>(true, true));
    var var_4 = vec4<bool>(any(!vec4<bool>(true, true, var_3.a.x, true)), 59555u <= var_1.x, !(~(~1u) == _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(1u, 4294967295u, var_0.x, var_0.x), vec4<u32>(90412u, 73396u, var_0.x, var_1.x)), ~vec4<u32>(4294967295u, 52464u, var_2.x, var_0.x))), arg_0.x);
    return Struct_2(Struct_1(select(!vec2<bool>(var_3.a.x, true), !(!var_4.ww), all(select(var_3.a, vec2<bool>(true, var_3.a.x), true)))));
}

fn func_4(arg_0: Struct_2, arg_1: Struct_1) -> Struct_1 {
    var var_0 = !(-1i > u_input.c);
    var var_1 = _wgslsmith_mod_i32(~(u_input.c | ~firstTrailingBit(1i)), -u_input.c);
    var_1 = ~_wgslsmith_dot_vec4_i32(_wgslsmith_mod_vec4_i32(-countOneBits(vec4<i32>(u_input.c, u_input.c, 27560i, u_input.c)), vec4<i32>(-8995i, u_input.c, 50538i, _wgslsmith_div_i32(1i, u_input.c))), ~max(min(vec4<i32>(2147483647i, u_input.c, -2147483647i, -63858i), vec4<i32>(u_input.c, u_input.c, 22034i, -1i)), _wgslsmith_add_vec4_i32(vec4<i32>(u_input.c, u_input.c, u_input.c, 48943i), vec4<i32>(-1i, 1i, u_input.c, -16515i))));
    var var_2 = arg_1.a.x;
    var_0 = false;
    return Struct_1(!(!vec2<bool>(any(vec4<bool>(arg_1.a.x, arg_0.a.a.x, arg_1.a.x, false)), all(arg_0.a.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!(!vec2<bool>(any(vec3<bool>(false, true, false)), true)));
    let var_1 = Struct_2(func_4(func_1(vec3<bool>(var_0.a.x || false, false, true)), Struct_1(select(var_0.a, select(vec2<bool>(true, var_0.a.x), var_0.a, var_0.a), false))));
    let var_2 = var_1;
    var var_3 = _wgslsmith_div_i32(-(u_input.c & u_input.c), _wgslsmith_add_i32(13531i, ~(-(u_input.c | 0i))));
    var_0 = Struct_1(vec2<bool>(var_2.a.a.x, all(!func_1(vec3<bool>(var_2.a.a.x, var_0.a.x, true)).a.a)));
    var_3 = u_input.c;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(firstLeadingBit(vec4<u32>(1u, u_input.a, u_input.b.x & 1u, reverseBits(1u))), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, ~1u, 13304u, ~u_input.d), vec4<u32>(~u_input.d, _wgslsmith_sub_u32(u_input.a, u_input.d), firstTrailingBit(u_input.a), 18064u)), vec4<u32>(25451u, _wgslsmith_mod_u32(1u, _wgslsmith_dot_vec2_u32(vec2<u32>(0u, u_input.a), u_input.b.yx)), 1u, ~_wgslsmith_mult_u32(4294967295u, u_input.d))), _wgslsmith_f_op_f32(ceil(-707f)), 1000f);
}

