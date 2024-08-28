struct Struct_1 {
    a: vec3<f32>,
    b: vec2<f32>,
    c: i32,
    d: vec4<u32>,
    e: u32,
}

struct Struct_2 {
    a: bool,
}

struct Struct_3 {
    a: Struct_2,
    b: vec2<f32>,
    c: vec4<i32>,
    d: Struct_1,
}

struct UniformBuffer {
    a: u32,
    b: i32,
    c: i32,
}

struct StorageBuffer {
    a: f32,
    b: f32,
    c: vec4<u32>,
    d: vec2<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<i32>;

var<private> global1: bool = true;

var<private> global2: Struct_1 = Struct_1(vec3<f32>(-2383f, -1387f, 1124f), vec2<f32>(-1068f, -462f), 0i, vec4<u32>(57267u, 1u, 34534u, 34750u), 7806u);

var<private> global3: Struct_3 = Struct_3(Struct_2(false), vec2<f32>(-302f, 970f), vec4<i32>(-37357i, 5099i, -6523i, 4626i), Struct_1(vec3<f32>(-1537f, -1294f, -1054f), vec2<f32>(-308f, -1621f), 1i, vec4<u32>(0u, 1u, 35475u, 1639u), 101536u));

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn func_3() -> bool {
    let var_0 = vec4<i32>(-1i) * -global3.c;
    var var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-604f, global3.b.x, true)));
    global0 = _wgslsmith_mod_vec3_i32(global3.c.wyz, countOneBits(var_0.wyy));
    global2 = global3.d;
    let var_2 = vec3<i32>(30563i, 3833i, ~(-8796i));
    return global3.a.a | any(vec4<bool>(!any(vec2<bool>(global3.a.a, false)), global3.a.a, all(select(vec4<bool>(false, true, true, global3.a.a), vec4<bool>(false, global3.a.a, global3.a.a, global3.a.a), vec4<bool>(global3.a.a, global3.a.a, true, false))), true));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_2, arg_2: u32, arg_3: vec2<bool>) -> vec2<f32> {
    let var_0 = arg_0;
    global2 = Struct_1(global2.a, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(arg_0.d.b)) * _wgslsmith_f_op_vec2_f32(-vec2<f32>(1059f, arg_0.b.x))) - vec2<f32>(-101f, _wgslsmith_f_op_f32(-arg_0.b.x))))), 31347i, ~vec4<u32>(1u, ~1332u, ~_wgslsmith_dot_vec4_u32(var_0.d.d, vec4<u32>(67409u, global3.d.e, 32152u, 23133u)), 1u), _wgslsmith_div_u32(~global3.d.d.x, 4294967295u));
    let var_1 = ~firstLeadingBit(4294967295u);
    return global3.d.a.xz;
}

fn func_2(arg_0: Struct_1, arg_1: vec3<u32>, arg_2: bool) -> vec2<u32> {
    var var_0 = ~select(_wgslsmith_sub_vec4_u32(global3.d.d, vec4<u32>(u_input.a, 0u, ~arg_0.e, u_input.a)), vec4<u32>(4294967295u, 2032u, 24510u, max(arg_1.x >> (global2.d.x % 32u), 1u)), !arg_2);
    var var_1 = all(vec4<bool>(arg_2, true, any(!(!vec2<bool>(global3.a.a, false))), all(!select(vec2<bool>(global3.a.a, arg_2), vec2<bool>(global3.a.a, global3.a.a), global3.a.a))));
    let var_2 = _wgslsmith_sub_vec2_u32(~arg_0.d.zx, vec2<u32>(global2.d.x, min(u_input.a, firstTrailingBit(global3.d.d.x))));
    let var_3 = Struct_1(_wgslsmith_f_op_vec3_f32(-global2.a), global2.b, -(min(global2.c & -17957i, global0.x ^ u_input.c) | -121110i), abs(firstTrailingBit(arg_0.d)), arg_1.x);
    let var_4 = Struct_3(global3.a, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(Struct_2(arg_2), vec2<f32>(421f, -468f), vec4<i32>(global2.c, global0.x, u_input.c, global2.c), arg_0), Struct_2(func_3()), ~_wgslsmith_add_u32(var_0.x, arg_1.x), !(!vec2<bool>(arg_2, false)))) * _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-vec2<f32>(arg_0.a.x, arg_0.a.x)) * vec2<f32>(-2077f, _wgslsmith_f_op_vec2_f32(func_4(Struct_3(global3.a, vec2<f32>(-475f, 1329f), vec4<i32>(10188i, -1562i, global2.c, 2147483647i), Struct_1(global3.d.a, var_3.b, -45074i, vec4<u32>(arg_0.e, arg_0.d.x, var_2.x, 9760u), var_3.d.x)), Struct_2(true), var_0.x, vec2<bool>(global3.a.a, arg_2))).x))), _wgslsmith_div_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(1i, -2147483647i, -18938i, global3.c.x), ~(global3.c >> (global2.d % vec4<u32>(32u)))), vec4<i32>(arg_0.c, _wgslsmith_add_i32(arg_0.c, _wgslsmith_mult_i32(var_3.c, -2147483647i)), ~43354i | ~var_3.c, ~0i)), Struct_1(var_3.a, global2.b, ~var_3.c, vec4<u32>(var_0.x, abs(~arg_1.x), firstTrailingBit(~global2.d.x), 1u), var_2.x << (1u % 32u)));
    return vec2<u32>(firstLeadingBit((1u ^ arg_0.d.x) & 74781u), 40530u) & var_2;
}

fn func_1(arg_0: Struct_2) -> u32 {
    var var_0 = _wgslsmith_mult_vec2_u32(min(global2.d.wz, ~global3.d.d.ww), reverseBits(min(_wgslsmith_mod_vec2_u32(global2.d.xw | vec2<u32>(global2.e, 19765u), global2.d.zw), ~func_2(global3.d, vec3<u32>(u_input.a, 4294967295u, 30740u), false))));
    global0 = ~global3.c.xww;
    let var_1 = vec3<i32>(_wgslsmith_dot_vec3_i32(~abs(_wgslsmith_div_vec3_i32(global3.c.zxy, global3.c.yyz)), -vec3<i32>(-1i, global2.c | -2147483647i, i32(-1i) * -2147483647i)), ~_wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(global0.zy, ~vec2<i32>(global3.d.c, 25970i)), -26214i), min(-13053i, ~(-global2.c)) & _wgslsmith_div_i32(~u_input.b, global3.d.c | ~u_input.c));
    global0 = ~((~vec3<i32>(-2147483647i, u_input.b, global3.d.c) | _wgslsmith_sub_vec3_i32(global3.c.zxy, var_1)) >> (min(global2.d.xzw, ~_wgslsmith_mult_vec3_u32(global3.d.d.xxw, vec3<u32>(4294967295u, global3.d.e, global2.d.x))) % vec3<u32>(32u)));
    var var_2 = all(select(vec3<bool>(!any(vec4<bool>(arg_0.a, global3.a.a, false, arg_0.a)), true, false), vec3<bool>(-17058i == var_1.x, true, true), select(vec3<bool>(true, any(vec3<bool>(false, global3.a.a, false)), global3.d.a.x <= 108f), vec3<bool>(true, false | global3.a.a, arg_0.a), vec3<bool>(true, func_3(), arg_0.a))));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(global3.d.b.x * global2.a.x))) * _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global3.d.b.x) + global3.b.x)));
    let var_1 = vec3<u32>(u_input.a, func_1(Struct_2(false)), global3.d.d.x);
    var var_2 = global3.d;
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_div_f32(global2.b.x, _wgslsmith_f_op_f32(1777f * _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(global3.d.b.x))))));
    let x = u_input.a;
    s_output = StorageBuffer(332f, -1447f, reverseBits((vec4<u32>(var_1.x, 93305u, global2.e, var_1.x) << (~vec4<u32>(9773u, var_1.x, 73726u, var_2.d.x) % vec4<u32>(32u))) << (~(vec4<u32>(global3.d.d.x, var_2.d.x, var_2.d.x, 1u) << (global3.d.d % vec4<u32>(32u))) % vec4<u32>(32u))), _wgslsmith_f_op_vec2_f32(-global2.a.yz), var_2.b);
}

