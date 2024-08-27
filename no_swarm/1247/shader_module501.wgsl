struct Struct_1 {
    a: f32,
}

struct UniformBuffer {
    a: u32,
    b: i32,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<i32>,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<i32>, 8>;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3() -> u32 {
    global0 = array<vec3<i32>, 8>();
    let var_0 = _wgslsmith_f_op_f32(ceil(-629f));
    var var_1 = (-26683i < (_wgslsmith_dot_vec4_i32(firstTrailingBit(vec4<i32>(19293i, u_input.b, 36325i, -1i)), _wgslsmith_mult_vec4_i32(vec4<i32>(u_input.b, 2147483647i, u_input.b, u_input.b), vec4<i32>(u_input.b, u_input.b, 21912i, 2295i))) << (u_input.a % 32u))) || !(_wgslsmith_f_op_f32(var_0 - _wgslsmith_f_op_f32(var_0 - 1000f)) < _wgslsmith_f_op_f32(_wgslsmith_div_f32(-740f, 121f) - 2711f));
    let var_2 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(951f + -2841f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-var_0)))));
    let var_3 = -328f;
    return ~(~(~10945u));
}

fn func_2() -> vec3<i32> {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(select(2168f, -725f, true)));
    var var_1 = !select(select(select(vec4<bool>(false, true, true, false), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)), vec4<bool>(true, true, any(vec2<bool>(false, false)), var_0.a >= var_0.a), true), !vec4<bool>(true, true, -2147483647i > u_input.b, true), vec4<bool>(false, _wgslsmith_sub_i32(12632i, u_input.b) < -u_input.b, true, false & (4294967295u <= u_input.a)));
    var var_2 = !var_1.yyx;
    let var_3 = Struct_1(1556f);
    let var_4 = 1i;
    return global0[_wgslsmith_index_u32(func_3(), 8u)];
}

fn func_1(arg_0: vec4<u32>) -> u32 {
    let var_0 = Struct_1(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -248f))));
    var var_1 = min(i32(-1i) * -_wgslsmith_dot_vec3_i32(global0[_wgslsmith_index_u32(min(35679u, arg_0.x), 8u)], func_2()), -2466i | _wgslsmith_mult_i32(-u_input.b, u_input.b));
    var var_2 = Struct_1(_wgslsmith_div_f32(var_0.a, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(var_0.a)) + _wgslsmith_f_op_f32(var_0.a + _wgslsmith_f_op_f32(select(var_0.a, -1498f, true))))));
    global0 = array<vec3<i32>, 8>();
    let var_3 = var_0;
    return 3365u ^ _wgslsmith_dot_vec3_u32(arg_0.zxx, arg_0.wyz);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true && any(!select(vec4<bool>(false, false, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true))), any(vec3<bool>(select(true, true, false) || true, any(vec4<bool>(true, true, true, true)), select(true, true, any(vec4<bool>(true, false, false, false))))));
    global0 = array<vec3<i32>, 8>();
    let var_1 = Struct_1(731f);
    let var_2 = -460f;
    global0 = array<vec3<i32>, 8>();
    global0 = array<vec3<i32>, 8>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_clamp_vec4_u32(max(vec4<u32>(~1u, u_input.a, 0u, func_1(vec4<u32>(4294967295u, 0u, u_input.a, 20141u))), ~(~vec4<u32>(0u, 15369u, 1u, 42896u))), ~(~vec4<u32>(u_input.a, 0u, 1u, u_input.a) << (vec4<u32>(4294967295u, u_input.a, 9987u, 37604u) % vec4<u32>(32u))), vec4<u32>(max(1u, 4294967295u), _wgslsmith_dot_vec3_u32(~vec3<u32>(38239u, 50523u, u_input.a), firstTrailingBit(vec3<u32>(4294967295u, u_input.a, u_input.a))), u_input.a, _wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a, 0u, u_input.a, u_input.a), vec4<u32>(u_input.a, 1u, 5401u, u_input.a)))), ~(~vec3<i32>(-u_input.b, u_input.b, 0i)), -427f, _wgslsmith_dot_vec2_i32(vec2<i32>(_wgslsmith_mult_i32(u_input.b, abs(-70189i)), func_2().x), vec2<i32>(0i, -2276i & -u_input.b)));
}

