struct Struct_1 {
    a: f32,
    b: vec2<f32>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<u32>,
}

struct StorageBuffer {
    a: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec3<u32>, 8> = array<vec3<u32>, 8>(vec3<u32>(38188u, 1u, 0u), vec3<u32>(0u, 0u, 48341u), vec3<u32>(119353u, 33043u, 94404u), vec3<u32>(0u, 34718u, 0u), vec3<u32>(0u, 103154u, 40989u), vec3<u32>(22410u, 34818u, 0u), vec3<u32>(1u, 4294967295u, 9078u), vec3<u32>(45204u, 34892u, 0u));

var<private> global1: array<i32, 23>;

var<private> global2: array<vec2<bool>, 5>;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1, arg_2: vec3<i32>) -> f32 {
    global0 = array<vec3<u32>, 8>();
    let var_0 = 4294967295u;
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(vec4<f32>(-1000f, -2050f, arg_1.a, -1151f), vec4<f32>(-672f, arg_1.b.x, arg_1.a, arg_1.b.x))) * _wgslsmith_f_op_vec4_f32(round(vec4<f32>(-119f, 2305f, -489f, 2405f))))))));
    global0 = array<vec3<u32>, 8>();
    global1 = array<i32, 23>();
    return _wgslsmith_div_f32(var_1.x, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_1.a) - -466f), _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -158f), -1081f))))));
}

fn func_2() -> Struct_1 {
    global1 = array<i32, 23>();
    var var_0 = ~(~abs(~u_input.c)) | ~global0[_wgslsmith_index_u32(_wgslsmith_div_u32(~u_input.c.x, 48716u), 8u)];
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -818f) + _wgslsmith_f_op_f32(func_3(_wgslsmith_dot_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(1u, 23u)], 32062i, -3395i, u_input.b) | vec4<i32>(u_input.a, -1i, u_input.a, 4530i), _wgslsmith_sub_vec4_i32(vec4<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], 2147483647i, u_input.a, u_input.b), vec4<i32>(2147483647i, global1[_wgslsmith_index_u32(var_0.x, 23u)], global1[_wgslsmith_index_u32(0u, 23u)], u_input.a))), Struct_1(536f, _wgslsmith_div_vec2_f32(vec2<f32>(115f, 373f), vec2<f32>(-499f, -1907f)), global0[_wgslsmith_index_u32(_wgslsmith_dot_vec3_u32(u_input.c, vec3<u32>(u_input.c.x, 39529u, 4294967295u)), 8u)]), abs(max(vec3<i32>(5704i, 2147483647i, -2147483647i), vec3<i32>(global1[_wgslsmith_index_u32(0u, 23u)], global1[_wgslsmith_index_u32(var_0.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)])))))));
    var_1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1325f)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1628f + 500f)))));
    var_0 = ~abs(~(~_wgslsmith_div_vec3_u32(vec3<u32>(var_0.x, 28063u, var_0.x), u_input.c)));
    return Struct_1(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(func_3(2147483647i, Struct_1(_wgslsmith_f_op_f32(floor(236f)), vec2<f32>(1070f, -453f), vec3<u32>(0u, u_input.c.x, 36086u)), firstLeadingBit(max(vec3<i32>(-1i, 0i, 1i), vec3<i32>(global1[_wgslsmith_index_u32(4294967295u, 23u)], global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(1u, 23u)]))))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(-1104f))) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(732f)))))), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-146f, 467f) + vec2<f32>(-217f, 1012f)))) - _wgslsmith_f_op_vec2_f32(sign(vec2<f32>(-477f, 425f)))), _wgslsmith_div_vec3_u32(~(~(~vec3<u32>(var_0.x, var_0.x, 42792u))), _wgslsmith_mod_vec3_u32(min(firstLeadingBit(global0[_wgslsmith_index_u32(var_0.x, 8u)]), vec3<u32>(u_input.c.x, 70504u, 4294967295u)), ~global0[_wgslsmith_index_u32(1959u, 8u)])));
}

fn func_1() -> u32 {
    global2 = array<vec2<bool>, 5>();
    var var_0 = true;
    var var_1 = -(~_wgslsmith_sub_i32(global1[_wgslsmith_index_u32(abs(29615u), 23u)] << (_wgslsmith_sub_u32(u_input.c.x, u_input.c.x) % 32u), -1i));
    let var_2 = func_2();
    let var_3 = var_2;
    return var_2.c.x;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec3<u32>, 8>();
    var var_0 = true && !(func_1() <= firstLeadingBit(u_input.c.x));
    global1 = array<i32, 23>();
    var var_1 = _wgslsmith_dot_vec2_i32(-vec2<i32>(-2147483647i, abs(_wgslsmith_add_i32(global1[_wgslsmith_index_u32(4294967295u, 23u)], u_input.b))), _wgslsmith_add_vec2_i32(_wgslsmith_mult_vec2_i32(-(~vec2<i32>(global1[_wgslsmith_index_u32(u_input.c.x, 23u)], global1[_wgslsmith_index_u32(4294967295u, 23u)])), -vec2<i32>(2147483647i, global1[_wgslsmith_index_u32(u_input.c.x, 23u)])), abs(vec2<i32>(u_input.b, 45876i))));
    var var_2 = vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1787f * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -814f) + _wgslsmith_f_op_f32(f32(-1f) * -393f)))), _wgslsmith_f_op_f32(f32(-1f) * -1357f));
    let var_3 = vec2<u32>(~4294967295u, u_input.c.x);
    let var_4 = vec3<f32>(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_div_f32(1407f, 1096f) - 508f)))), _wgslsmith_f_op_f32(ceil(var_2.x)), _wgslsmith_f_op_f32(exp2(var_2.x)));
    var var_5 = u_input.b;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(var_4.x, -308f, var_4.x, var_4.x)))))));
}

