struct Struct_1 {
    a: vec2<f32>,
    b: u32,
}

struct Struct_2 {
    a: vec3<bool>,
    b: Struct_1,
    c: Struct_1,
    d: Struct_1,
    e: bool,
}

struct Struct_3 {
    a: Struct_2,
}

struct Struct_4 {
    a: f32,
}

struct Struct_5 {
    a: Struct_3,
    b: f32,
    c: Struct_3,
    d: Struct_3,
}

struct UniformBuffer {
    a: vec4<i32>,
    b: vec4<u32>,
    c: vec3<u32>,
    d: i32,
}

struct StorageBuffer {
    a: i32,
    b: u32,
    c: vec2<f32>,
    d: vec3<f32>,
    e: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

var<private> global1: bool = false;

var<private> global2: Struct_3;

var<private> global3: vec4<i32> = vec4<i32>(18991i, i32(-2147483648), -16138i, 2147483647i);

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn func_1() -> vec4<i32> {
    global0 = 1u;
    global3 = vec4<i32>(_wgslsmith_mod_i32(_wgslsmith_sub_i32(2147483647i, _wgslsmith_add_i32(~global3.x, -1i)), -(~15007i)), u_input.d, -22249i, -1i);
    var var_0 = vec4<bool>(!(!(!(!global2.a.e))), any(global2.a.a.xx), global2.a.a.x, global2.a.e);
    global1 = all(global2.a.a);
    global1 = false;
    return u_input.a;
}

fn func_2(arg_0: vec2<f32>, arg_1: Struct_1) -> bool {
    global0 = 33182u;
    var var_0 = Struct_3(global2.a);
    let var_1 = u_input.a.xw ^ ~(-min(vec2<i32>(2147483647i, u_input.d), -vec2<i32>(-2147483647i, u_input.d)));
    let var_2 = Struct_4(_wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(2511f + arg_0.x)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(arg_1.a.x)) - global2.a.d.a.x))))));
    let var_3 = vec2<bool>(global2.a.e, true);
    return var_0.a.e | false;
}

fn func_3(arg_0: bool, arg_1: Struct_2) -> Struct_2 {
    var var_0 = ~vec3<u32>(~min(25326u << (global2.a.c.b % 32u), 45498u), _wgslsmith_mult_u32(0u << (firstTrailingBit(arg_1.d.b) % 32u), arg_1.b.b), ~_wgslsmith_mod_u32(1u, u_input.c.x));
    var var_1 = Struct_1(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(-2056f, arg_1.d.a.x))))) + _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.a.b.a))))), abs(60741u));
    let var_2 = countOneBits(-firstTrailingBit(~u_input.a.zz >> (countOneBits(var_0.yy) % vec2<u32>(32u))));
    var var_3 = vec3<u32>(abs(33u), ~reverseBits(~reverseBits(0u)), firstLeadingBit(1u));
    let var_4 = Struct_5(Struct_3(global2.a), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -291f), _wgslsmith_f_op_f32(exp2(arg_1.b.a.x)))) - 1092f), Struct_3(global2.a), Struct_3(global2.a));
    return arg_1;
}

fn func_4(arg_0: vec4<bool>, arg_1: Struct_2, arg_2: vec2<f32>, arg_3: bool) -> bool {
    let var_0 = func_3(global2.a.e, Struct_2(select(global2.a.a, select(!arg_0.yyw, global2.a.a, !arg_3), true), arg_1.b, Struct_1(arg_1.b.a, 60704u), arg_1.b, arg_1.e)).d;
    global3 = _wgslsmith_div_vec4_i32(vec4<i32>(_wgslsmith_sub_i32(0i, 2147483647i), _wgslsmith_clamp_i32(-64188i, u_input.d, func_1().x), 52732i, -global3.x), ~vec4<i32>(-1i, ~(-global3.x), reverseBits(~(-28243i)), 7303i));
    let var_1 = Struct_5(Struct_3(Struct_2(vec3<bool>(false, arg_0.x || true, false), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(-1197f, arg_2.x)), ~u_input.c.x), var_0, arg_1.b, func_3(global2.a.a.x, arg_1).e)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-arg_2.x)), Struct_3(func_3(arg_0.x, func_3(true, arg_1))), Struct_3(func_3(arg_0.x, Struct_2(global2.a.a, Struct_1(arg_1.c.a, 118535u), Struct_1(arg_1.c.a, global2.a.b.b), func_3(false, Struct_2(arg_1.a, global2.a.b, global2.a.b, Struct_1(var_0.a, arg_1.b.b), arg_0.x)).c, true))));
    global2 = var_1.a;
    var var_2 = _wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(vec3<f32>(-121f, 1000f, 776f) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(arg_1.b.a.x, var_1.c.a.d.a.x, -1677f))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.d.a.x, arg_1.d.a.x, 1290f)), arg_0.zxw)), _wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-vec3<f32>(global2.a.b.a.x, -251f, var_0.a.x)), vec3<f32>(-1146f, arg_1.d.a.x, 548f))), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(sign(vec3<f32>(494f, arg_1.c.a.x, arg_2.x))) + _wgslsmith_div_vec3_f32(vec3<f32>(2202f, var_1.b, var_0.a.x), vec3<f32>(global2.a.d.a.x, var_0.a.x, -430f))))))), _wgslsmith_f_op_vec3_f32(ceil(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1172f, arg_1.b.a.x, -303f) - vec3<f32>(376f, 1059f, global2.a.b.a.x)) + _wgslsmith_f_op_vec3_f32(vec3<f32>(394f, 836f, var_0.a.x) - vec3<f32>(688f, 1715f, 389f))), vec3<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1288f), _wgslsmith_f_op_f32(-arg_1.d.a.x), _wgslsmith_f_op_f32(min(-1480f, 1000f)))))))));
    return select(all(vec3<bool>(all(arg_0), !arg_3, false)), all(global2.a.a.yy), arg_0.x) == !(!(!arg_3 != (arg_2.x != global2.a.d.a.x)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(sign(-625f)), global2.a.d.a.x, global2.a.d.a.x);
    global3 = func_1();
    global0 = 81323u;
    var var_1 = vec4<bool>(func_4(select(select(vec4<bool>(false, global2.a.e, global2.a.a.x, true), vec4<bool>(false, global2.a.e, global2.a.a.x, global2.a.e), vec4<bool>(global2.a.e, global2.a.a.x, global2.a.a.x, global2.a.a.x)), select(vec4<bool>(global2.a.a.x, false, global2.a.e, global2.a.e), vec4<bool>(true, true, true, true), vec4<bool>(global2.a.a.x, global2.a.a.x, global2.a.a.x, true)), vec4<bool>(global2.a.e, false, global2.a.e, global2.a.a.x)), func_3(func_2(global2.a.b.a, Struct_1(vec2<f32>(272f, var_0.x), 4294967295u)), global2.a), global2.a.d.a, global2.a.a.x) && global2.a.e, true, true, !global2.a.e);
    let var_2 = Struct_2(!select(!select(global2.a.a, vec3<bool>(var_1.x, true, var_1.x), vec3<bool>(true, var_1.x, false)), var_1.yyw, global2.a.d.a.x > var_0.x), func_3(global2.a.e, Struct_2(select(vec3<bool>(false, false, global2.a.a.x), vec3<bool>(true, false, var_1.x), vec3<bool>(global2.a.a.x, false, global2.a.a.x)), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(var_0.x, global2.a.b.a.x)), ~4294967295u), Struct_1(vec2<f32>(var_0.x, global2.a.d.a.x), _wgslsmith_dot_vec4_u32(vec4<u32>(17244u, global2.a.c.b, global2.a.b.b, 4294967295u), u_input.b)), func_3(false, func_3(var_1.x, global2.a)).d, false)).c, global2.a.b, Struct_1(_wgslsmith_f_op_vec2_f32(ceil(_wgslsmith_f_op_vec2_f32(-global2.a.c.a))), _wgslsmith_div_u32(_wgslsmith_mult_u32(global2.a.d.b, 4294967295u) | global2.a.d.b, func_3(true, global2.a).d.b)), any(vec3<bool>(!var_1.x, any(vec4<bool>(var_1.x, global2.a.e, true, false)), true)) & (0i == ~(u_input.a.x >> (global2.a.d.b % 32u))));
    var var_3 = _wgslsmith_sub_u32(1u, global2.a.d.b);
    global3 = vec4<i32>(min(countOneBits(_wgslsmith_dot_vec3_i32(_wgslsmith_mod_vec3_i32(vec3<i32>(-7213i, -1i, 0i), u_input.a.zxz), -vec3<i32>(global3.x, -1i, u_input.d))), func_1().x), ~global3.x, _wgslsmith_div_i32(1i, _wgslsmith_sub_i32(-max(u_input.d, 8512i), _wgslsmith_mult_i32(u_input.d >> (u_input.c.x % 32u), -u_input.d))), _wgslsmith_add_i32(35945i, 0i));
    let var_4 = Struct_3(Struct_2(var_2.a, var_2.d, Struct_1(vec2<f32>(-901f, var_0.x), var_2.d.b), func_3(select(false, var_1.x, select(global2.a.e, var_1.x, global2.a.a.x)), Struct_2(var_2.a, var_2.b, Struct_1(vec2<f32>(-618f, -560f), global2.a.c.b), func_3(true, var_2).d, false)).d, ~1i <= (i32(-1i) * -global3.x)));
    let x = u_input.a;
    s_output = StorageBuffer(global3.x, max(~var_2.d.b, ~firstTrailingBit(_wgslsmith_dot_vec4_u32(vec4<u32>(38066u, 1u, u_input.c.x, 28795u), u_input.b))), vec2<f32>(-445f, _wgslsmith_f_op_f32(-var_4.a.b.a.x)), var_0, func_3(true, global2.a).d.a);
}

