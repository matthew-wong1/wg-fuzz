struct Struct_1 {
    a: i32,
    b: u32,
    c: u32,
    d: i32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: i32,
    b: Struct_1,
    c: vec4<f32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: u32,
    d: vec3<f32>,
    e: vec3<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<bool>, 31> = array<vec2<bool>, 31>(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false));

var<private> global1: Struct_2;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_2(arg_0: vec4<f32>, arg_1: u32, arg_2: vec3<bool>) -> vec3<f32> {
    global0 = array<vec2<bool>, 31>();
    var var_0 = Struct_3(_wgslsmith_mult_i32(u_input.a.x, u_input.b.x), Struct_1(_wgslsmith_sub_i32(_wgslsmith_sub_i32(u_input.b.x, _wgslsmith_mod_i32(27143i, 46201i)), ~(30826i & u_input.b.x)), arg_1, 22220u, 2147483647i), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(min(vec4<f32>(-1389f, -342f, arg_0.x, 1160f), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-596f, arg_0.x, arg_0.x, arg_0.x))))));
    let var_1 = -vec3<i32>(~1i, _wgslsmith_sub_i32(u_input.a.x, -1i), _wgslsmith_mult_i32(u_input.a.x, 0i));
    var_0 = Struct_3(~var_0.a, var_0.b, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(var_0.c - vec4<f32>(var_0.c.x, -1000f, _wgslsmith_f_op_f32(f32(-1f) * -1580f), 1469f))));
    return _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-var_0.c.wwy));
}

fn func_3(arg_0: bool, arg_1: Struct_3) -> vec3<i32> {
    global0 = array<vec2<bool>, 31>();
    global1 = Struct_2(_wgslsmith_sub_u32(57143u, arg_1.b.c));
    let var_0 = true;
    var var_1 = Struct_2(min(global1.a, ~global1.a));
    let var_2 = 80556u;
    return vec3<i32>(-1i << (~global1.a % 32u), -1i, arg_1.a);
}

fn func_4(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_3, arg_3: i32) -> vec4<bool> {
    global1 = Struct_2(abs(~1u));
    let var_0 = global0[_wgslsmith_index_u32(15827u, 31u)];
    let var_1 = any(select(!vec3<bool>(arg_2.c.x >= arg_2.c.x, true, var_0.x), vec3<bool>(!all(vec3<bool>(false, var_0.x, true)), any(select(global0[_wgslsmith_index_u32(arg_1.b.b, 31u)], vec2<bool>(var_0.x, var_0.x), global0[_wgslsmith_index_u32(4294967295u, 31u)])), (u_input.b.x ^ u_input.b.x) > -23014i), select(select(vec3<bool>(var_0.x, var_0.x, true), select(vec3<bool>(false, var_0.x, false), vec3<bool>(false, var_0.x, var_0.x), var_0.x), all(global0[_wgslsmith_index_u32(1u, 31u)])), select(select(vec3<bool>(var_0.x, var_0.x, false), vec3<bool>(false, true, false), vec3<bool>(var_0.x, var_0.x, var_0.x)), select(vec3<bool>(false, var_0.x, false), vec3<bool>(var_0.x, true, var_0.x), vec3<bool>(true, true, var_0.x)), true), vec3<bool>(!var_0.x, true, select(var_0.x, var_0.x, false)))));
    global1 = Struct_2(0u);
    global1 = Struct_2(23258u);
    return !vec4<bool>(false, !(var_1 == var_0.x), any(select(global0[_wgslsmith_index_u32(global1.a & 1u, 31u)], select(global0[_wgslsmith_index_u32(arg_2.b.b, 31u)], vec2<bool>(true, var_1), var_0.x), true)), select(false, true, var_0.x) | select(var_0.x, var_0.x, false != var_0.x));
}

fn func_1(arg_0: Struct_2) -> bool {
    var var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(227f, -1000f, -1000f, 329f))), vec4<f32>(229f, 599f, -1052f, 1063f)) + _wgslsmith_f_op_vec4_f32(step(_wgslsmith_f_op_vec4_f32(-vec4<f32>(1454f, 1355f, 1572f, -1841f)), _wgslsmith_div_vec4_f32(vec4<f32>(1016f, 245f, -438f, -322f), vec4<f32>(941f, -435f, -1000f, -330f))))), 11247u, !vec3<bool>(select(true, false, false), true, true))));
    var var_1 = func_4(min(abs(_wgslsmith_add_vec3_i32(vec3<i32>(u_input.b.x, u_input.b.x, 27893i) & vec3<i32>(u_input.b.x, -2147483647i, u_input.b.x), _wgslsmith_sub_vec3_i32(vec3<i32>(u_input.b.x, 27206i, 3150i), vec3<i32>(u_input.b.x, 16511i, u_input.b.x)))), max(-func_3(true, Struct_3(48408i, Struct_1(18192i, arg_0.a, 18238u, u_input.a.x), vec4<f32>(1412f, var_0.x, 454f, var_0.x))), ~(~vec3<i32>(48881i, 26001i, 1i)))), Struct_3(2147483647i, Struct_1(0i, _wgslsmith_div_u32(36761u, 4294967295u) >> (global1.a % 32u), global1.a, -24348i), _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(vec4<f32>(-947f, 997f, -3098f, var_0.x) * vec4<f32>(-963f, 103f, 730f, var_0.x)), _wgslsmith_f_op_vec4_f32(vec4<f32>(325f, var_0.x, var_0.x, 908f) + vec4<f32>(var_0.x, -1237f, 1016f, var_0.x)))) - _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(vec4<f32>(-959f, 976f, 203f, 817f) - vec4<f32>(var_0.x, var_0.x, var_0.x, -569f)))))), Struct_3(select(_wgslsmith_add_i32(0i, func_3(true, Struct_3(2147483647i, Struct_1(30911i, 1u, global1.a, u_input.b.x), vec4<f32>(-294f, 2456f, var_0.x, var_0.x))).x), u_input.a.x, 4294967295u > firstLeadingBit(arg_0.a)), Struct_1(18015i, ~(~global1.a), global1.a, -(u_input.a.x << (global1.a % 32u))), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-882f, 1573f, 1137f, var_0.x) - vec4<f32>(var_0.x, var_0.x, var_0.x, 912f))))), firstTrailingBit(u_input.a.x | _wgslsmith_add_i32(u_input.a.x, _wgslsmith_mult_i32(1i, -2147483647i))));
    var var_2 = ~_wgslsmith_mod_i32(firstTrailingBit(func_3(false, Struct_3(u_input.b.x, Struct_1(u_input.b.x, 68297u, global1.a, 1549i), vec4<f32>(var_0.x, 1000f, var_0.x, var_0.x))).x), u_input.a.x);
    var_0 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(122f, 1000f, var_0.x))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(-521f, 1153f, -1813f) - vec3<f32>(var_0.x, var_0.x, var_0.x)) - vec3<f32>(1917f, 158f, -1019f)))));
    let var_3 = Struct_3(43361i, Struct_1(u_input.b.x, 5856u, select(1u, arg_0.a, any(select(vec4<bool>(var_1.x, true, false, false), vec4<bool>(true, false, false, true), var_1.x))), -_wgslsmith_dot_vec2_i32(~u_input.a, u_input.a)), _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-3320f, var_0.x, -1032f, -317f)), _wgslsmith_div_vec4_f32(vec4<f32>(var_0.x, var_0.x, var_0.x, -215f), vec4<f32>(var_0.x, -1063f, var_0.x, -2309f)))))));
    return true;
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<vec2<bool>, 31>();
    var var_0 = func_1(Struct_2(~60194u));
    var var_1 = global1.a;
    let var_2 = reverseBits(~(_wgslsmith_dot_vec4_u32(vec4<u32>(global1.a, global1.a, 32574u, 1u), ~vec4<u32>(0u, global1.a, global1.a, 1u)) << ((_wgslsmith_dot_vec3_u32(vec3<u32>(global1.a, 72881u, 106486u), vec3<u32>(33579u, 27926u, 4294967295u)) >> (0u % 32u)) % 32u)));
    var var_3 = false;
    let x = u_input.a;
    s_output = StorageBuffer((vec2<u32>(~global1.a, var_2) ^ select(vec2<u32>(global1.a, var_2) & vec2<u32>(var_2, 0u), vec2<u32>(4294967295u, var_2), func_4(vec3<i32>(u_input.a.x, u_input.b.x, u_input.a.x), Struct_3(u_input.a.x, Struct_1(u_input.b.x, 67357u, var_2, u_input.a.x), vec4<f32>(1000f, 2479f, -1952f, -1226f)), Struct_3(2182i, Struct_1(3434i, global1.a, 57902u, -47434i), vec4<f32>(-1983f, 839f, 513f, 713f)), u_input.b.x).xw)) & vec2<u32>(0u, 15261u), ~var_2, max(~0u, ~(~_wgslsmith_dot_vec2_u32(vec2<u32>(4294967295u, global1.a), vec2<u32>(17303u, 35727u)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(480f, 1000f, 2738f)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(-1592f, 405f, 862f))))))), vec3<i32>(-2147483647i & max(-u_input.b.x, u_input.b.x), _wgslsmith_add_i32(0i, u_input.a.x), abs(29985i)));
}

