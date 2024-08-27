struct Struct_1 {
    a: f32,
    b: vec2<bool>,
    c: i32,
}

struct Struct_2 {
    a: vec3<u32>,
}

struct Struct_3 {
    a: Struct_1,
    b: Struct_2,
}

struct Struct_4 {
    a: vec4<bool>,
    b: vec2<i32>,
    c: Struct_2,
    d: Struct_3,
    e: f32,
}

struct UniformBuffer {
    a: vec4<u32>,
}

struct StorageBuffer {
    a: f32,
    b: vec4<f32>,
    c: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec3<u32>;

var<private> global1: vec2<i32>;

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_mod_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a % b, a, ((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn func_3(arg_0: i32, arg_1: u32) -> bool {
    var var_0 = select(vec2<bool>(false, false), vec2<bool>(_wgslsmith_div_u32(0u, _wgslsmith_div_u32(4294967295u, arg_1)) != ~52319u, all(vec3<bool>(true, true, true))), any(vec2<bool>(true, true)));
    var var_1 = Struct_2(firstTrailingBit(~firstTrailingBit(vec3<u32>(arg_1, 4294967295u, global0.x))));
    let var_2 = Struct_1(_wgslsmith_f_op_f32(_wgslsmith_div_f32(492f, -819f) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(sign(-381f)) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-499f + -744f)))), !(!select(select(vec2<bool>(var_0.x, false), vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, var_0.x)), select(vec2<bool>(var_0.x, true), vec2<bool>(var_0.x, true), vec2<bool>(true, false)), true)), max(_wgslsmith_mult_i32(i32(-1i) * -2147483647i, _wgslsmith_dot_vec3_i32(-vec3<i32>(-2147483647i, -12892i, arg_0), -vec3<i32>(-19616i, -1i, arg_0))), 17140i));
    var var_3 = u_input.a.yz;
    var var_4 = _wgslsmith_dot_vec2_i32(abs(abs(-_wgslsmith_sub_vec2_i32(vec2<i32>(-2147483647i, var_2.c), vec2<i32>(22129i, var_2.c)))), vec2<i32>(global1.x, ~(-(global1.x >> (0u % 32u)))));
    return (var_2.a > _wgslsmith_f_op_f32(var_2.a - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(1297f - var_2.a)))) || any(select(select(vec4<bool>(true, var_0.x, var_0.x, var_0.x), vec4<bool>(true, true, true, true), var_2.b.x), vec4<bool>(true & var_0.x, !var_2.b.x, false, 4294967295u <= var_1.a.x), all(vec4<bool>(var_0.x, var_0.x, false, true)) == all(vec2<bool>(var_2.b.x, false))));
}

fn func_2(arg_0: Struct_4) -> vec2<bool> {
    var var_0 = u_input.a.xx;
    var var_1 = arg_0.a.wxw;
    var var_2 = -abs(max(vec4<i32>(0i, 51922i, 4601i, abs(global1.x)), vec4<i32>(2147483647i, arg_0.d.a.c, arg_0.d.a.c, arg_0.d.a.c) | abs(vec4<i32>(0i, 0i, arg_0.b.x, arg_0.b.x))));
    let var_3 = 835i;
    let var_4 = Struct_1(arg_0.e, !select(vec2<bool>(true, func_3(global1.x, 0u)), select(!arg_0.a.yy, var_1.yx, vec2<bool>(false, true)), true), ~_wgslsmith_dot_vec2_i32(_wgslsmith_mod_vec2_i32(arg_0.b ^ vec2<i32>(21873i, arg_0.d.a.c), var_2.xw), ~var_2.wx));
    return vec2<bool>(var_1.x && select(arg_0.a.x, arg_0.d.a.b.x, true), var_4.b.x);
}

fn func_4(arg_0: Struct_3, arg_1: Struct_3, arg_2: vec4<u32>, arg_3: vec3<f32>) -> Struct_1 {
    var var_0 = _wgslsmith_mult_u32(arg_2.x, u_input.a.x);
    var_0 = select(countOneBits(~(~(~u_input.a.x))), 45701u, arg_0.a.b.x);
    var var_1 = arg_0.a;
    let var_2 = arg_1.a.c;
    let var_3 = select(vec4<bool>(any(vec4<bool>(select(true, var_1.b.x, false), arg_1.a.c >= global1.x, var_1.b.x, arg_1.a.b.x | arg_1.a.b.x)), !arg_1.a.b.x, arg_1.a.b.x, arg_1.a.b.x), !vec4<bool>(false, var_1.b.x, var_1.b.x, any(select(vec3<bool>(true, var_1.b.x, false), vec3<bool>(true, false, true), true))), select(!(!vec4<bool>(false, arg_0.a.b.x, false, false)), !vec4<bool>(arg_1.a.b.x, arg_0.a.b.x, !arg_1.a.b.x, false), true));
    return arg_0.a;
}

fn func_1(arg_0: vec3<i32>, arg_1: vec3<u32>, arg_2: u32) -> u32 {
    var var_0 = Struct_3(func_4(Struct_3(Struct_1(_wgslsmith_f_op_f32(1244f * 1000f), func_2(Struct_4(vec4<bool>(false, false, false, false), vec2<i32>(arg_0.x, 0i), Struct_2(arg_1), Struct_3(Struct_1(1404f, vec2<bool>(true, true), -1i), Struct_2(u_input.a.zyz)), -381f)), global1.x), Struct_2(select(arg_1, vec3<u32>(25086u, 16643u, u_input.a.x), false))), Struct_3(Struct_1(_wgslsmith_div_f32(953f, 667f), vec2<bool>(false, false), arg_0.x), Struct_2(firstTrailingBit(vec3<u32>(1u, global0.x, arg_2)))), ~_wgslsmith_div_vec4_u32(select(u_input.a, vec4<u32>(u_input.a.x, arg_1.x, global0.x, 12085u), false), vec4<u32>(1u, 4294967295u, u_input.a.x, 53104u) ^ vec4<u32>(4294967295u, 7953u, 4294967295u, 4294967295u)), _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(trunc(_wgslsmith_f_op_vec3_f32(abs(vec3<f32>(281f, -449f, -344f))))) * _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(478f, -199f, -1345f))))), Struct_2(abs(~(vec3<u32>(1u, 4294967295u, 60943u) | vec3<u32>(807u, global0.x, global0.x)))));
    global1 = arg_0.yx;
    var_0 = Struct_3(func_4(Struct_3(func_4(Struct_3(Struct_1(var_0.a.a, vec2<bool>(true, var_0.a.b.x), global1.x), Struct_2(u_input.a.yyy)), Struct_3(var_0.a, var_0.b), vec4<u32>(26933u, 4294967295u, 1u, 1u), _wgslsmith_f_op_vec3_f32(min(vec3<f32>(var_0.a.a, 1000f, var_0.a.a), vec3<f32>(1002f, var_0.a.a, var_0.a.a)))), var_0.b), Struct_3(func_4(Struct_3(var_0.a, Struct_2(vec3<u32>(var_0.b.a.x, var_0.b.a.x, arg_1.x))), Struct_3(Struct_1(1090f, vec2<bool>(true, var_0.a.b.x), arg_0.x), var_0.b), firstTrailingBit(u_input.a), _wgslsmith_f_op_vec3_f32(vec3<f32>(-755f, 151f, 936f) - vec3<f32>(var_0.a.a, -1022f, var_0.a.a))), var_0.b), vec4<u32>(firstTrailingBit(arg_1.x) >> (min(31357u, 25945u) % 32u), min(53720u, max(global0.x, u_input.a.x)), _wgslsmith_add_u32(~global0.x, ~global0.x), 4294967295u), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(-vec3<f32>(var_0.a.a, var_0.a.a, var_0.a.a)) + _wgslsmith_f_op_vec3_f32(round(vec3<f32>(var_0.a.a, -1039f, 270f)))))), var_0.b);
    var var_1 = !(!(!var_0.a.b.x != !select(var_0.a.b.x, var_0.a.b.x, var_0.a.b.x)));
    return ~(~firstTrailingBit(~1u));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = vec2<bool>(true, true);
    global0 = vec3<u32>(~_wgslsmith_sub_u32(~u_input.a.x, ~u_input.a.x), 47767u, min(0u, ~(~(~7979u))));
    var_0 = vec2<bool>(_wgslsmith_clamp_u32(abs(1u), ~func_1(vec3<i32>(2147483647i, -19969i, -36847i), u_input.a.yzx, 30279u), ~_wgslsmith_sub_u32(global0.x, u_input.a.x)) > _wgslsmith_clamp_u32(min(u_input.a.x << (7070u % 32u), ~global0.x), ~1u, u_input.a.x), false);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-1157f - -744f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(583f + 530f) + -1328f) * _wgslsmith_f_op_f32(ceil(-540f)))), _wgslsmith_f_op_vec4_f32(round(_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(-945f - 857f), _wgslsmith_div_f32(555f, -575f), _wgslsmith_f_op_f32(min(757f, 840f)), 838f)))), global0.x);
}

