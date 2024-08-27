struct Struct_1 {
    a: f32,
    b: f32,
    c: i32,
    d: bool,
}

struct Struct_2 {
    a: vec2<u32>,
    b: vec2<i32>,
    c: vec3<u32>,
}

struct Struct_3 {
    a: f32,
    b: Struct_1,
    c: f32,
    d: Struct_1,
}

struct UniformBuffer {
    a: i32,
    b: vec4<i32>,
    c: i32,
    d: i32,
    e: vec3<u32>,
}

struct StorageBuffer {
    a: u32,
    b: vec4<f32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: vec2<bool>;

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> vec2<u32> {
    return select(a % b, a, (b[0i] == 0u) || (b[1i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_add_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a + b, a, (((b[0i] > 0i) && (a[0i] > (2147483647i - b[0i]))) || ((b[1i] > 0i) && (a[1i] > (2147483647i - b[1i])))) || (((b[0i] < 0i) && (a[0i] < (i32(-2147483648) - b[0i]))) || ((b[1i] < 0i) && (a[1i] < (i32(-2147483648) - b[1i])))));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn func_3(arg_0: i32, arg_1: Struct_2) -> i32 {
    var var_0 = ~countOneBits(vec4<u32>(_wgslsmith_div_u32(_wgslsmith_add_u32(arg_1.c.x, u_input.e.x), 1u), _wgslsmith_dot_vec3_u32(firstLeadingBit(vec3<u32>(1u, 131267u, 0u)), vec3<u32>(0u, u_input.e.x, arg_1.a.x)), u_input.e.x, ~u_input.e.x));
    var var_1 = !(!(!select(select(vec2<bool>(false, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, false)), vec2<bool>(true, false), !vec2<bool>(true, global0.x))));
    global0 = select(!select(vec2<bool>(true, true), !select(vec2<bool>(var_1.x, false), vec2<bool>(var_1.x, global0.x), vec2<bool>(var_1.x, false)), !vec2<bool>(global0.x, global0.x)), select(select(!select(vec2<bool>(var_1.x, global0.x), vec2<bool>(true, global0.x), vec2<bool>(global0.x, false)), !vec2<bool>(false, global0.x), !select(vec2<bool>(var_1.x, false), vec2<bool>(global0.x, true), vec2<bool>(global0.x, var_1.x))), !vec2<bool>(true, any(vec2<bool>(true, false))), all(!select(vec2<bool>(var_1.x, true), vec2<bool>(global0.x, false), true))), true);
    var var_2 = Struct_1(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(615f + -2523f)) * -290f)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -151f) - _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1662f - _wgslsmith_f_op_f32(-1000f - -433f)))), _wgslsmith_clamp_i32(_wgslsmith_mod_i32(arg_0, -29293i), u_input.c, ~arg_1.b.x), !(!(!(arg_1.b.x > -2147483647i))));
    let var_3 = Struct_3(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_2.b + var_2.a)) * _wgslsmith_f_op_f32(step(-1192f, _wgslsmith_f_op_f32(-var_2.b))))), Struct_1(_wgslsmith_f_op_f32(-var_2.a), _wgslsmith_f_op_f32(f32(-1f) * -150f), -arg_0, false), -541f, Struct_1(1000f, 2242f, min(abs(i32(-1i) * -2996i), -3687i), false));
    return max(var_3.d.c, -11072i >> (~(~(~arg_1.a.x)) % 32u));
}

fn func_4(arg_0: vec4<f32>, arg_1: Struct_1) -> f32 {
    var var_0 = arg_1;
    var_0 = Struct_1(_wgslsmith_f_op_f32(ceil(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(round(arg_0.x))) + 1000f))), arg_1.a, firstLeadingBit(arg_1.c) >> (_wgslsmith_add_u32(u_input.e.x, ~0u) % 32u), true);
    var var_1 = arg_0.x;
    var var_2 = Struct_1(_wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(-298f - _wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.b), 1f)))), 2100f, -var_0.c, global0.x);
    var var_3 = !arg_1.d;
    return arg_1.a;
}

fn func_2(arg_0: f32, arg_1: vec3<i32>) -> Struct_1 {
    let var_0 = Struct_3(arg_0, Struct_1(_wgslsmith_div_f32(arg_0, arg_0), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-arg_0) * _wgslsmith_f_op_f32(f32(-1f) * -726f)), -1i, global0.x), arg_0, Struct_1(_wgslsmith_f_op_f32(func_4(_wgslsmith_f_op_vec4_f32(vec4<f32>(1587f, arg_0, arg_0, 410f) - _wgslsmith_f_op_vec4_f32(-vec4<f32>(-160f, arg_0, arg_0, 431f))), Struct_1(_wgslsmith_f_op_f32(select(arg_0, -2202f, global0.x)), _wgslsmith_div_f32(1008f, 1666f), func_3(-1i, Struct_2(u_input.e.xz, arg_1.yx, u_input.e)), all(vec2<bool>(false, true))))), -1986f, _wgslsmith_sub_i32(select(_wgslsmith_div_i32(u_input.b.x, 0i), -u_input.d, !global0.x), func_3(reverseBits(-2147483647i), Struct_2(vec2<u32>(u_input.e.x, 0u), vec2<i32>(u_input.a, 20100i), vec3<u32>(u_input.e.x, 0u, 1u)))), true));
    global0 = !vec2<bool>((arg_1.x << (~u_input.e.x % 32u)) >= -(~u_input.c), var_0.b.d);
    global0 = !(!(!select(select(vec2<bool>(true, false), vec2<bool>(false, false), vec2<bool>(false, var_0.d.d)), vec2<bool>(var_0.d.d, true), vec2<bool>(true, true))));
    global0 = !select(select(select(select(vec2<bool>(global0.x, false), vec2<bool>(var_0.b.d, var_0.d.d), false), !vec2<bool>(var_0.b.d, true), false), vec2<bool>(all(vec2<bool>(global0.x, true)), any(vec4<bool>(false, false, var_0.d.d, true))), true & global0.x), !vec2<bool>(true, var_0.b.d == global0.x), true);
    let var_1 = vec2<i32>(-1i, u_input.b.x);
    return Struct_1(arg_0, -255f, countOneBits(u_input.a), select(global0.x, var_0.d.d, select(true, true, !var_0.b.d) == var_0.d.d));
}

fn func_1(arg_0: Struct_1) -> vec3<bool> {
    let var_0 = !vec2<bool>(_wgslsmith_mult_u32(u_input.e.x, 0u) >= 1u, true);
    let var_1 = func_2(_wgslsmith_div_f32(-1041f, arg_0.a), u_input.b.yzw);
    var var_2 = Struct_2(vec2<u32>(~_wgslsmith_clamp_u32(abs(31192u), _wgslsmith_mult_u32(36378u, 0u), 1u ^ u_input.e.x), _wgslsmith_sub_u32(~4294967295u, _wgslsmith_add_u32(_wgslsmith_div_u32(u_input.e.x, 4294967295u), u_input.e.x))), _wgslsmith_clamp_vec2_i32(_wgslsmith_add_vec2_i32(select(select(vec2<i32>(1i, u_input.c), vec2<i32>(var_1.c, -1i), var_0.x), ~u_input.b.zz, false), u_input.b.wy), vec2<i32>(_wgslsmith_dot_vec2_i32(u_input.b.yx, ~vec2<i32>(var_1.c, u_input.c)), _wgslsmith_dot_vec2_i32(vec2<i32>(0i, var_1.c), u_input.b.wy >> (u_input.e.xy % vec2<u32>(32u)))), u_input.b.yx), u_input.e & (_wgslsmith_clamp_vec3_u32(~vec3<u32>(115796u, u_input.e.x, 16169u), u_input.e, vec3<u32>(39472u, 0u, 0u)) & u_input.e));
    var var_3 = Struct_2(var_2.a, var_2.b, abs(var_2.c));
    var var_4 = Struct_2(abs(_wgslsmith_clamp_vec2_u32(var_3.c.yz << (vec2<u32>(50181u, 9859u) % vec2<u32>(32u)), countOneBits(vec2<u32>(3682u, u_input.e.x)), vec2<u32>(u_input.e.x, var_3.c.x))) << (_wgslsmith_mod_vec2_u32(var_2.c.zz, u_input.e.zy) % vec2<u32>(32u)), ~(~var_3.b), u_input.e);
    return vec3<bool>(global0.x, !var_0.x, false);
}

@compute
@workgroup_size(1)
fn main() {
    global0 = select(vec2<bool>(any(select(vec3<bool>(global0.x, global0.x, false), func_1(Struct_1(2353f, 211f, u_input.d, false)), select(vec3<bool>(global0.x, true, global0.x), vec3<bool>(global0.x, global0.x, false), global0.x))), global0.x), vec2<bool>(true, global0.x), all(!select(select(vec4<bool>(global0.x, global0.x, global0.x, global0.x), vec4<bool>(true, true, false, true), vec4<bool>(global0.x, false, false, true)), vec4<bool>(global0.x, global0.x, false, global0.x), global0.x)));
    let var_0 = _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(select(1112f, 2324f, 2147483647i != -u_input.a)), _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(1203f * _wgslsmith_f_op_f32(329f + -450f)))), _wgslsmith_f_op_f32(f32(-1f) * -188f)));
    global0 = func_1(Struct_1(var_0.x, 455f, abs(1i), all(select(!vec2<bool>(global0.x, global0.x), func_1(Struct_1(var_0.x, 311f, u_input.d, true)).zz, !global0.x)))).zx;
    global0 = !(!vec2<bool>(true, any(vec4<bool>(global0.x, true, false, true))));
    global0 = !(!vec2<bool>(all(vec2<bool>(false, false)), (u_input.e.x & u_input.e.x) != ~u_input.e.x));
    let x = u_input.a;
    s_output = StorageBuffer(u_input.e.x, _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(_wgslsmith_f_op_f32(round(-365f)), var_0.x, _wgslsmith_f_op_f32(ceil(var_0.x)), 321f))));
}

