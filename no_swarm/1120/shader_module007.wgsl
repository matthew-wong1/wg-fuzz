struct Struct_1 {
    a: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: u32,
    c: vec2<f32>,
    d: vec4<bool>,
}

struct Struct_3 {
    a: vec4<f32>,
    b: Struct_2,
}

struct Struct_4 {
    a: f32,
    b: vec4<f32>,
}

struct Struct_5 {
    a: vec4<u32>,
}

struct UniformBuffer {
    a: vec3<i32>,
    b: vec3<u32>,
    c: vec2<u32>,
    d: vec4<u32>,
    e: i32,
}

struct StorageBuffer {
    a: vec3<u32>,
    b: vec2<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<Struct_4, 6> = array<Struct_4, 6>(Struct_4(921f, vec4<f32>(954f, 122f, 292f, -403f)), Struct_4(159f, vec4<f32>(-598f, -1849f, -929f, 1719f)), Struct_4(899f, vec4<f32>(1586f, 919f, -430f, -275f)), Struct_4(-359f, vec4<f32>(284f, -420f, -404f, 1010f)), Struct_4(-686f, vec4<f32>(-304f, -558f, -279f, -1000f)), Struct_4(-1523f, vec4<f32>(-220f, -529f, -667f, 1210f)));

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn func_3(arg_0: Struct_3) -> i32 {
    global0 = array<Struct_4, 6>();
    let var_0 = arg_0.b.d.x;
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    return -19754i;
}

fn func_2(arg_0: vec2<bool>) -> vec4<bool> {
    global0 = array<Struct_4, 6>();
    global0 = array<Struct_4, 6>();
    let var_0 = _wgslsmith_f_op_f32(_wgslsmith_div_f32(-1286f, _wgslsmith_f_op_f32(-_wgslsmith_div_f32(_wgslsmith_f_op_f32(f32(-1f) * -1230f), 1f))) + _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-631f * _wgslsmith_f_op_f32(select(-679f, -449f, u_input.b.x != u_input.b.x))) * -136f));
    global0 = array<Struct_4, 6>();
    var var_1 = func_3(Struct_3(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-vec4<f32>(var_0, -1332f, 520f, 579f))), Struct_2(Struct_1(arg_0.x), u_input.c.x, vec2<f32>(-3011f, 671f), !vec4<bool>(false, false, arg_0.x, true)))) < _wgslsmith_dot_vec4_i32(-(~firstLeadingBit(vec4<i32>(u_input.e, u_input.a.x, u_input.a.x, -72965i))), abs(~(~vec4<i32>(u_input.a.x, -1i, 10028i, 1i))));
    return select(select(select(vec4<bool>(true, arg_0.x, any(vec4<bool>(arg_0.x, arg_0.x, arg_0.x, arg_0.x)), true), vec4<bool>(all(vec2<bool>(arg_0.x, true)), arg_0.x, false, arg_0.x), vec4<bool>(0i == u_input.e, arg_0.x, all(vec3<bool>(false, arg_0.x, arg_0.x)), true)), !(!(!vec4<bool>(true, false, true, arg_0.x))), !(!select(vec4<bool>(arg_0.x, false, false, arg_0.x), vec4<bool>(arg_0.x, arg_0.x, false, arg_0.x), vec4<bool>(true, arg_0.x, true, arg_0.x)))), vec4<bool>(!(true & !arg_0.x), arg_0.x, true, arg_0.x), vec4<bool>(any(vec3<bool>(true, true, true)), arg_0.x, any(arg_0), true));
}

fn func_1(arg_0: i32) -> vec2<bool> {
    global0 = array<Struct_4, 6>();
    var var_0 = select(!vec4<bool>(all(select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, false), true)), u_input.a.x == u_input.e, true, any(select(vec2<bool>(false, false), vec2<bool>(true, false), vec2<bool>(true, false)))), !(!(!select(vec4<bool>(false, true, false, true), vec4<bool>(true, false, false, true), vec4<bool>(true, false, false, false)))), !select(vec4<bool>(true, true, true, true), func_2(select(vec2<bool>(true, false), vec2<bool>(true, true), vec2<bool>(true, false))), select(vec4<bool>(true, true, true, false), select(vec4<bool>(true, true, true, false), vec4<bool>(false, false, true, true), vec4<bool>(true, true, false, true)), true)));
    var_0 = select(vec4<bool>(true, all(!vec2<bool>(var_0.x, false)), 1u > u_input.b.x, var_0.x != (!var_0.x != func_2(var_0.xw).x)), vec4<bool>(4294967295u >= (_wgslsmith_clamp_u32(u_input.b.x, u_input.b.x, u_input.b.x) << (abs(u_input.d.x) % 32u)), _wgslsmith_mult_u32(_wgslsmith_div_u32(u_input.d.x, 0u), 40562u) <= _wgslsmith_dot_vec2_u32(~vec2<u32>(100759u, 7155u), abs(vec2<u32>(u_input.c.x, u_input.b.x))), any(select(!var_0.xw, select(var_0.zy, var_0.zz, vec2<bool>(var_0.x, var_0.x)), var_0.x)), var_0.x), !(!(!var_0.x)));
    global0 = array<Struct_4, 6>();
    var var_1 = ~reverseBits(1i);
    return !(!func_2(vec2<bool>(true, arg_0 >= 13508i)).wy);
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = Struct_1(!any(func_1(countOneBits(-29300i))));
    var_0 = Struct_1(var_0.a);
    var var_1 = _wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(max(_wgslsmith_f_op_vec4_f32(step(vec4<f32>(-587f, -1124f, -1413f, 503f), vec4<f32>(620f, 1211f, 1441f, -2225f))), vec4<f32>(704f, 883f, -632f, -1000f))))));
    let var_2 = min(min(vec3<i32>(u_input.e, -_wgslsmith_div_i32(-2147483647i, -13365i), -11703i), vec3<i32>(-(~u_input.e), -_wgslsmith_mult_i32(u_input.a.x, -38087i), u_input.e)), ~(-u_input.a));
    var var_3 = vec4<u32>(select(_wgslsmith_mult_u32(~4294967295u, 1u), u_input.d.x, var_0.a), u_input.d.x, u_input.d.x, ~firstLeadingBit(~u_input.d.x)) << (~_wgslsmith_sub_vec4_u32(firstLeadingBit(select(vec4<u32>(8497u, 38438u, 4294967295u, 1u), vec4<u32>(u_input.b.x, u_input.c.x, 0u, u_input.b.x), vec4<bool>(false, var_0.a, true, false))), u_input.d) % vec4<u32>(32u));
    let var_4 = u_input.a.xy;
    let var_5 = _wgslsmith_mult_i32(var_2.x, var_2.x);
    let x = u_input.a;
    s_output = StorageBuffer(select(u_input.b ^ countOneBits(~u_input.b), u_input.b, select(func_2(!vec2<bool>(true, var_0.a)).wxz, select(!vec3<bool>(var_0.a, var_0.a, true), !vec3<bool>(true, var_0.a, var_0.a), vec3<bool>(true, true, var_0.a)), vec3<bool>(var_0.a, any(vec2<bool>(var_0.a, true)), var_0.a))), vec2<i32>(_wgslsmith_clamp_i32(abs(var_5), 1i, u_input.e) | _wgslsmith_mult_i32(var_2.x, -1i), _wgslsmith_mod_i32(_wgslsmith_mod_i32(var_2.x, ~var_2.x), abs(u_input.e))));
}

