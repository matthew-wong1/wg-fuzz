struct Struct_1 {
    a: vec4<i32>,
    b: bool,
    c: f32,
}

struct Struct_2 {
    a: bool,
    b: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec3<i32>,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn func_3(arg_0: bool, arg_1: vec4<i32>) -> vec3<u32> {
    var var_0 = Struct_2(any(!select(!vec2<bool>(arg_0, arg_0), vec2<bool>(true, true), select(vec2<bool>(arg_0, arg_0), vec2<bool>(arg_0, false), false))), _wgslsmith_clamp_u32(max(u_input.a, u_input.d.x), 11251u, ~u_input.a));
    var_0 = Struct_2(true | arg_0, _wgslsmith_dot_vec2_u32(reverseBits(abs(~u_input.d.yz)), max(u_input.d.yx, u_input.d.yx)));
    let var_1 = _wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1f, 1f, 1f)))), vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-428f)) + 1104f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(1000f - 1810f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-634f)))))), _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-159f, 308f, 698f)), vec3<f32>(-1103f, 1000f, 606f))), vec3<f32>(1f, 1f, 1f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(306f, 380f, -439f) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(-856f, 242f, -1108f)))))));
    var_0 = Struct_2(!(!var_0.a), 1u);
    let var_2 = vec3<bool>(var_0.a, select(false, all(vec2<bool>(arg_0, var_0.a)) & all(vec4<bool>(false, false, var_0.a, false)), any(vec3<bool>(arg_0, true, arg_0))) && any(select(!vec4<bool>(true, arg_0, true, true), !vec4<bool>(true, arg_0, arg_0, var_0.a), true)), true);
    return u_input.d;
}

fn func_2(arg_0: Struct_2, arg_1: vec2<u32>, arg_2: Struct_1) -> f32 {
    var var_0 = _wgslsmith_sub_vec3_u32(_wgslsmith_sub_vec3_u32(u_input.d, vec3<u32>(abs(4294967295u), 1u, _wgslsmith_mult_u32(37926u, arg_1.x))), _wgslsmith_mod_vec3_u32(u_input.d, u_input.d)) >> (abs(u_input.d) % vec3<u32>(32u));
    var_0 = max(_wgslsmith_add_vec3_u32(vec3<u32>(~_wgslsmith_div_u32(1u, 1u), ~(4294967295u | arg_0.b), (46027u & arg_0.b) ^ _wgslsmith_mod_u32(var_0.x, 41790u)), u_input.d), vec3<u32>(var_0.x, _wgslsmith_add_u32(u_input.d.x, firstTrailingBit(var_0.x ^ 2487u)), abs(4294967295u)));
    var_0 = func_3(arg_2.b, arg_2.a);
    let var_1 = max(min(select(func_3(true, _wgslsmith_sub_vec4_i32(vec4<i32>(u_input.b, u_input.b, u_input.b, arg_2.a.x), vec4<i32>(-2147483647i, u_input.b, u_input.b, -1i))).xy, _wgslsmith_clamp_vec2_u32(~vec2<u32>(10843u, 1u), var_0.zz, _wgslsmith_clamp_vec2_u32(var_0.yx, vec2<u32>(arg_1.x, 34496u), vec2<u32>(0u, u_input.a))), true), func_3(any(vec3<bool>(false, arg_2.b, false)) || (arg_2.c <= -676f), vec4<i32>(arg_2.a.x, arg_2.a.x, u_input.b, _wgslsmith_dot_vec3_i32(vec3<i32>(17616i, arg_2.a.x, 55071i), vec3<i32>(-29335i, -18110i, -15110i)))).zz), vec2<u32>(13330u, arg_0.b));
    return 427f;
}

fn func_4(arg_0: f32) -> vec4<i32> {
    let var_0 = Struct_1(vec4<i32>(u_input.c.x, 1i, _wgslsmith_sub_i32(u_input.c.x & 1i, u_input.c.x), 1i), true, -1000f);
    let var_1 = var_0;
    var var_2 = 31161u;
    var_2 = ~u_input.d.x;
    var var_3 = 1i;
    return vec4<i32>(_wgslsmith_sub_i32(~(~var_0.a.x), var_0.a.x), countOneBits(_wgslsmith_dot_vec4_i32(~var_0.a, vec4<i32>(-2147483647i, 1i, var_1.a.x, var_0.a.x)) ^ _wgslsmith_div_i32(i32(-1i) * -1i, -var_0.a.x)), ~(-u_input.b), u_input.c.x);
}

fn func_1(arg_0: vec2<bool>, arg_1: vec2<bool>, arg_2: vec4<u32>, arg_3: vec2<u32>) -> vec2<bool> {
    let var_0 = Struct_1(countOneBits(func_4(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_2(Struct_2(false, arg_3.x), u_input.d.zy, Struct_1(vec4<i32>(u_input.b, u_input.c.x, u_input.c.x, 2147483647i), false, 2675f))), 145f)))), true, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-859f - -318f) * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1792f + 376f)))));
    let var_1 = select(!select(vec2<bool>(true, false), !(!arg_0), true), arg_0, !(-558f < var_0.c));
    return vec2<bool>(var_1.x, all(!vec4<bool>(false, !arg_1.x, true, !arg_0.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(!(1u >= (48511u ^ u_input.d.x)) || !all(select(vec4<bool>(true, false, false, true), vec4<bool>(false, false, false, false), false)), u_input.a);
    let var_1 = select(select(func_1(!(!vec2<bool>(var_0.a, var_0.a)), !select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(var_0.a, true), var_0.a), ~_wgslsmith_add_vec4_u32(vec4<u32>(35131u, u_input.a, 56942u, var_0.b), vec4<u32>(52187u, u_input.d.x, u_input.d.x, u_input.d.x)), ~(~u_input.d.xz)), select(vec2<bool>(false, true), vec2<bool>(var_0.a, all(vec2<bool>(true, var_0.a))), !var_0.a), !vec2<bool>(any(vec4<bool>(false, true, var_0.a, false)), var_0.a)), !(!(!select(vec2<bool>(var_0.a, var_0.a), vec2<bool>(false, var_0.a), vec2<bool>(var_0.a, var_0.a)))), !vec2<bool>(!(u_input.c.x >= u_input.b), var_0.a));
    let var_2 = ~vec3<u32>(select(_wgslsmith_dot_vec4_u32(vec4<u32>(15857u, u_input.d.x, u_input.d.x, var_0.b) >> (vec4<u32>(var_0.b, 1u, u_input.d.x, 65061u) % vec4<u32>(32u)), vec4<u32>(u_input.a, var_0.b, 0u, var_0.b)), func_3(true, countOneBits(vec4<i32>(u_input.c.x, 2147483647i, u_input.c.x, u_input.b))).x, any(vec3<bool>(var_1.x, var_1.x, true))), _wgslsmith_sub_u32(_wgslsmith_mult_u32(countOneBits(var_0.b), ~1u), _wgslsmith_div_u32(46521u, func_3(var_0.a, vec4<i32>(-28815i, u_input.b, -1i, u_input.c.x)).x)), countOneBits(~46835u));
    let var_3 = var_0.a;
    let var_4 = select(!vec2<bool>(all(vec4<bool>(var_0.a, true, false, true)), !var_1.x), select(var_1, var_1, var_1.x), false);
    let var_5 = Struct_2(!(!((var_1.x == false) | false)), ~0u);
    let x = u_input.a;
    s_output = StorageBuffer(~max(_wgslsmith_mult_i32(9800i, -u_input.c.x), _wgslsmith_div_i32(u_input.c.x, _wgslsmith_dot_vec2_i32(u_input.c.xz, u_input.c.xx))), 746f);
}

