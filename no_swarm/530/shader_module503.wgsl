struct Struct_1 {
    a: vec4<f32>,
    b: vec3<f32>,
    c: u32,
    d: f32,
}

struct Struct_2 {
    a: vec4<bool>,
    b: Struct_1,
    c: i32,
    d: vec3<u32>,
}

struct Struct_3 {
    a: i32,
    b: Struct_2,
    c: f32,
    d: u32,
}

struct Struct_4 {
    a: vec3<i32>,
    b: vec2<u32>,
    c: f32,
    d: Struct_3,
}

struct Struct_5 {
    a: vec3<bool>,
    b: f32,
    c: i32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: vec2<u32>,
}

struct StorageBuffer {
    a: vec3<f32>,
    b: vec4<i32>,
    c: vec2<f32>,
    d: vec4<i32>,
    e: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<i32>, 11> = array<vec4<i32>, 11>(vec4<i32>(785i, i32(-2147483648), 0i, -30961i), vec4<i32>(-13774i, -1055i, 27069i, 1i), vec4<i32>(-18981i, 0i, -1i, 16116i), vec4<i32>(i32(-2147483648), 2147483647i, 2147483647i, i32(-2147483648)), vec4<i32>(-2770i, i32(-2147483648), -27441i, 1i), vec4<i32>(-22860i, -33731i, 2147483647i, -67641i), vec4<i32>(33402i, -14726i, 6799i, -1i), vec4<i32>(2147483647i, 100055i, -31888i, 0i), vec4<i32>(-82639i, 1i, 65159i, 2147483647i), vec4<i32>(24525i, 13690i, i32(-2147483648), -1i), vec4<i32>(-63076i, -35020i, 70448i, 1164i));

var<private> global1: array<f32, 1>;

var<private> global2: array<Struct_5, 6>;

var<private> global3: array<vec4<f32>, 15>;

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn func_3(arg_0: Struct_2, arg_1: u32, arg_2: vec4<f32>, arg_3: vec4<f32>) -> bool {
    let var_0 = _wgslsmith_f_op_f32(-487f + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-arg_0.b.b.x)))));
    var var_1 = u_input.c.x;
    let var_2 = arg_0.a.x;
    var var_3 = Struct_4(~vec3<i32>(abs(_wgslsmith_sub_i32(u_input.a, 2399i)), arg_0.c, _wgslsmith_dot_vec4_i32(~u_input.b, u_input.b)), vec2<u32>(_wgslsmith_dot_vec2_u32(_wgslsmith_add_vec2_u32(u_input.c, select(arg_0.d.yx, u_input.c, true)), vec2<u32>(arg_1, abs(arg_0.d.x))), ~_wgslsmith_mod_u32(4294967295u << (u_input.c.x % 32u), 0u)), -1000f, Struct_3(_wgslsmith_mod_i32(_wgslsmith_mod_i32(arg_0.c >> (arg_0.d.x % 32u), u_input.b.x >> (u_input.c.x % 32u)), 2147483647i), arg_0, -1061f, _wgslsmith_dot_vec2_u32(u_input.c | _wgslsmith_sub_vec2_u32(vec2<u32>(arg_1, arg_1), arg_0.d.zy), u_input.c)));
    let var_4 = global2[_wgslsmith_index_u32(var_3.d.d, 6u)];
    return all(vec4<bool>(any(var_3.d.b.a) & (17008u < var_4.d.c), false, true, true));
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> vec4<bool> {
    let var_0 = Struct_3(u_input.a, Struct_2(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(false, true, false, true), true)), Struct_1(global3[_wgslsmith_index_u32(4294967295u, 15u)], vec3<f32>(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 1u)] * -540f), global1[_wgslsmith_index_u32(u_input.c.x, 1u)], _wgslsmith_f_op_f32(round(420f))), firstLeadingBit(u_input.c.x) ^ 0u, -1765f), arg_1.x, _wgslsmith_mult_vec3_u32(~(vec3<u32>(u_input.c.x, 0u, u_input.c.x) << (vec3<u32>(u_input.c.x, u_input.c.x, 4294967295u) % vec3<u32>(32u))), vec3<u32>(max(u_input.c.x, 63982u), u_input.c.x, _wgslsmith_mult_u32(u_input.c.x, 0u)))), 1f, u_input.c.x);
    global3 = array<vec4<f32>, 15>();
    global1 = array<f32, 1>();
    global0 = array<vec4<i32>, 11>();
    var var_1 = vec4<u32>(4294967295u, ~_wgslsmith_mult_u32(~0u, u_input.c.x), _wgslsmith_sub_u32(50409u, u_input.c.x), firstLeadingBit(u_input.c.x));
    return !(!select(vec4<bool>(false, any(var_0.b.a), func_3(Struct_2(vec4<bool>(false, false, var_0.b.a.x, true), var_0.b.b, -2147483647i, var_0.b.d), u_input.c.x, var_0.b.b.a, var_0.b.b.a), !var_0.b.a.x), select(select(var_0.b.a, var_0.b.a, var_0.b.a), var_0.b.a, true), any(!vec3<bool>(false, var_0.b.a.x, false))));
}

fn func_1() -> Struct_2 {
    global1 = array<f32, 1>();
    global2 = array<Struct_5, 6>();
    global2 = array<Struct_5, 6>();
    let var_0 = 0i;
    var var_1 = Struct_3(firstLeadingBit(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, _wgslsmith_dot_vec4_i32(vec4<i32>(var_0, 2147483647i, 2147483647i, u_input.b.x), u_input.b), -1i), vec3<i32>(var_0, abs(u_input.b.x), u_input.b.x | -77594i))), Struct_2(select(func_2(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), -u_input.b.yyy), func_2(global1[_wgslsmith_index_u32(~1u, 1u)], ~vec3<i32>(var_0, u_input.a, u_input.b.x)), func_2(global1[_wgslsmith_index_u32(21664u, 1u)], u_input.b.yyw).x && true), Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(~u_input.c.x, 1u)], _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 1u)] * -1531f), global1[_wgslsmith_index_u32(0u, 1u)], global1[_wgslsmith_index_u32(~60178u, 1u)]), vec3<f32>(_wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), _wgslsmith_f_op_f32(f32(-1f) * -339f), _wgslsmith_f_op_f32(step(1000f, global1[_wgslsmith_index_u32(10412u, 1u)]))), 17840u, 2621f), -1i, _wgslsmith_sub_vec3_u32(~_wgslsmith_clamp_vec3_u32(vec3<u32>(28771u, 4294967295u, 22717u), vec3<u32>(u_input.c.x, u_input.c.x, 10983u), vec3<u32>(0u, 0u, 8960u)), max(_wgslsmith_div_vec3_u32(vec3<u32>(u_input.c.x, 0u, u_input.c.x), vec3<u32>(52764u, 14088u, u_input.c.x)), _wgslsmith_mod_vec3_u32(vec3<u32>(4294967295u, 46114u, 19768u), vec3<u32>(u_input.c.x, u_input.c.x, 0u))))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(ceil(global1[_wgslsmith_index_u32(u_input.c.x, 1u)])))))), 1u);
    return var_1.b;
}

fn func_4(arg_0: Struct_4, arg_1: bool, arg_2: vec2<i32>, arg_3: Struct_2) -> vec4<bool> {
    let var_0 = !(!(!(!vec4<bool>(arg_1, arg_0.d.b.a.x, true, true))));
    global2 = array<Struct_5, 6>();
    return vec4<bool>(var_0.x, arg_1, arg_1, !arg_3.a.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_2(func_4(Struct_4(u_input.b.yzz | ~vec3<i32>(1i, -2147483647i, u_input.a), max(vec2<u32>(u_input.c.x, 0u), vec2<u32>(u_input.c.x, u_input.c.x)) | abs(u_input.c), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(42361u, 1u)] - global1[_wgslsmith_index_u32(4294967295u, 1u)]) - _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(u_input.c.x, 1u)] * -586f)), Struct_3(_wgslsmith_mult_i32(u_input.b.x, -3177i), func_1(), _wgslsmith_f_op_f32(555f + global1[_wgslsmith_index_u32(26507u, 1u)]), 0u)), true, _wgslsmith_mult_vec2_i32(reverseBits(abs(u_input.b.xz)), _wgslsmith_sub_vec2_i32(abs(vec2<i32>(1i, -24831i)), vec2<i32>(u_input.a, 1772i))), Struct_2(func_1().a, Struct_1(vec4<f32>(global1[_wgslsmith_index_u32(4294967295u, 1u)], 1441f, global1[_wgslsmith_index_u32(0u, 1u)], -1813f), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(u_input.c.x, 1u)], -664f, 266f)), 4294967295u, _wgslsmith_f_op_f32(trunc(1709f))), 1i, max(vec3<u32>(4294967295u, u_input.c.x, 93938u) >> (vec3<u32>(45920u, 31451u, u_input.c.x) % vec3<u32>(32u)), firstTrailingBit(vec3<u32>(21178u, 54994u, u_input.c.x))))), Struct_1(vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(1u, 1u)] * global1[_wgslsmith_index_u32(55546u, 1u)])), _wgslsmith_f_op_f32(-global1[_wgslsmith_index_u32(~4294967295u, 1u)]), _wgslsmith_div_f32(_wgslsmith_f_op_f32(140f - global1[_wgslsmith_index_u32(31530u, 1u)]), _wgslsmith_f_op_f32(global1[_wgslsmith_index_u32(33929u, 1u)] - -554f)), global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1[_wgslsmith_index_u32(134660u, 1u)], global1[_wgslsmith_index_u32(u_input.c.x, 1u)], 311f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(1561f, -145f, -1000f))), vec3<f32>(_wgslsmith_f_op_f32(-410f - global1[_wgslsmith_index_u32(u_input.c.x, 1u)]), 1f, _wgslsmith_f_op_f32(f32(-1f) * -175f)))), u_input.c.x, -947f), _wgslsmith_add_i32(6414i, 4460i), vec3<u32>(func_1().b.c, 0u, select(abs(u_input.c.x), ~u_input.c.x >> (firstTrailingBit(u_input.c.x) % 32u), true)));
    var var_1 = Struct_5(!var_0.a.yxy, -484f, firstTrailingBit(-11150i), func_1().b);
    global0 = array<vec4<i32>, 11>();
    global3 = array<vec4<f32>, 15>();
    var var_2 = _wgslsmith_mod_vec3_i32(~(-(_wgslsmith_div_vec3_i32(vec3<i32>(0i, -2147483647i, var_0.c), u_input.b.xzx) & (u_input.b.xxz << (vec3<u32>(67222u, var_0.d.x, u_input.c.x) % vec3<u32>(32u))))), _wgslsmith_mod_vec3_i32(u_input.b.zwz, vec3<i32>(u_input.a, u_input.b.x, u_input.a)));
    global1 = array<f32, 1>();
    global0 = array<vec4<i32>, 11>();
    let var_3 = Struct_2(func_4(Struct_4(~vec3<i32>(var_2.x, -1i, var_2.x), ~(var_0.d.yy << (vec2<u32>(var_1.d.c, 6805u) % vec2<u32>(32u))), -596f, Struct_3(69990i, func_1(), _wgslsmith_f_op_f32(f32(-1f) * -1822f), abs(24309u))), var_0.a.x, max(u_input.b.wx, select(max(vec2<i32>(var_0.c, var_2.x), vec2<i32>(u_input.a, u_input.a)), vec2<i32>(1i, var_1.c) & vec2<i32>(7127i, 2147483647i), vec2<bool>(var_0.a.x, false))), Struct_2(func_2(_wgslsmith_f_op_f32(floor(var_1.d.b.x)), max(u_input.b.yyz, vec3<i32>(var_2.x, 1i, 1i))), var_1.d, _wgslsmith_dot_vec2_i32(select(u_input.b.xz, var_2.yy, var_0.a.x), vec2<i32>(-3544i, var_1.c)), var_0.d)), func_1().b, ~_wgslsmith_clamp_i32(~(-68143i), var_0.c, ~var_0.c), vec3<u32>(_wgslsmith_sub_u32(u_input.c.x, func_1().b.c), 0u, _wgslsmith_sub_u32(u_input.c.x, reverseBits(~4294967295u))));
    let x = u_input.a;
    s_output = StorageBuffer(var_3.b.a.yww, reverseBits(~(~(~global0[_wgslsmith_index_u32(3557u, 11u)]))), func_1().b.a.wx, ~(~vec4<i32>(var_2.x, var_3.c ^ var_2.x, 2892i ^ var_0.c, var_0.c << (var_0.d.x % 32u))), -u_input.b.wz);
}

