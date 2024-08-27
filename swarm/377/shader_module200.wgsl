struct Struct_1 {
    a: vec3<i32>,
    b: vec3<bool>,
    c: vec3<bool>,
    d: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: bool,
    d: u32,
    e: bool,
}

struct Struct_3 {
    a: f32,
    b: Struct_2,
    c: Struct_1,
    d: bool,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<i32>;

var<private> global1: vec3<bool>;

var<private> global2: vec2<u32> = vec2<u32>(0u, 0u);

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a % b, a, (((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: vec4<bool>, arg_1: vec4<f32>, arg_2: f32) -> bool {
    global1 = !select(vec3<bool>(arg_0.x | (true || arg_0.x), true, global1.x), vec3<bool>(false, true, true), select(select(select(vec3<bool>(false, global1.x, arg_0.x), vec3<bool>(global1.x, arg_0.x, arg_0.x), arg_0.wzy), vec3<bool>(true, arg_0.x, arg_0.x), !arg_0.yxz), !(!arg_0.wwx), !select(vec3<bool>(false, true, true), arg_0.xyx, vec3<bool>(true, false, arg_0.x))));
    var var_0 = Struct_1(vec3<i32>(~abs(_wgslsmith_add_i32(1i, global0.x)), ~countOneBits(_wgslsmith_dot_vec4_i32(vec4<i32>(u_input.a.x, -2147483647i, u_input.a.x, 1i), vec4<i32>(u_input.a.x, global0.x, global0.x, -1i))), -12350i & firstTrailingBit(_wgslsmith_sub_i32(7365i, 12847i))), select(select(!arg_0.yzy, arg_0.wzy, select(!global1.x, true, false)), vec3<bool>(!arg_0.x, !arg_0.x, true), all(vec4<bool>(any(arg_0), all(arg_0.yx), true, !global1.x))), select(select(!(!arg_0.zwz), vec3<bool>(arg_2 <= arg_2, arg_0.x, arg_0.x | false), !(!vec3<bool>(arg_0.x, arg_0.x, true))), select(arg_0.zzy, !select(arg_0.xzz, arg_0.wyz, vec3<bool>(false, true, false)), all(select(arg_0.wwz, arg_0.xyx, vec3<bool>(true, global1.x, false)))), true), global2.x);
    var var_1 = Struct_3(arg_1.x, Struct_2(Struct_1(~vec3<i32>(2147483647i, 53667i, u_input.a.x), select(vec3<bool>(true, false, false), vec3<bool>(false, true, arg_0.x), vec3<bool>(true, arg_0.x, true)), var_0.c, ~6193u), Struct_1(u_input.a.zyy, !(!arg_0.yzz), select(!arg_0.ywz, !arg_0.xwx, !arg_0.yzy), _wgslsmith_dot_vec2_u32(~vec2<u32>(65999u, global2.x), ~vec2<u32>(global2.x, var_0.d))), !(!arg_0.x), var_0.d, select(all(select(vec4<bool>(false, false, var_0.c.x, false), arg_0, arg_0.x)), arg_0.x, !(arg_0.x && true))), Struct_1(u_input.a.zyx, vec3<bool>((u_input.a.x >= global0.x) && !arg_0.x, arg_0.x, arg_0.x), !(!vec3<bool>(arg_0.x, true, global1.x)), _wgslsmith_mod_u32(global2.x, var_0.d)), all(!select(select(vec2<bool>(var_0.b.x, true), vec2<bool>(arg_0.x, true), var_0.b.x), !vec2<bool>(arg_0.x, var_0.c.x), vec2<bool>(true, true))));
    global0 = vec2<i32>(-1i, var_0.a.x);
    global1 = var_0.c;
    return !var_1.d;
}

fn func_2(arg_0: u32, arg_1: vec3<bool>, arg_2: Struct_3) -> vec4<bool> {
    var var_0 = Struct_3(_wgslsmith_f_op_f32(step(-288f, 1983f)), Struct_2(arg_2.b.a, Struct_1(min(-vec3<i32>(1i, 0i, 14076i), arg_2.c.a), arg_1, !arg_1, arg_2.c.d), func_3(!(!vec4<bool>(true, global1.x, arg_2.d, true)), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(arg_2.a, arg_2.a, arg_2.a, 1515f)), _wgslsmith_f_op_vec4_f32(round(vec4<f32>(623f, arg_2.a, arg_2.a, arg_2.a)))), -595f), ~(~_wgslsmith_add_u32(52715u, 0u)), arg_2.d), Struct_1(arg_2.b.b.a, arg_1, !select(!arg_1, !arg_1, select(vec3<bool>(arg_1.x, true, true), arg_2.b.b.b, arg_1)), 48909u), all(!vec4<bool>(func_3(vec4<bool>(arg_1.x, global1.x, global1.x, true), vec4<f32>(314f, -935f, 730f, 1213f), -406f), false & arg_1.x, select(global1.x, true, arg_2.b.c), all(vec3<bool>(false, arg_2.d, global1.x)))));
    var_0 = Struct_3(_wgslsmith_f_op_f32(sign(_wgslsmith_div_f32(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(sign(var_0.a)))), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(f32(-1f) * -1000f)))))), var_0.b, arg_2.b.a, func_3(!vec4<bool>(true, global1.x == arg_2.b.a.c.x, arg_2.c.c.x, true), _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(vec4<f32>(var_0.a, 1230f, var_0.a, -250f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(arg_2.a, var_0.a, arg_2.a, arg_2.a) - vec4<f32>(-2221f, 400f, 394f, -715f))), _wgslsmith_f_op_vec4_f32(vec4<f32>(2093f, arg_2.a, var_0.a, arg_2.a) - vec4<f32>(1390f, 1127f, arg_2.a, -590f))), _wgslsmith_div_f32(_wgslsmith_f_op_f32(abs(853f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-var_0.a)))));
    var var_1 = Struct_1(_wgslsmith_mod_vec3_i32(firstTrailingBit(min(vec3<i32>(global0.x, u_input.a.x, 109641i), max(u_input.a.yzz, vec3<i32>(-2147483647i, u_input.a.x, u_input.a.x)))), u_input.a.wwy), vec3<bool>(!any(select(arg_2.b.a.b, vec3<bool>(false, global1.x, false), arg_1.x)), !select(var_0.d, !var_0.d, all(vec2<bool>(true, true))), any(vec2<bool>(var_0.b.b.a.x < global0.x, arg_2.d))), arg_1, arg_0);
    var var_2 = ~(arg_2.b.a.d | _wgslsmith_add_u32(global2.x, 147u));
    global0 = vec2<i32>(-_wgslsmith_div_i32(-(var_1.a.x ^ var_1.a.x), 3795i), u_input.a.x);
    return !(!vec4<bool>(arg_1.x, var_1.c.x, global1.x && (global0.x < 1i), all(var_1.c)));
}

fn func_4(arg_0: f32, arg_1: bool, arg_2: i32) -> Struct_2 {
    var var_0 = vec3<f32>(-1286f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) + _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(-arg_0)))), -483f);
    var var_1 = Struct_3(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))))), Struct_2(Struct_1(-vec3<i32>(global0.x, global0.x, 34299i), vec3<bool>(true, true, false), select(!vec3<bool>(arg_1, arg_1, false), !vec3<bool>(arg_1, true, arg_1), vec3<bool>(true, arg_1, true)), 4294967295u ^ ~global2.x), Struct_1(countOneBits(~u_input.a.wwy), vec3<bool>(true, global1.x, 4294967295u <= global2.x), select(!vec3<bool>(false, global1.x, false), !vec3<bool>(global1.x, global1.x, arg_1), !vec3<bool>(true, global1.x, true)), ~(~63190u)), !(max(global2.x, 1915u) == ~0u), 4294967295u, false), Struct_1(u_input.a.yxw, !vec3<bool>(true, arg_1, arg_1), !select(select(vec3<bool>(false, arg_1, true), vec3<bool>(true, false, global1.x), vec3<bool>(true, false, false)), vec3<bool>(false, true, false), global1.x), _wgslsmith_div_u32(firstLeadingBit(22079u), global2.x)), _wgslsmith_clamp_u32(_wgslsmith_add_u32(9808u | global2.x, 95775u), 29090u, ~(~87881u)) < (~global2.x >> ((firstLeadingBit(global2.x) | global2.x) % 32u)));
    var var_2 = 30156u;
    let var_3 = ~1u;
    let var_4 = 0u;
    return var_1.b;
}

fn func_1() -> StorageBuffer {
    let var_0 = func_4(-1433f, all(select(func_2(~31457u, !vec3<bool>(global1.x, true, global1.x), Struct_3(-1000f, Struct_2(Struct_1(vec3<i32>(global0.x, 21511i, 44105i), vec3<bool>(global1.x, true, true), vec3<bool>(global1.x, true, false), global2.x), Struct_1(u_input.a.ywx, vec3<bool>(global1.x, global1.x, global1.x), vec3<bool>(global1.x, global1.x, global1.x), 0u), global1.x, 19976u, global1.x), Struct_1(u_input.a.zyx, vec3<bool>(false, true, global1.x), vec3<bool>(global1.x, global1.x, false), global2.x), false)), !(!vec4<bool>(global1.x, global1.x, global1.x, global1.x)), global1.x)), 2147483647i);
    let var_1 = func_2(0u, vec3<bool>(true, true, true), Struct_3(_wgslsmith_f_op_f32(f32(-1f) * -1598f), var_0, func_4(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(trunc(1629f)))), var_0.a.b.x, abs(_wgslsmith_mod_i32(var_0.a.a.x, global0.x))).a, true));
    let var_2 = _wgslsmith_div_vec4_u32(~min(abs(vec4<u32>(global2.x, var_0.b.d, var_0.d, var_0.a.d)), _wgslsmith_mod_vec4_u32(~vec4<u32>(global2.x, 1u, var_0.a.d, global2.x), firstLeadingBit(vec4<u32>(var_0.b.d, 1u, var_0.b.d, global2.x)))), abs(vec4<u32>(~0u, var_0.a.d, func_4(_wgslsmith_f_op_f32(-977f - -407f), var_1.x, 1i).a.d, ~firstLeadingBit(0u))));
    global2 = vec2<u32>(min(_wgslsmith_clamp_u32(var_2.x, select(var_0.d, 65062u, true), ~var_0.a.d), 2761u) >> ((_wgslsmith_sub_u32(var_0.b.d, _wgslsmith_mod_u32(var_0.b.d, 70978u)) << (1u % 32u)) % 32u), var_0.d);
    global0 = firstTrailingBit(_wgslsmith_mult_vec2_i32(countOneBits(var_0.b.a.zy), select(vec2<i32>(_wgslsmith_div_i32(var_0.a.a.x, u_input.a.x), abs(global0.x)), -abs(var_0.b.a.yx), select(vec2<bool>(var_1.x, true), !vec2<bool>(global1.x, true), var_2.x < 0u))));
    return StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-849f, _wgslsmith_div_f32(_wgslsmith_f_op_f32(trunc(810f)), -940f), !all(var_0.a.c.yx)))), ~_wgslsmith_sub_i32(max(-37940i, var_0.b.a.x), ~global0.x) | select(firstLeadingBit(var_0.a.a.x), _wgslsmith_add_i32(u_input.a.x, _wgslsmith_clamp_i32(global0.x, -3062i, global0.x)), true));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = ~vec4<u32>(select(4294967295u, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, 27438u, 1u), vec3<u32>(global2.x, global2.x, 26673u)), !global1.x), 4294967295u, 37922u, global2.x) << (~_wgslsmith_div_vec4_u32(_wgslsmith_mod_vec4_u32(max(vec4<u32>(global2.x, global2.x, global2.x, 68669u), vec4<u32>(global2.x, global2.x, 4294967295u, 937u)), _wgslsmith_clamp_vec4_u32(vec4<u32>(17544u, global2.x, 28186u, 30008u), vec4<u32>(39348u, 54750u, 1u, 4294967295u), vec4<u32>(global2.x, global2.x, global2.x, 1u))), countOneBits(_wgslsmith_clamp_vec4_u32(vec4<u32>(global2.x, 35960u, global2.x, 151u), vec4<u32>(0u, 48476u, global2.x, global2.x), vec4<u32>(0u, global2.x, global2.x, 18162u)))) % vec4<u32>(32u));
    let x = u_input.a;
    s_output = func_1();
}

