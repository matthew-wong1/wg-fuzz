struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
    d: bool,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec2<i32>,
    b: u32,
}

struct Struct_3 {
    a: Struct_1,
}

struct Struct_4 {
    a: vec3<bool>,
    b: Struct_3,
    c: vec4<i32>,
    d: bool,
    e: bool,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec4<u32>,
    c: u32,
    d: i32,
    e: u32,
}

struct StorageBuffer {
    a: vec4<f32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<f32>;

var<private> global1: i32 = -1125i;

var<private> global2: array<vec3<f32>, 15> = array<vec3<f32>, 15>(vec3<f32>(-321f, -774f, 1426f), vec3<f32>(1000f, -1296f, -892f), vec3<f32>(1098f, -788f, -100f), vec3<f32>(2230f, 1174f, -2112f), vec3<f32>(-132f, 818f, -653f), vec3<f32>(871f, 1734f, 1171f), vec3<f32>(320f, 223f, 1489f), vec3<f32>(1073f, -1019f, 188f), vec3<f32>(1010f, 888f, 924f), vec3<f32>(-1838f, -1305f, -2478f), vec3<f32>(1167f, -1830f, 123f), vec3<f32>(715f, 947f, 1000f), vec3<f32>(212f, -590f, 837f), vec3<f32>(1000f, 584f, 279f), vec3<f32>(-1485f, -366f, 1795f));

var<private> global3: vec2<bool>;

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn func_3() -> f32 {
    global3 = select(vec2<bool>(all(select(!vec4<bool>(true, global3.x, global3.x, true), !vec4<bool>(global3.x, false, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, global3.x))), global3.x), select(select(select(vec2<bool>(global3.x, global3.x), !vec2<bool>(true, global3.x), global3.x), vec2<bool>(false | global3.x, global3.x), !select(vec2<bool>(false, false), vec2<bool>(true, global3.x), vec2<bool>(true, false))), vec2<bool>(global3.x, global3.x), vec2<bool>(-44394i > u_input.d, !global3.x)), vec2<bool>(true, true));
    var var_0 = ~_wgslsmith_mod_u32(~(~_wgslsmith_div_u32(70300u, u_input.c)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(u_input.c, _wgslsmith_mult_u32(30854u, 45414u)), _wgslsmith_mod_u32(_wgslsmith_dot_vec4_u32(u_input.b, u_input.b), 0u), 1u));
    let var_1 = _wgslsmith_f_op_f32(global0.x * _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(select(global0.x, _wgslsmith_f_op_f32(f32(-1f) * -373f), !global3.x)), -778f)));
    global3 = !(!(!(!select(vec2<bool>(global3.x, global3.x), vec2<bool>(global3.x, global3.x), global3.x))));
    var var_2 = select(!select(!(!vec4<bool>(true, global3.x, global3.x, global3.x)), select(vec4<bool>(global3.x, false, false, true), vec4<bool>(false, true, false, true), global3.x), all(select(vec3<bool>(true, global3.x, true), vec3<bool>(true, true, global3.x), vec3<bool>(global3.x, global3.x, global3.x)))), vec4<bool>(!any(select(vec4<bool>(false, global3.x, true, global3.x), vec4<bool>(global3.x, false, false, true), global3.x)), true, !(!select(global3.x, false, true)), -countOneBits(u_input.d) > _wgslsmith_add_i32(_wgslsmith_mod_i32(u_input.d, -1i), u_input.d)), vec4<bool>(global3.x, global3.x, all(!vec2<bool>(global3.x, false)), false));
    return var_1;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_4) -> i32 {
    let var_0 = _wgslsmith_f_op_vec3_f32(sign(vec3<f32>(_wgslsmith_f_op_f32(func_3()), _wgslsmith_f_op_f32(ceil(-194f)), _wgslsmith_f_op_f32(360f + _wgslsmith_div_f32(_wgslsmith_f_op_f32(global0.x + 552f), _wgslsmith_f_op_f32(global0.x - global0.x))))));
    let var_1 = arg_0;
    global0 = var_0.xy;
    let var_2 = arg_1.b.a;
    var var_3 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(global2[_wgslsmith_index_u32(42422u, 15u)], vec3<f32>(var_0.x, global0.x, var_0.x))) + vec3<f32>(-583f, 1309f, -213f)))));
    return _wgslsmith_dot_vec4_i32(arg_1.c, countOneBits(-(~arg_1.c)));
}

fn func_1(arg_0: u32) -> StorageBuffer {
    var var_0 = _wgslsmith_sub_vec4_i32(vec4<i32>(~(-abs(u_input.d)), 2772i, func_2(Struct_2(vec2<i32>(u_input.d, u_input.d), 39912u), Struct_4(vec3<bool>(true, true, false), Struct_3(Struct_1(vec2<bool>(false, global3.x), vec3<bool>(global3.x, global3.x, false), arg_0, global3.x, vec3<u32>(6787u, 1u, 60414u))), vec4<i32>(u_input.d, u_input.d, 1i, -2620i), true, global3.x)) & _wgslsmith_mult_i32(u_input.d, u_input.d), -_wgslsmith_add_i32(u_input.d >> (u_input.a.x % 32u), 1i >> (arg_0 % 32u))), -(~select(vec4<i32>(71412i, u_input.d, u_input.d, u_input.d), countOneBits(vec4<i32>(-30272i, 9292i, 2147483647i, u_input.d)), select(vec4<bool>(true, global3.x, true, global3.x), vec4<bool>(global3.x, global3.x, global3.x, true), global3.x))));
    var var_1 = select(var_0.x, var_0.x, all(!select(vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, global3.x, true), vec3<bool>(global3.x, global3.x, global3.x)))) >= 31715i;
    var var_2 = Struct_2(vec2<i32>(u_input.d, max(max(-8006i, var_0.x), 0i)), _wgslsmith_mult_u32(arg_0, ~(~0u)));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(-485f)));
    let var_4 = Struct_3(Struct_1(select(!select(vec2<bool>(global3.x, global3.x), vec2<bool>(false, global3.x), global3.x), select(!vec2<bool>(false, global3.x), select(vec2<bool>(global3.x, false), vec2<bool>(false, global3.x), false), vec2<bool>(true, global3.x)), max(u_input.a.x, 1u) >= u_input.a.x), select(select(vec3<bool>(global3.x, false, global3.x), vec3<bool>(global3.x, false, false), false && global3.x), select(vec3<bool>(false, false, global3.x), vec3<bool>(true, false, false), all(vec2<bool>(true, true))), true), u_input.b.x, global3.x, select(_wgslsmith_sub_vec3_u32(u_input.b.wwy, ~u_input.b.zwx), ~vec3<u32>(13109u, 79340u, 31429u), false)));
    return StorageBuffer(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(1130f, 838f, global0.x, global0.x))))) + _wgslsmith_f_op_vec4_f32(ceil(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(global0.x, 1000f, global0.x, global0.x) + vec4<f32>(global0.x, 208f, global0.x, -1000f)) - vec4<f32>(-367f, 587f, global0.x, 1231f))))), min(_wgslsmith_dot_vec2_u32(~vec2<u32>(4294967295u, 16933u), _wgslsmith_mult_vec2_u32(~u_input.b.zz, countOneBits(vec2<u32>(19370u, 4294967295u)))), ~abs(5566u)));
}

@compute
@workgroup_size(1)
fn main() {
    let x = u_input.a;
    s_output = func_1(1u | u_input.e);
}

