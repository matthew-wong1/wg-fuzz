struct Struct_1 {
    a: i32,
    b: vec2<f32>,
    c: f32,
    d: vec4<i32>,
}

struct Struct_2 {
    a: f32,
    b: u32,
    c: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec3<u32>,
    c: vec3<i32>,
    d: u32,
    e: i32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<i32>,
    c: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(0i, vec2<f32>(-135f, -137f), 420f, vec4<i32>(1i, -1i, 46883i, 0i));

var<private> global1: array<vec3<bool>, 10> = array<vec3<bool>, 10>(vec3<bool>(false, false, false), vec3<bool>(false, false, true), vec3<bool>(false, false, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, true), vec3<bool>(true, true, false), vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(true, false, false));

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn func_2() -> i32 {
    var var_0 = Struct_1(-32698i, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global0.b.x + _wgslsmith_f_op_f32(-global0.b.x)) - _wgslsmith_f_op_f32(min(138f, _wgslsmith_f_op_f32(f32(-1f) * -726f)))), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.c * 929f), 1375f))), abs(global0.d));
    let var_1 = vec3<i32>(firstLeadingBit(-21931i), 28983i, max(global0.a, -reverseBits(-2147483647i)));
    return 1i;
}

fn func_3(arg_0: vec3<u32>) -> f32 {
    var var_0 = Struct_1(u_input.c.x << ((0u << (~(~arg_0.x) % 32u)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(max(global0.b, vec2<f32>(-185f, global0.c))) * vec2<f32>(-1731f, global0.c)))) - vec2<f32>(global0.c, _wgslsmith_f_op_f32(f32(-1f) * -1332f))), _wgslsmith_f_op_f32(global0.b.x - global0.b.x), vec4<i32>(_wgslsmith_dot_vec2_i32(global0.d.xy ^ vec2<i32>(-8407i, -1i), global0.d.yz), reverseBits(3032i), ~(-17563i), func_2()));
    global1 = array<vec3<bool>, 10>();
    var var_1 = _wgslsmith_f_op_f32(global0.c + _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(f32(-1f) * -231f))), var_0.c)));
    global0 = Struct_1(-_wgslsmith_div_i32(-34482i & global0.d.x, ~(-89002i)) ^ firstTrailingBit(12817i), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(-vec2<f32>(582f, global0.b.x)), vec2<f32>(-1384f, -102f), select(vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false))))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(158f)) - _wgslsmith_f_op_f32(global0.c - var_0.b.x)) - 940f)), var_0.d);
    var_0 = Struct_1(~max(_wgslsmith_add_i32(i32(-1i) * -7918i, select(47235i, -1i, false)), i32(-1i) * -global0.d.x), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(var_0.b + _wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(1604f, -875f)))), var_0.c, var_0.d);
    return -231f;
}

fn func_1() -> i32 {
    global0 = Struct_1(func_2(), vec2<f32>(_wgslsmith_f_op_f32(func_3(countOneBits(u_input.b))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-153f - global0.c) * _wgslsmith_div_f32(global0.c, _wgslsmith_f_op_f32(global0.c + global0.c)))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(608f - 236f) * 1769f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(step(global0.c, global0.b.x)), _wgslsmith_f_op_f32(max(-1000f, global0.b.x)))) + -311f))), ~vec4<i32>(~(-13636i), -2147483647i, global0.d.x, -_wgslsmith_add_i32(u_input.c.x, 1i)));
    let var_0 = -70111i;
    var var_1 = ~abs(vec4<u32>(u_input.b.x, _wgslsmith_mult_u32(u_input.b.x << (u_input.a.x % 32u), u_input.a.x), ~(~u_input.d), u_input.a.x));
    var_1 = vec4<u32>(u_input.d, _wgslsmith_mult_u32(var_1.x, 1u), 49603u, u_input.b.x);
    var_1 = vec4<u32>(u_input.a.x, select(var_1.x, u_input.a.x, true), select(~((var_1.x ^ u_input.b.x) << ((var_1.x >> (u_input.a.x % 32u)) % 32u)), (0u ^ _wgslsmith_clamp_u32(88847u, 4294967295u, 1u)) & 20822u, !all(select(vec4<bool>(true, true, false, true), vec4<bool>(false, false, true, false), false))), var_1.x);
    return var_0;
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: bool) -> Struct_1 {
    global0 = Struct_1(~(~_wgslsmith_dot_vec3_i32(u_input.c, vec3<i32>(arg_0, global0.d.x, global0.d.x))), arg_1.zz, 1629f, -global0.d);
    var var_0 = u_input.e;
    global0 = Struct_1(_wgslsmith_div_i32(i32(-1i) * -(0i >> (u_input.b.x % 32u)), -(~_wgslsmith_sub_i32(11073i, global0.d.x))), vec2<f32>(239f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - -1093f)), _wgslsmith_f_op_f32(374f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global0.c - 323f), _wgslsmith_f_op_f32(-771f - -383f))))), global0.d);
    var var_1 = select(-1i, reverseBits(_wgslsmith_sub_i32(~(-39141i), ~global0.d.x)), !any(vec4<bool>(false, any(vec2<bool>(true, arg_2)), select(arg_2, false, true), any(vec2<bool>(arg_2, false)))));
    global0 = Struct_1(_wgslsmith_sub_i32(global0.d.x, -24801i) | 46198i, _wgslsmith_f_op_vec2_f32(select(global0.b, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(global0.b, _wgslsmith_f_op_vec2_f32(arg_1.yy * vec2<f32>(-213f, arg_1.x))))), false)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(arg_1.x, -290f) + _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.x - arg_1.x)), arg_1.x))), vec4<i32>(abs(_wgslsmith_clamp_i32(min(arg_0, global0.a), _wgslsmith_dot_vec4_i32(global0.d, global0.d), u_input.e)), -8486i | ~u_input.c.x, ~(~_wgslsmith_mod_i32(u_input.e, global0.d.x)), -1i));
    return Struct_1(-2147483647i, _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_1.yz) - _wgslsmith_f_op_vec2_f32(select(arg_1.yx, vec2<f32>(925f, -356f), vec2<bool>(arg_2, true)))))))), _wgslsmith_f_op_f32(f32(-1f) * -432f), ~(-global0.d));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = func_4(~(func_1() & -2147483647i), vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.b.x, -1230f))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b.x))), 609f), true);
    var var_0 = Struct_1(_wgslsmith_dot_vec4_i32(vec4<i32>(-2147483647i, abs(global0.a), _wgslsmith_mod_i32(u_input.c.x, 2147483647i) ^ abs(u_input.e), 35140i), ~global0.d), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global0.b))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_div_vec3_u32(vec3<u32>(68245u, 911u, 4294967295u), u_input.b))) - func_4(abs(global0.a), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(global0.b.x, global0.b.x, global0.c), vec3<f32>(global0.c, global0.c, global0.b.x), global1[_wgslsmith_index_u32(u_input.d, 10u)])), any(vec2<bool>(false, true))).c)), _wgslsmith_mod_vec4_i32(vec4<i32>(_wgslsmith_add_i32(abs(2147483647i), -1i >> (u_input.a.x % 32u)), abs(u_input.e), min(u_input.e & u_input.c.x, u_input.c.x), func_1()), select(global0.d, _wgslsmith_sub_vec4_i32(func_4(-5200i, vec3<f32>(475f, 554f, 1000f), true).d, global0.d), vec4<bool>(false, all(vec4<bool>(true, true, false, true)), true, true))));
    var_0 = func_4(u_input.e, _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c, -284f, var_0.c)), 56522u < _wgslsmith_sub_u32(u_input.b.x, ~select(u_input.d, 48225u, false)));
    var_0 = Struct_1(_wgslsmith_clamp_i32(~var_0.d.x, 0i, _wgslsmith_clamp_i32(i32(-1i) * -4073i, func_4(_wgslsmith_add_i32(-14681i, global0.a), _wgslsmith_f_op_vec3_f32(step(vec3<f32>(var_0.b.x, var_0.b.x, global0.c), vec3<f32>(-924f, -571f, -1655f))), select(false, true, false)).d.x, 1i)), vec2<f32>(577f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(f32(-1f) * -1412f))) * -1218f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-global0.c))))), vec4<i32>(_wgslsmith_mod_i32(~(-25533i), 1i), _wgslsmith_dot_vec2_i32(abs(vec2<i32>(0i, -2147483647i)), _wgslsmith_add_vec2_i32(u_input.c.zx, vec2<i32>(-47416i, -1i))) ^ _wgslsmith_add_i32(u_input.e, -519i << (u_input.a.x % 32u)), ~min(countOneBits(-1i), ~3033i), 29669i));
    global0 = func_4(_wgslsmith_mod_i32(global0.d.x, -select(-1i, u_input.e, false)) & (global0.a & reverseBits(~var_0.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(global0.c, global0.c, var_0.b.x))))))), select(true, any(vec4<bool>(true, true, true, true)), !select(true, true, all(vec2<bool>(true, true)))));
    global0 = Struct_1(_wgslsmith_dot_vec2_i32(~(u_input.c.xx | vec2<i32>(0i, 1i)) & u_input.c.yx, global0.d.yw), _wgslsmith_f_op_vec2_f32(-var_0.b), var_0.b.x, vec4<i32>(u_input.c.x, var_0.d.x, abs(_wgslsmith_dot_vec2_i32(vec2<i32>(var_0.a, -30785i), var_0.d.wx)), -_wgslsmith_mod_i32(~(-7930i), var_0.a)));
    global0 = func_4(~_wgslsmith_dot_vec3_i32(-vec3<i32>(-32937i, 0i, -11364i), global0.d.wyw), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(global0.c - global0.c), -1562f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(150f)) - _wgslsmith_f_op_f32(step(var_0.b.x, var_0.c))))), !(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.c.x, -41474i, u_input.c.x, global0.a), vec4<i32>(global0.d.x, 2147483647i, 12544i, var_0.a)) == abs(select(-1i, 43471i, false))));
    var var_1 = -_wgslsmith_sub_i32(24539i, _wgslsmith_dot_vec3_i32(vec3<i32>(var_0.d.x, u_input.e, 1i), -vec3<i32>(var_0.a, global0.a, -2147483647i)) >> (1u % 32u));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_mult_i32(-(_wgslsmith_div_i32(35779i, var_0.d.x) >> (1u % 32u)), -abs(-2147483647i)), u_input.c.yy | -_wgslsmith_mod_vec2_i32(vec2<i32>(-16476i, 58804i), u_input.c.yz), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(min(var_0.c, var_0.b.x)), 1629f)) - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(311f, global0.b.x) + _wgslsmith_f_op_vec2_f32(-var_0.b)))));
}

