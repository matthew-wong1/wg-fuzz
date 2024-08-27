struct Struct_1 {
    a: i32,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
    b: vec2<u32>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: vec4<i32>,
    e: u32,
}

struct StorageBuffer {
    a: u32,
    b: vec2<f32>,
    c: vec3<i32>,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: vec3<f32>) -> vec2<u32> {
    var var_0 = Struct_2(_wgslsmith_mult_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(firstLeadingBit(global0.x), ~4294967295u, ~u_input.b, firstTrailingBit(global0.x)), select(vec4<u32>(global0.x, u_input.e, global0.x, global0.x), abs(vec4<u32>(u_input.b, u_input.e, u_input.b, u_input.a)), vec4<bool>(arg_1.b.x, false, true, arg_1.b.x))), _wgslsmith_mod_u32(_wgslsmith_div_u32(77102u, global0.x), global0.x)), ~(~vec2<u32>(~2155u, ~global0.x)));
    let var_1 = arg_1;
    global0 = max(var_0.b, min(_wgslsmith_add_vec2_u32(var_0.b, var_0.b), var_0.b));
    let var_2 = vec4<u32>(var_0.a, ~(~(~firstTrailingBit(var_0.b.x))), 5166u, max(_wgslsmith_div_u32(_wgslsmith_add_u32(1u, ~global0.x), u_input.a), 1u));
    let var_3 = var_0.a;
    return ~select(~reverseBits(var_2.xz), ~_wgslsmith_add_vec2_u32(_wgslsmith_add_vec2_u32(var_2.xw, var_2.yz), var_2.zx), var_1.b.yy);
}

fn func_2(arg_0: i32, arg_1: vec2<u32>, arg_2: vec2<f32>) -> f32 {
    let var_0 = !(_wgslsmith_f_op_f32(f32(-1f) * -236f) < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_2.x * arg_2.x) - _wgslsmith_f_op_f32(f32(-1f) * -414f))) && (any(select(vec3<bool>(false, true, false), vec3<bool>(true, true, true), true)) & true);
    var var_1 = ~4294967295u;
    global0 = max(min(max(abs(vec2<u32>(30847u, arg_1.x) | vec2<u32>(u_input.b, arg_1.x)), abs(arg_1 ^ arg_1)), func_3(_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-vec2<f32>(1601f, -1717f)))), Struct_1(_wgslsmith_mod_i32(u_input.d.x, -515i), vec3<bool>(true, true, true)), _wgslsmith_f_op_vec3_f32(exp2(_wgslsmith_f_op_vec3_f32(trunc(vec3<f32>(arg_2.x, 1271f, 259f))))))), ~_wgslsmith_add_vec2_u32(func_3(vec2<f32>(-401f, 1957f), Struct_1(2147483647i, vec3<bool>(var_0, false, true)), vec3<f32>(arg_2.x, arg_2.x, arg_2.x)), _wgslsmith_add_vec2_u32(vec2<u32>(4294967295u, 73711u), vec2<u32>(u_input.a, global0.x))) ^ abs(select(vec2<u32>(1u, arg_1.x), ~arg_1, vec2<bool>(false, true))));
    let var_2 = Struct_2(abs(~_wgslsmith_div_u32(global0.x, global0.x)), vec2<u32>(1u, 45958u));
    var var_3 = _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(vec4<f32>(arg_2.x, arg_2.x, -1000f, -1646f))) - vec4<f32>(2697f, arg_2.x, -1395f, 1446f)), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(min(vec4<f32>(arg_2.x, arg_2.x, arg_2.x, -984f), vec4<f32>(1447f, arg_2.x, arg_2.x, 1639f))) * vec4<f32>(arg_2.x, arg_2.x, -1000f, -460f))) * vec4<f32>(arg_2.x, _wgslsmith_f_op_f32(step(988f, 665f)), arg_2.x, _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(arg_2.x * arg_2.x))))), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(ceil(arg_2.x)), _wgslsmith_f_op_f32(ceil(546f)), _wgslsmith_f_op_f32(f32(-1f) * -181f), arg_2.x)) + _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(vec4<f32>(arg_2.x, arg_2.x, -1293f, arg_2.x))))));
    return _wgslsmith_div_f32(arg_2.x, -1594f);
}

fn func_1(arg_0: bool, arg_1: vec3<i32>, arg_2: Struct_2) -> Struct_1 {
    var var_0 = _wgslsmith_div_i32(0i, 322i);
    var_0 = -2147483647i;
    global0 = arg_2.b;
    let var_1 = any(!select(!vec3<bool>(true, false, arg_0), !(!vec3<bool>(arg_0, false, arg_0)), arg_0 || true));
    var var_2 = _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1717f, 1683f) + _wgslsmith_f_op_f32(-319f + _wgslsmith_f_op_f32(-1479f * 1000f)))), _wgslsmith_f_op_f32(max(_wgslsmith_div_f32(_wgslsmith_f_op_f32(func_2(u_input.c << (0u % 32u), ~arg_2.b, _wgslsmith_f_op_vec2_f32(vec2<f32>(-691f, 734f) + vec2<f32>(-1000f, -158f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(-467f)))), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2323f)), _wgslsmith_f_op_f32(-109f * -1000f)))))));
    return Struct_1(min(2147483647i, -1i ^ _wgslsmith_mod_i32(_wgslsmith_dot_vec3_i32(arg_1, arg_1), arg_1.x << (4294967295u % 32u))), vec3<bool>(arg_0, true, all(select(vec2<bool>(true, false), vec2<bool>(arg_0, var_1), vec2<bool>(true, arg_0))) && (true || any(vec3<bool>(var_1, arg_0, true)))));
}

fn func_4(arg_0: Struct_1, arg_1: vec3<i32>) -> vec3<u32> {
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 518f))))) + -459f);
    var var_1 = select(!select(!(!vec4<bool>(arg_0.b.x, false, false, arg_0.b.x)), vec4<bool>(arg_0.b.x, true, all(vec4<bool>(false, false, arg_0.b.x, arg_0.b.x)), any(arg_0.b.zz)), select(vec4<bool>(false, arg_0.b.x, arg_0.b.x, true), !vec4<bool>(true, arg_0.b.x, false, false), vec4<bool>(false, arg_0.b.x, true, arg_0.b.x))), !vec4<bool>(!(!arg_0.b.x), select(true, !arg_0.b.x, arg_0.b.x), all(vec3<bool>(true, false, true)), arg_0.b.x), arg_0.b.x);
    let var_2 = Struct_2((~abs(1u) | _wgslsmith_dot_vec4_u32(firstTrailingBit(vec4<u32>(0u, u_input.e, u_input.a, u_input.a)), ~vec4<u32>(44209u, global0.x, u_input.a, global0.x))) >> ((firstTrailingBit(u_input.a) << (u_input.e % 32u)) % 32u), vec2<u32>(~0u, 4294967295u));
    var var_3 = var_2.b;
    var var_4 = Struct_2(1u, max(var_2.b, vec2<u32>(max(~var_3.x, var_3.x), ~95320u)));
    return vec3<u32>(4294967295u, u_input.b | _wgslsmith_dot_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1514u, u_input.a), vec3<u32>(var_3.x, var_3.x, var_2.a), vec3<u32>(var_4.a, u_input.b, var_4.a)), _wgslsmith_div_vec3_u32(vec3<u32>(53438u, var_3.x, global0.x), vec3<u32>(4294967295u, var_2.b.x, 20385u))), ~56015u) ^ ~vec3<u32>(~var_3.x, u_input.a, ~1u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = u_input.b;
    var var_1 = ~(~(~func_4(func_1(false, u_input.d.wwy, Struct_2(1u, vec2<u32>(8549u, 4294967295u))), u_input.d.wzz)));
    var_1 = ~vec3<u32>(1u, _wgslsmith_add_u32(u_input.a, u_input.a), abs(~global0.x));
    let var_2 = Struct_2(_wgslsmith_sub_u32(38456u, firstLeadingBit(_wgslsmith_sub_u32(~global0.x, reverseBits(global0.x)))), _wgslsmith_add_vec2_u32(var_1.xz, ~var_1.zz));
    var var_3 = var_1.yy;
    let var_4 = !func_1(!(abs(global0.x) > ~var_1.x), u_input.d.zyz, Struct_2(u_input.a, var_2.b)).b.x;
    var_3 = _wgslsmith_clamp_vec2_u32(~(~(~vec2<u32>(var_2.a, var_3.x))), var_1.xz, var_1.xx);
    var_0 = 1u;
    let x = u_input.a;
    s_output = StorageBuffer(~(~_wgslsmith_add_u32(~u_input.b, u_input.a)), _wgslsmith_f_op_vec2_f32(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1244f, -1538f)) - vec2<f32>(-123f, 474f)), vec2<f32>(_wgslsmith_f_op_f32(round(848f)), 1000f)) + _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(435f * 1395f), _wgslsmith_f_op_f32(min(2296f, -1088f))))), select(~vec3<i32>(46781i, 15411i, reverseBits(0i)), vec3<i32>(_wgslsmith_clamp_i32(~u_input.c, -2147483647i, _wgslsmith_div_i32(2147483647i, u_input.c)), ~firstLeadingBit(u_input.d.x), -(u_input.d.x >> (1u % 32u))), false), -_wgslsmith_clamp_i32(~(-43908i), -12985i, 40463i));
}

