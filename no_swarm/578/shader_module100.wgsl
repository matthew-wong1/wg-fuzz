struct Struct_1 {
    a: vec3<i32>,
    b: f32,
    c: vec2<i32>,
    d: vec2<bool>,
}

struct Struct_2 {
    a: Struct_1,
}

struct Struct_3 {
    a: bool,
    b: Struct_1,
    c: vec2<bool>,
    d: u32,
}

struct Struct_4 {
    a: vec2<i32>,
    b: Struct_3,
    c: f32,
    d: i32,
}

struct UniformBuffer {
    a: vec2<i32>,
    b: vec2<i32>,
    c: vec3<u32>,
    d: i32,
    e: vec3<i32>,
}

struct StorageBuffer {
    a: i32,
    b: vec3<f32>,
    c: f32,
    d: vec3<i32>,
    e: u32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_dot_vec3_i32(a: vec3<i32>, b: vec3<i32>) -> i32 {
    return dot(clamp(a, vec3<i32>(-26754i), vec3<i32>(26754i)), clamp(b, vec3<i32>(-26754i), vec3<i32>(26754i)));
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_i32(a: i32, b: i32) -> i32 {
    return select(a * b, a, (((a == -1i) && (b == i32(-2147483648))) || ((a == i32(-2147483648)) && (b == -1i))) || ((b != 0i) && ((a > (2147483647i / b)) || (a < (i32(-2147483648) / b)))));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_div_i32(a: i32, b: i32) -> i32 {
    return select(a / b, a / i32(2i), ((a == i32(-2147483648)) && (b == -1i)) || (b == 0i));
}

fn _wgslsmith_add_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a + b, a, a > (vec4<u32>(4294967295u) - b));
}

fn _wgslsmith_clamp_vec2_i32(e: vec2<i32>, low: vec2<i32>, high: vec2<i32>) -> vec2<i32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn func_2(arg_0: vec4<u32>, arg_1: vec3<u32>, arg_2: Struct_1) -> bool {
    let var_0 = Struct_2(arg_2);
    let var_1 = Struct_1(u_input.e, _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(floor(1000f)) - _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(min(arg_2.b, -283f)), _wgslsmith_f_op_f32(select(arg_2.b, arg_2.b, false))))))), vec2<i32>(1i, -_wgslsmith_dot_vec3_i32(u_input.e, arg_2.a)), var_0.a.d);
    let var_2 = vec3<bool>(false != ((false && (arg_2.b > var_0.a.b)) != true), var_1.d.x, var_1.d.x);
    var var_3 = !(!(!vec4<bool>(true, true, !var_1.d.x, any(vec4<bool>(var_1.d.x, false, true, var_2.x)))));
    var_3 = vec4<bool>(var_0.a.d.x, all(!select(var_3.xwz, !vec3<bool>(true, false, var_3.x), select(var_2, vec3<bool>(false, var_0.a.d.x, var_2.x), var_3.zyx))), !any(!select(var_0.a.d, var_0.a.d, vec2<bool>(false, true))), var_0.a.d.x);
    return var_3.x;
}

fn func_3(arg_0: bool, arg_1: i32, arg_2: vec2<i32>, arg_3: Struct_4) -> vec2<bool> {
    var var_0 = select(select(select(!vec3<bool>(arg_0, false, false), vec3<bool>(func_2(vec4<u32>(4294967295u, u_input.c.x, 1u, u_input.c.x), vec3<u32>(arg_3.b.d, u_input.c.x, 6237u), Struct_1(vec3<i32>(32502i, arg_2.x, -40639i), arg_3.b.b.b, vec2<i32>(1i, arg_3.a.x), vec2<bool>(false, arg_3.b.a))), arg_3.b.b.d.x | arg_3.b.c.x, !arg_3.b.b.d.x), select(!vec3<bool>(arg_3.b.b.d.x, false, false), vec3<bool>(arg_3.b.a, true, arg_3.b.c.x), vec3<bool>(true, arg_3.b.c.x, arg_3.b.c.x))), select(!vec3<bool>(arg_3.b.a, arg_3.b.a, true), !vec3<bool>(true, arg_3.b.a, false), vec3<bool>(all(vec3<bool>(true, false, true)), true, false)), !all(vec4<bool>(arg_3.b.a, arg_0, false, true))), select(select(select(!vec3<bool>(arg_3.b.b.d.x, arg_3.b.a, arg_3.b.b.d.x), select(vec3<bool>(arg_3.b.c.x, arg_3.b.c.x, true), vec3<bool>(arg_3.b.c.x, false, true), arg_0), vec3<bool>(true, arg_0, true)), select(select(vec3<bool>(true, arg_0, true), vec3<bool>(arg_3.b.c.x, arg_0, true), vec3<bool>(true, arg_0, arg_0)), !vec3<bool>(true, arg_0, false), func_2(vec4<u32>(1u, 4294967295u, arg_3.b.d, 1u), u_input.c, Struct_1(u_input.e, -187f, arg_2, vec2<bool>(true, false)))), vec3<bool>(false, true, true)), vec3<bool>(!arg_0, true, false), vec3<bool>(arg_0, all(!vec2<bool>(arg_3.b.c.x, arg_0)), false)), vec3<bool>(true, true, arg_3.b.c.x));
    let var_1 = Struct_4(reverseBits(arg_2), Struct_3(firstLeadingBit(arg_3.b.d >> (u_input.c.x % 32u)) > 1u, arg_3.b.b, arg_3.b.b.d, ~(~arg_3.b.d)), 831f, -_wgslsmith_div_i32(firstLeadingBit(_wgslsmith_dot_vec4_i32(vec4<i32>(52921i, arg_2.x, 2147483647i, arg_1), vec4<i32>(-1i, 1i, arg_2.x, -2147483647i))), firstTrailingBit(reverseBits(arg_3.d))));
    let var_2 = Struct_2(Struct_1(countOneBits(vec3<i32>(16048i, -2147483647i, -38127i)), _wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(step(219f, -1057f))) + -428f), firstTrailingBit(arg_2), vec2<bool>(!var_0.x, !(!var_1.b.b.d.x))));
    var var_3 = select(!(!vec4<bool>(arg_0, var_1.b.b.b > 1000f, true, true)), !vec4<bool>(abs(arg_3.b.d) > abs(48791u), false, true, all(vec4<bool>(true, false, false, true)) && true), false);
    var var_4 = reverseBits(1u);
    return vec2<bool>(abs(_wgslsmith_div_u32(abs(arg_3.b.d), 4294967295u)) != ~min(~u_input.c.x, u_input.c.x), true || arg_0);
}

fn func_1() -> Struct_1 {
    var var_0 = Struct_3(any(!vec4<bool>(any(vec4<bool>(true, true, false, false)), true, func_2(vec4<u32>(4294967295u, u_input.c.x, 58154u, u_input.c.x), u_input.c, Struct_1(vec3<i32>(-9965i, -14762i, -27060i), 210f, vec2<i32>(32402i, u_input.a.x), vec2<bool>(false, false))), any(vec4<bool>(true, false, false, true)))), Struct_1(u_input.e, _wgslsmith_f_op_f32(1598f * _wgslsmith_f_op_f32(468f + _wgslsmith_f_op_f32(step(-1213f, 1937f)))), u_input.a, select(vec2<bool>(true, true), func_3(true, -16454i, ~vec2<i32>(u_input.d, u_input.a.x), Struct_4(vec2<i32>(u_input.a.x, u_input.d), Struct_3(true, Struct_1(u_input.e, -774f, vec2<i32>(-1i, u_input.a.x), vec2<bool>(true, true)), vec2<bool>(false, false), 1u), 2515f, 16660i)), vec2<bool>(true, true))), vec2<bool>(false, true), _wgslsmith_mod_u32(firstLeadingBit(firstLeadingBit(firstTrailingBit(0u))), 3094u));
    var_0 = Struct_3(all(!(!vec2<bool>(true, var_0.a))), var_0.b, select(!var_0.b.d, !var_0.b.d, var_0.c), ~(u_input.c.x & ~var_0.d) >> (~(~(~var_0.d)) % 32u));
    let var_1 = !(!(!var_0.a));
    var var_2 = 1059f;
    let var_3 = Struct_2(Struct_1(vec3<i32>(1i, ~(~2147483647i), ~(-24290i)), 168f, _wgslsmith_clamp_vec2_i32(vec2<i32>(_wgslsmith_mod_i32(var_0.b.c.x, -1i), var_0.b.a.x), ~u_input.a, vec2<i32>(var_0.b.a.x, u_input.e.x)), select(!vec2<bool>(false, var_0.a), select(var_0.b.d, vec2<bool>(false, var_1), vec2<bool>(true, var_1)), var_1)));
    return Struct_1(vec3<i32>(_wgslsmith_dot_vec2_i32(select(vec2<i32>(-2147483647i, var_0.b.a.x), max(vec2<i32>(2147483647i, 1i), var_0.b.a.yx), vec2<bool>(false, false)), select(~vec2<i32>(0i, 72667i), vec2<i32>(var_3.a.c.x, 0i) << (u_input.c.yz % vec2<u32>(32u)), !vec2<bool>(var_3.a.d.x, var_1))), i32(-1i) * -28282i, _wgslsmith_dot_vec2_i32(min(vec2<i32>(-25018i, -2147483647i), vec2<i32>(22781i, var_3.a.a.x)), vec2<i32>(0i, _wgslsmith_mult_i32(var_3.a.c.x, -1i)))), _wgslsmith_f_op_f32(abs(_wgslsmith_f_op_f32(trunc(_wgslsmith_div_f32(_wgslsmith_div_f32(2016f, var_3.a.b), -374f))))), var_3.a.a.xy, vec2<bool>(any(!var_0.c), !(_wgslsmith_f_op_f32(floor(591f)) <= var_3.a.b)));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = vec3<f32>(_wgslsmith_f_op_f32(-1f), _wgslsmith_f_op_f32(round(_wgslsmith_f_op_f32(select(_wgslsmith_f_op_f32(exp2(_wgslsmith_f_op_f32(floor(-1023f)))), -267f, true)))), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -1000f)));
    let var_1 = Struct_3(!(!(!(var_0.x != var_0.x))), func_1(), vec2<bool>(false, false), abs(4294967295u));
    var var_2 = var_0.x;
    var var_3 = var_1.a;
    var var_4 = func_2(firstTrailingBit(_wgslsmith_add_vec4_u32(select(_wgslsmith_add_vec4_u32(vec4<u32>(9660u, 1u, 88986u, 44257u), vec4<u32>(67292u, 43040u, 55433u, 23337u)), vec4<u32>(65060u, 38957u, var_1.d, u_input.c.x), vec4<bool>(false, false, var_1.b.d.x, false)), ~_wgslsmith_clamp_vec4_u32(vec4<u32>(var_1.d, 1u, 35539u, 3903u), vec4<u32>(85967u, u_input.c.x, 66952u, u_input.c.x), vec4<u32>(4294967295u, 10778u, 4294967295u, u_input.c.x)))), vec3<u32>(66596u, _wgslsmith_sub_u32(var_1.d, _wgslsmith_dot_vec2_u32(vec2<u32>(1u, 4294967295u), vec2<u32>(0u, 2645u)) | _wgslsmith_dot_vec3_u32(u_input.c, u_input.c)), 4294967295u), Struct_1(max(vec3<i32>(var_1.b.a.x, 0i, -10606i) >> (u_input.c % vec3<u32>(32u)), u_input.e >> (vec3<u32>(u_input.c.x, var_1.d, var_1.d) % vec3<u32>(32u))) << (vec3<u32>(~0u, u_input.c.x >> (0u % 32u), 1u) % vec3<u32>(32u)), _wgslsmith_f_op_f32(max(_wgslsmith_f_op_f32(floor(1021f)), _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-219f - var_0.x)))), u_input.b, var_1.b.d));
    var_2 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(var_1.b.b - _wgslsmith_f_op_f32(var_0.x + _wgslsmith_f_op_f32(trunc(_wgslsmith_f_op_f32(max(490f, var_1.b.b)))))));
    var_3 = all(!(!select(select(vec3<bool>(var_1.a, var_1.a, false), vec3<bool>(var_1.a, var_1.a, var_1.a), var_1.a), vec3<bool>(var_1.c.x, false, var_1.b.d.x), true)));
    let x = u_input.a;
    s_output = StorageBuffer(-1i, var_0, _wgslsmith_f_op_f32(floor(_wgslsmith_f_op_f32(_wgslsmith_div_f32(_wgslsmith_f_op_f32(-var_0.x), _wgslsmith_f_op_f32(f32(-1f) * -1000f)) + _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(select(-485f, 345f, true)))))), vec3<i32>(_wgslsmith_mult_i32(-10505i, u_input.a.x), ~u_input.b.x, select(-2147483647i, _wgslsmith_dot_vec3_i32(min(var_1.b.a, vec3<i32>(2147483647i, -14393i, 24713i)), vec3<i32>(u_input.e.x, u_input.d, u_input.b.x)), var_1.a)), _wgslsmith_mod_u32(_wgslsmith_mod_u32(~u_input.c.x, ~var_1.d), _wgslsmith_clamp_u32(var_1.d, 19173u, countOneBits(_wgslsmith_sub_u32(0u, var_1.d)))));
}

