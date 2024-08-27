struct Struct_1 {
    a: f32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec3<f32>,
    c: Struct_2,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: i32;

var<private> global2: array<Struct_2, 32>;

var<private> global3: Struct_3 = Struct_3(vec3<f32>(677f, -677f, 466f), vec3<f32>(-545f, -1109f, -523f), Struct_2(true), Struct_1(879f));

var<private> global4: array<vec2<u32>, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn func_3(arg_0: Struct_1) -> bool {
    let var_0 = _wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(step(vec2<f32>(319f, arg_0.a), vec2<f32>(159f, arg_0.a))))))), _wgslsmith_div_vec2_f32(global3.a.zz, global3.a.yy), true));
    global1 = max(2147483647i, ~12816i);
    global4 = array<vec2<u32>, 22>();
    let var_1 = _wgslsmith_mult_u32(u_input.a, u_input.a);
    global3 = Struct_3(global3.b, _wgslsmith_f_op_vec3_f32(abs(_wgslsmith_f_op_vec3_f32(vec3<f32>(var_0.x, _wgslsmith_f_op_f32(arg_0.a * global0.a), _wgslsmith_f_op_f32(-1124f - 675f)) - _wgslsmith_f_op_vec3_f32(select(global3.b, _wgslsmith_f_op_vec3_f32(vec3<f32>(global3.d.a, var_0.x, var_0.x) * global3.a), select(false, true, global3.c.a)))))), Struct_2(false), global3.d);
    return true;
}

fn func_2(arg_0: Struct_2, arg_1: f32) -> i32 {
    var var_0 = Struct_2(any(vec2<bool>(func_3(global3.d), all(select(vec2<bool>(false, false), vec2<bool>(global3.c.a, arg_0.a), true)))));
    var var_1 = _wgslsmith_sub_u32(_wgslsmith_mod_u32(_wgslsmith_div_u32(~(~u_input.a), u_input.a), u_input.a), 1u);
    return ~firstLeadingBit(_wgslsmith_clamp_i32(2147483647i, 63486i, ~1i));
}

fn func_1(arg_0: vec3<i32>, arg_1: u32) -> vec3<u32> {
    var var_0 = global3.d;
    var var_1 = vec2<i32>(_wgslsmith_div_i32(-(~45829i) ^ ~_wgslsmith_mult_i32(-85670i, arg_0.x), func_2(Struct_2(!global3.c.a), _wgslsmith_div_f32(global3.d.a, _wgslsmith_f_op_f32(-global3.b.x)))), arg_0.x);
    global3 = Struct_3(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global3.b.x, var_0.a, global3.d.a))))), _wgslsmith_f_op_vec3_f32(global3.b + vec3<f32>(var_0.a, 346f, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(min(801f, global3.b.x)), _wgslsmith_f_op_f32(-1613f - global0.a), true)))), Struct_2(-43663i < _wgslsmith_dot_vec2_i32(vec2<i32>(var_1.x, -2147483647i), _wgslsmith_sub_vec2_i32(arg_0.zy, vec2<i32>(-2147483647i, -7248i)))), global3.d);
    var_1 = -max(_wgslsmith_mult_vec2_i32(arg_0.yz, vec2<i32>(1i ^ arg_0.x, -arg_0.x)), _wgslsmith_sub_vec2_i32(vec2<i32>(select(var_1.x, var_1.x, global3.c.a), i32(-1i) * -2147483647i), _wgslsmith_mod_vec2_i32(vec2<i32>(1i, 2147483647i), arg_0.yy) ^ max(vec2<i32>(9216i, 28184i), vec2<i32>(7362i, 11373i))));
    var var_2 = global3.a.zy;
    return _wgslsmith_clamp_vec3_u32(_wgslsmith_clamp_vec3_u32(_wgslsmith_div_vec3_u32(vec3<u32>(firstTrailingBit(u_input.a), abs(0u), 1u), firstTrailingBit(~vec3<u32>(u_input.a, 1u, 56242u))), _wgslsmith_mod_vec3_u32(~vec3<u32>(u_input.a, 139251u, arg_1), vec3<u32>(arg_1 & 4294967295u, arg_1, 40851u)), vec3<u32>(1u, ~arg_1, 11871u)), reverseBits(vec3<u32>(~(~20077u), arg_1, u_input.a)), min(_wgslsmith_div_vec3_u32(vec3<u32>(_wgslsmith_add_u32(arg_1, 0u), arg_1 >> (0u % 32u), 0u), _wgslsmith_div_vec3_u32(~vec3<u32>(u_input.a, 4294967295u, 64970u), ~vec3<u32>(23050u, arg_1, u_input.a))), _wgslsmith_add_vec3_u32(_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.a, 16687u, u_input.a), vec3<u32>(u_input.a, u_input.a, 1u), vec3<u32>(u_input.a, arg_1, arg_1)) ^ vec3<u32>(arg_1, 0u, arg_1), _wgslsmith_div_vec3_u32(vec3<u32>(arg_1, 18247u, 2489u), vec3<u32>(11127u, u_input.a, 49439u)))));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(floor(1017f))))))));
    var var_1 = func_1(-_wgslsmith_div_vec3_i32(-max(vec3<i32>(2147483647i, 76592i, -14208i), vec3<i32>(-1i, 2147483647i, 2147483647i)), ~vec3<i32>(0i, 0i, 37625i)), min(~0u, 48475u));
    var_1 = vec3<u32>(_wgslsmith_dot_vec4_u32(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.a >> (u_input.a % 32u), ~0u, var_1.x, var_1.x << (16729u % 32u)), firstLeadingBit(vec4<u32>(var_1.x, var_1.x, 0u, 360u))), vec4<u32>(min(var_1.x, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, u_input.a, u_input.a), vec3<u32>(4294967295u, 0u, var_1.x))), u_input.a, _wgslsmith_dot_vec3_u32(~vec3<u32>(u_input.a, u_input.a, u_input.a), firstLeadingBit(vec3<u32>(u_input.a, var_1.x, 6114u))), 1u)), _wgslsmith_sub_u32(_wgslsmith_sub_u32(_wgslsmith_sub_u32(abs(64488u), var_1.x << (4294967295u % 32u)), ~4294967295u), ~(~40568u)), u_input.a);
    var var_2 = ~var_1.x;
    let var_3 = global3.d;
    var_2 = ~abs(var_1.x);
    var var_4 = global3.c.a;
    let x = u_input.a;
    s_output = StorageBuffer(global3.b.yz, _wgslsmith_add_vec4_i32(vec4<i32>(1i, ~abs(1i), -1i, select(1i, _wgslsmith_clamp_i32(14641i, -2147483647i, -1i), global3.c.a)), -vec4<i32>(1i, ~1844i, 36872i, countOneBits(1i))));
}

