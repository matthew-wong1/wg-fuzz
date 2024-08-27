struct Struct_1 {
    a: vec2<f32>,
    b: vec3<f32>,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 14>;

var<private> global1: array<Struct_1, 13>;

var<private> global2: array<vec3<u32>, 3> = array<vec3<u32>, 3>(vec3<u32>(1u, 1u, 0u), vec3<u32>(4294967295u, 51076u, 1u), vec3<u32>(4554u, 0u, 0u));

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: f32, arg_1: bool, arg_2: vec3<f32>, arg_3: vec4<i32>) -> i32 {
    let var_0 = !vec3<bool>(false, true, !(_wgslsmith_f_op_f32(-756f * arg_0) < arg_2.x));
    global0 = array<Struct_1, 14>();
    var var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -966f) - _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 * arg_2.x) - arg_2.x))));
    var var_2 = vec4<i32>(_wgslsmith_sub_i32(abs(min(arg_3.x, arg_3.x)), i32(-1i) * -1i) >> (2584u % 32u), abs(_wgslsmith_dot_vec3_i32(~(-vec3<i32>(-14568i, -12864i, -718i)), -arg_3.ywx ^ _wgslsmith_sub_vec3_i32(vec3<i32>(26501i, u_input.b, -34166i), vec3<i32>(7825i, arg_3.x, 0i)))), -1i, ~40675i);
    var var_3 = _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_div_f32(731f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(min(998f, 1782f)) + -305f)), _wgslsmith_f_op_f32(arg_0 * _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(min(arg_2.x, arg_0)))))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(floor(arg_2.zy))))));
    return ~_wgslsmith_add_i32(u_input.b >> (_wgslsmith_mod_u32(reverseBits(u_input.a), 0u) % 32u), u_input.b);
}

fn func_2() -> Struct_1 {
    global1 = array<Struct_1, 13>();
    let var_0 = ~4545i;
    var var_1 = true;
    var_1 = !select(true, !(func_3(468f, true, vec3<f32>(-111f, 3217f, -1844f), vec4<i32>(-104802i, var_0, -1i, u_input.b)) == -u_input.b), true);
    let var_2 = 28589i;
    return Struct_1(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(max(vec2<f32>(_wgslsmith_f_op_f32(-2694f + -180f), -1231f), vec2<f32>(_wgslsmith_f_op_f32(floor(721f)), 821f))), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-453f, 2423f))))), _wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-992f - 422f) - -474f), 445f, _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(sign(501f)), _wgslsmith_div_f32(963f, -1000f)))), vec3<f32>(1f, -1864f, -719f), select(vec3<bool>(all(vec2<bool>(true, false)), any(vec2<bool>(true, false)), any(vec2<bool>(true, false))), vec3<bool>(true, any(vec3<bool>(false, false, false)), any(vec3<bool>(false, true, false))), all(vec4<bool>(true, true, true, true))))));
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec2<f32>) -> u32 {
    let var_0 = arg_1;
    var var_1 = func_2();
    var var_2 = _wgslsmith_f_op_f32(var_1.a.x - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-func_2().b.x)));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_1.a.x * 1625f)));
    var var_3 = vec3<bool>(true, select(true, true, true == (var_0.b.x == -1342f)) || ((all(vec3<bool>(false, true, false)) | any(vec4<bool>(true, false, false, true))) | true), (~_wgslsmith_dot_vec3_u32(vec3<u32>(13962u, u_input.c.x, 45022u), global2[_wgslsmith_index_u32(87044u, 3u)]) == 77944u) | false);
    return 65908u;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = -856f;
    let var_1 = abs(~vec4<u32>(~(~u_input.a), 4294967295u, func_1(global0[_wgslsmith_index_u32(44773u | u_input.c.x, 14u)], Struct_1(vec2<f32>(-1051f, -411f), vec3<f32>(var_0, var_0, var_0)), vec2<f32>(876f, 246f)), _wgslsmith_dot_vec3_u32(abs(vec3<u32>(u_input.c.x, 4294967295u, 4294967295u)), vec3<u32>(4294967295u, 34950u, u_input.c.x) >> (vec3<u32>(38152u, u_input.c.x, u_input.a) % vec3<u32>(32u)))));
    let var_2 = ~(vec4<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_clamp_vec3_i32(vec3<i32>(-2147483647i, -26333i, -21640i), vec3<i32>(18576i, -45445i, 0i), vec3<i32>(u_input.b, 74965i, -41841i)), -vec3<i32>(-1i, 51606i, -1i)), u_input.b, 1i, u_input.b) & ~select(vec4<i32>(u_input.b, 27523i, -1i, u_input.b), _wgslsmith_mod_vec4_i32(vec4<i32>(1i, -2147483647i, 0i, -49996i), vec4<i32>(u_input.b, 0i, -31267i, u_input.b)), true));
    let var_3 = global0[_wgslsmith_index_u32(var_1.x, 14u)];
    let var_4 = all(vec3<bool>(any(vec4<bool>(true, true, true, var_2.x <= u_input.b)), u_input.b <= -1i, false));
    let var_5 = var_2.yzw;
    var var_6 = func_2();
    var_6 = Struct_1(vec2<f32>(var_0, -573f), _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(_wgslsmith_f_op_f32(var_0 - 799f), var_0, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1692f)))))));
    let x = u_input.a;
    s_output = StorageBuffer(var_2.x);
}

