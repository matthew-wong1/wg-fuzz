struct Struct_1 {
    a: u32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
    d: u32,
    e: vec4<i32>,
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

var<private> global0: Struct_1 = Struct_1(28219u);

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: u32) -> f32 {
    global0 = Struct_1(_wgslsmith_mult_u32(abs(global0.a), ~reverseBits(28627u) & _wgslsmith_dot_vec4_u32(countOneBits(vec4<u32>(global0.a, arg_0, 48380u, arg_0)), select(vec4<u32>(u_input.a, u_input.d, arg_0, global0.a), vec4<u32>(28913u, 0u, 42791u, 595u), true))));
    let var_0 = Struct_1(0u);
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(1f + 1020f)));
    let var_2 = vec2<bool>(true, (1370f < _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(trunc(631f)), 1000f, true))) != false);
    var var_3 = firstLeadingBit(abs(u_input.e.zzy));
    return _wgslsmith_f_op_f32(abs(-170f));
}

fn func_2(arg_0: vec2<i32>, arg_1: i32, arg_2: i32, arg_3: vec3<u32>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(select(_wgslsmith_div_f32(-838f, 804f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_3(_wgslsmith_add_u32(_wgslsmith_mult_u32(0u, 53459u), arg_3.x & 0u))) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 636f) - _wgslsmith_f_op_f32(select(-308f, -1000f, false))))), true));
    let var_1 = _wgslsmith_clamp_vec3_u32(arg_3, ~(vec3<u32>(_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.d, 9940u, 1u, arg_3.x), vec4<u32>(arg_3.x, global0.a, 272u, arg_3.x)), arg_3.x, 136168u) << (vec3<u32>(_wgslsmith_mult_u32(4294967295u, arg_3.x), arg_3.x ^ 4294967295u, ~arg_3.x) % vec3<u32>(32u))), reverseBits(firstLeadingBit(~(~arg_3))));
    global0 = Struct_1(global0.a);
    let var_2 = ~firstTrailingBit(~vec4<u32>(_wgslsmith_div_u32(4294967295u, u_input.a), 11460u, select(u_input.a, 4294967295u, true), 63631u << (u_input.a % 32u)));
    let var_3 = vec3<i32>(-70162i, reverseBits(~2147483647i), 1i);
    return Struct_1(~46536u);
}

fn func_1() -> vec3<i32> {
    var var_0 = u_input.c;
    var var_1 = u_input.d;
    global0 = func_2(~(-vec2<i32>(_wgslsmith_div_i32(u_input.b, -1i), _wgslsmith_mod_i32(u_input.e.x, u_input.e.x))), u_input.e.x, -_wgslsmith_add_i32(2147483647i, ~(~u_input.e.x)), ~(~(~(~vec3<u32>(u_input.d, u_input.a, u_input.d)))));
    let var_2 = 3287i;
    let var_3 = Struct_1(~_wgslsmith_dot_vec4_u32(vec4<u32>(13465u, global0.a, 2490u, global0.a) >> (min(vec4<u32>(u_input.d, u_input.d, global0.a, global0.a), vec4<u32>(4294967295u, 0u, u_input.a, 4294967295u)) % vec4<u32>(32u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(78444u, u_input.a, 4294967295u, 1u) ^ vec4<u32>(7297u, u_input.d, u_input.d, 1u), vec4<u32>(14009u, u_input.a, 1u, 49286u), ~vec4<u32>(3968u, u_input.a, u_input.d, global0.a))));
    return u_input.e.xxw;
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_1) -> vec2<u32> {
    let var_0 = func_2(u_input.e.wx, _wgslsmith_dot_vec3_i32(-(_wgslsmith_mod_vec3_i32(arg_0, vec3<i32>(-2147483647i, 29784i, -60022i)) >> (reverseBits(vec3<u32>(23487u, u_input.a, arg_1.a)) % vec3<u32>(32u))), ~arg_0 << (vec3<u32>(_wgslsmith_div_u32(u_input.a, arg_1.a), 42869u, 0u) % vec3<u32>(32u))), -2147483647i & (u_input.c | -41637i), ~(~vec3<u32>(7984u, arg_1.a, 4294967295u) << (firstLeadingBit(select(vec3<u32>(7344u, arg_1.a, 0u), vec3<u32>(45894u, arg_1.a, global0.a), false)) % vec3<u32>(32u))));
    let var_1 = arg_0.x;
    return min(~vec2<u32>(firstLeadingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(var_0.a, 4294967295u, 4294967295u, arg_1.a), vec4<u32>(u_input.a, 0u, 1u, arg_1.a))), arg_1.a), reverseBits(~(~vec2<u32>(global0.a, arg_1.a))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = global0.a << (1u % 32u);
    var_0 = _wgslsmith_dot_vec2_u32(min(~vec2<u32>(~u_input.a, ~0u), func_4(func_1(), func_2(u_input.e.zw, u_input.b, _wgslsmith_sub_i32(u_input.c, u_input.e.x), reverseBits(vec3<u32>(global0.a, global0.a, global0.a))))), min(countOneBits(vec2<u32>(u_input.d, ~global0.a)), vec2<u32>(abs(60926u), global0.a) | (_wgslsmith_add_vec2_u32(vec2<u32>(53623u, u_input.d), vec2<u32>(global0.a, u_input.d)) ^ _wgslsmith_add_vec2_u32(vec2<u32>(global0.a, global0.a), vec2<u32>(u_input.d, u_input.a)))));
    var var_1 = !(!(!(!select(vec4<bool>(false, false, false, false), vec4<bool>(true, true, false, false), true))));
    var var_2 = _wgslsmith_f_op_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -177f), _wgslsmith_f_op_f32(abs(267f)))) * _wgslsmith_f_op_f32(round(_wgslsmith_div_f32(-187f, -629f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(-413f)))) + _wgslsmith_f_op_vec2_f32(abs(_wgslsmith_div_vec2_f32(vec2<f32>(1f, 1f), _wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(vec2<f32>(-1330f, -332f) + vec2<f32>(-362f, 185f))))))));
    global0 = func_2(abs(u_input.e.yx & _wgslsmith_add_vec2_i32(reverseBits(vec2<i32>(2147483647i, u_input.c)), ~u_input.e.xw)), _wgslsmith_dot_vec2_i32(u_input.e.xy, vec2<i32>(26467i, i32(-1i) * -u_input.c)), min(~1i, -(0i & _wgslsmith_div_i32(-1i, u_input.c))), abs(vec3<u32>(global0.a, u_input.a, ~select(u_input.d, u_input.d, false))));
    var var_3 = _wgslsmith_dot_vec4_i32(firstLeadingBit(vec4<i32>(-2147483647i, u_input.b, select(u_input.c, u_input.c, var_1.x) >> (58758u % 32u), _wgslsmith_dot_vec4_i32(-vec4<i32>(u_input.c, u_input.c, u_input.b, 16466i), -vec4<i32>(21599i, u_input.e.x, -13463i, 1i)))), min(u_input.e << (countOneBits(~vec4<u32>(u_input.d, global0.a, u_input.d, u_input.d)) % vec4<u32>(32u)), u_input.e >> (vec4<u32>(9981u, ~0u, ~u_input.a, 85478u) % vec4<u32>(32u))));
    var var_4 = Struct_1(reverseBits(u_input.a));
    let var_5 = Struct_1(countOneBits(u_input.d >> (global0.a % 32u)));
    var_2 = _wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(var_2.x, _wgslsmith_f_op_f32(var_2.x + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_2.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

