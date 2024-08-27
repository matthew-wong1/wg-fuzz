struct Struct_1 {
    a: i32,
    b: u32,
    c: vec2<bool>,
    d: f32,
    e: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: f32,
    c: vec2<u32>,
    d: vec2<f32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2;

var<private> global1: array<Struct_2, 12>;

var<private> global2: vec3<f32> = vec3<f32>(-859f, 1000f, 419f);

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
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

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn func_3(arg_0: vec2<i32>) -> f32 {
    global1 = array<Struct_2, 12>();
    var var_0 = Struct_2(Struct_1(min(~(-31703i), -18127i), 0u, select(global0.b.c, !select(global0.a.c, vec2<bool>(global0.a.c.x, global0.a.c.x), vec2<bool>(true, true)), global0.a.c), -1020f, ~global0.b.b <= 1u), Struct_1(_wgslsmith_mod_i32(arg_0.x, select(min(-2147483647i, 2147483647i), arg_0.x, select(global0.b.e, true, false))), 22033u, !global0.b.c, -345f, (_wgslsmith_dot_vec4_u32(vec4<u32>(u_input.a.x, global0.a.b, 0u, u_input.a.x), vec4<u32>(global0.a.b, u_input.a.x, global0.a.b, 4294967295u)) < reverseBits(global0.a.b)) && true));
    let var_1 = _wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(floor(vec4<f32>(-715f, _wgslsmith_f_op_f32(-var_0.b.d), -1000f, 1229f))) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(-1598f, 817f, global2.x, var_0.a.d))) * _wgslsmith_div_vec4_f32(vec4<f32>(347f, 1000f, var_0.a.d, global2.x), vec4<f32>(1000f, -1436f, global0.b.d, -178f))))), vec4<f32>(var_0.a.d, 1210f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1344f) - 598f), -1000f)));
    global2 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_div_vec3_f32(var_1.wyz, _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(var_1.yxx + _wgslsmith_f_op_vec3_f32(var_1.xww - var_1.wyz)) * vec3<f32>(var_0.a.d, -406f, global2.x))));
    global1 = array<Struct_2, 12>();
    return _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.a.d, var_0.b.d) - var_1.x))))));
}

fn func_2(arg_0: f32, arg_1: vec3<bool>, arg_2: vec2<i32>, arg_3: vec3<f32>) -> vec2<i32> {
    global2 = vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.d + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(arg_0 - -396f) * global2.x))), 1000f, global2.x);
    var var_0 = _wgslsmith_f_op_vec3_f32(-arg_3);
    var var_1 = global0.a;
    var_0 = _wgslsmith_f_op_vec3_f32(abs(vec3<f32>(_wgslsmith_f_op_f32(-1251f + _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(func_3(arg_2))))), -1671f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -3180f))))));
    global1 = array<Struct_2, 12>();
    return abs(_wgslsmith_mult_vec2_i32(vec2<i32>(_wgslsmith_clamp_i32(arg_2.x, -arg_2.x, ~arg_2.x), -var_1.a), -arg_2));
}

fn func_4(arg_0: vec2<i32>) -> bool {
    global1 = array<Struct_2, 12>();
    global1 = array<Struct_2, 12>();
    return true;
}

fn func_1(arg_0: u32, arg_1: Struct_2, arg_2: Struct_1) -> bool {
    global1 = array<Struct_2, 12>();
    var var_0 = vec2<i32>(select(_wgslsmith_mult_i32(_wgslsmith_add_i32(-arg_1.b.a, _wgslsmith_div_i32(16906i, 5658i)), -23906i), 2147483647i, arg_1.a.c.x), 1i);
    var var_1 = vec3<bool>(select(arg_2.e, true, func_4(~func_2(arg_2.d, vec3<bool>(arg_1.a.e, global0.b.e, global0.b.e), vec2<i32>(2147483647i, 24528i), vec3<f32>(global0.a.d, arg_1.a.d, -196f)))), all(select(vec4<bool>(!arg_2.c.x, all(vec3<bool>(arg_2.c.x, false, global0.b.e)), arg_1.b.e, true), vec4<bool>(arg_2.c.x, true, true, arg_2.e || arg_2.c.x), vec4<bool>(all(vec3<bool>(false, true, true)), select(arg_1.b.e, arg_1.a.c.x, arg_2.e), all(vec2<bool>(false, global0.a.c.x)), global0.a.e || global0.a.c.x))), arg_1.b.c.x);
    global0 = Struct_2(arg_1.a, global0.a);
    var_0 = ~countOneBits(-select(_wgslsmith_div_vec2_i32(vec2<i32>(global0.b.a, arg_1.a.a), vec2<i32>(-12504i, arg_1.b.a)), _wgslsmith_mult_vec2_i32(vec2<i32>(34363i, var_0.x), vec2<i32>(var_0.x, 26108i)), all(vec3<bool>(var_1.x, var_1.x, global0.b.c.x))));
    return var_1.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(global0.b, Struct_1(global0.b.a, _wgslsmith_div_u32((4351u ^ u_input.a.x) & (1u << (global0.b.b % 32u)), global0.b.b), vec2<bool>(true, select(true, global0.a.c.x, func_1(u_input.a.x, global1[_wgslsmith_index_u32(u_input.a.x, 12u)], Struct_1(1i, 35015u, global0.b.c, 1538f, true)))), -285f, false));
    global2 = _wgslsmith_f_op_vec3_f32(round(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(_wgslsmith_f_op_f32(sign(global0.b.d)), global0.a.d, _wgslsmith_div_f32(_wgslsmith_f_op_f32(min(1138f, 1000f)), _wgslsmith_f_op_f32(sign(var_0.b.d)))), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(423f, var_0.b.d, var_0.b.d) + vec3<f32>(-448f, global2.x, global0.b.d)) - _wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.d, 137f, var_0.a.d))))), select(!select(vec3<bool>(global0.a.e, true, global0.a.e), vec3<bool>(true, var_0.a.e, true), false), !select(vec3<bool>(global0.b.e, true, true), vec3<bool>(false, false, true), vec3<bool>(var_0.b.e, global0.a.e, false)), _wgslsmith_f_op_f32(f32(-1f) * -379f) >= global2.x)))));
    let var_1 = abs(~u_input.a.x);
    let var_2 = ~abs(u_input.a);
    var var_3 = ~_wgslsmith_mult_u32(10392u, _wgslsmith_div_u32(reverseBits(min(u_input.a.x, global0.b.b)), _wgslsmith_sub_u32(global0.a.b, u_input.a.x)));
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_add_u32(~var_1, 0u), _wgslsmith_f_op_f32(-global2.x), (vec2<u32>(~89880u, firstLeadingBit(var_1)) | select(firstTrailingBit(vec2<u32>(var_0.b.b, var_0.b.b)), select(vec2<u32>(90459u, 4294967295u), u_input.a.yy, true), vec2<bool>(true, var_0.a.c.x))) << ((vec2<u32>(u_input.a.x, 17161u) >> ((~var_2.yz ^ _wgslsmith_add_vec2_u32(vec2<u32>(u_input.a.x, 1835u), vec2<u32>(var_2.x, var_2.x))) % vec2<u32>(32u))) % vec2<u32>(32u)), global2.xz, select(vec2<i32>(-var_0.b.a, i32(-1i) * -global0.a.a), func_2(1f, !vec3<bool>(global0.b.c.x, true, var_0.b.e), abs(vec2<i32>(-20249i, global0.a.a)), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.x, var_0.a.d, var_0.b.d))) << (select(~u_input.a.zz, select(var_2.zx, vec2<u32>(1u, global0.a.b), var_0.b.e), var_0.a.c) % vec2<u32>(32u)), var_0.b.c));
}

