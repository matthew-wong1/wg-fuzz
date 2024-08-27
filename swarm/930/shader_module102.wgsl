struct Struct_1 {
    a: vec2<f32>,
    b: f32,
    c: u32,
}

struct Struct_2 {
    a: Struct_1,
    b: f32,
    c: Struct_1,
    d: bool,
}

struct Struct_3 {
    a: vec3<f32>,
    b: vec2<u32>,
    c: Struct_1,
}

struct UniformBuffer {
    a: vec4<i32>,
}

struct StorageBuffer {
    a: f32,
    b: i32,
    c: vec3<i32>,
    d: vec2<i32>,
    e: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1;

var<private> global1: vec3<f32>;

fn _wgslsmith_div_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a / b, a / vec4<u32>(2u), (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_vec3_f32(a: vec3<f32>, b: vec3<f32>) -> vec3<f32> {
    return select(vec3<f32>(42f), vec3<f32>(-123f), ((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i])));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_mult_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a * b, a, ((((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i])))) || ((b[3i] != 0u) && (a[3i] > (4294967295u / b[3i]))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn func_3(arg_0: vec3<i32>, arg_1: Struct_3, arg_2: Struct_2) -> f32 {
    var var_0 = _wgslsmith_f_op_f32(-338f - -697f);
    var var_1 = _wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-global0.a.x) + -1291f) - _wgslsmith_f_op_f32(f32(-1f) * -929f)), arg_2.a.a.x));
    let var_2 = max(~reverseBits(max(vec4<u32>(23604u, global0.c, 0u, 4294967295u) << (vec4<u32>(global0.c, 0u, global0.c, 1u) % vec4<u32>(32u)), _wgslsmith_div_vec4_u32(vec4<u32>(4294967295u, arg_1.c.c, 41876u, 4294967295u), vec4<u32>(arg_2.a.c, arg_2.c.c, global0.c, arg_2.c.c)))), ~(~min(countOneBits(vec4<u32>(71241u, arg_2.c.c, arg_1.b.x, arg_2.a.c)), _wgslsmith_clamp_vec4_u32(vec4<u32>(global0.c, global0.c, 1u, 29731u), vec4<u32>(arg_2.a.c, 1u, arg_2.c.c, 15635u), vec4<u32>(arg_2.c.c, global0.c, arg_1.b.x, arg_1.b.x)))));
    global1 = vec3<f32>(-427f, _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1462f) * global0.a.x), 431f);
    var var_3 = !(!vec4<bool>(any(vec3<bool>(true, arg_2.d, arg_2.d)), true, !arg_2.d, true));
    return arg_2.c.a.x;
}

fn func_2(arg_0: i32) -> Struct_3 {
    global1 = _wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, 1000f, -391f)))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(591f, global0.a.x, 322f)))))), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-global0.a.x)), global0.a.x, _wgslsmith_f_op_f32(229f - _wgslsmith_f_op_f32(func_3(vec3<i32>(11996i, -1i, -12499i), Struct_3(vec3<f32>(global1.x, 1000f, global0.b), vec2<u32>(0u, global0.c), Struct_1(global0.a, -446f, 4294967295u)), Struct_2(Struct_1(global0.a, global1.x, 1u), 1461f, Struct_1(global1.zx, global0.b, global0.c), false))))) - _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(select(vec3<f32>(-1883f, global1.x, global1.x), vec3<f32>(-203f, -326f, 586f), select(vec3<bool>(false, false, true), vec3<bool>(true, false, true), vec3<bool>(false, false, true)))) + vec3<f32>(global0.a.x, global1.x, 1000f))), select(vec3<bool>(true, true, true), vec3<bool>(all(select(vec2<bool>(false, true), vec2<bool>(false, false), vec2<bool>(false, false))), 4294967295u >= ~global0.c, any(select(vec4<bool>(false, false, false, true), vec4<bool>(false, true, false, false), true))), select(select(vec3<bool>(true, false, false), select(vec3<bool>(true, false, true), vec3<bool>(false, true, false), vec3<bool>(true, true, false)), vec3<bool>(false, false, false)), vec3<bool>(true, true, true), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(true, true, true)), select(vec3<bool>(true, true, true), vec3<bool>(false, true, true), true), vec3<bool>(false, true, false))))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(round(global0.a)) * _wgslsmith_f_op_vec2_f32(-global1.xz)) + _wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(-1000f, global0.a.x))))), 509f, reverseBits(_wgslsmith_dot_vec3_u32(max(_wgslsmith_mult_vec3_u32(vec3<u32>(global0.c, global0.c, global0.c), vec3<u32>(4294967295u, 41436u, global0.c)), vec3<u32>(global0.c, global0.c, global0.c)), select(_wgslsmith_mult_vec3_u32(vec3<u32>(440u, global0.c, 56378u), vec3<u32>(1u, 4294967295u, global0.c)), vec3<u32>(global0.c, 0u, global0.c) | vec3<u32>(23921u, global0.c, global0.c), true))));
    global0 = Struct_1(_wgslsmith_f_op_vec2_f32(-global0.a), -1036f, global0.c);
    global1 = _wgslsmith_f_op_vec3_f32(_wgslsmith_f_op_vec3_f32(max(_wgslsmith_f_op_vec3_f32(min(_wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, global0.b, global1.x) - _wgslsmith_f_op_vec3_f32(vec3<f32>(206f, -282f, global1.x) - vec3<f32>(global0.b, 522f, -956f))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(vec3<f32>(-1765f, global0.a.x, -662f) + vec3<f32>(global0.b, -379f, global0.b))))), vec3<f32>(-1000f, -998f, _wgslsmith_f_op_f32(min(-398f, _wgslsmith_f_op_f32(-477f - -1664f)))))) - _wgslsmith_f_op_vec3_f32(round(_wgslsmith_div_vec3_f32(_wgslsmith_f_op_vec3_f32(select(_wgslsmith_f_op_vec3_f32(-vec3<f32>(-350f, 377f, -533f)), _wgslsmith_f_op_vec3_f32(vec3<f32>(global1.x, 748f, -181f) - vec3<f32>(-439f, 1000f, global0.a.x)), vec3<bool>(true, true, true))), _wgslsmith_f_op_vec3_f32(-_wgslsmith_f_op_vec3_f32(-vec3<f32>(global1.x, -143f, 343f)))))));
    global1 = vec3<f32>(global0.a.x, global0.a.x, _wgslsmith_f_op_f32(-global1.x));
    return Struct_3(vec3<f32>(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_div_f32(global0.a.x, 1504f)) - _wgslsmith_f_op_f32(global1.x * global0.a.x)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(global1.x + -246f), global1.x)), _wgslsmith_f_op_f32(func_3(u_input.a.xzy, Struct_3(vec3<f32>(-1317f, -1600f, global0.b), ~vec2<u32>(4294967295u, global0.c), Struct_1(global1.yy, global1.x, global0.c)), Struct_2(Struct_1(global1.xz, -1860f, global0.c), global1.x, Struct_1(vec2<f32>(global0.a.x, global1.x), global1.x, 104822u), any(vec3<bool>(true, false, false)))))), ~(~(vec2<u32>(global0.c, 1u) ^ countOneBits(vec2<u32>(0u, 1u)))), Struct_1(_wgslsmith_f_op_vec2_f32(-vec2<f32>(global1.x, _wgslsmith_f_op_f32(1619f * global0.a.x))), -1243f, global0.c));
}

fn func_4(arg_0: Struct_3, arg_1: Struct_1, arg_2: f32) -> Struct_1 {
    var var_0 = 0i;
    let var_1 = true;
    let var_2 = -countOneBits(_wgslsmith_add_i32(-_wgslsmith_dot_vec3_i32(vec3<i32>(0i, 2147483647i, 1i), u_input.a.xxw), u_input.a.x));
    let var_3 = !(!(!select(!vec3<bool>(true, true, var_1), vec3<bool>(true, true, true), !vec3<bool>(var_1, false, false))));
    let var_4 = arg_0.c;
    return func_2(u_input.a.x).c;
}

fn func_1(arg_0: i32) -> Struct_2 {
    global0 = func_4(func_2(-1i ^ (u_input.a.x ^ firstTrailingBit(-45006i))), Struct_1(global1.yx, global1.x, 17901u), global1.x);
    let var_0 = max(select(~(~(~vec4<u32>(4294967295u, global0.c, global0.c, global0.c))), _wgslsmith_mult_vec4_u32(~(vec4<u32>(global0.c, global0.c, global0.c, global0.c) & vec4<u32>(global0.c, 0u, global0.c, global0.c)), ~(~vec4<u32>(global0.c, global0.c, global0.c, global0.c))), false), ~(~_wgslsmith_mod_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(4294967295u, global0.c, global0.c, 4294967295u), vec4<u32>(1u, 0u, global0.c, 4294967295u)), vec4<u32>(1u, 1u, 4294967295u, 67395u))));
    var var_1 = func_2(u_input.a.x);
    return Struct_2(Struct_1(_wgslsmith_f_op_vec2_f32(abs(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(vec2<f32>(-1064f, global1.x) - global0.a)))), 504f, global0.c), global0.a.x, func_4(Struct_3(_wgslsmith_f_op_vec3_f32(abs(var_1.a)), vec2<u32>(26321u, global0.c), var_1.c), Struct_1(_wgslsmith_f_op_vec2_f32(func_4(Struct_3(vec3<f32>(var_1.c.b, 1509f, -202f), vec2<u32>(var_1.b.x, 0u), Struct_1(vec2<f32>(global0.a.x, -1122f), 1275f, 4294967295u)), Struct_1(var_1.c.a, 1266f, global0.c), 1919f).a - global1.yx), _wgslsmith_f_op_f32(-_wgslsmith_div_f32(-857f, var_1.a.x)), var_0.x), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1698f * 1384f))))), false);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = func_1(u_input.a.x);
    global0 = Struct_1(var_0.a.a, 1040f, var_0.c.c);
    var var_1 = var_0.c;
    let var_2 = u_input.a;
    var var_3 = func_1(firstTrailingBit(-_wgslsmith_add_i32(1i, u_input.a.x)) & -var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(global0.a.x - func_4(Struct_3(vec3<f32>(-967f, global1.x, global0.a.x), vec2<u32>(3778u, 9247u), Struct_1(vec2<f32>(-1499f, var_1.a.x), global0.a.x, global0.c)), Struct_1(vec2<f32>(-366f, global1.x), -709f, global0.c), global1.x).b))), _wgslsmith_mod_i32(var_2.x, _wgslsmith_div_i32(var_2.x << (0u % 32u), u_input.a.x)) & min(-reverseBits(-33218i), -(i32(-1i) * -1i)), vec3<i32>(firstLeadingBit(~(~1i)), u_input.a.x, u_input.a.x), u_input.a.xy << (~vec2<u32>(20823u, abs(71157u)) % vec2<u32>(32u)), _wgslsmith_sub_vec4_u32(~firstTrailingBit(vec4<u32>(4294967295u, 44490u, var_1.c, global0.c) | vec4<u32>(1u, var_3.a.c, var_3.a.c, 4294967295u)), vec4<u32>(11864u, func_4(Struct_3(vec3<f32>(345f, 958f, var_3.b), vec2<u32>(var_3.a.c, var_1.c), Struct_1(vec2<f32>(-1851f, var_3.a.b), 1043f, var_0.a.c)), var_3.c, _wgslsmith_f_op_f32(trunc(1404f))).c, ~(var_1.c & 0u), var_3.c.c)));
}

