struct Struct_1 {
    a: vec3<f32>,
    b: f32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3(arg_0: vec2<bool>, arg_1: bool) -> f32 {
    return _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(785f + 473f))) * -975f) * _wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1437f + -256f), _wgslsmith_f_op_f32(f32(-1f) * -698f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(443f + -370f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(422f)))));
}

fn func_2(arg_0: bool, arg_1: Struct_1, arg_2: vec2<f32>, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = Struct_1(vec3<f32>(817f, _wgslsmith_f_op_f32(func_3(!select(vec2<bool>(true, arg_0), vec2<bool>(arg_0, true), true), arg_0)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -765f) + arg_1.a.x)), _wgslsmith_f_op_f32(round(1154f)));
    var var_1 = arg_1;
    let var_2 = -1019f;
    var var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(round(vec3<f32>(_wgslsmith_f_op_f32(-arg_1.b), _wgslsmith_div_f32(_wgslsmith_f_op_f32(-arg_3.x), arg_1.b), -441f))), -1087f);
    var_0 = arg_1;
    return arg_1;
}

fn func_1() -> bool {
    var var_0 = func_2(false, Struct_1(vec3<f32>(_wgslsmith_f_op_f32(select(_wgslsmith_div_f32(400f, -1000f), _wgslsmith_f_op_f32(1373f + 861f), true)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(-737f))), 655f), _wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(f32(-1f) * -601f), _wgslsmith_f_op_f32(_wgslsmith_div_f32(545f, 132f) * _wgslsmith_f_op_f32(ceil(-1105f)))))), _wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(-vec2<f32>(383f, 561f))))), _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(select(-951f, -155f, false)), _wgslsmith_f_op_f32(f32(-1f) * -1000f)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(min(vec2<f32>(1849f, -1692f), vec2<f32>(2080f, 729f)))))), vec2<f32>(_wgslsmith_div_f32(1039f, _wgslsmith_f_op_f32(_wgslsmith_div_f32(-514f, -595f) + _wgslsmith_f_op_f32(f32(-1f) * -129f))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(710f))))));
    let var_1 = Struct_1(var_0.a, var_0.b);
    var var_2 = _wgslsmith_dot_vec3_u32(select(~countOneBits(vec3<u32>(38956u, 1u, u_input.a.x) >> (vec3<u32>(u_input.a.x, u_input.a.x, u_input.a.x) % vec3<u32>(32u))), ~firstTrailingBit(min(vec3<u32>(23847u, 28828u, 0u), vec3<u32>(4294967295u, u_input.a.x, u_input.a.x))), vec3<bool>(true, true, all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)))), ~(~(~vec3<u32>(u_input.a.x, 131405u, u_input.a.x))));
    var_0 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.a)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.a.x + -1543f)), _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(var_0.b, var_1.b)), _wgslsmith_f_op_f32(trunc(var_1.a.x))))));
    var var_3 = true;
    return true;
}

fn func_4(arg_0: vec3<f32>, arg_1: Struct_1, arg_2: bool) -> vec4<i32> {
    var var_0 = any(!select(select(select(vec2<bool>(arg_2, arg_2), vec2<bool>(true, false), vec2<bool>(arg_2, arg_2)), vec2<bool>(true, true), select(vec2<bool>(true, false), vec2<bool>(arg_2, true), vec2<bool>(arg_2, true))), !vec2<bool>(arg_2, false), true));
    var_0 = true;
    let var_1 = vec2<u32>(_wgslsmith_sub_u32(u_input.a.x, _wgslsmith_mult_u32(~(~12912u), _wgslsmith_mod_u32(1u, _wgslsmith_div_u32(u_input.a.x, 0u)))), _wgslsmith_mod_u32(~(~_wgslsmith_add_u32(1812u, u_input.a.x)), 1u));
    var_0 = false;
    var var_2 = ~u_input.a.x & (var_1.x & _wgslsmith_dot_vec2_u32(firstTrailingBit(vec2<u32>(0u, var_1.x)), vec2<u32>(54016u, 1u)));
    return _wgslsmith_sub_vec4_i32(_wgslsmith_mod_vec4_i32(~(-abs(vec4<i32>(-1i, 1i, 36818i, 3540i))), vec4<i32>(1i, 1i, 1i, 1i)), vec4<i32>(~reverseBits(_wgslsmith_add_i32(0i, -2147483647i)), -select(_wgslsmith_sub_i32(-33673i, 39469i), min(2147483647i, 1135i), any(vec3<bool>(arg_2, arg_2, false))), _wgslsmith_clamp_i32(1i, ~_wgslsmith_mult_i32(2147483647i, 0i), -1i), 1i));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = func_4(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(508f))), _wgslsmith_f_op_f32(max(1198f, -1051f))), _wgslsmith_f_op_f32(f32(-1f) * -907f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1745f) - _wgslsmith_f_op_f32(-1274f + 1624f)))), Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(-2777f, -754f, 449f)))), -205f), func_1());
    var var_1 = 106507u;
    var_1 = reverseBits(u_input.a.x);
    var_1 = ~u_input.a.x;
    var_0 = _wgslsmith_mod_vec4_i32(reverseBits(-reverseBits(vec4<i32>(44073i, 2416i, 53441i, var_0.x))), _wgslsmith_mod_vec4_i32(((vec4<i32>(0i, -1i, -41920i, -2147483647i) & vec4<i32>(-1i, -1i, var_0.x, -97391i)) << ((vec4<u32>(1u, u_input.a.x, 0u, 23285u) ^ vec4<u32>(16537u, 1438u, 0u, 1u)) % vec4<u32>(32u))) & ~firstTrailingBit(vec4<i32>(-10286i, -2147483647i, -2147483647i, -3500i)), vec4<i32>(~(-2929i), var_0.x, var_0.x, firstTrailingBit(var_0.x)) << (abs(~vec4<u32>(u_input.a.x, 23625u, 75369u, u_input.a.x)) % vec4<u32>(32u))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(4294967295u, 65351u), countOneBits(1i));
}

