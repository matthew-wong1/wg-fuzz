struct Struct_1 {
    a: vec3<i32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: bool,
    e: i32,
}

struct Struct_2 {
    a: f32,
    b: i32,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: f32,
    c: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: f32 = -1372f;

var<private> global1: vec2<f32>;

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn func_3(arg_0: Struct_1, arg_1: vec2<bool>) -> f32 {
    var var_0 = select(vec3<bool>(!arg_1.x, u_input.b.x > ~40198u, arg_1.x), vec3<bool>(all(select(vec2<bool>(arg_0.d, true), arg_1, !arg_1)), true, u_input.b.x <= u_input.b.x), false);
    return _wgslsmith_f_op_f32(-global1.x);
}

fn func_2(arg_0: vec3<i32>, arg_1: vec3<bool>) -> Struct_1 {
    global1 = vec2<f32>(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(global1.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(global1.x)) - -1238f))));
    global1 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(func_3(Struct_1(vec3<i32>(arg_0.x, -1i, 2147483647i), vec2<f32>(global1.x, global1.x), max(arg_0.yz, vec2<i32>(-41205i, arg_0.x)), arg_1.x, arg_0.x), arg_1.yz)), global1.x) - _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(_wgslsmith_f_op_f32(select(global1.x, global1.x, arg_1.x)), _wgslsmith_f_op_f32(-global1.x)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(924f, global1.x)))), _wgslsmith_f_op_f32(global1.x + -1013f) <= _wgslsmith_f_op_f32(min(global1.x, global1.x)))), _wgslsmith_div_vec2_f32(vec2<f32>(global1.x, _wgslsmith_f_op_f32(-global1.x)), vec2<f32>(414f, 1213f)))));
    let var_0 = ~_wgslsmith_add_u32(1u, _wgslsmith_mod_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(u_input.a.x, u_input.b.x), vec2<u32>(u_input.a.x, 0u)), u_input.a.x)) << ((abs(u_input.b.x) << (0u % 32u)) % 32u);
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(Struct_1(~vec3<i32>(arg_0.x, arg_0.x, -2147483647i), vec2<f32>(_wgslsmith_f_op_f32(global1.x + 840f), _wgslsmith_f_op_f32(global1.x + 1702f)), reverseBits(_wgslsmith_mult_vec2_i32(vec2<i32>(7363i, 2147483647i), arg_0.yx)), var_0 == ~var_0, abs(-arg_0.x)), select(vec2<bool>(47011i >= arg_0.x, 58346u == u_input.b.x), !(!arg_1.zz), true))) - -452f);
    global0 = -551f;
    return Struct_1(~(_wgslsmith_mod_vec3_i32(select(vec3<i32>(arg_0.x, 16771i, arg_0.x), arg_0, arg_1), -vec3<i32>(28905i, arg_0.x, 13690i)) >> (u_input.a % vec3<u32>(32u))), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1000f, global1.x) - vec2<f32>(global1.x, global1.x)) - _wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, global1.x))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(-405f, -509f) * vec2<f32>(global1.x, -237f)) - _wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-195f, global1.x)))))))), vec2<i32>(-(i32(-1i) * -34788i), -firstLeadingBit(1i)) >> (~(u_input.a.zx & countOneBits(vec2<u32>(27015u, var_0))) % vec2<u32>(32u)), any(select(select(!vec4<bool>(arg_1.x, arg_1.x, true, arg_1.x), vec4<bool>(arg_1.x, true, false, arg_1.x), vec4<bool>(true, true, true, true)), select(!vec4<bool>(false, true, arg_1.x, false), select(vec4<bool>(arg_1.x, false, true, true), vec4<bool>(true, arg_1.x, false, arg_1.x), vec4<bool>(arg_1.x, arg_1.x, false, true)), vec4<bool>(arg_1.x, true, arg_1.x, arg_1.x)), vec4<bool>(arg_1.x, false & arg_1.x, true, false))), arg_0.x);
}

fn func_4(arg_0: Struct_1, arg_1: vec2<u32>, arg_2: u32) -> f32 {
    global1 = _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(round(arg_0.b)))));
    let var_0 = -73231i;
    global0 = -2163f;
    let var_1 = !(arg_2 <= (_wgslsmith_mod_u32(12101u, ~arg_1.x) | _wgslsmith_dot_vec4_u32(abs(vec4<u32>(0u, u_input.b.x, 27908u, 12392u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(arg_2, 4294967295u, 1u, arg_2), vec4<u32>(0u, 1u, 261u, arg_2), vec4<u32>(0u, 0u, arg_2, 1u)))));
    let var_2 = _wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(arg_0.b.x, _wgslsmith_f_op_f32(func_3(Struct_1(max(arg_0.a, arg_0.a), _wgslsmith_f_op_vec2_f32(arg_0.b * arg_0.b), vec2<i32>(2147483647i, var_0), true, abs(var_0)), vec2<bool>(1439f > arg_0.b.x, true & var_1))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-1274f)) + -502f), 587f)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_0.b.x), arg_0.b.x)))));
    return -540f;
}

fn func_1() -> i32 {
    let var_0 = u_input.b.x;
    let var_1 = vec2<bool>(true, true);
    var var_2 = _wgslsmith_f_op_vec2_f32(round(vec2<f32>(1f, 1f)));
    var var_3 = -132f == _wgslsmith_f_op_f32(func_4(func_2(~vec3<i32>(1i, -21175i, 1i), select(!vec3<bool>(true, true, var_1.x), !vec3<bool>(true, var_1.x, true), -236f > var_2.x)), u_input.a.xx, ~var_0 & (countOneBits(u_input.b.x) << (var_0 % 32u))));
    var var_4 = vec2<u32>(~0u, 1u) >> ((~u_input.a.yy | ~u_input.a.zx) % vec2<u32>(32u));
    return _wgslsmith_dot_vec3_i32(-vec3<i32>(firstLeadingBit(2147483647i) >> ((0u & var_0) % 32u), firstTrailingBit(37946i), select(1i, min(-9331i, -1i), true)), max(max(vec3<i32>(-22112i, 19315i, 2147483647i), vec3<i32>(13846i, 7712i, -1i)) >> (u_input.a % vec3<u32>(32u)), vec3<i32>(-13856i, -79938i, -1i)) ^ -firstTrailingBit(-vec3<i32>(-1i, 0i, -1i)));
}

fn func_5(arg_0: u32, arg_1: Struct_2, arg_2: Struct_2, arg_3: u32) -> f32 {
    let var_0 = Struct_1(_wgslsmith_div_vec3_i32(-vec3<i32>(func_2(arg_2.c.a, vec3<bool>(true, false, false)).c.x, arg_2.c.a.x << (arg_0 % 32u), 0i), _wgslsmith_clamp_vec3_i32(firstTrailingBit(arg_2.c.a), arg_1.c.a, vec3<i32>(_wgslsmith_mult_i32(arg_2.b, -672i), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.e, 2147483647i, 1i, 8292i), vec4<i32>(-2147483647i, 1i, arg_2.c.e, arg_2.b)), 1i))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-arg_2.c.b), _wgslsmith_f_op_vec2_f32(min(arg_1.c.b, arg_1.c.b))), _wgslsmith_f_op_vec2_f32(arg_2.c.b * vec2<f32>(2013f, -372f))))), arg_2.c.c, !(17159i <= _wgslsmith_dot_vec2_i32(min(arg_2.c.c, arg_2.c.c), vec2<i32>(arg_2.c.e, 2147483647i))), _wgslsmith_dot_vec4_i32(vec4<i32>(arg_2.c.e, -1i, func_1(), -12934i), abs(vec4<i32>(-arg_2.c.a.x, arg_2.c.e, -13880i, arg_1.b << (arg_3 % 32u)))));
    global1 = _wgslsmith_div_vec2_f32(var_0.b, var_0.b);
    let var_1 = arg_2;
    let var_2 = abs(-2147483647i);
    let var_3 = var_0.d;
    return var_1.a;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 4294967295u > ~u_input.b.x;
    var var_1 = true;
    let var_2 = ~vec2<u32>(~(~countOneBits(u_input.b.x)), 45071u);
    var var_3 = vec4<f32>(1f, _wgslsmith_f_op_f32(f32(-1f) * -238f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_5(1u, Struct_2(_wgslsmith_f_op_f32(752f + global1.x), func_1(), func_2(vec3<i32>(0i, 1i, 4132i), vec3<bool>(var_0, var_0, var_0))), Struct_2(-958f, -9218i, Struct_1(vec3<i32>(9306i, -1i, 1i), vec2<f32>(global1.x, 847f), vec2<i32>(0i, -5108i), var_0, -5306i)), 0u))), 264f);
    var_1 = all(vec4<bool>(any(select(select(vec4<bool>(var_0, false, var_0, var_0), vec4<bool>(false, false, var_0, var_0), false), !vec4<bool>(true, true, var_0, var_0), vec4<bool>(var_0, false, false, false))), var_0, var_3.x >= _wgslsmith_div_f32(_wgslsmith_f_op_f32(max(var_3.x, var_3.x)), -720f), !all(vec4<bool>(var_0, var_0, var_0, false)) || all(vec3<bool>(true, var_0, var_0))));
    var var_4 = _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-729f - _wgslsmith_f_op_f32(var_3.x * -843f)))))));
    var_1 = var_0;
    var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1451f * _wgslsmith_f_op_f32(global1.x + -1000f)));
    var_3 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(-518f, _wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(max(global1.x, -119f)), _wgslsmith_f_op_f32(abs(822f)))))), -447f));
    let x = u_input.a;
    s_output = StorageBuffer(max(var_2, _wgslsmith_add_vec2_u32(~u_input.a.xx, u_input.b)), _wgslsmith_f_op_f32(-525f + _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(sign(var_3.x))))), min(reverseBits(vec3<i32>(1i, _wgslsmith_div_i32(24762i, 2095i), 1i)), vec3<i32>(1i, 1i, 1i)));
}

