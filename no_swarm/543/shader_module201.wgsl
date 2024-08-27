struct Struct_1 {
    a: vec2<bool>,
    b: vec3<bool>,
    c: vec3<u32>,
}

struct UniformBuffer {
    a: u32,
}

struct StorageBuffer {
    a: u32,
    b: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: array<vec2<f32>, 12> = array<vec2<f32>, 12>(vec2<f32>(-516f, -831f), vec2<f32>(-1131f, 819f), vec2<f32>(-1000f, -602f), vec2<f32>(-1105f, 572f), vec2<f32>(461f, -1125f), vec2<f32>(-784f, 308f), vec2<f32>(1286f, -224f), vec2<f32>(-553f, 311f), vec2<f32>(1051f, 217f), vec2<f32>(429f, -224f), vec2<f32>(-1693f, -1571f), vec2<f32>(243f, 446f));

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_u32(e: vec2<u32>, low: vec2<u32>, high: vec2<u32>) -> vec2<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a / b, a / vec3<u32>(2u), ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn func_2(arg_0: vec2<i32>, arg_1: Struct_1) -> Struct_1 {
    global0 = array<vec2<f32>, 12>();
    let var_0 = arg_1;
    var var_1 = arg_1;
    global0 = array<vec2<f32>, 12>();
    var_1 = arg_1;
    return Struct_1(var_1.a, !arg_1.b, ~var_1.c);
}

fn func_3(arg_0: Struct_1, arg_1: i32) -> Struct_1 {
    var var_0 = vec4<u32>(_wgslsmith_dot_vec3_u32(~vec3<u32>(arg_0.c.x, 4294967295u, 4294967295u) << (select(arg_0.c, vec3<u32>(arg_0.c.x, 1u, arg_0.c.x), arg_0.b) % vec3<u32>(32u)), _wgslsmith_div_vec3_u32(vec3<u32>(u_input.a, 0u, u_input.a), arg_0.c)) | ~_wgslsmith_add_u32(firstLeadingBit(4294967295u), ~30135u), ~u_input.a, _wgslsmith_mult_u32(4294967295u, u_input.a ^ 15148u) & 0u, ~(~(~(~u_input.a))));
    let var_1 = func_2(~(~(~vec2<i32>(2835i, 0i)) >> (_wgslsmith_clamp_vec2_u32(~var_0.yx, var_0.xz, vec2<u32>(1u, var_0.x)) % vec2<u32>(32u))), arg_0);
    return var_1;
}

fn func_1() -> vec3<bool> {
    global0 = array<vec2<f32>, 12>();
    var var_0 = !(!select(vec3<bool>(true, true, true), vec3<bool>(false, false, any(vec2<bool>(false, true))), select(select(vec3<bool>(true, true, false), vec3<bool>(false, true, true), vec3<bool>(false, false, true)), vec3<bool>(true, true, true), vec3<bool>(true, false, true))));
    global0 = array<vec2<f32>, 12>();
    let var_1 = !var_0.xz;
    var var_2 = func_3(func_2(countOneBits(~_wgslsmith_clamp_vec2_i32(vec2<i32>(-2147483647i, -46510i), vec2<i32>(2771i, -2147483647i), vec2<i32>(-2147483647i, 2147483647i))), Struct_1(!select(var_1, var_1, false), vec3<bool>(true, !var_0.x, u_input.a >= 66753u), vec3<u32>(0u, u_input.a, u_input.a))), 0i);
    return vec3<bool>(true, ~(func_2(vec2<i32>(-1i, 2147483647i), Struct_1(var_1, vec3<bool>(var_2.b.x, var_2.a.x, var_1.x), var_2.c)).c.x & 1u) <= min(16535u, countOneBits(_wgslsmith_mod_u32(u_input.a, var_2.c.x))), !var_0.x);
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = Struct_1(!vec2<bool>(_wgslsmith_f_op_f32(ceil(-650f)) > 322f, all(vec3<bool>(true, false, true)) && true), select(select(func_1(), vec3<bool>(true, true, true), true), vec3<bool>(true, false, true), vec3<bool>(true, true, true)), abs(min(~vec3<u32>(1u, u_input.a, 4294967295u), vec3<u32>(u_input.a, 1u, 0u))) << (vec3<u32>(_wgslsmith_mult_u32(u_input.a, _wgslsmith_dot_vec3_u32(vec3<u32>(4294967295u, u_input.a, 1u), vec3<u32>(u_input.a, u_input.a, 1u))), ~u_input.a, u_input.a | firstTrailingBit(u_input.a)) % vec3<u32>(32u)));
    let var_1 = any(select(var_0.b, !(!func_1()), var_0.b.x));
    let var_2 = Struct_1(vec2<bool>(func_1().x, false), var_0.b, vec3<u32>(var_0.c.x, 1u, 1298u));
    var var_3 = vec2<i32>(abs(abs(_wgslsmith_clamp_i32(i32(-1i) * -11592i, -1i, _wgslsmith_sub_i32(-64750i, 1i)))), ~_wgslsmith_dot_vec2_i32(vec2<i32>(1i, 1i), ~abs(vec2<i32>(1i, -52820i))));
    let var_4 = Struct_1(select(!(!(!var_0.b.yx)), var_0.b.yy, func_1().yx), select(!vec3<bool>(true, all(vec3<bool>(true, var_1, var_0.b.x)), var_1), !(!(!vec3<bool>(var_2.b.x, var_2.b.x, var_2.a.x))), var_2.b), ~vec3<u32>(9291u, ~1u, var_0.c.x));
    let x = u_input.a;
    s_output = StorageBuffer(1u, _wgslsmith_div_u32(_wgslsmith_sub_u32(var_4.c.x, _wgslsmith_clamp_u32(u_input.a, 1u, var_4.c.x) | _wgslsmith_div_u32(var_0.c.x, var_2.c.x)), u_input.a));
}

