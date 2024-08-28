struct Struct_1 {
    a: vec3<bool>,
    b: vec2<bool>,
    c: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: vec2<f32>,
    c: vec4<i32>,
    d: vec2<f32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: Struct_1,
    e: i32,
}

struct UniformBuffer {
    a: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<i32>,
    b: i32,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_2, 2>;

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn func_2(arg_0: Struct_2) -> vec3<bool> {
    let var_0 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_0.d.x, 173f, -1544f)) * vec3<f32>(arg_0.d.x, arg_0.b.x, _wgslsmith_f_op_f32(arg_0.b.x * arg_0.d.x))))), vec3<f32>(633f, -237f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1602f + arg_0.d.x)))), true));
    let var_1 = -1187f;
    global0 = array<Struct_2, 2>();
    global0 = array<Struct_2, 2>();
    let var_2 = global0[_wgslsmith_index_u32(_wgslsmith_add_u32(0u, 4294967295u), 2u)];
    return select(vec3<bool>(true, all(arg_0.a.b), true), var_2.a.a, false);
}

fn func_3(arg_0: bool, arg_1: i32) -> vec2<bool> {
    let var_0 = -442f;
    let var_1 = Struct_1(vec3<bool>(false, arg_0, false), func_2(global0[_wgslsmith_index_u32(reverseBits(u_input.a.x), 2u)]).zz, any(vec3<bool>(true, all(vec2<bool>(true, true)), any(select(vec4<bool>(arg_0, arg_0, false, arg_0), vec4<bool>(arg_0, true, arg_0, arg_0), vec4<bool>(false, true, arg_0, false))))));
    var var_2 = Struct_2(var_1, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(vec2<f32>(-313f, _wgslsmith_f_op_f32(var_0 * 517f))))), abs(vec4<i32>(_wgslsmith_div_i32(-28924i, arg_1) & arg_1, -_wgslsmith_div_i32(arg_1, 0i), (arg_1 ^ arg_1) | (i32(-1i) * -17802i), arg_1)), vec2<f32>(466f, -303f));
    var_2 = Struct_2(var_2.a, vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2055f, -1327f)) - var_2.b.x), 1f), var_2.c, var_2.d);
    var var_3 = var_1;
    return var_1.b;
}

fn func_1(arg_0: vec4<f32>, arg_1: i32, arg_2: vec2<u32>, arg_3: vec3<f32>) -> i32 {
    let var_0 = firstTrailingBit(-(~vec3<i32>(1i, -13346i, _wgslsmith_add_i32(arg_1, -1i))));
    let var_1 = Struct_3(Struct_1(!func_2(Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(false, true), true), arg_0.wy, vec4<i32>(51150i, arg_1, -3192i, -21858i), vec2<f32>(450f, arg_3.x))), !(!func_3(false, var_0.x)), func_3(true, _wgslsmith_mult_i32(abs(arg_1), var_0.x & 45103i)).x), Struct_1(func_2(global0[_wgslsmith_index_u32(_wgslsmith_add_u32(4294967295u >> (arg_2.x % 32u), 35020u), 2u)]), !select(func_3(true, -22235i), func_2(global0[_wgslsmith_index_u32(u_input.a.x, 2u)]).xz, any(vec3<bool>(true, true, true))), true == any(select(vec3<bool>(false, false, false), vec3<bool>(true, false, true), true))), any(vec3<bool>(true, true, true)) && true, Struct_1(select(select(vec3<bool>(true, true, false), select(vec3<bool>(false, false, true), vec3<bool>(false, true, true), vec3<bool>(true, false, true)), vec3<bool>(true, true, true)), vec3<bool>(any(vec3<bool>(true, true, false)), true, func_2(global0[_wgslsmith_index_u32(arg_2.x, 2u)]).x), true), !vec2<bool>(any(vec2<bool>(false, false)), select(true, true, true)), !(arg_1 <= _wgslsmith_dot_vec2_i32(var_0.yz, var_0.yx))), _wgslsmith_div_i32(_wgslsmith_dot_vec2_i32(var_0.zy, vec2<i32>(var_0.x, -1i) >> (vec2<u32>(u_input.a.x, u_input.a.x) % vec2<u32>(32u))), arg_1) & 9600i);
    var var_2 = arg_2.x;
    var var_3 = var_1.d.a;
    var_2 = ~(~max(u_input.a.x, u_input.a.x)) | _wgslsmith_mod_u32(4294967295u, _wgslsmith_div_u32(min(18073u, arg_2.x) >> (~16056u % 32u), _wgslsmith_add_u32(~u_input.a.x, arg_2.x)));
    return -_wgslsmith_dot_vec4_i32(abs(firstTrailingBit(~vec4<i32>(39302i, arg_1, var_1.e, 7127i))), abs(vec4<i32>(var_1.e, 2147483647i, -1i, 13153i) | vec4<i32>(arg_1, var_0.x, -28399i, arg_1)) << (_wgslsmith_mod_vec4_u32(vec4<u32>(arg_2.x, 0u, arg_2.x, 61353u), vec4<u32>(1u, arg_2.x, 53046u, 21015u)) % vec4<u32>(32u)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = 0u;
    global0 = array<Struct_2, 2>();
    let var_1 = vec4<i32>(func_1(vec4<f32>(_wgslsmith_f_op_f32(1165f * 1041f), _wgslsmith_div_f32(-944f, 265f), -415f, _wgslsmith_f_op_f32(-1144f - -902f)), -2147483647i, _wgslsmith_clamp_vec2_u32(~vec2<u32>(var_0, 40686u), _wgslsmith_sub_vec2_u32(vec2<u32>(1u, var_0), u_input.a), u_input.a), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1659f, -1000f, 171f), vec3<f32>(1000f, -396f, 987f), vec3<bool>(false, true, true))))) << (1u % 32u), _wgslsmith_div_i32(_wgslsmith_sub_i32(-50950i, firstLeadingBit(-2147483647i)), -2147483647i), 0i, ~(firstTrailingBit(~5954i) >> ((_wgslsmith_sub_u32(3071u, u_input.a.x) & ~var_0) % 32u)));
    global0 = array<Struct_2, 2>();
    var var_2 = Struct_1(select(vec3<bool>(false, !any(vec4<bool>(true, false, false, false)), true), vec3<bool>((var_1.x > 4603i) | true, true, true), !select(vec3<bool>(true, true, true), vec3<bool>(true, true, true), true)), select(func_2(global0[_wgslsmith_index_u32(var_0, 2u)]).yx, select(vec2<bool>(true, true), !func_2(Struct_2(Struct_1(vec3<bool>(true, false, true), vec2<bool>(true, true), false), vec2<f32>(935f, 1463f), var_1, vec2<f32>(169f, -1132f))).xy, vec2<bool>(true, true)), _wgslsmith_f_op_f32(-250f * _wgslsmith_f_op_f32(abs(-175f))) >= _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(step(343f, 473f)), _wgslsmith_div_f32(681f, 1481f), true))), u_input.a.x < u_input.a.x);
    global0 = array<Struct_2, 2>();
    let var_3 = var_1.x >= -2147483647i;
    let x = u_input.a;
    s_output = StorageBuffer(~abs(vec3<i32>(2147483647i, 25804i, var_1.x) & countOneBits(vec3<i32>(-2147483647i, 2147483647i, 65354i))), var_1.x, u_input.a.x);
}

