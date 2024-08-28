struct Struct_1 {
    a: vec3<u32>,
    b: i32,
    c: f32,
    d: vec3<bool>,
    e: vec2<u32>,
}

struct Struct_2 {
    a: vec2<bool>,
    b: Struct_1,
    c: vec4<i32>,
    d: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_2,
    c: u32,
    d: vec3<f32>,
    e: Struct_2,
}

struct Struct_4 {
    a: u32,
}

struct Struct_5 {
    a: u32,
    b: u32,
    c: Struct_1,
    d: f32,
    e: vec4<bool>,
}

struct UniformBuffer {
    a: u32,
    b: u32,
    c: i32,
    d: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<i32, 19>;

var<private> global1: array<vec4<i32>, 32>;

var<private> global2: Struct_5 = Struct_5(28532u, 15504u, Struct_1(vec3<u32>(0u, 24344u, 53226u), -4250i, 269f, vec3<bool>(false, true, false), vec2<u32>(0u, 12664u)), 481f, vec4<bool>(false, true, false, true));

var<private> global3: Struct_4 = Struct_4(15753u);

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a + b, a, ((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_3() -> bool {
    global1 = array<vec4<i32>, 32>();
    global0 = array<i32, 19>();
    let var_0 = global2.c.a.yy;
    global2 = Struct_5(~(~1u), _wgslsmith_dot_vec2_u32(global2.c.a.zz, ~global2.c.a.yx), global2.c, global2.c.c, !select(!(!vec4<bool>(false, global2.e.x, false, false)), vec4<bool>(!global2.e.x, true, true, global2.e.x), true));
    global0 = array<i32, 19>();
    return global2.c.d.x;
}

fn func_2(arg_0: vec4<bool>, arg_1: vec3<i32>) -> vec4<bool> {
    global2 = Struct_5(~u_input.a, 1u, Struct_1(~vec3<u32>(1u, 4294967295u, u_input.b), select(arg_1.x, _wgslsmith_mod_i32(select(global2.c.b, global2.c.b, true), 1i), _wgslsmith_f_op_f32(962f - -137f) != global2.d), global2.d, !vec3<bool>(any(vec3<bool>(true, false, global2.e.x)), global2.c.d.x, true), ~global2.c.a.zx), -496f, select(arg_0, vec4<bool>(true, true, true, true), !select(false, true, !global2.c.d.x)));
    var var_0 = -1000f;
    global1 = array<vec4<i32>, 32>();
    let var_1 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(global2.d, 1000f)) * global2.d);
    let var_2 = Struct_2(select(global2.e.wz, vec2<bool>((-1530f > global2.d) != select(arg_0.x, arg_0.x, global2.c.d.x), func_3()), global2.e.x), Struct_1(global2.c.a, _wgslsmith_dot_vec2_i32(arg_1.xx, arg_1.yy), var_1, select(select(arg_0.wzy, !arg_0.yyx, any(vec2<bool>(false, global2.e.x))), global2.c.d, !global2.e.zyx), ~(~vec2<u32>(25751u, 39999u))), firstLeadingBit(~(~vec4<i32>(-1i, 0i, global2.c.b, u_input.c))), Struct_1(~global2.c.a, _wgslsmith_sub_i32(~(-47778i), _wgslsmith_dot_vec3_i32(_wgslsmith_add_vec3_i32(arg_1, arg_1), vec3<i32>(-11052i, -1i, -19671i))), _wgslsmith_f_op_f32(ceil(var_1)), arg_0.xwz, global2.c.a.yx));
    return !(!global2.e);
}

fn func_1(arg_0: bool, arg_1: vec3<u32>) -> Struct_3 {
    global2 = Struct_5(arg_1.x, abs(countOneBits(arg_1.x)), Struct_1(vec3<u32>(u_input.a, 1u, 33200u), _wgslsmith_mult_i32(u_input.c, max(-2147483647i, global0[_wgslsmith_index_u32(global2.b, 19u)] ^ -260i)), _wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -462f)), _wgslsmith_f_op_f32(global2.c.c - 1000f))), vec3<bool>(any(!global2.c.d), global2.c.d.x, (1179f < global2.d) || true), ~(arg_1.yy >> (~arg_1.yz % vec2<u32>(32u)))), _wgslsmith_f_op_f32(-global2.c.c), select(global2.e, select(!select(global2.e, vec4<bool>(arg_0, arg_0, global2.c.d.x, false), global2.e), select(vec4<bool>(false, arg_0, false, global2.e.x), global2.e, global2.e), func_2(select(global2.e, global2.e, vec4<bool>(true, false, global2.e.x, false)), vec3<i32>(0i, -2147483647i, -21182i))), true));
    let var_0 = Struct_4(~abs(firstTrailingBit(u_input.a)));
    let var_1 = ~_wgslsmith_dot_vec3_u32(arg_1, select(~vec3<u32>(arg_1.x, 3074u, u_input.b), countOneBits(vec3<u32>(17207u, 62850u, global2.a)), true));
    global3 = var_0;
    var var_2 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -497f), -789f));
    return Struct_3(all(global2.c.d), Struct_2(select(!global2.e.wy, global2.c.d.xz, vec2<bool>(true, false)), global2.c, vec4<i32>(abs(~(-58053i)), global0[_wgslsmith_index_u32(~41763u, 19u)], firstLeadingBit(_wgslsmith_div_i32(0i, global0[_wgslsmith_index_u32(arg_1.x, 19u)])), global0[_wgslsmith_index_u32(abs(var_0.a), 19u)] << (global3.a % 32u)), Struct_1(max(_wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, var_0.a, var_1), vec3<u32>(39312u, u_input.b, u_input.b)), select(global2.c.a, arg_1, global2.c.d)), _wgslsmith_mod_i32(-43820i, reverseBits(global2.c.b)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1000f * -177f) - -536f), vec3<bool>(arg_0, u_input.c > 1i, !arg_0), _wgslsmith_add_vec2_u32(abs(vec2<u32>(arg_1.x, global2.b)), vec2<u32>(var_0.a, 1u)))), abs(min(global3.a, _wgslsmith_mod_u32(global2.b & 4294967295u, arg_1.x))), _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(floor(-570f)), _wgslsmith_f_op_f32(-global2.c.c), _wgslsmith_f_op_f32(f32(-1f) * -406f)), vec3<f32>(488f, _wgslsmith_f_op_f32(-global2.c.c), _wgslsmith_div_f32(global2.d, -1253f)), !(!arg_0))))), Struct_2(!vec2<bool>(true, !global2.e.x), Struct_1(~firstLeadingBit(vec3<u32>(51347u, global3.a, 59252u)), _wgslsmith_sub_i32(-51161i, abs(0i)), -1411f, !vec3<bool>(true, arg_0, arg_0), ~(vec2<u32>(42137u, global2.a) & vec2<u32>(1u, global2.b))), global1[_wgslsmith_index_u32(2161u, 32u)], global2.c));
}

fn func_4(arg_0: u32, arg_1: Struct_3) -> Struct_5 {
    global2 = Struct_5(_wgslsmith_div_u32(_wgslsmith_dot_vec2_u32(vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(0u, 22028u, 22978u), global2.c.a), _wgslsmith_mod_u32(0u, arg_0)), func_1(true && global2.e.x, vec3<u32>(arg_0, 15992u, global2.b)).e.b.e), 46891u), select(func_1(any(!arg_1.b.d.d), _wgslsmith_mod_vec3_u32(global2.c.a, ~global2.c.a)).b.d.e.x, reverseBits(firstLeadingBit(6202u)), !func_3()), Struct_1(vec3<u32>(arg_1.c, countOneBits(~u_input.a), min(~30707u, 56127u & u_input.a)), 0i, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(-global2.c.c)))), global2.e.yzx, arg_1.e.b.e), _wgslsmith_f_op_f32(-arg_1.b.d.c), global2.e);
    let var_0 = _wgslsmith_f_op_f32(-1159f - _wgslsmith_div_f32(arg_1.e.d.c, _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -930f), _wgslsmith_f_op_f32(f32(-1f) * -143f)))));
    let var_1 = arg_1.b.d;
    global1 = array<vec4<i32>, 32>();
    let var_2 = Struct_5(24989u, abs(_wgslsmith_sub_u32(1u, countOneBits(global2.c.e.x) >> (~42071u % 32u))), Struct_1(var_1.a << ((min(vec3<u32>(global2.a, 0u, 21559u), arg_1.b.d.a) >> (~arg_1.e.d.a % vec3<u32>(32u))) % vec3<u32>(32u)), _wgslsmith_mod_i32(-1892i, var_1.b), 258f, vec3<bool>(true, var_1.d.x, var_1.d.x && false), global2.c.e), 1000f, !(!select(!vec4<bool>(true, global2.c.d.x, false, false), !vec4<bool>(false, false, var_1.d.x, var_1.d.x), global2.e)));
    return Struct_5(~96782u, u_input.b, func_1(!(!all(vec4<bool>(global2.c.d.x, var_2.e.x, arg_1.a, true))), var_2.c.a).e.b, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(arg_1.e.d.c * arg_1.e.b.c)))))), vec4<bool>(true, true, -250f > _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(f32(-1f) * -1285f))), arg_1.a));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = array<vec4<i32>, 32>();
    global3 = Struct_4(~13282u);
    let var_0 = i32(-1i) * -1i;
    global0 = array<i32, 19>();
    global2 = func_4(17592u, func_1(true, global2.c.a & min(vec3<u32>(4294967295u, 4294967295u, 10986u), vec3<u32>(4294967295u, 1u, u_input.b))));
    let x = u_input.a;
    s_output = StorageBuffer(vec2<u32>(firstTrailingBit(max(abs(global3.a), global3.a)), abs(4294967295u)), u_input.b);
}

