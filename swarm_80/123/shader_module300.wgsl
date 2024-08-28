struct Struct_1 {
    a: vec2<bool>,
    b: i32,
    c: vec2<f32>,
}

struct Struct_2 {
    a: vec3<bool>,
    b: u32,
    c: vec4<bool>,
    d: vec4<i32>,
}

struct Struct_3 {
    a: vec3<i32>,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: Struct_3,
    c: Struct_2,
}

struct UniformBuffer {
    a: i32,
}

struct StorageBuffer {
    a: vec2<u32>,
    b: u32,
    c: f32,
    d: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_4;

var<private> global1: Struct_3;

var<private> global2: Struct_1 = Struct_1(vec2<bool>(true, false), 9097i, vec2<f32>(996f, -1088f));

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_add_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a + b, a, (((((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || ((b[2i] > 0i) && (a[2i] > (2147483647i - b[2i])))) || ((b[3i] > 0i) && (a[3i] > (2147483647i - b[3i])))) || (((((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))) || ((b[2i] < 0i) && (a[2i] < (i32(-2147483648) - b[2i])))) || ((b[3i] < 0i) && (a[3i] < (i32(-2147483648) - b[3i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mult_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a * b, a, ((((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((a[2i] == -1i) && (b[2i] == i32(-2147483648))) || ((a[2i] == i32(-2147483648)) && (b[2i] == -1i)))) || (((a[3i] == -1i) && (b[3i] == i32(-2147483648))) || ((a[3i] == i32(-2147483648)) && (b[3i] == -1i)))) || (((((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))) || ((b[2i] != 0i) && ((a[2i] > (2147483647i / b[2i])) || (a[2i] < (i32(-2147483648) / b[2i]))))) || ((b[3i] != 0i) && ((a[3i] > (2147483647i / b[3i])) || (a[3i] < (i32(-2147483648) / b[3i]))))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn func_3(arg_0: vec3<f32>, arg_1: u32, arg_2: Struct_1) -> bool {
    let var_0 = countOneBits(~(~1u));
    let var_1 = Struct_3(-global1.b.d.wzw | min(vec3<i32>(global2.b, arg_2.b, -global0.b.a.x), vec3<i32>(_wgslsmith_clamp_i32(global0.b.a.x, u_input.a, global2.b), -13861i << (0u % 32u), _wgslsmith_dot_vec2_i32(global1.a.zy, global0.c.d.wz))), Struct_2(vec3<bool>(true, false, global1.b.a.x), 0u, !global0.a, vec4<i32>(u_input.a, global2.b, i32(-1i) * -2147483647i, arg_2.b >> (8637u % 32u))));
    let var_2 = 3582u;
    global0 = Struct_4(global0.b.b.c, Struct_3(vec3<i32>(-global1.a.x, global2.b, ~(-arg_2.b)), global1.b), Struct_2(vec3<bool>(all(vec4<bool>(arg_2.a.x, arg_2.a.x, true, false)), true, !arg_2.a.x), _wgslsmith_div_u32(~_wgslsmith_mult_u32(96680u, 28213u), _wgslsmith_div_u32(var_2, _wgslsmith_mult_u32(0u, var_0))), select(select(vec4<bool>(true, false, true, true), var_1.b.c, !global0.b.b.a.x), vec4<bool>(var_1.b.a.x, true, any(vec2<bool>(false, false)), false), global1.b.c), _wgslsmith_div_vec4_i32(countOneBits(vec4<i32>(global1.a.x, global0.b.a.x, -8705i, global0.c.d.x)) >> (~vec4<u32>(arg_1, var_0, var_0, 120252u) % vec4<u32>(32u)), _wgslsmith_mult_vec4_i32(var_1.b.d, _wgslsmith_mod_vec4_i32(global1.b.d, global1.b.d)))));
    let var_3 = Struct_4(!vec4<bool>(global0.c.b > global1.b.b, _wgslsmith_f_op_f32(step(-698f, arg_2.c.x)) <= 528f, select(any(global0.b.b.c.xyx), var_1.b.c.x, any(vec2<bool>(global0.b.b.c.x, global0.a.x))), !all(vec4<bool>(true, var_1.b.c.x, false, global1.b.c.x))), Struct_3(~vec3<i32>(641i, arg_2.b, global0.b.a.x) | (vec3<i32>(-1i) * -vec3<i32>(arg_2.b, 1i, u_input.a)), Struct_2(select(vec3<bool>(var_1.b.c.x, global2.a.x, false), !var_1.b.a, !global1.b.c.x), 0u, vec4<bool>(global2.a.x, all(vec3<bool>(global2.a.x, false, global1.b.c.x)), arg_2.c.x <= arg_0.x, true), firstLeadingBit(global1.b.d))), Struct_2(var_1.b.a, ~1u, !var_1.b.c, -vec4<i32>(-u_input.a, global0.c.d.x, 1i, 2147483647i)));
    return all(!(!select(global0.b.b.c.xzz, vec3<bool>(true, true, true), !global1.b.a)));
}

fn func_2(arg_0: vec4<f32>, arg_1: vec4<u32>) -> Struct_1 {
    let var_0 = !(!vec4<bool>(func_3(_wgslsmith_f_op_vec3_f32(-vec3<f32>(1852f, arg_0.x, 1029f)), _wgslsmith_add_u32(global0.b.b.b, 1u), Struct_1(vec2<bool>(false, false), global0.b.b.d.x, arg_0.yw)), global0.c.c.x, !(arg_0.x <= arg_0.x), all(vec4<bool>(true, global1.b.a.x, true, true))));
    var var_1 = vec2<bool>(_wgslsmith_sub_i32(0i, global1.a.x) != -_wgslsmith_dot_vec3_i32(firstTrailingBit(global0.b.a), global1.a | global1.b.d.yzx), any(!select(vec4<bool>(global0.b.b.c.x, true, true, true), vec4<bool>(global1.b.a.x, global0.c.a.x, global1.b.c.x, var_0.x), var_0)));
    var_1 = global0.b.b.c.yz;
    let var_2 = Struct_2(global1.b.c.zyz, global1.b.b, !vec4<bool>(!select(var_1.x, var_1.x, true), all(vec4<bool>(true, true, true, true)), !func_3(arg_0.yyy, global1.b.b, Struct_1(vec2<bool>(true, false), global1.b.d.x, arg_0.xy)), global1.b.a.x), ~(-global1.b.d));
    let var_3 = ~var_2.b ^ select(1039u, var_2.b, any(select(vec2<bool>(true, false), var_0.zy, var_1.x)));
    return Struct_1(select(select(!select(global2.a, vec2<bool>(true, global2.a.x), true), vec2<bool>(!global1.b.c.x, true), select(global0.a.yy, vec2<bool>(global1.b.a.x, global1.b.a.x), false)), select(var_0.yx, global0.a.zy, !(!var_0.wx)), global1.b.a.xz), -5316i, _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.c.x, _wgslsmith_f_op_f32(exp2(arg_0.x))))) + global2.c));
}

fn func_4(arg_0: Struct_1, arg_1: vec4<i32>, arg_2: bool) -> Struct_4 {
    var var_0 = global0.b;
    global1 = global0.b;
    global0 = Struct_4(global1.b.c, global0.b, global1.b);
    var var_1 = Struct_2(vec3<bool>(any(!global1.b.a), var_0.b.a.x, false), 4294967295u, vec4<bool>(var_0.b.c.x, true, var_0.b.c.x, global2.a.x & arg_2), _wgslsmith_add_vec4_i32(min(select(global1.b.d, arg_1, var_0.b.c.x), ~global1.b.d), vec4<i32>(-43360i ^ arg_1.x, ~global2.b, global0.c.d.x, -34104i >> (var_0.b.b % 32u))) ^ global1.b.d);
    let var_2 = vec4<u32>(max(_wgslsmith_div_u32(~42665u, var_1.b), var_1.b), global0.c.b, var_1.b, _wgslsmith_mult_u32(~global0.c.b, (0u << ((global0.c.b << (17755u % 32u)) % 32u)) & var_0.b.b));
    return Struct_4(!(!select(vec4<bool>(true, var_1.a.x, arg_0.a.x, true), select(vec4<bool>(global2.a.x, var_0.b.a.x, arg_2, true), global0.c.c, false), !global2.a.x)), Struct_3(vec3<i32>(-10778i, 0i, ~(-1i) >> ((global0.c.b >> (38895u % 32u)) % 32u)), global1.b), Struct_2(global0.b.b.a, _wgslsmith_add_u32(~1u, ~reverseBits(4294967295u)), vec4<bool>(any(vec3<bool>(false, true, true)) || (global1.b.b > global0.c.b), global1.b.a.x, true, !var_1.c.x), vec4<i32>(_wgslsmith_div_i32(-global2.b, i32(-1i) * -2636i), countOneBits(countOneBits(33424i)), 0i, global2.b)));
}

fn func_1(arg_0: vec3<f32>, arg_1: Struct_2) -> bool {
    global0 = func_4(func_2(vec4<f32>(_wgslsmith_f_op_f32(round(250f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global2.c.x)), 1000f, 759f), max(vec4<u32>(4294967295u, reverseBits(global1.b.b), global1.b.b, arg_1.b), min(vec4<u32>(0u, 0u, global0.c.b, 59177u), vec4<u32>(global0.c.b, 0u, arg_1.b, 44398u) << (vec4<u32>(global1.b.b, global1.b.b, arg_1.b, global0.b.b.b) % vec4<u32>(32u))))), global1.b.d ^ vec4<i32>(_wgslsmith_clamp_i32(-1i, u_input.a, -u_input.a), 23177i, u_input.a, arg_1.d.x), all(vec3<bool>(!(!global1.b.a.x), true, (global1.b.d.x | global1.b.d.x) < 2147483647i)));
    var var_0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(abs(vec4<f32>(arg_0.x, -1635f, -460f, global2.c.x)))), vec4<u32>(global1.b.b, select(0u, ~60798u, func_3(vec3<f32>(704f, 176f, global2.c.x), global0.b.b.b, Struct_1(global0.a.yx, global1.a.x, vec2<f32>(arg_0.x, global2.c.x)))), _wgslsmith_add_u32(arg_1.b, 0u) >> (0u % 32u), _wgslsmith_mod_u32(func_4(Struct_1(vec2<bool>(global0.c.a.x, false), global0.b.b.d.x, arg_0.zx), vec4<i32>(-21958i, global1.a.x, 2147483647i, global1.a.x), global0.c.a.x).b.b.b, ~global1.b.b))), vec4<i32>(-2147483647i, countOneBits(firstTrailingBit(global0.b.a.x) >> (~1u % 32u)), global1.a.x >> (global0.b.b.b % 32u), arg_1.d.x), global2.a.x).b;
    let var_1 = func_4(func_2(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(vec4<f32>(-2039f, -133f, 811f, 586f), vec4<f32>(global2.c.x, global2.c.x, 2257f, arg_0.x))) + _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(vec4<f32>(global2.c.x, arg_0.x, arg_0.x, global2.c.x), vec4<f32>(arg_0.x, global2.c.x, -386f, -1226f), vec4<bool>(true, false, false, false))) - _wgslsmith_f_op_vec4_f32(vec4<f32>(global2.c.x, -1000f, global2.c.x, -366f) + vec4<f32>(global2.c.x, global2.c.x, -1429f, global2.c.x)))), ~vec4<u32>(global1.b.b, 20820u, 1u, ~35733u)), ~global0.b.b.d, true).c;
    var var_2 = _wgslsmith_sub_vec2_i32(~_wgslsmith_sub_vec2_i32(~global1.a.zz, vec2<i32>(0i, 1i)) & vec2<i32>(global1.b.d.x, global0.b.a.x), _wgslsmith_mult_vec2_i32(_wgslsmith_sub_vec2_i32(abs(vec2<i32>(global2.b, u_input.a)), vec2<i32>(-40539i, max(global1.b.d.x, -2147483647i))), -(vec2<i32>(2147483647i, var_0.b.d.x) & vec2<i32>(global0.c.d.x, 2147483647i))));
    var var_3 = func_4(func_2(_wgslsmith_div_vec4_f32(vec4<f32>(global2.c.x, 761f, _wgslsmith_f_op_f32(f32(-1f) * -1161f), _wgslsmith_f_op_f32(1022f - arg_0.x)), vec4<f32>(global2.c.x, _wgslsmith_f_op_f32(-global2.c.x), global2.c.x, _wgslsmith_f_op_f32(select(arg_0.x, -1397f, true)))), vec4<u32>(arg_1.b, global1.b.b, 1u, global1.b.b)), countOneBits(~vec4<i32>(_wgslsmith_dot_vec2_i32(vec2<i32>(-56165i, -1i), vec2<i32>(-29359i, global2.b)), min(0i, 7397i), abs(arg_1.d.x), countOneBits(0i))), !var_0.b.c.x).b;
    return var_3.b.a.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!select(vec2<bool>(func_1(vec3<f32>(-1000f, 655f, global2.c.x), Struct_2(global0.a.xwy, global0.c.b, vec4<bool>(global0.b.b.c.x, global1.b.c.x, true, false), vec4<i32>(global2.b, global1.b.d.x, -16838i, global1.b.d.x))), !global1.b.a.x), global1.b.c.ww, global2.a), reverseBits(40i) >> (_wgslsmith_dot_vec4_u32(~vec4<u32>(14018u, 0u, 25595u, 0u), vec4<u32>(global1.b.b, 1u, ~67371u, 0u)) % 32u), _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(sign(vec2<f32>(global2.c.x, -400f)))) - _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global2.c.x, -494f)))) * _wgslsmith_f_op_vec2_f32(round(_wgslsmith_f_op_vec2_f32(global2.c * vec2<f32>(-310f, global2.c.x)))))));
    global1 = func_4(func_2(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(var_0.c.x, global2.c.x, global2.c.x, 2568f)))), _wgslsmith_mod_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(global1.b.b, 88341u, global0.b.b.b, global0.c.b), reverseBits(vec4<u32>(global0.b.b.b, global0.b.b.b, 80387u, global0.b.b.b))), max(select(vec4<u32>(global0.c.b, 13956u, global0.b.b.b, 0u), vec4<u32>(global0.c.b, 4294967295u, global0.b.b.b, 110030u), false), vec4<u32>(global0.b.b.b, 0u, global0.c.b, global0.c.b) >> (vec4<u32>(global0.b.b.b, 0u, 2422u, 60821u) % vec4<u32>(32u))))), global0.c.d, !global0.c.c.x).b;
    global0 = func_4(func_2(_wgslsmith_f_op_vec4_f32(floor(_wgslsmith_f_op_vec4_f32(ceil(vec4<f32>(global2.c.x, 1000f, 596f, global2.c.x))))), _wgslsmith_div_vec4_u32(~abs(vec4<u32>(31430u, 0u, global1.b.b, global1.b.b)), ~vec4<u32>(global1.b.b, 4294967295u, 66052u, 0u) | vec4<u32>(global0.c.b, 24936u, 0u, global1.b.b))), abs(global0.b.b.d), func_1(_wgslsmith_f_op_vec3_f32(step(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.c.x, 1000f, global2.c.x)), _wgslsmith_div_vec3_f32(vec3<f32>(-1000f, var_0.c.x, var_0.c.x), vec3<f32>(-251f, global2.c.x, 714f)))), Struct_2(func_4(Struct_1(global1.b.c.wz, global0.c.d.x, vec2<f32>(711f, var_0.c.x)), global0.c.d, var_0.a.x).b.b.c.zxx, ~global0.c.b, vec4<bool>(global1.b.a.x, false, global1.b.c.x, global2.a.x), vec4<i32>(63272i, global1.a.x, var_0.b, -45598i) >> (vec4<u32>(global0.b.b.b, global1.b.b, 1u, global0.b.b.b) % vec4<u32>(32u)))) || (select(u_input.a, var_0.b, true) > -2147483647i));
    var var_1 = _wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(386f * var_0.c.x))));
    let var_2 = false;
    let var_3 = func_4(Struct_1(global0.b.b.c.zx, 0i, vec2<f32>(-1000f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(var_0.c.x * -511f), _wgslsmith_f_op_f32(global2.c.x * -585f)))), vec4<i32>(func_2(vec4<f32>(var_0.c.x, global2.c.x, 1925f, global2.c.x), vec4<u32>(global0.b.b.b, 0u, 4294967295u, 1u)).b >> (firstLeadingBit(global1.b.b) % 32u), ~_wgslsmith_div_i32(25282i, -29193i), max(_wgslsmith_sub_i32(0i, var_0.b), 784i), _wgslsmith_dot_vec2_i32(global1.a.zx | vec2<i32>(var_0.b, global2.b), ~global0.b.b.d.wy)) & -firstLeadingBit(-global0.b.b.d), func_3(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(547f, -1386f, global2.c.x), vec3<f32>(-541f, -1548f, var_0.c.x), global1.b.a.x)), 73615u, func_2(_wgslsmith_div_vec4_f32(vec4<f32>(-193f, 591f, var_0.c.x, global2.c.x), vec4<f32>(-437f, -1111f, global2.c.x, var_0.c.x)), reverseBits(vec4<u32>(global0.c.b, 0u, 4294967295u, 0u)))) && true).c;
    let var_4 = -2147483647i;
    var var_5 = !var_3.c;
    let x = u_input.a;
    s_output = StorageBuffer(~vec2<u32>(35587u, ~countOneBits(1u)), _wgslsmith_mult_u32(0u, ~(~func_4(Struct_1(vec2<bool>(global1.b.c.x, false), var_0.b, vec2<f32>(-507f, 288f)), vec4<i32>(2147483647i, var_0.b, var_3.d.x, global1.a.x), false).c.b)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_0.c.x, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(var_0.c.x + var_0.c.x)))) + -381f), _wgslsmith_dot_vec3_i32(vec3<i32>(firstTrailingBit(global1.b.d.x | global0.b.a.x), _wgslsmith_dot_vec3_i32(global0.b.b.d.zzy ^ var_3.d.ywx, max(global0.b.a, vec3<i32>(-2147483647i, global2.b, u_input.a))), -4310i), global0.c.d.yxz));
}

