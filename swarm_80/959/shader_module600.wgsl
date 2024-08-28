struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: u32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec3<u32>,
    d: i32,
    e: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: bool;

var<private> global1: vec2<f32> = vec2<f32>(170f, 791f);

var<private> global2: array<vec3<i32>, 21>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_vec4_i32(e: vec4<i32>, low: vec4<i32>, high: vec4<i32>) -> vec4<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn func_3(arg_0: Struct_2, arg_1: Struct_1, arg_2: vec2<bool>, arg_3: f32) -> bool {
    var var_0 = 6305i;
    var var_1 = ~vec4<i32>(~9124i, abs(select(1i, 1i, true)), max(~9009i, 1i), -17584i);
    let var_2 = arg_1;
    var var_3 = false;
    let var_4 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(-2043f, 506f) * -254f), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(exp2(arg_3)) + global1.x)))) + vec2<f32>(_wgslsmith_f_op_f32(-global1.x), global1.x));
    return var_2.b.x;
}

fn func_4(arg_0: vec2<f32>, arg_1: bool, arg_2: vec3<bool>) -> vec3<i32> {
    var var_0 = Struct_1(all(!select(!vec4<bool>(true, true, arg_2.x, true), vec4<bool>(arg_2.x, arg_1, arg_1, false), vec4<bool>(arg_1, false, false, true))), arg_2);
    var var_1 = !vec4<bool>(!(!any(vec2<bool>(var_0.b.x, true))), all(vec4<bool>(func_3(Struct_2(u_input.a.x), Struct_1(arg_2.x, vec3<bool>(var_0.b.x, false, true)), arg_2.xy, -573f), false && arg_1, select(false, false, arg_1), arg_1)), false, any(!select(vec4<bool>(var_0.b.x, var_0.a, arg_2.x, true), vec4<bool>(true, arg_1, arg_1, true), vec4<bool>(arg_1, arg_1, var_0.b.x, true))));
    let var_2 = Struct_2(countOneBits(_wgslsmith_div_u32(~firstTrailingBit(u_input.a.x), 15725u)));
    return -(~global2[_wgslsmith_index_u32(29971u, 21u)]);
}

fn func_2(arg_0: Struct_2) -> Struct_1 {
    global0 = !((firstTrailingBit(~6090u) & 1u) <= ~_wgslsmith_dot_vec4_u32(~vec4<u32>(arg_0.a, arg_0.a, arg_0.a, u_input.a.x), vec4<u32>(3128u, 4294967295u, 4294967295u, arg_0.a)));
    var var_0 = _wgslsmith_add_i32(min(~(-2117i), -(~(~(-2147483647i)))), _wgslsmith_mult_i32(abs(_wgslsmith_dot_vec4_i32(vec4<i32>(-24467i, 22887i, -1i, -2147483647i), ~vec4<i32>(2147483647i, 0i, 1i, 27845i))), _wgslsmith_div_i32(-1i, i32(-1i) * -2147483647i)));
    var var_1 = firstTrailingBit(~func_4(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(step(vec2<f32>(1331f, -2122f), vec2<f32>(global1.x, global1.x))))), func_3(arg_0, Struct_1(true, vec3<bool>(true, true, false)), vec2<bool>(true, false), _wgslsmith_div_f32(466f, global1.x)), !select(vec3<bool>(true, true, false), vec3<bool>(true, false, false), true)));
    let var_2 = Struct_1(true, vec3<bool>(all(select(vec2<bool>(true, true), vec2<bool>(true, true), -2768f > global1.x)), true, !any(vec4<bool>(true, true, false, true))));
    var var_3 = select(!vec4<bool>(true, !(!var_2.b.x), var_2.b.x, all(select(var_2.b.zy, var_2.b.xy, vec2<bool>(false, false)))), vec4<bool>(any(vec3<bool>(true, false, all(var_2.b.xx))), true, var_2.a, false), (0u >> (arg_0.a % 32u)) >= _wgslsmith_dot_vec2_u32(~_wgslsmith_add_vec2_u32(u_input.a, vec2<u32>(0u, 4294967295u)), min(_wgslsmith_mod_vec2_u32(u_input.a, u_input.a), ~vec2<u32>(4294967295u, u_input.a.x))));
    return var_2;
}

fn func_1(arg_0: Struct_2, arg_1: vec2<f32>, arg_2: f32, arg_3: i32) -> Struct_1 {
    var var_0 = Struct_2(43373u);
    let var_1 = abs(~(~max(~vec3<u32>(u_input.a.x, 4294967295u, 28320u), vec3<u32>(var_0.a, 25297u, 1u))));
    global1 = _wgslsmith_div_vec2_f32(arg_1, vec2<f32>(arg_2, _wgslsmith_f_op_f32(arg_1.x * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.x) - _wgslsmith_f_op_f32(-arg_1.x)))));
    let var_2 = -1i;
    let var_3 = _wgslsmith_f_op_f32(-global1.x);
    return func_2(Struct_2(~arg_0.a));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(Struct_2(_wgslsmith_add_u32(firstLeadingBit(min(0u, u_input.a.x)), select(~0u, 0u, false))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-616f, 989f))), _wgslsmith_f_op_f32(-global1.x), ~0i);
    let var_1 = -vec2<i32>(~abs(~0i), ~_wgslsmith_dot_vec3_i32(vec3<i32>(4949i, 0i, 28437i), vec3<i32>(2147483647i, 44110i, -13070i)));
    var var_2 = !var_0.b.yy;
    var var_3 = 625f;
    let var_4 = Struct_2(~max(u_input.a.x, abs(0u | u_input.a.x)));
    var var_5 = Struct_2(~4294967295u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(_wgslsmith_clamp_u32(u_input.a.x, firstLeadingBit(u_input.a.x), abs(1u)), 26923u, 1u), _wgslsmith_mult_u32(select(u_input.a.x, firstTrailingBit(16625u), true), var_4.a), var_4.a), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -687f))))), vec3<u32>(1u ^ var_5.a, ~(~var_4.a), _wgslsmith_clamp_u32(1u, max(u_input.a.x, 69803u), var_4.a)) & _wgslsmith_mod_vec3_u32(~_wgslsmith_mult_vec3_u32(vec3<u32>(95930u, var_5.a, var_5.a), vec3<u32>(var_4.a, 40367u, u_input.a.x)), vec3<u32>(_wgslsmith_add_u32(1u, var_5.a), ~1898u, var_5.a)), var_1.x, _wgslsmith_dot_vec4_i32(_wgslsmith_clamp_vec4_i32(-select(vec4<i32>(-3677i, -2147483647i, -11970i, 8926i), vec4<i32>(var_1.x, var_1.x, 2147483647i, 7681i), var_2.x), vec4<i32>(countOneBits(var_1.x), var_1.x, 1i, 0i), _wgslsmith_mod_vec4_i32(max(vec4<i32>(2147483647i, var_1.x, var_1.x, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, 0i)), -vec4<i32>(2147483647i, var_1.x, 0i, -1i))), -(~vec4<i32>(-35228i, -16192i, var_1.x, var_1.x))));
}

