struct Struct_1 {
    a: i32,
    b: u32,
}

struct Struct_2 {
    a: u32,
}

struct Struct_3 {
    a: Struct_2,
    b: bool,
}

struct UniformBuffer {
    a: u32,
    b: vec4<u32>,
    c: i32,
}

struct StorageBuffer {
    a: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32> = vec3<i32>(0i, -2230i, 29355i);

var<private> global1: Struct_1;

var<private> global2: f32;

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_vec3_i32(e: vec3<i32>, low: vec3<i32>, high: vec3<i32>) -> vec3<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn func_3(arg_0: vec2<bool>, arg_1: Struct_3) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(sign(122f)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1734f * 2487f) - _wgslsmith_f_op_f32(step(-525f, 886f))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-172f - 690f) * _wgslsmith_div_f32(1841f, -920f)))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1740f)) - _wgslsmith_f_op_f32(-430f * -1000f)), -746f));
    var var_1 = abs(u_input.c);
    global0 = -(-abs(_wgslsmith_clamp_vec3_i32(vec3<i32>(1i, 2147483647i, global1.a), vec3<i32>(u_input.c, global0.x, 1i), vec3<i32>(global0.x, 148i, global0.x))) << (~reverseBits(~u_input.b.zzy) % vec3<u32>(32u)));
    return select(!vec4<bool>(all(vec4<bool>(arg_1.b, true, arg_0.x, arg_0.x)), any(select(vec3<bool>(true, false, arg_0.x), vec3<bool>(true, arg_1.b, true), arg_1.b)), true, any(vec2<bool>(arg_0.x, false)) || arg_1.b), vec4<bool>(!arg_1.b, true == all(!vec4<bool>(arg_1.b, false, true, true)), !(!all(arg_0)), false), select(select(select(vec4<bool>(true, true, arg_0.x, arg_1.b), select(vec4<bool>(false, true, true, arg_1.b), vec4<bool>(true, true, false, arg_0.x), arg_1.b), !vec4<bool>(arg_0.x, arg_1.b, arg_1.b, true)), !select(vec4<bool>(arg_0.x, false, arg_0.x, arg_0.x), vec4<bool>(false, arg_1.b, false, true), false), true), !(!(!vec4<bool>(false, true, false, arg_1.b))), vec4<bool>(false, !(7792i != u_input.c), true & (-6300i >= global0.x), true)));
}

fn func_2(arg_0: vec4<f32>) -> vec4<bool> {
    var var_0 = Struct_1(~_wgslsmith_mult_i32(-u_input.c, 5123i), 20751u);
    let var_1 = _wgslsmith_f_op_f32(442f - _wgslsmith_f_op_f32(-_wgslsmith_div_f32(arg_0.x, arg_0.x)));
    let var_2 = Struct_3(Struct_2(4294967295u), true);
    let var_3 = var_2.a;
    let var_4 = Struct_1(countOneBits(_wgslsmith_dot_vec3_i32(-_wgslsmith_add_vec3_i32(vec3<i32>(u_input.c, u_input.c, -1i), vec3<i32>(1254i, -1i, var_0.a)), (vec3<i32>(global1.a, -1i, -1i) | vec3<i32>(var_0.a, -53179i, var_0.a)) >> (~vec3<u32>(51865u, var_0.b, global1.b) % vec3<u32>(32u)))), _wgslsmith_sub_u32(_wgslsmith_div_u32(min(0u, var_2.a.a), 1u), _wgslsmith_div_u32(var_2.a.a, var_0.b)));
    return !func_3(!(!vec2<bool>(var_2.b, true)), var_2);
}

fn func_4(arg_0: vec3<i32>, arg_1: vec4<bool>, arg_2: i32) -> Struct_2 {
    global1 = Struct_1(_wgslsmith_add_i32(-1i, -1i), global1.b);
    let var_0 = Struct_1(9923i, 97659u);
    global2 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1183f + 1224f) + _wgslsmith_div_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1000f + 444f)) + -838f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-1786f, 818f, arg_1.x)))))));
    let var_1 = Struct_2(~firstTrailingBit(max(firstTrailingBit(0u), ~0u)));
    global0 = ~_wgslsmith_clamp_vec3_i32(vec3<i32>(_wgslsmith_mod_i32(global0.x, arg_0.x), global1.a << (var_1.a % 32u), countOneBits(var_0.a)) | _wgslsmith_mod_vec3_i32(arg_0, abs(vec3<i32>(-1i, arg_2, global1.a))), arg_0, arg_0);
    return Struct_2(countOneBits(var_1.a));
}

fn func_1() -> i32 {
    var var_0 = func_4(vec3<i32>(26780i, 1i, 95078i), select(vec4<bool>(all(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, false, true), false)), true, any(select(vec3<bool>(true, true, false), vec3<bool>(false, false, true), false)), true), func_2(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(605f, -1157f, 695f, 496f)))), true), 14100i);
    let var_1 = _wgslsmith_div_vec4_u32(u_input.b, vec4<u32>(~(12982u >> (_wgslsmith_mult_u32(global1.b, 0u) % 32u)), ~56204u, u_input.b.x | 18620u, ~u_input.b.x));
    global1 = Struct_1(1i, ~(~_wgslsmith_dot_vec3_u32(u_input.b.zyz, vec3<u32>(var_0.a, global1.b, global1.b))) << (_wgslsmith_dot_vec2_u32(var_1.yy, ~u_input.b.yz) % 32u));
    var_0 = func_4(~(~vec3<i32>(~u_input.c, _wgslsmith_dot_vec4_i32(vec4<i32>(global0.x, -10404i, global1.a, 45332i), vec4<i32>(46492i, global0.x, global1.a, global1.a)), _wgslsmith_add_i32(0i, -16091i))), vec4<bool>(_wgslsmith_f_op_f32(step(-180f, _wgslsmith_f_op_f32(min(493f, -723f)))) > _wgslsmith_f_op_f32(464f + _wgslsmith_f_op_f32(186f * 126f)), true, any(vec4<bool>(any(vec4<bool>(true, true, false, true)), true, false, global1.a < global0.x)), !all(vec3<bool>(true, false, true))), -_wgslsmith_div_i32(_wgslsmith_sub_i32(-33779i, _wgslsmith_div_i32(u_input.c, u_input.c)), global1.a));
    let var_2 = vec4<u32>(16187u, 1u, ~min(reverseBits(select(u_input.b.x, global1.b, true)), 40523u >> (1u % 32u)), max(global1.b, 4294967295u));
    return -46433i;
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_2(global1.b);
    global2 = _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-1000f * _wgslsmith_div_f32(1016f, 2255f)), 686f, false))))));
    global1 = Struct_1(-func_1(), reverseBits(_wgslsmith_dot_vec4_u32(reverseBits(vec4<u32>(global1.b, u_input.b.x, 0u, var_0.a)), vec4<u32>(global1.b, u_input.a | 0u, 4294967295u, var_0.a))));
    let var_1 = vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(312f)), -1000f)), 1327f);
    var var_2 = Struct_1(-6760i, 27542u);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(max(var_1.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -571f)))))));
}

