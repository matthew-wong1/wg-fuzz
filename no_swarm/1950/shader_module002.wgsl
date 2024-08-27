struct Struct_1 {
    a: vec2<u32>,
    b: vec4<i32>,
    c: bool,
    d: u32,
}

struct Struct_2 {
    a: u32,
    b: Struct_1,
    c: vec4<bool>,
    d: vec3<f32>,
}

struct Struct_3 {
    a: vec4<u32>,
    b: Struct_1,
}

struct Struct_4 {
    a: Struct_2,
    b: f32,
}

struct Struct_5 {
    a: Struct_4,
    b: Struct_2,
    c: vec2<i32>,
    d: bool,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec2<f32>,
    b: vec2<u32>,
    c: f32,
    d: vec2<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec4<f32>, 8>;

var<private> global1: Struct_5;

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a / b, a / vec3<i32>(2i), ((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: u32) -> vec2<bool> {
    var var_0 = Struct_5(Struct_4(global1.a.a, _wgslsmith_f_op_f32(select(-1757f, _wgslsmith_f_op_f32(floor(_wgslsmith_div_f32(-1625f, -1025f))), select(select(false, global1.a.a.b.c, global1.d), true, -1i < global1.c.x)))), Struct_2(58281u, Struct_1(vec2<u32>(1u, 28078u) >> (vec2<u32>(14333u, global1.a.a.a) % vec2<u32>(32u)), -(~vec4<i32>(u_input.a.x, -1i, -53239i, u_input.a.x)), true, _wgslsmith_mult_u32(~40705u, ~global1.a.a.a)), global1.a.a.c, global1.b.d), _wgslsmith_div_vec2_i32(u_input.a.zz, vec2<i32>(_wgslsmith_div_i32(u_input.a.x, i32(-1i) * -62165i), _wgslsmith_mult_i32(u_input.a.x, u_input.a.x) >> (1u % 32u))), true);
    let var_1 = _wgslsmith_mod_u32(15805u, var_0.b.a);
    var var_2 = Struct_3(~(~reverseBits(vec4<u32>(var_0.b.b.a.x, 1u, var_0.b.b.a.x, 4294967295u)) >> (max(vec4<u32>(4294967295u, var_1, 23824u, 0u), abs(vec4<u32>(1u, arg_0, var_1, 0u))) % vec4<u32>(32u))), var_0.b.b);
    var var_3 = !vec4<bool>(var_0.b.c.x, var_0.b.b.c, all(select(global1.a.a.c, !var_0.b.c, all(vec2<bool>(true, global1.d)))), !select(!var_2.b.c, true, true));
    var var_4 = vec3<i32>(_wgslsmith_clamp_i32(1i, i32(-1i) * -global1.c.x, -u_input.a.x), ~(-2147483647i), u_input.a.x) ^ ~vec3<i32>(1i, 0i, -60020i);
    return vec2<bool>(!(_wgslsmith_dot_vec2_i32(var_2.b.b.zw, vec2<i32>(var_0.c.x, var_4.x)) < 1i), !select(select(!global1.b.b.c, any(vec2<bool>(false, var_0.b.b.c)), var_3.x & global1.d), (var_2.a.x < 1u) && (var_4.x < 1i), any(!vec3<bool>(global1.a.a.c.x, true, var_3.x))));
}

fn func_2() -> Struct_5 {
    let var_0 = global1.b.d.zy;
    global0 = array<vec4<f32>, 8>();
    global0 = array<vec4<f32>, 8>();
    global1 = Struct_5(global1.a, global1.b, global1.c, 83911u > abs(_wgslsmith_dot_vec3_u32(~vec3<u32>(global1.a.a.b.a.x, global1.a.a.b.a.x, 0u), _wgslsmith_div_vec3_u32(vec3<u32>(10759u, global1.b.a, 14582u), vec3<u32>(global1.a.a.b.a.x, 40435u, global1.a.a.b.a.x)))));
    global1 = Struct_5(global1.a, global1.b, _wgslsmith_div_vec2_i32(u_input.a.yz, u_input.a.zx), any(select(func_3(global1.a.a.b.a.x), !global1.b.c.xx, any(!vec2<bool>(global1.a.a.c.x, global1.b.c.x)))));
    return Struct_5(global1.a, global1.b, vec2<i32>(1i, 1i), !global1.d == any(global1.a.a.c));
}

fn func_4(arg_0: vec3<i32>, arg_1: bool, arg_2: vec3<bool>, arg_3: Struct_5) -> Struct_5 {
    var var_0 = vec3<bool>(global1.d, true, true);
    let var_1 = 2147483647i;
    var var_2 = arg_3;
    var var_3 = -arg_0.x;
    var var_4 = arg_1;
    return Struct_5(global1.a, func_2().b, var_2.b.b.b.zx, !(!(var_0.x & false)));
}

fn func_1(arg_0: f32) -> Struct_4 {
    global1 = func_4(-vec3<i32>(u_input.a.x, abs(~global1.a.a.b.b.x), 44396i), true, !(!global1.a.a.c.zzz), func_2());
    global1 = Struct_5(global1.a, func_4(global1.a.a.b.b.zwy, !(!(!global1.a.a.c.x)), select(func_4(-vec3<i32>(1i, global1.b.b.b.x, -15195i), true, !vec3<bool>(global1.d, global1.a.a.c.x, global1.a.a.b.c), Struct_5(global1.a, global1.b, vec2<i32>(u_input.a.x, global1.a.a.b.b.x), false)).a.a.c.www, vec3<bool>(!global1.d, true, any(vec3<bool>(global1.d, global1.a.a.c.x, false))), global1.b.c.zxz), func_4(_wgslsmith_div_vec3_i32(vec3<i32>(56421i, u_input.a.x, global1.b.b.b.x), ~vec3<i32>(-2147483647i, 2147483647i, u_input.a.x)), !(-1225f >= global1.b.d.x), vec3<bool>(true, true, true), Struct_5(Struct_4(global1.a.a, 658f), Struct_2(97708u, Struct_1(vec2<u32>(9933u, 10782u), vec4<i32>(u_input.a.x, global1.c.x, u_input.a.x, -1i), global1.a.a.b.c, 76695u), global1.a.a.c, global1.a.a.d), vec2<i32>(-38380i, global1.b.b.b.x), false))).a.a, countOneBits(vec2<i32>(select(reverseBits(global1.a.a.b.b.x), firstTrailingBit(u_input.a.x), global1.b.c.x && global1.a.a.c.x), reverseBits(-u_input.a.x))), select(!all(!global1.b.c), func_3(~global1.b.b.a.x).x & (all(vec3<bool>(false, false, false)) & true), func_3(~(~global1.b.b.d)).x));
    var var_0 = Struct_1(~global1.a.a.b.a, min(vec4<i32>(func_2().b.b.b.x, _wgslsmith_clamp_i32(_wgslsmith_sub_i32(global1.b.b.b.x, 16461i), u_input.a.x, _wgslsmith_sub_i32(0i, 8975i)), _wgslsmith_mult_i32(1i, -2147483647i), _wgslsmith_dot_vec2_i32(-vec2<i32>(7065i, 31947i), abs(vec2<i32>(global1.a.a.b.b.x, u_input.a.x)))), ~max(~vec4<i32>(-34706i, -1i, u_input.a.x, -2147483647i), global1.b.b.b)), global1.d, ~(~0u & ~firstTrailingBit(global1.a.a.a)));
    var var_1 = vec3<i32>(func_2().a.a.b.b.x, ~countOneBits(u_input.a.x), 21335i);
    var var_2 = var_0.b.x;
    return func_4(vec3<i32>(min(-var_0.b.x ^ -2147483647i, global1.c.x), _wgslsmith_dot_vec2_i32(vec2<i32>(11039i, u_input.a.x), -vec2<i32>(global1.b.b.b.x, 2147483647i)) & 26052i, var_0.b.x), !all(!func_3(var_0.d)), global1.a.a.c.wxx, func_2()).a;
}

@compute
@workgroup_size(1)
fn main() {
    global1 = Struct_5(func_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global1.b.d.x) + _wgslsmith_f_op_f32(select(310f, global1.a.b, false))))), func_4(u_input.a, select(true, !any(vec2<bool>(true, true)), global1.a.a.b.c), !vec3<bool>(!global1.d, true, func_4(vec3<i32>(u_input.a.x, 2147483647i, 1i), true, global1.a.a.c.wxy, Struct_5(global1.a, global1.b, vec2<i32>(-1i, -1i), global1.d)).b.b.c), Struct_5(func_4(-u_input.a, global1.d, global1.b.c.wyw, Struct_5(global1.a, Struct_2(0u, global1.a.a.b, vec4<bool>(global1.d, false, global1.a.a.c.x, true), vec3<f32>(-829f, 1501f, global1.b.d.x)), vec2<i32>(1i, -1i), true)).a, global1.b, vec2<i32>(_wgslsmith_sub_i32(u_input.a.x, u_input.a.x), ~global1.b.b.b.x), _wgslsmith_mod_u32(global1.b.b.d, 1u) >= max(0u, global1.a.a.a))).b, _wgslsmith_mod_vec2_i32(~global1.c, vec2<i32>(_wgslsmith_mod_i32(func_2().b.b.b.x, -41931i), _wgslsmith_mod_i32(-22231i, u_input.a.x))), u_input.a.x <= ~1i);
    let var_0 = global1.a;
    var var_1 = true;
    global1 = Struct_5(global1.a, Struct_2(_wgslsmith_div_u32(106293u >> (max(var_0.a.b.a.x, 1u) % 32u), countOneBits(global1.a.a.b.a.x)), global1.b.b, vec4<bool>(false, false, global1.b.b.c, true), global1.a.a.d), _wgslsmith_div_vec2_i32(_wgslsmith_add_vec2_i32(vec2<i32>(~53428i, var_0.a.b.b.x), func_4(vec3<i32>(0i, -2147483647i, 1i), global1.a.a.c.x, vec3<bool>(global1.d, var_0.a.c.x, global1.d), Struct_5(Struct_4(Struct_2(28932u, Struct_1(vec2<u32>(global1.a.a.a, 112322u), vec4<i32>(0i, global1.a.a.b.b.x, 1i, global1.c.x), true, 29887u), var_0.a.c, var_0.a.d), 1065f), global1.a.a, var_0.a.b.b.xz, global1.a.a.c.x)).b.b.b.xy >> (~var_0.a.b.a % vec2<u32>(32u))), abs(global1.c)), !global1.d);
    global1 = func_2();
    let var_2 = vec2<u32>(_wgslsmith_mod_u32(global1.b.a, _wgslsmith_div_u32(8892u, ~var_0.a.a)), _wgslsmith_dot_vec3_u32(~reverseBits(~vec3<u32>(4294967295u, var_0.a.b.a.x, var_0.a.b.a.x)), reverseBits(~min(vec3<u32>(7609u, var_0.a.b.d, 4294967295u), vec3<u32>(var_0.a.b.a.x, 0u, var_0.a.b.d)))));
    var var_3 = var_0.a;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(abs(global1.a.a.d.zx))), ~var_0.a.b.a, -1000f, _wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(var_0.a.d.x - -850f), _wgslsmith_f_op_f32(-var_0.a.d.x)))));
}

