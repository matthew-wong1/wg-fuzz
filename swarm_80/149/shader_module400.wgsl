struct Struct_1 {
    a: vec2<u32>,
    b: vec2<f32>,
    c: vec2<bool>,
    d: vec2<bool>,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: vec3<i32>,
    d: vec4<u32>,
    e: vec4<u32>,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: i32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

var<private> global1: f32 = 1519f;

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_1, arg_1: u32, arg_2: vec2<i32>) -> f32 {
    global0 = !select(vec2<bool>(false, all(vec4<bool>(global0.x, arg_0.d.x, false, arg_0.c.x)) == !global0.x), arg_0.c, true);
    let var_0 = 5824i;
    let var_1 = Struct_1(firstLeadingBit(u_input.d.zy), arg_0.b, arg_0.c, !(!select(arg_0.d, vec2<bool>(false, global0.x), true)));
    global1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(step(arg_0.b.x, _wgslsmith_f_op_f32(f32(-1f) * -2038f))))));
    let var_2 = Struct_1(~vec2<u32>(_wgslsmith_mod_u32(19807u, var_1.a.x & arg_0.a.x), _wgslsmith_mult_u32(arg_1, min(u_input.d.x, 1u))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(850f, _wgslsmith_div_f32(var_1.b.x, _wgslsmith_f_op_f32(-arg_0.b.x)))), var_1.c, !vec2<bool>(true, arg_0.d.x));
    return _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f));
}

fn func_2() -> Struct_1 {
    global0 = vec2<bool>(!any(vec4<bool>(false, true, global0.x, true)) && true, global0.x);
    let var_0 = _wgslsmith_sub_vec2_u32(vec2<u32>(37243u, ~4294967295u), ~max(u_input.e.wz, u_input.d.yz));
    let var_1 = reverseBits(countOneBits(firstLeadingBit(min(0i, _wgslsmith_clamp_i32(u_input.b, u_input.b, u_input.c.x)))));
    var var_2 = 796f;
    return Struct_1(u_input.d.zy >> (vec2<u32>(~(~var_0.x), 11655u) % vec2<u32>(32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(-524f, _wgslsmith_f_op_f32(func_3(Struct_1(vec2<u32>(48260u, u_input.d.x), vec2<f32>(1360f, 448f), vec2<bool>(global0.x, global0.x), vec2<bool>(false, global0.x)), 0u, u_input.c.xy))))), !vec2<bool>(global0.x, all(vec4<bool>(false, true, true, true))), vec2<bool>((var_0.x << ((0u ^ u_input.e.x) % 32u)) <= u_input.d.x, false));
}

fn func_4(arg_0: bool, arg_1: i32, arg_2: i32, arg_3: Struct_1) -> Struct_1 {
    global0 = arg_3.d;
    global1 = -688f;
    var var_0 = arg_3;
    let var_1 = !(select(~4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(1u, var_0.a.x, 1u), u_input.d.xzw), select(false, var_0.d.x, global0.x)) < ~4294967295u) | false;
    let var_2 = vec2<u32>((var_0.a.x | _wgslsmith_mod_u32(var_0.a.x, arg_3.a.x)) ^ max(var_0.a.x, _wgslsmith_mult_u32(1u, _wgslsmith_clamp_u32(arg_3.a.x, var_0.a.x, 73164u))), _wgslsmith_mod_u32(u_input.d.x, 4294967295u));
    return func_2();
}

fn func_5(arg_0: vec2<f32>, arg_1: Struct_1, arg_2: Struct_1, arg_3: vec4<i32>) -> vec2<bool> {
    global0 = arg_1.c;
    var var_0 = _wgslsmith_div_vec4_i32(~min(-arg_3, arg_3), firstTrailingBit(arg_3));
    let var_1 = ~(~arg_1.a);
    var var_2 = vec2<f32>(arg_1.b.x, _wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(f32(-1f) * -1000f), -1629f, false)));
    var var_3 = arg_1;
    return vec2<bool>(_wgslsmith_f_op_f32(trunc(arg_2.b.x)) <= 324f, true);
}

fn func_1(arg_0: Struct_1, arg_1: Struct_1) -> bool {
    let var_0 = !vec4<bool>(any(!select(vec4<bool>(false, arg_1.d.x, false, global0.x), vec4<bool>(true, global0.x, arg_1.c.x, global0.x), arg_1.d.x)), global0.x, select(true, all(vec3<bool>(global0.x, false, arg_0.d.x)) & any(vec3<bool>(true, true, arg_0.c.x)), !(!arg_0.c.x)), true);
    global1 = _wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1000f), arg_1.b.x);
    global0 = vec2<bool>(!(!((global0.x || false) | (arg_0.a.x <= arg_1.a.x))), select(-_wgslsmith_add_i32(u_input.b, u_input.b) > (i32(-1i) * -37538i), true, arg_0.d.x));
    global0 = arg_1.d;
    global0 = func_5(arg_1.b, func_4(!global0.x, _wgslsmith_sub_i32(_wgslsmith_add_i32(10777i, ~u_input.b), -5282i), _wgslsmith_mod_i32(~0i, -1i), func_2()), func_4(true, abs(-2147483647i), u_input.b, arg_1), vec4<i32>(countOneBits(u_input.a) ^ u_input.c.x, u_input.b, 1i, u_input.b ^ abs(abs(u_input.a))));
    return global0.x;
}

fn func_6(arg_0: vec4<bool>, arg_1: vec2<bool>, arg_2: Struct_1) -> vec4<i32> {
    global0 = !(!func_5(arg_2.b, arg_2, arg_2, vec4<i32>(0i, ~2147483647i, _wgslsmith_div_i32(u_input.a, u_input.c.x), u_input.c.x)));
    var var_0 = u_input.c;
    var var_1 = vec2<i32>(u_input.c.x | firstLeadingBit(var_0.x), max(_wgslsmith_mult_i32(reverseBits(-20357i), _wgslsmith_dot_vec2_i32(u_input.c.zz, vec2<i32>(var_0.x, 41933i))) ^ ~abs(u_input.a), u_input.c.x | ~abs(u_input.a)));
    var var_2 = arg_2.b.x;
    var_1 = firstLeadingBit(_wgslsmith_mod_vec2_i32(u_input.c.zx, _wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, reverseBits(3275i)), _wgslsmith_clamp_vec2_i32(~u_input.c.zy, min(vec2<i32>(var_0.x, 8318i), var_0.xy), _wgslsmith_add_vec2_i32(var_0.yx, vec2<i32>(-24068i, 0i))), abs(-u_input.c.yz))));
    return vec4<i32>(var_1.x, var_1.x, 2147483647i, -(~countOneBits(u_input.c.x)));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(u_input.e.yy, _wgslsmith_div_vec2_f32(vec2<f32>(_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(ceil(-1665f)), -533f)), _wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(round(-376f))))), vec2<f32>(_wgslsmith_f_op_f32(f32(-1f) * -1000f), _wgslsmith_f_op_f32(ceil(-332f)))), select(vec2<bool>(true, all(vec4<bool>(false, false, true, true))), vec2<bool>(global0.x, true), true), !vec2<bool>(global0.x, true));
    let var_1 = u_input.c;
    let var_2 = var_0.a ^ var_0.a;
    let var_3 = func_6(!select(!vec4<bool>(false, false, global0.x, false), vec4<bool>(global0.x, true, true, true), true), !vec2<bool>(false, func_1(Struct_1(var_2, var_0.b, vec2<bool>(global0.x, var_0.c.x), vec2<bool>(var_0.d.x, false)), Struct_1(var_0.a, var_0.b, var_0.c, vec2<bool>(var_0.d.x, true)))), func_4(true != ((var_0.a.x << (16260u % 32u)) != var_2.x), ~8529i, -1i, Struct_1(~max(vec2<u32>(u_input.d.x, var_2.x), var_0.a), vec2<f32>(var_0.b.x, _wgslsmith_f_op_f32(exp2(var_0.b.x))), func_4(true, _wgslsmith_dot_vec4_i32(vec4<i32>(var_1.x, -51303i, -2147483647i, var_1.x), vec4<i32>(var_1.x, var_1.x, var_1.x, var_1.x)), 8691i ^ var_1.x, func_2()).d, !func_5(var_0.b, Struct_1(vec2<u32>(u_input.d.x, 12063u), vec2<f32>(var_0.b.x, 825f), vec2<bool>(global0.x, var_0.c.x), vec2<bool>(var_0.d.x, false)), Struct_1(u_input.e.xz, var_0.b, vec2<bool>(global0.x, false), var_0.c), vec4<i32>(2147483647i, -39036i, u_input.a, var_1.x)))));
    let var_4 = u_input.d.yzx;
    var_0 = func_2();
    var_0 = Struct_1(~var_4.zx, _wgslsmith_f_op_vec2_f32(var_0.b * _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_0.b))), !select(!var_0.c, !(!var_0.d), select(!vec2<bool>(var_0.d.x, var_0.d.x), var_0.c, vec2<bool>(true, global0.x))), !var_0.c);
    var_0 = func_2();
    var var_5 = Struct_1(u_input.d.zx ^ (_wgslsmith_mod_vec2_u32(~vec2<u32>(var_0.a.x, var_0.a.x), vec2<u32>(4294967295u, u_input.d.x)) << (select(func_2().a, ~var_4.zx, !var_0.d) % vec2<u32>(32u))), _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(vec2<f32>(var_0.b.x, 872f) * vec2<f32>(-774f, 569f)) * vec2<f32>(var_0.b.x, var_0.b.x))))), func_2().d, vec2<bool>(var_0.d.x, false));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.a, var_5.a.x, ~var_3.x, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(abs(vec2<f32>(var_5.b.x, var_0.b.x))) - vec2<f32>(func_4(var_0.c.x, -15628i, var_3.x, Struct_1(vec2<u32>(17396u, 0u), var_0.b, vec2<bool>(var_5.d.x, false), var_0.d)).b.x, 166f)) + vec2<f32>(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(min(var_0.b.x, 182f)))), var_0.b.x)));
}

