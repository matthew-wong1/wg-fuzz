struct Struct_1 {
    a: vec4<bool>,
    b: vec3<f32>,
    c: vec2<u32>,
    d: vec3<bool>,
}

struct Struct_2 {
    a: bool,
    b: f32,
    c: bool,
}

struct Struct_3 {
    a: f32,
}

struct Struct_4 {
    a: Struct_1,
    b: vec2<i32>,
}

struct Struct_5 {
    a: Struct_2,
}

struct UniformBuffer {
    a: i32,
    b: i32,
    c: i32,
    d: vec3<u32>,
}

struct StorageBuffer {
    a: i32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<u32>;

var<private> global1: vec2<i32> = vec2<i32>(i32(-2147483648), 0i);

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_add_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a + b, a, a > (vec2<u32>(4294967295u) - b));
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn func_3(arg_0: i32, arg_1: Struct_4) -> bool {
    let var_0 = Struct_5(Struct_2(true, arg_1.a.b.x, ((false != arg_1.a.a.x) && true) & false));
    let var_1 = ~u_input.d.x;
    let var_2 = Struct_1(vec4<bool>(var_0.a.c, all(!select(arg_1.a.a.wx, vec2<bool>(true, var_0.a.a), arg_1.a.d.yz)), var_0.a.a, true), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(arg_1.a.b - arg_1.a.b)))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(vec3<f32>(1592f, 1063f, arg_1.a.b.x) * _wgslsmith_f_op_vec3_f32(ceil(vec3<f32>(var_0.a.b, arg_1.a.b.x, var_0.a.b)))) - vec3<f32>(_wgslsmith_f_op_f32(var_0.a.b * -1010f), -548f, -732f))), max(arg_1.a.c, vec2<u32>(46379u, 0u)), !select(!(!arg_1.a.d), select(select(arg_1.a.d, arg_1.a.d, vec3<bool>(true, var_0.a.a, true)), select(arg_1.a.d, arg_1.a.d, arg_1.a.a.x), select(arg_1.a.d.x, false, var_0.a.c)), arg_1.a.d.x));
    return !all(!(!vec3<bool>(true, arg_1.a.a.x, var_0.a.c)));
}

fn func_2() -> Struct_5 {
    var var_0 = vec4<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(min(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-1000f * 1000f) + -143f), -590f))), -586f, 331f, -688f);
    var var_1 = 0i;
    var var_2 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(floor(var_0.x))));
    global0 = firstLeadingBit(_wgslsmith_add_vec2_u32(~(~u_input.d.zz), vec2<u32>(_wgslsmith_dot_vec3_u32(vec3<u32>(u_input.d.x, global0.x, u_input.d.x), u_input.d), global0.x))) & _wgslsmith_add_vec2_u32(_wgslsmith_mod_vec2_u32(vec2<u32>(73080u, global0.x), vec2<u32>(global0.x, global0.x) ^ vec2<u32>(u_input.d.x, u_input.d.x)) ^ countOneBits(reverseBits(vec2<u32>(u_input.d.x, 0u))), vec2<u32>(16593u, ~_wgslsmith_mult_u32(0u, 4294967295u)));
    return Struct_5(Struct_2(any(vec4<bool>(true, true, true, true)), _wgslsmith_f_op_f32(_wgslsmith_div_f32(var_2.a, _wgslsmith_f_op_f32(max(-778f, var_2.a))) - var_0.x), select((u_input.a < u_input.c) & true, func_3(1i, Struct_4(Struct_1(vec4<bool>(true, true, true, true), vec3<f32>(1105f, var_2.a, var_0.x), u_input.d.zz, vec3<bool>(false, false, false)), vec2<i32>(-47927i, 2147483647i))) || func_3(-1i, Struct_4(Struct_1(vec4<bool>(false, true, true, true), vec3<f32>(var_2.a, var_2.a, var_0.x), u_input.d.yx, vec3<bool>(true, true, true)), vec2<i32>(u_input.a, u_input.b))), _wgslsmith_dot_vec2_u32(vec2<u32>(u_input.d.x, 2521u), u_input.d.zy) < 12591u)));
}

fn func_1(arg_0: f32, arg_1: vec3<i32>) -> Struct_3 {
    let var_0 = _wgslsmith_clamp_u32(u_input.d.x, u_input.d.x << (abs(4294967295u) % 32u), select(reverseBits(u_input.d.x), ~(~global0.x) << (~u_input.d.x % 32u), true));
    let var_1 = func_2();
    global1 = ~(vec2<i32>(max(0i, arg_1.x), 0i) | vec2<i32>(global1.x, reverseBits(global1.x)));
    let var_2 = _wgslsmith_f_op_vec2_f32(select(vec2<f32>(arg_0, _wgslsmith_f_op_f32(1f - _wgslsmith_f_op_f32(-var_1.a.b))), vec2<f32>(_wgslsmith_f_op_f32(abs(-717f)), -1673f), select(select(select(!vec2<bool>(var_1.a.a, var_1.a.c), vec2<bool>(true, true), any(vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.c, true))), !vec2<bool>(var_1.a.a, true), false), !(!select(vec2<bool>(false, var_1.a.a), vec2<bool>(var_1.a.c, var_1.a.a), vec2<bool>(true, var_1.a.c))), any(vec3<bool>(func_2().a.c, all(vec4<bool>(false, true, var_1.a.a, true)), false)))));
    var var_3 = !select(select(select(vec4<bool>(false, true, false, var_1.a.c), select(vec4<bool>(true, false, var_1.a.a, false), vec4<bool>(var_1.a.a, var_1.a.a, var_1.a.a, var_1.a.a), vec4<bool>(false, var_1.a.a, var_1.a.a, true)), var_1.a.a), !vec4<bool>(true, false, true, var_1.a.c), !(-486f != arg_0)), !(!select(vec4<bool>(false, true, var_1.a.a, var_1.a.a), vec4<bool>(true, var_1.a.c, true, true), vec4<bool>(var_1.a.c, false, var_1.a.c, var_1.a.c))), true);
    return Struct_3(_wgslsmith_f_op_f32(round(-404f)));
}

fn func_4(arg_0: Struct_5, arg_1: vec3<u32>, arg_2: Struct_3, arg_3: u32) -> vec2<i32> {
    var var_0 = select(_wgslsmith_clamp_vec3_u32(u_input.d, (u_input.d >> (_wgslsmith_clamp_vec3_u32(vec3<u32>(68187u, global0.x, arg_1.x), u_input.d, u_input.d) % vec3<u32>(32u))) ^ _wgslsmith_div_vec3_u32(arg_1 ^ vec3<u32>(global0.x, 59149u, 37021u), firstLeadingBit(arg_1)), countOneBits(arg_1)), u_input.d, select(vec3<bool>(arg_0.a.a, _wgslsmith_f_op_f32(300f - arg_2.a) < arg_2.a, !arg_0.a.a), vec3<bool>(true, arg_0.a.c, func_3(global1.x, Struct_4(Struct_1(vec4<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.a, arg_0.a.a), vec3<f32>(arg_0.a.b, arg_2.a, 526f), vec2<u32>(u_input.d.x, u_input.d.x), vec3<bool>(arg_0.a.c, arg_0.a.c, arg_0.a.c)), vec2<i32>(global1.x, -28210i))) | !arg_0.a.a), false | func_2().a.c));
    var_0 = _wgslsmith_add_vec3_u32(~vec3<u32>(abs(arg_1.x), _wgslsmith_clamp_u32(20588u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 1u, 1u, 72289u), vec4<u32>(var_0.x, arg_3, 79219u, 0u)), _wgslsmith_dot_vec2_u32(u_input.d.xz, vec2<u32>(arg_1.x, var_0.x))), (arg_1.x & arg_1.x) >> (~arg_1.x % 32u)), u_input.d);
    global0 = vec2<u32>(~countOneBits(_wgslsmith_mod_u32(1u, _wgslsmith_mod_u32(global0.x, 95029u))), u_input.d.x ^ ~arg_3);
    global0 = arg_1.xy;
    let var_1 = vec2<u32>(0u, _wgslsmith_add_u32(4294967295u, firstLeadingBit(abs(arg_3)))) ^ var_0.zy;
    return vec2<i32>(countOneBits(1i), -u_input.c ^ ((firstTrailingBit(1i) ^ countOneBits(1i)) >> (~var_0.x % 32u)));
}

@compute
@workgroup_size(1)
fn main() {
    global1 = abs(func_4(Struct_5(Struct_2(true, _wgslsmith_f_op_f32(floor(161f)), true)), u_input.d, func_1(1f, ~vec3<i32>(global1.x, global1.x, global1.x)), _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 1286u) << (select(vec2<u32>(1u, 1u), vec2<u32>(u_input.d.x, 4411u), vec2<bool>(true, false)) % vec2<u32>(32u)), _wgslsmith_mult_vec2_u32(vec2<u32>(0u, global0.x), vec2<u32>(global0.x, 13274u)) ^ select(u_input.d.zz, u_input.d.yy, false))));
    var var_0 = Struct_5(Struct_2(all(vec4<bool>(all(vec2<bool>(true, true)), true, false, true)), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-2482f, _wgslsmith_f_op_f32(ceil(-721f)))), true));
    let var_1 = Struct_4(Struct_1(select(select(!vec4<bool>(var_0.a.a, false, var_0.a.c, var_0.a.c), select(vec4<bool>(var_0.a.c, true, false, var_0.a.c), vec4<bool>(false, var_0.a.a, var_0.a.a, var_0.a.a), vec4<bool>(false, true, true, true)), var_0.a.a), vec4<bool>(true, true, true, true), select(vec4<bool>(var_0.a.c, true, var_0.a.a, var_0.a.c), !vec4<bool>(var_0.a.c, var_0.a.c, false, var_0.a.a), true)), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.b, var_0.a.b, var_0.a.b)) - _wgslsmith_f_op_vec3_f32(max(vec3<f32>(var_0.a.b, -544f, var_0.a.b), vec3<f32>(-753f, var_0.a.b, 357f))))), _wgslsmith_mult_vec2_u32(firstTrailingBit(_wgslsmith_add_vec2_u32(u_input.d.yx, vec2<u32>(global0.x, 42338u))), ~_wgslsmith_mult_vec2_u32(vec2<u32>(5981u, 61168u), u_input.d.zx)), !select(vec3<bool>(true, true, true), vec3<bool>(var_0.a.c, true, var_0.a.a), any(vec3<bool>(var_0.a.c, false, var_0.a.c)))), -(~vec2<i32>(-22208i, -14650i)));
    global1 = vec2<i32>(31111i, min(firstTrailingBit(global1.x), var_1.b.x));
    var var_2 = reverseBits(-vec3<i32>(_wgslsmith_mult_i32(-1i, -global1.x), u_input.b, global1.x));
    var var_3 = var_1;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_i32(_wgslsmith_clamp_i32(_wgslsmith_dot_vec3_i32(vec3<i32>(-20978i, var_2.x, var_2.x), vec3<i32>(var_2.x, var_2.x, var_3.b.x)), countOneBits(-87645i), 1i) ^ u_input.c, 9542i), -var_3.b.x);
}

