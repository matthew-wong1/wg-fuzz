struct Struct_1 {
    a: i32,
    b: vec2<bool>,
    c: vec3<bool>,
    d: f32,
}

struct Struct_2 {
    a: vec3<u32>,
    b: vec4<i32>,
    c: vec4<f32>,
    d: Struct_1,
}

struct Struct_3 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: u32,
    d: Struct_2,
    e: u32,
}

struct Struct_4 {
    a: vec4<i32>,
    b: Struct_1,
    c: Struct_3,
    d: Struct_3,
}

struct Struct_5 {
    a: vec4<bool>,
    b: bool,
}

struct UniformBuffer {
    a: i32,
    b: u32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec4<u32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: Struct_1 = Struct_1(2147483647i, vec2<bool>(false, false), vec3<bool>(true, false, false), 1074f);

var<private> global1: Struct_3;

fn _wgslsmith_mult_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a * b, a, ((((a[0i] == -1i) && (b[0i] == i32(-2147483648))) || ((a[0i] == i32(-2147483648)) && (b[0i] == -1i))) || (((a[1i] == -1i) && (b[1i] == i32(-2147483648))) || ((a[1i] == i32(-2147483648)) && (b[1i] == -1i)))) || (((b[0i] != 0i) && ((a[0i] > (2147483647i / b[0i])) || (a[0i] < (i32(-2147483648) / b[0i])))) || ((b[1i] != 0i) && ((a[1i] > (2147483647i / b[1i])) || (a[1i] < (i32(-2147483648) / b[1i]))))));
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a / b, a / vec2<i32>(2i), (((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mult_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a * b, a, (((b[0i] != 0u) && (a[0i] > (4294967295u / b[0i]))) || ((b[1i] != 0u) && (a[1i] > (4294967295u / b[1i])))) || ((b[2i] != 0u) && (a[2i] > (4294967295u / b[2i]))));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: i32, arg_1: Struct_3, arg_2: Struct_2, arg_3: vec4<i32>) -> u32 {
    let var_0 = _wgslsmith_mult_vec2_i32(abs(_wgslsmith_mult_vec2_i32(_wgslsmith_div_vec2_i32(~vec2<i32>(arg_2.d.a, 1052i), global1.d.b.yy << (arg_1.d.a.zy % vec2<u32>(32u))), arg_3.yw)), global1.d.b.wx);
    let var_1 = global1.d;
    global0 = var_1.d;
    let var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(f32(-1f) * -849f), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1284f)))));
    let var_3 = arg_3.x;
    return ~max(_wgslsmith_dot_vec3_u32(vec3<u32>(55750u, 10223u, global1.d.a.x), ~vec3<u32>(1u, u_input.b, 93639u)) >> ((abs(u_input.b) ^ (var_1.a.x >> (98409u % 32u))) % 32u), u_input.b);
}

fn func_2(arg_0: vec2<u32>) -> Struct_4 {
    var var_0 = Struct_2(~global1.d.a ^ (_wgslsmith_mult_vec3_u32(select(vec3<u32>(global1.c, 53791u, 1u), vec3<u32>(0u, u_input.b, global1.e), global1.d.d.c), global1.d.a) >> (~global1.d.a % vec3<u32>(32u))), vec4<i32>(u_input.a, ~(~(-2147483647i)), -(global0.a | ~5450i), -1i), _wgslsmith_f_op_vec4_f32(vec4<f32>(global1.d.c.x, -1000f, _wgslsmith_div_f32(874f, -1000f), global1.d.d.d) - _wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(global1.d.c - global1.d.c)), _wgslsmith_f_op_vec4_f32(-vec4<f32>(1723f, -994f, global1.d.d.d, 859f)))), global1.d.d);
    var_0 = Struct_2(~vec3<u32>(min(func_3(-19812i, Struct_3(vec2<bool>(var_0.d.b.x, global1.b.x), vec3<bool>(global0.b.x, false, var_0.d.b.x), 51696u, global1.d, var_0.a.x), Struct_2(vec3<u32>(4294967295u, 7420u, 3439u), var_0.b, global1.d.c, Struct_1(var_0.d.a, global1.d.d.c.yy, vec3<bool>(global1.a.x, var_0.d.c.x, global0.b.x), 863f)), global1.d.b), ~var_0.a.x), ~55976u, 1u), var_0.b, _wgslsmith_f_op_vec4_f32(vec4<f32>(1764f, 626f, _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(-global0.d))), global0.d) - _wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(_wgslsmith_f_op_vec4_f32(var_0.c + global1.d.c) - global1.d.c) - _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(-1019f, 268f, -1921f, global0.d))))), Struct_1(global0.a, global1.a, select(vec3<bool>(global1.a.x, global1.b.x, global0.c.x), select(vec3<bool>(var_0.d.b.x, global1.b.x, true), vec3<bool>(var_0.d.c.x, false, true), vec3<bool>(true, false, true)), all(select(vec4<bool>(false, global1.d.d.c.x, global0.c.x, global1.d.d.c.x), vec4<bool>(global1.d.d.b.x, true, global0.c.x, global1.d.d.b.x), vec4<bool>(global0.b.x, true, var_0.d.c.x, false)))), -2041f));
    global1 = Struct_3(select(select(!select(vec2<bool>(false, false), vec2<bool>(false, global0.c.x), vec2<bool>(var_0.d.c.x, global0.b.x)), vec2<bool>(global1.a.x, var_0.c.x < var_0.c.x), !global0.b.x), global0.b, global1.b.x), vec3<bool>(all(select(!vec4<bool>(false, false, true, var_0.d.b.x), vec4<bool>(true, true, var_0.d.c.x, var_0.d.c.x), select(vec4<bool>(true, global1.b.x, true, global0.c.x), vec4<bool>(global0.c.x, true, var_0.d.c.x, true), true))), !any(!vec4<bool>(false, global0.c.x, false, true)), global1.d.d.c.x), 88855u, Struct_2(var_0.a, ~_wgslsmith_sub_vec4_i32(min(var_0.b, vec4<i32>(u_input.a, global1.d.d.a, -18974i, 838i)), vec4<i32>(global1.d.d.a, global0.a, 0i, -2147483647i)), _wgslsmith_f_op_vec4_f32(floor(_wgslsmith_div_vec4_f32(vec4<f32>(var_0.d.d, global1.d.c.x, global1.d.c.x, var_0.d.d), _wgslsmith_f_op_vec4_f32(-vec4<f32>(-472f, var_0.c.x, -938f, 1024f))))), var_0.d), 13218u);
    var var_1 = (2030f == _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(max(-785f, 537f)) * _wgslsmith_f_op_f32(global0.d + global1.d.d.d))))) & (_wgslsmith_dot_vec2_i32(global1.d.b.yx ^ vec2<i32>(u_input.a, u_input.a), vec2<i32>(global0.a ^ 2147483647i, firstTrailingBit(global1.d.b.x))) < _wgslsmith_clamp_i32(_wgslsmith_dot_vec2_i32(global1.d.b.yy >> (vec2<u32>(arg_0.x, global1.e) % vec2<u32>(32u)), ~vec2<i32>(global1.d.b.x, global1.d.b.x)), _wgslsmith_dot_vec3_i32(vec3<i32>(global0.a, u_input.a, 0i), vec3<i32>(13024i, global0.a, 27189i)), 24347i));
    var var_2 = var_0.d.b;
    return Struct_4(~var_0.b, var_0.d, Struct_3(select(vec2<bool>(all(vec4<bool>(global0.b.x, var_2.x, false, true)), select(global1.b.x, global0.b.x, false)), !vec2<bool>(var_0.d.b.x, false), all(select(vec4<bool>(var_2.x, true, var_2.x, true), vec4<bool>(global0.c.x, global1.d.d.b.x, var_2.x, global1.a.x), var_0.d.b.x))), global1.d.d.c, firstTrailingBit(1u | _wgslsmith_clamp_u32(global1.e, u_input.b, global1.e)), global1.d, abs(_wgslsmith_mod_u32(_wgslsmith_add_u32(4294967295u, global1.c), 34824u))), Struct_3(vec2<bool>(any(select(vec4<bool>(true, var_2.x, false, false), vec4<bool>(var_0.d.c.x, global1.d.d.c.x, false, var_0.d.c.x), vec4<bool>(false, false, false, global1.b.x))), any(vec2<bool>(false, var_0.d.b.x))), vec3<bool>(!any(vec4<bool>(false, var_2.x, var_0.d.c.x, false)), global1.a.x, global0.b.x), _wgslsmith_add_u32(_wgslsmith_add_u32(abs(var_0.a.x), ~0u), ~firstLeadingBit(12931u)), global1.d, global1.e));
}

fn func_1() -> Struct_4 {
    var var_0 = u_input.b;
    return func_2(global1.d.a.zz);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(459f + global0.d));
    var var_1 = Struct_5(vec4<bool>(global0.b.x, _wgslsmith_f_op_f32(-global0.d) <= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(1613f + 650f) - _wgslsmith_f_op_f32(-global1.d.d.d)), true, !all(global1.b)), global0.b.x);
    var var_2 = ~_wgslsmith_mod_u32(global1.c, 1u);
    var var_3 = global1.d.b.x;
    let var_4 = func_1();
    let var_5 = Struct_4(vec4<i32>(_wgslsmith_div_i32(_wgslsmith_dot_vec4_i32(global1.d.b, firstTrailingBit(global1.d.b)), _wgslsmith_div_i32(2147483647i >> (u_input.b % 32u), var_4.a.x)), var_4.a.x, -16099i, ~(~(~u_input.a))), Struct_1(_wgslsmith_mult_i32(_wgslsmith_sub_i32(~global1.d.b.x, ~global0.a), _wgslsmith_dot_vec4_i32(_wgslsmith_sub_vec4_i32(vec4<i32>(global0.a, global0.a, -2147483647i, -2806i), vec4<i32>(u_input.a, global1.d.d.a, 4019i, global1.d.b.x)), -var_4.a)), select(vec2<bool>(global0.b.x, var_1.a.x), !(!var_1.a.zx), var_4.d.d.d.c.yy), vec3<bool>(true, true, true), global1.d.d.d), Struct_3(!func_2(vec2<u32>(u_input.b, global1.c)).c.a, !(!(!global1.b)), ~(~u_input.b), func_2(max(firstLeadingBit(var_4.c.d.a.zy), global1.d.a.zz)).d.d, max(~(~var_4.d.e), 29633u | abs(global1.d.a.x))), var_4.d);
    var var_6 = vec4<bool>(_wgslsmith_div_i32(_wgslsmith_mod_i32(0i, i32(-1i) * -14542i), ~1i) > firstLeadingBit(~global0.a ^ (0i ^ var_5.d.d.b.x)), any(vec2<bool>(any(var_1.a), select(true, global0.c.x, 1u >= global1.d.a.x))), func_1().b.b.x, false);
    let x = u_input.a;
    s_output = StorageBuffer(var_4.c.d.a, vec4<u32>(global1.c, 4294967295u, u_input.b, 52584u));
}

