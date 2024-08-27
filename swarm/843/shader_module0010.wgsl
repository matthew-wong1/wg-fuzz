struct Struct_1 {
    a: vec4<bool>,
    b: i32,
}

struct Struct_2 {
    a: f32,
    b: vec2<i32>,
    c: Struct_1,
}

struct Struct_3 {
    a: vec2<i32>,
    b: vec2<bool>,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_4 {
    a: i32,
    b: bool,
    c: vec4<u32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: u32,
}

struct StorageBuffer {
    a: i32,
    b: vec2<u32>,
    c: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: i32;

var<private> global1: vec2<f32>;

var<private> global2: Struct_3;

var<private> global3: vec4<u32> = vec4<u32>(4294967295u, 1u, 33444u, 0u);

var<private> global4: array<vec2<u32>, 22>;

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn func_3(arg_0: Struct_4, arg_1: vec4<bool>, arg_2: vec2<i32>) -> vec3<f32> {
    global0 = u_input.a.x;
    let var_0 = vec3<i32>(36122i, select(1i, arg_2.x, arg_0.b) | -arg_2.x, select(_wgslsmith_mod_i32(-(u_input.a.x ^ 1683i), select(u_input.a.x, arg_2.x, arg_1.x) & -arg_0.a), global2.d.b, true));
    global4 = array<vec2<u32>, 22>();
    return _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.x) + _wgslsmith_f_op_f32(min(451f, -1887f))), _wgslsmith_f_op_f32(-global1.x)))));
}

fn func_2(arg_0: f32, arg_1: vec4<u32>) -> vec4<bool> {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(func_3(Struct_4(1i, global2.e, select(vec4<u32>(1u, 1u, global3.x, 0u), vec4<u32>(global3.x, arg_1.x, u_input.c, 47613u), global2.c.a.x) << ((vec4<u32>(global3.x, 9557u, arg_1.x, 10314u) ^ arg_1) % vec4<u32>(32u))), vec4<bool>(global2.d.a.x, true, true, !(-1428f <= global1.x)), u_input.a)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-305f, global1.x, global1.x) * _wgslsmith_div_vec3_f32(vec3<f32>(483f, 1330f, global1.x), vec3<f32>(-2206f, -943f, arg_0))))));
    var var_1 = select(abs(global3.wz), ~vec2<u32>(u_input.b >> (arg_1.x % 32u), u_input.c), !select(select(!global2.b, global2.c.a.yz, global2.c.a.yz), vec2<bool>(true, true), false));
    let var_2 = Struct_3(~vec2<i32>(-1i, u_input.a.x), vec2<bool>(any(vec3<bool>(global2.b.x, true, true)), !any(vec2<bool>(true, true))), global2.c, Struct_1(vec4<bool>(global2.b.x, !(arg_1.x <= u_input.b), -global2.c.b == max(global2.d.b, 6866i), all(select(global2.c.a.wy, global2.d.a.yx, global2.c.a.zx))), countOneBits(select(u_input.a.x, _wgslsmith_dot_vec4_i32(vec4<i32>(global2.c.b, 17976i, -12691i, u_input.a.x), vec4<i32>(52494i, -2147483647i, -33250i, global2.c.b)), global2.b.x))), true);
    var var_3 = !(!global2.d.a.wz);
    var var_4 = ~(~30721u);
    return global2.c.a;
}

fn func_4(arg_0: bool, arg_1: vec4<bool>, arg_2: f32, arg_3: Struct_2) -> Struct_3 {
    var var_0 = select(!vec4<bool>(all(global2.d.a.xz), u_input.a.x >= ~arg_3.c.b, false, !global2.d.a.x), !arg_3.c.a, all(vec3<bool>(true & (global2.e && arg_3.c.a.x), global2.e, arg_0)));
    var var_1 = arg_3.c;
    var var_2 = Struct_4(_wgslsmith_dot_vec2_i32(arg_3.b, select(arg_3.b, _wgslsmith_mult_vec2_i32(vec2<i32>(arg_3.b.x, 5049i), arg_3.b), var_0.zy)), -1015f >= global1.x, vec4<u32>(global3.x, _wgslsmith_sub_u32(~u_input.c, ~32195u), (u_input.b ^ 55015u) & ~1u, _wgslsmith_mult_u32(~u_input.b, ~1u)));
    var var_3 = global2.d;
    let var_4 = 1u;
    return Struct_3(_wgslsmith_mod_vec2_i32(_wgslsmith_mult_vec2_i32(-firstLeadingBit(vec2<i32>(13848i, global2.d.b)), countOneBits(global2.a)), vec2<i32>(-var_3.b, 1i)), !global2.b, arg_3.c, Struct_1(func_2(arg_3.a, vec4<u32>(7637u, _wgslsmith_mult_u32(var_2.c.x, 1u), firstTrailingBit(4811u), 66099u)), reverseBits(_wgslsmith_add_i32(-27929i, select(u_input.a.x, 1i, true)))), false);
}

fn func_1(arg_0: vec2<i32>) -> u32 {
    global4 = array<vec2<u32>, 22>();
    var var_0 = func_4(global2.b.x, !(!select(!global2.d.a, func_2(global1.x, vec4<u32>(0u, u_input.b, global3.x, u_input.b)), select(global2.c.a, global2.c.a, global2.d.a))), global1.x, Struct_2(_wgslsmith_f_op_f32(global1.x * -1000f), _wgslsmith_add_vec2_i32(global2.a, max(arg_0, global2.a ^ u_input.a)), Struct_1(global2.c.a, 1i)));
    var_0 = func_4(!all(var_0.b), !select(func_4(true, !global2.d.a, _wgslsmith_f_op_f32(floor(-1000f)), Struct_2(-1000f, arg_0, Struct_1(global2.d.a, 1i))).d.a, vec4<bool>(true, u_input.b == 48370u, false, true), global2.e), global1.x, Struct_2(_wgslsmith_f_op_f32(global1.x + 1000f), ~select(var_0.a, global2.a, select(var_0.c.a.ww, global2.c.a.yz, var_0.b)), Struct_1(global2.d.a, -(~global2.c.b))));
    let var_1 = Struct_4(func_4(!(true && (arg_0.x < 0i)), vec4<bool>(!all(vec2<bool>(var_0.b.x, var_0.b.x)), !select(false, false, var_0.b.x), all(!global2.c.a), var_0.e), -448f, Struct_2(-472f, -arg_0 | min(vec2<i32>(u_input.a.x, -23163i), u_input.a), var_0.c)).c.b, var_0.e, _wgslsmith_mult_vec4_u32(vec4<u32>(u_input.c, abs(abs(4294967295u)), global3.x, u_input.b << (u_input.b % 32u)), vec4<u32>(global3.x, ~(~global3.x), ~(~4294967295u), 28695u)));
    var var_2 = var_1.c >> (~reverseBits(~vec4<u32>(1u, var_1.c.x, var_1.c.x, 8505u)) % vec4<u32>(32u));
    return 9084u;
}

@compute
@workgroup_size(1)
fn main() {
    global3 = ~(~abs(min(reverseBits(vec4<u32>(23863u, 25654u, 4294967295u, 28940u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.c, 46065u, 1u, u_input.b), vec4<u32>(6068u, 0u, 9890u, 4294967295u), vec4<u32>(u_input.c, global3.x, 0u, 4294967295u)))));
    global3 = ~(~reverseBits(~vec4<u32>(4294967295u, 40753u, 1u, u_input.b)) >> (~(_wgslsmith_add_vec4_u32(vec4<u32>(u_input.b, u_input.c, 0u, u_input.c), vec4<u32>(1u, global3.x, 9711u, 4294967295u)) & ~vec4<u32>(4294967295u, 60650u, 59801u, u_input.c)) % vec4<u32>(32u)));
    let var_0 = _wgslsmith_add_vec4_u32(~select(abs(vec4<u32>(1u, 1u, u_input.c, u_input.b)), vec4<u32>(u_input.c, 43453u, u_input.c, 1u), true) << (_wgslsmith_div_vec4_u32(min(vec4<u32>(4294967295u, u_input.c, 0u, global3.x) ^ vec4<u32>(u_input.b, 14227u, 0u, 13173u), _wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, 0u, 2433u, u_input.b), vec4<u32>(4294967295u, u_input.c, u_input.c, global3.x))), _wgslsmith_mult_vec4_u32(select(vec4<u32>(global3.x, 36913u, u_input.b, 8284u), vec4<u32>(61810u, global3.x, 14995u, u_input.c), global2.b.x), vec4<u32>(global3.x, 4294967295u, global3.x, u_input.c))) % vec4<u32>(32u)), ~vec4<u32>(func_1(vec2<i32>(u_input.a.x, u_input.a.x)), u_input.b, _wgslsmith_div_u32(2681u, 4294967295u), u_input.c) | select(vec4<u32>(1u, countOneBits(global3.x), global3.x, 25639u), _wgslsmith_add_vec4_u32(~vec4<u32>(51925u, u_input.b, global3.x, 4294967295u), vec4<u32>(global3.x, global3.x, global3.x, 0u)), _wgslsmith_f_op_f32(933f - 551f) < _wgslsmith_f_op_f32(-global1.x)));
    var var_1 = -943f;
    let var_2 = Struct_3(vec2<i32>(-1i << (_wgslsmith_dot_vec3_u32(max(vec3<u32>(4294967295u, global3.x, 4294967295u), vec3<u32>(global3.x, global3.x, global3.x)), ~var_0.xxx) % 32u), -1i), select(global2.d.a.yw, global2.c.a.xw, global2.e), func_4(all(vec3<bool>(true, true, global2.d.a.x)) | any(vec3<bool>(global2.d.a.x, global2.e, global2.e)), global2.c.a, global1.x, Struct_2(_wgslsmith_f_op_f32(step(_wgslsmith_f_op_f32(global1.x - global1.x), _wgslsmith_f_op_f32(-global1.x))), _wgslsmith_mod_vec2_i32(vec2<i32>(6167i, 2147483647i), ~vec2<i32>(global2.c.b, global2.d.b)), Struct_1(func_4(global2.e, global2.c.a, 810f, Struct_2(global1.x, vec2<i32>(global2.c.b, 14960i), global2.c)).c.a, _wgslsmith_mult_i32(u_input.a.x, u_input.a.x)))).c, global2.d, !global2.d.a.x);
    let x = u_input.a;
    s_output = StorageBuffer(-43398i, abs(vec2<u32>(var_0.x, 101447u)), var_0);
}

