struct Struct_1 {
    a: u32,
    b: bool,
    c: vec2<u32>,
}

struct Struct_2 {
    a: Struct_1,
    b: vec4<i32>,
    c: vec3<bool>,
    d: bool,
}

struct Struct_3 {
    a: u32,
    b: vec4<i32>,
    c: vec3<u32>,
    d: Struct_2,
    e: Struct_1,
}

struct Struct_4 {
    a: vec2<i32>,
    b: f32,
    c: u32,
    d: u32,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: vec4<u32>,
    c: i32,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: vec4<i32>,
    c: vec3<f32>,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 18>;

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: i32, arg_2: vec3<u32>) -> i32 {
    return countOneBits(0i);
}

fn func_2(arg_0: f32, arg_1: vec2<bool>) -> vec2<u32> {
    var var_0 = Struct_2(Struct_1(_wgslsmith_dot_vec2_u32(~(vec2<u32>(u_input.b.x, u_input.a.x) ^ u_input.a.wz), ~u_input.b.yy), arg_1.x && all(vec4<bool>(true, false, arg_1.x, arg_1.x)), _wgslsmith_mod_vec2_u32(vec2<u32>(~29058u, ~21986u), vec2<u32>(~u_input.d.x, u_input.d.x))), vec4<i32>(max(u_input.c, -12387i), max(_wgslsmith_dot_vec4_i32(vec4<i32>(-5448i, u_input.e, -1i, u_input.c), vec4<i32>(-2147483647i, 34538i, 1i, 1008i)), func_3(Struct_1(35806u, true, u_input.a.zw), 2147483647i, u_input.d.wwx)) >> (min(u_input.b.x & u_input.a.x, 1u ^ u_input.b.x) % 32u), ~21316i, ~u_input.c), select(!select(vec3<bool>(arg_1.x, true, arg_1.x), select(vec3<bool>(true, arg_1.x, true), vec3<bool>(true, true, arg_1.x), false), !vec3<bool>(false, arg_1.x, false)), !vec3<bool>(!arg_1.x, !arg_1.x, arg_1.x), select(vec3<bool>(true, true, u_input.d.x <= 1u), vec3<bool>(true, !arg_1.x, arg_1.x), arg_1.x)), all(select(select(vec3<bool>(arg_1.x, true, true), vec3<bool>(false, arg_1.x, false), arg_1.x), !vec3<bool>(true, arg_1.x, false), vec3<bool>(arg_1.x, true, arg_1.x))) & false);
    var var_1 = select(vec3<bool>(var_0.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0), _wgslsmith_div_f32(-1000f, -100f)) < arg_0, var_0.a.b), var_0.c, select(!var_0.c, var_0.c, var_0.d));
    global0 = array<Struct_2, 18>();
    var var_2 = vec3<u32>(var_0.a.a, countOneBits(46029u), 32876u);
    let var_3 = any(var_0.c.zz);
    return _wgslsmith_mult_vec2_u32(u_input.b.yx, _wgslsmith_clamp_vec2_u32(abs(var_2.xx), ~(~var_0.a.c), firstTrailingBit(vec2<u32>(min(u_input.d.x, 43211u), var_2.x))));
}

fn func_1(arg_0: u32, arg_1: u32) -> u32 {
    var var_0 = Struct_1(~countOneBits(arg_0), !all(vec4<bool>(true, true, true, true)), ~(~_wgslsmith_clamp_vec2_u32(vec2<u32>(1u, u_input.a.x), vec2<u32>(1u, arg_0), vec2<u32>(arg_0, u_input.a.x))) | vec2<u32>(4294967295u, arg_0));
    var var_1 = global0[_wgslsmith_index_u32(_wgslsmith_dot_vec2_u32(func_2(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -692f), _wgslsmith_f_op_f32(f32(-1f) * -998f), var_0.b))), vec2<bool>(true, false)), vec2<u32>(20377u, 1u)), 18u)];
    var var_2 = var_1.c.x;
    var var_3 = var_1.a.c.x;
    let var_4 = 99430u;
    return ~(~(~(~1u)) | _wgslsmith_dot_vec4_u32(vec4<u32>(~40814u, abs(9977u), 4294967295u, ~arg_0), vec4<u32>(arg_1, 0u, 13779u, arg_1) ^ (u_input.a | u_input.b)));
}

fn func_4(arg_0: Struct_4, arg_1: Struct_2, arg_2: f32) -> vec3<u32> {
    return ~firstLeadingBit(_wgslsmith_mult_vec3_u32(firstLeadingBit(vec3<u32>(arg_1.a.a, u_input.d.x, u_input.b.x) ^ vec3<u32>(arg_1.a.c.x, arg_1.a.a, arg_0.c)), ~(vec3<u32>(arg_1.a.a, 0u, 1u) ^ vec3<u32>(0u, 4294967295u, u_input.d.x))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(Struct_4(vec2<i32>(~_wgslsmith_sub_i32(-1i, u_input.c), ~(-u_input.e)), _wgslsmith_f_op_f32(f32(-1f) * -774f), _wgslsmith_dot_vec2_u32(u_input.a.zz, u_input.b.yx), func_1(u_input.a.x, max(u_input.b.x, u_input.b.x)), _wgslsmith_f_op_f32(f32(-1f) * -767f)), Struct_2(Struct_1(~1u, false, _wgslsmith_div_vec2_u32(vec2<u32>(u_input.d.x, u_input.d.x), select(vec2<u32>(u_input.d.x, 9942u), u_input.a.xz, true))), _wgslsmith_clamp_vec4_i32(vec4<i32>(u_input.c, u_input.e, u_input.e, 22284i >> (0u % 32u)), ~select(vec4<i32>(-1i, 2147483647i, -2147483647i, 0i), vec4<i32>(u_input.e, 2147483647i, u_input.c, -2147483647i), vec4<bool>(true, false, false, true)), countOneBits(vec4<i32>(u_input.e, -17744i, u_input.e, u_input.c))), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), select(vec3<bool>(false, true, true), vec3<bool>(false, false, false), vec3<bool>(false, false, false))), select(select(false, false, true), false, !all(vec3<bool>(false, false, true)))), 1000f);
    let var_1 = vec4<bool>(select(!(all(vec4<bool>(true, false, true, true)) && any(vec4<bool>(true, false, false, true))), !(!all(vec3<bool>(true, true, false))), true | any(vec2<bool>(true, true))), any(!select(vec3<bool>(true, true, false), vec3<bool>(true, false, true), true)) && true, u_input.e <= u_input.e, select(true, false, true));
    var var_2 = any(select(var_1.xyy, var_1.yxw, !vec3<bool>(u_input.c <= -2147483647i, false, true)));
    let var_3 = _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(721f + 254f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(ceil(-1250f)), -1000f)), -1462f))))));
    var var_4 = !vec2<bool>(any(!(!vec2<bool>(var_1.x, true))), var_1.x);
    let x = u_input.a;
    s_output = StorageBuffer(~(~reverseBits(vec2<u32>(4294967295u, 0u))), ~vec4<i32>(u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(u_input.e, 1i, 1i, 1i), select(vec4<i32>(u_input.e, u_input.c, u_input.e, u_input.e), vec4<i32>(-2147483647i, -2147483647i, 21714i, u_input.c), vec4<bool>(var_1.x, var_4.x, true, var_4.x))), 1i, firstLeadingBit(-5655i)), _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(var_3 + 1018f), _wgslsmith_f_op_f32(f32(-1f) * -136f), _wgslsmith_f_op_f32(981f * var_3)))))), abs(vec4<i32>(reverseBits(2147483647i >> (var_0.x % 32u)), ~(~(-2147483647i)), max(abs(12901i), -1i), 1i)));
}

