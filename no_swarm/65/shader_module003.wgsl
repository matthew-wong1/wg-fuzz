struct Struct_1 {
    a: vec3<f32>,
    b: f32,
    c: vec4<i32>,
    d: vec2<i32>,
    e: vec3<u32>,
}

struct Struct_2 {
    a: vec3<f32>,
    b: Struct_1,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: i32,
    c: vec3<i32>,
    d: vec2<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: Struct_2;

var<private> global2: array<Struct_1, 32>;

var<private> global3: array<vec2<bool>, 30> = array<vec2<bool>, 30>(vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(true, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false), vec2<bool>(true, true), vec2<bool>(false, true), vec2<bool>(true, true), vec2<bool>(true, true));

var<private> global4: array<Struct_2, 21>;

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: Struct_2, arg_1: bool) -> u32 {
    let var_0 = vec2<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(u_input.c.x, u_input.c.x, 1i) >> (arg_0.c.e % vec3<u32>(32u)), global1.c.c.yzz) >> ((70169u & ~(arg_0.c.e.x >> (54424u % 32u))) % 32u), global1.c.c.x);
    let var_1 = arg_0.b;
    global2 = array<Struct_1, 32>();
    global2 = array<Struct_1, 32>();
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.a.x - var_1.b))), 1f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(ceil(-1894f))))), arg_0.b, Struct_1(arg_0.c.a, _wgslsmith_f_op_f32(f32(-1f) * -328f), _wgslsmith_div_vec4_i32(arg_0.b.c, vec4<i32>(-7967i, 1i, var_1.d.x | 1i, var_0.x)), vec2<i32>(-25627i, firstLeadingBit(var_0.x)), countOneBits(_wgslsmith_add_vec3_u32(~vec3<u32>(u_input.d.x, 130438u, 757u), vec3<u32>(arg_0.b.e.x, 63868u, 73782u)))));
    return u_input.d.x & ~(~global1.c.e.x);
}

fn func_2(arg_0: i32, arg_1: Struct_2, arg_2: i32, arg_3: Struct_1) -> f32 {
    var var_0 = Struct_2(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.a.x, global1.a.x, global1.c.a.x)))) + _wgslsmith_f_op_vec3_f32(trunc(arg_1.c.a))), global1.b, arg_1.c);
    global0 = func_3(arg_1, true) ^ firstLeadingBit(global1.b.e.x);
    var var_1 = ~abs(firstLeadingBit(u_input.e.x));
    var var_2 = arg_3.c.x;
    var var_3 = var_0.c.e.x;
    return -442f;
}

fn func_4(arg_0: Struct_2, arg_1: Struct_2) -> Struct_2 {
    global2 = array<Struct_1, 32>();
    global3 = array<vec2<bool>, 30>();
    global1 = Struct_2(vec3<f32>(_wgslsmith_f_op_f32(max(-1775f, global1.b.b)), arg_0.a.x, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(arg_1.a.x)) * _wgslsmith_f_op_f32(func_2(48293i, Struct_2(arg_1.c.a, global2[_wgslsmith_index_u32(u_input.e.x, 32u)], Struct_1(arg_1.a, arg_0.a.x, vec4<i32>(15180i, arg_0.c.c.x, arg_0.c.c.x, -1i), vec2<i32>(arg_1.c.c.x, -37798i), arg_1.c.e)), arg_1.c.d.x, Struct_1(arg_0.a, arg_0.b.b, vec4<i32>(-30206i, u_input.a.x, arg_0.b.c.x, u_input.b), vec2<i32>(1i, u_input.c.x), vec3<u32>(arg_0.c.e.x, u_input.d.x, 4294967295u))))))), arg_0.c, arg_0.c);
    let var_0 = _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, ~u_input.e), ~(~vec4<u32>(arg_0.b.e.x, u_input.d.x, 19512u, 0u))) << (~u_input.e % vec4<u32>(32u));
    let var_1 = Struct_1(arg_1.a, -1125f, select(arg_1.c.c, vec4<i32>(_wgslsmith_clamp_i32(-2147483647i, -24123i, arg_0.c.c.x), -global1.b.c.x, 2147483647i, _wgslsmith_clamp_i32(-16760i, -19144i, global1.c.c.x)), false) >> (_wgslsmith_div_vec4_u32(~u_input.e, vec4<u32>(global1.b.e.x, arg_0.c.e.x, _wgslsmith_add_u32(21090u, var_0.x), abs(arg_1.c.e.x))) % vec4<u32>(32u)), countOneBits(vec2<i32>(_wgslsmith_add_i32(2147483647i, -37034i), abs(u_input.a.x))), vec3<u32>(abs(abs(_wgslsmith_add_u32(arg_1.b.e.x, arg_1.c.e.x))), ~60299u, ~(~(~arg_1.c.e.x))));
    return global4[_wgslsmith_index_u32(~((_wgslsmith_add_u32(abs(var_1.e.x), 4294967295u) | 50411u) >> (_wgslsmith_dot_vec4_u32(var_0, ~select(var_0, var_0, vec4<bool>(true, false, true, true))) % 32u)), 21u)];
}

fn func_1() -> bool {
    var var_0 = ~_wgslsmith_div_vec3_i32(vec3<i32>(~countOneBits(12739i), global1.b.c.x, _wgslsmith_mod_i32(0i, -1i)), vec3<i32>(_wgslsmith_div_i32(0i, -33358i) ^ ~global1.b.d.x, global1.c.d.x, u_input.c.x));
    global1 = func_4(Struct_2(vec3<f32>(_wgslsmith_f_op_f32(-725f - -821f), _wgslsmith_f_op_f32(func_2(~u_input.c.x, global4[_wgslsmith_index_u32(firstLeadingBit(0u), 21u)], ~global1.b.d.x, global1.c)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(619f + global1.c.a.x))), Struct_1(vec3<f32>(-402f, _wgslsmith_f_op_f32(global1.c.b - global1.b.a.x), _wgslsmith_f_op_f32(1000f + global1.b.a.x)), _wgslsmith_f_op_f32(trunc(global1.b.a.x)), vec4<i32>(7864i >> (u_input.e.x % 32u), min(u_input.a.x, u_input.b), -var_0.x, i32(-1i) * -13454i), max(~global1.c.c.wy, ~vec2<i32>(15319i, 2147483647i)), countOneBits(select(u_input.e.wxz, vec3<u32>(0u, global1.b.e.x, u_input.d.x), vec3<bool>(true, false, true)))), global1.c), Struct_2(vec3<f32>(_wgslsmith_div_f32(_wgslsmith_f_op_f32(round(-1412f)), _wgslsmith_f_op_f32(func_2(var_0.x, Struct_2(vec3<f32>(-1000f, -768f, -372f), Struct_1(global1.b.a, -1013f, vec4<i32>(1195i, -19793i, -1i, -1i), global1.c.d, global1.b.e), Struct_1(vec3<f32>(global1.b.a.x, 1701f, global1.c.b), -1407f, vec4<i32>(2147483647i, global1.b.c.x, var_0.x, var_0.x), u_input.c.xx, vec3<u32>(11729u, global1.b.e.x, u_input.d.x))), var_0.x, global2[_wgslsmith_index_u32(4294967295u, 32u)]))), _wgslsmith_f_op_f32(f32(-1f) * -979f), _wgslsmith_f_op_f32(-global1.b.a.x)), global2[_wgslsmith_index_u32(u_input.d.x, 32u)], global2[_wgslsmith_index_u32(0u, 32u)]));
    var var_1 = !select(global3[_wgslsmith_index_u32(4294967295u, 30u)], vec2<bool>(true, true), ~_wgslsmith_clamp_u32(4294967295u, 17205u, 0u) <= 4229u);
    let var_2 = Struct_1(global1.c.a, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_2(-global1.b.d.x, global4[_wgslsmith_index_u32(68892u, 21u)], var_0.x, Struct_1(_wgslsmith_f_op_vec3_f32(step(vec3<f32>(-618f, 1225f, global1.c.a.x), vec3<f32>(global1.c.a.x, 627f, global1.c.b))), _wgslsmith_f_op_f32(-global1.a.x), vec4<i32>(2147483647i, -6221i, 1i, 2147483647i), vec2<i32>(3415i, global1.c.d.x), _wgslsmith_mult_vec3_u32(vec3<u32>(u_input.e.x, 0u, 0u), vec3<u32>(global1.c.e.x, u_input.e.x, 0u))))))), _wgslsmith_mod_vec4_i32(~vec4<i32>(~(-63031i), var_0.x, u_input.a.x, 0i), _wgslsmith_mod_vec4_i32(_wgslsmith_add_vec4_i32(global1.b.c, global1.c.c), vec4<i32>(var_0.x, firstLeadingBit(u_input.c.x), u_input.b, 1i))), u_input.a.yx, ~vec3<u32>(~_wgslsmith_add_u32(u_input.e.x, u_input.d.x), ~(~u_input.d.x), _wgslsmith_div_u32(156417u, _wgslsmith_mult_u32(global1.b.e.x, u_input.d.x))));
    let var_3 = countOneBits(_wgslsmith_add_vec2_u32(global1.b.e.zy, abs(_wgslsmith_mod_vec2_u32(var_2.e.zy, ~u_input.e.xx))));
    return select(false, u_input.a.x > global1.c.c.x, abs(37040u) != var_3.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec2<bool>(true, func_1());
    global3 = array<vec2<bool>, 30>();
    let var_1 = -(vec3<i32>(-1i) * -_wgslsmith_sub_vec3_i32(min(vec3<i32>(global1.b.c.x, global1.c.d.x, u_input.b), vec3<i32>(54202i, u_input.c.x, -2147483647i)), global1.b.c.zyy));
    var var_2 = global2[_wgslsmith_index_u32(u_input.e.x, 32u)];
    let var_3 = u_input.d.x;
    let var_4 = global4[_wgslsmith_index_u32(_wgslsmith_mult_u32(_wgslsmith_sub_u32(_wgslsmith_mod_u32(~max(1u, u_input.e.x), _wgslsmith_div_u32(~u_input.d.x, _wgslsmith_clamp_u32(9706u, var_3, 1u))), (func_3(Struct_2(var_2.a, global2[_wgslsmith_index_u32(global1.b.e.x, 32u)], Struct_1(var_2.a, 1879f, vec4<i32>(31170i, 1i, var_1.x, var_2.c.x), var_2.c.yx, vec3<u32>(4294967295u, global1.c.e.x, 0u))), var_0.x) << (~12860u % 32u)) << (abs(4294967295u) % 32u)), abs(var_3)), 21u)];
    let var_5 = global2[_wgslsmith_index_u32(_wgslsmith_div_u32(~36266u, ~var_2.e.x), 32u)];
    let x = u_input.a;
    s_output = StorageBuffer(var_3, _wgslsmith_sub_vec2_i32(_wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(var_4.b.c.x, var_1.x), -var_1.xy), ~global1.b.c.yx | _wgslsmith_div_vec2_i32(vec2<i32>(-8233i, var_2.d.x), global1.c.c.xz)), reverseBits(_wgslsmith_sub_vec2_i32(max(vec2<i32>(29789i, 0i), var_2.d), vec2<i32>(var_1.x, 29826i)))));
}

