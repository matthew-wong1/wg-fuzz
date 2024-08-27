struct Struct_1 {
    a: vec2<bool>,
}

struct UniformBuffer {
    a: vec3<i32>,
}

struct StorageBuffer {
    a: vec4<u32>,
    b: vec3<f32>,
    c: i32,
    d: vec4<i32>,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

var<private> global0: u32;

fn _wgslsmith_dot_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> u32 {
    return dot(clamp(a, vec4<u32>(0u), vec4<u32>(32767u)), clamp(b, vec4<u32>(0u), vec4<u32>(32767u)));
}

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_sub_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_f_op_vec3_f32(v: vec3<f32>) -> vec3<f32> {
    return select(v, vec3<f32>(10f), any(abs(v) < vec3<f32>(0.1f)) || any(abs(v) >= vec3<f32>(16777216f)));
}

fn _wgslsmith_clamp_vec3_u32(e: vec3<u32>, low: vec3<u32>, high: vec3<u32>) -> vec3<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_add_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a + b, a, a > (vec3<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_i32(e: i32, low: i32, high: i32) -> i32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_f_op_vec2_f32(v: vec2<f32>) -> vec2<f32> {
    return select(v, vec2<f32>(10f), any(abs(v) < vec2<f32>(0.1f)) || any(abs(v) >= vec2<f32>(16777216f)));
}

fn func_3() -> u32 {
    global0 = firstTrailingBit(4294967295u) << ((4294967295u << (_wgslsmith_dot_vec2_u32(~countOneBits(vec2<u32>(44164u, 107070u)), vec2<u32>(min(4294967295u, 20098u), ~1u)) % 32u)) % 32u);
    global0 = abs(_wgslsmith_clamp_u32(7257u, ~(~min(1u, 0u)), 17548u));
    let var_0 = select(vec4<i32>(~u_input.a.x, max(-58023i, u_input.a.x), _wgslsmith_dot_vec4_i32(vec4<i32>(2147483647i, -14411i, u_input.a.x, 13292i), vec4<i32>(0i, u_input.a.x, -1956i, u_input.a.x)), 21188i) << (vec4<u32>(1u, 1u, 1u, 1u) % vec4<u32>(32u)), ~(-reverseBits(vec4<i32>(u_input.a.x, 2147483647i, u_input.a.x, u_input.a.x))), select(select(vec4<bool>(false, true, false, false), vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, true)), vec4<bool>(true, any(vec3<bool>(false, true, true)), true, true), !select(vec4<bool>(true, true, false, true), vec4<bool>(true, true, true, false), vec4<bool>(true, true, true, true)))) >> (vec4<u32>(countOneBits(~(~1u)), ~_wgslsmith_dot_vec2_u32(firstLeadingBit(vec2<u32>(91596u, 0u)), ~vec2<u32>(1u, 25023u)), ~4294967295u, 1u) % vec4<u32>(32u));
    var var_1 = _wgslsmith_dot_vec3_u32(_wgslsmith_add_vec3_u32(vec3<u32>(1u, 1u, 1u), ~_wgslsmith_clamp_vec3_u32(vec3<u32>(1u, 1u, 1u), ~vec3<u32>(1u, 37268u, 86147u), ~vec3<u32>(4294967295u, 1u, 72139u))), vec3<u32>(~(~_wgslsmith_dot_vec2_u32(vec2<u32>(21273u, 0u), vec2<u32>(18159u, 85961u))), 22828u, reverseBits(_wgslsmith_dot_vec2_u32(vec2<u32>(71384u, 57244u), vec2<u32>(2173u, 58626u))) | ~1u));
    let var_2 = 252f;
    return countOneBits(~1u);
}

fn func_2(arg_0: Struct_1) -> i32 {
    let var_0 = abs(u_input.a);
    let var_1 = arg_0;
    let var_2 = 2287u;
    global0 = func_3();
    let var_3 = 1130f;
    return max(countOneBits(-11658i), _wgslsmith_mod_i32((-u_input.a.x << (~76214u % 32u)) << (abs(~92480u) % 32u), u_input.a.x));
}

fn func_4(arg_0: i32, arg_1: vec3<f32>, arg_2: vec2<f32>) -> f32 {
    var var_0 = true;
    var_0 = true || select(true && all(vec2<bool>(true, false)), any(vec2<bool>(arg_2.x >= arg_1.x, true)), false);
    global0 = 4294967295u;
    let var_1 = select(true, true, true) && true;
    let var_2 = _wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(_wgslsmith_f_op_vec2_f32(-_wgslsmith_f_op_vec2_f32(round(vec2<f32>(1056f, arg_2.x)))) * vec2<f32>(arg_2.x, 800f)), _wgslsmith_f_op_vec2_f32(sign(_wgslsmith_f_op_vec2_f32(step(_wgslsmith_f_op_vec2_f32(ceil(vec2<f32>(arg_2.x, -277f))), _wgslsmith_f_op_vec2_f32(vec2<f32>(-1600f, 397f) + _wgslsmith_f_op_vec2_f32(select(arg_2, arg_1.zx, false)))))))));
    return _wgslsmith_f_op_f32(trunc(arg_2.x));
}

fn func_5(arg_0: vec3<i32>, arg_1: u32, arg_2: bool, arg_3: vec2<f32>) -> Struct_1 {
    var var_0 = !vec2<bool>(!(!(!arg_2)), true);
    var_0 = !select(vec2<bool>(_wgslsmith_clamp_u32(2650u, 136775u, arg_1) >= 46201u, false), vec2<bool>(true, select(false, false, arg_2) || false), vec2<bool>(true, var_0.x));
    return Struct_1(!vec2<bool>(true, any(vec4<bool>(arg_2, var_0.x, true, true))));
}

fn func_1() -> f32 {
    var var_0 = ~(~u_input.a) << (vec3<u32>(4294967295u >> (_wgslsmith_add_u32(_wgslsmith_dot_vec4_u32(vec4<u32>(0u, 4294967295u, 0u, 780u), vec4<u32>(486u, 109421u, 46627u, 0u)), ~47589u) % 32u), _wgslsmith_add_u32(4294967295u, ~_wgslsmith_clamp_u32(1u, 68674u, 4294967295u)), 1u) % vec3<u32>(32u));
    var var_1 = func_5(vec3<i32>(_wgslsmith_clamp_i32(abs(u_input.a.x), 60517i, abs(~(-8682i))), 1i, 1i), ~10641u, _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(func_4(func_2(Struct_1(vec2<bool>(false, false))), _wgslsmith_f_op_vec3_f32(-vec3<f32>(1013f, 439f, 2099f)), vec2<f32>(377f, -391f))))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(f32(-1f) * -1606f) + -868f)), _wgslsmith_f_op_vec2_f32(min(_wgslsmith_f_op_vec2_f32(-vec2<f32>(_wgslsmith_f_op_f32(-2523f - 1000f), -1000f)), _wgslsmith_f_op_vec2_f32(trunc(_wgslsmith_f_op_vec2_f32(-vec2<f32>(334f, -856f)))))));
    var var_2 = Struct_1(!(!(!var_1.a)));
    let var_3 = !select(vec4<bool>(true, !var_2.a.x, all(vec4<bool>(var_1.a.x, true, false, var_1.a.x)), !var_2.a.x), !vec4<bool>(true, true, var_2.a.x, true), !vec4<bool>(!var_1.a.x, true, var_1.a.x, true));
    let var_4 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-1f)));
    return _wgslsmith_f_op_f32(sign(var_4));
}

@compute
@workgroup_size(1)
fn main() {
    var var_0 = _wgslsmith_f_op_vec3_f32(step(vec3<f32>(1f, 1f, 1f), _wgslsmith_f_op_vec3_f32(sign(_wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(-1000f - -934f), _wgslsmith_f_op_f32(trunc(280f)), _wgslsmith_f_op_f32(func_1())))))));
    let var_1 = _wgslsmith_mod_vec3_u32(vec3<u32>(1u, _wgslsmith_add_u32(1u, 1u), _wgslsmith_mod_u32(1u, select(1u, 1u, true))) & abs(vec3<u32>(1u, _wgslsmith_dot_vec4_u32(vec4<u32>(1u, 35235u, 635u, 52839u), vec4<u32>(48953u, 51863u, 1u, 1u)), _wgslsmith_dot_vec3_u32(vec3<u32>(1u, 59299u, 4294967295u), vec3<u32>(4294967295u, 0u, 16017u)))), vec3<u32>(~_wgslsmith_sub_u32(reverseBits(4294967295u), 2359u), 0u, ~0u));
    var var_2 = !select(_wgslsmith_f_op_f32(func_1()) >= _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(var_0.x)) + -840f), any(select(select(vec4<bool>(true, true, true, false), vec4<bool>(true, false, true, true), vec4<bool>(true, false, true, true)), vec4<bool>(true, true, true, true), var_0.x < var_0.x)), ~_wgslsmith_mod_i32(1i, -2147483647i) > u_input.a.x);
    let var_3 = func_5(u_input.a, ~(~var_1.x), true, var_0.zx);
    var var_4 = vec3<bool>(var_3.a.x, select(true, var_3.a.x, true), false);
    let var_5 = func_5(u_input.a, ~min(4294967295u, _wgslsmith_mod_u32(1u, 1u)), var_4.x, var_0.yy);
    global0 = 46958u;
    let x = u_input.a;
    s_output = StorageBuffer(_wgslsmith_sub_vec4_u32(firstLeadingBit(vec4<u32>(var_1.x, var_1.x, var_1.x, var_1.x)), vec4<u32>(~1u, ~var_1.x, var_1.x, var_1.x | 4294967295u)) << (firstLeadingBit(abs(~vec4<u32>(var_1.x, 4294967295u, var_1.x, var_1.x))) % vec4<u32>(32u)), _wgslsmith_f_op_vec3_f32(vec3<f32>(_wgslsmith_f_op_f32(max(var_0.x, var_0.x)), _wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1740f)) + _wgslsmith_f_op_vec3_f32(-vec3<f32>(_wgslsmith_f_op_f32(var_0.x - 1000f), var_0.x, _wgslsmith_f_op_f32(-var_0.x)))), u_input.a.x, vec4<i32>(_wgslsmith_div_i32(u_input.a.x >> (var_1.x % 32u), -50276i), 2147483647i, _wgslsmith_div_i32(-26460i, u_input.a.x >> (var_1.x % 32u)), 1i));
}

