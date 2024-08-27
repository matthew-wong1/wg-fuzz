struct Struct_1 {
    a: bool,
    b: vec3<bool>,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: vec3<u32>,
    d: bool,
    e: u32,
}

struct Struct_3 {
    a: vec2<u32>,
    b: Struct_1,
}

struct UniformBuffer {
    a: vec2<u32>,
    b: vec2<u32>,
}

struct StorageBuffer {
    a: vec4<i32>,
    b: f32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_3;

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_mult_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a * b, a, ((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i]))));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_sub_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> vec3<i32> {
    return select(a - b, a, ((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a / b, a / vec2<u32>(2u), (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: Struct_2, arg_1: Struct_3) -> vec4<f32> {
    let var_0 = arg_0;
    global0 = Struct_3(~vec2<u32>(_wgslsmith_dot_vec3_u32(~arg_0.c, countOneBits(vec3<u32>(4294967295u, var_0.e, 1u))), ~var_0.e), Struct_1(true, arg_0.a.b));
    let var_1 = Struct_2(arg_0.b, Struct_1(all(vec3<bool>(all(arg_0.b.b), arg_0.d, true)), select(select(arg_0.a.b, !vec3<bool>(false, global0.b.b.x, arg_0.b.a), global0.b.b), vec3<bool>(all(vec2<bool>(true, var_0.d)), var_0.a.a, all(arg_0.b.b)), true)), var_0.c, true | any(select(vec4<bool>(true, true, true, true), !vec4<bool>(arg_1.b.b.x, var_0.b.b.x, false, arg_0.d), select(vec4<bool>(true, true, arg_1.b.a, false), vec4<bool>(false, var_0.b.b.x, arg_1.b.b.x, global0.b.a), vec4<bool>(false, var_0.d, false, global0.b.a)))), _wgslsmith_sub_u32(_wgslsmith_add_u32(var_0.e, ~_wgslsmith_mult_u32(arg_1.a.x, global0.a.x)), countOneBits(firstTrailingBit(~0u))));
    let var_2 = global0.b;
    global0 = arg_1;
    return _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(vec4<f32>(-1548f, 242f, 140f, -1000f) + _wgslsmith_f_op_vec4_f32(vec4<f32>(1075f, -1000f, 1096f, 255f) + vec4<f32>(1277f, 399f, 2307f, -169f)))), _wgslsmith_f_op_vec4_f32(select(_wgslsmith_f_op_vec4_f32(exp2(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(170f, -706f, 175f, -1253f))))), vec4<f32>(_wgslsmith_f_op_f32(select(390f, -662f, global0.b.a)), _wgslsmith_f_op_f32(f32(-1f) * -968f), 1041f, _wgslsmith_f_op_f32(f32(-1f) * -892f)), vec4<bool>(var_1.d, true, true, true))), arg_1.b.b.x)) * vec4<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(-1647f, 1000f))) - _wgslsmith_div_f32(1000f, -440f)), -1223f, _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(-257f)) - 1f)), -634f));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_3(_wgslsmith_mult_vec2_u32(max(_wgslsmith_div_vec2_u32(global0.a << (u_input.b % vec2<u32>(32u)), global0.a), countOneBits(vec2<u32>(16521u, u_input.b.x))), global0.a), Struct_1(!global0.b.b.x, global0.b.b));
    global0 = var_0;
    let var_1 = _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(sign(_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(trunc(vec4<f32>(-165f, -1040f, -107f, -713f))), _wgslsmith_f_op_vec4_f32(func_3(Struct_2(Struct_1(true, vec3<bool>(var_0.b.a, global0.b.a, var_0.b.b.x)), global0.b, vec3<u32>(u_input.a.x, 4294967295u, 4294967295u), global0.b.a, 36430u), Struct_3(vec2<u32>(u_input.b.x, 1u), var_0.b)))))) + vec4<f32>(513f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(ceil(-621f)) + _wgslsmith_f_op_f32(sign(_wgslsmith_f_op_f32(-1001f - 425f)))), _wgslsmith_f_op_f32(f32(-1f) * -384f), -522f));
    var var_2 = 1i;
    var var_3 = var_1.zz;
    return global0.b;
}

fn func_4(arg_0: Struct_3) -> Struct_2 {
    var var_0 = reverseBits(~min(arg_0.a.x, u_input.b.x));
    let var_1 = ~global0.a.x;
    global0 = Struct_3(~max(vec2<u32>(~arg_0.a.x, 20750u), vec2<u32>(0u, _wgslsmith_clamp_u32(16958u, global0.a.x, var_1))), Struct_1(true, global0.b.b));
    let var_2 = -_wgslsmith_dot_vec3_i32(vec3<i32>(_wgslsmith_dot_vec3_i32(_wgslsmith_sub_vec3_i32(vec3<i32>(-27537i, -29076i, 1i), vec3<i32>(6938i, -5239i, -11190i)), vec3<i32>(1i, -1047i, 52788i) >> (vec3<u32>(global0.a.x, 47188u, 0u) % vec3<u32>(32u))), _wgslsmith_sub_i32(35360i, _wgslsmith_div_i32(-20470i, -2147483647i)), -1i), vec3<i32>(_wgslsmith_dot_vec3_i32(vec3<i32>(0i, -78270i, 2147483647i), vec3<i32>(85194i, 2147483647i, -1i)), 10584i, reverseBits(0i)) << (vec3<u32>(global0.a.x, ~0u, _wgslsmith_clamp_u32(23971u, arg_0.a.x, 66628u)) % vec3<u32>(32u)));
    let var_3 = vec4<bool>(true, !(-339i >= ~var_2), arg_0.b.a, true | !any(global0.b.b.xx));
    return Struct_2(Struct_1(var_3.x, arg_0.b.b), func_2(), firstTrailingBit(~vec3<u32>(27222u, ~global0.a.x, firstLeadingBit(100536u))), global0.b.a, var_1);
}

fn func_1(arg_0: vec4<f32>, arg_1: vec2<i32>, arg_2: Struct_3, arg_3: Struct_1) -> f32 {
    var var_0 = vec2<f32>(-1444f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(arg_0.x - arg_0.x)))) - -1352f));
    let var_1 = func_4(Struct_3(~(~vec2<u32>(31785u, u_input.b.x)), func_2()));
    var var_2 = var_1;
    let var_3 = Struct_2(var_2.a, arg_2.b, firstTrailingBit(vec3<u32>(arg_2.a.x, min(4294967295u, 25695u), ~var_2.e)), all(select(select(!vec3<bool>(false, true, arg_3.b.x), select(vec3<bool>(var_2.a.b.x, var_1.a.a, false), arg_3.b, false), var_2.d), vec3<bool>(false, func_2().a, true), any(vec4<bool>(true, global0.b.a, var_2.a.b.x, true)))), _wgslsmith_div_u32(arg_2.a.x, 1u));
    let var_4 = ~_wgslsmith_add_vec4_u32(_wgslsmith_div_vec4_u32(vec4<u32>(61796u, global0.a.x, 60822u, var_3.e), vec4<u32>(67929u, u_input.b.x, arg_2.a.x, global0.a.x)), ~_wgslsmith_mod_vec4_u32(vec4<u32>(7342u, 1u, 4294967295u, 8524u), vec4<u32>(global0.a.x, var_1.e, u_input.b.x, 1u))) | select(~abs(vec4<u32>(var_3.c.x, var_3.c.x, u_input.a.x, 0u)) & (~vec4<u32>(18339u, 29741u, 66590u, 116778u) >> (vec4<u32>(var_2.e, 7398u, 28421u, arg_2.a.x) % vec4<u32>(32u))), _wgslsmith_clamp_vec4_u32(vec4<u32>(u_input.b.x, 0u, 1u, ~var_3.e), select(abs(vec4<u32>(global0.a.x, 0u, 1u, 29520u)), countOneBits(vec4<u32>(u_input.a.x, u_input.a.x, 38461u, u_input.a.x)), !vec4<bool>(false, var_2.a.b.x, false, true)), vec4<u32>(4294967295u, 4294967295u ^ global0.a.x, arg_2.a.x >> (var_3.e % 32u), var_3.c.x)), select(select(vec4<bool>(false, true, true, true), vec4<bool>(true, true, true, true), false && arg_3.a), select(!vec4<bool>(var_2.d, true, global0.b.a, true), select(vec4<bool>(false, var_2.d, var_3.d, arg_2.b.a), vec4<bool>(true, true, arg_3.a, var_2.b.b.x), var_2.d), global0.b.a), vec4<bool>(!arg_3.a, true, true | arg_2.b.a, true)));
    return var_0.x;
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_3(global0.a, Struct_1(true, !(!vec3<bool>(global0.b.b.x, global0.b.b.x, false))));
    let var_1 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(-928f - -1500f))))));
    var var_2 = _wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(select(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(_wgslsmith_f_op_f32(294f + var_1), 1059f))), vec2<f32>(124f, -395f), false)) + vec2<f32>(-1153f, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(func_1(vec4<f32>(684f, var_1, var_1, var_1), vec2<i32>(13016i, -9717i), var_0, Struct_1(false, vec3<bool>(false, var_0.b.b.x, global0.b.b.x)))) * var_1)))));
    var var_3 = func_4(Struct_3(select(abs(_wgslsmith_mult_vec2_u32(global0.a, u_input.b)), vec2<u32>(abs(0u), var_0.a.x), vec2<bool>(var_0.b.a, var_0.b.a)), Struct_1(true, !(!vec3<bool>(var_0.b.b.x, false, true)))));
    var_3 = func_4(Struct_3(u_input.b, Struct_1(false, func_2().b)));
    let var_4 = _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-165f, var_2.x, var_1) * _wgslsmith_f_op_vec3_f32(-vec3<f32>(-385f, var_1, 148f)))) + _wgslsmith_f_op_vec4_f32(func_3(Struct_2(func_2(), Struct_1(var_0.b.b.x, var_3.a.b), ~var_3.c, all(vec4<bool>(true, var_3.b.b.x, true, global0.b.b.x)), var_0.a.x), var_0)).zxy));
    var_3 = Struct_2(func_2(), Struct_1(var_3.a.a, !global0.b.b), var_3.c, any(vec4<bool>(var_0.b.a, true, select(select(var_0.b.a, false, var_3.d), true, true), var_0.b.b.x)), u_input.b.x);
    let x = u_input.a;
    s_output = StorageBuffer(-vec4<i32>(1i, 28640i, 1i, 81503i) << (_wgslsmith_mult_vec4_u32(vec4<u32>(~var_0.a.x, global0.a.x, ~global0.a.x, ~1u), vec4<u32>(global0.a.x, _wgslsmith_mult_u32(global0.a.x, var_3.e), var_3.c.x, ~u_input.b.x)) % vec4<u32>(32u)), 551f);
}

