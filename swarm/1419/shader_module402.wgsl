struct Struct_1 {
    a: vec3<f32>,
    b: vec3<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec4<i32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: i32,
    c: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 11>;

var<private> global1: vec3<u32>;

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3(arg_0: Struct_1, arg_1: Struct_1, arg_2: vec3<i32>) -> bool {
    global0 = array<vec4<f32>, 11>();
    global0 = array<vec4<f32>, 11>();
    let var_0 = select(vec4<bool>(any(vec4<bool>(all(vec2<bool>(false, arg_1.b.x)), true, arg_0.b.x | false, false)), arg_0.b.x, select(false, true, !select(arg_0.b.x, arg_0.b.x, arg_1.b.x)), true), !(!vec4<bool>(true, false, true, arg_0.b.x)), !select(select(select(vec4<bool>(arg_0.b.x, arg_0.b.x, arg_1.b.x, false), vec4<bool>(false, arg_1.b.x, false, arg_1.b.x), vec4<bool>(arg_0.b.x, false, false, false)), !vec4<bool>(true, arg_1.b.x, false, true), true), select(select(vec4<bool>(arg_1.b.x, arg_1.b.x, true, false), vec4<bool>(arg_0.b.x, arg_1.b.x, arg_1.b.x, arg_0.b.x), arg_0.b.x), vec4<bool>(true, true, true, true), true), !(!arg_0.b.x)));
    var var_1 = ~u_input.c.zyx;
    var var_2 = _wgslsmith_f_op_f32(-arg_1.a.x);
    return false;
}

fn func_2(arg_0: vec3<f32>) -> vec3<bool> {
    global0 = array<vec4<f32>, 11>();
    global1 = min(firstTrailingBit(vec3<u32>(1u, abs(1u), global1.x)) << (~_wgslsmith_add_vec3_u32(~vec3<u32>(global1.x, global1.x, global1.x), _wgslsmith_mod_vec3_u32(vec3<u32>(global1.x, 41726u, 0u), vec3<u32>(4294967295u, 0u, 13215u))) % vec3<u32>(32u)), ~min(~vec3<u32>(24327u, 36585u, 4294967295u), ~(~vec3<u32>(4294967295u, global1.x, global1.x))));
    global0 = array<vec4<f32>, 11>();
    let var_0 = _wgslsmith_f_op_f32(-arg_0.x);
    return select(select(select(vec3<bool>(all(vec3<bool>(true, false, true)), true, any(vec2<bool>(true, false))), vec3<bool>(true, any(vec4<bool>(false, true, false, true)), any(vec4<bool>(false, true, true, false))), true), vec3<bool>(false, !any(vec2<bool>(false, true)), true), true), select(vec3<bool>(_wgslsmith_f_op_f32(-arg_0.x) < var_0, select(true, all(vec3<bool>(true, false, false)), false), (4294967295u >= global1.x) | false), select(select(select(vec3<bool>(true, true, false), vec3<bool>(false, false, false), true), vec3<bool>(true, true, true), vec3<bool>(false, false, true)), vec3<bool>(func_3(Struct_1(arg_0, vec3<bool>(true, false, false)), Struct_1(arg_0, vec3<bool>(false, false, true)), u_input.c.ywy), false, true), true), !(!any(vec3<bool>(true, false, true)))), vec3<bool>(all(!select(vec3<bool>(true, false, false), vec3<bool>(false, false, false), false)), all(select(select(vec3<bool>(false, true, false), vec3<bool>(false, false, true), true), select(vec3<bool>(false, true, true), vec3<bool>(false, true, false), false), vec3<bool>(true, true, true))), true));
}

fn func_1(arg_0: vec4<i32>, arg_1: u32) -> StorageBuffer {
    let var_0 = _wgslsmith_mult_u32(select(global1.x, ~max(arg_1 & 0u, 1u), true), 26212u);
    var var_1 = Struct_1(_wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(floor(vec3<f32>(1762f, 1786f, 1251f)))))), select(func_2(vec3<f32>(_wgslsmith_f_op_f32(round(706f)), 287f, 661f)), vec3<bool>(!any(vec3<bool>(true, true, true)), true, func_3(Struct_1(vec3<f32>(153f, -928f, -578f), vec3<bool>(false, true, false)), Struct_1(vec3<f32>(221f, 1115f, 1444f), vec3<bool>(false, true, true)), arg_0.yxw)), false));
    var var_2 = u_input.d;
    global1 = ~firstLeadingBit((vec3<u32>(arg_1, 0u, 1u) & _wgslsmith_mult_vec3_u32(vec3<u32>(1u, 33131u, var_0), vec3<u32>(38917u, 27580u, 1u))) & ~firstLeadingBit(vec3<u32>(27185u, 6043u, 0u)));
    let var_3 = firstTrailingBit(~countOneBits(vec4<i32>(-1i & u_input.c.x, countOneBits(arg_0.x), _wgslsmith_add_i32(8834i, u_input.d), arg_0.x)));
    return StorageBuffer(max(_wgslsmith_dot_vec3_i32(firstTrailingBit(vec3<i32>(u_input.b, 2147483647i, -2147483647i) << (vec3<u32>(global1.x, 22870u, global1.x) % vec3<u32>(32u))), _wgslsmith_div_vec3_i32(arg_0.www, _wgslsmith_mod_vec3_i32(arg_0.yyz, vec3<i32>(arg_0.x, arg_0.x, 0i)))), _wgslsmith_sub_i32(min(reverseBits(var_3.x), arg_0.x), reverseBits(-86i))), _wgslsmith_div_i32(-1i, -1i), vec2<i32>(u_input.d, _wgslsmith_div_i32(12213i, 1i)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<bool>(true, true, true);
    global0 = array<vec4<f32>, 11>();
    let x = u_input.a;
    s_output = func_1(_wgslsmith_add_vec4_i32(min(u_input.c, -u_input.c), -vec4<i32>(_wgslsmith_div_i32(u_input.b, 13178i), countOneBits(-21546i), -u_input.c.x, u_input.a)), global1.x);
}

