struct Struct_1 {
    a: bool,
    b: vec3<bool>,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
    d: u32,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec4<f32>,
    d: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec4<f32>) -> vec3<bool> {
    var var_0 = u_input.c > u_input.c;
    var_0 = all(select(vec3<bool>(any(vec3<bool>(true, false, true)), true, true), select(vec3<bool>(true, true, true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), all(vec3<bool>(true, true, true)) || true));
    let var_1 = Struct_1(select(true, all(vec2<bool>(true, false)), select(true, true, true)) | (_wgslsmith_f_op_f32(arg_0.x + 389f) < arg_0.x), vec3<bool>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(arg_0.x, arg_0.x)) - arg_0.x) > _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(367f - arg_0.x), _wgslsmith_f_op_f32(-317f - -536f))), false, !all(vec3<bool>(true, true, true))), vec4<u32>(33527u, max(reverseBits(u_input.d), u_input.d) | _wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, u_input.a), u_input.e.yx), 106627u, firstLeadingBit(u_input.d)));
    var_0 = true;
    let var_2 = var_1;
    return vec3<bool>(var_1.b.x, var_2.b.x | !(!(35461u <= var_1.c.x)), select(true || any(var_1.b.xy), false, !var_2.a));
}

fn func_2() -> f32 {
    var var_0 = u_input.b.x;
    let var_1 = abs(~(-(vec3<i32>(-2147483647i, u_input.c, 1i) & _wgslsmith_add_vec3_i32(vec3<i32>(1i, u_input.c, 2147483647i), vec3<i32>(1i, -37188i, u_input.c)))));
    let var_2 = Struct_1(!(!(var_1.x < _wgslsmith_div_i32(u_input.c, -2147483647i))), select(select(func_3(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1742f, 253f, -856f, -615f)))), func_3(_wgslsmith_div_vec4_f32(vec4<f32>(-1026f, 1698f, -1000f, 660f), vec4<f32>(-908f, 663f, -662f, -485f))), false), vec3<bool>(true, false, false), func_3(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1f, 1f, 1f, 1f)))), _wgslsmith_div_vec4_u32(~u_input.e, _wgslsmith_clamp_vec4_u32(reverseBits(~u_input.e), vec4<u32>(~2645u, 1u, 4294967295u, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, u_input.d), vec2<u32>(1u, u_input.b.x))), select(u_input.b, firstLeadingBit(u_input.b), any(vec4<bool>(false, true, true, true))))));
    var var_3 = u_input.c;
    var var_4 = 4294967295u;
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))));
}

fn func_1() -> Struct_1 {
    let var_0 = Struct_1(all(vec3<bool>(true, !any(vec4<bool>(false, true, false, true)), !any(vec3<bool>(true, true, false)))), vec3<bool>(-2931f == _wgslsmith_f_op_f32(func_2()), u_input.c > 2147483647i, any(func_3(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(3229f, 957f, -1136f, -889f), vec4<f32>(1673f, -1000f, -394f, 1068f)))))), vec4<u32>(~0u, _wgslsmith_div_u32(abs(_wgslsmith_clamp_u32(1u, 76595u, 90939u)), 4680u), 0u, ~u_input.b.x));
    let var_1 = 70623u;
    var var_2 = Struct_1(!(false || (-u_input.c == ~(-27780i))), !func_3(vec4<f32>(_wgslsmith_f_op_f32(563f + -655f), 1596f, 1f, _wgslsmith_f_op_f32(679f * 558f))), var_0.c);
    let var_3 = false;
    var_2 = var_0;
    return var_0;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_1();
    let var_1 = vec2<u32>(1u, ~4294967295u);
    let var_2 = _wgslsmith_f_op_vec3_f32(floor(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(-696f, 166f)) - _wgslsmith_f_op_f32(-1834f * -753f))), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(621f - 726f)), _wgslsmith_f_op_f32(max(-300f, -164f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -667f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1382f))))));
    var_0 = func_1();
    var_0 = func_1();
    let x = u_input.a;
    s_output = StorageBuffer(~(-_wgslsmith_add_vec3_i32(max(vec3<i32>(u_input.c, 15944i, u_input.c), vec3<i32>(2147483647i, u_input.c, u_input.c)), ~vec3<i32>(-26752i, -19922i, 41933i))), _wgslsmith_dot_vec4_i32(select(vec4<i32>(7941i, ~1i, abs(u_input.c), u_input.c), reverseBits(vec4<i32>(u_input.c, -53583i, 43851i, -1i) >> (u_input.b % vec4<u32>(32u))), !(!vec4<bool>(true, var_0.a, true, var_0.b.x))), _wgslsmith_sub_vec4_i32(~(-vec4<i32>(0i, u_input.c, -68207i, 45700i)), -vec4<i32>(u_input.c, 9409i, 0i, u_input.c) & ~vec4<i32>(-2147483647i, -8832i, u_input.c, -2147483647i))), _wgslsmith_f_op_vec4_f32(vec4<f32>(-391f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(f32(-1f) * -874f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(var_2.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(func_2()))) - vec4<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(var_2.x - var_2.x), var_2.x, all(var_0.b))), -328f, var_2.x, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_2.x))))), _wgslsmith_div_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.x) * _wgslsmith_f_op_f32(-var_2.x)), var_2.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f))), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_2.x, -257f, -1097f)), vec3<f32>(-987f, -243f, -776f)))));
}

