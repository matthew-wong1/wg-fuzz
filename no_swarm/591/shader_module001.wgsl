struct Struct_1 {
    a: i32,
}

struct UniformBuffer {
    a: u32,
    b: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool> = vec2<bool>(false, true);

var<private> global1: array<Struct_1, 5>;

var<private> global2: vec4<f32> = vec4<f32>(1573f, -599f, -313f, 495f);

var<private> global3: Struct_1 = Struct_1(-70092i);

var<private> global4: array<f32, 30> = array<f32, 30>(-145f, -389f, -202f, -1226f, -349f, -1106f, 1348f, 209f, -276f, 1964f, 443f, -1000f, -401f, -776f, -614f, 183f, 1000f, 1634f, 966f, 1957f, -210f, -1842f, -2088f, 1598f, 1000f, 1040f, -102f, -820f, -387f, 1222f);

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a * b, a, (((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || ((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))));
}

fn func_3(arg_0: vec4<i32>, arg_1: vec2<bool>, arg_2: Struct_1, arg_3: f32) -> vec2<bool> {
    let var_0 = _wgslsmith_mult_vec2_i32(-vec2<i32>(arg_0.x, arg_0.x >> (u_input.b % 32u)), _wgslsmith_mod_vec2_i32(-abs(arg_0.zx), arg_0.zy)) >> (vec2<u32>(0u, u_input.b) % vec2<u32>(32u));
    let var_1 = arg_1.x;
    let var_2 = ~(~select(_wgslsmith_mod_vec3_u32(vec3<u32>(u_input.a, u_input.b, 1442u), vec3<u32>(1u, 1u, 68612u)), vec3<u32>(u_input.a, u_input.b, u_input.b), vec3<bool>(false, false, false)) ^ ~_wgslsmith_mult_vec3_u32(_wgslsmith_mult_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 53263u)), ~vec3<u32>(u_input.b, 1u, u_input.a)));
    global1 = array<Struct_1, 5>();
    global4 = array<f32, 30>();
    return arg_1;
}

fn func_2(arg_0: vec3<f32>, arg_1: i32, arg_2: vec4<i32>, arg_3: f32) -> u32 {
    global0 = vec2<bool>(global0.x, all(!(!select(vec2<bool>(false, global0.x), vec2<bool>(true, true), vec2<bool>(false, global0.x)))));
    global0 = !vec2<bool>(global0.x, !(_wgslsmith_add_i32(arg_1, 32807i) == _wgslsmith_sub_i32(-2147483647i, global3.a)));
    global0 = select(!vec2<bool>(false, !global0.x), !vec2<bool>(global0.x, any(!vec3<bool>(global0.x, true, false))), vec2<bool>(true | (!global0.x || true), all(func_3(arg_2, select(vec2<bool>(global0.x, global0.x), vec2<bool>(global0.x, global0.x), global0.x), global1[_wgslsmith_index_u32(70304u, 5u)], _wgslsmith_div_f32(global4[_wgslsmith_index_u32(52693u, 30u)], -1056f)))));
    var var_0 = 2451f;
    global1 = array<Struct_1, 5>();
    return _wgslsmith_sub_u32(~(1u << (_wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.b, 4294967295u, u_input.b), ~vec3<u32>(u_input.a, 67431u, u_input.a)) % 32u)), ~_wgslsmith_mod_u32(~1u, ~(4294967295u << (u_input.a % 32u))));
}

fn func_1(arg_0: vec2<f32>) -> i32 {
    let var_0 = Struct_1(min(2147483647i, max(global3.a, 6692i) << (22199u % 32u)) >> (_wgslsmith_add_u32(~u_input.b, u_input.b) % 32u));
    global4 = array<f32, 30>();
    var var_1 = ~func_2(global2.zxy, global3.a, -(~vec4<i32>(var_0.a, 2147483647i, global3.a, 67587i)) ^ (vec4<i32>(var_0.a, 2147483647i, var_0.a, global3.a) & (vec4<i32>(var_0.a, var_0.a, global3.a, 43563i) & vec4<i32>(-51926i, var_0.a, var_0.a, -2147483647i))), -110f);
    global0 = !select(vec2<bool>(!global0.x, false), !vec2<bool>(true, global0.x & global0.x), global0.x);
    global3 = global1[_wgslsmith_index_u32(~4294967295u, 5u)];
    return -32986i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(-2831i);
    var var_1 = abs(select(-vec3<i32>(var_0.a << (1u % 32u), _wgslsmith_sub_i32(var_0.a, var_0.a), var_0.a), _wgslsmith_mult_vec3_i32(-(~vec3<i32>(-14703i, global3.a, -2147483647i)), vec3<i32>(~global3.a, _wgslsmith_div_i32(-23026i, var_0.a), var_0.a)), !select(-1000f >= global2.x, !global0.x, true)));
    var var_2 = Struct_1(func_1(_wgslsmith_f_op_vec2_f32(global2.xx - _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1662f, global4[_wgslsmith_index_u32(u_input.b, 30u)]))))));
    var var_3 = 26788i;
    var_3 = firstTrailingBit(var_0.a);
    var var_4 = 0u;
    let var_5 = true;
    var var_6 = _wgslsmith_mult_vec4_u32(vec4<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_sub_vec2_u32(vec2<u32>(u_input.a, 1u), vec2<u32>(1u, 0u) >> (vec2<u32>(u_input.b, u_input.b) % vec2<u32>(32u))), _wgslsmith_sub_vec2_u32(vec2<u32>(32109u, 4294967295u), vec2<u32>(u_input.a, 1u))), 11477u, 40404u, ~u_input.a), _wgslsmith_div_vec4_u32(vec4<u32>(41013u, func_2(global2.yzx, ~var_0.a, reverseBits(vec4<i32>(var_1.x, 9345i, var_2.a, 8909i)), _wgslsmith_f_op_f32(-global4[_wgslsmith_index_u32(76221u, 30u)])), max(19303u & u_input.a, 26938u), 0u), ~select(vec4<u32>(u_input.b, u_input.a, 17850u, 0u), vec4<u32>(972u, u_input.a, u_input.b, 39931u), false) ^ countOneBits(select(vec4<u32>(u_input.a, 52566u, 1u, u_input.b), vec4<u32>(0u, 30841u, 0u, 7444u), true))));
    var_1 = reverseBits(vec3<i32>(-1i) * -_wgslsmith_clamp_vec3_i32(vec3<i32>(var_0.a, var_0.a, -2147483647i), select(vec3<i32>(var_1.x, -1i, -32724i), vec3<i32>(var_1.x, var_1.x, 2147483647i), vec3<bool>(global0.x, global0.x, var_5)), _wgslsmith_div_vec3_i32(vec3<i32>(global3.a, 10721i, -13297i), vec3<i32>(-8896i, var_0.a, var_0.a))));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-global2.yw), -(~var_2.a));
}

