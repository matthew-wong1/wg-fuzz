struct Struct_1 {
    a: vec2<i32>,
    b: u32,
    c: vec4<f32>,
    d: i32,
    e: vec3<bool>,
}

struct UniformBuffer {
    a: u32,
    b: vec3<u32>,
    c: u32,
    d: vec3<i32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: i32,
    c: vec3<u32>,
    d: vec4<i32>,
    e: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_1, 3> = array<Struct_1, 3>(Struct_1(vec2<i32>(1i, -45148i), 1u, vec4<f32>(1000f, -422f, -859f, 1000f), 28547i, vec3<bool>(false, false, true)), Struct_1(vec2<i32>(-1i, 1745i), 4294967295u, vec4<f32>(1000f, 180f, -139f, 372f), 46305i, vec3<bool>(false, false, false)), Struct_1(vec2<i32>(1i, i32(-2147483648)), 24887u, vec4<f32>(1173f, -433f, -1000f, 218f), -28843i, vec3<bool>(true, false, true)));

var<private> global1: bool = false;

var<private> global2: array<f32, 27>;

var<private> global3: Struct_1;

var<private> global4: array<i32, 13>;

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn func_3(arg_0: i32, arg_1: Struct_1) -> bool {
    let var_0 = Struct_1(global3.a, _wgslsmith_dot_vec4_u32(_wgslsmith_div_vec4_u32(u_input.e, u_input.e), vec4<u32>(4294967295u, 29039u, _wgslsmith_add_u32(min(1u, global3.b), firstTrailingBit(0u)), global3.b)), global3.c, -(~(-_wgslsmith_mod_i32(2147483647i, global4[_wgslsmith_index_u32(global3.b, 13u)]))), select(select(select(vec3<bool>(false, false, global3.e.x), select(arg_1.e, vec3<bool>(arg_1.e.x, false, global3.e.x), vec3<bool>(false, arg_1.e.x, true)), select(global3.e, arg_1.e, vec3<bool>(false, arg_1.e.x, global3.e.x))), vec3<bool>(true, true, true), !select(true, global3.e.x, false)), !global3.e, global3.e.x));
    global3 = Struct_1(_wgslsmith_mod_vec2_i32(abs(vec2<i32>(global4[_wgslsmith_index_u32(var_0.b, 13u)], -9713i)), _wgslsmith_mult_vec2_i32(vec2<i32>(-2147483647i, -26671i), vec2<i32>(arg_1.d, -2147483647i))), ~(~4294967295u), vec4<f32>(global2[_wgslsmith_index_u32(u_input.b.x, 27u)], global2[_wgslsmith_index_u32(4294967295u, 27u)], _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(var_0.c.x, global3.c.x))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(arg_1.c.x))), true)), 2446f), ~reverseBits(_wgslsmith_mod_i32(global3.a.x, 2147483647i | global4[_wgslsmith_index_u32(19036u, 13u)])), !(!arg_1.e));
    global2 = array<f32, 27>();
    global4 = array<i32, 13>();
    global1 = false;
    return -1368f < _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(global2[_wgslsmith_index_u32(0u, 27u)])), _wgslsmith_div_f32(-854f, -156f), false)))) + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_0.c.x + -665f)))));
}

fn func_2() -> i32 {
    global4 = array<i32, 13>();
    var var_0 = func_3(~global3.d, global0[_wgslsmith_index_u32(67578u, 3u)]);
    return -(u_input.d.x | _wgslsmith_dot_vec2_i32(vec2<i32>(25243i, _wgslsmith_mult_i32(u_input.d.x, 41693i)), -select(vec2<i32>(u_input.d.x, global3.a.x), global3.a, vec2<bool>(global3.e.x, true))));
}

fn func_4(arg_0: Struct_1, arg_1: vec2<bool>) -> Struct_1 {
    let var_0 = _wgslsmith_f_op_f32(ceil(-597f));
    let var_1 = global3.c.zx;
    let var_2 = arg_0;
    var var_3 = -func_2();
    global3 = Struct_1(countOneBits(_wgslsmith_mult_vec2_i32(vec2<i32>(14867i, -global3.a.x), vec2<i32>(1i, i32(-1i) * -434i))), 0u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(round(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c), _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, arg_0.c.x, var_0, 1519f) * vec4<f32>(1000f, global3.c.x, var_1.x, -1218f))))) - _wgslsmith_f_op_vec4_f32(abs(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(-726f, var_1.x, global2[_wgslsmith_index_u32(4294967295u, 27u)], var_2.c.x)))))), (1i >> (1u % 32u)) | var_2.d, global3.e);
    return arg_0;
}

fn func_1(arg_0: u32, arg_1: Struct_1, arg_2: Struct_1) -> vec2<bool> {
    let var_0 = func_4(Struct_1(vec2<i32>(firstLeadingBit(-arg_2.a.x), -2147483647i), 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-global3.c)) + _wgslsmith_f_op_vec4_f32(vec4<f32>(global3.c.x, -1674f, 995f, arg_2.c.x) - vec4<f32>(arg_1.c.x, global3.c.x, arg_2.c.x, 638f))), -func_2(), global3.e), select(arg_2.e.xy, arg_2.e.yx, true));
    let var_1 = -737f;
    let var_2 = _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(1u, 27u)] + -155f) * -2050f) + -1201f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(step(1071f, var_0.c.x)) + arg_2.c.x))), arg_1.e.x));
    global0 = array<Struct_1, 3>();
    global3 = Struct_1(~firstLeadingBit(~max(vec2<i32>(arg_2.a.x, -13540i), vec2<i32>(-31565i, 2147483647i))), max(~_wgslsmith_add_u32(~u_input.e.x, select(58491u, 0u, true)), (arg_1.b >> ((1u | arg_2.b) % 32u)) ^ arg_0), vec4<f32>(func_4(Struct_1(~arg_2.a, 49204u, vec4<f32>(global3.c.x, -526f, arg_1.c.x, 944f), _wgslsmith_mod_i32(var_0.d, -9187i), !arg_1.e), vec2<bool>(select(true, global3.e.x, arg_1.e.x), arg_1.e.x)).c.x, var_2, 1132f, -324f), global4[_wgslsmith_index_u32(select(14724u ^ ~global3.b, 4294967295u, any(!(!vec3<bool>(arg_1.e.x, arg_1.e.x, true)))), 13u)], func_4(Struct_1(global3.a, arg_1.b, vec4<f32>(-1065f, global2[_wgslsmith_index_u32(1u, 27u)], -100f, _wgslsmith_f_op_f32(global2[_wgslsmith_index_u32(arg_0, 27u)] * 828f)), 24388i, !global3.e), arg_2.e.xx).e);
    return vec2<bool>(arg_1.e.x != true, all(!(!arg_2.e.yy)) || !((u_input.d.x | arg_2.a.x) < 15012i));
}

@compute
@workgroup_size(1)
fn main() {
    global0 = array<Struct_1, 3>();
    var var_0 = select(func_1(~max(_wgslsmith_add_u32(u_input.e.x, 0u), _wgslsmith_mod_u32(63590u, u_input.a)), Struct_1(~global3.a, 1u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-global3.c) + _wgslsmith_f_op_vec4_f32(exp2(global3.c))), 1i, global3.e), global0[_wgslsmith_index_u32(1269u, 3u)]), vec2<bool>(global3.e.x, all(global3.e.yx)), vec2<bool>(global3.e.x, !(select(u_input.d.x, u_input.d.x, false) == (u_input.d.x & global4[_wgslsmith_index_u32(u_input.e.x, 13u)]))));
    global3 = func_4(Struct_1(firstTrailingBit(firstLeadingBit(-u_input.d.yy)), 1u, global3.c, _wgslsmith_mod_i32(-43264i, global3.a.x << (firstTrailingBit(0u) % 32u)), func_4(Struct_1(abs(vec2<i32>(global3.a.x, global3.d)), _wgslsmith_clamp_u32(u_input.c, 4294967295u, global3.b), _wgslsmith_f_op_vec4_f32(-vec4<f32>(global3.c.x, -235f, global2[_wgslsmith_index_u32(u_input.a, 27u)], global3.c.x)), max(-2147483647i, global3.d), vec3<bool>(true, var_0.x, var_0.x)), global3.e.yy).e), func_4(Struct_1(_wgslsmith_mod_vec2_i32(firstLeadingBit(vec2<i32>(global3.a.x, global3.a.x)), vec2<i32>(1i, global4[_wgslsmith_index_u32(4294967295u, 13u)])), ~4294967295u, _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(global3.c, global3.c, vec4<bool>(true, true, false, var_0.x))) * _wgslsmith_f_op_vec4_f32(trunc(global3.c))), min(0i << (0u % 32u), u_input.d.x), !vec3<bool>(global3.e.x, true, false)), global3.e.xz).e.zz);
    let var_1 = func_4(global0[_wgslsmith_index_u32(u_input.c, 3u)], vec2<bool>(!all(vec3<bool>(false, false, true)), any(vec2<bool>(global3.e.x && false, var_0.x))));
    let x = u_input.a;
    s_output = StorageBuffer(~vec3<u32>(max(4294967295u & u_input.a, var_1.b), _wgslsmith_mod_u32(var_1.b | global3.b, global3.b), _wgslsmith_dot_vec4_u32(abs(u_input.e), _wgslsmith_mult_vec4_u32(vec4<u32>(var_1.b, 0u, var_1.b, u_input.c), u_input.e))), _wgslsmith_dot_vec2_i32(vec2<i32>(firstLeadingBit(_wgslsmith_sub_i32(global4[_wgslsmith_index_u32(u_input.a, 13u)], global3.a.x)), -2147483647i), select(-(~vec2<i32>(var_1.a.x, u_input.d.x)), global3.a << (vec2<u32>(56743u, var_1.b) % vec2<u32>(32u)), func_4(Struct_1(vec2<i32>(global4[_wgslsmith_index_u32(0u, 13u)], global3.d), var_1.b, vec4<f32>(global2[_wgslsmith_index_u32(var_1.b, 27u)], -1642f, var_1.c.x, global3.c.x), u_input.d.x, global3.e), vec2<bool>(var_0.x, global3.e.x)).e.x)), vec3<u32>(~var_1.b, u_input.e.x, _wgslsmith_dot_vec2_u32(vec2<u32>(firstLeadingBit(global3.b), ~1u), ~countOneBits(vec2<u32>(0u, 49889u)))), _wgslsmith_add_vec4_i32(select(abs(vec4<i32>(-2147483647i, u_input.d.x, -14384i, 33943i)), vec4<i32>(~(-1i), -3969i, global3.d, firstLeadingBit(31049i)), vec4<bool>(all(vec2<bool>(var_0.x, false)), all(var_1.e.yz), global3.b >= 0u, true)), countOneBits(-vec4<i32>(global3.a.x, global4[_wgslsmith_index_u32(1u, 13u)], global4[_wgslsmith_index_u32(1u, 13u)], -35257i))), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(186f * -643f))) - _wgslsmith_f_op_f32(step(1576f, -1112f))));
}

