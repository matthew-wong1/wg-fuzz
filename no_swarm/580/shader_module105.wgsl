struct Struct_1 {
    a: u32,
    b: vec2<f32>,
}

struct Struct_2 {
    a: u32,
    b: vec3<bool>,
    c: Struct_1,
    d: vec4<i32>,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: u32,
    c: vec4<u32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec2<i32>,
    c: vec2<f32>,
    d: u32,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec4<u32>;

var<private> global2: array<vec2<u32>, 10>;

var<private> global3: array<Struct_1, 32>;

var<private> global4: Struct_2;

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
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

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_index_u32(index: u32, size: u32) -> u32 {
    return index % size;
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
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

fn _wgslsmith_div_vec2_f32(a: vec2<f32>, b: vec2<f32>) -> vec2<f32> {
    return select(vec2<f32>(42f), vec2<f32>(-123f), (abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i])));
}

fn func_1(arg_0: vec3<u32>) -> vec3<bool> {
    let var_0 = u_input.c;
    global3 = array<Struct_1, 32>();
    global0 = global4.c;
    let var_1 = _wgslsmith_sub_vec2_u32(u_input.c.yx, vec2<u32>(global4.c.a, ~_wgslsmith_mod_u32(_wgslsmith_div_u32(44035u, 1u), 35495u)));
    var var_2 = ~(64857u >> (arg_0.x % 32u));
    return select(global4.b, select(global4.b, select(select(select(global4.b, vec3<bool>(global4.b.x, global4.b.x, false), true), global4.b, !vec3<bool>(global4.b.x, false, global4.b.x)), !select(vec3<bool>(false, false, global4.b.x), global4.b, global4.b), global4.b.x), !global4.b), global4.b.x);
}

fn func_3(arg_0: Struct_2, arg_1: i32, arg_2: Struct_2) -> vec4<u32> {
    var var_0 = select(func_1(~vec3<u32>(~global1.x, _wgslsmith_clamp_u32(93329u, 58661u, 4852u), abs(u_input.c.x))).zy, select(select(arg_2.b.yx, select(!global4.b.xx, !global4.b.zx, !arg_2.b.x), arg_2.b.yz), global4.b.zz, vec2<bool>(any(global4.b.yx), any(vec3<bool>(true, true, true)))), true);
    let var_1 = !arg_2.b.x;
    var var_2 = arg_2;
    let var_3 = u_input.a.x;
    var_0 = select(global4.b.yy, !arg_2.b.xz, select(select(vec2<bool>(false && var_1, true), arg_2.b.xz, var_2.b.x), vec2<bool>(any(vec2<bool>(true, true)), false), arg_2.b.yz));
    return u_input.c;
}

fn func_2(arg_0: Struct_1, arg_1: Struct_1, arg_2: f32) -> i32 {
    var var_0 = _wgslsmith_sub_vec4_u32(~vec4<u32>(0u, 91510u, _wgslsmith_sub_u32(_wgslsmith_sub_u32(global1.x, arg_0.a), 3774u), arg_0.a), func_3(Struct_2(1u, !(!vec3<bool>(global4.b.x, false, false)), Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_0.b.x, arg_0.b.x) - vec2<f32>(-282f, 956f))), abs(~global4.d)), -countOneBits(~(-23394i)), Struct_2(arg_0.a, select(vec3<bool>(true, global4.b.x, false), vec3<bool>(false, false, global4.b.x), global4.b.x), Struct_1(4294967295u, _wgslsmith_f_op_vec2_f32(vec2<f32>(arg_1.b.x, 420f) + vec2<f32>(1099f, arg_1.b.x))), ~(vec4<i32>(-1i, 0i, 48626i, -31214i) ^ global4.d))));
    var var_1 = global4.c.b.x;
    let var_2 = _wgslsmith_f_op_f32(f32(-1f) * -1098f);
    var var_3 = -1577f;
    let var_4 = vec2<i32>(_wgslsmith_mod_i32(min(0i, u_input.a.x), 7244i), global4.d.x);
    return u_input.a.x;
}

fn func_4(arg_0: vec3<bool>, arg_1: vec4<bool>, arg_2: Struct_1, arg_3: i32) -> Struct_2 {
    let var_0 = _wgslsmith_f_op_f32(-global4.c.b.x);
    var var_1 = arg_1.xwz;
    var var_2 = Struct_1(_wgslsmith_dot_vec4_u32(_wgslsmith_sub_vec4_u32(_wgslsmith_sub_vec4_u32(max(u_input.c, vec4<u32>(u_input.c.x, 15512u, u_input.c.x, global1.x)), vec4<u32>(u_input.b, u_input.c.x, 21656u, 0u)), u_input.c), abs(select(u_input.c, firstTrailingBit(vec4<u32>(arg_2.a, global1.x, arg_2.a, global4.c.a)), true))), _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_div_f32(1807f, arg_2.b.x) - _wgslsmith_f_op_f32(-global4.c.b.x)), global4.c.b.x)));
    global2 = array<vec2<u32>, 10>();
    var_2 = Struct_1(~(~1u << (_wgslsmith_add_u32(select(u_input.b, 27489u, arg_1.x), ~global1.x) % 32u)), _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_div_vec2_f32(_wgslsmith_f_op_vec2_f32(global0.b - vec2<f32>(var_2.b.x, var_0)), global0.b)))));
    return Struct_2(global1.x, select(!select(!arg_1.zxw, global4.b, select(vec3<bool>(arg_1.x, arg_1.x, arg_0.x), vec3<bool>(false, false, true), var_1.x)), !(!(!vec3<bool>(var_1.x, true, false))), vec3<bool>(247f < var_0, _wgslsmith_f_op_f32(step(1000f, -714f)) > 744f, var_1.x)), global4.c, -vec4<i32>(0i, _wgslsmith_dot_vec2_i32(u_input.a, vec2<i32>(-2147483647i, u_input.a.x)) | select(2147483647i, u_input.a.x, false), u_input.a.x, _wgslsmith_dot_vec3_i32(max(global4.d.wwy, global4.d.xzz), global4.d.www)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_4(!select(global4.b, !func_1(vec3<u32>(0u, u_input.c.x, 4294967295u)), global0.a > ~global4.c.a), select(vec4<bool>(all(vec2<bool>(true, global4.b.x)), false, all(global4.b.zx), func_1(global1.yyz).x), vec4<bool>(false, false, global4.b.x, any(select(vec4<bool>(global4.b.x, global4.b.x, global4.b.x, global4.b.x), vec4<bool>(global4.b.x, global4.b.x, false, global4.b.x), vec4<bool>(global4.b.x, global4.b.x, true, global4.b.x)))), true), global4.c, _wgslsmith_clamp_i32(-u_input.a.x & firstLeadingBit(-44629i), _wgslsmith_div_i32(global4.d.x & global4.d.x, func_2(global3[_wgslsmith_index_u32(u_input.b, 32u)], Struct_1(0u, vec2<f32>(global4.c.b.x, 1838f)), -625f)), _wgslsmith_mult_i32(_wgslsmith_add_i32(-8807i, u_input.a.x), -60363i)) | _wgslsmith_dot_vec2_i32(min(global4.d.yz, global4.d.zx), _wgslsmith_mod_vec2_i32(_wgslsmith_div_vec2_i32(vec2<i32>(-2147483647i, -18182i), vec2<i32>(global4.d.x, -51358i)), firstLeadingBit(global4.d.zx))));
    var var_1 = Struct_2(~u_input.c.x, vec3<bool>(global4.b.x, true, var_0.b.x), global3[_wgslsmith_index_u32(min(u_input.b, ~_wgslsmith_dot_vec3_u32(~u_input.c.wxz, _wgslsmith_sub_vec3_u32(global1.zyx, vec3<u32>(global1.x, 34034u, 0u)))), 32u)], vec4<i32>(-19701i, global4.d.x | u_input.a.x, 1i, 1i >> (func_4(!global4.b, vec4<bool>(true, true, true, true), var_0.c, ~var_0.d.x).a % 32u)));
    let var_2 = func_4(func_4(vec3<bool>(!var_1.b.x, true, var_1.b.x), select(select(!vec4<bool>(var_0.b.x, global4.b.x, var_0.b.x, true), select(vec4<bool>(true, true, var_0.b.x, false), vec4<bool>(var_0.b.x, true, var_0.b.x, true), var_0.b.x), global4.b.x), vec4<bool>(!var_0.b.x, var_0.b.x, 48582i <= var_1.d.x, false), var_0.b.x), func_4(func_1(vec3<u32>(0u, 22309u, 1u)), !select(vec4<bool>(var_0.b.x, var_0.b.x, var_0.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, false, false), var_0.b.x), func_4(func_4(var_1.b, vec4<bool>(var_0.b.x, global4.b.x, true, false), Struct_1(1u, global4.c.b), global4.d.x).b, select(vec4<bool>(true, var_1.b.x, false, var_0.b.x), vec4<bool>(global4.b.x, true, true, false), true), var_1.c, 54536i).c, _wgslsmith_dot_vec2_i32(global4.d.yw, vec2<i32>(-2147483647i, 0i))).c, -(~var_1.d.x)).b, select(select(select(vec4<bool>(true, global4.b.x, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, var_0.b.x, true, var_1.b.x)), select(vec4<bool>(false, global4.b.x, global4.b.x, true), !vec4<bool>(var_1.b.x, true, true, var_1.b.x), vec4<bool>(true, true, global4.b.x, true)), select(select(vec4<bool>(true, var_1.b.x, var_1.b.x, var_1.b.x), vec4<bool>(false, var_1.b.x, true, var_0.b.x), vec4<bool>(false, global4.b.x, false, true)), vec4<bool>(false, false, var_0.b.x, true), all(global4.b.xx))), !(!(!vec4<bool>(var_1.b.x, var_0.b.x, var_1.b.x, global4.b.x))), !(!(!vec4<bool>(var_1.b.x, false, global4.b.x, var_0.b.x)))), func_4(var_1.b, vec4<bool>(all(global4.b.yx), var_1.b.x, func_1(_wgslsmith_add_vec3_u32(u_input.c.xxy, global1.yyx)).x, all(vec4<bool>(false, var_0.b.x, global4.b.x, global4.b.x))), func_4(func_4(select(vec3<bool>(false, true, false), var_1.b, var_0.b.x), select(vec4<bool>(global4.b.x, false, false, var_1.b.x), vec4<bool>(global4.b.x, var_0.b.x, false, global4.b.x), var_0.b.x), func_4(vec3<bool>(var_1.b.x, var_1.b.x, var_0.b.x), vec4<bool>(var_0.b.x, var_1.b.x, global4.b.x, global4.b.x), var_1.c, 4317i).c, var_1.d.x).b, !select(vec4<bool>(true, false, true, var_0.b.x), vec4<bool>(var_0.b.x, true, var_1.b.x, false), vec4<bool>(true, var_0.b.x, true, false)), Struct_1(~69083u, vec2<f32>(var_1.c.b.x, var_1.c.b.x)), _wgslsmith_clamp_i32(_wgslsmith_dot_vec4_i32(vec4<i32>(var_0.d.x, var_0.d.x, -1i, 1i), vec4<i32>(var_0.d.x, -23454i, 15255i, u_input.a.x)), _wgslsmith_dot_vec4_i32(vec4<i32>(75674i, var_1.d.x, global4.d.x, u_input.a.x), global4.d), u_input.a.x)).c, min(-59205i, _wgslsmith_mod_i32(global4.d.x, _wgslsmith_sub_i32(1130i, var_0.d.x)))).c, ~global4.d.x);
    let var_3 = _wgslsmith_clamp_i32(abs(var_1.d.x), func_4(func_4(vec3<bool>(true, !var_1.b.x, any(vec3<bool>(var_1.b.x, global4.b.x, global4.b.x))), vec4<bool>(!global4.b.x, true, all(vec2<bool>(false, true)), true & var_0.b.x), func_4(func_1(vec3<u32>(0u, var_1.c.a, 1u)), !vec4<bool>(true, global4.b.x, var_2.b.x, false), Struct_1(17628u, vec2<f32>(1060f, -475f)), global4.d.x | 52026i).c, ~global4.d.x).b, !select(!vec4<bool>(false, var_0.b.x, var_1.b.x, true), !vec4<bool>(var_2.b.x, var_1.b.x, true, false), -1868f <= var_0.c.b.x), func_4(!func_4(vec3<bool>(var_0.b.x, true, var_0.b.x), vec4<bool>(var_0.b.x, true, global4.b.x, false), Struct_1(8052u, var_2.c.b), global4.d.x).b, !(!vec4<bool>(true, var_2.b.x, false, global4.b.x)), var_0.c, 28963i).c, var_0.d.x ^ (2147483647i >> (_wgslsmith_dot_vec2_u32(u_input.c.zx, vec2<u32>(global4.a, var_0.a)) % 32u))).d.x, ~(~0i));
    var var_4 = var_2.d.x;
    let var_5 = func_4(vec3<bool>(!func_1(vec3<u32>(1u, var_0.c.a, global1.x) | vec3<u32>(global4.a, 26685u, global1.x)).x, false, !(var_0.c.a > global4.c.a)), select(!select(!vec4<bool>(var_0.b.x, var_0.b.x, global4.b.x, global4.b.x), !vec4<bool>(var_2.b.x, var_0.b.x, var_2.b.x, true), false), vec4<bool>(all(var_2.b), func_4(var_0.b, select(vec4<bool>(var_2.b.x, false, global4.b.x, true), vec4<bool>(var_2.b.x, false, var_0.b.x, false), vec4<bool>(false, var_0.b.x, false, true)), global4.c, var_3).b.x, true & (51084i > global4.d.x), !any(vec2<bool>(false, false))), vec4<bool>(false, 10006i <= _wgslsmith_mod_i32(-2147483647i, var_2.d.x), true, any(vec4<bool>(false, var_1.b.x, var_0.b.x, true)))), func_4(vec3<bool>(0i > firstTrailingBit(var_1.d.x), var_2.b.x, var_1.b.x), select(!vec4<bool>(false, global4.b.x, false, global4.b.x), select(vec4<bool>(false, true, false, var_1.b.x), select(vec4<bool>(true, true, var_1.b.x, var_2.b.x), vec4<bool>(true, var_1.b.x, true, false), true), !vec4<bool>(global4.b.x, false, false, global4.b.x)), !(!vec4<bool>(true, var_0.b.x, var_1.b.x, true))), Struct_1(67519u, _wgslsmith_f_op_vec2_f32(func_4(var_0.b, vec4<bool>(false, var_0.b.x, var_2.b.x, true), Struct_1(u_input.b, vec2<f32>(-713f, var_1.c.b.x)), -2147483647i).c.b - _wgslsmith_f_op_vec2_f32(-vec2<f32>(-738f, global4.c.b.x)))), ~(-29070i)).c, ~1i).c;
    global0 = global4.c;
    global3 = array<Struct_1, 32>();
    var var_6 = _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -112f) * var_0.c.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(abs(~(~u_input.c)), var_0.d.wy, _wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(floor(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-var_1.c.b)))))), countOneBits(~select(var_0.c.a, ~4294967295u, var_2.b.x)), ~(~(~1u)));
}

