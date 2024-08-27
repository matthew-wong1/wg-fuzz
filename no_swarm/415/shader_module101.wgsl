struct Struct_1 {
    a: u32,
    b: u32,
    c: bool,
    d: bool,
}

struct Struct_2 {
    a: Struct_1,
    b: Struct_1,
    c: i32,
    d: vec3<bool>,
    e: bool,
}

struct UniformBuffer {
    a: vec4<u32>,
    b: i32,
    c: vec2<i32>,
    d: vec2<u32>,
}

struct StorageBuffer {
    a: u32,
    b: i32,
}

@group(0)
@binding(0)
var<uniform> u_input: UniformBuffer;

@group(0)
@binding(1)
var<storage, read_write> s_output: StorageBuffer;

fn _wgslsmith_mod_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> vec3<u32> {
    return select(a % b, a, ((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u));
}

fn _wgslsmith_mod_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a % b, a, ((((a[0i] < 0i) || (b[0i] <= 0i)) || ((a[1i] < 0i) || (b[1i] <= 0i))) || ((a[2i] < 0i) || (b[2i] <= 0i))) || ((a[3i] < 0i) || (b[3i] <= 0i)));
}

fn _wgslsmith_div_vec4_f32(a: vec4<f32>, b: vec4<f32>) -> vec4<f32> {
    return select(vec4<f32>(42f), vec4<f32>(-123f), (((abs(a[0i] / b[0i]) > abs(a[0i])) || (abs(a[1i] / b[1i]) > abs(a[1i]))) || (abs(a[2i] / b[2i]) > abs(a[2i]))) || (abs(a[3i] / b[3i]) > abs(a[3i])));
}

fn _wgslsmith_add_u32(a: u32, b: u32) -> u32 {
    return select(a + b, a, a > (u32(4294967295u) - b));
}

fn _wgslsmith_clamp_u32(e: u32, low: u32, high: u32) -> u32 {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_dot_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> i32 {
    return dot(clamp(a, vec4<i32>(-23170i), vec4<i32>(23170i)), clamp(b, vec4<i32>(-23170i), vec4<i32>(23170i)));
}

fn _wgslsmith_mod_u32(a: u32, b: u32) -> u32 {
    return select(a % b, a, b == 0u);
}

fn _wgslsmith_add_i32(a: i32, b: i32) -> i32 {
    return select(a + b, a, ((b > 0i) && (a > (2147483647i - b))) || ((b < 0i) && (a < (i32(-2147483648) - b))));
}

fn _wgslsmith_dot_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> i32 {
    return dot(clamp(a, vec2<i32>(-32767i), vec2<i32>(32767i)), clamp(b, vec2<i32>(-32767i), vec2<i32>(32767i)));
}

fn _wgslsmith_sub_i32(a: i32, b: i32) -> i32 {
    return select(a - b, a, ((b < 0i) && (a > (2147483647i + b))) || ((b > 0i) && (a < (i32(-2147483648) + b))));
}

fn _wgslsmith_mod_i32(a: i32, b: i32) -> i32 {
    return select(a % b, a, (a < 0i) || (b <= 0i));
}

fn _wgslsmith_div_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a / b, a / vec4<i32>(2i), (((((a[0i] == i32(-2147483648)) && (b[0i] == -1i)) || (b[0i] == 0i)) || (((a[1i] == i32(-2147483648)) && (b[1i] == -1i)) || (b[1i] == 0i))) || (((a[2i] == i32(-2147483648)) && (b[2i] == -1i)) || (b[2i] == 0i))) || (((a[3i] == i32(-2147483648)) && (b[3i] == -1i)) || (b[3i] == 0i)));
}

fn _wgslsmith_sub_u32(a: u32, b: u32) -> u32 {
    return select(a - b, a, a < b);
}

fn _wgslsmith_dot_vec2_u32(a: vec2<u32>, b: vec2<u32>) -> u32 {
    return dot(clamp(a, vec2<u32>(0u), vec2<u32>(46340u)), clamp(b, vec2<u32>(0u), vec2<u32>(46340u)));
}

fn _wgslsmith_mult_u32(a: u32, b: u32) -> u32 {
    return select(a * b, a, (b != 0u) && (a > (4294967295u / b)));
}

fn _wgslsmith_f_op_vec4_f32(v: vec4<f32>) -> vec4<f32> {
    return select(v, vec4<f32>(10f), any(abs(v) < vec4<f32>(0.1f)) || any(abs(v) >= vec4<f32>(16777216f)));
}

fn _wgslsmith_f_op_f32(v: f32) -> f32 {
    return select(v, f32(10f), (abs(v) < f32(0.1f)) || (abs(v) >= f32(16777216f)));
}

fn _wgslsmith_dot_vec3_u32(a: vec3<u32>, b: vec3<u32>) -> u32 {
    return dot(clamp(a, vec3<u32>(0u), vec3<u32>(37837u)), clamp(b, vec3<u32>(0u), vec3<u32>(37837u)));
}

fn _wgslsmith_div_f32(a: f32, b: f32) -> f32 {
    return select(f32(42f), f32(-123f), abs(a / b) > abs(a));
}

fn _wgslsmith_mod_vec4_u32(a: vec4<u32>, b: vec4<u32>) -> vec4<u32> {
    return select(a % b, a, (((b[0i] == 0u) || (b[1i] == 0u)) || (b[2i] == 0u)) || (b[3i] == 0u));
}

fn _wgslsmith_sub_vec2_i32(a: vec2<i32>, b: vec2<i32>) -> vec2<i32> {
    return select(a - b, a, (((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || (((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))));
}

fn _wgslsmith_clamp_vec4_u32(e: vec4<u32>, low: vec4<u32>, high: vec4<u32>) -> vec4<u32> {
    return select(clamp(e, low, high), clamp(e, high, low), low > high);
}

fn _wgslsmith_div_u32(a: u32, b: u32) -> u32 {
    return select(a / b, a / u32(2u), b == 0u);
}

fn _wgslsmith_sub_vec4_i32(a: vec4<i32>, b: vec4<i32>) -> vec4<i32> {
    return select(a - b, a, (((((b[0i] < 0i) && (a[0i] > (2147483647i + b[0i]))) || ((b[1i] < 0i) && (a[1i] > (2147483647i + b[1i])))) || ((b[2i] < 0i) && (a[2i] > (2147483647i + b[2i])))) || ((b[3i] < 0i) && (a[3i] > (2147483647i + b[3i])))) || (((((b[0i] > 0i) && (a[0i] < (i32(-2147483648) + b[0i]))) || ((b[1i] > 0i) && (a[1i] < (i32(-2147483648) + b[1i])))) || ((b[2i] > 0i) && (a[2i] < (i32(-2147483648) + b[2i])))) || ((b[3i] > 0i) && (a[3i] < (i32(-2147483648) + b[3i])))));
}

fn func_3(arg_0: Struct_2, arg_1: vec2<bool>, arg_2: vec4<u32>) -> u32 {
    let var_0 = arg_0.a;
    let var_1 = arg_0;
    let var_2 = _wgslsmith_div_vec4_i32(vec4<i32>(i32(-1i) * -(~var_1.c), firstTrailingBit(2147483647i), abs(var_1.c), _wgslsmith_sub_i32(_wgslsmith_dot_vec2_i32(vec2<i32>(-13026i, var_1.c) ^ vec2<i32>(1i, 2147483647i), _wgslsmith_sub_vec2_i32(vec2<i32>(-13547i, 1i), vec2<i32>(-83466i, 1i))), var_1.c)), reverseBits(firstLeadingBit(vec4<i32>(arg_0.c, _wgslsmith_mod_i32(var_1.c, 8744i), -var_1.c, arg_0.c << (var_0.a % 32u)))));
    var var_3 = _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(f32(-1f) * -2324f));
    let var_4 = var_1;
    return _wgslsmith_div_u32(_wgslsmith_mult_u32(~arg_0.b.b >> (_wgslsmith_sub_u32(24172u, var_0.a) % 32u), ~var_1.b.a) << (var_1.b.b % 32u), select(1u, ~(~abs(22655u)), any(arg_0.d.xz)));
}

fn func_2() -> Struct_1 {
    let var_0 = Struct_1(18612u, _wgslsmith_add_u32(u_input.a.x, u_input.a.x ^ u_input.a.x), !(_wgslsmith_f_op_f32(_wgslsmith_f_op_f32(-796f - 1177f) - _wgslsmith_f_op_f32(floor(432f))) > _wgslsmith_f_op_f32(-_wgslsmith_f_op_f32(-2440f - -1000f))), any(!(!select(vec4<bool>(true, false, true, false), vec4<bool>(true, true, true, false), vec4<bool>(false, false, false, false)))));
    let var_1 = 9257u;
    let var_2 = Struct_1(29804u, ~(~_wgslsmith_dot_vec2_u32(u_input.a.zw, u_input.d)), !var_0.d, all(select(!(!vec3<bool>(false, var_0.c, true)), vec3<bool>(all(vec3<bool>(true, var_0.c, var_0.c)), false, all(vec4<bool>(var_0.d, false, true, var_0.c))), var_0.c)));
    var var_3 = any(vec2<bool>(!var_2.d, var_2.d));
    var_3 = any(!(!vec4<bool>(var_2.c, var_0.d, all(vec2<bool>(true, false)), var_2.d)));
    return Struct_1(firstTrailingBit(func_3(Struct_2(var_2, var_0, u_input.b, vec3<bool>(false, false, true), var_0.c), vec2<bool>(var_2.d, var_2.c), vec4<u32>(var_0.a, 1u, 57802u, u_input.d.x))) | firstTrailingBit(~(89530u ^ var_2.a)), ~4294967295u, var_2.d, var_2.c);
}

fn func_4(arg_0: vec2<i32>, arg_1: Struct_2) -> vec3<u32> {
    let var_0 = !arg_1.b.d;
    let var_1 = _wgslsmith_f_op_vec4_f32(sign(_wgslsmith_f_op_vec4_f32(-_wgslsmith_f_op_vec4_f32(-_wgslsmith_div_vec4_f32(_wgslsmith_f_op_vec4_f32(-vec4<f32>(-874f, -893f, 1802f, -622f)), _wgslsmith_f_op_vec4_f32(step(vec4<f32>(-709f, -500f, -1165f, 229f), vec4<f32>(-2006f, -173f, -390f, -871f))))))));
    let var_2 = ~(~(~func_2().b));
    var var_3 = true;
    var var_4 = 1u;
    return _wgslsmith_mod_vec3_u32(max(select(~vec3<u32>(var_2, arg_1.b.b, 1u), ~(~vec3<u32>(u_input.a.x, u_input.a.x, 82501u)), var_0), ~u_input.a.zwy), vec3<u32>(~select(var_2, _wgslsmith_mod_u32(4294967295u, 66u), 2147483647i >= arg_1.c), arg_1.a.b, var_2));
}

fn func_1(arg_0: bool, arg_1: vec4<f32>, arg_2: bool) -> i32 {
    var var_0 = Struct_1(u_input.d.x, _wgslsmith_dot_vec3_u32(vec3<u32>(78326u, ~(~4054u), _wgslsmith_sub_u32(firstLeadingBit(31061u), firstTrailingBit(u_input.d.x))), func_4(vec2<i32>(max(u_input.c.x, u_input.b), -2147483647i), Struct_2(Struct_1(1u, u_input.d.x, true, true), func_2(), 2147483647i, !vec3<bool>(false, false, arg_0), arg_2))), !(!arg_2), !any(!(!vec2<bool>(true, arg_0))));
    var var_1 = Struct_2(Struct_1(4294967295u, 38783u, arg_1.x < _wgslsmith_div_f32(_wgslsmith_f_op_f32(floor(arg_1.x)), arg_1.x), !(~u_input.d.x == ~4294967295u)), func_2(), u_input.b ^ select(-u_input.c.x, i32(-1i) * -17251i, true), !(!vec3<bool>(-2346f != arg_1.x, func_2().c, true)), !(true || arg_0));
    var var_2 = var_1.c;
    let var_3 = Struct_2(Struct_1(abs(~4294967295u) >> (max(_wgslsmith_mult_u32(var_0.a, 1u), u_input.d.x) % 32u), var_1.b.a, _wgslsmith_dot_vec3_u32(u_input.a.xyy, countOneBits(vec3<u32>(u_input.d.x, var_1.a.b, var_0.a))) == u_input.d.x, arg_2), Struct_1(24508u, 1u, all(var_1.d), any(vec2<bool>(true, false))), -19663i, var_1.d, true);
    var var_4 = Struct_1(_wgslsmith_clamp_u32(0u, ~_wgslsmith_div_u32(1u, 82365u), ~(~(~1u))), min(~(~42787u), 106990u), !(arg_2 && ((var_3.b.b << (u_input.d.x % 32u)) != 56678u)), var_1.b.d);
    return -_wgslsmith_dot_vec4_i32(select(max(vec4<i32>(u_input.b, 15248i, u_input.c.x, u_input.c.x) >> (u_input.a % vec4<u32>(32u)), vec4<i32>(var_3.c, 1i, 1189i, -21067i)), vec4<i32>(u_input.b, var_3.c, var_3.c, u_input.c.x) | ~vec4<i32>(var_3.c, var_1.c, var_1.c, var_1.c), select(vec4<bool>(var_4.c, true, true, var_0.c), select(vec4<bool>(false, var_3.d.x, var_3.b.c, false), vec4<bool>(false, false, var_0.d, false), vec4<bool>(true, var_3.e, var_1.e, false)), vec4<bool>(true, var_3.b.c, false, var_4.d))), -countOneBits(_wgslsmith_mod_vec4_i32(vec4<i32>(u_input.b, 25338i, var_3.c, u_input.c.x), vec4<i32>(1i, var_1.c, -28191i, var_3.c))));
}

@compute
@workgroup_size(1)
fn main() {
    let var_0 = _wgslsmith_clamp_vec4_u32(_wgslsmith_mod_vec4_u32(vec4<u32>(47262u, _wgslsmith_sub_u32(u_input.a.x, ~4294967295u), _wgslsmith_add_u32(u_input.d.x, 105956u), 18410u), ~(~u_input.a)), firstLeadingBit(~u_input.a), vec4<u32>(~1u, ~36235u & u_input.d.x, u_input.d.x, _wgslsmith_mod_u32(_wgslsmith_clamp_u32(u_input.a.x, 17076u, ~0u), abs(reverseBits(u_input.a.x)))));
    var var_1 = ~_wgslsmith_sub_vec4_i32(abs(vec4<i32>(func_1(false, vec4<f32>(-1066f, 2095f, 674f, -825f), false), u_input.c.x << (72676u % 32u), 2147483647i, u_input.c.x)), vec4<i32>(-_wgslsmith_add_i32(u_input.c.x, -21653i), u_input.c.x, -_wgslsmith_mod_i32(u_input.c.x, u_input.b), ~(-u_input.c.x)));
    var var_2 = var_0.yz | min(firstLeadingBit(var_0.xz), abs(vec2<u32>(~10842u, 8701u)));
    var var_3 = !select(select(vec2<bool>(true, false), vec2<bool>(true, true), select(select(vec2<bool>(false, false), vec2<bool>(false, true), vec2<bool>(false, true)), vec2<bool>(true, true), select(vec2<bool>(false, true), vec2<bool>(false, true), vec2<bool>(true, false)))), vec2<bool>(any(vec4<bool>(false, true, false, false)), !all(vec3<bool>(true, true, false))), all(select(select(vec3<bool>(true, false, true), vec3<bool>(true, false, false), false), select(vec3<bool>(false, false, false), vec3<bool>(true, true, true), true), any(vec2<bool>(true, false)))));
    var var_4 = func_2();
    let var_5 = any(!(!(!vec4<bool>(var_3.x, true, true, var_4.d))));
    let x = u_input.a;
    s_output = StorageBuffer(var_0.x & u_input.a.x, countOneBits(-(~(-52508i) << (firstLeadingBit(u_input.d.x) % 32u))));
}

