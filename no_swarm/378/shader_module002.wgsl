struct Struct_1 {
    a: vec2<i32>,
}

struct Struct_2 {
    a: vec3<bool>,
}

struct Struct_3 {
    a: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec2<u32>,
    c: i32,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: vec2<u32>,
    c: vec3<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(vec2<i32>(-88208i, -44742i));

var<private> global1: array<Struct_2, 27>;

var<private> global2: Struct_3;

var<private> global3: vec4<u32>;

var<private> global4: vec3<bool>;

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_1, arg_1: vec3<f32>, arg_2: Struct_3, arg_3: Struct_2) -> vec3<f32> {
    var var_0 = 1655f;
    let var_1 = Struct_1(reverseBits(-vec2<i32>(1i, _wgslsmith_clamp_i32(1i, arg_2.a.a.x, 10523i))));
    var var_2 = global2.a.a.x;
    let var_3 = 806f;
    return _wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-1273f, _wgslsmith_f_op_f32(-var_3), _wgslsmith_f_op_f32(f32(-1f) * -572f))))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -180f)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(f32(-1f) * -1145f), var_3)), _wgslsmith_f_op_f32(f32(-1f) * -2073f))));
}

fn func_4(arg_0: f32, arg_1: vec4<f32>, arg_2: vec3<f32>) -> i32 {
    let var_0 = !(max(u_input.a, -4119i) == (i32(-1i) * -u_input.a)) == global4.x;
    let var_1 = _wgslsmith_f_op_f32(sign(arg_2.x));
    global2 = Struct_3(global2.a);
    var var_2 = global0.a.x;
    global1 = array<Struct_2, 27>();
    return _wgslsmith_mod_i32(~(~min(select(-50390i, u_input.c, false), _wgslsmith_dot_vec4_i32(vec4<i32>(37258i, -44916i, global0.a.x, 0i), vec4<i32>(global0.a.x, 2877i, 28455i, global0.a.x)))), 2147483647i);
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> u32 {
    let var_0 = vec2<i32>(func_4(_wgslsmith_f_op_f32(exp2(arg_0)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(1307f, arg_0, arg_0, -1628f) + vec4<f32>(-1723f, arg_0, arg_0, 1850f)) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(973f, 1256f, arg_0, arg_0))), vec4<f32>(arg_0, _wgslsmith_f_op_f32(-arg_0), _wgslsmith_f_op_f32(max(485f, arg_0)), _wgslsmith_f_op_f32(min(599f, -1577f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(func_3(global2.a, vec3<f32>(arg_0, arg_0, 1116f), Struct_3(Struct_1(vec2<i32>(0i, 5300i))), Struct_2(vec3<bool>(global4.x, global4.x, global4.x))))))), global2.a.a.x);
    var var_1 = Struct_3(global2.a);
    let var_2 = max(-33606i, _wgslsmith_add_i32(_wgslsmith_clamp_i32(global2.a.a.x, -1i, global0.a.x), -1i));
    let var_3 = var_1.a;
    var var_4 = !vec4<bool>(!(!all(vec2<bool>(true, global4.x))), false, !(!(false && global4.x)), global4.x);
    return max(_wgslsmith_mod_u32(~(0u & _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4780u), vec2<u32>(7364u, global3.x))), _wgslsmith_div_u32(u_input.b.x, 30454u)), global3.x);
}

fn func_1(arg_0: u32) -> u32 {
    global3 = _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(2301u, 4294967295u, _wgslsmith_sub_u32(global3.x, 56450u), u_input.b.x)), firstLeadingBit(vec4<u32>(func_2(1283f, vec4<u32>(arg_0, u_input.b.x, 17841u, arg_0)) & 922u, _wgslsmith_div_u32(arg_0 >> (arg_0 % 32u), firstLeadingBit(4294967295u)), ~_wgslsmith_dot_vec4_u32(vec4<u32>(4294967295u, arg_0, 29757u, 5339u), vec4<u32>(arg_0, u_input.b.x, 1u, 76087u)), _wgslsmith_mult_u32(arg_0, u_input.b.x))));
    var var_0 = !(!all(select(global4.yy, !vec2<bool>(false, global4.x), vec2<bool>(global4.x, global4.x))));
    global4 = !vec3<bool>(all(!vec3<bool>(true, global4.x, global4.x)), all(vec4<bool>(true, global4.x, global4.x, global4.x)), true);
    let var_1 = -1i;
    global4 = !(!select(!(!vec3<bool>(true, true, global4.x)), !select(vec3<bool>(false, global4.x, true), vec3<bool>(global4.x, false, false), vec3<bool>(true, true, false)), global4.x));
    return _wgslsmith_mult_u32(arg_0, ~36008u);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = (0u & select(abs(1u), ~func_1(u_input.b.x), select(global4.x, u_input.b.x >= u_input.b.x, !global4.x))) ^ global3.x;
    var var_1 = Struct_3(Struct_1(vec2<i32>(global0.a.x, 1i)));
    var var_2 = ~_wgslsmith_div_vec4_i32(~min(vec4<i32>(global0.a.x, 2147483647i, var_1.a.a.x, 0i), -vec4<i32>(26094i, u_input.c, 2147483647i, 0i)), vec4<i32>(_wgslsmith_div_i32(u_input.a, 1i) << (abs(global3.x) % 32u), select(u_input.a | 22269i, -global2.a.a.x, false), 2147483647i, func_4(_wgslsmith_div_f32(-1441f, -189f), vec4<f32>(475f, -846f, -1000f, -479f), _wgslsmith_f_op_vec3_f32(vec3<f32>(1223f, 113f, 724f) + vec3<f32>(422f, 127f, 1531f)))));
    let var_3 = Struct_2(!select(select(!vec3<bool>(global4.x, global4.x, false), select(vec3<bool>(global4.x, global4.x, true), vec3<bool>(global4.x, true, true), vec3<bool>(false, false, global4.x)), true), select(!vec3<bool>(false, false, global4.x), select(vec3<bool>(true, global4.x, global4.x), vec3<bool>(true, global4.x, true), vec3<bool>(global4.x, true, false)), global4.x | global4.x), true));
    let var_4 = Struct_2(!(!(!var_3.a)));
    var var_5 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(849f - _wgslsmith_f_op_f32(-1328f + 271f)), 339f))));
    let var_6 = Struct_1(_wgslsmith_clamp_vec2_i32(select(vec2<i32>(var_1.a.a.x, -u_input.a), var_1.a.a, !(global3.x > global3.x)), _wgslsmith_clamp_vec2_i32(var_2.zz, vec2<i32>(36970i, ~var_2.x), abs(var_2.wy)), _wgslsmith_clamp_vec2_i32(abs(vec2<i32>(-50747i, var_2.x)), vec2<i32>(-global0.a.x, firstLeadingBit(var_2.x)), firstTrailingBit(select(var_2.wy, global0.a, false)))));
    global4 = !vec3<bool>(false, var_4.a.x, true);
    var var_7 = var_6;
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(-2147483647i, ~2147483647i, -3411i, select(u_input.a, -2147483647i, var_3.a.x)) >> ((_wgslsmith_clamp_vec4_u32(abs(vec4<u32>(u_input.b.x, global3.x, 127748u, u_input.b.x)), _wgslsmith_add_vec4_u32(vec4<u32>(1u, 39640u, 0u, global3.x), vec4<u32>(77271u, global3.x, 1u, u_input.b.x)), vec4<u32>(0u, 4294967295u, global3.x, u_input.b.x)) << (firstLeadingBit(~vec4<u32>(55687u, u_input.b.x, 67165u, u_input.b.x)) % vec4<u32>(32u))) % vec4<u32>(32u)), max(firstLeadingBit(_wgslsmith_mod_vec2_u32(max(global3.yx, u_input.b), abs(vec2<u32>(u_input.b.x, global3.x)))), ~_wgslsmith_sub_vec2_u32(u_input.b, vec2<u32>(0u, u_input.b.x)) & _wgslsmith_add_vec2_u32(u_input.b, vec2<u32>(u_input.b.x, global3.x))), vec3<u32>(_wgslsmith_add_u32(func_1(u_input.b.x), ~(u_input.b.x ^ global3.x)), max(11688u, global3.x), reverseBits(func_2(_wgslsmith_f_op_f32(-311f - 107f), vec4<u32>(u_input.b.x, u_input.b.x, 0u, 1u)))));
}

