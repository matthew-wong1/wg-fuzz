struct Struct_1 {
    a: vec3<u32>,
    b: vec2<f32>,
    c: vec2<i32>,
    d: vec2<i32>,
}

struct Struct_2 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec4<u32>,
    d: u32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_2 = Struct_2(vec2<bool>(false, false));

var<private> global1: array<Struct_2, 6> = array<Struct_2, 6>(Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(true, false)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, true)), Struct_2(vec2<bool>(false, false)), Struct_2(vec2<bool>(true, false)));

var<private> global2: u32;

var<private> global3: vec2<bool>;

var<private> global4: i32;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
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

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn func_3() -> i32 {
    let var_0 = Struct_2(global0.a);
    global0 = Struct_2(select(var_0.a, !vec2<bool>(all(vec3<bool>(true, false, false)), global3.x), vec2<bool>(true, global3.x)));
    global4 = _wgslsmith_add_i32(-_wgslsmith_div_i32(1i, -16729i), u_input.b.x);
    let var_1 = Struct_2(vec2<bool>(!select(true, true, any(vec3<bool>(global3.x, false, var_0.a.x))), select(false, true, all(global0.a))));
    let var_2 = all(global0.a);
    return 0i;
}

fn func_2(arg_0: Struct_2, arg_1: Struct_2, arg_2: i32, arg_3: Struct_2) -> u32 {
    global2 = 55308u;
    global4 = func_3();
    var var_0 = Struct_2(vec2<bool>(!(!arg_1.a.x | global0.a.x), arg_1.a.x));
    let var_1 = ~_wgslsmith_clamp_vec3_u32(vec3<u32>(u_input.d << (~11660u % 32u), 4294967295u, _wgslsmith_div_u32(4294967295u, u_input.c.x) ^ u_input.c.x), _wgslsmith_sub_vec3_u32((u_input.c.xzz ^ u_input.c.xww) >> (_wgslsmith_mult_vec3_u32(vec3<u32>(u_input.c.x, 28851u, 4294967295u), u_input.c.yxy) % vec3<u32>(32u)), u_input.c.xyy), ~vec3<u32>(u_input.c.x | 1u, u_input.c.x, u_input.c.x >> (u_input.d % 32u)));
    var var_2 = Struct_1(u_input.c.wyy, vec2<f32>(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(1000f, _wgslsmith_f_op_f32(f32(-1f) * -463f))), -530f), -(~u_input.b.wx) ^ u_input.b.zy, ~(-u_input.b.yw));
    return var_2.a.x;
}

fn func_4(arg_0: Struct_1, arg_1: u32) -> Struct_2 {
    global4 = 1i;
    global3 = select(!select(global0.a, select(!global0.a, select(vec2<bool>(false, true), vec2<bool>(global0.a.x, false), global0.a), global0.a), global0.a), !global0.a, global0.a.x);
    let var_0 = !(!global3.x);
    global0 = global1[_wgslsmith_index_u32(~(~1u), 6u)];
    global4 = (0i >> (firstLeadingBit(u_input.d) % 32u)) & (_wgslsmith_sub_i32(u_input.a, _wgslsmith_dot_vec3_i32(u_input.b.yzx, vec3<i32>(arg_0.d.x, 2147483647i, 21207i))) ^ ~7430i);
    return Struct_2(global0.a);
}

fn func_5(arg_0: Struct_2, arg_1: vec2<i32>) -> vec2<bool> {
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    global1 = array<Struct_2, 6>();
    let var_0 = func_4(Struct_1(u_input.c.wyw, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(select(vec2<f32>(-2380f, -643f), vec2<f32>(-301f, -810f), arg_0.a)))), abs(u_input.b.wx), -_wgslsmith_add_vec2_i32(min(u_input.b.zy, vec2<i32>(arg_1.x, -34384i)), _wgslsmith_sub_vec2_i32(vec2<i32>(19442i, u_input.a), vec2<i32>(arg_1.x, 25542i)))), min(u_input.d << ((func_2(Struct_2(vec2<bool>(false, true)), Struct_2(arg_0.a), 25876i, arg_0) & _wgslsmith_dot_vec4_u32(u_input.c, vec4<u32>(4294967295u, 4294967295u, u_input.c.x, u_input.d))) % 32u), 0u));
    var var_1 = u_input.b;
    return func_4(Struct_1(u_input.c.xxw, vec2<f32>(1f, 1f), u_input.b.wx, u_input.b.yz), 194u).a;
}

fn func_1(arg_0: vec3<bool>, arg_1: vec3<f32>, arg_2: i32) -> vec2<bool> {
    global1 = array<Struct_2, 6>();
    let var_0 = global1[_wgslsmith_index_u32(u_input.c.x, 6u)];
    let var_1 = Struct_1(abs(_wgslsmith_sub_vec3_u32(vec3<u32>(u_input.d, 72581u, 22771u), vec3<u32>(u_input.c.x, 0u, 40740u))) << (vec3<u32>(4294967295u, 37251u, ~(~2662u)) % vec3<u32>(32u)), arg_1.xx, u_input.b.wx, vec2<i32>(u_input.b.x, _wgslsmith_mod_i32(select(~u_input.a, i32(-1i) * -56859i, true), 12282i)));
    let var_2 = ~firstLeadingBit(vec4<u32>(abs(21299u), var_1.a.x, _wgslsmith_clamp_u32(19298u, 27609u, 0u), reverseBits(32792u))) | vec4<u32>(~18927u | _wgslsmith_mult_u32(firstLeadingBit(1u), _wgslsmith_dot_vec3_u32(vec3<u32>(var_1.a.x, u_input.d, var_1.a.x), vec3<u32>(u_input.d, u_input.d, 44045u))), 32248u, (~var_1.a.x | (u_input.d >> (103119u % 32u))) & _wgslsmith_mult_u32(var_1.a.x, u_input.d | var_1.a.x), var_1.a.x);
    global2 = var_1.a.x;
    return select(select(vec2<bool>(true, true), func_5(func_4(Struct_1(vec3<u32>(var_2.x, u_input.c.x, var_2.x), vec2<f32>(343f, var_1.b.x), vec2<i32>(u_input.b.x, var_1.d.x), var_1.c), func_2(global1[_wgslsmith_index_u32(u_input.c.x, 6u)], Struct_2(vec2<bool>(true, global3.x)), u_input.b.x, Struct_2(global0.a))), _wgslsmith_div_vec2_i32(var_1.d >> (vec2<u32>(1u, 66532u) % vec2<u32>(32u)), _wgslsmith_sub_vec2_i32(u_input.b.wz, var_1.d))), !(!var_0.a)), vec2<bool>(var_0.a.x, arg_0.x), any(!arg_0));
}

@compute
@workgroup_size(1)
fn main() {
    global4 = _wgslsmith_add_i32(u_input.b.x, select(abs(~1i), _wgslsmith_add_i32(2147483647i ^ u_input.a, -44936i), true));
    let var_0 = -1705f;
    global3 = !(!select(!vec2<bool>(global3.x, true), !func_1(vec3<bool>(false, true, false), vec3<f32>(var_0, 239f, 1388f), 2147483647i), global0.a));
    let var_1 = Struct_1(vec3<u32>(0u, 1u, 4294967295u) & abs(vec3<u32>(~u_input.d, ~u_input.d, 3041u)), vec2<f32>(546f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(sign(var_0)), 507f))), abs(u_input.b.zw), _wgslsmith_sub_vec2_i32((u_input.b.xz | u_input.b.zz) << (~u_input.c.zx % vec2<u32>(32u)), ~(vec2<i32>(u_input.b.x, 1i) & u_input.b.xx)) | _wgslsmith_add_vec2_i32(u_input.b.zx, _wgslsmith_mod_vec2_i32(u_input.b.wx, _wgslsmith_mod_vec2_i32(u_input.b.yx, vec2<i32>(u_input.a, -26588i)))));
    global1 = array<Struct_2, 6>();
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0)), var_0, -1i);
}

