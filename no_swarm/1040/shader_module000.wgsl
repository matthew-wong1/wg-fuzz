struct Struct_1 {
    a: i32,
    b: f32,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec2<i32>,
    c: i32,
    d: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec4<u32>,
    c: i32,
    d: vec2<f32>,
    e: vec3<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(18379i, 294f);

var<private> global1: i32 = -74909i;

var<private> global2: array<vec4<f32>, 24>;

var<private> global3: Struct_1;

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn func_2(arg_0: bool) -> Struct_1 {
    global1 = i32(-1i) * -18843i;
    return Struct_1(firstLeadingBit(~(-4644i)), global3.b);
}

fn func_1() -> Struct_1 {
    global0 = Struct_1(~firstTrailingBit(-6951i), -1000f);
    let var_0 = ~(~(~4294967295u));
    global1 = -_wgslsmith_mult_i32(_wgslsmith_add_i32(u_input.c, _wgslsmith_clamp_i32(~37279i, -64524i, global3.a)), (i32(-1i) * -26795i) << (((4294967295u ^ var_0) << (60945u % 32u)) % 32u));
    global3 = Struct_1(~(~min(2147483647i, ~4736i)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(1331f)))));
    global2 = array<vec4<f32>, 24>();
    return func_2(true);
}

fn func_3(arg_0: Struct_1, arg_1: f32, arg_2: i32) -> vec2<u32> {
    let var_0 = ~_wgslsmith_mult_vec2_u32(~firstLeadingBit(_wgslsmith_sub_vec2_u32(vec2<u32>(22525u, 0u), vec2<u32>(1u, u_input.d))), vec2<u32>(countOneBits(abs(7063u)), countOneBits(48009u & u_input.d)));
    let var_1 = -(~arg_0.a);
    let var_2 = !vec4<bool>(false, true, _wgslsmith_f_op_f32(max(-370f, _wgslsmith_f_op_f32(floor(arg_0.b)))) <= 115f, (_wgslsmith_f_op_f32(-2707f + global0.b) > _wgslsmith_f_op_f32(arg_1 * -840f)) | !(8117u == u_input.d));
    var var_3 = select(select(select(var_2.zw, !vec2<bool>(var_2.x, var_2.x), var_2.wx), var_2.yy, true), !vec2<bool>(true, any(!vec3<bool>(var_2.x, var_2.x, var_2.x))), select(!var_2.xx, select(var_2.xz, vec2<bool>(!var_2.x, any(vec3<bool>(false, var_2.x, true))), var_2.wy), var_2.zw));
    var var_4 = func_1();
    return ~(~var_0);
}

fn func_4(arg_0: u32, arg_1: vec2<u32>, arg_2: Struct_1) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.b));
    var var_1 = 1332f;
    var var_2 = !(arg_0 != abs(53507u));
    var var_3 = func_2(~(-89032i) > u_input.a.x);
    global1 = -34439i;
    return Struct_1(~var_3.a, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(floor(var_0)))) + _wgslsmith_f_op_f32(-func_1().b))));
}

@compute
@workgroup_size(1)
fn main() {
    global3 = func_4(u_input.d, func_3(func_1(), 927f, i32(-1i) * -global3.a), func_2(all(vec3<bool>(false, true, global3.b > -1000f))));
    var var_0 = Struct_1(~(2147483647i & ~u_input.c), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.b)));
    var var_1 = ~countOneBits(~vec3<u32>(u_input.d & 4294967295u, _wgslsmith_add_u32(u_input.d, 4294967295u), ~u_input.d));
    let var_2 = Struct_1(~_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec4_i32(vec4<i32>(-73140i, 64644i, global3.a, 1i), vec4<i32>(global0.a, global3.a, -2147483647i, global0.a)), _wgslsmith_div_i32(global3.a, global3.a), 2147483647i), _wgslsmith_add_vec3_i32(vec3<i32>(global0.a, var_0.a, -2147483647i), _wgslsmith_clamp_vec3_i32(vec3<i32>(-1i, 30596i, u_input.b.x), u_input.a, u_input.a))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1313f, global3.b)) - global0.b)));
    var var_3 = vec3<f32>(_wgslsmith_f_op_f32(global0.b + 776f), -429f, global0.b);
    let var_4 = Struct_1(_wgslsmith_sub_i32(63176i, _wgslsmith_div_i32(-1i, _wgslsmith_mult_i32(reverseBits(-23425i), 0i << (u_input.d % 32u)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-var_2.b) + var_0.b));
    var_1 = firstLeadingBit(~vec3<u32>(17706u, 1u, 4294967295u));
    let var_5 = _wgslsmith_add_u32(~var_1.x, select(7536u, u_input.d, !(false && any(vec2<bool>(true, true)))));
    var var_6 = max(_wgslsmith_dot_vec4_i32(-max(vec4<i32>(-19316i, -1i, global0.a, -42710i), -vec4<i32>(global3.a, 1i, -6580i, u_input.c)), vec4<i32>(i32(-1i) * -35928i, 38281i, var_0.a, -2147483647i)), func_2(any(vec4<bool>(any(vec2<bool>(false, false)), false, true, true))).a);
    let x = u_input.a;
    s_output = StorageBuffer(global0.a, select(vec4<u32>(min(1u, 0u), ~4294967295u, var_5 | 0u, 4294967295u), abs(~vec4<u32>(11528u, 37774u, var_1.x, var_1.x)), true) & vec4<u32>(1u, abs(_wgslsmith_mod_u32(var_1.x, var_5)), var_1.x, u_input.d), _wgslsmith_dot_vec3_i32(u_input.a, abs(vec3<i32>(_wgslsmith_mod_i32(var_0.a, -1i), func_1().a, 1i))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(global3.b, 1087f)), _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(min(302f, -687f)), global3.b, _wgslsmith_f_op_f32(-var_4.b)))));
}

